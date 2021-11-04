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

Lorsque vous êtes assurés que RSrudio est bien installé dans votre environnement de travail vous n'avez plus qu'a télécharger le projet (conteneant le *F1_dataviz_r.r*, le *kaggle.json*, et le README.md) et à le dézipper. Il vous suffit maintenant de lancer RStudio et et d'aller dans :

- File (dans le coin en haut à gauche)
  - Open File (troisième ligne)'
  - Selectioner *F1_dataviz_r.r* dans le dossier précédemment dézippé'

- ou Ctrl+O
  - Selectioner *F1_dataviz_r.r* dans le dossier précédemment dézippé

Une fois le fichier ouvert cliqué sur *Run App* (en haut au centre). Le fichier vous installera tous les packages et les données s'ils ne sont pas présent sur votre machine et lancera ensuite le dashboard.

## Développer Guide

### Gérer les packages et les données

### Nettoyage des données et les fonctions

### L'exécution du dashboard

## Rapport d'analyse 

Dans ce projet le but était de mettre en évidence des informations à propos de la *F1*. 

Dans un premier temps, nous avons voulu montrer les circuits les plus présents dans le monde de la F1. Nous nous sommes vite rendus compte, grâce à ces graphes, que la F1 est avant tout un sport très européen. La majorité des Grands Prix et des circuits s'y trouve. Et le nombre de course qui ont eux lieu sur chaque circuit est globalement bien plus élevé en Europe que dans le reste du monde.

Dans un second temps, nous avons voulu faire une comparaison sur les temps de pit-stop pour les plus grandes écurie pour pouvoir les départager sur des critères qui ne sont pas uniquement basés sur des données récoltées sur la piste, mais aussi dans les stands. On s'est aperçu d'une sorte d'homogénéité, mais malgré tout, une différence s'est faite sur l'amplitude des résultats (soit le nombre de fois où une écurie arrivé à faire ce temps).

## Conclusion

Le but de ce dashboard est de donner un rapide aperçu de la F1 aux personnes qui ne connaissent pas ou très peu ce milieu, mais aussi de donner des compléments d'informations à des personnes qui connaitraient mieux cette discipline.

Ce projet a vocation à évoluer grâce à des idées de lecture des données supplémentaires ou des idées de personnes intéressées. N'hésitez pas à poster des commentaires et idées constructives pour améliorer le dashboard déjà existant.
