<template>
  <div id="about">
    <navigation-bar />

    <div>
      
      <!--<b-row v-for="item in item_list">
    <b-col>
      {{item.itemNumber}}
    </b-col>
      </b-row>-->
    </div>

    <div class="flex-nav1">
      <b-breadcrumb :items="items"></b-breadcrumb>
    </div>
<h4>Displaying Product Items : <b>{{searchString}}</b></h4>
    <div class="flex-contain">
      
      <div class="flex-filter">
        <ul class="filter-list" style="text-align: left">
          <p>Color</p>
          <hr />
          <li>
            <div>
             <a href="/about"> <button class="button"  variant="outline-danger" info="Green"  v-on:click="putData('green')" ></button></a>
            </div>
            <div>
              <a href="/about"> <button class="button button2"  variant="outline-danger" info="Blue"  v-on:click="putData('blue')"></button> </a>
            </div>
            <div>
              <a href="/about"> <button class="button button3"  variant="outline-danger" info="Red" v-on:click="putData('red')"></button> </a>
            </div>
            <div>
               <a href="/about"><button class="button button4"  variant="outline-danger" info="grey" v-on:click="putData('grey')"></button></a>
            </div>
            <div>
               <a href="/about"><button class="button button5"  variant="outline-danger" info="black" v-on:click="putData('black')"></button></a>
            </div>
            <div>
              <a href="/about"> <button class="button button6"  variant="outline-danger" info="yellow" v-on:click="putData('yellow')"></button></a>
            </div>
            <div>
              <a href="/about"> <button class="button button7"  variant="outline-danger" info="darkgreen" v-on:click="putData('dark green')"></button></a>
            </div>
            <div>
                <a href="/about"><button class="button button8"  variant="outline-danger" info="white" v-on:click="putData('white')"></button></a>
            </div>
            <div>
              <a href="/about"> <button class="button button9"  variant="outline-danger" info="winered" v-on:click="putData('wine red')"></button></a>
            </div>
          </li>
          <br />

          <p>Size</p>
          <hr />
          <li>
            <div>
                <a href="/about"> <button class="button button10"  variant="outline-danger" info="small" v-on:click="putData('small')">Small</button></a>

            </div>
            <div>
               <a href="/about"> <button class="button button11"  variant="outline-danger" info="medium" v-on:click="putData('medium')">Medium</button></a>

            </div>
            <div>
               <a href="/about"> <button class="button button12"  variant="outline-danger" info="large" v-on:click="putData('large')">Large</button></a>

            </div>
            <div>
                <a href="/about"> <button class="button button13"  variant="outline-danger" info="XL" v-on:click="putData('XL')">XL</button></a>

            </div>
            <div>
            <a href="/about"> <button class="button button14"  variant="outline-danger" info="XXL" v-on:click="putData('XXL')">XXL</button></a>

            </div>
            <div>
             <a href="/about"> <button class="button button15"  variant="outline-danger" info="38Short" v-on:click="putData('38 Short')">38 Short</button></a>

            </div>
            <div>
  <a href="/about"> <button class="button button16"  variant="outline-danger" info="38Long" v-on:click="putData('38 Long')">38 Long</button></a>

            </div>
            <div>
              <a href="/about"> <button class="button button17"  variant="outline-danger" info="40Short" v-on:click="putData('40 Short')">40 Short</button></a>

            </div>
            <div>
              <a href="/about"> <button class="button button18"  variant="outline-danger" info="40Long" v-on:click="putData('40 Long')">40 Long</button></a>

            </div>
            <div>
          <a href="/about"> <button class="button button19"  variant="outline-danger" info="50" v-on:click="putData('50')">50</button></a>

            </div>
          </li>
        </ul>
      </div>

      <div class="flex-img">
        <ul class="img-load" >
          <b-row v-for="chunk in groupedArticles">
            <b-row v-for="product in chunk">
              <div class="flex-container" id="zoom">
                
                  <b-col >
                    <img
                      class="img-responsive"
                     
                      :src="require('@/assets/'+product.itemNumber+'.jpg')"
                      alt="Couldn't load"
                      width="200"
                      height="250"
                    />
                  </b-col>
                
                <!--<div><b-col ><img class="img-responsive" :src="'http://localhost:5000/getImage/'+product" alt="Couldn't load" width="200" height="250"></b-col></div> -->

                
                  <div>Available: {{product.commodityInStock}}</div>

                  <div>Size: {{product.commoditySize}}</div>
                  <div>Color: {{product.commodityColour}}</div>
                  <div class="flex-container-item-desc">
    
                  <div>MRP: {{product.commodityPrice}}</div>
                  <div>Off: {{product.commodityDiscount}}</div>
                  </div>
                
                
                  <button class="btn btn-large btn-sucess">
                    <img src="@/assets/cart.png" />
                  </button>
                
              </div>
            </b-row>
          </b-row>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import NavigationBar from "@/components/NavigatonBar.vue";
