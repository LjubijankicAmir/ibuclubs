import React, { useState, useEffect } from 'react';
import { ActivitiesApi } from '../../api/apiService';
import ActivitiesTable from '../../components/Tables/ActivitiesTable';
import CircularProgress from '@mui/material/CircularProgress';

const Activities = () => {
  const [activities, setActivities] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  const fetchActivities = () => {
    ActivitiesApi.getActivities()
      .then((response) => {
        setActivities(Array.isArray(response.data) ? response.data : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Error loading Activities');
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchActivities();
  }, []);

  const handleUpdateActivity = (updatedActivity) => {
    ActivitiesApi.updateActivity(updatedActivity)
      .then(() => {
        fetchActivities();
      })
      .catch(() => {
        alert('Error updating activity');
      });
  };

  const handleDeleteActivity = (activity) => {
    if (window.confirm(`Are you sure you want to delete ${activity.name}?`)) {
      ActivitiesApi.deleteActivity(activity.activityId)
        .then(() => {
          fetchActivities();
        })
        .catch(() => {
          alert('Error deleting activity');
        });
    }
  };

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
      ) : (
        <ActivitiesTable
          activities={activities}
          onUpdateActivity={handleUpdateActivity}
          onDeleteActivity={handleDeleteActivity}
        />
      )}
    </div>
  );
};

export default Activities;
