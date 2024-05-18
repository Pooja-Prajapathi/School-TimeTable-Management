import React, { useState } from 'react';
import './styles.css'; // Import CSS file

function Dashboard() {
    const [classValue, setClassValue] = useState('');
    const [sectionValue, setSectionValue] = useState('');
    const [timetableData, setTimetableData] = useState([]);
    const daysOfWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

    const handleClassChange = (event) => {
        setClassValue(event.target.value);
    };

    const handleSectionChange = (event) => {
        setSectionValue(event.target.value);
    };

    const fetchTimetable = () => {
        if (classValue !== "" && sectionValue !== "") {
            fetch(`http://localhost:4000/timetable/${classValue}/${sectionValue}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {
                    setTimetableData(data);
                })
                .catch(error => {
                    console.error('Error fetching timetable:', error);
                });
        }
    };

    const logout = () => {
        // Implement logout logic here
        window.location.href = '/';
    };

    return (
        <div>
            <div id="topbar">
                <h1> WELCOME ADMIN!! </h1>
                <button id="logout" onClick={logout}>Logout</button>
            </div>
            <div id="content">
                <div id="sidebar">
                    <select id="class-select" value={classValue} onChange={handleClassChange}>
                        <option value="">Select Class</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                    </select>
                    <select id="section-select" value={sectionValue} onChange={handleSectionChange}>
                        <option value="">Select Section</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                    </select>
                    <button onClick={fetchTimetable} style={{ width: '150px', height: '40px', color: '#fff', backgroundColor: '#008b8b', border: 'none', borderRadius: '5px', cursor: 'pointer' }}>Fetch Timetable</button>
                </div>
                <div id="timetable" style={{ display: timetableData.length > 0 ? 'block' : 'none' }}>
                    <table>
                        <thead>
                            <tr>
                                <th>Weeks</th>
                                <th>1st Period</th>
                                <th>2nd Period</th>
                                <th>3rd Period</th>
                                <th>Lunch</th>
                                <th>4th Period</th>
                                <th>5th Period</th>
                                <th>6th Period</th>
                            </tr>
                        </thead>
                        <tbody>
                            {daysOfWeek.map(day => (
                                <tr key={day}>
                                    <td>{day}</td>
                                    {timetableData.map(data => (
                                        data.day === day &&
                                        <React.Fragment key={data.day}>
                                            <td>{data.period1}</td>
                                            <td>{data.period2}</td>
                                            <td>{data.period3}</td>
                                            <td>{data.lunch}</td>
                                            <td>{data.period4}</td>
                                            <td>{data.period5}</td>
                                            <td>{data.period6}</td>
                                        </React.Fragment>
                                    ))}
                                </tr>
                            ))}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    );
}

export default Dashboard;