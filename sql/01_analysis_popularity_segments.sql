-- Ajouter segment de popularité
ALTER TABLE my_project.dataset.tracks_ml_ready
ADD COLUMN popularity_segment STRING;

UPDATE my_project.dataset.tracks_ml_ready
SET popularity_segment = CASE
    WHEN popularity BETWEEN 0 AND 10 THEN '1. Non Popular'
    WHEN popularity BETWEEN 11 AND 20 THEN '2. Low Popularity'
    WHEN popularity BETWEEN 21 AND 40 THEN '3. Moderate Popularity'
    WHEN popularity BETWEEN 41 AND 60 THEN '4. High Popularity'
    WHEN popularity BETWEEN 61 AND 100 THEN '5. Very High Popularity'
    ELSE 'Unknown'
END
WHERE TRUE;
