<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Aviewauction.aspx.cs" Inherits="Aviewauction" Title="Untitled Page" %>

<%@ Register namespace="ZedGraph.Web" tagprefix="cc1" %>
<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<script runat="server">

   </script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <script type="text/javascript">
      $(window).load(function () {
          $('#nivo-slider').nivoSlider();
      });
    </script>
    <table style="width: 100%; height: 219px;">
    <tr>
        <td style="width: 337px; height: 19px;">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Completed Auctions" Width="174px" />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="Filter and Notify" Width="142px" />
        </td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 337px; height: 19px;">
            Aution Details</td>
        <td style="height: 19px">
            Reply from Customer Details</td>
    </tr>
    <tr>
        <td style="width: 337px;">
            <asp:GridView ID="GridView1" runat="server" Width="329px" BackColor="#FFFFCC" 
                Font-Names="Times New Roman" Font-Size="Medium">
                <HeaderStyle BackColor="#0099FF" ForeColor="White" />
            </asp:GridView>
        </td>
        <td>
            <asp:GridView ID="GridView2" runat="server" BackColor="#FFCCCC" 
                Font-Names="Times New Roman" Font-Size="Medium" Width="300px">
                <HeaderStyle BackColor="#FF6699" ForeColor="#CCFFCC" />
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

