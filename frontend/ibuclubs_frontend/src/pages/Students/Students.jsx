import React, { useState, useEffect } from 'react';
import CircularProgress from '@mui/material/CircularProgress';
import { StudentsApi } from '../../api/apiService';
import StudentsTable from '../../components/Tables/StudentsTable';

const Students = () => {
  const [students, setStudents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  const fetchStudents = () => {
    StudentsApi.getStudents()
      .then((response) => {
        setStudents(Array.isArray(response.data) ? response.data : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Error loading students');
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchStudents();
  }, []);

  const handleUpdateStudent = (updatedStudent) => {
    StudentsApi.updateStudent(updatedStudent)
      .then(() => {
        fetchStudents();
      })
      .catch(() => {
        alert('Error updating student');
      });
  };

  const handleDeleteStudent = (student) => {
    if (window.confirm(`Are you sure you want to delete ${student.name}?`)) {
      StudentsApi.deleteStudent(student.studentId)
        .then(() => {
          fetchStudents();
        })
        .catch(() => {
          alert('Error deleting student');
        });
    }
  };

  if (error) return <div>{error}</div>;

  return (
    <div>
      <h1>Students</h1>
      {loading ? (
        <div
          style={{
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            height: '100%',
            padding: '20px',
          }}
        >
          <CircularProgress />
        </div>
      ) : (
        <StudentsTable students={students} onUpdateStudent={handleUpdateStudent} onDeleteStudent={handleDeleteStudent} />
      )}
    </div>
  );
};

export default Students;
