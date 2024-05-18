import React, { useState } from 'react';
import { Link } from 'react-router-dom';

function Register() {
    const [formData, setFormData] = useState({
        uname: '',
        email: '',
        password: '',
        role: ''
    });
    const [errorMessage, setErrorMessage] = useState('');

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({ ...formData, [name]: value });
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            const response = await fetch('http://localhost:4000/register', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(formData),
            });
            if (!response.ok) {
                throw new Error('Registration failed');
            }
            const data = await response.json();
            if (data.error) {
                setErrorMessage(data.error); // Display error message from server
            } else {
                alert('User registered successfully');
                window.location.href = '/'; // Redirect to login page
            }
        } catch (error) {
            alert('User already exists!!');
            window.location.href = '/register';

        }
    };

    return (
        <div className="wrapper login" style={{ fontFamily: 'poppins, Arial, Helvetica, sans-serif', fontSize: '16px', fontWeight: 400, color: 'black', background: '#008b8b', display: 'flex', alignItems: 'center', justifyContent: 'center', minHeight: '100vh' }}>
            <div className="container" style={{ width: '400px', padding: '20px', borderRadius: '10px', boxShadow: '0 0 10px rgba(0, 0, 0, 0.1)', background: '#fff' }}>
                <div style={{ textAlign: 'center', marginBottom: '20px' }}>
                    <h2 style={{ margin: '0', fontSize: '30px', fontWeight: 700 }}>Create an Account</h2>
                    <p style={{ margin: '10px 0', fontSize: '16px' }}>Sign up to get started!</p>
                </div>
                <form onSubmit={handleSubmit}>
                    <div style={{ marginBottom: '20px' }}>
                        <label>Name<span>*</span></label>
                        <input type="text" name="uname" placeholder="Name" value={formData.uname} onChange={handleChange} required style={{ width: '90%', height: '40px', padding: '0 10px', outline: 'none', border: '1px solid #cccccc', borderRadius: '5px' }} />
                    </div>
                    <div style={{ marginBottom: '20px' }}>
                        <label>Email<span>*</span></label>
                        <br></br>
                        <input type="email" name="email" placeholder="Email Address" value={formData.email} onChange={handleChange} required style={{ width: '90%', height: '40px', padding: '0 10px', outline: 'none', border: '1px solid #cccccc', borderRadius: '5px' }} />
                    </div>
                    <div style={{ marginBottom: '20px' }}>
                        <label>Password<span>*</span></label>
                        <input type="password" name="password" placeholder="Password" value={formData.password} onChange={handleChange} required style={{ width: '90%', height: '40px', padding: '0 10px', outline: 'none', border: '1px solid #cccccc', borderRadius: '5px' }} />
                    </div>
                    <div style={{ marginBottom: '20px' }}>
                        <label>Role<span>*</span></label>
                        <input type="text" name="role" placeholder="Role" value={formData.role} onChange={handleChange} required style={{ width: '90%', height: '40px', padding: '0 10px', outline: 'none', border: '1px solid #cccccc', borderRadius: '5px' }} />
                    </div>
                    {errorMessage && <p style={{ color: 'red', textAlign: 'center' }}>{errorMessage}</p>}
                    <div style={{ textAlign: 'center' }}>
                        <input type="submit" value="Sign Up" style={{ width: '150px', height: '40px', color: '#fff', backgroundColor: '#008b8b', border: 'none', borderRadius: '5px', cursor: 'pointer' }} />
                    </div>
                </form>
                <div style={{ marginTop: '20px', textAlign: 'center' }}>
                    <p>Already have an account? <Link to="/" style={{ color: '#008b8b', textDecoration: 'none' }}>Sign In</Link></p>
                </div>
            </div>
        </div>
    );
}

export default Register;