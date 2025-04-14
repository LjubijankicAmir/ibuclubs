import * as React from 'react';
import { DataGrid } from '@mui/x-data-grid';
import IconButton from '@mui/material/IconButton';
import EditIcon from '@mui/icons-material/Edit';
import DeleteIcon from '@mui/icons-material/Delete';
import EditStudentModal from '../Modals/EditModals/EditStudentModal';
import './Table.css';

const StudentsTable = ({ students, onUpdateStudent, onDeleteStudent }) => {
  const [selectedStudent, setSelectedStudent] = React.useState(null);
  const [openEditModal, setOpenEditModal] = React.useState(false);

  const handleEditClick = (student) => {
    setSelectedStudent(student);
    setOpenEditModal(true);
  };

  const handleDeleteClick = (student) => {
    if (onDeleteStudent) {
      onDeleteStudent(student);
    }
  };

  const handleCloseModal = () => {
    setOpenEditModal(false);
    setSelectedStudent(null);
  };

  const handleSubmitUpdate = (updatedStudent) => {
    onUpdateStudent(updatedStudent);
    setOpenEditModal(false);
  };

  const columns = [
    { field: 'studentId', headerName: 'ID', width: 300 },
    { field: 'name', headerName: 'Name', width: 150 },
    { field: 'surname', headerName: 'Surname', width: 150 },
    { field: 'email', headerName: 'Email', width: 300 },
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

  const rows = students.map((student) => ({
    id: student.studentId,
    ...student,
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
      {selectedStudent && (
        <EditStudentModal
          open={openEditModal}
          onClose={handleCloseModal}
          student={selectedStudent}
          onSubmit={handleSubmitUpdate}
        />
      )}
    </div>
  );
};

export default StudentsTable;
