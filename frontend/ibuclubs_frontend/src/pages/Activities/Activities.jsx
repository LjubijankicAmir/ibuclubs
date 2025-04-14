import React, { useState, useEffect } from 'react';
import CircularProgress from '@mui/material/CircularProgress';
import Button from '@mui/material/Button';
import { ActivitiesApi, ClubsApi } from '../../api/apiService';
import ActivitiesTable from '../../components/Tables/ActivitiesTable';
import CreateActivityModal from '../../components/Modals/CreateModals/CreateActivityModal';

const Activities = () => {
  const [activities, setActivities] = useState([]);
  const [clubs, setClubs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [createModalOpen, setCreateModalOpen] = useState(false);

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

  const fetchClubs = () => {
    ClubsApi.getClubs()
      .then((response) => {
        setClubs(Array.isArray(response.data) ? response.data : []);
      })
      .catch((err) => {
        console.error('Error loading clubs for dropdown');
      });
  };

  useEffect(() => {
    fetchActivities();
    fetchClubs();
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

  const handleCreateActivity = (activityData) => {
    ActivitiesApi.createActivity(activityData)
      .then(() => {
        fetchActivities();
      })
      .catch(() => {
        alert('Error creating activity');
      });
  };

  if (error) return <div>{error}</div>;

  return (
    <div>
      <h1>Activities</h1>
      {loading ? (
        <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100%', padding: '20px' }}>
          <CircularProgress />
        </div>
      ) : (
        <>
          <ActivitiesTable
            activities={activities}
            onUpdateActivity={handleUpdateActivity}
            onDeleteActivity={handleDeleteActivity}
          />
          <div style={{ marginTop: '20px' }}>
            <Button 
            variant="contained" 
            sx={{ backgroundColor: '#4176a4'}} 
            onClick={() => setCreateModalOpen(true)}>
              Create New Activity
            </Button>
          </div>
        </>
      )}
      <CreateActivityModal
        open={createModalOpen}
        onClose={() => setCreateModalOpen(false)}
        onSubmit={handleCreateActivity}
        clubs={clubs}
      />
    </div>
  );
};

export default Activities;
