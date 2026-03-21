# Workflow & Data Storage 🚀

Pour ce projet, les datasets bruts (Spotify, Billboard, HuggingFace) ont été initialement explorés et nettoyés dans un notebook Colab.  
En raison de la taille des données (~90k+ lignes) et pour faciliter la collaboration, toutes les tables finales et transformations SQL ont été centralisées dans **Google BigQuery**.  

**Avantages :**  
- 📂 Gestion centralisée des données pour l'équipe  
- ⚡ Performances supérieures pour les requêtes SQL  
- 🤝 Facilité de partage et de collaboration  

**Contenu :**  
- `notebooks/` : notebooks Colab pour nettoyage, exploration et visualisation  
    - Exemples : `01_data_cleaning_eda.ipynb` → load data, check nulls, duplicates, EDA, normalization  
- `sql/` : scripts SQL pour création de tables, mapping macro-genre, calculs statistiques et agrégations  

**Pour suivre le projet :**  
1. 📖 Commencer par `notebooks/01_data_cleaning_eda.ipynb` pour comprendre le nettoyage et l’EDA  
2. 💾 Les données nettoyées ont été exportées vers BigQuery (`track_genre`, `huggingface_cleaned`) pour effectuer transformations et analyses avancées  
3. 📝 Les scripts SQL dans `sql/` montrent les transformations appliquées, comme le mapping des genres en macro-catégories et le calcul des segments de popularité  

### Données et anonymisation 🔒
- Les datasets originaux ont été anonymisés pour le partage public  
- Les colonnes sensibles (URLs, IDs externes) ont été remplacées ou retirées  
- Les transformations sont reproductibles : normalisation artistes/tracks, création de segments de popularité, mapping macro-genres  

### Visualisation et Insights 📊
- Les notebooks contiennent des visualisations EDA (histogrammes, pairplots, relations avec popularité)  
- BigQuery permet de calculer des statistiques par segment et macro-genre  
- Les résultats sont ensuite visualisés dans Colab et Looker Studio pour le dashboard final
