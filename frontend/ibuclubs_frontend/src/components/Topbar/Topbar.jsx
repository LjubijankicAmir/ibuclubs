import React from 'react';
import './TopBar.css';
import MenuIcon from '@mui/icons-material/Menu';
import IconButton from '@mui/material/IconButton';
import Logo from '../../assets/logo-ibu-white.png';

const TopBar = ({ onButtonClick }) => {
    return (
        <header className="top-bar">
            <div className="top-bar-left">
                <IconButton
                    onClick={onButtonClick}
                    edge="start"
                    color="inherit"
                    aria-label="menu"
                    className="hamburger-icon">
                    <MenuIcon />
                </IconButton>

                <div className="logo-container">
                    <img src={Logo} alt="App Logo" className="logo" />
                </div>
            </div>
            <div className="top-bar-right"></div>
        </header>
    );
};

export default TopBar;
