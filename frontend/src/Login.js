import React, { useState } from 'react';
import { Link } from 'react-router-dom';

function Login() {
    const [showRefreshButton, setShowRefreshButton] = useState(false);
    const [errorMessage, setErrorMessage] = useState('');

    const handleSubmit = async (event) => {
        event.preventDefault();
        const email = event.target.elements.email.value;
        const password = event.target.elements.password.value;

        try {
            const response = await fetch('http://localhost:4000/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ email, password }),
            });
            if (email === 'admin@gmail.com' && password === 'admin123') {
                window.location.href = '/dashboard';
            }
            else if (!response.ok) {
                throw new Error('Invalid credentials');
            }
            else {
                // Successful authentication
                window.location.href = '/teacher';
            }
        } catch (error) {
            setErrorMessage('Invalid credentials. Please try again.');
            setShowRefreshButton(true);
        }
    };

    const handleRefresh = () => {
        setShowRefreshButton(false);
        setErrorMessage('');
    };


    return (
        <div className="wrapper login" style={{ fontFamily: 'poppins, Arial, Helvetica, sans-serif', fontSize: '16px', fontWeight: 400, color: 'black', background: '#008b8b', display: 'flex', alignItems: 'center', justifyContent: 'center', minHeight: '100vh' }}>
            <div className="container" style={{ width: '400px', padding: '20px', borderRadius: '10px', boxShadow: '0 0 10px rgba(0, 0, 0, 0.1)', background: '#fff' }}>
                <h2 style={{ margin: '0 0 15px 0', fontSize: '30px', fontWeight: 700, textAlign: 'center' }}>Welcome User!</h2>
                <form onSubmit={handleSubmit}>
                    <div style={{ marginBottom: '20px' }}>
                        <label>Email<span>*</span></label>
                        <br></br>
                        <input type="email" name="email" placeholder="Email Address" required style={{ width: '90%', height: '40px', padding: '0 10px', outline: 'none', border: '1px solid #cccccc', borderRadius: '5px' }} />
                    </div>
                    <div style={{ marginBottom: '20px' }}>
                        <label>Password<span>*</span></label>
                        <input type="password" name="password" placeholder="Password" required style={{ width: '90%', height: '40px', padding: '0 10px', outline: 'none', border: '1px solid #cccccc', borderRadius: '5px' }} />
                    </div>
                    <div style={{ textAlign: 'center' }}>
                        <input type="submit" value="Sign In" style={{ width: '150px', height: '40px', color: '#fff', backgroundColor: '#008b8b', border: 'none', borderRadius: '5px', cursor: 'pointer' }} />
                    </div>
                </form>
                {errorMessage && (
                    <div style={{ textAlign: 'center', marginTop: '20px', color: 'red' }}>
                        {errorMessage}
                    </div>
                )}
                {showRefreshButton && (
                    <div style={{ textAlign: 'center', marginTop: '20px' }}>
                        <button onClick={handleRefresh} style={{ width: '150px', height: '40px', color: '#fff', backgroundColor: '#f44336', border: 'none', borderRadius: '5px', cursor: 'pointer' }}>Refresh</button>
                    </div>
                )}
                <div style={{ marginTop: '20px', textAlign: 'center' }}>
                    <p>Don't have an account? <Link to="/register" style={{ color: '#008b8b', textDecoration: 'none' }}>Sign Up</Link></p>
                </div>
            </div>
        </div>
    );
}

export default Login;