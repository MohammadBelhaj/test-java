<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau de Bord Réparateur</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/dashboard_styles.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="fas fa-store"></i> Gestion Boutique Réparation</a>
        <span class="navbar-text">
                Tableau de Bord Réparateur (Utilisateur: Jean Dupont)
            </span>
    </div>
</nav>

<div class="container-fluid dashboard-content">
    <h2 class="my-4">Tableau de Bord Réparateur</h2>

    <!-- Quick Actions -->
    <div class="mb-4">
        <button class="btn btn-lg btn-success" data-bs-toggle="modal" data-bs-target="#newRepairModal">
            <i class="fas fa-plus-circle"></i> Créer un Nouveau Ticket de Réparation
        </button>
    </div>

    <!-- My Assigned Repairs -->
    <div class="card mb-4">
        <div class="card-header"><i class="fas fa-clipboard-list"></i> Mes Réparations Assignées</div>
        <div class="card-body">
            <div class="mb-3">
                <label for="statusFilter" class="form-label">Filtrer par statut :</label>
                <select class="form-select w-auto d-inline-block" id="statusFilter">
                    <option selected>Tous</option>
                    <option value="en_attente">En Attente</option>
                    <option value="en_cours">En Cours</option>
                    <option value="termine">Terminé</option>
                    <option value="a_recuperer">À Récupérer</option>
                </select>
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID Ticket</th>
                        <th>Client</th>
                        <th>Appareil</th>
                        <th>Statut</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>R00123</td>
                        <td>Sophie Martin</td>
                        <td>iPhone 13 Pro</td>
                        <td><span class="badge bg-info">En Cours</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary" title="Voir Détails"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning" title="Modifier Statut" data-bs-toggle="modal" data-bs-target="#updateStatusModal"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-secondary" title="Ajouter Note Technique" data-bs-toggle="modal" data-bs-target="#addNoteModal"><i class="fas fa-sticky-note"></i></button>
                            <button class="btn btn-sm btn-outline-success" title="Générer Devis"><i class="fas fa-file-invoice"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>R00124</td>
                        <td>Ahmed Cherif</td>
                        <td>Samsung Galaxy S22</td>
                        <td><span class="badge bg-secondary">En Attente</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary" title="Voir Détails"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning" title="Modifier Statut" data-bs-toggle="modal" data-bs-target="#updateStatusModal"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-secondary" title="Ajouter Note Technique" data-bs-toggle="modal" data-bs-target="#addNoteModal"><i class="fas fa-sticky-note"></i></button>
                            <button class="btn btn-sm btn-outline-success" title="Générer Devis"><i class="fas fa-file-invoice"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>R00120</td>
                        <td>Laura Bernard</td>
                        <td>MacBook Air M1</td>
                        <td><span class="badge bg-success">Terminé</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary" title="Voir Détails"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning" title="Modifier Statut" data-bs-toggle="modal" data-bs-target="#updateStatusModal" disabled><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-secondary" title="Ajouter Note Technique" data-bs-toggle="modal" data-bs-target="#addNoteModal"><i class="fas fa-sticky-note"></i></button>
                            <button class="btn btn-sm btn-outline-success" title="Générer Devis" disabled><i class="fas fa-file-invoice"></i></button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- My Performance -->
    <div class="row mb-4">
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-check-circle"></i> Réparations Complétées (Semaine)</h5>
                    <p class="card-text fs-3">8</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-percentage"></i> Mes Commissions (En Attente)</h5>
                    <p class="card-text fs-3">€ 350.75</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-clock"></i> Temps Moyen / Réparation</h5>
                    <p class="card-text fs-3">2.8 h</p>
                </div>
            </div>
        </div>
    </div>

    <!-- My Loans -->
    <div class="card">
        <div class="card-header"><i class="fas fa-exchange-alt"></i> Mes Prêts (Accordés et Reçus)</div>
        <div class="card-body">
            <p>Prêts accordés à d'autres: € 50.00</p>
            <p>Prêts reçus d'autres: € 25.00</p>
            <p class="text-muted">[Tableau détaillé de l'historique des prêts ici]</p>
        </div>
    </div>
</div>

<!-- Modal: New Repair Ticket -->
<div class="modal fade" id="newRepairModal" tabindex="-1" aria-labelledby="newRepairModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newRepairModalLabel">Créer un Nouveau Ticket de Réparation</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="customerName" class="form-label">Nom du Client</label>
                        <input type="text" class="form-control" id="customerName" placeholder="Ex: Sophie Martin">
                    </div>
                    <div class="mb-3">
                        <label for="deviceInfo" class="form-label">Information sur l'Appareil</label>
                        <input type="text" class="form-control" id="deviceInfo" placeholder="Ex: iPhone 13 Pro, IMEI XXXXX">
                    </div>
                    <div class="mb-3">
                        <label for="problemDescription" class="form-label">Description du Problème</label>
                        <textarea class="form-control" id="problemDescription" rows="3" placeholder="Décrire le problème..."></textarea>
                    </div>
                    <!-- Add more fields as per Cahier des Charges -->
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-primary" onclick="alert('Action de sauvegarde (démo)')">Sauvegarder Ticket</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal: Update Status -->
<div class="modal fade" id="updateStatusModal" tabindex="-1" aria-labelledby="updateStatusModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateStatusModalLabel">Modifier Statut Réparation (Ticket R00123)</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <label for="newStatus" class="form-label">Nouveau Statut:</label>
                <select class="form-select" id="newStatus">
                    <option value="en_attente">En Attente</option>
                    <option value="en_cours" selected>En Cours</option>
                    <option value="termine">Terminé</option>
                    <option value="abandonne">Abandonné/Annulé</option>
                    <option value="urgente">Urgente</option>
                    <option value="a_recuperer">À Récupérer</option>
                </select>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-primary" onclick="alert('Statut mis à jour (démo)')">Mettre à Jour</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal: Add Technical Note -->
<div class="modal fade" id="addNoteModal" tabindex="-1" aria-labelledby="addNoteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addNoteModalLabel">Ajouter Note Technique (Ticket R00123)</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <label for="technicalNote" class="form-label">Note:</label>
                <textarea class="form-control" id="technicalNote" rows="4" placeholder="Entrez les détails techniques ici..."></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-primary" onclick="alert('Note ajoutée (démo)')">Ajouter Note</button>
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