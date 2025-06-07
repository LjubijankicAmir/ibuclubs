import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import Button from '@mui/material/Button';
import IconButton from '@mui/material/IconButton';
import EditIcon from '@mui/icons-material/Edit';
import CheckIcon from '@mui/icons-material/Check';
import CloseIcon from '@mui/icons-material/Close';
import DeleteIcon from '@mui/icons-material/Delete';
import EditClubModal from '../Modals/EditModals/EditClubModal';
import './Table.css';

const ClubsTable = ({ clubs, onUpdateClub, onDeleteClub, onReviewClub }) => {
  const [selectedClub, setSelectedClub] = React.useState(null);
  const [openEditModal, setOpenEditModal] = React.useState(false);

  const statusOrder = { Pending: 0, Approved: 1, Rejected: 2 };


  const handleEditClick = (club) => {
    setSelectedClub(club);
    setOpenEditModal(true);
  };

  const handleReview = (clubId, status) => {
    onReviewClub(clubId, status);
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
    { field: 'socialMediaLink', headerName: 'Social Media Link', width: 200 },
    {
      field: 'status',
      headerName: 'Status',
      width: 180,
      sortComparator: (v1, v2) => statusOrder[v1] - statusOrder[v2],
      renderCell: (params) => {
        const { status, id } = params.row;
        if (status === 1) {
          return <CheckIcon sx={{ color: 'green' }} />;
        }
        if (status === 2) {
          return <CloseIcon sx={{ color: 'red' }} />;
        }
        return (
          <>
            <Button
              size="small"
              onClick={() => handleReview(id, 1)}
            >
              Approve
            </Button>
            <Button
              size="small"
              color="error"
              onClick={() => handleReview(id, 2)}
            >
              Reject
            </Button>
          </>
        );
      },
      sortable: true,
      filterable: false,
    },
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

  const sortedRows = [...clubs]
    .sort((a,b) => statusOrder[a.status] - statusOrder[b.status])
    .map(club => ({ id: club.clubId, ...club }));

  return (
    <div className="data-grid">
      <DataGrid
        rows={sortedRows}
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
