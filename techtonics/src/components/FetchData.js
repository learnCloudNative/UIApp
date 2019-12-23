import axios from 'axios'
export default{
getResult(){
return axios.get('http://applicationsearchroute-enceladus.inmbzp8022.in.dst.ibm.com/api/hello').then(response => {return response.data})
}
