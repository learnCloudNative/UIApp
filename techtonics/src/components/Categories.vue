
<template>

<b-navbar class="forcol" toggleable="lg" type="dark" variant="dark">


  
    <b-navbar-brand href="#"> <b-button v-b-toggle="'collapse-2'" class="m-1">Our Product Categories</b-button> </b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    


  <b-collapse id="collapse-2">
    <b-card> <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav v-for ="post of posts.slice(0, 5)"> 
          <b-row>
          <b-col>

          <b-button variant="info">{{post.familyName}}
 

              
              </b-button> 
          </b-col>

          </b-row>

<!--<div>
<div v-for ="post of posts.slice(0, 5)">
  <router-link  :to="post.familyID">{{post.familyName}}</router-link>
  </div>

  </div> -->

  </b-navbar-nav>
    </b-collapse></b-card>
  </b-collapse> 

   
  </b-navbar>

</template>


<script>
import axios from 'axios';
import FamilyList from '@/components/FamilyList.vue'
 export default {
    
    components: {
      FamilyList
    },
    data() {
      return {
        posts: [],
        commodities: [],
        selected: null
        
        
      }
    },
  
created() {
  const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
  axios.get(process.env.VUE_APP_URL.concat("/api/hello"),options).then(response => {
      // JSON responses are automatically parsed.
      this.posts = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities"),options).then(response => {
      // JSON responses are automatically parsed.
      this.commodities = response.data
    })
console.log("ZZZZZZZZZZZZZZZZ");
console.log(this.posts.slice(0).familyName);


}
  }
</script>

<style scoped>

</style>