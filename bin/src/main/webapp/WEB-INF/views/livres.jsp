<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8"/>
  <title>Gestion Livres - Bibliothèque</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
<div class="app">
  <header>
    <div>
      <h1>📚 Bibliothèque</h1>
      <div class="subtitle">Gestion simple et élégante de votre collection de livres</div>
    </div>
    <span class="badge">Total : <c:out value="${fn:length(livres)}" default="0"/> livres</span>
  </header>

  <div class="toolbar">
    <div></div>
    <a class="btn btn-primary" href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">
      <span>➕ Nouveau Livre</span>
    </a>
  </div>

  <c:choose>
    <c:when test="${empty livres}">
      <div class="empty-state">
        <div class="empty-state-icon">📖</div>
        <div class="empty-state-text">
          <strong>Votre bibliothèque est vide</strong><br/>
          Commencez par ajouter votre premier livre pour enrichir votre collection.
        </div>
        <a class="btn btn-primary" href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">
          ➕ Ajouter un Livre
        </a>
      </div>
    </c:when>
    <c:otherwise>
      <table>
        <thead>
        <tr>
          <th>ID</th>
          <th>Titre</th>
          <th>Auteur</th>
          <th class="col-actions">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${livres}" var="l">
          <tr>
            <td><strong>#${l.id}</strong></td>
            <td>
              <strong><c:out value="${l.titre}"/></strong>
            </td>
            <td><c:out value="${l.auteur}"/></td>
            <td class="col-actions">
              <div class="row-actions">
                <a class="btn-link" href="<c:url value='/livres'>
                                            <c:param name='action' value='edit'/>
                                            <c:param name='id' value='${l.id}'/>
                                          </c:url>">
                  ✏️ Modifier
                </a>
                <form method="post" action="<c:url value='/livres'/>" style="display:inline" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer ce livre ?');">
                  <input type="hidden" name="action" value="delete"/>
                  <input type="hidden" name="id" value="${l.id}"/>
                  <button type="submit" class="btn-link btn-link-danger">🗑️ Supprimer</button>
                </form>
              </div>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </c:otherwise>
  </c:choose>
</div>
</body>
</html>
