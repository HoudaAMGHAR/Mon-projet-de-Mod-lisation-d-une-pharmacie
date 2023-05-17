
INSERT INTO Fournisseur (Id_fournisseur, Nom_fournisseur, Prenom_fournisseur, Adresse_fournisseur, Telephone_fournisseur)
VALUES 
    ('F01', 'Dupont', 'Pierre', '12 Rue de la Paix, 75001 Paris', '01 23 45 67 89'),
    ('F02', 'Martin', 'Sophie', '7 Rue de la Liberté, 69001 Lyon', '04 12 34 56 78'),
    ('F03', 'Garcia', 'Juan', 'Calle de la Montera, 28013 Madrid', '+34 91 23 45 67'),
    ('F04', 'Smith', 'John', '123 Main Street, New York, NY 10001', '+1 212-555-1234'),
    ('F05', 'Kim', 'Soo-Jin', '123 Gangnam-daero, Gangnam-gu, Seoul', '+82 2-555-1234'),
    ('F06', 'Müller', 'Hans', 'Musterstraße 1, 12345 Berlin', '+49 30 123456'),
    ('F07', 'Chen', 'Wei', '123 Nanjing Road, Shanghai', '+86 21 5555 1234'),
    ('F08', 'González', 'Maria', 'Av. de Mayo 666, Buenos Aires', '+54 11 5555-1234'),
    ('F09', 'Lee', 'Jae-Sung', '123 Yeouido-dong, Yeongdeungpo-gu, Seoul', '+82 2-555-1234'),
    ('F10', 'Nguyen', 'Thi', '123 Nguyen Trai, Hanoi', '+84 24 5555 1234'),
    ('F11', 'Dubois', 'Marie', '7 Rue de la République, 13001 Marseille', '04 91 23 45 67'),
    ('F12', 'Wang', 'Li', '123 Nanjing West Road, Shanghai', '+86 21 5555 1234'),
    ('F13', 'Sanchez', 'Carlos', 'Calle Gran Vía 1, 28013 Madrid', '+34 91 23 45 67'),
    ('F14', 'Suzuki', 'Takeshi', '123 Ginza, Chuo-ku, Tokyo', '+81 3-5555-1234'),
    ('F15', 'Rousseau', 'Jean', '12 Rue de la Liberté, 69002 Lyon', '04 12 34 56 78');


INSERT INTO Famille (Nom_famille)
VALUES 
    ('Antibiotiques'),
    ('Anti-inflammatoires'),
    ('Antalgiques'),
    ('Anxiolytiques'),
    ('Hypnotiques'),
    ('Antihistaminiques'),
    ('Antidépresseurs'),
    ('Antispasmodiques'),
    ('Antiparkinsoniens'),
    ('Anticancéreux');


INSERT INTO Forme (Nom_forme)
VALUES 
    ('Comprimé'),
    ('Capsule'),
    ('Gélule'),
    ('Sirop'),
    ('Solution buvable'),
    ('Injection'),
    ('Pommade'),
    ('Crème'),
    ('Gel'),
    ('Collyre');


