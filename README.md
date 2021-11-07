# F1-R-Project

Projet de datavisualisation sur des données de F1 de 1950 à aujourd'hui (La dernière course enregistré est le premier GP d'Autriche de 2021)

## Les objectifs du projet 

Le but de ce projet est de réaliser de la datavisualisation à l'aide du langage R et des librairies fournie par le langage.

## Les prérequis

### D'où vient le dataset ?

Actuellement le projet est un script R dont le dataset est issu d'un projet 'kaggle' sur la F1 dont le lien est fourni ci-dessous :

lien du dataset sur [kaggle](https://www.kaggle.com/rohanrao/formula-1-world-championship-1950-2020).

Le dataset a été mis en ligne par 'Vopani' un utilisateur apparemment régulier de la plateforme ayant le grade de 'Grandmaster'.

Le projet est donc mis assez régulièrement à jour par la communauté. Il est donc possible que des GP de la saison 2021 ou des informations manquantes, voire erronées, soient mises à jour depuis le début du projet.

## User Guide

### L'environement de travail

Nous avons dans ce projet choisi de travailler avec l'environnement [anaconda](https://www.anaconda.com/products/individual), qui propose une grande diversité de libraries prè-installées.

Bien entendu, vous n'êtes pas obligé d'avoir anaconda sur votre machine. Il est néanmoins obligatoire d'avoir R et l'environement Rstudio d'installés sur votre machine pour executer le script. Si tel est le cas vous pouvez passer à l'etape suivante, sinon il vous faudra installer :

- Sous Windows [R](https://cran.r-project.org/bin/windows/base/) et [Rstudio](https://rstudio.com/products/rstudio/download/). 

- Sous linux [R](https://cran.r-project.org/bin/linux/) et [Rstudio](https://rstudio.com/products/rstudio/download/ ).  

Lorsque vous êtes assurés que RSrudio est bien installé dans votre environnement de travail vous n'avez plus qu'a télécharger le projet (conteneant le "*project R.Rproj*", le "*global.r*", le "*server.r*", le "*ui.r*", le "*kaggle.json*", et le "*README.md*") et à le dézipper. Il vous suffit maintenant de lancer RStudio et et d'aller dans :

- File (dans le coin en haut à gauche)
  - Open Project (septième ligne)'
  - Selectioner "*project R.Rproj*" dans le dossier précédemment dézippé'

Vous pouvez maintenant cliquer sur le fichier "*global.r*" dans la fenêtre inférieur droite pour ouvrir le fichier.

Une fois le fichier ouvert cliqué sur *Run App* (en haut au centre). Le fichier vous installera tous les packages et les données s'ils ne sont pas présent sur votre machine et lancera ensuite le dashboard.

## Développer Guide

Le code a été commenté et divisé en plusieurs parties pour faciliter la compréhension du code.

### Gérer les packages et les données

La partie I du code concerne dans un premier temps l'instalation des packages necessaires au fonctionemment du code. La structure présente dans le code permet de verifier si les packages sont déjà installés ou non pour eviter de les télécharger de nouveau. Si vous travaillez avec de nouveaux packages, n'hésitez pas à les rajouter en suivant la structure présentée.

Ensuite, la présence des datas est vérifiée, elles seront téléchargées dans le cas contraire. 

### Nettoyage des données et les fonctions

Dans la partie II nous chargeons simplement le dataset à partir de la fonction read.csv

la partie III traite les modification du code et les fonctions qui seront utilisées dans le dashboard, elles suivent la structure suivante :

- Netoyage et/ou traitemment des données
- Fonction utilisant les données modifiées
- et ainsi de suite

Chaque graphe sera donc créé par un traitemment de données et d'une fonction.

### L'exécution du dashboard

Pour finir, la partie IV du code consiste à créer le dashboard shiny en exécutant 2 autres fichiers : 
 
- Le premiers fichier (ui.r) s'ocuppe de l'interface graphique, c'est là que vous pourrez modifier l'interface du dashboard grace au package *shinydashboard*
- Le second fichier (server.r) s'occupe des interactions coté serveur (input/output)
- Et la dernière ligne du code permet de lancer le dashboard (shinyApp)

## Rapport d'analyse 

Dans ce projet le but était de mettre en évidence des informations à propos de la *F1*. 

Dans un premier temps, nous avons voulu montrer les circuits les plus présents dans le monde de la F1. Nous nous sommes vite rendus compte, grâce à ces graphes, que la F1 est avant tout un sport très européen. La majorité des Grands Prix et des circuits s'y trouve. Et le nombre de courses qui a lieu sur chaque circuit est globalement bien plus élevé en Europe que dans le reste du monde.

Dans un second temps, nous avons voulu faire une comparaison sur les temps de pit-stop pour les plus grandes écuries pour pouvoir les départager sur des critères qui ne sont pas uniquement basés sur des données récoltées sur la piste, mais aussi dans les stands. Nous avons constaté une certaine homogénéité, mais malgré tout, une différence s'est faite sur l'amplitude des résultats (soit le nombre de fois où une écurie arrivé à faire ce temps).

## Conclusion

Le but de ce dashboard est de donner un rapide aperçu de la F1 aux personnes qui ne connaissent pas ou très peu ce milieu, mais aussi de donner des compléments d'informations à des personnes qui connaitraient mieux cette discipline.

Ce projet a vocation à évoluer grâce à des idées de lecture des données supplémentaires ou des idées de personnes intéressées. N'hésitez pas à poster des commentaires et idées constructives pour améliorer le dashboard déjà existant.
