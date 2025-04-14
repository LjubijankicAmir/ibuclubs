import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import './Table.css';

const columns = [
  { field: 'clubId', headerName: 'ID', width: 300 },
  { field: 'name', headerName: 'Name', width: 150 },
  { field: 'description', headerName: 'Description', width: 150 },
  { field: 'socialMediaLink', headerName: 'Social Media Link', width: 300 },
];

const ClubsTable = ({ clubs }) => {
  const rows = clubs.map(club => ({
    id: club.clubId,
    ...club,
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

export default ClubsTable;
