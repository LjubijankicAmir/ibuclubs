import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import './Table.css';

const columns = [
  { field: 'activityId', headerName: 'ID', width: 300 },
  { field: 'clubId', headerName: 'Club ID', width: 300 },
  { field: 'name', headerName: 'Name', width: 150 },
  { field: 'description', headerName: 'Description', width: 150 },
  { field: 'date', headerName: 'Date', width: 150 },
  { field: 'time', headerName: 'Time', width: 150 },
  { field: 'activityPoints', headerName: 'Activity Points', width: 50 },
  { field: 'maxParticipants', headerName: 'Max Participants', width: 50 },
];

const ActivitiesTable = ({ activities }) => {
  const rows = activities.map(activity => ({
    id: activity.activityId,
    ...activity,
  }));

  return (
    <div className='data-grid'>
      <DataGrid
        rows={rows}
        columns={columns}
        pageSize={5}
        rowsPerPageOptions={[5, 10, 25]}
        checkboxSelection
      />
    </div>
  );
};

export default ActivitiesTable;
