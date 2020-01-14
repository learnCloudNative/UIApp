<template>

  <div id="Lagguage">
     <navigation-bar/>
<categorie-nav-bar/>
 <img src="@/assets/coming_soon.gif" class="bgimg">
</div>

 


</template>

<script>
import NavigationBar from '@/components/NavigatonBar.vue';
import CategorieNavBar from '@/components/CategorieNavBar.vue';
import axios from 'axios';
export default {
   components: {
      NavigationBar,CategorieNavBar
    },
  name: 'lagguage-page',
  data() {
      
    return {
      items: [
          {
            text: 'Home',
            href: '/'
          },
          {
            text: 'Clothing',
            active: true
          }
        ],
      lagguage_arr: [],
      posts:[],
      errors: []
      
    }
}
,
created() {
  const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
 axios.get(process.env.VUE_APP_URL.concat("/api/hello"),options).then(response => {
      // JSON responses are automatically parsed.
      this.posts = response.data
    }),
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53120000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.lagguage_arr = response.data
    })
},
computed:{
  groupedLagguage:function() {
          console.log(this.lagguage_arr[0]);
    return  _.chunk(this.lagguage_arr,14)
    // returns a nested array: 
    // [[article, article, article], [article, article, article], ...]
  }
}
}
</script>
<!-- styling for the component -->

<style>
#clothing {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
* {margin: 0 !important;}

.bgimg {
  /* Background image */
  /* Full-screen */
  height: 630px;
  width: 60%;
  padding: 0px;
}
</style>