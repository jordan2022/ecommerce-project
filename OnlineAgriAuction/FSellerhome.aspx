<%@ Page Language="C#" MasterPageFile="~/SMasterPage.master" AutoEventWireup="true" CodeFile="FSellerhome.aspx.cs" Inherits="FSellerhome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <script type="text/javascript">
        $(window).load(function () {
            $('#nivo-slider').nivoSlider();
        });
    </script>
    <table style="height: 240px; width:100%">
        <tr>
            <td>
                <table class="style3" style="height: 169px; width: 691px;">
                    <tr>
                        <td class="style4" style="width: 109px">
                            Product ID</td>
                        <td style="width: 256px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Unit Of Measurement</td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 109px">
                            Product Name</td>
                        <td style="width: 256px">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 109px">
                            Commodity Type</td>
                        <td style="width: 256px">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Stock&nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #336699; width: 109px;">
                            Product Image</td>
                        <td style="width: 256px">
                            <asp:Image ID="Image1" runat="server" Height="104px" Width="142px" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
                                style="color: #FFFFFF; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #336699; height: 29px;" 
                                Text="Submit" Width="97px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #336699; width: 109px;">
                            &nbsp;</td>
                        <td style="width: 256px">
                            &nbsp;</td>
                        <td>
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

