<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
    <title>Formulaire Livre - Bibliothèque</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">

</head>
<body>
<div class="page-container">
    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-brand">
                <a href="<c:url value='/home.jsp'/>">📚 Bibliothèque</a>
            </div>
            <ul class="nav-menu">
                <li><a href="<c:url value='/home.jsp'/>">Accueil</a></li>
                <li><a href="<c:url value='/livres'/>">Mes Livres</a></li>
                <li><a href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>" class="nav-active">Ajouter un Livre</a></li>
                <li><a href="<c:url value='/about.jsp'/>">À Propos</a></li>
            </ul>
        </div>
    </nav>

    <div class="app">
        <c:choose>
            <c:when test="${empty livre}">
                <div class="form-header">
                    <h1>📖 Ajouter un nouveau livre</h1>
                    <p class="subtitle">Remplissez les informations du livre à ajouter à votre bibliothèque.</p>
                </div>

                <form method="post" action="<c:url value='/livres'/>" class="form-container">
                    <input type="hidden" name="action" value="create"/>

                    <div class="form-group">
                        <label for="titre" class="form-label">📕 Titre du livre</label>
                        <input 
                            id="titre" 
                            name="titre" 
                            type="text" 
                            class="form-control"
                            placeholder="Ex: Le Seigneur des Anneaux" 
                            required
                            autofocus/>
                        <small class="form-text">Le titre de votre livre</small>
                    </div>

                    <div class="form-group">
                        <label for="auteur" class="form-label">✍️ Auteur</label>
                        <input 
                            id="auteur" 
                            name="auteur" 
                            type="text" 
                            class="form-control"
                            placeholder="Ex: J.R.R. Tolkien" 
                            required/>
                        <small class="form-text">L'auteur du livre</small>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">
                            ✅ Créer le livre
                        </button>
                        <a href="<c:url value='/livres'/>" class="btn btn-secondary">
                            ❌ Annuler
                        </a>
                    </div>
                </form>
            </c:when>

            <c:otherwise>
                <div class="form-header">
                    <h1>✏️ Modifier livre #<c:out value="${livre.id}"/></h1>
                    <p class="subtitle">Mettez à jour les informations du livre existant.</p>
                </div>

                <form method="post" action="<c:url value='/livres'/>" class="form-container">
                    <input type="hidden" name="action" value="update"/>
                    <input type="hidden" name="id" value="${livre.id}"/>

                    <div class="form-group">
                        <label for="titre" class="form-label">📕 Titre du livre</label>
                        <input 
                            id="titre" 
                            name="titre" 
                            type="text" 
                            class="form-control"
                            value="${livre.titre}" 
                            placeholder="Ex: Le Seigneur des Anneaux" 
                            required
                            autofocus/>
                        <small class="form-text">Le titre de votre livre</small>
                    </div>

                    <div class="form-group">
                        <label for="auteur" class="form-label">✍️ Auteur</label>
                        <input 
                            id="auteur" 
                            name="auteur" 
                            type="text" 
                            class="form-control"
                            value="${livre.auteur}" 
                            placeholder="Ex: J.R.R. Tolkien" 
                            required/>
                        <small class="form-text">L'auteur du livre</small>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">
                            💾 Enregistrer les modifications
                        </button>
                        <a href="<c:url value='/livres'/>" class="btn btn-secondary">
                            ↩️ Retour
                        </a>
                    </div>
                </form>
            </c:otherwise>
        </c:choose>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <p>&copy; 2025 Gestion de Bibliothèque - Projet Académique</p>
            <p>Conçu avec ❤️ en utilisant Jakarta EE (Servlets & JSP)</p>
        </div>
    </footer>
</div>
</body>
</html>
