<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String pseudo = (String) request.getAttribute("pseudo");
		String prenom = (String) request.getAttribute("prenom");
		String nom = (String) request.getAttribute("nom");
		String email = (String) request.getAttribute("email");
		String telephone = (String) request.getAttribute("telephone");
		String rue = (String) request.getAttribute("rue");
		String codePostale = (String) request.getAttribute("codePostale");
		String ville = (String) request.getAttribute("ville");
		String mdp = (String) request.getAttribute("mdp");
		/* String credit = (String) request.getAttribute("credit");  */
	%>
	<%=pseudo %>
	<%=prenom %>
	<%=nom %>
	<%=email %>
	<%=telephone %>
	<%=rue %>
	<%=codePostale %>
	<%=ville %>
	<%=mdp %>
	<%-- <%=credit %>  --%>
</body>
</html>