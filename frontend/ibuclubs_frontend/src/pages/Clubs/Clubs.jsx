import React, { useState, useEffect } from 'react';
import { ClubsApi } from '../../api/apiService';
import ClubsTable from '../../components/Tables/ClubsTable';
import MembersModal from '../../components/Modals/ViewModals/MembersModal';
import Button from '@mui/material/Button';
import CircularProgress from '@mui/material/CircularProgress';
import CreateClubModal from '../../components/Modals/CreateModals/CreateClubModal';

const Clubs = () => {
  const [clubs, setClubs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [createModalOpen, setCreateModalOpen] = useState(false);

  const [membersModalOpen, setMembersModalOpen] = useState(false);
  const [selectedClub, setSelectedClub] = useState(null);

  const fetchClubs = () => {
    setLoading(true);
    ClubsApi.getClubs()
      .then((response) => {
        setClubs(Array.isArray(response.data) ? response.data : []);
      })
      .catch(() => {
        setError('Error loading clubs');
      })
      .finally(() => {
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchClubs();
  }, []);

  const handleCreateClub = (clubData) => {
    ClubsApi.createClub(clubData)
      .then(() => {
        fetchClubs();
      })
      .catch(() => {
        alert('Error creating club');
      });
  };

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

  const handleReviewClub = (clubId, status) => {
    ClubsApi.reviewClub(clubId, status)
      .then(() => {
        fetchClubs();
      })
      .catch(() => {
        alert('Error reviewing club');
      });
  };

  const handleListMembers = (club) => {
    setSelectedClub(club);
    setMembersModalOpen(true);
  };

  const handleCloseMembers = () => {
    setMembersModalOpen(false);
    setSelectedClub(null);
  };

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
            onReviewClub={handleReviewClub}
            onListMembers={handleListMembers}
          />
          <div style={{ marginTop: '20px' }}>
            <Button
              variant="contained"
              sx={{ backgroundColor: '#4176a4' }}
              onClick={() => setCreateModalOpen(true)}
            >
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

      {selectedClub && (
        <MembersModal
          open={membersModalOpen}
          onClose={handleCloseMembers}
          club={selectedClub}
        />
      )}
    </div>
  );
};

export default Clubs;
