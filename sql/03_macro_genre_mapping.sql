-- Mapping des genres en macro-catégories
-- Mapping genres to macro-categories
UPDATE my_project.dataset.track_genre
SET macro_genre = CASE
    WHEN LOWER(TRIM(genre)) IN ('pop','indie-pop','k-pop','j-pop','mandopop','cantopop','party','dancehall','reggaeton') 
         THEN '1. Pop & Mainstream'
    WHEN LOWER(TRIM(genre)) IN ('rock','rock-n-roll','alt-rock','alternative','indie','punk','punk-rock','grunge','garage','emo','psych-rock','j-rock','british','power-pop') 
         THEN '2. Rock & Alternative'
    WHEN LOWER(TRIM(genre)) IN ('metal','heavy-metal','black-metal','death-metal','grindcore','metalcore','hard-rock','hardcore','hardstyle','goth') 
         THEN '3. Metal & Hard Styles'
    WHEN LOWER(TRIM(genre)) IN ('edm','electronic','electro','house','deep-house','progressive-house','minimal-techno','detroit-techno','chicago-house','techno','trance','idm','dubstep','drum-and-bass','dub','breakbeat','trip-hop','dance','disco','club','chill','groove') 
         THEN '4. Electronic & Dance'
    WHEN LOWER(TRIM(genre)) IN ('hip-hop','r-n-b','soul','funk','reggae','ska','afrobeat') 
         THEN '5. Hip-Hop, R&B & Urban'
    WHEN LOWER(TRIM(genre)) IN ('jazz','blues','bluegrass','gospel') 
         THEN '6. Jazz, Blues & Soul'
    WHEN LOWER(TRIM(genre)) IN ('acoustic','folk','country','honky-tonk','singer-songwriter','guitar','mpb','sertanejo','forro','pagode','samba') 
         THEN '7. Folk, Country & Acoustic'
    WHEN LOWER(TRIM(genre)) IN ('classical','opera','piano','tango','new-age','ambient','study','sleep') 
         THEN '8. Classical & Traditional'
    WHEN LOWER(TRIM(genre)) IN ('iranian','french','swedish','spanish','malay','latin','latino','romance') 
         THEN '9. World / International'
    WHEN LOWER(TRIM(genre)) IN ('disney','show-tunes','children','kids','anime','j-idol','comedy','happy','sad') 
         THEN '10. Film, Kids & Niche'
    ELSE 'Other'
END
WHERE TRUE;
