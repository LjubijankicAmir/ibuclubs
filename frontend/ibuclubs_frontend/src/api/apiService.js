import axios from 'axios';

const BASE_URL = "http://localhost:5297/api/";

const ApiClient = axios.create({
    baseURL: BASE_URL,
    headers: {
        'Content-Type': 'application/json',
    },
});

export const StudentsApi = {
    getStudents: async () => ApiClient.get('student/getallstudents'),
    createStudent: async (data) => ApiClient.post('student/createstudent', data),
    updateStudent: async (data) => ApiClient.put(`student/updatestudent/${data.id}`, data),
    deleteStudent: async (id) => ApiClient.delete(`student/deletestudent/${id}`),
    getStudentById: async (id) => ApiClient.get(`student/getstudentbyid/${id}`),
}

export const ClubsApi = {
    getClubs: async () => ApiClient.get('club/getallclubs'),
    createClub: async (data) => ApiClient.post('club/createclub', data),
    updateClub: async (data) => ApiClient.put(`club/updateclub/${data.id}`, data),
    deleteClub: async (id) => ApiClient.delete(`club/deleteclub/${id}`),
    getClubById: async (id) => ApiClient.get(`club/getclubbyid/${id}`),
}

export const ActivitiesApi = {
    getActivities: async () => ApiClient.get('activity/getallactivities'),
    createActivity: async (data) => ApiClient.post('activity/createactivity', data),
    updateActivity: async (data) => ApiClient.put(`activity/updateactivity/${data.id}`, data),
    deleteActivity: async (id) => ApiClient.delete(`activity/deleteactivity/${id}`),
    getActivityById: async (id) => ApiClient.get(`activity/getactivitybyid/${id}`),
}