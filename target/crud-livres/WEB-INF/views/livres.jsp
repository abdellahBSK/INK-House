<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
    <title>Gestion Livres - Bibliothèque</title>
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
                <li><a href="<c:url value='/livres'/>" class="nav-active">Mes Livres</a></li>
                <li><a href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">Ajouter un Livre</a></li>
                <li><a href="<c:url value='/about.jsp'/>">À Propos</a></li>
            </ul>
        </div>
    </nav>

    <div class="app">
        <!-- Header Section -->
        <div class="page-header">
            <div>
                <h1>📖 Ma Bibliothèque</h1>
                <p class="subtitle">Votre collection personnelle de livres</p>
            </div>
            <div class="header-stats">
                <div class="stat-badge">
                    <span class="badge-number"><c:out value="${fn:length(livres)}" default="0"/></span>
                    <span class="badge-label">Livres</span>
                </div>
            </div>
        </div>

        <!-- Toolbar -->
        <div class="toolbar">
            <a class="btn btn-primary" href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">
                <span>➕ Ajouter un Livre</span>
            </a>
        </div>

        <!-- Success Message (if any) -->
        <c:if test="${not empty successMessage}">
            <div class="alert alert-success">
                ✅ ${successMessage}
                <button class="alert-close" onclick="this.parentElement.style.display='none';">×</button>
            </div>
        </c:if>

        <!-- Empty State -->
        <c:choose>
            <c:when test="${empty livres}">
                <div class="empty-state">
                    <div class="empty-state-icon">📚</div>
                    <div class="empty-state-content">
                        <h2>Votre bibliothèque est vide</h2>
                        <p>Commencez par ajouter votre premier livre pour enrichir votre collection.</p>
                    </div>
                    <a class="btn btn-primary" href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">
                        ➕ Ajouter mon Premier Livre
                    </a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="books-grid">
                    <c:forEach items="${livres}" var="l">
                        <div class="book-card">
                            <!-- Book Cover -->
                            <div class="book-cover">
                                <img src="<c:url value='${l.imagePath}'/>" alt="${l.titre}" class="cover-image" onerror="this.src='<c:url value='/images/default-book.jpg'/>'">
                                <div class="book-overlay">
                                    <div class="card-actions">
                                        <a href="<c:url value='/livres'><c:param name='action' value='edit'/><c:param name='id' value='${l.id}'/></c:url>" class="btn btn-sm btn-primary">
                                            ✏️ Modifier
                                        </a>
                                        <button type="button" class="btn btn-sm btn-danger" onclick="deleteBook(${l.id}, '${l.titre}')">
                                            🗑️ Supprimer
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <!-- Book Info -->
                            <div class="book-info">
                                <h3 class="book-title" title="${l.titre}">
                                    <c:out value="${l.titre}"/>
                                </h3>
                                <p class="book-author">
                                    par <strong><c:out value="${l.auteur}"/></strong>
                                </p>
                                <div class="book-id">
                                    ID: <strong>#${l.id}</strong>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
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

<!-- Delete Confirmation Modal -->
<script>
function deleteBook(id, title) {
    if (confirm('⚠️ Êtes-vous sûr de vouloir supprimer le livre "' + title + '" ?\n\nCette action est irréversible.')) {
        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '<c:url value="/livres"/>';
        
        const actionInput = document.createElement('input');
        actionInput.type = 'hidden';
        actionInput.name = 'action';
        actionInput.value = 'delete';
        
        const idInput = document.createElement('input');
        idInput.type = 'hidden';
        idInput.name = 'id';
        idInput.value = id;
        
        form.appendChild(actionInput);
        form.appendChild(idInput);
        document.body.appendChild(form);
        form.submit();
    }
}
</script>
</body>
</html>