import axios from "axios";
const options = {
  headers: {'Access-Control-Allow-Origin': '*'}
};
export default {
  
  mounted: function() {
        this.askLoad() // Calls the method before page loads
    },
    methods: {
        // Declares the method
        askLoad: function(){
     
         
        },

         putData:function(color) {
      console.log("hi")
     axios.get(process.env.VUE_APP_URL.concat("/api/uiSearchPOST/").concat(color),options).then(response => {
      // JSON responses are automatically parsed.
      this.commodities = response.data
      
        
       
    });
    //setTimeout( () => this.$router.push({ href: '/about'}), 10000);
     this.$forceUpdate();
      //  this.$router.push('about') ;
    }
    },
  components: {
    NavigationBar
  },
  name: "about",
  data() {
    
    return {
      Bike:null,
     
      items: [
        {
          text: "Home",
          href: "/"
        },
        {
          text: "Clothing",
          active: true
        }
      ],
      posts: [
        1001,
        1002,
        1003,
        1004,
        1005,
        1006,
        1007,
        1008,
        2001,
        2002,
        2003,
        2004,
        2005,
        2006,
        2007,
        2008,
        3001,
        3002,
        3003,
        3004,
        3005,
        3006,
        3007,
        3008,
        4001,
        4002,
        4003,
        4004,
        4005,
        4006,
        4007,
        4008,
        5001,
        5002,
        5003,
        5004,
        5005,
        5006,
        5007,
        5008,
        5009,
        5010,
        5011,
        5012,
        5013,
        5014,
        5015,
        6001,
        6002,
        7001,
        7002,
        7003,
        7004,
        7005,
        7006,
        7007,
        7008,
        7009,
        7010,
        7011,
        7012,
        7013,
        7014,
        7015,
        8001,
        8002,
        8003,
        8004,
        8005,
        8006,
        8007,
        8008,
        8009,
        8010,
        8011,
        8012,
        8013,
        8014,
        8015,
        9001,
        9002,
        9003,
        9004,
        9005,
        9006,
        9007,
        9008,
        9009,
        9010,
        9011,
        9012,
        9013,
        9014,
        9015
      ],
      errors: [],
      item_list: [],
      searchString: []
    };
  },
  computed: {

    groupedArticles: function() {
      
      console.log(this.item_list[0]);
      return _.chunk(this.item_list, 5);
      // returns a nested array:
      // [[article, article, article], [article, article, article], ...]
    }
  },
  created() {
   //setTimeout( () => this.$router.push({ path: '/abour'}), 8000);

    console.log("hi")
    const options = {
      headers: { "Access-Control-Allow-Origin": "*" }
    };
    axios
      .get(process.env.VUE_APP_URL.concat("/api/uiSearchGET/"), options)
      .then(response => {
        this.searchString = response.data.item;
        return axios.get(
          process.env.VUE_APP_URL.concat("/api/commodities/itemsDynamicSearch/").concat(
            response.data.item
          )
        ); // using response.data
      })
      .then(response => {
        this.item_list = response.data;
        console.log("Response", response.data);
       // this.$router.push('about')
       
      
      });
      
      
    // axios.get("http://localhost:9000/api/uiSearchGET/",options).then(response => {
    //     // JSON responses are automatically parsed.
    //    return  this.searchString = response.data.item
    //   }),

    //   console.log("http://localhost:9000/api/commodities/itemsDynamicSearch/".concat(this.searchString));
    //   axios.get("http://localhost:9000/api/commodities/itemsDynamicSearch/".concat(this.searchString),options).then(response => {
    //     // JSON responses are automatically parsed.
    //     this.item_list = response.data
    //   })
  }
};
</script>
<!-- styling for the component -->

