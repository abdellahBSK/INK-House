<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="WEB-INF/views/includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
    <title>À Propos - Gestion de Bibliothèque</title>
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
                <li><a href="<c:url value='/livres'><c:param name='action' value='new'/></c:url>">Ajouter un Livre</a></li>
                <li><a href="<c:url value='/about.jsp'/>" class="nav-active">À Propos</a></li>
            </ul>
        </div>
    </nav>

    <div class="app">
        <div class="about-section">
            <h1>À Propos de ce Projet</h1>
            
            <div class="about-content">
                <div class="about-card">
                    <h2>🎓 Contexte Académique</h2>
                    <p>
                        Cette application de gestion de bibliothèque est un projet académique moderne,
                        conçu pour démontrer les meilleures pratiques du développement web avec <strong>Jakarta EE</strong>.
                        Elle combine l'élégance d'une interface professionnelle avec la solidité d'une architecture MVC classique.
                    </p>
                </div>

                <div class="about-card">
                    <h2>⚙️ Stack Technologique</h2>
                    <ul class="tech-list">
                        <li><strong>Backend:</strong> Java + Jakarta EE (Servlets & JSP)</li>
                        <li><strong>Frontend:</strong> HTML5 + CSS3 (Responsive Design)</li>
                        <li><strong>Architecture:</strong> Model-View-Controller (MVC)</li>
                        <li><strong>Stockage:</strong> ArrayList (In-Memory)</li>
                        <li><strong>Build Tool:</strong> Maven</li>
                    </ul>
                </div>

                <div class="about-card">
                    <h2>✨ Caractéristiques</h2>
                    <ul class="features-list">
                        <li>✅ CRUD complet pour la gestion de livres</li>
                        <li>✅ Interface utilisateur moderne et responsive</li>
                        <li>✅ Affichage des livres en grille de cartes</li>
                        <li>✅ Confirmation avant suppression</li>
                        <li>✅ Support des images de couverture</li>
                        <li>✅ Navigation intuitive</li>
                        <li>✅ Statistiques en temps réel</li>
                        <li>✅ Code clean et maintenable</li>
                    </ul>
                </div>

                <div class="about-card">
                    <h2>🏗️ Architecture MVC</h2>
                    <p>
                        L'application suit le pattern Model-View-Controller:
                    </p>
                    <ul class="architecture-list">
                        <li><strong>Model:</strong> <code>Livre.java</code> - Classe représentant un livre</li>
                        <li><strong>Repository:</strong> <code>LivreRepository.java</code> - Gestion des données (ArrayList)</li>
                        <li><strong>Controller:</strong> <code>LivreServlet.java</code> - Gestion des requêtes HTTP</li>
                        <li><strong>Views:</strong> JSP files - Présentation (livres.jsp, livre-form.jsp, etc.)</li>
                    </ul>
                </div>

                <div class="about-card">
                    <h2>🎨 Design Professionnel</h2>
                    <p>
                        L'interface utilise des principes de design modernes:
                    </p>
                    <ul class="design-list">
                        <li>Palette de couleurs cohérente et professionnelle</li>
                        <li>Typographie lisible avec hiérarchie visuelle claire</li>
                        <li>Espacements généreux pour une meilleure lisibilité</li>
                        <li>Ombres subtiles pour la profondeur</li>
                        <li>Animations fluides et transitions douces</li>
                        <li>Responsive design pour tous les appareils</li>
                    </ul>
                </div>

                <div class="about-card">
                    <h2>📱 Responsive Design</h2>
                    <p>
                        L'application s'adapte parfaitement à tous les écrans:
                    </p>
                    <ul class="responsive-list">
                        <li>📱 Mobile: Optimisé pour petits écrans</li>
                        <li>📱 Tablettes: Layout flexible</li>
                        <li>🖥️ Desktop: Expérience complète</li>
                        <li>Grille de cartes adaptative</li>
                    </ul>
                </div>

                <div class="about-card">
                    <h2>👨‍💻 Développeur</h2>
                    <p>
                        Projet développé avec attention aux détails, en suivant les bonnes pratiques
                        du développement web professionnel et académique.
                    </p>
                </div>

                <div class="about-card highlight">
                    <h2>🚀 Déploiement</h2>
                    <p>
                        Cette application est un prototype académique prêt pour la production.
                        Elle peut être facilement déployée sur n'importe quel serveur compatible Jakarta EE
                        (Apache Tomcat 10+, JBoss Wildfly, etc.).
                    </p>
                </div>
            </div>

            <div class="cta-section" style="margin-top: 3rem;">
                <h2>Prêt à Utiliser l'Application ?</h2>
                <p>Commencez à gérer votre bibliothèque maintenant</p>
                <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;">
                    <a href="<c:url value='/home.jsp'/>" class="btn btn-secondary">
                        ← Retour à l'Accueil
                    </a>
                    <a href="<c:url value='/livres'/>" class="btn btn-primary">
                        📖 Voir mes Livres
                    </a>
                </div>
            </div>
        </div>
    </div>

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
