--Sélectionner tous les fournisseurs :
SELECT * FROM Fournisseur;
--Sélectionner tous les médicaments de la famille "Antalgiques" :
SELECT * FROM Produit
WHERE Id_produit IN (
    SELECT Id_produit FROM Famille_produit
    WHERE Id_famille IN (
        SELECT Id_famille FROM Famille
        WHERE Nom_famille = 'Antalgiques'
    )
);
--Sélectionner tous les médicaments commandés par le fournisseur avec l'ID 'F01' :
SELECT Produit.*
FROM Produit
JOIN Ligne_commande ON Produit.Id_produit = Ligne_commande.Id_produit
JOIN Commande ON Ligne_commande.Id_commande = Commande.Id_commande
WHERE Commande.Id_fournisseur = 'F01';
--Sélectionner tous les patients du médecin avec l'ID 'M01' :
SELECT * FROM Patient
WHERE Id_medecin = 'M01';
--Sélectionner tous les médicaments commandés lors de la commande avec l'ID 'C01' :
SELECT Produit.*
FROM Produit
JOIN Ligne_commande ON Produit.Id_produit = Ligne_commande.Id_produit
WHERE Ligne_commande.Id_commande = 'C01';
--Calculer le nombre total de médicaments :
SELECT COUNT(*) AS Total_medicaments FROM Medicament;
--Calculer le nombre de médicaments par famille :
SELECT Famille.Nom_famille, COUNT(Medicament.Id_medicament) AS Nombre_medicaments
FROM Medicament
JOIN Famille ON Medicament.Id_famille = Famille.Id_famille
GROUP BY Famille.Nom_famille;
--Calculer le prix moyen des médicaments :
SELECT AVG(Prix) AS Prix_moyen FROM Medicament;
--Calculer le montant total des commandes passées :
SELECT SUM(Montant) AS Montant_total FROM Commande;
--Trouver le prix maximum et minimum par médicament :
SELECT Nom_produit, MAX(Prix) AS Prix_max, MIN(Prix) AS Prix_min
FROM Produit
GROUP BY Nom_produit;
--Calculer le nombre moyen de médicaments prescrits par patient :
SELECT AVG(nb_medicaments) AS Moyenne_medicaments_par_patient
FROM (SELECT Id_patient, COUNT(*) AS nb_medicaments
      FROM Prescription
      GROUP BY Id_patient) AS subquery;
--Calculer le montant total des commandes par vendeur :
SELECT Vendeur.Nom_vendeur, SUM(Commande.Montant) AS Montant_total
FROM Vendeur
JOIN Commande ON Vendeur.Id_vendeur = Commande.Id_vendeur
GROUP BY Vendeur.Nom_vendeur;
--Trouver le médecin qui a prescrit le plus de médicaments :
SELECT Id_medecin, COUNT(*) AS Nombre_medicaments_prescrits
FROM Prescription
GROUP BY Id_medecin
ORDER BY Nombre_medicaments_prescrits DESC
LIMIT 1;
--Obtenir tous les médicaments avec leur famille respective :
SELECT Medicament.Nom_medicament, Famille.Nom_famille
FROM Medicament
INNER JOIN Famille ON Medicament.Id_famille = Famille.Id_famille;
--Trouver tous les patients avec leurs prescriptions correspondantes :
SELECT Patient.Nom_patient, Prescription.Date_prescription
FROM Patient
INNER JOIN Prescription ON Patient.Id_patient = Prescription.Id_patient;
--Obtenir les détails des commandes avec les informations du client correspondant :
SELECT Commande.Num_commande, Client.Nom_client, Commande.Date_commande
FROM Commande
INNER JOIN Client ON Commande.Id_client = Client.Id_client;
--Trouver les produits et leurs catégories correspondantes :
SELECT Produit.Nom_produit, Categorie.Nom_categorie
FROM Produit
INNER JOIN Categorie ON Produit.Id_categorie = Categorie.Id_categorie;
--Obtenir les informations des patients avec leurs médecins traitants :
SELECT Patient.Nom_patient, Medecin.Nom_medecin
FROM Patient
INNER JOIN Medecin ON Patient.Id_medecin = Medecin.Id_medecin;
--Trouver les vendeurs et leurs commandes correspondantes :
SELECT Vendeur.Nom_vendeur, Commande.Num_commande, Commande.Montant
FROM Vendeur
INNER JOIN Commande ON Vendeur.Id_vendeur = Commande.Id_vendeur;
--Obtenir les informations des médicaments avec les prescriptions correspondantes :
SELECT Medicament.Nom_medicament, Prescription.Date_prescription, Prescription.Dosage
FROM Medicament
INNER JOIN Prescription ON Medicament.Id_medicament = Prescription.Id_medicament;
--Trouver les clients et leurs commandes correspondantes dans une plage de dates spécifique :
SELECT Client.Nom_client, Commande.Num_commande, Commande.Date_commande
FROM Client
INNER JOIN Commande ON Client.Id_client = Commande.Id_client
WHERE Commande.Date_commande BETWEEN '2023-01-01' AND '2023-12-31';























