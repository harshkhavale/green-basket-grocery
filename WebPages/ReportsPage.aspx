<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="ReportsPage.aspx.cs" Inherits="WebPages_ReportsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="my-4 mx-4 btn btn-success" style="font-size: large; font-family: 'Comfortaa', cursive">
        Generate Reports</h2>
    <div style="font-size: large; font-family: 'Comfortaa', cursive" class="container shadow rounded-4">
   
    <form method="post">
        <div class="d-flex justify-content-center">
                  

        <div class="mx-4 my-4" >
        <label for="startDateInput">Select a start date:</label>
        <input type="date" id="startDateInput" name="startDateInput" />
            </div>
        <div class="mx-4 my-4">
        <label for="endDateInput">Select an end date:</label>
        <input type="date" id="endDateInput" name="endDateInput" />
        </div>
            
            </div>
        <div class=" d-flex justify-content-center mx-2 mb-4">
                <button type="submit" class="btn d-flex justify-content-center mb-4 btn-primary">Generate</button>
            </div>
    </form>

         
         </div>
    <div class="container rounded-4 shadow" style="font-size: large; font-family: 'Comfortaa', cursive">
                    <p class="badge bg-info" id="datestamp" runat="server"></p>

        <div class="d-flex justify-content-center">
              <div class="mx-4 my-2 btn btn-danger">
            
                                <p class="text-center ">Total Sales</p>
                  
         <h1 id="totallbl" class="text-center display-6" runat="server">0</h1>
        </div>
        <div class="mx-4 my-2  btn btn-warning">
              <p class="text-center">Total Products Sold</p>


                                <h1 id="productCountlbl" class="text-center" runat="server">0</h1>
        </div>
        </div>
      
                              
    <asp:Repeater runat="server" ID="ReportRepeater">
        <ItemTemplate>
            <div class="d-flex">
                 <div class="d-flex justify-content-around text-center justify-item-center rounded mx-2 my-2 w-100 shadow p-2 bg-body ">
  <img src="../DailyDoesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" class="card-img-top h-100" style="width:8rem" alt="<%#Eval("ImageName") %>">
      <div class="position-relative start-0 " >
      <p class="card-text b-0 text-primary"><%#Eval("BrandName") %></p>
    <p class="card-title"><%#Eval("ProductName") %></p>
      
          
          </div>
                       <div class="position-relative start-0 " >
      <p class="card-text b-0 text-primary">price</p>
    <h3 class="card-title"> ₹ <%#Eval("ProductSellingPrice","{0:000,0}") %></h3>
      
          
          </div>
                       <div class="position-relative start-0 " >
      <p class="card-text b-0 text-primary">Qty</p>
    <h1 class="card-title"><%#Eval("productCount") %></h1>
      
          
          </div>
      
      
  
  
                             
</div>

            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
</asp:Content>

