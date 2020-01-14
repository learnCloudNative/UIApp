<template>
   <div>
 <b-carousel
      id="carousel-1"
      v-model="slide"
      :interval="4000"
      controls
      indicators
      no-animation

    >
    <b-carousel-slide>
        <template v-slot:img>
          <img
            class=" img-fluid"
            
            src="@/assets/fashion_cnetral.jpg"
            alt="image slot"
          >
        </template>
      </b-carousel-slide>
  <b-carousel-slide>
        <template v-slot:img>
          <img
            class="img-fluid"
            
            src="@/assets/clearence_sal.jpg"
            alt="image slot"
          >
        </template>
      </b-carousel-slide>
  </b-carousel>
</div>
  

</template>
<script>
export default {
  name: "SliderTempCloth",
  data() {
    return {
    
    };
  },


};
</script>

<style scoped>
img {
  height:400px;
  width:95%
}


</style>