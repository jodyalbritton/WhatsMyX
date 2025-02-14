	/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or vendor/assets/stylesheets of plugins, if any, can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the top of the
 * compiled file, but it's generally better to create a new file per style scope.
 *= require jquery.ui.core
 *= require jquery.ui.autocomplete
 *= require jquery.Jcrop
 *= require token-input-facebook
 *= require_self
 *= require_tree .
*/
/* styles for layout */
@media (max-width: 980px) {
    body {
        padding-top: 0;
    }
}
.subnav {
    width: 100%;
}
@media (max-width: 768px) {
    .subnav {
        position: static;
        top: auto;
        z-index: auto;
        width: auto;
        height: auto;
    }
    .subnav .nav > li {
        float: none;
    }
}
@media (min-width: 980px) {
  .subnav-fixed {
    position: fixed;
    top: 40px;
    left: 0;
    right: 0;
    z-index: 1020;
  }
 .subnav-fixed .nav {
    width: 938px;
    margin: 0 auto;
  }
}
@media (min-width: 1210px) {
  .subnav-fixed .nav {
    width: 1168px;
  }
}

@media (min-width: 768px) { 
  .sb-fixed{
    position: fixed;
    
  } 
  
  .post-fixed{
  	background: white;
  	position: fixed;
  
  }
  

}



.footer {
	text-align: center;
}
html,body{
    height:100%;
}

#wrap
{
  min-height: 100%;  
}
#content-body {

}
#main
{
    overflow:auto;
    padding-top: 100px;
    padding-bottom:120px; /* this needs to be bigger than footer height*/
}

#sub-nav {
	background: #EEEEEE;
	min-height: 80px;
    
	


    -webkit-box-shadow: 0px 5px 5px 0px #333;
    box-shadow: 0px 5px 5px 0px #333;
}
.footer 
{
    position: relative;
	margin-top: -110px; /* negative value of footer height */
	height: 100px;
	clear:both;
    padding-top:20px;
    color:#fff;
} 

.chart_row {
	
	
	min-height: 0px;
  
  
}


.paginator {
	text-align: center;
	
}
/****************************************************************
Home
****************************************************************/
.home-menu {
	padding-right: 5px;
}
/****************************************************************
Dashboard
****************************************************************/
.profile-header {
	width: 90%;
    margin-left: auto;
    margin-right: auto;
}
.dash-items {
    
	padding-top: 15px;
	border-left: 1px solid #E3E3E3;
	border-right: 1px solid #E3E3E3;
	border-bottom: 1px solid #E3E3E3;
}
.dash-item {
	text-align: center;
	
	margin-bottom: 20px;
	background: #eee;
	height: 160px;
	width: 160px;
}

.dash-content {
	padding-top: 50px;
}
.badge-content {
	
	padding-top: 50px;
	
}
.badge-item {
	
	background: #eee;
	width: 120px;
	height: 120px;
   -moz-border-radius:120px;
   -webkit-border-radius:120px;
   border: 10px solid #0088CC;
   
   margin-left: auto;
   margin-right: auto;
   text-align: center;
	
}


/****************************************************************
Physical Activity
****************************************************************/
.pactivity-form {
	padding-top: 20px;
}
/****************************************************************
Users
****************************************************************/


.progress {
	width: 98%;
}

.points {
	padding-top: 10px;
	width: 90%;
}
.user-controls {
	padding-top: 15px;
	border-bottom: 1px solid #E3E3E3;
	border-right: 1px solid #E3E3E3;
    border-left: 1px solid #E3E3E3;
	
}
.tab-pane {
	
}
.input-about {
	height: 45px;

}

#user_profile_attributes_dob_1i {
	width: 100px;
}
#user_profile_attributes_dob_2i {
	width: 100px;
}
#user_profile_attributes_dob_3i {
	width: 100px;
}

#profile-header {
    background-color: #EBEDEE;
    padding: 1%;
    min-height: 50px;
    border-top: 1px solid #E3E3E3;
    border-bottom: 1px solid #E3E3E3;
	border-right: 1px solid #E3E3E3;
    border-left: 1px solid #E3E3E3;

}

