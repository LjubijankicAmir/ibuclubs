import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import DashboardIcon from '@mui/icons-material/Dashboard';
import SchoolIcon from '@mui/icons-material/School';
import GroupIcon from '@mui/icons-material/Group';
import EventIcon from '@mui/icons-material/Event';

import './Sidebar.css';

const Sidebar = ({ visible }) => {
  const location = useLocation();

  return (
    <div className={`sidebar ${visible ? '' : 'hidden'}`}>
      <ul>
        <li className={location.pathname === '/' ? 'active' : ''}>
          <Link to="/">
          <DashboardIcon className="sidebar-icon" />
          <span className="sidebar-text">Dashboard</span>
          </Link>
        </li>
        <li className={location.pathname === '/students' ? 'active' : ''}>
          <Link to="/students">
          <GroupIcon className="sidebar-icon" />
          <span className="sidebar-text">Students</span>
          </Link>
        </li>
        <li className={location.pathname === '/clubs' ? 'active' : ''}>
          <Link to="/clubs">
          <SchoolIcon className="sidebar-icon" />
          <span className="sidebar-text">Clubs</span>
          </Link>
        </li>
        <li className={location.pathname === '/activities' ? 'active' : ''}>
          <Link to="/activities">
          <EventIcon className="sidebar-icon" />
          <span className="sidebar-text">Activities</span>
          </Link>
        </li>
      </ul>
    </div>
  );
};

export default Sidebar;
