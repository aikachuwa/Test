     <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
    <title>srs</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1'>
    <script rel="script/javascript" src="js/display.js"></script>
    <!--bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <link href="css/index.css" media="all" rel="stylesheet" type="text/css" />


    <style>

        body,html{
            height: 100%;
        }

        nav.sidebar, .main{
            -webkit-transition: margin 200ms ease-out;
            -moz-transition: margin 200ms ease-out;
            -o-transition: margin 200ms ease-out;
            transition: margin 200ms ease-out;
        }

        .main{
            padding: 10px 10px 0 10px;
        }

        @media (min-width: 765px) {

            .main{
                position: absolute;
                width: calc(100% - 40px);
                margin-left: 40px;
                float: right;
            }

            nav.sidebar:hover + .main{
                margin-left: 200px;
            }

            nav.sidebar.navbar.sidebar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand {
                margin-left: 0px;
            }

            nav.sidebar .navbar-brand, nav.sidebar .navbar-header{
                text-align: center;
                width: 100%;
                margin-left: 0px;
            }

            nav.sidebar a{
                padding-right: 13px;
            }

            nav.sidebar .navbar-nav > li:first-child{
                border-top: 1px #e5e5e5 solid;
            }

            nav.sidebar .navbar-nav > li{
                border-bottom: 1px #e5e5e5 solid;
            }

            nav.sidebar .navbar-nav  {
                position: static;
                float: none;
                width: auto;
                margin-top: 0;
                background-color: transparent;
                border: 0;
                -webkit-box-shadow: none;
                box-shadow: none;
            }

            nav.sidebar .navbar-collapse, nav.sidebar .container-fluid{
                padding: 0 0px 0 0px;
            }

            .navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
                color: #172a77;
            }

            nav.sidebar{
                width: 200px;
                height: 100%;
                margin-left: -160px;
                float: left;
                margin-bottom: 0px;
            }

            nav.sidebar li {
                width: 100%;
            }

            nav.sidebar:hover{
                margin-left: 0px;
            }

            .forAnimate{
                opacity: 0;
            }
        }

        @media (min-width: 1330px) {

            .main{
                width: calc(100% - 200px);
                margin-left: 200px;
            }

            nav.sidebar{
                margin-left: 0px;
                float: left;
            }

            nav.sidebar .forAnimate{
                opacity: 1;
            }
        }

        nav.sidebar .navbar-nav .open .dropdown-menu>li>a:hover, nav.sidebar .navbar-nav .open .dropdown-menu>li>a:focus {
            color: #CCC;
            background-color: transparent;
        }

        nav:hover .forAnimate{
            opacity: 1;
        }
        section{
            padding-left: 15px;
        }


    </style>
</head>

<body>

<nav class="navbar navbar-custom"  style="background-color: #33497d">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php" style="color:rgba(255,107,212,0.67); text-align:center">STUDENT REGISTRATION SYSTEM</a>
        </div>
</nav>
<div id="main">

    <div id="leftnav">

        <nav class="navbar navbar-default sidebar" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1" style="background-color: rgba(15,29,125,0.93)">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.php">Dashboard<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                        <li ><a href="" style="color:white">Add New Student <span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-plus-sign"></span></a></li>
                        <li ><a href="" style="color:white">Deactivate Student<span style="font-size:16px;" class="pull-right hidden-xs showopacity  glyphicon glyphicon-remove-sign"></span></a></li>
                        <li ><a href="" style="color:white">Setting<span style="font-size:16px;" class="pull-right hidden-xs showopacity 	glyphicon glyphicon-cog"></span></a></li>
                        <li ><a href="" style="color:white">Help<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-eye-open"></span></a></li>
                        <li ><a href="" style="color:white">About<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-pencil"></span></a></li>

                    </ul>
                </div>
            </div>
        </nav>
    </div>


    <div id="displayDaily">

        <div id="contolldivDaily" class="container">

            <div id="page-wrapperU">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="page-header">Student's Details</h1>
                    </div>
                </div>

                        <form method="post" action="index.jsp">
                            <div class="form-group row">
                                
                                <label for="lgFormGroupInput" class="col-sm-2 col-form-label col-form-label-lg">First Name</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control form-control-lg" id="lgFormGroupInput" placeholder="First Name" name="firstname" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="lgFormGroupInput" class="col-sm-2 col-form-label col-form-label-lg">Second Name</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control form-control-lg" id="lgFormGroupInput" placeholder="Middle Name" name="middlename" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="lgFormGroupInput" class="col-sm-2 col-form-label col-form-label-lg">Last Name</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control form-control-lg" id="lgFormGroupInput" placeholder="Last Name" name="lastname" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-2"></div>
                                <input type="submit" class="btn btn-primary" style="margin-left: 15px; width:100px" value="Save">
                            </div>
                        </form>




                </div>


            </div>

        </div>

    </div>

</div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>


</body>
</html>
<%
   String firstname = request.getParameter("firstname");
   String middlename= request.getParameter("middlename");
   String lastname= request.getParameter("lastname");
   /* Create string of connection url within specified 
   format with machine name, 
    port number and database name. Here machine name id 
    localhost and database name is student. */
    String connectionURL = "jdbc:mysql://localhost:3306/students";
          // declare a connection by using Connection interface 
   Connection connection = null;
 
        // declare object of Statement interface that uses for 
     PreparedStatement pstatement = null;
         // Load JBBC driver "com.mysql.jdbc.Driver"
     Class.forName("com.mysql.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
     	 // check if the text box is empty
	 if(firstname!=null && middlename!=null && lastname!=null){
	 // check if the text box having only blank spaces
	     if(firstname!="" && middlename!="" && lastname!="") {
	                 try {
              /* Create a connection by using getConnection()
              method that takes parameters of string type 
              connection url, user name and password to connect 
		to database. */
              connection = DriverManager.getConnection
               (connectionURL, "root", "");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO student_details(firstname,middlename,lastname) VALUES (?, ?, ?)";
              	      /* createStatement() is used for create statement
              object that is used for 
		sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
              pstatement.setString(1, firstname);
			  pstatement.setString(2, middlename);
			  pstatement.setString(3, lastname);
              updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
		      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
		   </table>
              <%
              }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to batabase.");
   
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
	  }
	}
%>