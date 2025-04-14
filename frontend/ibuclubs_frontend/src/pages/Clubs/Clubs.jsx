import React, { useState, useEffect } from 'react';
import { ClubsApi } from '../../api/apiService';
import ClubsTable from '../../components/Tables/ClubsTable';
import CircularProgress from '@mui/material/CircularProgress';


const Clubs = () => {
  const [clubs, setClubs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    ClubsApi.getClubs()
      .then((response) => {
        setClubs(Array.isArray(response.data) ? response.data : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Error loading Clubs');
        setLoading(false);
      });
  }, []);

  if (error) return <div>{error}</div>;

  return (
    <div>
      <h1>Clubs</h1>
      {loading ? (
        <div
          style={{
            display: 'flex',
            alignItems: 'center',
            height: '100%',
            padding: '20px',
          }}
        >
          <CircularProgress />
        </div>
      ) :
        <ClubsTable clubs={clubs} />
      }
    </div>
  );
};

export default Clubs;
