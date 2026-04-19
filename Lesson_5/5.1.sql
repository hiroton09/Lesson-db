-- ビューの作成
CREATE VIEW ViewRensyu5_1(shohin_mei, hanbai_tanka, torokubi) AS 
SELECT
    shohin_mei
    , hanbai_tanka
    , torokubi 
FROM
    Shohin 
WHERE
    hanbai_tanka >= 1000 
    AND torokubi = '20090920'; 