<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cviewproducts.aspx.cs" Inherits="Cviewproducts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <script type="text/javascript">
      $(window).load(function () {
          $('#nivo-slider').nivoSlider();
      });
    </script>   
    <table style="width: 100%; height: 115px;">
        <tr>
            <td>
                <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor=ActiveBorder   AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="pid" HeaderText="Product_ID" />
        <asp:BoundField DataField="productname" HeaderText="Product_Name" />
        <asp:BoundField DataField="uom" HeaderText="UOM" />
        <asp:BoundField DataField="product_type" HeaderText="Product_type" />
        <asp:ImageField DataImageUrlField="productpath" HeaderText="Image" ControlStyle-Width="100" ControlStyle-Height = "100" >
        </asp:ImageField>
        <%--<asp:ButtonField DataTextField="buy" HeaderText="Buy" /> --%>
    </Columns>
</asp:GridView>
               
               </td>
        </tr>
    </table>
     <script type="text/javascript">
         $(window).load(function () {
             $('#nivo-slider').nivoSlider();
         });
    </script>
</asp:Content>

