import axios from "axios";
import { API_HOST_PREFIX } from "./serviceHelpers";

const endpoint = {
    blogUrl: `${API_HOST_PREFIX}/api/blogs`
}

const addBlog = (payload) => {
    const config = {
      method: "POST",
      url: `${endpoint.blogUrl}`,
      data: payload,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config);
};

const updateBlog = (payload) => {
    const config = {
      method: "PUT",
      url: `${endpoint.blogUrl}`,
      data: payload,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config); 
};

const deleteBlog = (blogId) => {
    const config = {
      method: "DELETE",
      url: `${endpoint.blogUrl}${blogId}`,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    
    return axios(config).then(() => {
        return blogId;
     });  
};

const getBlog = (blogId) => {
    const config = {
      method: "GET",
      url: `${endpoint.blogUrl}${blogId}`,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config);
};

const getAllBlogs = (pageIndex, pageSize) => {
    const config = {
      method: "GET",
      url: `${endpoint.blogUrl}?pageIndex=${pageIndex}&pageSize=${pageSize}`,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config);
};

const getBlogAuthor = (authorId, pageIndex, pageSize) => {
    const config = {
      method: "GET",
      url: `${endpoint.blogUrl}authorId=${authorId}?pageIndex=${pageIndex}&pageSize=${pageSize}`,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config);
};

const getBlogSubject = (query, pageIndex, pageSize) => {
    const config = {
      method: "GET",
      url: `${endpoint.blogUrl}/search?pageIndex=${pageIndex}&pageSize=${pageSize}&Query=${query}`,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config);
  
};

const BlogService = { addBlog, updateBlog, deleteBlog, getBlog, getAllBlogs, getBlogAuthor, getBlogSubject }

export default BlogService;
