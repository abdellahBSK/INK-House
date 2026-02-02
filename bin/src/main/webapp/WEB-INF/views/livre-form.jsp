<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8"/>
  <title>Formulaire Livre - Bibliothèque</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
<div class="app">
  <c:choose>
    <c:when test="${empty livre}">
      <h1>📖 Ajouter un nouveau livre</h1>
      <div class="subtitle">Remplissez les informations du livre à ajouter à votre bibliothèque.</div>
      <form method="post" action="<c:url value='/livres'/>">
        <input type="hidden" name="action" value="create"/>

        <div class="field">
          <label for="titre">📕 Titre</label>
          <input id="titre" name="titre" type="text" placeholder="Ex: Le Seigneur des Anneaux" required/>
          <div class="helper">Le titre du livre</div>
        </div>

        <div class="field">
          <label for="auteur">✍️ Auteur</label>
          <input id="auteur" name="auteur" type="text" placeholder="Ex: J.R.R. Tolkien" required/>
          <div class="helper">L'auteur du livre</div>
        </div>

        <div class="actions">
          <button type="submit" class="btn btn-primary">✅ Créer le livre</button>
          <a class="btn btn-ghost" href="<c:url value='/livres'/>">❌ Annuler</a>
        </div>
      </form>
    </c:when>

    <c:otherwise>
      <h1>✏️ Modifier livre #<c:out value="${livre.id}"/></h1>
      <div class="subtitle">Mettez à jour les informations du livre existant.</div>
      <form method="post" action="<c:url value='/livres'/>">
        <input type="hidden" name="action" value="update"/>
        <input type="hidden" name="id" value="${livre.id}"/>

        <div class="field">
          <label for="titre">📕 Titre</label>
          <input id="titre" name="titre" type="text" value="${livre.titre}" placeholder="Ex: Le Seigneur des Anneaux" required/>
          <div class="helper">Le titre du livre</div>
        </div>

        <div class="field">
          <label for="auteur">✍️ Auteur</label>
          <input id="auteur" name="auteur" type="text" value="${livre.auteur}" placeholder="Ex: J.R.R. Tolkien" required/>
          <div class="helper">L'auteur du livre</div>
        </div>

        <div class="actions">
          <button type="submit" class="btn btn-primary">💾 Enregistrer les modifications</button>
          <a class="btn btn-ghost" href="<c:url value='/livres'/>">↩️ Retour</a>
        </div>
      </form>
    </c:otherwise>
  </c:choose>
</div>
</body>
</html>
