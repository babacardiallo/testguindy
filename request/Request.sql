--1) ## Lister tous les produits appartenant a la categorie 11

            SELECT * FROM produit WHERE category_id IN (
                select  id
                from    (select * from category
                         order by parent_id, id) category,
                        (select @pv := '11') initialisation
                where   find_in_set(parent_id, @pv) > 0
                  and     @pv := concat(@pv, ',', id)
            ) OR category_id = 11

--2) ## Lister tous les produits appartenant a la categorie 6

            SELECT * FROM produit WHERE category_id IN (
                select  id
                from    (select * from category
                         order by parent_id, id) category,
                        (select @pv := '6') initialisation
                where   find_in_set(parent_id, @pv) > 0
                  and     @pv := concat(@pv, ',', id)
                        ) OR category_id = 6

--3) ## Lister tous les produits appartenant a la categorie 3


            SELECT * FROM produit WHERE category_id IN (
                select  id
                from    (select * from category
                         order by parent_id, id) category,
                        (select @pv := '3') initialisation
                where   find_in_set(parent_id, @pv) > 0
                  and     @pv := concat(@pv, ',', id)
                                    ) OR category_id = 3




-- ================= Creation d'une fonction sql qui generalise tous les types de requetes =========== -------
