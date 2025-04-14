import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import IconButton from '@mui/material/IconButton';
import EditIcon from '@mui/icons-material/Edit';
import DeleteIcon from '@mui/icons-material/Delete';
import EditClubModal from '../Modals/EditClubModal';
import './Table.css';

const ClubsTable = ({ clubs, onUpdateClub, onDeleteClub }) => {
  const [selectedClub, setSelectedClub] = React.useState(null);
  const [openEditModal, setOpenEditModal] = React.useState(false);

  const handleEditClick = (club) => {
    setSelectedClub(club);
    setOpenEditModal(true);
  };

  const handleDeleteClick = (club) => {
    if (onDeleteClub) {
      onDeleteClub(club);
    }
  };

  const handleCloseModal = () => {
    setOpenEditModal(false);
    setSelectedClub(null);
  };

  const handleSubmitUpdate = (updatedClub) => {
    onUpdateClub(updatedClub);
    setOpenEditModal(false);
  };

  const columns = [
    { field: 'clubId', headerName: 'ID', width: 300 },
    { field: 'name', headerName: 'Name', width: 150 },
    { field: 'description', headerName: 'Description', width: 150 },
    { field: 'socialMediaLink', headerName: 'Social Media Link', width: 300 },
    {
      field: 'actions',
      headerName: 'Actions',
      width: 150,
      sortable: false,
      filterable: false,
      renderCell: (params) => (
        <>
          <IconButton onClick={() => handleEditClick(params.row)} sx={{ color: '#2d5f8b' }}>
            <EditIcon />
          </IconButton>
          <IconButton onClick={() => handleDeleteClick(params.row)} sx={{ color: '#f44336' }}>
            <DeleteIcon />
          </IconButton>
        </>
      ),
    },
  ];

  const rows = clubs.map((club) => ({
    id: club.clubId,
    ...club,
  }));

  return (
    <div className="data-grid">
      <DataGrid
        rows={rows}
        columns={columns}
        pageSize={5}
        rowsPerPageOptions={[5, 10, 25]}
        checkboxSelection
        disableRowSelectionOnClick
      />
      {selectedClub && (
        <EditClubModal
          open={openEditModal}
          onClose={handleCloseModal}
          club={selectedClub}
          onSubmit={handleSubmitUpdate}
        />
      )}
    </div>
  );
};

export default ClubsTable;
