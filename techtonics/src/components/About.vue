<template>
  <div id="about">
    <navigation-bar />

    <div>
      <h2>You have searched for:{{searchString}}</h2>
      <!--<b-row v-for="item in item_list">
    <b-col>
      {{item.itemNumber}}
    </b-col>
      </b-row>-->
    </div>

    <div class="flex-nav1">
      <b-breadcrumb :items="items"></b-breadcrumb>
    </div>

    <div class="flex-contain">
      <div class="flex-filter">
        <ul class="filter-list" style="text-align: left">
          <p>Color</p>
          <hr />
          <li>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Black</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Green</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Yellow</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Blue</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Gray</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>White</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Red</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Wine Red</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Dark Green</label>
            </div>
          </li>
          <br />

          <p>Size</p>
          <hr />
          <li>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Medium</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Large</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>Small</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>XL</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>XXLarge</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>38 Short</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>40 Regular</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>40 Long</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>50 Long</label>
            </div>
            <div>
              <input type="checkbox" name="vehicle1" value="Bike" />
              <label>38 Long</label>
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

export default {
  components: {
    NavigationBar
  },
  name: "about",
  data() {
    return {
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
    const options = {
      headers: { "Access-Control-Allow-Origin": "*" }
    };
    axios
      .get("http://localhost:9000/api/uiSearchGET/", options)
      .then(response => {
        this.searchString = response.data.item;
        return axios.get(
          "http://localhost:9000/api/commodities/itemsDynamicSearch/".concat(
            response.data.item
          )
        ); // using response.data
      })
      .then(response => {
        this.item_list = response.data;
        console.log("Response", response.data);
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
  padding-left: 0;
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
</style>