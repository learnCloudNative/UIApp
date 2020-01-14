<template>

  <div id="Footware">
    <navigation-bar/>
<categorie-nav-bar/>
 <img src="@/assets/coming_soon_2.gif" class="bgimg">
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
  name: 'footware-page',
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
      footware_arr: [],
      posts: [],
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
    axios.get(process.env.VUE_APP_URL.concat("/api/commodities/commoditybyFamilyID/53110000"),options).then(response => {
      // JSON responses are automatically parsed.
      this.footware_arr = response.data
    })
},
computed:{
  groupedFootware:function() {
          console.log(this.footware_arr[0]);
    return  _.chunk(this.footware_arr,14)
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
.img-responsive {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px;
}
.btn{
  padding: 0px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
.flex-container {
  display: flex;
  flex-direction: row;
 justify-content: space-between;
 margin: 5px 0px 10px 0px!important;
   padding: 10px 20px 10px 20px;
 
}
.flex-nav1
{
 
   margin: 5px 0px 10px 0px!important;
   padding: 10px 20px 10px 20px;
}
.flex-container-row {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
   margin: 2px !important;
  padding: 0px 20px 0px 20px;
}
.img-load{
   margin-right: -15px !important;
   margin-left: -15px !important;
}
.flex-contain{
   display: flex;
  flex-direction: row;

 
  flex-wrap: wrap;
  

}
.flex-filter
{
   display: flex;
  flex-direction: column;
 
  flex-wrap: wrap;
  margin-left: 40px !important;
  



}
.flex-img{
   display: flex;
  flex-direction: row;
 
  flex-wrap: wrap;
  margin-left: 200px !important;
 margin-right: 40px !important;


}
.filter-list{
  list-style-type: none;
  padding-left: 0;
}
.bgimg {
  /* Background image */
  /* Full-screen */
  height: 630px;
  width: 60%;
  padding: 0px;
}
</style>