import axios from "axios";
import { API_HOST_PREFIX, onGlobalError, onGlobalSuccess } from "./serviceHelpers";

const endpoint = {
    lookUpUrl: `${API_HOST_PREFIX}/api/lookups` //must have the 'api' for the lookup to work in this stage of development
}

const LookUp = (payload) => {
    const config = {
      method: "POST",
      url: `${endpoint.lookUpUrl}`,
      data: payload,
      withCredentials: true,
      crossdomain: true,
      headers: { "Content-Type": "application/json"}
    };
    return axios(config).then(onGlobalSuccess).catch(onGlobalError);
};

const lookUpService = {LookUp}

export default lookUpService;
