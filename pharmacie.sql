CREATE TABLE Fournisseur(
   Id_fournisseur VARCHAR(50),
   Nom_fournisseur VARCHAR(50),
   Prenom_fournisseur VARCHAR(50),
   Adresse_fournisseur VARCHAR(50),
   Telephone_fournisseur VARCHAR(50),
   PRIMARY KEY(Id_fournisseur)
);

CREATE TABLE Forme (
Id_forme VARCHAR(50),
Libelle_forme VARCHAR(50),
PRIMARY KEY(Id_forme)
);

CREATE TABLE Famille(
Id_famille VARCHAR(50),
Libelle_famille VARCHAR(50),
PRIMARY KEY(Id_famille)
);

CREATE TABLE Vendeur(
   Id_vendeur VARCHAR(50),
   Nom_vendeur VARCHAR(50),
   Prenom_vendeur VARCHAR(50),
   Adresse_vendeur VARCHAR(50),
   Telephonre_vendeur VARCHAR(50),
   PRIMARY KEY(Id_vendeur)
);

CREATE TABLE Médecin(
   Id_medecin VARCHAR(50),
   Nom_medecin VARCHAR(50),
   Prenom_medecin VARCHAR(50),
   Telephone_medecin VARCHAR(50),
   Adresse_medecin VARCHAR(50),
   PRIMARY KEY(Id_medecin)
);

CREATE TABLE Commande(
   Id_commande VARCHAR(50),
   Date_commande VARCHAR(50),
   Id_fournisseur VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_commande),
   FOREIGN KEY(Id_fournisseur) REFERENCES Fournisseur(Id_fournisseur)
);

CREATE TABLE Laboratoire(
   Id_labo VARCHAR(50),
   Nom_labo VARCHAR(50),
   PRIMARY KEY(Id_labo)
);

CREATE TABLE Produit(
   Id_Produit COUNTER,
   Nom_commercial VARCHAR(50),
   PRIMARY KEY(Id_Produit)
);

CREATE TABLE Ligne_commande(
   Id_ligne_commande VARCHAR(50),
   QT_commande VARCHAR(50),
   Id_commande VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_ligne_commande),
   FOREIGN KEY(Id_commande) REFERENCES Commande(Id_commande)
);

CREATE TABLE Patient(
   Id_patient VARCHAR(50),
   Nom_patient VARCHAR(50),
   Num_secu VARCHAR(50),
   Adresse_patient VARCHAR(50),
   Telephone_patient VARCHAR(50),
   Id_medecin VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_patient),
   FOREIGN KEY(Id_medecin) REFERENCES Médecin(Id_medecin)
);

CREATE TABLE Médicamment(
   Id_Medicament VARCHAR(50),
   Nom_chimique VARCHAR(50),
   qte_stock INT,
   qte_min INT,
   Id_labo VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Medicament),
   FOREIGN KEY(Id_labo) REFERENCES Laboratoire(Id_labo)
);

CREATE TABLE Ordonance(
   Id_ordonnance VARCHAR(50),
   Id_patient VARCHAR(50) NOT NULL,
   Id_vendeur VARCHAR(50) NOT NULL,
   Id_medecin VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_ordonnance),
   FOREIGN KEY(Id_patient) REFERENCES Patient(Id_patient),
   FOREIGN KEY(Id_vendeur) REFERENCES Vendeur(Id_vendeur),
   FOREIGN KEY(Id_medecin) REFERENCES Médecin(Id_medecin)
);

CREATE TABLE se_compose_de(
   Id_ligne_commande VARCHAR(50),
   Id_Medicament VARCHAR(50),
   PRIMARY KEY(Id_ligne_commande, Id_Medicament),
   FOREIGN KEY(Id_ligne_commande) REFERENCES Ligne_commande(Id_ligne_commande),
   FOREIGN KEY(Id_Medicament) REFERENCES Médicamment(Id_Medicament)
);

CREATE TABLE avec(
   Id_Medicament VARCHAR(50),
   Nom_forme VARCHAR(50),
   Id_ordonnance VARCHAR(50),
   qte_delivrée INT,
   PRIMARY KEY(Id_Medicament, Nom_forme, Id_ordonnance),
   FOREIGN KEY(Id_Medicament) REFERENCES Médicamment(Id_Medicament),
   FOREIGN KEY(Nom_forme) REFERENCES Forme(Nom_forme),
   FOREIGN KEY(Id_ordonnance) REFERENCES Ordonance(Id_ordonnance)
);

CREATE TABLE Est_de_(
   Id_Medicament VARCHAR(50),
   Nom_famille VARCHAR(50),
   PRIMARY KEY(Id_Medicament, Nom_famille),
   FOREIGN KEY(Id_Medicament) REFERENCES Médicamment(Id_Medicament),
   FOREIGN KEY(Nom_famille) REFERENCES Famille(Nom_famille)
);

CREATE TABLE propose(
   Id_fournisseur VARCHAR(50),
   Id_Medicament VARCHAR(50),
   PRIMARY KEY(Id_fournisseur, Id_Medicament),
   FOREIGN KEY(Id_fournisseur) REFERENCES Fournisseur(Id_fournisseur),
   FOREIGN KEY(Id_Medicament) REFERENCES Médicamment(Id_Medicament)
);

CREATE TABLE existe(
   Id_Medicament VARCHAR(50),
   Nom_forme VARCHAR(50),
   PRIMARY KEY(Id_Medicament, Nom_forme),
   FOREIGN KEY(Id_Medicament) REFERENCES Médicamment(Id_Medicament),
   FOREIGN KEY(Nom_forme) REFERENCES Forme(Nom_forme)
);

CREATE TABLE prescrit(
   Id_ordonnance VARCHAR(50),
   Id_Produit INT,
   qte_prescrite INT,
   PRIMARY KEY(Id_ordonnance, Id_Produit),
   FOREIGN KEY(Id_ordonnance) REFERENCES Ordonance(Id_ordonnance),
   FOREIGN KEY(Id_Produit) REFERENCES Produit(Id_Produit)
);

CREATE TABLE se_substitue(
   Id_Medicament VARCHAR(50),
   Id_Produit INT,
   PRIMARY KEY(Id_Medicament, Id_Produit),
   FOREIGN KEY(Id_Medicament) REFERENCES Médicamment(Id_Medicament),
   FOREIGN KEY(Id_Produit) REFERENCES Produit(Id_Produit)
);
