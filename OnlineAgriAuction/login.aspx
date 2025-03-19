<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 89%">
        <tr>
            <td colspan="2">
                 <asp:ScriptManager ID="ScriptManager2" runat="server" />
        <div class="UserControlDiv">
            <asp:UpdatePanel ID="up1" runat="server">
                <Triggers>
                    <%--<asp:AsyncPostBackTrigger ControlID="btnPrevious" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnNext" EventName="Click" />--%>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:Timer ID="Timer1" Interval="3000" runat="server" />
                    <table>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <!-- We will use AdRotator control for creating an image slider in asp.net
                                ASP AdRotator control has an AdvertisementFile which contains the information related to different
                                //images that will be displayed randomly either using the timer1 or the previous next button click
                                 -->
                                               <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" />
                
            
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
                </td>
            <td colspan="2">
                
                <asp:Login ID="Login1" runat="server" Height="156px" Width="254px" 
                    BackColor="#DAD5A7" BorderColor="#FF9933" ForeColor="Black" 
                    onauthenticate="Login1_Authenticate" DisplayRememberMe="False">
                </asp:Login>
            </td>
        </tr>
        <tr>
            <td style="width: 507px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 562px">
               
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server"  AutoPostBack=true 
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="Farmer" 
                    GroupName="a" Visible="False" />
            </td>
            <td style="width: 95px">
                <asp:RadioButton ID="RadioButton2" runat="server"  AutoPostBack=true 
                    oncheckedchanged="RadioButton2_CheckedChanged" Text="Customer" 
                    GroupName="a" Visible="False" />
            </td>
        </tr>
        
       
        <tr>
            <td style="width: 507px">
                &nbsp;</td>
            <td style="width: 562px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 95px">
                <asp:Button ID="Button1" runat="server" Text="Register" Width="93px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        
       
        <tr>
            <td colspan="4">
                
                 <div id="mainBody">
                <br />
        <br />
       
    </div>
                </td>
        </tr>
        
       
    </table>
    <script type="text/javascript">
        $(window).load(function () {
            $('#nivo-slider').nivoSlider();
        });
    </script>
</asp:Content>