INSERT INTO Vendeur (Id_vendeur, Nom_vendeur, Prenom_vendeur, Adresse_vendeur, Telephone_vendeur)
VALUES 
    ('V01', 'Dupont', 'Jean', '5 rue de la Paix, Paris', '01 23 45 67 89'),
    ('V02', 'Martin', 'Sophie', '10 avenue des Champs-Élysées, Paris', '01 34 56 78 90'),
    ('V03', 'Garcia', 'Maria', '24 rue du Faubourg Saint-Antoine, Paris', '01 45 67 89 01'),
    ('V04', 'Leclerc', 'Luc', '8 boulevard de la Madeleine, Paris', '01 56 78 90 12'),
    ('V05', 'Roux', 'Pierre', '12 rue de la République, Lyon', '04 56 78 90 12'),
    ('V06', 'Lefebvre', 'Julie', '15 avenue Victor Hugo, Lille', '03 23 45 67 89'),
    ('V07', 'Fournier', 'Emilie', '2 place Bellecour, Lyon', '04 34 56 78 90'),
    ('V08', 'Dumont', 'François', '7 rue des Rosiers, Paris', '01 67 89 01 23'),
    ('V09', 'Bernard', 'Laure', '11 rue Saint-Antoine, Lille', '03 45 67 89 01'),
    ('V10', 'Moreau', 'Nicolas', '23 avenue de la République, Marseille', '04 56 78 90 23'),
    ('V11', 'Girard', 'Marie', '19 rue Saint-Jean, Bordeaux', '05 67 89 01 23'),
    ('V12', 'Petit', 'Antoine', '3 rue de la Liberté, Lyon', '04 12 34 56 78'),
    ('V13', 'Robert', 'Catherine', '6 avenue de la Gare, Nantes', '02 23 45 67 89'),
    ('V14', 'Durand', 'Françoise', '9 boulevard Carnot, Nice', '04 45 67 89 01'),
    ('V15', 'Lopez', 'Manuel', '18 rue de la Boétie, Paris', '01 56 78 90 23');


INSERT INTO Médecin (Id_medecin, Nom_medecin, Prenom_medecin, Telephone_medecin, Adresse_medecin)
VALUES 
    ('M01', 'Dubois', 'Sophie', '01 23 45 67 89', '12 rue de la Paix, Paris'),
    ('M02', 'Morel', 'Pierre', '01 34 56 78 90', '34 avenue des Champs-Élysées, Paris'),
    ('M03', 'Lefèvre', 'Marie', '01 45 67 89 01', '56 rue du Faubourg Saint-Antoine, Paris'),
    ('M04', 'Martin', 'Antoine', '01 56 78 90 12', '78 boulevard de la Madeleine, Paris'),
    ('M05', 'Roux', 'Emilie', '04 56 78 90 12', '45 rue de la République, Lyon'),
    ('M06', 'Lecomte', 'Alexandre', '03 23 45 67 89', '67 avenue Victor Hugo, Lille'),
    ('M07', 'Fontaine', 'Julie', '04 34 56 78 90', '89 place Bellecour, Lyon'),
    ('M08', 'Lemoine', 'François', '01 67 89 01 23', '23 rue des Rosiers, Paris'),
    ('M09', 'Gauthier', 'Laure', '03 45 67 89 01', '67 rue Saint-Antoine, Lille'),
    ('M10', 'Moulin', 'Nicolas', '04 56 78 90 23', '23 avenue de la République, Marseille'),
    ('M11', 'Lacroix', 'Marie', '05 67 89 01 23', '12 rue Saint-Jean, Bordeaux'),
    ('M12', 'Leroy', 'Antoine', '04 12 34 56 78', '45 rue de la Liberté, Lyon'),
    ('M13', 'Giraud', 'Catherine', '02 23 45 67 89', '78 avenue de la Gare, Nantes'),
    ('M14', 'Dupuis', 'Françoise', '04 45 67 89 01', '23 boulevard Carnot, Nice'),
    ('M15', 'Benoît', 'Manuel', '01 56 78 90 23', '90 rue de la Boétie, Paris');


INSERT INTO Commande (Id_commande, Date_commande, Id_fournisseur)
VALUES 
    ('C01', '2022-01-15', 'F01'),
    ('C02', '2022-01-16', 'F02'),
    ('C03', '2022-01-17', 'F03'),
    ('C04', '2022-01-18', 'F01'),
    ('C05', '2022-01-19', 'F04'),
    ('C06', '2022-01-20', 'F06'),
    ('C07', '2022-01-21', 'F02'),
    ('C08', '2022-01-22', 'F08'),
    ('C09', '2022-01-23', 'F11'),
    ('C10', '2022-01-24', 'F10'),
    ('C11', '2022-01-25', 'F11'),
    ('C12', '2022-01-26', 'F03'),
    ('C13', '2022-01-27', 'F13'),
    ('C14', '2022-01-28', 'F08'),
    ('C15', '2022-01-29', 'F15');



