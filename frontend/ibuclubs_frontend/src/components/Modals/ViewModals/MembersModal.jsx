import React, { useEffect, useState } from 'react';
import PropTypes from 'prop-types';
import { Modal, Box, Typography, IconButton, CircularProgress } from '@mui/material';
import CloseIcon from '@mui/icons-material/Close';
import { ClubsApi } from '../../../api/apiService';
import StudentsTable from '../../Tables/StudentsTable';
import MembersTable from '../../Tables/MembersTable';

const modalStyle = {
  position: 'absolute',
  top: '50%',
  left: '50%',
  transform: 'translate(-50%, -50%)',
  width: '65vw',
  maxHeight: '80vh',
  bgcolor: 'background.paper',
  boxShadow: 24,
  p: 3,
  borderRadius: 2,
  display: 'flex',
  flexDirection: 'column',
};

export default function MembersModal({ open, onClose, club }) {
  const [members, setMembers] = useState([]);
  const [loading, setLoading]   = useState(false);
  const [error, setError]       = useState('');

  useEffect(() => {
    if (!open || !club) return;
    setLoading(true);
    setError('');
    ClubsApi.getMembers(club.clubId)
      .then(res => setMembers(res.data))
      .catch(() => setError('Failed to load members'))
      .finally(() => setLoading(false));
  }, [open, club]);

  const handleRoleChange = async (studentId, newRole) => {
    setLoading(true);
    setError('');
    try {
      await ClubsApi.updateMemberRole(club.clubId, studentId, newRole);
      setMembers(prevMembers => 
        prevMembers.map(member => 
          member.studentId === studentId ? { ...member, role: newRole } : member
        )
      );
    } catch (err) {
      setError('Failed to update member role');
    } finally {
      setLoading(false);
    }
  }

  const handleKick = async (studentId) => {
    setLoading(true);
    setError('');
    try {
      
      await ClubsApi.kickMember(club.clubId, studentId);
      setMembers(ms => ms.filter(m => m.studentId !== studentId));
    } catch {
      setError('Failed to remove member');
    } finally {
      setLoading(false);
    }
  };

  return (
    <Modal open={open} onClose={onClose}>
      <Box sx={modalStyle}>
        <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
          <Typography variant="h6">Members of “{club.name}”</Typography>
          <IconButton size="small" onClick={onClose}>
            <CloseIcon />
          </IconButton>
        </Box>

        {loading && (
          <Box sx={{ flex: 1, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <CircularProgress />
          </Box>
        )}

        {error && <Typography color="error">{error}</Typography>}

        {!loading && !error && (
          members.length > 0
            ? (
              <Box sx={{ flex: 1, overflow: 'hidden' }}>
                <MembersTable
                  members={members}
                  onRoleChange={handleRoleChange}
                  onRemoveMember={handleKick}
                />
              </Box>
            )
            : <Typography>No members enrolled.</Typography>
        )}
      </Box>
    </Modal>
  );
}

MembersModal.propTypes = {
  open:    PropTypes.bool.isRequired,
  onClose: PropTypes.func.isRequired,
  club:    PropTypes.shape({
    clubId: PropTypes.string.isRequired,
    name:   PropTypes.string.isRequired,
  }),
};
