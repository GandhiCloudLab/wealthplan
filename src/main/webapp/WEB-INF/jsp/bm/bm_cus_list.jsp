<jsp:include page="../common/common_header.jsp" />  
	
<%@page import="java.util.*"%>
<%@page import="com.pro.wealth.model.WcCustomer"%>


<br>
<div class="w3-bar w3-border w3-light-grey">
  <a href="#" class="w3-bar-item w3-button w3-mobile w3-blue" >Customers</a>
  <a href="#" class="w3-bar-item w3-button w3-mobile" onclick="return onSelectWm();">Wealth Managers</a>
</div>

<br>
<div class="w3-panel w3-blue-grey"">
  <h5><b>Customers </b></h5>
</div> 

<% 
List<WcCustomer> list = (List<WcCustomer>) request.getAttribute("mainData"); 
%>

  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>        
        <th>Gender</th>
        <th>Age</th>
      </tr>
    </thead>
		<%
		if(list != null)  {
			Iterator<WcCustomer> iterator = list.iterator();
			while(iterator.hasNext()) {
				WcCustomer data = iterator.next(); 
		%>
				<tr>
					<td><%=data.getId()%></td>
					<td><%=data.getFirstName()%></td>
					<td><%=data.getLastName()%></td>
					<td><%=data.getGender()%></td>
					<td><%=data.getAge()%></td>
				</tr>
		<%
			}
		}
		%>
  </table>
  
<jsp:include page="../common/common_footer.jsp" />  


<script>
function onSelectWm(id) {
  window.location = "/BmWealthManagerList";
}
</script>