<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.headerDude{
  min-height: 100vh;
  min-width: 100%;
  background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/jpg.jpg);
  background-position: center;
  background-size: cover;
  position: relative;
}
nav{
  display: flex;
  padding: 2% 6%;
  justify-content: space-between;
  align-items: center;
}
nav img{
    margin-top: -60px;
    margin-left: 480px;
    width: 350px;
    left: 0px;
  }


@media (max-width: 700px) {
  nav img{
    margin-top: -50px;
    position: absolute;
    margin-left: 16%;
    width: 250px;
  }
}




.text-box{
  width: 90%;
  color: #fff;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  text-align: center;
}
.text-box h1{
  font-size: 80px;

}
.text-box p{
  margin: 10px 0 40px;
  font-size: 14px;
  color: #fff;
}
.hero-btn{
  display: inline-block;
  text-decoration: none;
  color: #fff;
  border: 1px solid #fff;
  padding: 12px 34px;
  font-size: 13px;
  background: transparent;
  position: relative;
  cursor: pointer;
}
.hero-btn:hover{
  border: 1px solid #f44336;
  background: #f44336;
  transition: 0.5s;
}
nav .fas{
  display: none;
}
nav .fa{
  display: none;
}
@media(max-width: 700px) {
  .text-box h1{
    font-size: 20px;
  }

  
  nav .fas{
    display: block;
    color: #fff;
    margin: 300px;
    font-size: 22px;
    cursor: pointer;
    position: absolute;
      }
nav .fa{
        display: block;
        color: #fff;
        margin: 5px;
        font-size: 22px;
        cursor: pointer;
        position: relative;
          }


}
/* -----course--- */
.course{
  width: 80%;
  margin: auto;
  text-align: center;
  padding-top: 100px;

}
h1{
  font-size: 36px;
  font-weight: 600;

}
p{
  color: #777;
  font-size: 14px;
  font-weight: 300;
  line-height: 22px;
  padding: 10px;
}
.row
{
  margin-top: 5%;
  display: flex;
  justify-content: space-between;

}
.course-col{
  flex-basis: 31%;
  background: #fff3f3;
  border-radius: 10px;
  margin-bottom: 5%;
  padding: 20px 12px;
  box-sizing: border-box;
}
h3{
  text-align: center;
  font-weight: 600;
  margin: 10px 0;
}
.course-col:hover{
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.2);
  transition: 0.5s;
}
@media (max-width: 700px) {
  .row{
    flex-direction: column;
  }
}

/* CAMPUS */
.campus{
  width: 80%;
  margin: auto;
  text-align: center;
  padding: 50px;

}
.campus-col{

  flex-basis: 52%;
  border-radius: 5px;
  margin-bottom: 30px;
  position: relative;
  overflow: hidden;
}
.campus-col img{
  width: 80%;
  display: block;

}
.layer{
  background: transparent;
  height: 100%;
  width: 80%;
  position: absolute;
  top: 0;
  left: 0;
  transition: 0.5s;
}
.layer:hover{
  background: rgba(226, 0, 0, 0.5);
}
.layer h3{
  width: 100%;
  font-weight: 500;
  color: #fff;
  font-size: 26px;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  position: absolute;
  transition: 0.2s;
}
.layer:hover h3{
  bottom: 49%;
  opacity: 1;

}


/* facilities */
.facilities{
  width: 80%;
  margin: auto;
  text-align: center;
  padding-top: 100px;

}
.facilities-col{
  flex-basis: 30%;
  border-radius: 10px;
  margin-bottom: 5%;
  text-align: left;
}
.facilities-col img{
  width: 100%;
  border-radius: 150px;

}
.facilities-col p{
  padding: 0;
}
.facilities-col h3{
  margin-top: 16px;
  margin-bottom: 15px;
  text-align:left;

}

/* testimonials */
.testimonials{
  width: 30%;
  margin: auto;
  padding-top: 100px;
  text-align: center;
}
.testimonials-col{
  flex-basis: 30%;
  border-radius: 10px;
  margin-bottom: 5%;
  text-align: left;
  background: #fff3f3;
  padding: 25px;
  cursor: pointer;
  display: flex;
}
.testimonials-col img{
  height: 40px;
  margin-left: 5px;
  margin-right: 30px;
  border-radius:50%;

}
.testimonials-col p{
  padding: 0;

}
.testimonials-col h3{
  margin-top: 15px;
  font-size: 20px;
  text-align: left;
}
.testimonials-col .fas{
  color: #000;
  margin: 0px;
  padding: 0 -10px;

}

@media  (max-width: 700px){
  .testimonials-col h3{
    font-size:14px;
    margin-top: 15px;
    text-align: right;
  }
}

/* call to action */
.cta{
  margin: 100px auto;
  width: 80%;
  background-image: linear-gradient(rgba(0, 0, 0, 0.7),rgba(0, 0, 0, 0.7)),url(images/Label-brochure-1.jpg);
  background-position: left;
  background-size:cover;
  border-radius: 10px;
  text-align: center;
  padding: 10px 0px;
}
.cta h1{
  font-size: 30px;
  color: #fff;
  margin-bottom: 40px;
  padding: 0;
}
@media (max-width: 700px){
  .cta h1{
    margin-top: 80px;
    font-size: 20px;
}
}

</style>

<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<div><%@include file="header.html" %></div>
<div>


    <section class="headerDude">
      <nav>
        <a href="#"><img src="images/pro.png"></a>
  
      </nav>
<div class="text-box">
  <h1>Student Management System</h1>
<p>Welcome to our website, here you manage data of your Students. <br>So explore the world with our vision.</p>
<a href="#" class="hero-btn">Login</a>
</div>
</section>


<!-- campus -->
<section class="campus">
  <h1>What we can do in this WEBSITE</h1>
  <p>We can perform some basic operation with the help of this website as given below.</p>
<div class="row">

  <div class="campus-col">
    <img src="images/adding.png">
    <div class="layer">
      <h3>Add Student</h3>
    </div>
  </div>

  <div class="campus-col">
    <img src="images/viewing.png">
    <div class="layer">
      <h3>View Student</h3>
    </div>
  </div>

  <div class="campus-col">
    <img src="images/deleting.png">
    <div class="layer">
      <h3>Delete Student</h3>
    </div>
  </div>

  <div class="campus-col">
    <img src="images/updating.png">
    <div class="layer">
      <h3>Update Student</h3>
    </div>
  </div>

</div>
</section>

<!-- testimonials -->
<section class="testimonials">
  <h1>Our Testimonials</h1>
  <p>You can surely use this website as it is secure and free!</p>
     

       <div class="testimonials-col">
         <img src="images/am.png">

         <div>
           <p>Learn as much as you can and work towards being the best. 

</p> <h3>~ Aman Chawra</h3>
<div class="icon">


<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
</div>

         </div>
      

      
</section>

<!-- -call to action- -->
<section class="cta">
  <h1>Manage your Student data <br> anywhere from the world</h1>
  <a href="./about_us.jsp"class="hero-btn">About Us</a>
</section>
</div>




<div><%@include file="footer_admin.html" %></div>

</body>
</html>