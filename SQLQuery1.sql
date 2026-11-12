USE BankDB;
GO

-- ==========================================
-- 1. SORU: Genel Churn (Kayýp) Oraný
-- ==========================================
SELECT 
    '1. Genel Kayýp Oraný' AS Analiz_Adi,
    COUNT(*) AS Toplam_Musteri,
    SUM(churn_int) AS Kayip_Musteri_Sayisi,
    ROUND(CAST(SUM(churn_int) AS FLOAT) / COUNT(*) * 100, 2) AS Churn_Orani_Yuzde
FROM vw_CustomerChurnAnalysis;


-- ==========================================
-- 2. SORU: Coðrafi Risk (Ülkelere Göre Churn)
-- ==========================================
SELECT 
    '2. Coðrafi Risk Analizi' AS Analiz_Adi,
    country AS Kriter,
    COUNT(*) AS Toplam_Musteri,
    SUM(churn_int) AS Kayip_Sayisi,
    ROUND(CAST(SUM(churn_int) AS FLOAT) / COUNT(*) * 100, 2) AS Churn_Orani_Yuzde
FROM vw_CustomerChurnAnalysis
GROUP BY country
ORDER BY Churn_Orani_Yuzde DESC;


-- ==========================================
-- 3. SORU: Ürün Çeþitliliðinin Etkisi
-- ==========================================
SELECT 
    '3. Ürün Sayýsý Analizi' AS Analiz_Adi,
    CAST(products_number AS VARCHAR) + ' Adet Ürün' AS Kriter,
    COUNT(*) AS Toplam_Musteri,
    SUM(churn_int) AS Kayip_Sayisi,
    ROUND(CAST(SUM(churn_int) AS FLOAT) / COUNT(*) * 100, 2) AS Churn_Orani_Yuzde
FROM vw_CustomerChurnAnalysis
GROUP BY products_number
ORDER BY products_number;


-- ==========================================
-- 4. SORU: Aktif Üye Olmama Durumunun Etkisi
-- ==========================================
SELECT 
    '4. Aktif Üye Etkisi' AS Analiz_Adi,
    CASE WHEN active_member = 1 THEN 'Aktif Üye' ELSE 'Aktif Olmayan Üye' END AS Kriter,
    COUNT(*) AS Toplam_Musteri,
    SUM(churn_int) AS Kayip_Sayisi,
    ROUND(CAST(SUM(churn_int) AS FLOAT) / COUNT(*) * 100, 2) AS Churn_Orani_Yuzde
FROM vw_CustomerChurnAnalysis
GROUP BY active_member;


-- ==========================================
-- 5. SORU: Finansal Profil (Bakiye ve Kredi Skoru)
-- ==========================================
SELECT 
    '5. Finansal Profil Analizi' AS Analiz_Adi,
    CASE WHEN churn_int = 1 THEN 'Ayrýlan Müþteriler (Churn=1)' ELSE 'Kalan Müþteriler (Churn=0)' END AS Kriter,
    COUNT(*) AS Toplam_Musteri,
    ROUND(AVG(balance), 2) AS Ortalama_Bakiye,
    ROUND(AVG(credit_score), 2) AS Ortalama_Kredi_Skoru,
    ROUND(AVG(estimated_salary), 2) AS Ortalama_Maas
FROM vw_CustomerChurnAnalysis
GROUP BY churn_int;