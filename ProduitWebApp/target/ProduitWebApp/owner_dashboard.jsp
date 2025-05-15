<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau de Bord Propriétaire</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/dashboard_styles.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="fas fa-store"></i> Gestion Boutique Réparation</a>
        <span class="navbar-text">
                Tableau de Bord Propriétaire
            </span>
    </div>
</nav>

<div class="container-fluid dashboard-content">
    <h2 class="my-4">Tableau de Bord Propriétaire</h2>

    <!-- Key Metrics -->
    <div class="row mb-4">
        <div class="col-md-3">
            <div class="card text-white bg-primary">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-tools"></i> Réparations Actives</h5>
                    <p class="card-text fs-4">25</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-info">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-calendar-day"></i> Réparations (Aujourd'hui)</h5>
                    <p class="card-text fs-4">5</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-success">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-euro-sign"></i> Revenus (Mois)</h5>
                    <p class="card-text fs-4">€ 12,345.00</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-warning">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-file-invoice-dollar"></i> Commissions en Attente</h5>
                    <p class="card-text fs-4">€ 1,250.00</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Repairs Overview -->
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-header"><i class="fas fa-list-check"></i> Vue d'ensemble des Réparations par Statut</div>
                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            En Attente <span class="badge bg-secondary rounded-pill">8</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            En Cours <span class="badge bg-info rounded-pill">12</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Terminée <span class="badge bg-success rounded-pill">35</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            À Récupérer <span class="badge bg-warning rounded-pill">5</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Abandonnée/Annulée <span class="badge bg-danger rounded-pill">2</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Repairman Productivity -->
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-header"><i class="fas fa-chart-line"></i> Productivité des Réparateurs (Ce Mois)</div>
                <div class="card-body">
                    <table class="table table-sm table-hover">
                        <thead>
                        <tr><th>Réparateur</th><th>Réparations</th><th>Temps Moyen</th></tr>
                        </thead>
                        <tbody>
                        <tr><td>Jean Dupont</td><td>15</td><td>2.5 h</td></tr>
                        <tr><td>Aisha Benali</td><td>12</td><td>3.0 h</td></tr>
                        <tr><td>Marc Petit</td><td>18</td><td>2.1 h</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Financials & Loans -->
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-header"><i class="fas fa-hand-holding-usd"></i> Commissions et Prêts</div>
                <div class="card-body">
                    <h6>Commissions des Réparateurs</h6>
                    <p>Jean Dupont: <span class="text-success">Payé</span> - Aisha Benali: <span class="text-warning">En attente</span></p>
                    <h6>État des Prêts entre Réparateurs</h6>
                    <p>Total Prêté: € 300.00 | Total Emprunté: € 150.00</p>
                    <div class="progress mb-2">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">Prêts Remboursés</div>
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">Prêts Actifs</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Reports -->
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-header"><i class="fas fa-file-alt"></i> Rapports</div>
                <div class="card-body">
                    <button class="btn btn-outline-primary mb-2 w-100"><i class="fas fa-calendar-alt"></i> Générer Rapport Journalier</button>
                    <button class="btn btn-outline-secondary mb-2 w-100"><i class="fas fa-chart-pie"></i> Analyser Revenus (Période)</button>
                    <button class="btn btn-outline-info w-100"><i class="fas fa-file-pdf"></i> Exporter Données (PDF/CSV)</button>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12 mb-4">
            <div class="card">
                <div class="card-header"><i class="fas fa-chart-bar"></i> Analyse Comparative des Revenus (Placeholder)</div>
                <div class="card-body text-center">
                    <p class="text-muted">[Graphique: Revenus par Jour/Semaine/Mois/Année]</p>
                    <img src="https://via.placeholder.com/600x200.png?text=Revenue+Chart+Placeholder" alt="Revenue Chart Placeholder" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

</div>

<footer class="footer mt-auto py-3 bg-light">
    <div class="container text-center">
        <span class="text-muted">© 2025 Système de Gestion de Boutique de Réparation - Démo</span>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>