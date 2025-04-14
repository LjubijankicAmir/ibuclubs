import React, { useState, useEffect } from 'react';
import { ClubsApi } from '../../api/apiService';
import ClubsTable from '../../components/Tables/ClubsTable';
import Button from '@mui/material/Button';
import CircularProgress from '@mui/material/CircularProgress';
import CreateClubModal from '../../components/Modals/CreateModals/CreateClubModal';

const Clubs = () => {
  const [clubs, setClubs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [createModalOpen, setCreateModalOpen] = useState(false);

  const fetchClubs = () => {
    ClubsApi.getClubs()
      .then((response) => {
        setClubs(Array.isArray(response.data) ? response.data : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Error loading clubs');
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchClubs();
  }, []);

  const handleUpdateClub = (updatedClub) => {
    ClubsApi.updateClub(updatedClub)
      .then(() => {
        fetchClubs();
      })
      .catch(() => {
        alert('Error updating club');
      });
  };

  const handleDeleteClub = (club) => {
    if (window.confirm(`Are you sure you want to delete ${club.name}?`)) {
      ClubsApi.deleteClub(club.clubId)
        .then(() => {
          fetchClubs();
        })
        .catch(() => {
          alert('Error deleting club');
        });
    }
  };

  const handleCreateClub = (clubData) => {
    ClubsApi.createClub(clubData)
      .then(() => {
        fetchClubs();
      })
      .catch(() => {
        alert('Error creating club');
      });
  }

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
      ) : (
        <>
        <ClubsTable
          clubs={clubs}
          onUpdateClub={handleUpdateClub}
          onDeleteClub={handleDeleteClub}
        />
        <div style={{ marginTop: '20px' }}>
            <Button 
            variant="contained" 
            sx={{ backgroundColor: '#4176a4'}} 
            onClick={() => setCreateModalOpen(true)}>
              Create New Club
            </Button>
          </div>
        </>
      )}
      <CreateClubModal
        open={createModalOpen}
        onClose={() => setCreateModalOpen(false)}
        onSubmit={handleCreateClub}
        />
    </div>
  );
};

export default Clubs;
