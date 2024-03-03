<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="AddProductPage.aspx.cs" Inherits="WebPages_AddProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container my-4" style="font-family: 'Comfortaa', cursive">
       
                                 <h5 style="font-size:large;font-family: 'Comfortaa', cursive" class="badge bg-warning my-4 mx-2 "> ADD PRODUCTS</h5>
        <br />
        <br />
        <div class="d-flex  justify-content-around">
        <div class="col-sm" >
   
      <asp:Label ID="Label1" runat="server" Text="Product Name" 
          Visible="True"></asp:Label>
            <br />
     
&nbsp;<div class="col-10">
          <asp:TextBox ID="ProductName" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="ProductName" ErrorMessage="ProductName cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>

         <div class="col-sm">
      <asp:Label ID="Label2" runat="server" Text="Product Price" 
          Visible="True"></asp:Label>
             <br />
      
&nbsp;<div class="col-10">
          <asp:TextBox ID="ProductPrice" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ControlToValidate="ProductPrice" ErrorMessage="ProductPrice can't be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
            </div>
            

          <div class="d-flex justify-content-around">

        <div class="form-group col-sm">
   
      <asp:Label ID="Label3" runat="server" Text="Selling Price" 
          Visible="True"></asp:Label>
             <br />
    
&nbsp;<div class="col-10">
          <asp:TextBox ID="SellingPrice" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="SellingPrice" ErrorMessage="Selling Price cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>

               <div class="form-group col-sm">
   
      <asp:Label ID="Label18" runat="server" Text="Stock" 
          Visible="True"></asp:Label>
             <br />
    
&nbsp;<div class="col-4">
          <asp:TextBox ID="Stock" class="form-control" runat="server"
              Visible="True" TextMode="Number"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="Stock" ErrorMessage="Stock cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
              </div>

                
        
        <div class="d-flex justify-content-around">
         <div class="my-3 col-sm" >
      <asp:Label ID="Label7" runat="server" Text="Product Description" 
          Visible="True"></asp:Label>
        <br />
      
&nbsp;<div class="col-10">
          <asp:TextBox ID="ProductDescription" TextMode="MultiLine" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
      </div>
   
  </div>
             <div class="my-3 col-sm" >
      <asp:Label ID="Label19" runat="server" Text="Product Details" 
          Visible="True"></asp:Label>
        <br />
      
&nbsp;<div class="col-10">
          <asp:TextBox ID="ProductDetails" TextMode="MultiLine" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
      </div>
   
  </div>

        
            </div>
        <br />
        <br />
        <div class="d-flex justify-content-around">

        <div class="form-group col-sm">
      <asp:Label ID="Label4" runat="server" Text="Brand Name" 
          Visible="True"></asp:Label>
            <br />
&nbsp;<div class="col-8">
    <asp:DropDownList ID="BrandNameDDL" CssClass="form-control" runat="server">
                 </asp:DropDownList>

      </div>
   
        </div>

         <div class="form-group col-sm">
      <asp:Label ID="Label5" runat="server" Text="Category" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-8">
    <asp:DropDownList ID="CategoryDDL" CssClass="form-control" runat="server" OnSelectedIndexChanged="CategoryDDL_SelectedIndexChanged" AutoPostBack="True">
                 </asp:DropDownList>

      </div>
             </div>


                     <div class="form-group col-sm">
      <asp:Label ID="Label6" runat="server" Text="Sub-Category" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-8">

                 <asp:DropDownList ID="SubCategoryDDL" CssClass="form-control" runat="server">
                 </asp:DropDownList>

      </div>
   
        </div>
   
        </div>
        <br />
        <br />
                <div class="d-flex justify-content-around">
         <div class="my-3 col-sm" >
      <asp:Label ID="Label8" runat="server" Text="Product Highlight 1" 
          Visible="True"></asp:Label>
        <br />
      
