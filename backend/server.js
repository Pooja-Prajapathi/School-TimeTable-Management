const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');
const { check, validationResult } = require('express-validator');
const winston = require('winston');
const expressWinston = require('express-winston');

const app = express();
const port = 4000;

// Define the log format
const logFormat = winston.format.printf(({ level, message, timestamp, meta }) => {
    return `${timestamp} ${level}: ${message} ${meta ? `| uname: ${meta.uname} | uid: ${meta.uid}` : ''}`;
});

// Create a Winston logger instance
const logger = winston.createLogger({
    level: 'info',
    format: winston.format.combine(
        winston.format.timestamp(),
        logFormat
    ),
    transports: [
        new winston.transports.File({ filename: 'logs/error.log', level: 'error' }), // Log errors to error.log
        new winston.transports.File({ filename: 'logs/combined.log' }) // Log all other information to combined.log
    ]
});

// Create connection to MySQL
const connection = mysql.createConnection({
    host: "127.0.0.1", // or your database host
    port: 3306,
    user: "root", // or your database username
    password: "root", // or your database password
    database: "Timetable"
});

// Connect to MySQL
connection.connect((err) => {
    if (err) {
        logger.error('Error connecting to MySQL database:', { message: err.message });
        throw err;
    }
    logger.info('Connected to MySQL database');
});

// Use CORS middleware to allow requests from all origin
app.use(cors());

// Middleware to parse incoming request bodies
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Middleware to log requests with user information
app.use(expressWinston.logger({
    transports: [
        new winston.transports.File({ filename: 'logs/combined.log' })
    ],
    format: winston.format.combine(
        winston.format.timestamp(),
        winston.format.json()
    ),
    meta: true,
    msg: "HTTP {{req.method}} {{req.url}}",
    expressFormat: true,
    colorize: false,
    dynamicMeta: (req, res) => {
        return {
            uname: req.body.uname || 'unknown',
            uid: req.body.uid || 'unknown'
        };
    }
}));

// Register endpoint
app.post('/register', [
    check('uname', 'Name is required').notEmpty(),
    check('password', 'Password is required').notEmpty(),
    check('email', 'A valid email is required').isEmail(),
    check('role', 'Role is required').notEmpty()
], function (req, res) {
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
        logger.error('Validation errors during registration:', { errors: errors.array(), uname: req.body.uname, uid: req.body.uid });
        return res.status(400).json({ errors: errors.array() });
    }

    const user = {
        uname: req.body.uname,
        email: req.body.email,
        password: req.body.password,
        role: req.body.role
    };

    connection.query('INSERT INTO users SET ?', user, function (err, result) {
        if (err) {
            logger.error('Error registering user:', { message: err.message, uname: req.body.uname, uid: req.body.uid });
            return res.status(500).json({ error: 'Error registering user' });
        } else {
            logger.info('User registered successfully', { uname: req.body.uname, uid: result.insertId });
            return res.status(200).json({ message: 'User registered successfully' });
        }
    });
});

// Login endpoint
app.post('/login', function (req, res) {
    const { email, password } = req.body;

    connection.query('SELECT * FROM users WHERE email = ? AND password = ?', [email, password], function (err, result) {
        if (err) {
            logger.error('Error during login:', { message: err.message, uname: req.body.uname, uid: req.body.uid });
            return res.status(500).json({ error: 'Error during login' });
        }

        if (result.length > 0) {
            logger.info('Login successful', { uname: result[0].uname, uid: result[0].uid });
            return res.status(200).json({ message: 'Login successful' });
        } else {
            logger.warn('Login failed: Invalid credentials', { uname: req.body.uname, uid: req.body.uid });
            return res.status(401).json({ error: 'Invalid credentials' });
        }
    });
});

app.get('/timetable/:className/:section', (req, res) => {
    const { className, section } = req.params;
    const query = `SELECT * FROM timetable WHERE class = ? AND section = ?`;
    connection.query(query, [className, section], (err, results) => {
        if (err) {
            logger.error('Error fetching timetable data:', { message: err.message, uname: req.body.uname, uid: req.body.uid });
            res.status(500).json({ error: 'Error fetching timetable data' });
            return;
        }
        res.json(results);
    });
});

app.get('/:subject', (req, res) => {
    const { subject } = req.params;
    const query = `SELECT * FROM ${subject}`;
    connection.query(query, (err, results) => {
        if (err) {
            logger.error('Error fetching subject data:', { message: err.message, uname: req.body.uname, uid: req.body.uid });
            res.status(500).json({ error: 'Error fetching subject data' });
            return;
        }
        res.json(results);
    });
});

// Start the server
app.listen(port, () => {
    logger.info(`Server is running on port ${port}`);
});
