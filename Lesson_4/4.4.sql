-- 商品の販売単価修正、差益の再計算

-- 1.カッターシャツの販売単価を3000円に下げる
UPDATE ShohinSaeki 
SET
    hanbai_tanka = 3000 
WHERE
    shohin_mei = 'カッターシャツ'; 

-- 2.差益を再計算する
UPDATE ShohinSaeki 
SET
    saeki = (hanbai_tanka - shiire_tanka) 
WHERE
    shohin_mei = 'カッターシャツ';
