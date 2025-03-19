<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" Title="Untitled Page" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

            <table class="style2" 
                
    style="height: 273px; width: 770px; font-family: 'Times New Roman', Times, serif; color: #000000; font-size: medium; background-color: #FFFFFF;">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3" style="width: 157px">
                        User ID</td>
                    <td style="width: 170px">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="width: 71px">
                        &nbsp;</td>
                    <td style="width: 125px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3" style="width: 157px">
                        User Type</td>
                    <td style="width: 170px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="127px" 
                            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Farmer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 71px">
                        <asp:Label ID="Label1" runat="server" Text="Commodity"></asp:Label>
                    </td>
                    <td style="width: 125px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 46px;">
                        </td>
                    <td class="style3" style="width: 157px; height: 46px;">
                        User Name</td>
                    <td style="height: 46px; width: 170px;">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="height: 46px; width: 71px;">
                        Pincode</td>
                    <td style="height: 46px; width: 125px">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td style="height: 46px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ControlToValidate="TextBox6" ErrorMessage="Pincode Invalid" 
                            style="color: #FFFFFF; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #FF0000" 
                            ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3" style="width: 157px">
                        Password</td>
                    <td style="width: 170px">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="width: 71px">
                        Contact No</td>
                    <td style="width: 125px">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="Not Valid" 
                            style="color: #FFFFFF; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #FF0000" 
                            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3" style="width: 157px">
                        Confirm Password</td>
                    <td style="width: 170px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                            ErrorMessage="Password Mismatch" 
                            style="color: #FFFFFF; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #FF0000"></asp:CompareValidator>
                    </td>
                    <td style="width: 71px">
                        Email Id</td>
                    <td style="width: 125px">
                        <asp:TextBox ID="TextBox8" runat="server" Width="215px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="Invalid Email ID" 
                            style="color: #FFFFFF; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #FF0000" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3" style="width: 157px">
                        Current Address</td>
                    <td style="width: 170px">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td style="width: 71px">
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="UserId" 
                            style="margin-left: 0px" Visible="False" Width="86px" 
                            ontextchanged="TextBox10_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3" style="width: 157px">
                        &nbsp;</td>
                    <td style="width: 170px">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                            Width="93px" />
                        </td>
                    <td style="width: 71px">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Confirm" 
                            Visible="False" />
                    </td>
                    <td style="width: 125px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
 <script type="text/javascript">
     $(window).load(function () {
         $('#nivo-slider').nivoSlider();
     });
    </script>

</asp:Content>