INSERT INTO Laboratoire (Id_labo, Nom_labo)
VALUES 
    ('L01', 'Pfizer'),
    ('L02', 'Novartis'),
    ('L03', 'Sanofi'),
    ('L04', 'Roche'),
    ('L05', 'Merck'),
    ('L06', 'GSK'),
    ('L07', 'Abbott'),
    ('L08', 'Bayer'),
    ('L09', 'AstraZeneca'),
    ('L10', 'Johnson & Johnson'),
    ('L11', 'Eli Lilly'),
    ('L12', 'Bristol Myers Squibb'),
    ('L13', 'Genentech'),
    ('L14', 'Amgen'),
    ('L15', 'Biogen');

INSERT INTO Produit(Id_produit, Nom_commercial)
VALUES 
('P1','Aspirine'),
('p2','Paracetamol'), 
('P3','Ibuprofene'), 
('P4','Amoxicilline'),
('P5','Doliprane'),
('P6','Voltarene'),
('P7','Advil'),
('P8','Clamoxyl'),
('P9','Efferalgan'),
('P10','Nurofen'),
('P11','Flagyl'),
('P12','Amodex'),
('P13','Solupred'),
('P14','Ciflox'),
('P15','Zovirax'), 




INSERT INTO Ligne_commande (Id_ligne_commande, QT_commande, Id_commande)
VALUES 
    ('LC01', 10, 'C01'),
    ('LC02', 5, 'C01'),
    ('LC03', 20, 'C02'),
    ('LC04', 15, 'C02'),
    ('LC05', 30, 'C03'),
    ('LC06', 25, 'C03'),
    ('LC07', 10, 'C04'),
    ('LC08', 5, 'C04'),
    ('LC09', 20, 'C05'),
    ('LC10', 15, 'C05'),
    ('LC11', 30, 'C06'),
    ('LC12', 25, 'C06'),
    ('LC13', 10, 'C07'),
    ('LC14', 5, 'C07'),
    ('LC15', 20, 'C08');



INSERT INTO Patient (Id_patient, Nom_patient, Num_secu, Adresse_patient, Telephone_patient, Id_medecin)
VALUES 
('P001', 'Dupont', '1234567890123', '15 Rue des Lilas, 75010 Paris', '01 23 45 67 89', 'M01'),
('P002', 'Martin', '2345678901234', '23 Rue de la Gare, 69002 Lyon', '04 78 56 34 12', 'M02'),
('P003', 'Dubois', '3456789012345', '7 Rue de la Liberté, 13001 Marseille', '04 91 23 45 67', 'M03'),
('P004', 'Berger', '4567890123456', '2 Rue des Moulins, 54000 Nancy', '03 83 56 78 90', 'M01'),
('P005', 'Lefebvre', '5678901234567', '45 Rue de la Paix, 59000 Lille', '03 20 45 67 89', 'M02'),
('P006', 'Rousseau', '6789012345678', '12 Rue du Château, 33000 Bordeaux', '05 56 78 90 12', 'M03'),
('P007', 'Fournier', '7890123456789', '21 Rue du Temple, 75004 Paris', '01 45 67 89 01', 'M01'),
('P008', 'Mercier', '8901234567890', '32 Rue de la République, 69001 Lyon', '04 72 34 56 78', 'M02'),
('P009', 'Girard', '9012345678901', '5 Rue de la Victoire, 13002 Marseille', '04 91 67 89 01', 'M03'),
('P010', 'Dupuis', '0123456789012', '9 Rue des Roses, 54000 Nancy', '03 83 45 67 89', 'M01'),
('P011', 'Durand', '1234567890123', '16 Rue de la Gare, 59000 Lille', '03 20 78 90 12', 'M02'),
('P012', 'Lemaire', '2345678901234', '20 Rue du Palais, 33000 Bordeaux', '05 56 34 56 78', 'M03'),
('P013', 'Moreau', '3456789012345', '3 Rue des Fleurs, 75011 Paris', '01 34 56 78 90', 'M01'),
('P014', 'Dumont', '4567890123456', '8 Rue du Port, 69003 Lyon', '04 78 12 34 56', 'M02'),
('P015', 'Roussel', '5678901234567', '14 Rue de la Fontaine, 13003 Marseille', '04 91 45 67 89', 'M03');

