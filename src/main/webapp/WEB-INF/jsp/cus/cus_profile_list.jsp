<jsp:include page="../common/common_header.jsp" /> 

	
<%@page import="java.util.*"%>
<%@page import="com.pro.wealth.model.GoalInfo"%>
<%@page import="com.pro.wealth.model.WcCustomer"%>

<br>
<div class="w3-bar w3-border w3-light-grey">
  <a href="#" class="w3-bar-item w3-button w3-mobile" onclick="return onSelectFP();">Financial Plan</a>
  <a href="#" class="w3-bar-item w3-button w3-mobile"  onclick="return onSelectPortfolio();" >Portfolio</a>
  <a href="#" class="w3-bar-item w3-button w3-mobile w3-blue"  >Profile</a>
</div>

<br>
<div class="w3-panel w3-blue-grey"">
  <h5><b>Profile </b></h5>
</div> 

<% 
WcCustomer data = (WcCustomer) request.getAttribute("mainData"); 
%>

  <h5>SELF</h5>
  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>        
        <th>Gender</th>
        <th>Average Income Per Month</th>
      </tr>
    </thead>
	<tr>
		<td><%=data.getFirstName()%></td>
		<td><%=data.getLastName()%></td>
		<td><%=data.getAge()%></td>
		<td><%=data.getGender()%></td>
		<td><%=data.getAvgIncome()%></td>
	</tr>
  </table>
  </div>

  <BR>
  <h5>SPOUSE</h5>
  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>        
        <th>Gender</th>
        <th>Average Income Per Month</th>
        <th>&nbsp;</th>
      </tr>
    </thead>
	<tr>
		<td><%=data.getSpouseFirstName()%></td>
		<td><%=data.getSpouseLastName()%></td>
		<td><%=data.getSpouseAge()%></td>
		<td><%=data.getSpouseGender()%></td>
		<td><%=data.getSpouseAvgIncome()%></td>
		<th>&nbsp;</th>
	</tr>
  </table>
  
  
  <BR>
  <h5>Child 1</h5>
  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>        
        <th>Gender</th>
        <th>&nbsp;</th>
    </thead>
	<tr>
		<td><%=data.getChild1FirstName()%></td>
		<td><%=data.getChild1LastName()%></td>
		<td><%=data.getChild1Age()%></td>
		<td><%=data.getChild1Gender()%></td>
        <th>&nbsp;</th>
	</tr>
  </table>
  
  
  <BR>
  <h5>Child 2</h5>
  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>        
        <th>Gender</th>
        <th>&nbsp;</th>
    </thead>
	<tr>
		<td><%=data.getChild2FirstName()%></td>
		<td><%=data.getChild2LastName()%></td>
		<td><%=data.getChild2Age()%></td>
		<td><%=data.getChild2Gender()%></td>
        <th>&nbsp;</th>
	</tr>
  </table>
  
<jsp:include page="../common/common_footer.jsp" /> 


<script>

function onSelectFP() {
	  window.location = "CusFinancialPlanList";
}

function onSelectPortfolio() {
	  window.location = "CusPortfolioList";
}
</script>

