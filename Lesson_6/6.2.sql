-- 価格帯分類SELECT文
SELECT
    SUM( 
        CASE 
            WHEN hanbai_tanka <= 1000 
                THEN 1 
            ELSE 0 
            END
    ) AS low_price
    , SUM( 
        CASE 
            WHEN hanbai_tanka > 1000 
            AND hanbai_tanka <= 3000 
                THEN 1 
            ELSE 0 
            END
    ) AS mid_price
    , SUM(CASE WHEN hanbai_tanka > 3000 THEN 1 ELSE 0 END) AS high_price 
FROM
    Shohin;
