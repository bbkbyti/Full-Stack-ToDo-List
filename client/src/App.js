
import { useState } from 'react';
import { Routes, Route } from 'react-router-dom';
import './App.css';
import Layout from './layouts/Layout';
import Login from './screens/Login';
import { loginUser } from './services/auth';

function App() {
  const [currentUser, setCurrentUser] = useState(null)

  const handleLogin = async (loginData) => {
    const userData = await loginUser(loginData);
    setCurrentUser(userData);
  }

  return (
    <div className="App">
      <Layout>
        <Routes>
          <Route path='/login' element={<Login handleLogin={handleLogin} />}>
          </Route>
          <Route path='/register'>
          </Route>
        </Routes>
      </Layout>
    </div>
  );
}

export default App;