INSERT INTO Médicamment(Id_produit, Nom_commercial, Nom_chimique, Id_labo) VALUES 
('PRD001', 'Aspirine', 'Acide acétylsalicylique', 'L01'),
('PRD002', 'Paracétamol', 'Acétaminophène', 'L02'),
('PRD003', 'Ibuprofène', 'Ibuprofène', 'L01'),
('PRD004', 'Amoxicilline', 'Amoxicilline', 'L03'),
('PRD005', 'Doliprane', 'Paracétamol', 'L04'),
('PRD006', 'Voltarène', 'Diclofénac', 'L05'),
('PRD007', 'Advil', 'Ibuprofène', 'L07'),
('PRD008', 'Clamoxyl', 'Amoxicilline', 'L03'),
('PRD009', 'Efferalgan', 'Paracétamol', 'L04'),
('PRD010', 'Nurofen', 'Ibuprofène', 'L01'),
('PRD011', 'Flagyl', 'Métronidazole', 'L06'),
('PRD012', 'Amodex', 'Amoxicilline', 'L03'),
('PRD013', 'Solupred', 'Prednisolone', 'L07'),
('PRD014', 'Ciflox', 'Ciprofloxacine', 'L08'),
('PRD015', 'Zovirax', 'Aciclovir', 'L09');




INSERT INTO Ordonance (Id_ordonnance, Id_patient, Id_vendeur, Id_medecin)
VALUES ('ORD001', 'P001', 'V01', 'MED001'),
       ('ORD002', 'P002', 'V02', 'MED002'),
       ('ORD003', 'P007', 'V02', 'MED003'),
       ('ORD004', 'P004', 'V04', 'MED004'),
       ('ORD005', 'P005', 'V07', 'MED005'),
       ('ORD006', 'P005', 'V07', 'MED006'),
       ('ORD007', 'P003', 'V07', 'MED007'),
       ('ORD008', 'P009', 'V08', 'MED008'),
       ('ORD009', 'P009', 'V09', 'MED009'),
       ('ORD010', 'P010', 'V010', 'MED010'),
       ('ORD011', 'P011', 'V010', 'MED011'),
       ('ORD012', 'P011', 'V012', 'MED012'),
       ('ORD013', 'P013', 'V013', 'MED013'),
       ('ORD014', 'P014', 'V013', 'MED014'),
       ('ORD015', 'P015', 'V015', 'MED015');

INSERT INTO se_compose_de(Id_commande, Id_produit)
VALUES
('C01', 'PRD001'),
('C02', 'PRD002'),
('C03', 'PRD001'),
('C04', 'PRD002'),
('C05', 'PRD003'),
('C06', 'PRD003'),
('C07', 'PRD007'),
('C08', 'PRD003'),
('C09', 'PRD007'),
('C010', 'PRD09'),
('C011', 'PRD011'),
('C012', 'PRD08'),
('C013', 'PRD07'),
('C014', 'PRD06'),
('C015', 'PRD05');




INSERT INTO avec(Id_produit, Nom_forme, Id_ordonnance, qte_prescrite, qte_delivré)
VALUES
('PRD001', 'Comprimé', 'ORD001', '30', '30'),
('PRD002', 'Gélule', 'ORD001', '20', '20'),
('PRD003', 'Sirop', 'ORD002', '150', '150'),
('PRD004', 'Comprimé', 'ORD002', '60', '60'),
('PRD005', 'Gélule', 'ORD003', '30', '0'),
('PRD006', 'Comprimé', 'ORD003', '20', '0'),
('PRD007', 'Sirop', 'ORD004', '100', '100'),
('PRD008', 'Comprimé', 'ORD004', '60', '0'),
('PRD009', 'Gélule', 'ORD005', '10', '10'),
('PRD010', 'Comprimé', 'ORD005', '20', '20'),
('PRD011', 'Sirop', 'ORD006', '200', '200'),
('PRD012', 'Comprimé', 'ORD006', '30', '30'),
('PRD013', 'Gélule', 'ORD007', '50', '0'),
('PRD014', 'Comprimé', 'ORD007', '10', '0'),
('PRD015', 'Sirop', 'ORD008', '80', '80');



