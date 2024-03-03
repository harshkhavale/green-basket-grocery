<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="BindCategoryPage.aspx.cs" Inherits="WebPages_BindCategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container  my-2"  style="font-family: 'Comfortaa', cursive">

        <div class="row d-flex justify-content-center">

            <asp:Repeater ID="SmartphonesRptr" runat="server">
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





                       

                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>
    </div>

</asp:Content>

