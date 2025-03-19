<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="userlist" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        $(window).load(function () {
            $('#nivo-slider').nivoSlider();
        });
    </script>
    <table style="width: 100%">
    <tr>
        <td style="width: 82px">
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" BorderColor="#FFFFCC">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 82px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 82px">
            &nbsp;</td>
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

