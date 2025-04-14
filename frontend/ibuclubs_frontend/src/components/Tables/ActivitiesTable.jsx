import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import IconButton from '@mui/material/IconButton';
import EditIcon from '@mui/icons-material/Edit';
import DeleteIcon from '@mui/icons-material/Delete';
import EditActivityModal from '../Modals/EditActivityModal';
import './Table.css';

const ActivitiesTable = ({ activities, onUpdateActivity, onDeleteActivity }) => {
  const [selectedActivity, setSelectedActivity] = React.useState(null);
  const [openEditModal, setOpenEditModal] = React.useState(false);

  const handleEditClick = (activity) => {
    setSelectedActivity(activity);
    setOpenEditModal(true);
  };

  const handleDeleteClick = (activity) => {
    if (onDeleteActivity) {
      onDeleteActivity(activity);
    }
  };

  const handleCloseModal = () => {
    setOpenEditModal(false);
    setSelectedActivity(null);
  };

  const handleSubmitUpdate = (updatedActivity) => {
    onUpdateActivity(updatedActivity);
    setOpenEditModal(false);
  };

  const columns = [
    { field: 'activityId', headerName: 'ID', width: 300 },
    { field: 'clubId', headerName: 'Club ID', width: 300 },
    { field: 'name', headerName: 'Name', width: 150 },
    { field: 'description', headerName: 'Description', width: 150 },
    { field: 'date', headerName: 'Date', width: 150 },
    { field: 'time', headerName: 'Time', width: 150 },
    { field: 'activityPoints', headerName: 'Activity Points', width: 50 },
    { field: 'maxParticipants', headerName: 'Max Participants', width: 50 },
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

  const rows = activities.map((activity) => ({
    id: activity.activityId,
    ...activity,
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
      {selectedActivity && (
        <EditActivityModal
          open={openEditModal}
          onClose={handleCloseModal}
          activity={selectedActivity}
          onSubmit={handleSubmitUpdate}
        />
      )}
    </div>
  );
};

export default ActivitiesTable;
