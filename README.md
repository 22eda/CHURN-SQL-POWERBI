🏦 Bank Customer Churn & Risk Analitiği Projesi
Bu proje, bankacılık sektöründe müşteri terk oranlarını (Churn) azaltmak, riskli müşteri segmentlerini tespit etmek ve veri odaklı stratejik kararlar almak amacıyla SQL Server ve Power BI kullanılarak uçtan uca geliştirilmiştir.



<img width="2816" height="1536" alt="Gemini_Generated_Image_h045s4h045s4h045" src="https://github.com/user-attachments/assets/4bf88388-b789-4c4e-80ce-9fbc59907f26" />


📋 Proje Mimarisi ve Kullanılan Araçlar
Veritabanı & Analiz: MS SQL Server (SSMS), T-SQL (VIEW, CASE WHEN, GROUP BY, CAST, ROUND)

Görselleştirme & Raporlama: Power BI Desktop (Executive Dashboard)

Veri Kaynağı: Bank Customer Churn Dataset (10,000 Müşteri)

🔍 İş Soruları, SQL Kodları, Sonuçlar ve Yorumlar
Proje kapsamında yanıt aradığımız 5 kritik iş sorusu, çalıştırdığımız SQL sorguları, elde edilen sayısal sonuçlar ve bu sonuçların derinlemesine yorumları aşağıdadır:

1. Genel Müşteri Terk Oranı (Churn Rate) Nedir?

Sonuçlar: Toplam Müşteri: 10,000 | Kayıp Müşteri: 2,037 | Churn Oranı: %20.37

Yorum ve Karşılaştırma: Bankanın genel müşteri kaybı oranı %20.37 seviyesindedir. Her 5 müşteriden 1'inin bankayı terk etmesi, müşteri sadakati ve elde tutma (retention) stratejilerinin acilen gözden geçirilmesi gerektiğini göstermektedir.

2. Coğrafi Risk: Hangi Ülkede Müşteri Kaybı Daha Yüksek?
Sonuçlar:

Germany: %32.44 Churn Oranı (2,509 müşteriden 814 kayıp)

Spain: %16.67 Churn Oranı (2,477 müşteriden 413 kayıp)

France: %16.15 Churn Oranı (5,014 müşteriden 810 kayıp)

Yorum ve Karşılaştırma: Fransa ve İspanya'daki kayıp oranları birbirine çok yakın (%16 bandında) ve kabul edilebilir düzeydeken, Almanya pazarındaki kayıp oranı %32.44 ile diğer ülkelerin neredeyse iki katıdır. Bu durum, Almanya'daki operasyonlarda, müşteri hizmetlerinde veya yerel bankacılık ürünlerinde ciddi bir memnuniyetsizlik veya rekabet dezavantajı olduğunu açıkça ortaya koymaktadır.

3. Ürün Çeşitliliğinin Müşteri Terkine Etkisi Nedir?
Sonuçlar: Ürün sayısı arttıkça (özellikle 3 ve 4 ürün kullananlarda) kayıp oranlarının dramatik şekilde arttığı tespit edilmiştir.

Yorum ve Karşılaştırma: Müşterilerin birden fazla ürün kullanması ilk başta sadakat göstergesi gibi görünse de, aşırı karmaşık veya yönetilemeyen çoklu ürün paketlerine sahip müşterilerin (özellikle 3-4 ürün kullanan küçük kitle) bankayı terk etme eğiliminde olduğu görülmüştür. Ürün paketlerinin sadeleştirilmesi gerekebilir.

4. Aktif Üye Olmama Durumu Müşteri Kaybını Nasıl Etkiler?
Sonuçlar: Aktif olmayan üyelerin kayıp oranı, aktif üyere kıyasla belirgin şekilde daha yüksektir.

Yorum ve Karşılaştırma: Bankanın sadakat programlarına veya dijital kanallara katılım sağlamayan (aktif olmayan) müşteriler, banka ile bağlarını erken koparmaktadır. Bankanın, pasif müşterileri aktif hale getirecek kampanyalar (kampanya bildirimleri, özel faizler vb.) kurgulaması şarttır.

5. Finansal Profil (Bakiye ve Kredi Skoru) Karşılaştırması
Sonuçlar: Ayrılan müşterilerin ortalama hesap bakiyelerinin, kalan müşterilere göre farklılık gösterdiği analiz edilmiştir.

Yorum ve Karşılaştırma: Yüksek bakiyeli bazı müşteri segmentlerinin bankadan ayrılması, finansal açıdan risk teşkil etmektedir. Kredi skoru ve bakiye kırılımları birlikte incelendiğinde, yüksek değerli müşterilerin rakip bankalara kaptırılmaması için özel VIPRetention (sadakat) yönetimi uygulanmalıdır.


Geliştirici: Edanur Demirel (GitHub: 22eda)
