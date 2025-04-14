import React, { useEffect, useState } from 'react';
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  TextField,
  Button,
} from '@mui/material';

const EditStudentModal = ({ open, onClose, student, onSubmit }) => {
  const [formData, setFormData] = useState({
    name: '',
    surname: '',
    email: '',
  });

  useEffect(() => {
    if (student) {
      setFormData({
        name: student.name || '',
        surname: student.surname || '',
        email: student.email || '',
      });
    }
  }, [student]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = () => {
    onSubmit({ ...student, ...formData });
  };

  return (
    <Dialog open={open} onClose={onClose} fullWidth>
      <DialogTitle sx={{ fontWeight: 'bold', color: '#2d5f8b' }}>Edit Student</DialogTitle>
      <DialogContent>
        <TextField
          margin="dense"
          name="name"
          label="Name"
          value={formData.name}
          onChange={handleChange}
          fullWidth
        />
        <TextField
          margin="dense"
          name="surname"
          label="Surname"
          value={formData.surname}
          onChange={handleChange}
          fullWidth
        />
        <TextField
          margin="dense"
          name="email"
          label="Email"
          value={formData.email}
          onChange={handleChange}
          fullWidth
        />
      </DialogContent>
      <DialogActions>
        <Button onClick={onClose}>Cancel</Button>
        <Button onClick={handleSubmit} variant="contained" color="primary">
          Save
        </Button>
      </DialogActions>
    </Dialog>
  );
};

export default EditStudentModal;
