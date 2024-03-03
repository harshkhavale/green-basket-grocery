<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="ViewMorePage.aspx.cs" Inherits="WebPages_ViewMorePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" my-4 mx-4 mt-4" style="font-family: 'Comfortaa', cursive">
        <div class="d-flex mt-4 row">
                
            <div id="carouselExampleIndicators" class="carousel slide w-25" data-bs-ride="true" style="min-height:90vh" >

  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>

  </div>
                 
  <div class="carousel-inner" >
      <asp:Repeater ID="ImgRptr" runat="server">
          <ItemTemplate> 
     
               <div class="carousel-item <%#GetActiveImgClass(Container.ItemIndex)%> my-4 h-50 w-100" >
                     <img src="../Images/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" class="card-img-top " alt="<%#Eval("ImageName") %>">
                   
    </div>
       </ItemTemplate>
      </asp:Repeater>
    
          
   
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
   </div>
           
            <div class="w-50">
                 <asp:Repeater ID="ProductDetailsRptr" runat="server">
                    <ItemTemplate>
                    <div class="container my-2 mx-2 w-100 ">
                 <div class="card-body">
    <h2 class="card-title"><%#Eval("ProductName") %></h2>
                     <br />
                     <div class="d-flex">
                           <div>
                          <h4 class="badge bg-danger">DEAL OF THE DAY</h4>
                     
                     <br />

                     <h4 class="display-6">₹ <%#Eval("ProductSellingPrice","{0:00,0}") %></h4>
  
                     <div class="d-flex">
                     <span >   price  :  </span>
                     <p style="text-decoration:line-through;color:red;font:italic;font-family: 'Comfortaa', cursive"><em>₹ <%#Eval("ProductPrice","{0:00,0}") %></em></p>
                         <br />
                     </div>
                     <h4 class="p-2 badge bg-primary"><em>SAVE : ₹ <%#String.Format("{0}",Convert.ToInt64(Eval("ProductPrice"))-Convert.ToInt64(Eval("ProductSellingPrice")))%></em></h4>
                     <br /> 
                     </div>
                      
                     <div class="m-4">
                          <p class="border border-0 rounded-4 p-2  text-light bg-primary text-center"><%#Eval("ProductHighlight1") %></p>
                         
                         <p class="border border-0 rounded-4 p-2  text-light bg-danger text-center"><%#Eval("ProductHighlight2") %></p>

                     </div>
                     </div>
                  
                    
                     </ul>
                     <hr />

                       <h5 class="badge text-bg-success">About Product</h5>
                     
                         <p class="card-text"><%#Eval("ProductDetails") %></p>
                     <h5 class="badge text-bg-dark"></h5>
                        <p class="card-text"><%#Eval("ProductDescription") %></p>
                    
                     <hr />
             

  </div>
                        </div>
                        
            
             <div class="container sticky-top shadow mt-4 my-2 w-25 bg-warning h-75 position-fixed top-50 end-0 translate-middle-y border rounded-4 text-center " style="z-index:5000">
                <br /> <br /> <br />  
                     
                     <br />  <div class="card-body rounded-4" >
                         <h4 class="card-title "><%#Eval("ProductName") %></h4>

                                                     <hr />

                     <div class="d-flex row">

   <div class="col-6">
                          <p class="btn mt-4 btn-warning">Price</p>
<h2 class="display-6 mt-4 text-center"><strong>₹ <%#Eval("ProductSellingPrice","{0:00,0}") %></strong></h2> 
      
                    </div>
                          <div class="col-6">
                        <ul class="list-group bg-warning list-group-flush">

    <li class="list-group-item bg-warning text-light"><p>Free Delivery <%#((int)Eval("FreeDelivery")==1)?"Available":"Not Available" %></p></li>
    <li class="list-group-item bg-warning text-light"><p>30 Days Return <%#((int)Eval("30DaysReturn")==1)?"Available":"Not Available" %></p></li>
    <li class="list-group-item bg-warning text-light"><p>Cash On Delivery <%#((int)Eval("CashOnDelivery")==1)?"Available":"Not Available" %></p></li>
     </ul>
                 </div>
                     </div>
                 
                    
                     
                     


    <hr />
                         <div class="bg-warning rounded-4 pb-4  px-4">
                                 <div class="border border-0 my-1 mx-4 rounded-4 bg-light">
   <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>           <asp:Button ID="AddToCartBtn" class="btn border border-0" CausesValidation="false" runat="server" Text="Add to Cart" OnClick="AddToCartBtn_Click1" ValidateRequestMode="Inherit" ViewStateMode="Inherit" UseSubmitBehavior="False" />

      </div>
                  <div class="border border-0 my-1 mx-4 rounded-4 bg-light">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wallet-fill" viewBox="0 0 16 16">
  <path d="M1.5 2A1.5 1.5 0 0 0 0 3.5v2h6a.5.5 0 0 1 .5.5c0 .253.08.644.306.958.207.288.557.542 1.194.542.637 0 .987-.254 1.194-.542.226-.314.306-.705.306-.958a.5.5 0 0 1 .5-.5h6v-2A1.5 1.5 0 0 0 14.5 2h-13z"/>
  <path d="M16 6.5h-5.551a2.678 2.678 0 0 1-.443 1.042C9.613 8.088 8.963 8.5 8 8.5c-.963 0-1.613-.412-2.006-.958A2.679 2.679 0 0 1 5.551 6.5H0v6A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-6z"/>
</svg>          <asp:Button ID="BuyNowBtn" class="btn border border-0" CausesValidation="false" OnClick="BuyNowBtn_Click" runat="server" Text="Buy Now" UseSubmitBehavior="False" />
     

      </div>
                         </div>
                      
                     
                          

  </div>
                
              
                
                  
            </div>
                       
                         </ItemTemplate>
                </asp:Repeater>

            </div>
           
           
        </div>
         
    </div>
            <div class="row d-flex mb-4 w-75 justify-content-center"  style="font-family: 'Quicksand', sans-serif;" >
            <asp:Repeater ID="productrptr" runat="server">
                <ItemTemplate>
                    
                       <div class="card m-4 shadow bg-body rounded-4" style="width: 12rem;height:20rem">
                         <a href="ViewMorePage.aspx?PID=<%#Eval("ProductId")%>" style="text-decoration:none;color:black" >
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
                    <br />
                    <br />
                       

                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>


</asp:Content>

