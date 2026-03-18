# Projet Portfolio : 🎵 Music Popularity Analysis / Analyse de la Popularité Musicale

## English Version 🇬🇧

## Project Overview
This project aims to **analyze the factors influencing the popularity of music tracks**. Using SQL and Python, we cleaned, structured, and explored the dataset to provide actionable insights for music analytics and decision-making.

### Dataset
- Source: [Spotify Enriched Dataset](https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset)
- Size: 89,741 tracks
- Features: audio metrics (tempo, danceability, energy), track details (genre, duration), and popularity score

  
#### Note on Popularity Metric:
The “popularity” score from Spotify reflects mainly the **number of streams** for each track ([Spotify API documentation](https://developer.spotify.com/documentation/web-api/reference/tracks/get-track/)). For our analysis, we grouped tracks into **popularity buckets** to simplify comparisons.


## Data Cleaning & Feature Engineering
- Removed duplicates and irrelevant records
- Standardized variable formats
- Created new features:
  - Track length categories
  - Binary mood indicators
  - Popularity segments (1. Non Popular → 5. Very High Popularity)

## Analysis & Key Insights
We compared the features of tracks in the **lowest vs highest popularity buckets**:

| Feature       | Non-Popular | High Popularity | % Difference |
|---------------|------------|----------------|--------------|
| Danceability  | 0.578      | 0.599          | +3.48%       |
| Energy        | 0.591      | 0.642          | +8.56%       |
| Tempo         | 119.56     | 120.60         | +0.86%       |

**🎯 Practical / Business Insight:**  
Tracks with higher danceability and energy tend to be slightly more popular. These insights could inform **playlist curation, marketing strategy, or music recommendation algorithms**, showing an understanding of data-driven decision-making.

## Tools & Skills
- SQL: data cleaning, transformation, feature creation
- Python: exploratory analysis, visualization
- Looker Studio: interactive dashboard
- Segmented tracks by popularity
- Compared features of popular vs non-popular tracks
- Explored differences across genres and audio features

  
## 📊 Dashboard
- [Looker Studio](https://lookerstudio.google.com/reporting/67ab3195-1208-459e-9038-0c2320291e0d)

### Limitations
- Dataset lacks external variables (artist marketing, playlist placement)
- Audio features alone cannot fully predict popularity
- Correlation does not imply causation

---

## Version Française 🇫🇷

## Présentation du Projet
Ce projet a pour objectif **d’analyser les facteurs influençant la popularité des morceaux musicaux**. Avec SQL et Python, nous avons nettoyé, structuré et exploré le dataset pour fournir des insights exploitables pour l’analyse musicale et la prise de décision.


### Dataset
- Source : [Spotify Dataset enrichi](https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset)
- Size: 89,741 tracks
- Variables : métriques audio (tempo, danceability, energy), informations sur les morceaux (genre, durée) et score de popularité

#### Remarque sur le score de popularité :
Le score de “popularité” fourni par Spotify reflète surtout le **nombre de streams** par morceau ([documentation Spotify API](https://developer.spotify.com/documentation/web-api/reference/tracks/get-track/)). Pour notre analyse, nous avons créé des **catégories de popularité** afin de faciliter les comparaisons.

## Nettoyage & Création de Variables
- Suppression des doublons et enregistrements inutiles
- Standardisation des formats de variables
- Création de nouvelles variables :
  - Catégories de durée
  - Indicateurs binaires d’ambiance
  - Segments de popularité (1. Non Popular → 5. Very High Popularity)

## Analyse & Insights Clés
Comparaison des morceaux **les moins populaires vs les plus populaires** :

| Variable      | Non Populaire | Très Populaire | % Différence |
|---------------|---------------|----------------|--------------|
| Danceability  | 0.578         | 0.599          | +3.48%       |
| Energy        | 0.591         | 0.642          | +8.56%       |
| Tempo         | 119.56        | 120.60         | +0.86%       |

**🎯 Insight pratique / décisionnel :**  
Les morceaux avec plus de danceability et d’énergie tendent à être légèrement plus populaires. Ces insights peuvent **informer la création de playlists, la stratégie marketing ou les recommandations musicales**, montrant la capacité à relier données → décision.

## Outils & Compétences
- SQL : nettoyage, transformation des données, création de variables
- Python : analyse exploratoire, visualisation
- Looker Studio : dashboard interactif


## 📊 Dashboard
- [Looker Studio](https://lookerstudio.google.com/reporting/67ab3195-1208-459e-9038-0c2320291e0d)
  

### Limites
- Dataset limité : absence de variables externes (marketing artiste, placement en playlist)
- Les caractéristiques audio seules ne suffisent pas à prédire la popularité
- Corrélation ≠ causalité
