<%@ Page Language="C#" MasterPageFile="~/BMasterPage.master" AutoEventWireup="true" CodeFile="buyproducts.aspx.cs" Inherits="buyproducts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 849px">
               <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor=ActiveBorder   
                    AutoGenerateColumns="false" 
                    onselectedindexchanged="gdImage_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="productno" HeaderText="productno" />
                    <asp:BoundField DataField="companyname" HeaderText="companyname" />
                    <asp:BoundField DataField="productname" HeaderText="productname" />
                     <asp:BoundField DataField="warrenty" HeaderText="warrenty" />
                     <asp:BoundField DataField="productcost" HeaderText="productcost" />
                    <asp:ImageField DataImageUrlField="productpath" HeaderText="Image"></asp:ImageField>  
                        <asp:BoundField DataField="sellername" HeaderText="sellername" />    
                  <asp:TemplateField HeaderText="View">
        <ItemTemplate>
       <asp:LinkButton runat="server" ID="buy" OnClick="buy_Click">Buy</asp:LinkButton>
         </ItemTemplate>
       </asp:TemplateField>     
                </Columns>

<HeaderStyle BackColor="ActiveBorder"></HeaderStyle>
                   <AlternatingRowStyle BackColor="#FFFFCC" Font-Bold="False" 
                       ForeColor="#FF3399" />
            </asp:GridView>
               
               </td>
            <td style="width: 562px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

