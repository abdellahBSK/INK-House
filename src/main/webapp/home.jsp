<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="WEB-INF/views/includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
    <title>Gestion de Bibliothèque - Accueil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">

</head>
<body>
<div class="page-container">
    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-brand">
                <a href="<c:url value='/home.jsp'/>">📚 BookStore</a>
            </div>
            <ul class="nav-menu">
                <li><a href="<c:url value='/home.jsp'/>" class="nav-active">Accueil</a></li>
                <li><a href="<c:url value='/livres'/>">Mes Livres</a></li>
                <li><a href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">Ajouter un Livre</a></li>
                <li><a href="<c:url value='/about.jsp'/>">À Propos</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Bienvenue dans votre Bibliothèque Personnelle</h1>
            <p>Gérez votre collection de livres de manière simple, élégante et profesionnelle</p>
            <div class="hero-buttons">
                <a href="<c:url value='/livres'/>" class="btn btn-primary btn-lg">
                    📖 Voir mes Livres
                </a>
                <a href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>" class="btn btn-secondary btn-lg">
                    ➕ Ajouter un Livre
                </a>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <h2>Pourquoi Choisir Notre Gestion de Bibliothèque ?</h2>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon">📚</div>
                <h3>Gestion Complète</h3>
                <p>Ajoutez, modifiez ou supprimez vos livres en quelques clics. Une interface intuitive pour un contrôle total.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🎨</div>
                <h3>Design Moderne</h3>
                <p>Interface épurée et responsive qui fonctionne sur tous vos appareils. Élegance et simplicité.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">⚡</div>
                <h3>Performance</h3>
                <p>Accès instantané à votre collection. Architecture légère et rapide pour une expérience fluide.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🔒</div>
                <h3>Stockage Sécurisé</h3>
                <p>Vos données restent en sécurité. Pas de synchronisation cloud externe, juste votre collection locale.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">📱</div>
                <h3>Responsive Design</h3>
                <p>Accédez à votre bibliothèque depuis n'importe quel appareil. Tablette, mobile ou desktop.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🎓</div>
                <h3>Architecture Académique</h3>
                <p>Bâti sur Jakarta EE avec Servlets & JSP. Un excellent exemple de développement MVC classique.</p>
            </div>
        </div>
    </section>

    <!-- Statistics Section -->
    <section class="statistics">
        <h2>Votre Collection</h2>
        <div class="stats-container">
            <div class="stat-item">
                <div class="stat-number" id="book-count">0</div>
                <div class="stat-label">Livres en Collection</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">∞</div>
                <div class="stat-label">Capacité Illimitée</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">✓</div>
                <div class="stat-label">Toujours Disponible</div>
            </div>
        </div>
        <script>
            // Fetch book count (optional - for now just show intro)
            document.getElementById('book-count').textContent = '0+';
        </script>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="cta-content">
            <h2>Prêt à Commencer ?</h2>
            <p>Créez votre première collection maintenant</p>
            <a href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>" class="btn btn-primary btn-lg">
                Ajouter votre Premier Livre
            </a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <p>&copy; 2025 Gestion de Bibliothèque - Projet Académique</p>
            <p>Conçu avec ❤️ en utilisant Jakarta EE (Servlets & JSP)</p>
            <p class="footer-links">
                <a href="<c:url value='/home.jsp'/>">Accueil</a> | 
                <a href="<c:url value='/livres'/>">Bibliothèque</a> | 
                <a href="<c:url value='/about.jsp'/>">À Propos</a>
            </p>
        </div>
    </footer>
</div>
</body>
</html>
