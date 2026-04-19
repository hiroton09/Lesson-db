-- 商品全体の平均単価を含めたSELECT文
SELECT
    shohin_id
    , shohin_mei
    , shohin_bunrui
    , hanbai_tanka
    , (SELECT AVG(hanbai_tanka) FROM Shohin) AS hanbai_tanka_all 
FROM
    Shohin;
