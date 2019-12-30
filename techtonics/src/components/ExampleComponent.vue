<template v-slot:sidebar>
 <table style="width:auto">
 <tr>
	<th>Family ID</th>
	<th>Family Name</th>
<tr>
  <tr v-for="post of posts.slice(0, 7)">
    <td>{{post.familyID}}</td>
    <td>{{post.familyName}}</strong></td>
  </tr>
</table> 
<!---
  <ul>
	<li v-for="post of posts.slice(2, 5)">
      <p><strong>id:</strong>  {{post.id}} <strong>employee_name:{{post.employee_name}}</strong></p>
      <p></p>
    </li>
  </ul>
---->
</template>

<script>
import axios from 'axios';

export default {
 name: 'example-component',
 
  name: 'Markdown',
  preserveWhitespace: false,

  data() {
    return {
      posts: [],
      errors: []
    }
  },

  // Fetches posts when the component is created.
  created() {
   const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
console.log("Hi");
  //axios.get('http://dummy.restapiexample.com/api/v1/employees',options)
  //axios.get('http://applicationsearchroute-enceladus.inmbzp8022.in.dst.ibm.com/api/hello/',options)
    axios.get(process.env.VUE_APP_URL.concat("/api/hello"),options).then(response => {
     
      // JSON responses are automatically parsed.
      this.posts = response.data
    })
   // .catch(e => {
    //  this.errors.push(e)
  //  })
	
	
	 // axios.get('http://dummy.restapiexample.com/api/v1/employees////',options).then(response => response.data)
  //.then(json => console.log(json))
  
console.log(this.posts);
    // async / await version (created() becomes async created())
    //
    // try {
    //   const response = await axios.get(`http://jsonplaceholder.typicode.com/posts`)
    //   this.posts = response.data
    // } catch (e) {
    //   this.errors.push(e)
    // }
  }
}
</script>

<style scoped>
table, th, td {
  border: 1px solid black;
}
</style>