
import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom'

export default function Login(props) {
  const [formData, setFormData] = useState({
    username: '',
    password: ''
  });
  const navigate = useNavigate();

  
  const { handleLogin } = props;

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prevState => ({
      ...prevState,
      [name]: value
    }))
  }

  return (
    <form onSubmit={(e) => {
      e.preventDefault()
      handleLogin(formData)
    }}>
      <h3>Login</h3>
      <label>
        username:
        <input
          type='text'
          name='username'
          value={formData.username}
          onChange={handleChange} />
      </label>
      <br />
      <label>
        password:
        <input
          type='password'
          name='password'
          value={formData.password}
          onChange={handleChange} />
      </label>
      <br />
      <Link to='/register'>Register</Link>
      <button>Submit</button>
    </form>
  )
}
