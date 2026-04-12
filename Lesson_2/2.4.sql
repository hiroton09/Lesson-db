-- 販売単価を10%引きしても利益が100円より高い事務用品とキッチン用品を抽出
SELECT shohin_mei, shohin_bunrui, (hanbai_tanka * 0.9) - shiire_tanka as rieki
FROM Shohin
WHERE (hanbai_tanka * 0.9) - shiire_tanka > 100
AND shohin_bunrui IN ('事務用品', 'キッチン用品');