&nbsp;<div class="col-10">
          <asp:TextBox ID="ProductHighlight1" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
      </div>
   
  </div>
             <div class="my-3 col-sm" >
      <asp:Label ID="Label20" runat="server" Text="Product Highlight 2" 
          Visible="True"></asp:Label>
        <br />
      
&nbsp;<div class="col-10">
          <asp:TextBox ID="ProductHighlight2" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
      </div>
   
  </div>

        
            </div>
        <br />
        <br />

                <div class="d-flex justify-content-around my-4">

          <div class="form-group col-sm">
      <asp:Label ID="Label9" runat="server" Text="Upload Product Img-1" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-7">
    <asp:FileUpload ID="ProductImg1" runat="server" />

      </div>
             </div>

                     <div class="form-group col-sm">
      <asp:Label ID="Label10" runat="server" Text="Upload Product Img-2" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-7">
    <asp:FileUpload ID="ProductImg2" runat="server" />

      </div>
             </div>

                    <div class="form-group col-sm">
      <asp:Label ID="Label11" runat="server" Text="Upload Product Img-3" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-7">
    <asp:FileUpload ID="ProductImg3" runat="server" />

      </div>
             </div>
                    </div>
        

        <br />
        <div class="d-flex justify-content-around my-4">

          <div class="form-group col-sm">
      <asp:Label ID="Label12" runat="server" Text="Upload Product Img-4" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-7">
    <asp:FileUpload ID="ProductImg4" runat="server" />

      </div>
             </div>

                     <div class="form-group col-sm">
      <asp:Label ID="Label13" runat="server" Text="Upload Product Img-5" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-7">
    <asp:FileUpload ID="ProductImg5" runat="server" />

      </div>
             </div>
              <div class="form-group col-sm">
      <asp:Label ID="Label14" runat="server" Text="Upload Product Img-6" 
          Visible="True"></asp:Label>
             <br />
&nbsp;<div class="col-7">
    <asp:FileUpload ID="ProductImg6" runat="server" />

      </div>
             </div>

                   
                    </div>
        <br />
        <br />
        

                <div class="d-flex justify-content-around my-4">
                    <div class="form-group col-sm">
      <asp:Label ID="Label15" runat="server" Text="Free Delivery" 
          Visible="True"></asp:Label>
             
&nbsp;<div class="col-5">
    <asp:CheckBox ID="FreeDelivery" runat="server" />

      </div>
             </div>
                    <div class="form-group col-sm">
      <asp:Label ID="Label16" runat="server" Text="30 Days Return" 
          Visible="True"></asp:Label>
             
&nbsp;<div class="col-5">
    <asp:CheckBox  ID="Return30Day" runat="server" />

      </div>
             </div>
                    <div class="form-group col-sm ">
      <asp:Label ID="Label17" runat="server" Text="Cash On Delivery" 
          Visible="True"></asp:Label>
             
&nbsp;<div class="col-5">
    <asp:CheckBox ID="COD" runat="server" />

                            <br />

      </div>
             </div>
                    </div>

        <br />

        <div class="d-flex justify-content-center">
            <asp:Button ID="AddProduct" CssClass="btn btn-primary" runat="server" Text="Add Product"
                OnClick="AddProduct_Click" />
            </div>
    </div>
        <div class="container my-2" style="font-family: 'Comfortaa', cursive">
                                                       <h5 style="font-size:large" class="badge bg-success my-2 "> ALL PRODUCTS</h5>
<br /><br />
                            <h5 class="badge bg-warning mb-0 ">New Launch</h5>

        <div class="row d-flex justify-content-center">

            <asp:Repeater ID="productrptr" runat="server">
                <ItemTemplate>
                    
  <div class="card m-4 shadow bg-body rounded-4" style="width: 12rem;height:20rem">
                         <a href="#" style="text-decoration:none;color:black" >
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
  
                             
</div>                    <br />
                    <br />
                       

                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>
    </div>
</asp:Content>

