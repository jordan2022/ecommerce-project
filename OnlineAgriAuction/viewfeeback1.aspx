<%@ Page Language="C#" MasterPageFile="~/BMasterPage.master" AutoEventWireup="true" CodeFile="viewfeeback1.aspx.cs" Inherits="viewfeeback1" Title="Untitled Page" %>

<%@ Register namespace="ZedGraph.Web" tagprefix="cc1" %>
<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <script type="text/javascript">
       $(window).load(function () {
           $('#nivo-slider').nivoSlider();
       });
    </script>
    <table style="width: 100%; height: 357px;">
    <tr>
        <td style="width: 55px; height: 6px;">
            </td>
        <td style="height: 6px">
            </td>
    </tr>
    <tr>
        <td style="width: 55px; height: 68px;">
            &nbsp;</td>
        <td style="height: 68px">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="height: 22px;">
            &nbsp;</td>
        <td style="height: 22px;">
            &nbsp;</td>
    </tr>
</table>
<script type="text/javascript">
    $(window).load(function () {
        $('#nivo-slider').nivoSlider();
    });
    </script>
</asp:Content>

