<template>
  <b-nav-item-dropdown text="Categories" right>
          <b-dropdown-item v-for ="post of posts.slice(0, 6)" href="#" overflow: scroll> {{post.familyName}} 
            <hr><br>
          </b-dropdown-item>
	
  </b-nav-item-dropdown>
</template>
<!---
  <ul>
	<li v-for="post of posts.slice(2, 5)">
      <p><strong>id:</strong>  {{post.id}} <strong>employee_name:{{post.employee_name}}</strong></p>
      <p></p>
    </li>
  </ul>
---->

<script>
import axios from 'axios';

export default {
 name: 'family-list',
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
//console.log("Hi");
  //axios.get('http://dummy.restapiexample.com/api/v1/employees',options)
  //axios.get('http://applicationsearchroute-enceladus.inmbzp8022.in.dst.ibm.com/api/hello/',options)
    axios.get('http://localhost:8083/api/hello',options).then(response => {
      // JSON responses are automatically parsed.
      this.posts = response.data
    })
    //console.log(this.posts.slice(0).familyName);
   // .catch(e => {
    //  this.errors.push(e)
  //  })
	
	
	 // axios.get('http://dummy.restapiexample.com/api/v1/employees////',options).then(response => response.data)
  //.then(json => console.log(json))
  
//console.log(this.posts);
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