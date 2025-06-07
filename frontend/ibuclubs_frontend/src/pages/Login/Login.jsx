import React, { useState } from 'react';
import { useNavigate }      from 'react-router-dom';
import { AuthApi }          from '../../api/apiService';
import Button               from '@mui/material/Button';
import TextField            from '@mui/material/TextField';
import Box                  from '@mui/material/Box';
import Logo                from '../../assets/ibuclubs_logo.png';

const Login = () => {
  const [email, setEmail]         = useState('');
  const [password, setPassword]   = useState('');
  const [errorOpen, setErrorOpen] = useState(false);
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const resp = await AuthApi.login({ email, password });
      localStorage.setItem('accessToken',  resp.data.accessToken);
      localStorage.setItem('refreshToken', resp.data.refreshToken);
      navigate('/');
    } catch {
        alert('Invalid credentials');
    }
  };

  return (
    <Box
      component="form"
      onSubmit={handleSubmit}
      sx={{
        minHeight: '100vh',
        bgcolor: '#2d5f8b',
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        justifyContent: 'center',
        gap: 3
      }}
    >
      <Box
        component="img"
        src={Logo}
        alt="App Logo"
        sx={{ width: 350, height: 350 }}
      />

      <TextField
        placeholder="Email"
        variant="outlined"
        sx={{
            width: 400,
            bgcolor: 'white',
            mx: 'auto'
          }}
        value={email}
        onChange={e => setEmail(e.target.value)}
      />

      <TextField
        placeholder="Password"
        type="password"
        variant="outlined"
        sx= {{
            width : 400,
            bgcolor: 'white',
            mx: 'auto'
          }}
        value={password}
        onChange={e => setPassword(e.target.value)}
      />

      <Button
        type="submit"
        variant="contained"
        sx={{
            width: 400,
          bgcolor: 'white',
          color: '#2d5f8b',
          fontWeight: 'bold',
          '&:hover': { bgcolor: '#f0f0f0' }
        }}
      >
        LOGIN
      </Button>

    </Box>
  );
};

export default Login;
