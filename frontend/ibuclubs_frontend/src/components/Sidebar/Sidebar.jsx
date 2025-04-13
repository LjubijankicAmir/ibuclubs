import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import './Sidebar.css';

const Sidebar = () => {
  const location = useLocation();

  return (
    <div className="sidebar">
      <ul style={{ listStyleType: 'none', padding: 0 }}>
        <li className={location.pathname === '/' ? 'active' : ''}>
          <Link to="/">Dashboard</Link>
        </li>
        <li className={location.pathname === '/students' ? 'active' : ''}>
          <Link to="/students">Students</Link>
        </li>
        <li className={location.pathname === '/clubs' ? 'active' : ''}>
          <Link to="/clubs">Clubs</Link>
        </li>
        <li className={location.pathname === '/activities' ? 'active' : ''}>
          <Link to="/activities">Activities</Link>
        </li>
      </ul>
    </div>
  );
};

export default Sidebar;
