<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Vviewfeeback.aspx.cs" Inherits="Vviewfeeback" Title="Untitled Page" %>

<%@ Register namespace="ZedGraph.Web" tagprefix="cc1" %>
<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        $(window).load(function () {
            $('#nivo-slider').nivoSlider();
        });
    </script>
    <table style="width: 100%; height: 219px;">
    <tr>
        <td style="width: 447px;">
            <asp:GridView ID="GridView1" runat="server" Width="329px">
            </asp:GridView>
        </td>
        <td>
            <asp:GridView ID="GridView2" runat="server">
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

