-- 各日付時点での合計金額とNULLの並び順
SELECT
    torokubi
    , shohin_mei
    , hanbai_tanka
    , SUM(hanbai_tanka) OVER (ORDER BY torokubi NULLS FIRST) 
FROM
    Shohin;
