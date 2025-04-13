import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';

import Sidebar from './components/Sidebar/Sidebar';
import Dashboard from './pages/Dashboard/Dashboard';
import Students from './pages/Students/Students';
import Clubs from './pages/Clubs/Clubs';
import Activities from './pages/Activities/Activities';

function App() {
  return (
    <Router>
      <div className="app-container" style={{ display: 'flex' }}>
        <Sidebar />
        <div className="main-content" style={{ flex: 1, padding: '20px' }}>
          <Routes>
            <Route path="/" element={<Dashboard />} />
            <Route path="/students" element={<Students />} />
            <Route path="/clubs" element={<Clubs />} />
            <Route path="/activities" element={<Activities />} />
            <Route path="*" element={<Navigate to="/" />} />
          </Routes>
        </div>
      </div>
    </Router>
  );
}

export default App;
