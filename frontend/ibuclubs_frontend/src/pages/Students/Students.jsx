import React, { useState, useEffect } from 'react';
import { StudentsApi } from '../../api/apiService';
import StudentsTable from '../../components/Tables/StudentsTable';
import CircularProgress from '@mui/material/CircularProgress';


const Students = () => {
  const [students, setStudents] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    StudentsApi.getStudents()
      .then((response) => {
        setStudents(Array.isArray(response.data) ? response.data : []);
        setLoading(false);
      })
      .catch((err) => {
        setError('Error loading students');
        setLoading(false);
      });
  }, []);

  if (error) return <div>{error}</div>;

  return (
    <div>
      <h1>Students</h1>
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
      ) :
        <StudentsTable students={students} />
      }
    </div>
  );
};

export default Students;