INSERT INTO Existe(Id_produit, Nom_forme)
VALUES
('PRD001', 'Comprimé'),
('PRD002', 'Gélule'),
('PRD003', 'Sirop'),
('PRD004', 'Comprimé'),
('PRD005', 'Gélule'),
('PRD006', 'Comprimé'),
('PRD007', 'Sirop'),
('PRD008', 'Comprimé'),
('PRD009', 'Gélule'),
('PRD010', 'Comprimé'),
('PRD011', 'Sirop'),
('PRD012', 'Comprimé'),
('PRD013', 'Gélule'),
('PRD014', 'Comprimé'),
('PRD015', 'Sirop');

INSERT INTO Est_de_(Id_medicament, Nom_famille)
VALUES
('PRD001', 'Antalgiques'),
('PRD002', 'Antibiotiques'),
('PRD003', 'Antispasmodiques'),
('PRD004', 'Antalgiques'),
('PRD005', 'Antibiotiques'),
('PRD006', 'Antalgiques'),
('PRD007', 'Antispasmodiques'),
('PRD008', 'Antalgiques'),
('PRD009', 'Antibiotiques'),
('PRD010', 'Antalgiques'),
('PRD011', 'Antispasmodiques'),
('PRD012', 'Antalgiques'),
('PRD013', 'Antibiotiques'),
('PRD014', 'Antalgiques'),
('PRD015', 'Antispasmodiques');

INSERT INTO propose(Id_fournisseur,Id_Medicament)
VALUES
('F01', 'Antalgiques'),
('F02', 'Antibiotiques'),
('F03', 'Antispasmodiques'),
('F04', 'Antalgiques'),
('F05', 'Antibiotiques'),
('F06', 'Antalgiques'),
('F07', 'Antispasmodiques'),
('F08', 'Antalgiques'),
('F09', 'Antibiotiques'),
('F010', 'Antalgiques'),
('F011', 'Antispasmodiques'),
('F012', 'Antalgiques'),
('F013', 'Antibiotiques'),
('F014', 'Antalgiques'),
('F015', 'Antispasmodiques');

INSERT INTO prescrit(Id_ordonnance ,Id_Produit)
VALUES
('ORD001','PRD001'), 
('ORD002','PRD002'),
('ORD003','PRD003'),
('ORD004','PRD004'),
('ORD005','PRD005'),
('ORD006','PRD006'),
('ORD007','PRD007'),
('ORD008','PRD008'),
('ORD009','PRD009'),
('ORD0010','PRD0010'),
('ORD0011','PRD0011'),
('ORD0012','PRD0012'),
('ORD0013','PRD0013'),
('ORD0014','PRD0014'),
('ORD0015','PRD0015');
INSERT INTO se_substitue (Id_Medicament, Id_Produit)
VALUES
('M001', 1),
('M001', 2),
('M002', 3),
('M003', 4),
('M004', 5);
INSERT INTO existe (Id_Medicament, Nom_forme)
VALUES
('PRD001', 'Comprimé'),
('PRD001', 'Capsule'),
('PRD002', 'Comprimé'),
('PRD003', 'Comprimé'),
('PRD003', 'Sirop'),
('PRD004', 'Comprimé'),
('PRD004', 'Capsule'),
('PRD005', 'Comprimé'),
('PRD005', 'Sirop'),
('PRD006', 'Comprimé'),
('PRD007', 'Comprimé'),
('PRD007', 'Capsule'),
('PRD008', 'Comprimé'),
('PRD009', 'Comprimé'),
('PRD009', 'Sirop');








