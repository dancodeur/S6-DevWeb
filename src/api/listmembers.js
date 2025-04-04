import axios from 'axios';

const TOKEN_GITHUB_ = import.meta.env.VITE_GITHUB_TOKEN;

const apiClient = axios.create({
    baseURL: 'https://api.github.com/',
    headers: {
        Authorization: `token ${TOKEN_GITHUB_}`,
        Accept: 'application/vnd.github+json'
    }
});

const getCollaborators = async (owner, repo) => {
    try {
        const response = await apiClient.get(`/repos/${owner}/${repo}/collaborators`);
        return response.data;
    } catch (error) {
        console.error('Erreur API GitHub:', error.response ? error.response.data : error.message);
        return [];
    }
};

const getUserDetails = async (username) => {
    try {
        const response = await apiClient.get(`/users/${username}`);
        return response.data;
    } catch (error) {
        console.error('Erreur API GitHub:', error.response ? error.response.data : error.message);
        return null;
    }
};

export { getCollaborators, getUserDetails };
