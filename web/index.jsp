<%-- 
    Document   : Home
    Created on : Mar 6, 2018, 11:21:28 PM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="indexcss.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
   <title>Home</title>
    </head>
    <body>
        <div class="navbar" >
            <a href="index.jsp"><img src="image/catlogo.png" style="height: 40px; width: 30px;   "/> </a>
            <h2 class="w3-wide" style="color: white">THE CAT LOVER'S HOSTEL</h2>
        </div>
        <div class="navbar" >
            
              <div class="navbar" style="background-color: #EA4335">
                
           <a href="admin/adminlogin.jsp">Admin Login</a>
            <a href="Worden/wordenlogin.jsp">Warden Login</a>
              <a href="Hostler/hostlerlogin.jsp">Hostler Login</a>
              <a href="Guardian/gardianlogin.jsp">Guardian Login</a>
      </div>
        <!-- Slide Show -->
        <section>

            <img class="mySlides" src="image/img2.jpg" style="width:100%">
            <img class="mySlides" src="image/img5.jpg" style="width:100%">
            <img class="mySlides" src="image/img1.jpeg" style="width:100%">


        </section>
        <!-- Hostel Description -->
        <section class="w3-container w3-center w3-content" style="max-width:600px">
           
            <p class="w3-opacity" style="color: white; size: 18 "><i>About us:</i></p>
            <span class="w3-justify"style="color: white">Fully Airconditioned hostel with comfortable beds and a cozy atmosphere. Free fast WIFI. Common Areas to meet and exchange notes with fellow travellers. Good transport connectivity and a travel desk at the reception, city tours etc being organized through the Hostel.

                The Cat Lovers Hostel -8 Bed Mixed A/C Dorm
                8 Bed Mixed A/C Dorm
            </span>
        </section>
<!--           Hostel Members 
        <div>
        <section class="w3-row-padding w3-center w3-light-grey">
            <div ><article class="w3-third">
                <p>Sadiya</p>
                <img src="image/owner.jpg" alt="Random Name" style="width:100% ;height: 400px">
                <p>Sadiya is the 
                    smartest Owner.</p>
            </article>
            </div>
            <div
            <article class="w3-third">
                <p>XYZ</p>
                <img src="image/member2.jpg" alt="Random Name" style="width:100%;height: 400px">
                <p>XYZ is the prettiest Worden.</p>
            </article>
        </div>
            <div>
            <article class="w3-third">
                <p>ABC</p>
                <img src="image/cook.jpg" alt="Random Name" style="width:100%;height: 400px">
                <p>ABC is the funniest Cook.</p>
            </article>
        </section>
     </div>
        </div>-->

        <!-- Footer -->
        <footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
            <a href="admin.jsp"><i class="fa fa-facebook-official"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-flickr"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
<!--            <p class="w3-medium">
                Powered by Dost <a href="https://www.w3schools.com/w3css/default.asp" target="_blank"></a>
            </p>-->
        </footer>

        <script>
// Automatic Slideshow - change image every 3 seconds
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) {
                    myIndex = 1
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 3000);
            }
        </script>
    </body>
</html>
