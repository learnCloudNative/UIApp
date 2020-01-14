<template>

  <div >

 <img src="@/assets/coming_soon_2.gif" class="bgimg">

</div>


</template>

<script>
import CategorieNavBar from '@/components/CategorieNavBar.vue'
import NavigationBar from '@/components/NavigatonBar.vue';
export default {
   components: {
      NavigationBar,CategorieNavBar
    },
  name: 'coming-soon',
  
}
</script>
<!-- styling for the component -->

<style>
.bgimg {
  /* Background image */
  /* Full-screen */
  height: 100%;
  /* Center the background image */
  background-position: center;
  /* Scale and zoom in the image */
  background-size: cover;
  /* Add position: relative to enable absolutely positioned elements inside the image (place text) */
  position: relative;
  /* Add a white text color to all elements inside the .bgimg container */
  color: white;
  /* Add a font */
  font-family: "Courier New", Courier, monospace;
  /* Set the font-size to 25 pixels */
  font-size: 25px;
}
</style>