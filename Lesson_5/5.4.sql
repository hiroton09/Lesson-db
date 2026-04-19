-- ビューテーブルの作成
CREATE VIEW AvgTankaByBunri AS 
SELECT
    shohin_id
    , shohin_mei
    , shohin_bunrui
    , hanbai_tanka
    , ( 
        SELECT
            AVG(hanbai_tanka) 
        FROM
            Shohin S2 
        WHERE
            S1.shohin_bunrui = S2.shohin_bunrui 
        GROUP BY
            shohin_bunrui
    ) AS avg_hanbai_tanka 
FROM
    Shohin S1;