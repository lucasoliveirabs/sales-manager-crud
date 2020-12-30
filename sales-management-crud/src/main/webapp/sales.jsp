<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>Sales</title>

<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

	<div class="header">
		<nav>
			<ul>
				<li><a href="SaleServlet">Sales</a></li>
				<li><a href="#">Products</a></li>
				<li><a href="#">Leads</a></li>
			</ul>
		</nav>
	</div>

	<div class="container">
		<div id="content">

			<input type="button" value="New Sale" class="new-sale"
				onclick="window.location.href='add-sale.jsp';return false;" />

			<table>
				<tr>
					<th>Sale id</th>
					<th>Product id</th>
					<th>Lead id</th>
					<th>Sale date</th>
					<th>Delivery date</th>
					<th>Delivery address</th>
					<th>Observation</th>
					<th>Status</th>
					<th>Cancel date</th>
					<th>Cancel reason</th>
					<th>Action</th>
				</tr>

				<c:forEach var="s" items="${salesList}">

					<c:url var="saleUpdate" value="SaleServlet">
						<c:param name="command" value="EDIT" />
						<c:param name="saleId" value="${s.saleId}" />
					</c:url>

					<tr>
						<td>${s.saleId}</td>
						<td>${s.productId}</td>
						<td>${s.leadId}</td>
						<td><fmt:formatDate value="${s.saleDate}"
								pattern="yyyy-MM-dd HH:mm" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${s.saleDeliveryDate}" /></td>
						<td>${s.saleDeliveryAddress}</td>
						<td>${s.saleObs}</td>
						<td>${s.saleStatus}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${s.saleCancelDate}" /></td>
						<td>${s.saleCancelReason}</td>
						<td><a href="${saleUpdate}">Update</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<footer> </footer>

</body>
</html>