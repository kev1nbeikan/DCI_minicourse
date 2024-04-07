WITH RECURSIVE way_to_university(id, parent_id, way) AS (SELECT 1, 0, 'Планета Земля'


                                                         UNION ALL


                                                         SELECT geo.id                                    AS id,
                                                                geo.parent_id                             AS parent_id,
                                                                way_to_university.way || '->' || geo.name AS way
                                                         FROM geo
                                                                  JOIN way_to_university ON geo.parent_id = way_to_university.id)
SELECT *
FROM way_to_university
ORDER BY way_to_university.id;