#profile-merit ul {
list-style: none;
margin-top: 2%;
}
#profile-merit #name-box, #profile-header ul {
float: left;
}

#profile-merit ul li {
float: right;
margin-left: 10px;
font-size: 12px;
text-align: center;
color: #909B9F;
}

#profile-merit ul li strong {
display: block;
color: #2E393D;
font-size: 20px;
margin-bottom: 2%;
}


#profile-header {
background-color: #EBEDEE;
padding: 1%;
min-height: 40px;

}

.users-list {
	min-height: 120px;
}
.list-username {
	text-align: center;
	
}

.user-list-avatar {
	padding-left: 2px;
	padding-right: 2px;
}

/****************************************************************
Activity Feed
****************************************************************/

.activity-item {
        min-height: 200px;
        border-bottom: 1px solid #E3E3E3;
        border-left: 1px solid #E3E3E3;
        border-right: 1px solid #E3E3E3;
      
        
}

.stat-content {
	padding-bottom: 10px;
}

.meal-content {
	padding-bottom: 10px;
}

.pactivity-content {
	padding-bottom: 10px;
}




/****************************************************************
Post Style
****************************************************************/
#form-action-main {
	margin-bottom: -18px;
}
#post_scope.select {
	width: 120px;
}

#post-form-small{
	padding-left: 10px;
	padding-top: 10px;
}

.post-form-box{
	padding-left: 10px;
}
#post-form-cont {
	     min-height: 50px;
	     padding-top: 5px;
          
	     border-bottom: 1px solid #E3E3E3;
         border-right: 1px solid #E3E3E3;
         border-left: 1px solid #E3E3E3;
         border-top: 1px solid #E3E3E3;
	
}
.post-input {
	
	margin-left: auto;
	margin-right: auto;
	height: 50px;
	width : 95%;
	

}
.post-input-footer {
	background: #eee;
}
.form-buttons {
	padding-left: 20px;
}

.post-delete {
        padding: 1px;
       
     
}
.post-avatar {
        padding-bottom: 5px;
        height: 60px;
}

#post-footer {


}

.post-content {
	min-height: 40px;
	padding-bottom: 5px;

}

.post-likes {
    color: gray;
	border-bottom: 1px solid #E3E3E3;

    

}




/****************************************************************
Comments Style
****************************************************************/
.comment-img {
	float: left;
	padding-right: 5px;
}
.comment-body p {
  text-align : justify; 
  word-wrap: break-word;	
}

.comment-item:hover {
	
	background-color: #eee;
}

#comment-item p {
list-style: none;
}
.comment-item {
	
}

.comment-content {
	list-style: none;
}

.comment-delete {
        padding: 1px;
        
     
}
.comment-avatar {
        padding-bottom: 5px;
        height: 60px;
}

.comment-item {
        min-height: 100px;
}

.comment-likes {
	
	color: gray;
}

.input-comment {
	height: 18px;
	width: 95%;
}
/****************************************************************
Note Style
****************************************************************/
#note_date_1i {
	width: 100px;
}
#note_date_2i {
	width: 100px;
}
#note_date_3i {
	width: 100px;
}
.note-avatar {
        padding-bottom: 5px;
        height: 60px;
}


/****************************************************************
Stat Style
****************************************************************/
#stat_date_1i {
	width: 100px;
}
#stat_date_2i {
	width: 100px;
}
#stat_date_3i {
	width: 100px;
}

.stat-avatar {
        padding-bottom: 5px;
        height: 60px;
}


/****************************************************************
Ingredient Style
****************************************************************/
#ingredient_date_1i {
	width: 100px;
}
#ingredient_date_2i {
	width: 100px;
}
#ingredient_date_3i {
	width: 100px;
}
#meal_date_1i {
	width: 75px;
}
#meal_date_2i {
	width: 75px;
}
#meal_date_3i {
	width:  50px;
}

.ingredient-avatar {
        padding-bottom: 5px;
        height: 60px;
}
.ingredient_from_list{
	text-align: center;
}

