import api from "./api-config";

export const getAllTodos = async () => {
    const response = await api.get('/todos');
    return response.data
}

export const getOneTodo = async (id) => {
const response = await api.get(`/todos/${id}`);
return response.data
}

export const postTodo = async (todoData) => {
const response = await api.post('/todos', { todo: todoData })
return response.data;
}

export const putTodo = async (id, todoData) => {
const response =  api.put(`/todos/${id}`, { todo: todoData });
return response.data;
}

export const deleteTodo = async (id) => {
const response = await api.delete(`/todos/${id}`);
return response;
}