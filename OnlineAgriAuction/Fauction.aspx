<%@ Page Language="C#" MasterPageFile="~/SMasterPage.master" AutoEventWireup="true" CodeFile="Fauction.aspx.cs" Inherits="Fauction" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Enter Price Details for the Commodity
    <script type="text/javascript">
        $(window).load(function () {
            $('#nivo-slider').nivoSlider();
        });
    </script><table style="height: 240px; width:100%">
        <tr>
            <td>
                <table class="style3" style="height: 169px; width: 691px;">
                    <tr>
                        <td class="style4" style="width: 373px">
                            Product ID</td>
                        <td style="width: 256px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2">
                            Minimum Price<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                  </td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 373px">
                            Product Name</td>
                        <td style="width: 256px">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Select Auction Start Date:</td>
                        <td>
                            select auction End Date:</td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 373px">
                            Product Image</td>
                        <td style="width: 256px">
                            <asp:Image ID="Image1" runat="server" Height="138px" Width="154px" />
                        </td>
                        <td style="width: 203px">
                            <asp:Calendar ID="Calendar1" runat="server" Height="60px" Width="138px" 
                                >
                            </asp:Calendar>
                                                  </td>
                        <td>
                            <asp:Calendar ID="Calendar2" runat="server" Height="88px" Width="138px">
                            </asp:Calendar>
                                                  </td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 373px; height: 29px;">
                            Commodity Type</td>
                        <td style="width: 256px; height: 29px;">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2" style="height: 29px">
                            <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
                                style="color: #FFFFFF; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #336699; height: 29px;" 
                                Text="Submit" Width="97px" />
                                                  </td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 373px">
                            Unit Of Measurement</td>
                        <td style="width: 256px">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #336699; width: 373px;">
                            &nbsp;</td>
                        <td style="width: 256px">
                            &nbsp;</td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: #336699; width: 373px;">
                            &nbsp;</td>
                        <td style="width: 256px">
                            &nbsp;</td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<script type="text/javascript">
    $(window).load(function () {
        $('#nivo-slider').nivoSlider();
    });
    </script>
</asp:Content>

