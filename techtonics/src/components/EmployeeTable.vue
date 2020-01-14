<template>
<footer>
  <div id="employee-table">

<div><h4 style="color:blue">Team Enceladus</h4></div>
<div class="flex-container" >
  
  
  <div class="card">
    <a href="https://w3.ibm.com/bluepages/profile.html?uid=597867744">
     
    <div class="flex-container-name">
       <img src="@/assets/swarajit.png" alt="Avatar">
      <div>Swarajit Roy</div> 
       <!--<div>swararoy@in.ibm.com</div> -->
    </div>
    </a>
  </div>

  <div class="card">
    <a href="https://w3.ibm.com/bluepages/profile.html?uid=597867744">
    <div class="flex-container-name">
      <img src="@/assets/susmita.png" alt="Avatar">
  <div>Susmita Gangopadhyay</div> 
  <!--<div>susgango@in.ibm.com</div> -->
  </div>
  </a>
  </div>

    <div class="card">
      <a href="https://w3.ibm.com/bluepages/profile.html?uid=597867744">
    <div class="flex-container-name">
      <img src="@/assets/olivi.png" alt="Avatar">
  <div>Olivi R Chowdhury</div> 
  <!--<div>olivir04@in.ibm.com</div>-->
  </div>
  </a>
  </div>

    <div class="card">
      <a href="https://w3.ibm.com/bluepages/profile.html?uid=597867744">
    <div class="flex-container-name">
      
      <img src="@/assets/abhidip.png" alt="Avatar">
  <div>Abhidip Ray</div> 
  <!--<div>abhidray@in.ibm.com</div>-->
  </div>
  </a>
  </div>


  <div class="card">
    <a href="https://w3.ibm.com/bluepages/profile.html?uid=597867744">
    <div class="flex-container-name">
       <img src="@/assets/abinash.png" alt="Avatar">
  <div>Abinash K Dalai</div> 
  <!--<div>abidalai@in.ibm.com</div>-->
  </div>
  </a>
  </div>


</div>
    <!--
    <b-row>
      <b-col>
       
  <img src="@/assets/abinash.png" alt="Avatar" width="100" height="100">


      </b-col>
       <b-col>
       
  <img src="@/assets/swarajit.png" alt="Avatar" width="100" height="100">


      </b-col>
       <b-col >
       
  <img src="@/assets/swarajit.png" alt="Avatar" width="100" height="100">


      </b-col>
      
      <b-col>
<div >
  <img src="@/assets/swarajit.png" alt="Avatar" width="100" height="100">

</div>

      </b-col>
      
      <b-col>
<div >
  <img src="@/assets/swarajit.png" alt="Avatar" width="100" height="100">

</div>

      </b-col>
</b-row> -->
 <!-- <table>
      <thead>
        <tr>
          <th>Enceladusian name</th>
          <th>Enceladusian's email</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td> Swarajit</td>
          <td>XXXXX</td>
        </tr>
        <tr>
          <td>Susmita</td>
          <td>XXXXXX</td>
        </tr>
        <tr>
          <td>Olivi</td>
          <td>XXXXX</td>
        </tr>
		<tr>
          <td>Abhidip</td>
          <td>XXXXX</td>
        </tr>
		<tr>
          <td>Abinash</td>
          <td>XXXXX</td>
        </tr>
      </tbody>
    </table> -->

 
  </div>
  </footer>
</template>

<script>
  export default {
  
  name: 'Markdown',
  preserveWhitespace: false,
    name: 'employee-table',
  }

</script>

<style scoped>
table, th, td {
  border: 1px solid black;
}


.flex-container {
  display: flex;
  flex-direction: row;
  justify-content: center;
}
img{
   display: none;
}
td.one:hover img{ 
   display: block;
}

div.flex-container-name:hover img{ 
  max-width: 100%;
  max-height: 100%;
   display: block;
   
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.flex-container-name {
  padding: 2px 2px;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}
</style>