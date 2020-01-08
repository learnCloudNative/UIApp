<template>
  <b-navbar class="forcol" toggleable="lg" type="dark" variant="dark">
    <b-navbar-brand href="#">Container Crush:Team Enceladus</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
        <!--<b-nav-item href="#">Link</b-nav-item> -->
	<!--	<b-nav-item-dropdown text="Team Members" right>
          <b-dropdown-item href="#">Swarajit</b-dropdown-item>
		  <hr>
      
          <b-dropdown-item href="#">Susmita</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Oilivi</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Abhidip</b-dropdown-item>
		  <hr>
		  <b-dropdown-item href="#">Abinash</b-dropdown-item>
	
        </b-nav-item-dropdown>

        <b-nav-item-dropdown text="Categories" right>
          <b-dropdown-item href="#">Swarajit</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Susmita</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Oilivi</b-dropdown-item>
		  <hr>
          <b-dropdown-item href="#">Abhidip</b-dropdown-item>
		  <hr>
		  <b-dropdown-item href="#">Abinash</b-dropdown-item> 
	
        </b-nav-item-dropdown>-->
      <family-list/>
     

      <b-form-select  v-model="selected" >
        <option :value="null">Please select a Category</option>
        <option v-for="post in posts.slice(0,5)"  href="/{{post.familyName}}" >
    {{ post.familyName }}
  </option>
      </b-form-select>

      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-nav-form>
          <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
          <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
        </b-nav-form>

        <b-nav-item-dropdown text="Lang" right>
          <b-dropdown-item href="#">EN</b-dropdown-item>
          <b-dropdown-item href="#">ES</b-dropdown-item>
          <b-dropdown-item href="#">RU</b-dropdown-item>
          <b-dropdown-item href="#">FA</b-dropdown-item>
        </b-nav-item-dropdown>

        <b-nav-item-dropdown right>
          <!-- Using 'button-content' slot -->
          <template v-slot:button-content>
            <em>User</em>
          </template>
          <b-dropdown-item href="#">Profile</b-dropdown-item>
          <b-dropdown-item href="#">Sign Out</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>
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
console.log("HI");
console.log(this.posts.slice(0).familyName);

}
  }
</script>

<style scoped>

</style>