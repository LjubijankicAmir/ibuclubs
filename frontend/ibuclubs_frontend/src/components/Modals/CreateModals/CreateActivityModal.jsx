import React, { useState } from 'react';
import { 
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  TextField,
  Button,
  FormControl,
  InputLabel,
  Select,
  MenuItem
} from '@mui/material';

const CreateActivityModal = ({ open, onClose, onSubmit, clubs = [] }) => {
  const [formData, setFormData] = useState({
    clubId: '',
    name: '',
    description: '',
    date: '',
    time: '',
    activityPoints: '',
    maxParticipants: '',
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value,
    }));
  };

  const handleSubmit = () => {
    onSubmit(formData);
    setFormData({
      clubId: '',
      name: '',
      description: '',
      date: '',
      time: '',
      activityPoints: '',
      maxParticipants: '',
    });
  };

  return (
    <Dialog open={open} onClose={onClose} fullWidth>
      <DialogTitle sx={{ fontWeight: 'bold', color: '#2d5f8b' }}>
        Create New Activity
      </DialogTitle>
      <DialogContent>
        <FormControl fullWidth margin="dense">
          <InputLabel id="club-select-label">Club</InputLabel>
          <Select
            labelId="club-select-label"
            id="club-select"
            name="clubId"
            value={formData.clubId}
            onChange={handleChange}
            label="Club"
          >
            {clubs.map(club => (
              <MenuItem key={club.clubId} value={club.clubId}>
                {club.name}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
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
          Create
        </Button>
      </DialogActions>
    </Dialog>
  );
};

export default CreateActivityModal;
