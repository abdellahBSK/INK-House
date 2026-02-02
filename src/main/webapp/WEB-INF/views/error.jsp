<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includes/includeTagLibs.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8"/>
  <title>Erreur</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <style>
    :root {
      --bg: #fef2f2;
      --card-bg: #ffffff;
      --danger: #dc2626;
      --danger-soft: #fee2e2;
      --text-main: #111827;
      --text-muted: #6b7280;
      --border: #fecaca;
      --radius: 12px;
      --shadow: 0 12px 30px rgba(185, 28, 28, 0.2);
    }

    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      background: radial-gradient(circle at top, #fee2e2 0, #fff7ed 55%);
      color: var(--text-main);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 32px 16px;
    }

    .card {
      width: 100%;
      max-width: 520px;
      background: linear-gradient(135deg, #ffffff 0%, #fff7f7 100%);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      padding: 22px 22px 20px;
      border: 1px solid rgba(248, 113, 113, 0.45);
    }

    h1 {
      font-size: 1.4rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      margin-bottom: 6px;
      color: var(--danger);
    }

    .message {
      margin-top: 8px;
      padding: 10px 12px;
      border-radius: 10px;
      background: var(--danger-soft);
      border: 1px solid var(--border);
      font-size: 0.9rem;
      color: #7f1d1d;
    }

    .hint {
      margin-top: 10px;
      font-size: 0.82rem;
      color: var(--text-muted);
    }

    .actions {
      margin-top: 16px;
      display: flex;
      justify-content: flex-end;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 8px 16px;
      border-radius: 999px;
      border: 1px solid transparent;
      font-size: 0.85rem;
      font-weight: 500;
      cursor: pointer;
      text-decoration: none;
      background: #111827;
      color: #f9fafb;
      transition: background 0.15s ease, transform 0.05s ease, box-shadow 0.15s ease;
    }

    .btn:hover {
      background: #020617;
      transform: translateY(-1px);
      box-shadow: 0 10px 22px rgba(15, 23, 42, 0.35);
    }
  </style>
</head>
<body>
<div class="card">
  <h1>Une erreur est survenue</h1>
  <div class="message">
    <c:out value="${errorMessage}" default="Une erreur inattendue s'est produite."/>
  </div>
  <p class="hint">
    Vous pouvez revenir à la liste des livres et réessayer l'opération.
  </p>
  <div class="actions">
    <a class="btn" href="<c:url value='/livres'/>">Retour à la liste</a>
  </div>
</div>
</body>
</html>
