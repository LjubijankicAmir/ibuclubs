import axios from 'axios';

const BASE_URL = "https://ibuclubs-production.up.railway.app/api/";

const ApiClient = axios.create({
    baseURL: BASE_URL,
    headers: {
        'Content-Type': 'application/json',
    },
});

ApiClient.interceptors.request.use(cfg => {
    const token = localStorage.getItem('accessToken');
    if (token && cfg.headers) cfg.headers.Authorization = `Bearer ${token}`;
    return cfg;
  });
  
  export const AuthApi = {
    login: (data) =>
      ApiClient.post('auth/login', data),
    refresh: (token) =>
      ApiClient.post('auth/refresh', { refreshToken: token }),
  };

export const StudentsApi = {
    getStudents: async () => ApiClient.get('student/getallstudents'),
    createStudent: async (data) => ApiClient.post('student/createstudent', data),
    updateStudent: async (data) => ApiClient.put(`student/updatestudent/${data.id}`, data),
    deleteStudent: async (id) => ApiClient.delete(`student/deletestudent/${id}`),
    getStudentById: async (id) => ApiClient.get(`student/getstudentbyid/${id}`),
}

export const ClubsApi = {
    getClubs: async () => ApiClient.get('club/getallclubs'),
    getMembers: async (id) => ApiClient.get(`club/getmemberswithroles/${id}`),
    updateMemberRole: async (clubId, studentId, role) => 
        ApiClient.put(`club/changememberrole/${clubId}/members/${studentId}/role`, null, {params: { role }}),
    kickMember: async (clubId, studentId) => ApiClient.delete(`club/kickmember/${clubId}/members/${studentId}`),
    createClub: async (data) => ApiClient.post('club/createclubadmin', data),
    updateClub: async (data) => ApiClient.put(`club/updateclub/${data.id}`, data),
    deleteClub: async (id) => ApiClient.delete(`club/deleteclub/${id}`),
    getClubById: async (id) => ApiClient.get(`club/getclubbyid/${id}`),
    reviewClub:    (id, status) =>
        ApiClient.post(`club/review/${id}`, { status }),
}

export const ActivitiesApi = {
    getActivities: async () => ApiClient.get('activity/getallactivities'),
    createActivity: async (data) => ApiClient.post('activity/createactivity', data),
    updateActivity: async (data) => ApiClient.put(`activity/updateactivity/${data.id}`, data),
    deleteActivity: async (id) => ApiClient.delete(`activity/deleteactivity/${id}`),
    getActivityById: async (id) => ApiClient.get(`activity/getactivitybyid/${id}`),
}