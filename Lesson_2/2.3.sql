-- 以下の実行結果と同じ結果になるようなSQL文を2通り
-- 販売単価が仕入単価より500円以上高い商品を抽出
-- SELECT shohin_mei, hanbai_tanka, shiire_tanka
-- FROM Shohin
-- WHERE hanbai_tanka - shiire_tanka >= 500;

-- パターン1
SELECT shohin_mei, hanbai_tanka, shiire_tanka
FROM Shohin
WHERE hanbai_tanka >= shiire_tanka + 500;

-- パターン2
SELECT shohin_mei, hanbai_tanka, shiire_tanka
FROM Shohin
WHERE hanbai_tanka - 500 >= shiire_tanka;