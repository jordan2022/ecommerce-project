<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"  >
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>E-AgriMarket</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="App_Themes/style.css"rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">

	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#">Home</a></li>
				<li><a href="#">Register</a></li>
				<li><a href="#">Login</a></li>
				<%--<li><a href="#">About</a></li>--%>
				<li><a href="#">Products</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
				<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
				<input type="submit" id="search-submit" value="Search" />
				</fieldset>
			</div>
		<!-- end #search -->
	</div>
	<!-- end #header -->
	<div id="logo">
		<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            e-Auction</h1>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            A fraud detection scheme.....</p>
	</div>
	<hr />
	<!-- end #logo -->
<!-- end #header-wrapper -->

<div id="page">
	<div id="content">
		<div class="post">
			<h2 class="title">Welcome to E-AgriMarket</h2>
			<p class="date">01.23.09</p>
			<%--<div class="entry">
				<p>This is <strong>Blogging</strong>, a free, fully standards-compliant CSS template designed by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>, released for free under the <a href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attribution 2.5</a> license. The photos in this design are from <a href="http://www.pdphoto.org/">PDPhoto.org</a>. You're free to use this template for anything as long as you link back to <a href="http://www.freecsstemplates.org/">my site</a>. Enjoy :)</p>
				<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum ipsum. Proin imperdiet est. Phasellus dapibus semper urna. Pellentesque ornare, orci in felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.Sed lacus. Donec lectus. </p>
				<p class="links"><a href="#" class="comments">Comments (64)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">Full article</a></p>
			</div>--%>
		    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
		</div>
		<div class="post">
			<h2 class="title">Products</h2>
			<p class="date">01.23.09</p>
			<div class="entry">
				<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis ac diam. Etiam non felis. Donec ut ante. In id eros.</p>
				<p class="links"><a href="#" class="comments">Comments (64)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">Full article</a></p>
			</div>
		</div>
		<div class="post">
			<h2 class="title">Lorem ipsum sed aliquam</h2>
			<p class="date">01.23.09</p>
			<div class="entry">
				<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis ac diam. Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem. Phasellus pellentesque. Mauris quam enim, molestie in, rhoncus ut, lobortis a, est.</p>
				<p class="links"><a href="#" class="comments">Comments (64)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">Full article</a></p>
			</div>
		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<ul>
			<li>
				<h2>Aliquam tempus</h2>
				<p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper urna. Pellentesque ornare, orci in consectetuer hendrerit, volutpat.</p>
			</li>
			<li id="calendar">
				<h2>Calendar</h2>
				<div id="calendar_wrap">
					<table summary="Calendar">
						<caption>
						March 2008
						</caption>
						<thead>
							<tr>
								<th abbr="Monday" scope="col" title="Monday">M</th>
								<th abbr="Tuesday" scope="col" title="Tuesday">T</th>
								<th abbr="Wednesday" scope="col" title="Wednesday">W</th>
								<th abbr="Thursday" scope="col" title="Thursday">T</th>
								<th abbr="Friday" scope="col" title="Friday">F</th>
								<th abbr="Saturday" scope="col" title="Saturday">S</th>
								<th abbr="Sunday" scope="col" title="Sunday">S</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td abbr="February" colspan="3" id="prev"><a href="#" title="">&laquo; Feb</a></td>
								<td class="pad">&nbsp;</td>
								<td abbr="April" colspan="3" id="next"><a href="#" title="">Apr &raquo;</a></td>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td colspan="5" class="pad">&nbsp;</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td>9</td>
							</tr>
							<tr>
								<td>10</td>
								<td id="today">11</td>
								<td>12</td>
								<td>13</td>
								<td>14</td>
								<td>15</td>
								<td>16</td>
							</tr>
							<tr>
								<td>17</td>
								<td>18</td>
								<td>19</td>
								<td>20</td>
								<td>21</td>
								<td>22</td>
								<td>23</td>
							</tr>
							<tr>
								<td>24</td>
								<td>25</td>
								<td>26</td>
								<td>27</td>
								<td>28</td>
								<td>29</td>
								<td>30</td>
							</tr>
							<tr>
								<td>31</td>
								<td class="pad" colspan="6">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
			<li>
				<h2>Turpis nulla</h2>
				<ul>
					<li><a href="#"></a><a href="#">Nec metus sed donec</a></li>
					<li><a href="#">Magna lacus bibendum mauris</a></li>
					<li><a href="#">Velit semper nisi molestie</a></li>
					<li><a href="#">Eget tempor eget nonummy</a></li>
					<li><a href="#">Nec metus sed donec</a></li>
					</ul>
				</li>
		</ul>
	</div>
	<!-- end #sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end #page -->

<div id="footer">
	<p>Copyright (c) 2014.</p>
</div>
<!-- end #footer -->
</div>
<%--<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
--%>   
 </form>
</body>

</html>
