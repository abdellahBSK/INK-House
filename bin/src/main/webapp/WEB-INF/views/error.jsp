<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Erreur</title></head>
<body>
<h1>Erreur</h1>
<p><c:out value="${errorMessage}" default="Une erreur est survenue."/></p>
<p><a href="<c:url value='/livres'/>">Retour</a></p>
</body>
</html>
