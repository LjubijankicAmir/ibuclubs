import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import './Table.css';

const columns = [
  { field: 'studentId', headerName: 'ID', width: 300 },
  { field: 'name', headerName: 'Name', width: 150 },
  { field: 'surname', headerName: 'Surname', width: 150 },
  { field: 'email', headerName: 'Email', width: 300 },
];

const StudentsTable = ({ students }) => {
  const rows = students.map(student => ({
    id: student.studentId,
    ...student,
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

export default StudentsTable;
