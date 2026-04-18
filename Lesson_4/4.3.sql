-- 別テーブルへのデータ複製
INSERT 
INTO ShohinSaeki 
SELECT
    shohin_id
    , shohin_mei
    , hanbai_tanka
    , shiire_tanka
    , (hanbai_tanka - shiire_tanka) AS saeki 
FROM
    Shohin;