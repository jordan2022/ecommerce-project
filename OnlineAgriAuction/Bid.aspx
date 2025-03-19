<%@ Page Language="C#" MasterPageFile="~/BMasterPage.master" AutoEventWireup="true" CodeFile="Bid.aspx.cs" Inherits="Bid" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 467px;">
        <tr>
            <td>
                <table style="width: 100%">
        <tr>
            <td style="width: 456px">
               <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor=ActiveBorder   AutoGenerateColumns="false">
                <Columns>
                 <asp:BoundField DataField="fid" HeaderText="Farmer" />
                    <asp:BoundField DataField="pid" HeaderText="productno" />
                    <asp:BoundField DataField="pname" HeaderText=Name />
                     <asp:BoundField DataField="commodity_type" HeaderText="commodity_type" />
                     <asp:BoundField DataField="UOM" HeaderText="UOM" />
                       <asp:BoundField DataField="stock" HeaderText="stock" />
                       <asp:BoundField DataField="Min_price" HeaderText="Min.Price" />
                        <asp:BoundField DataField="aid" HeaderText="Auction ID" />
                         <asp:BoundField DataField="dateofauction" HeaderText="Date" />
                         <asp:BoundField DataField="edate" HeaderText="End Date" />
                                      <asp:TemplateField HeaderText="View">
        <ItemTemplate>
       <asp:LinkButton runat="server" ID="bid" OnClick="bid_Click">Bid</asp:LinkButton>
         </ItemTemplate>
       </asp:TemplateField>     
                </Columns>

<HeaderStyle BackColor="ActiveBorder"></HeaderStyle>
                   <AlternatingRowStyle BackColor="#FFFFCC" Font-Bold="False" 
                       ForeColor="#FF3399" />
            </asp:GridView>
               
               </td>
            <td rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 456px">
                            <asp:TextBox ID="TextBox4" runat="server" Enabled="False" 
                    Visible="False"></asp:TextBox>
                            <asp:TextBox ID="TextBox5" runat="server" Enabled="False" 
                    Visible="False"></asp:TextBox>
               
                            <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Visible="False"></asp:TextBox>
               
               </td>
        </tr>
        <tr>
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 456px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 143px">
                            <asp:Label ID="Label1" runat="server" Text="Product Category"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 143px">
                            <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 143px">
                            <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="27px" 
                                Width="246px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 143px">
                            Ratings</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="27px" 
                                Width="246px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 143px">
                            Quantity Needed</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Height="27px" 
                                Width="246px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 143px; height: 60px;">
                            </td>
                        <td style="height: 60px">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Confirm Bidding" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

