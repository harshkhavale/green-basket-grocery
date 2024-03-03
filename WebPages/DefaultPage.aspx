<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.master" AutoEventWireup="true" CodeFile="DefaultPage.aspx.cs" Inherits="DefaultPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class=" mb-4 d-flex justify-content-center mt-3 h-50 mx-4 " style="font-family: 'Comfortaa', cursive">
         <div id="carouselExample" class="carousel slide w-75 h-50 card shadow rounded-4">
  <div class="carousel-inner ">
    <div class="carousel-item active">
      <img src="../Images/advetisements/Dailydoesadd3.png"  class="d-block w-100 rounded-4" alt="...">
    </div>
  
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

      </div>
     <div class="container"  style="font-family: 'Comfortaa', cursive">
   <div class=" row d-flex my-2 mb-4 "  >
                         

        <div class=" col-4 mx-2 ">
             <a href="SignInPage.aspx" class="text-center link-primary">
            <image class="shadow card  rounded-4"  style="width:25vw" src="../Images/advetisements/add1.png"/> 

                       </a>
          
       </div>
        <div class=" col-4 mx-2">
             <a href="SignInPage.aspx" class="text-center link-primary">
            <image class="shadow card  rounded-4"  style="width:25vw" src="../Images/advetisements/add2.png"/> 

                       </a>
          
       </div>
        <div class=" col-3 mx-2">
             <a href="SignInPage.aspx" class="text-center link-primary">
            <image class="shadow card  rounded-4"  style="width:25vw" src="../Images/advetisements/add3.png"/> 

                       </a>
          
       </div>


      
      
   </div>
        </div>

       <div class="my-2 px-4 rounded-4" style="font-family: 'Comfortaa', cursive">

        <div class="row d-flex m-0 justify-content-center" >
            <asp:Repeater ID="productrptr" runat="server">
                <ItemTemplate>
                    
  <div class="card m-4 shadow bg-body rounded-4" style="width: 12rem;height:20rem">
                         <a href="DefaultViewMore.aspx?PID=<%#Eval("ProductId")%>" style="text-decoration:none;color:black" >
  <img src="../Images/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" height="150" width="150" alt="<%#Eval("ImageName") %>">
                             <div class="card-body ">
    <p class="card-title my-2"><%#Eval("ProductName") %></p>
                                 <br />
      <div class="position-absolute bottom-0 my-2  d-flex start-0 mx-4">
          <p  > ₹ <%#Eval("ProductSellingPrice","{0:000,0}") %></p>
    <p class="badge bg-primary  end-0">Save ₹  <%#String.Format("{0}",Convert.ToInt64(Eval("ProductPrice"))-Convert.ToInt64(Eval("ProductSellingPrice")))%></p>
          </div>
  </div>
                              </a>
  
                             
</div>
                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>
    </div>


   
    
    

         <div class=" d-flex row h-25 p-4  mt-4  justify-content-center p-0"  style="font-family: 'Comfortaa', cursive">
            <div class="col-6 d-flex  justify-content-center justify-items-center" style="overflow:hidden">
             <img src="../Images/advetisements/bigadd1.jpg" class="scaleAnimClass2 " style="height:70vh" />
                </div>
                <div class="container  col-6 d-flex justify-content-center align-items-center  "  >
          <div class=" text-end  text-dark align-items-center text-center">
            <h1 class="display-2 " style="font-family: 'Bebas Neue', sans-serif;">
Lay's Potato Chips 50g/52g, American Style Cream & Onion Flavou</h1>
            <h4 class="">Crunchy Chips & Snacks </h4>

              <br />
                    <a href="SignInPage.aspx" class="text-center h4 mx-4 link-primary">Buy Now </a>
                   <a href="DefaultViewMore.aspx?PID=47" class="text-center h4 mx-4 link-primary"> ViewMore</a>

          </div>
        </div>
               </div>

    

      
</asp:Content>

