<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>MediPlus+</title>
</head>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="MediPlusHome.css">

<body>

<div class=Homecontainer>
<div class="topnav">
  <a class="active" href="#MediPlusHome">Home</a>
  <a href="#About">About Us</a>
  <a href="Doctors.jsp">Doctors</a>
  <a href="#Departments">Departments</a>
  <a href="#Contact">Contact Us</a>
  <a href="StudSignUp.jsp">Careers</a>
  <a href="DoctorLogin.jsp">Doctor's Login</a>
  <a href="Admin.jsp">Admin's Login</a>
</div>


<section id="MediPlusHome">
<div class="BookApt">
 <a class="btn" href="PatientLogin.jsp">Book Appointment</a>
 </div>

<div class="MediPlus">

    <h1>MediPlus+ Care</h1>
   <p>We Care For Health Every Moment!!</p>
   </div>
   
</section>


<hr>
<section id="Departments">

<div class="dtext">
<h2><center>Departments</center></h2>

</div>
</section>
<div class="slideshow-container">
<div class="mySlides fade">
  <div class="numbertext">1 / 7</div>
  <img src="Images/Neurology.png" style="width:100%">
  <div class="text">Department Of Neurology</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 7</div>
  <img src="Images/Gynaecology1.jpg" style="width:100%">
  <div class="text">Department Of Gynaecology</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 7</div>
  <img src="Images/Cardiology.jpg" style="width:100%">
  <div class="text">Department Of Cardiology</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 7</div>
  <img src="Images/Ophthalmology.jpg" style="width:100%">
  <div class="text">Department Of Ophthalmology</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 7</div>
  <img src="Images/Oncology.jpg" style="width:100%">
  <div class="text">Department Of Oncology</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 7</div>
  <img src="Images/Nephrology.png" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">7 / 7</div>
  <img src="Images/Surgery.png" style="width:100%">

</div>
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
  <span class="dot" onclick="currentSlide(5)"></span> 
  <span class="dot" onclick="currentSlide(6)"></span> 
  <span class="dot" onclick="currentSlide(7)"></span> 

</div>

<script>

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>



</script>


<hr>
<section id="Contact"></section>
<center><h1>Contact Us</h1></center>

<div class="row">

  <div class="column">
    <div class="content">
      <img src="Images/Cont1.png" style="width:100%">
      <h4>ADDRESS</h4>
  	  <p align="center">Navi Mumbai - 400 614.</p>
  
    </div>
  </div>
  
  <div class="column">
    <div class="content">
    <img src="Images/Cont2.png" style="width:100%">
      <h4>Email Us At!!</h4>
       <p align="center">health@mediplushospital.com</p>
    </div>
  </div>
  
  <div class="column">
    <div class="content">
    <img src="Images/Cont3.jpg" style="width:80%">
      <h4>Call Us At!!</h4>
       <p align="center"><b>Emergency</b> 108 | <br> <b>Tel:</b>1860 500 1066</p>
    </div>
  </div>
  </div>
  
  
 <hr> 
<section id="About">
<h1><center>About Us</h1>
<div class="about-img">
         
<div class="abt">

    <h2>MediPlus+ Speciality Hospital</h2><br>
    <p>MediPlus+ Speciality Hospital has over two decades of experience in the healthcare sector,
     and is known for providing quality healthcare and valuable experience to all domestic and international patients.
      Our healthcare offerings are supported by a team of compassionate and dedicated medical professionals
       who have rich knowledge and experience in their respective domains..</p>

</div>
</div>
</section>

<!-- Site footer -->
<section>
    <footer class="site-footer">
     <hr>
      <div class="container">
        <div class="row">
          
            <p class="copyright-text">Copyright &copy; 2021 All Rights Reserved & Designed by 
         <a href="https://www.linkedin.com/in/pranay-khade25">Pranay Khade</a>.
            </p>
          </div>

        
            <ul class="social-icons">
              <li><a class="linkedin" href="https://www.linkedin.com/in/pranay-khade25"><i class="fa fa-linkedin"></i></a></li>  
              <li><a class="twitter" href="https://www.twitter.com/PranayKhade_?s=09"><i class="fa fa-twitter"></i></a></li>
              <li><a class="github" href="https://github.com/pranaykhade25"><i class="fa fa-github"></i></a></li>
              <li><a class="instagram" href="https://instagram.com/pranay.khade_77"><i class="fa fa-instagram"></i></a></li>
              
            </ul>
      
          </div>
          </footer></section>
        </div>


  

</body>
</html>