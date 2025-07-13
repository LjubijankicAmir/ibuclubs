import * as React from 'react';
import PropTypes from 'prop-types';
import { DataGrid, GridActionsCellItem } from '@mui/x-data-grid';
import { Select, MenuItem, IconButton } from '@mui/material';
import PersonRemove from '@mui/icons-material/Delete';

export default function MembersTable({
  members,
  onRoleChange,
  onRemoveMember,
}) {
  const ROLE_OPTIONS = ['Member', 'Admin', 'Owner'];

  const columns = [
    { field: 'studentId', headerName: 'ID', width: 250 },
    { field: 'name',      headerName: 'Name',    width: 150 },
    { field: 'surname',   headerName: 'Surname', width: 150 },
    { field: 'email',     headerName: 'Email',   width: 250 },
    {
      field: 'role',
      headerName: 'Role',
      width: 160,
      renderCell: (params) => {
        const { studentId, role } = params.row;
        return (
          <Select
            value={role}
            size="small"
            onChange={(e) => onRoleChange(studentId, e.target.value)}
            sx={{ width: '100%' }}
          >
            {ROLE_OPTIONS.map((opt) => (
              <MenuItem key={opt} value={opt}>
                {opt}
              </MenuItem>
            ))}
          </Select>
        );
      },
      sortable: false,
      filterable: false,
    },
    {
      field: 'actions',
      type: 'actions',
      headerName: 'Remove',
      width: 80,
      getActions: (params) => [
        <GridActionsCellItem
          key="delete"
          icon={
            <IconButton size="small">
              <PersonRemove color="error" />
            </IconButton>
          }
          label="Remove"
          onClick={() => onRemoveMember(params.row.studentId)}
        />
      ],
    },
  ];

  const rows = members.map((m) => ({ id: m.studentId, ...m }));

  return (
    <div style={{ height: 400, width: '100%' }}>
      <DataGrid
        rows={rows}
        columns={columns}
        pageSize={5}
        rowsPerPageOptions={[5, 10, 25]}
        disableSelectionOnClick
        autoHeight
      />
    </div>
  );
}

MembersTable.propTypes = {
  members: PropTypes.arrayOf(
    PropTypes.shape({
      studentId: PropTypes.string.isRequired,
      name:      PropTypes.string,
      surname:   PropTypes.string,
      email:     PropTypes.string,
      role:      PropTypes.string,
    })
  ).isRequired,
  onRoleChange:    PropTypes.func.isRequired, 
  onRemoveMember:  PropTypes.func.isRequired,
};
