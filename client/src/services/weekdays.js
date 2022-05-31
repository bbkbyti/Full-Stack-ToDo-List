import api from "./api-config";

export const getAllWeekdays = async () => {
    const response = await api.get('/weekdays')
    return response.data
}