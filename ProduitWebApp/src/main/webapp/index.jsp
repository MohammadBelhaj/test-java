<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Accueil - Gestion Boutique Réparation</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="css/dashboard_styles.css">
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color: #f8f9fa;
    }
    .landing-container {
      text-align: center;
      padding: 40px;
      background-color: white;
      border-radius: 8px;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>
<div class="landing-container">
  <h1 class="mb-4">Système de Gestion de Boutique de Réparation</h1>
  <p class="lead mb-4">Veuillez sélectionner votre rôle pour accéder au tableau de bord de démonstration :</p>
  <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
    <a href="owner_dashboard.jsp" class="btn btn-primary btn-lg px-4 gap-3">
      <i class="fas fa-user-tie"></i> Tableau de Bord Propriétaire
    </a>
    <a href="repairman_dashboard.jsp" class="btn btn-success btn-lg px-4">
      <i class="fas fa-tools"></i> Tableau de Bord Réparateur
    </a>
  </div>
  <p class="mt-5 text-muted">Ceci est une démonstration visuelle et non fonctionnelle.</p>
</div>

<!-- Bootstrap JS Bundle (Popper.js and Bootstrap JS) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>