import React, { useState } from 'react';
import axios from 'axios';
import './styles.css'; // Import your CSS file here

function Teacher() {
    const [subject, setSubject] = useState('');
    const [timetable, setTimetable] = useState([]);

    const fetchTimetable = async () => {
        try {
            const response = await axios.get(`http://localhost:4000/${subject}`);
            setTimetable(response.data);
        } catch (error) {
            console.error(error);
        }
    };

    return (
        <div style={{ display: 'flex', flexDirection: 'row', justifyContent: 'center' }}> {/* Added justifyContent: 'center' */}
            <div style={{ marginRight: '20px' }}>
                <div id="topbar">
                    <h1> WELCOME TEACHER!! </h1>
                    <button id="logout" onClick={() => window.location.href = '/'}>
                        Logout
                    </button>
                </div>
            <div id="content">
                <div id="sidebar">
                     <select value={subject} onChange={(e) => setSubject(e.target.value)}  style={{ wigth: '200px' }}>
                    <option value="">Select Subject</option>
                    <option value="telugu">Telugu</option>
                    <option value="english">English</option>
                    <option value="hindi">Hindi</option>
                    <option value="science">Science</option>
                    <option value="maths">Maths</option>
                    <option value="social">Social</option>
                    <option value="telugu_1">Telugu_1</option>
                    <option value="english_1">English_1</option>
                    <option value="hindi_1">Hindi_1</option>
                    <option value="science_1">Science_1</option>
                    <option value="maths_1">Maths_1</option>
                    <option value="social_1">Social_1</option>
                </select>
                        <button onClick={fetchTimetable} style={{ width: '150px', height: '40px', color: '#fff', backgroundColor: '#008b8b', border: 'none', borderRadius: '5px', cursor: 'pointer' }}>Fetch Timetable</button>
            </div>
            <div>
                <h2 style={{ textAlign: 'center' }}>Timetable</h2> {/* Added textAlign: 'center' */}
                <table>
                    <thead>
                        <tr>
                            <th>Day</th>
                            <th>Period1</th>
                            <th>Period2</th>
                            <th>Period3</th>
                            <th>Period4</th>
                            <th>Period5</th>
                            <th>Period6</th>
                        </tr>
                    </thead>
                    <tbody>
                        {timetable.map((item, index) => (
                            <tr key={index}>
                                <td>{item.day}</td>
                                <td>{item.period1}</td>
                                <td>{item.period2}</td>
                                <td>{item.period3}</td>
                                <td>{item.period4}</td>
                                <td>{item.period5}</td>
                                <td>{item.period6}</td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
                </div>
            </div>
        </div>

    );
}

export default Teacher;