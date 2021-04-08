<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrackOrder.aspx.cs" Inherits="TrackOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center">
				<img src="yamifood/images/15.jpg" alt="" />
			</li>
			<li class="text-center">
				<img src="yamifood/images/7.jpg" alt="" />
			</li>
			<li class="text-center">
				<img src="yamifood/images/gallery-img-01.jpg" alt="" />
			</li>
            <li class="text-center">
				<img src="yamifood/images/gallery-img-01.jpg" alt="" />
			</li>
            <li class="text-center">
				<img src="yamifood/images/gallery-img-01.jpg" alt="" />
			</li>
            <li class="text-center">
				<img src="yamifood/images/gallery-img-01.jpg" alt="" />
			</li>

		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
    <br /> <br />
	<!-- End slides -->
    <style type="text/css">
	    
	    .wrapper
{
  background-color: #fff;
  width: 600px;
  padding: 25px;
  margin: 25px auto 0;
  box-shadow: 0px 0px 20px rgba(0,0,0,0.5);    
}
.wrapper h2
{
  background-color: #fcfcfc;
  color: brown;
  font-size: 24px;
  padding: 10px;
  margin-bottom: 20px;
  text-align: center;
  border: 1px dotted #333;    
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1113px;
            text-align: right;
        }
        .auto-style3 {
            width: 1334px;
        }
        .auto-style4 {
            width: 1334px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        /* Rounded Corner */
    .tb5 {
	border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 350px;
   }
    .label{

         color: #fff;

    }
.btn1
    {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #d0a772;
            color: #fff;
            font-size: 16px;
            border-radius: 4px;
            font-weight: 600;
            line-height: 50px;
            display: inline-block;
            padding: 0 10px;
            cursor: pointer;
            transition: all 0.5s ease-in-out;
            margin-left: 0px;
        }
        .auto-style6 {
            width: 1334px;
            height: 36px;
        }
        .auto-style7 {
            height: 36px;
        }
        .Background  
        {  
            background-color: Black;  
            filter: alpha(opacity=90);  
            opacity: 0.8;  
        }  
        .Popup  
        {  
            background-color: #FFFFFF;  
            border-width: 3px;  
            border-style: solid;  
            border-color: black;  
            padding-top: 10px;  
            padding-left: 10px;  
            width: 400px;  
            height: 350px;  
        }  
        .lbl  
        {  
            font-size:16px;  
            font-style:italic;  
            font-weight:bold;  
        }  
        .card {
    z-index: 0;
    background-color: #ECEFF1;
    padding-bottom: 20px;
    margin-top: 90px;
    margin-bottom: 90px;
    border-radius: 10px;
}

.top {
    padding-top: 20px;
    padding-left: 13% !important;
    padding-right: 13% !important;
}

#progressbar {
    margin-bottom: 30px;
    overflow: hidden;
    color: tan;
    padding-left: 0px;
    margin-top: 30px;
}
#progressbar li {
    list-style-type: none;
    font-size: 13px;
    width: 20%;
    float: left;
    position: relative;
    font-weight: 400;
}

#progressbar .step0:before {
    font-family: FontAwesome;
    content: "\f10c";
    color: #fff;
}

#progressbar li:before {
    width: 40px;
    height: 40px;
    line-height: 45px;
    display: block;
    font-size: 20px;
    background: tan;
    border-radius: 50%;
    margin: auto;
    padding: 0px;
}
#progressbar li:after {
    content: '';
    width: 100%;
    height: 12px;
    background: tan;
    position: absolute;
    left: 0;
    top: 16px;
    z-index: -1
}

#progressbar li:last-child:after {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
    position: absolute;
    left: -50%;
}

#progressbar li:nth-child(2):after,
#progressbar li:nth-child(3):after,
#progressbar li:nth-child(4):after {
    left: -50%;
}
#progressbar li:first-child:after {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
    position: absolute;
    left: 50%
}

#progressbar li:last-child:after {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
}

#progressbar li:first-child:after {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
}

#progressbar li.active:before,
#progressbar li.active:after {
    background: #651FFF;
}
#progressbar li.active:before {
    font-family: FontAwesome;
    content: "\f00c";
}

.icon {
    width: 50px;
    height: 50px;
    margin-right: 15px;
}

.icon-content {
    padding-bottom: 20px;
}

@media screen and (max-width: 992px) {
    .icon-content 
    {
        width: 50%;
    }
}
	</style>

   <form id="form1">
      <div class="container px-1 px-md-4 py-5 mx-auto">
    <div class="card">
        <div class="row d-flex justify-content-between px-3 top">
            <div class="d-flex">
                <h5>ORDER <span class="text-primary font-weight-bold"></span></h5>
            </div>
            <div class="d-flex flex-column text-sm-right">
                <p class="mb-0">Expected Arrival <span>01/06/20</span></p>
                <p>product name <span class="font-weight-bold"><a href="https://www.grasshoppers.lk/customers/action/track/V534HB">product code</a></span></p>
            </div>
        </div> <!-- Add class 'active' to progress -->
        <div class="row d-flex justify-content-center">
            <div class="col-12">
                <ul id="progressbar" class="text-center">
                    <li class="active step0"></li>
                    <li class="step0"></li>
                    <li class="step0"></li>
                    <li class="step0"></li>
                    <li class="step0"></li>
                </ul>
            </div>
        </div>
        <div class="row justify-content-between top">
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/9nnc9Et.png" alt="" />
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br />Processed</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/GiWFtVu.png" alt="" />
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br />in Warehouse</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/u1AzR7w.png" alt="" />
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br />Shipped</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/TkPm63y.png" alt="" />
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br />En Route</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/HdsziHP.png" alt="" />
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br />Arrived</p>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="row d-flex justify-content-between px-3 top">
            <div class="d-flex">
                <h6><span class="text-primary font-weight-bold">2020-05-27 11:26:08 AM </span>REQUEST CREATED</h6>
            </div>
        </div>
        <div class="row d-flex justify-content-between px-3 top">
            <div class="d-flex">
                <h6><span class="text-primary font-weight-bold">2020-06-04 06:59:48 AM </span>ATTEMPT 1 COMPLETED. ~ ***[AUTO GENERATED BY GRASSHOPPERS]***</h6>
            </div>
        </div>
        <div class="row d-flex justify-content-between px-3 top">
            <div class="d-flex">
                <h6><span class="text-primary font-weight-bold">2020-06-04 06:59:48 AM </span>RETURN TO VENDOR RECORD CREATED ~ RC806_118 </h6>
            </div>
        </div>
    </div>
</div>
         </form>
      
<br />
</asp:Content>

