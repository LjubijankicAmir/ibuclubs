import React, { useEffect, useState } from 'react';
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  TextField,
  Button,
} from '@mui/material';

const EditActivityModal = ({ open, onClose, activity, onSubmit }) => {
  const [formData, setFormData] = useState({
    name: '',
    description: '',
    date: '',
    time: '',
    activityPoints: '',
    maxParticipants: '',
  });

  useEffect(() => {
    if (activity) {
      setFormData({
        name: activity.name || '',
        description: activity.description || '',
        date: activity.date || '',
        time: activity.time || '',
        activityPoints: activity.activityPoints || '',
        maxParticipants: activity.maxParticipants || '',
      });
    }
  }, [activity]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = () => {
    onSubmit({ ...activity, ...formData });
  };

  return (
    <Dialog open={open} onClose={onClose} fullWidth>
      <DialogTitle sx={{ fontWeight: 'bold', color: '#2d5f8b' }}>
        Edit Activity
      </DialogTitle>
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
          name="description"
          label="Description"
          value={formData.description}
          onChange={handleChange}
          fullWidth
        />
        <TextField
          margin="dense"
          name="date"
          label="Date"
          type="date"
          value={formData.date}
          onChange={handleChange}
          fullWidth
          InputLabelProps={{ shrink: true }}
        />
        <TextField
          margin="dense"
          name="time"
          label="Time"
          type="time"
          value={formData.time}
          onChange={handleChange}
          fullWidth
          InputLabelProps={{ shrink: true }}
        />
        <TextField
          margin="dense"
          name="activityPoints"
          label="Activity Points"
          type="number"
          value={formData.activityPoints}
          onChange={handleChange}
          fullWidth
        />
        <TextField
          margin="dense"
          name="maxParticipants"
          label="Max Participants"
          type="number"
          value={formData.maxParticipants}
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

export default EditActivityModal;
