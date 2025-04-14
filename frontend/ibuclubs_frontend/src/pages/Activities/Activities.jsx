import React, { useState, useEffect } from 'react';
import { ActivitiesApi } from '../../api/apiService';
import ActivitiesTable from '../../components/Tables/ActivitiesTable';
import CircularProgress from '@mui/material/CircularProgress';


const Activities = () => {
  const [activities, setActivities] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    ActivitiesApi.getActivities()
      .then((response) => {
        setActivities(Array.isArray(response.data) ? response.data : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Error loading Activities');
        setLoading(false);
      });
  }, []);

  if (error) return <div>{error}</div>;

  return (
    <div>
      <h1>Activities</h1>
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
        <ActivitiesTable activities={activities} />
      }
    </div>
  );
};

export default Activities;