<style>
#about {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
* {
  margin: 0 !important;
}
.img-responsive {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px;
}
.btn {
  padding: 0px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
.flex-container {
  display: flex;
  flex-direction: column;
  margin-bottom: 20px !important;
}
.flex-nav1 {
  margin: 5px 0px 10px 0px !important;
  padding: 10px 20px 10px 20px;
}
.flex-container-row {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  margin: 2px !important;
  padding: 0px 20px 0px 20px;
}
.flex-container-item-desc {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;
}
.img-load {
  margin-right: -15px !important;
  margin-left: -15px !important;
}
.flex-contain {
  display: flex;
  flex-direction: row;

  flex-wrap: wrap;
}
.flex-filter {
  display: flex;
  flex-direction: column;

  flex-wrap: wrap;
  margin-left: 40px !important;
}
.flex-img {
  display: flex;
  flex-direction: row;

  flex-wrap: wrap;
  margin-left: 300px !important;
  margin-right: 40px !important;
}
.filter-list {
  list-style-type: none;
  padding-left: 0px;
}

#zoom {
  transition: transform 0.2s; /* Animation */

  margin: 0 auto;
}

#zoom:hover {
  background-color: rgb(148, 155, 148);
  transform: scale(
    1.01
  ); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}
#about{background-color:#cfb7b73f;}

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px 40px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 8px;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */
.button6 {background-color: #ffff66;} /*yello*/
.button7 {background-color:  #006622;} /* Dark Green*/
.button8 {background-color: #f2f2f2; color: black;} /*White*/
.button9 {background-color: #b11226; } /*Wine Red*/


.button10 {background-color: #e6e6e6;padding: 10px 10px !important;color: black; border: 1px; border-style: solid;} /* Blue */
.button11 {background-color:  #e6e6e6;padding: 10px 10px !important;color: black; border: 1px; border-style: solid;} /* Red */ 
.button12 {background-color: #e6e6e6;padding: 10px 28px !important;color: black; border: 1px; border-style: solid;} /* Gray */ 
.button13 {background-color:  #e6e6e6; padding: 10px 48px !important;color: black; border: 1px; border-style: solid;} /* Black */
.button14 {background-color:  #e6e6e6;padding: 10px 50px !important;color: black;border: 1px; border-style: solid; } /* Blue */
.button15 {background-color:  #e6e6e6; padding: 10px 10px !important;color: black; border: 1px; border-style: solid;} /* Red */ 
.button16 {background-color:  #e6e6e6; padding:  10px 10px !important;color: black; border: 1px; border-style: solid;} /* Gray */ 
.button17 {background-color:  #e6e6e6;padding:  10px 20px !important;color: black;border: 1px; border-style: solid;} /* Black */
.button18 {background-color:  #e6e6e6;padding:10px 20px !important; color: black;border: 1px; border-style: solid;} /* Gray */ 
.button19 {background-color:  #e6e6e6; padding: 10px 53px !important;color: black; border: 1px; border-style: solid;} /* Black */





h4{
  padding: 10px 10px 10px 10px;
}

</style>