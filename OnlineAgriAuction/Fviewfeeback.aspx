<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Fviewfeeback.aspx.cs" Inherits="Fviewfeeback" Title="Untitled Page" %>

<%@ Register namespace="ZedGraph.Web" tagprefix="cc1" %>
<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<script runat="server">

 
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <script type="text/javascript">
        $(window).load(function () {
            $('#nivo-slider').nivoSlider();
        });
    </script><table style="width: 100%; height: 357px;">
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
            <cc1:ZedGraphWeb ID="g1" runat="server" Height="200" Width="400">
            <xaxis axiscolor="Black" cross="0" crossauto="True" isomitmag="False" 
                ispreventlabeloverlap="True" isshowtitle="True" isticsbetweenlabels="True" 
                isusetenpower="False" isvisible="True" iszeroline="False" minspace="0" title="" 
                type="Linear">
                <fontspec angle="0" family="Arial" fontcolor="Black" isbold="True" 
                isitalic="False" isunderline="False" size="14" stringalignment="Center">
                    <border color="Black" inflatefactor="0" isvisible="False" width="1" />
                    <fill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="None" />
                </fontspec>
                <minorgrid color="Black" dashoff="5" dashon="1" isvisible="False" 
                penwidth="1" />
                <majorgrid color="Black" dashoff="5" dashon="1" isvisible="False" 
                penwidth="1" />
                <minortic color="Black" isinside="True" isopposite="True" isoutside="True" 
                penwidth="1" size="5" />
                <majortic color="Black" isinside="True" isopposite="True" isoutside="True" 
                penwidth="1" size="5" />
                <scale align="Center" format="g" formatauto="True" isreverse="False" 
                mag="0" magauto="True" majorstep="1" majorstepauto="True" majorunit="Day" 
                max="0" maxauto="True" maxgrace="0.1" min="0" minauto="True" mingrace="0.1" 
                minorstep="1" minorstepauto="True" minorunit="Day">
                    <fontspec angle="0" family="Arial" fontcolor="Black" isbold="False" 
                isitalic="False" isunderline="False" size="14" stringalignment="Center">
                        <border color="Black" inflatefactor="0" isvisible="False" 
                width="1" />
                        <fill alignh="Center" alignv="Center" color="White" 
                coloropacity="100" isscaled="True" isvisible="True" rangemax="0" rangemin="0" 
                type="None" />
                    </fontspec>
                </scale>
            </xaxis>
            <y2axis axiscolor="Black" cross="0" crossauto="True" isomitmag="False" 
                ispreventlabeloverlap="True" isshowtitle="True" isticsbetweenlabels="True" 
                isusetenpower="False" isvisible="False" iszeroline="True" minspace="0" title="" 
                type="Linear">
                <fontspec angle="0" family="Arial" fontcolor="Black" isbold="True" 
                isitalic="False" isunderline="False" size="14" stringalignment="Center">
                    <border color="Black" inflatefactor="0" isvisible="False" width="1" />
                    <fill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="None" />
                </fontspec>
                <minorgrid color="Black" dashoff="5" dashon="1" isvisible="False" 
                penwidth="1" />
                <majorgrid color="Black" dashoff="5" dashon="1" isvisible="False" 
                penwidth="1" />
                <minortic color="Black" isinside="True" isopposite="True" isoutside="True" 
                penwidth="1" size="5" />
                <majortic color="Black" isinside="True" isopposite="True" isoutside="True" 
                penwidth="1" size="5" />
                <scale align="Center" format="g" formatauto="True" isreverse="False" 
                mag="0" magauto="True" majorstep="1" majorstepauto="True" majorunit="Day" 
                max="0" maxauto="True" maxgrace="0.1" min="0" minauto="True" mingrace="0.1" 
                minorstep="1" minorstepauto="True" minorunit="Day">
                    <fontspec angle="-90" family="Arial" fontcolor="Black" isbold="False" 
                isitalic="False" isunderline="False" size="14" stringalignment="Center">
                        <border color="Black" inflatefactor="0" isvisible="False" 
                width="1" />
                        <fill alignh="Center" alignv="Center" color="White" 
                coloropacity="100" isscaled="True" isvisible="True" rangemax="0" rangemin="0" 
                type="None" />
                    </fontspec>
                </scale>
            </y2axis>
            <fontspec angle="0" family="Arial" fontcolor="Black" isbold="True" 
                isitalic="False" isunderline="False" size="16" stringalignment="Center">
                <border color="Black" inflatefactor="0" isvisible="False" width="1" />
                <fill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="None" />
            </fontspec>
            <masterpanefill alignh="Center" alignv="Center" color="White" 
                coloropacity="100" isscaled="True" isvisible="True" rangemax="0" rangemin="0" 
                type="Solid" />
            <yaxis axiscolor="Black" cross="0" crossauto="True" isomitmag="False" 
                ispreventlabeloverlap="True" isshowtitle="True" isticsbetweenlabels="True" 
                isusetenpower="False" isvisible="True" iszeroline="True" minspace="0" title="" 
                type="Linear">
                <fontspec angle="-180" family="Arial" fontcolor="Black" isbold="True" 
                isitalic="False" isunderline="False" size="14" stringalignment="Center">
                    <border color="Black" inflatefactor="0" isvisible="False" width="1" />
                    <fill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="None" />
                </fontspec>
                <minorgrid color="Black" dashoff="5" dashon="1" isvisible="False" 
                penwidth="1" />
                <majorgrid color="Black" dashoff="5" dashon="1" isvisible="False" 
                penwidth="1" />
                <minortic color="Black" isinside="True" isopposite="True" isoutside="True" 
                penwidth="1" size="5" />
                <majortic color="Black" isinside="True" isopposite="True" isoutside="True" 
                penwidth="1" size="5" />
                <scale align="Center" format="g" formatauto="True" isreverse="False" 
                mag="0" magauto="True" majorstep="1" majorstepauto="True" majorunit="Day" 
                max="0" maxauto="True" maxgrace="0.1" min="0" minauto="True" mingrace="0.1" 
                minorstep="1" minorstepauto="True" minorunit="Day">
                    <fontspec angle="90" family="Arial" fontcolor="Black" isbold="False" 
                isitalic="False" isunderline="False" size="14" stringalignment="Center">
                        <border color="Black" inflatefactor="0" isvisible="False" 
                width="1" />
                        <fill alignh="Center" alignv="Center" color="White" 
                coloropacity="100" isscaled="True" isvisible="True" rangemax="0" rangemin="0" 
                type="None" />
                    </fontspec>
                </scale>
            </yaxis>
            <legend ishstack="True" isreverse="False" isvisible="True" position="Top">
                <location alignh="Left" alignv="Center" coordinateframe="ChartFraction" 
                height="0" width="0" x="0" y="0">
                    <topleft x="0" y="0" />
                    <bottomright x="0" y="0" />
                </location>
                <fontspec angle="0" family="Arial" fontcolor="Black" isbold="False" 
                isitalic="False" isunderline="False" size="12" stringalignment="Center">
                    <border color="Black" inflatefactor="0" isvisible="False" width="1" />
                    <fill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="Solid" />
                </fontspec>
                <fill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="Brush" />
                <border color="Black" inflatefactor="0" isvisible="True" width="1" />
            </legend>
            <panefill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="Solid" />
            <chartfill alignh="Center" alignv="Center" color="White" coloropacity="100" 
                isscaled="True" isvisible="True" rangemax="0" rangemin="0" type="Brush" />
            <chartborder color="Black" inflatefactor="0" isvisible="True" width="1" />
            <masterpaneborder color="Black" inflatefactor="0" isvisible="True" width="1" />
            <margins bottom="10" left="10" right="10" top="10" />
            <paneborder color="Black" inflatefactor="0" isvisible="True" width="1" />
        </cc1:ZedGraphWeb>
            </td>
    </tr>
</table>
<script type="text/javascript">
    $(window).load(function () {
        $('#nivo-slider').nivoSlider();
    });
    </script>
</asp:Content>

