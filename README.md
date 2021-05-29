# exb4587bis
TRIGGER adapté à un cas concret

## Contexte des deux exemples
Avec le client MySQL de votre choix (SqlWorkbench, PhpMyAdmin, Adminer, ...), charger les 2 fichiers (ddl.sql et dml.sql) pour établir le contexte dans la base (construction des tables).

## Mode d'emploi pour le TRIGGER (EXB4587employee)
### Cas d'utilisation
tracer dans une table _Audit_ tout changement sur le champ _title_ d'un enregistrement de la table _Employee_. A chaque fois qu'un changement sur un champ _title_ est fait (par un UPDATE), un enregistrement est ajouté dans la table Audit.
### Mise en oeuvre
- Charger le fichier create_trigger.sql.
- Vous pouvez ensuite jouer successivement les requêtes du fichier play_trigger.sql pour observer le comportement de la table Audit à la modification d'un enregistrement de la table Employee.

## Mode d'emploi pour la transaction dans la procédure stockée (EXB6245txn)
### Cas d'utilisation
définir une procédure stockée qui vérifie que le nombre de manager de la table Employee est inférieur ou égal à 2 sinon, les mises à jour du champ _title_ sont refusées.
### Mise en oeuvre
montre l'usage d'instruction SQL de type __IF__ dans le contexte d'une procédure stockée. Pour compléter l'explication, on montre comment effectuer un __ROLLBACK__ dans le cadre d'une procédure stockée (avec les dernières versions de MySQL, il est nécessaire de définir un gestionnaire ou __HANDLER__).
- Charger le fichier create_proc.sql.
- Vous pouvez ensuite jouer successivement les requêtes du fichier play_proc.sql pour observer le comportement de la table Audit à la modification d'un enregistrement de la table Employee.

