import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';

import TopBar from './components/Topbar/Topbar';
import Sidebar from './components/Sidebar/Sidebar';
import Dashboard from './pages/Dashboard/Dashboard';
import Students from './pages/Students/Students';
import Clubs from './pages/Clubs/Clubs';
import Activities from './pages/Activities/Activities';
import Login from './pages/Login/Login';

const RequireAuth = ({ children }) => {
  const token = localStorage.getItem('accessToken');
  return token ? children : <Navigate to="/login" replace />;
};

function App() {
  const [sidebarVisible, setSidebarVisible] = useState(true);

  const handleButtonClick = () => {
    setSidebarVisible(prev => {
      const newVisibility = !prev;
      setTimeout(() => window.dispatchEvent(new Event('resize')), 310);
      return newVisibility;
    });
  };
  

  return (
    <Router>
      <Routes>
        <Route path="/login" element={<Login />} />
        <Route path="/*" element={
          <RequireAuth>
            <div className="app" style={{ display: 'flex', flexDirection: 'column', minHeight: '100vh' }}>
              <TopBar onButtonClick={handleButtonClick} />
              <div className="app-container" style={{ display: 'flex', flex: 1 }}>
                <Sidebar visible = {sidebarVisible} />
                <div className="main-content" style={{ flex: 1, padding: '20px', minWidth: 0 }}>
                  <Routes>
                    <Route path="/"           element={<Dashboard />} />
                    <Route path="/students"   element={<Students />} />
                    <Route path="/clubs"      element={<Clubs />} />
                    <Route path="/activities" element={<Activities />} />
                    <Route path="*"           element={<Navigate to="/" />} />
                  </Routes>
                </div>
              </div>
            </div>
          </RequireAuth>
        }/>
      </Routes>
    </Router>
  );
}

export default App;
