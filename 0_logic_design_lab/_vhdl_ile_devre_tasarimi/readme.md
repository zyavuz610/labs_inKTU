# VHDL ile Devre Tasarımı

---
### Bu deney 2021-22 Bahar yarıyılından itibaren 2 deneye bölünmüştür.
<font color="red">Aşağıdaki linkler yardımıyla yeni deney sayfalarına gidebilirsiniz.</font>
* [VHDL ile Kombinasyonel Devre Tasarımı (Kodlama ve Hata Bulma Teknikleri)](0_logic_design_lab\1_vhdl_ile_kombinasyonel_devre_tasarimi\readme.md)
* [VHDL ile Ardışıl Devre Tasarımı (Durum Makineleri)](0_logic_design_lab\2_vhdl_ile_ardisil_devre_tasarimi\readme.md)
---
KTÜ Bilgisayar Mühendiliği Bölümünde Sayısal Tasarım Laboratuvarında 1 nolu deney olarak **VHDL ile Devre Tasarımı** yürütülmektedir.

**Deneyin amacı;**
* HDL, VHDL, FPGA vb. sayısal tasarım kavramlarını bilmek,
* Tasarım süreçlerini bilmek ve uygulamak,
* Kombinasyonel devreler tasarlamak, VHDL kodunu yazabilmek, simulasyon yapabilmek,
* Ardışıl devreler tasarlamak, VHDL kodunu yazabilmek ve simulasyon yapabilmek.
---
## Deney Hazırlığı
* Temel kavramlar öğrenilmelidir.
* [Video 1](https://youtu.be/Z6Ql3Jw2hTU) (16dk) ve [Video 2](https://youtu.be/cg_CRbJMDLM) (~12dk) izlenmelidir.

## Deney Hazırlık Soruları
* HDL, VHDL, FPGA, ASIC nedir?
* ASIC, Arduino ile ne farkları vardır?
* Fikir aşamasından üretim aşamasına kadar tasarım süreçleri nelerdir? Her bir adımda neler yapılır?
* Sayısal tasarım devre türleri nelerdir? Aralarındaki farkları söyleyiniz?
* Encoder, ALU, Full Adder, Flip Flop, Counter, Sonlu Durumum Makineleri (SDM) vb. türü devrelerin ardışıl ya da kombinasyonel olup olmadıklarını nedenleri ile birlikte söyleyiniz.

## Bazı Deney Kazanımları
* Donanım tanımlama dilleri (VHDL vb.) ile ardışıl ve tümleşik devreler hakkında bilgi
* Tasarım süreçleri hakkında bilgi
* Kombinasyonel ve ardışıl devreler arasındaki farklar
* Örnek bir simulasyon yazılımı olan ModelSim uygulaması üzerinden bir devrenin simülasyonunu gerçekleştirme 
  * Kod yazımında ve derleme sırasında alınan hataları çözme becerisi ve bunlarla ilgili İngilizce araştırmalar yapabilme. 


## Deneyin Yürütme Planı
### Temel Kavramlar ve Deneyle İlgili Bazı Notlar
* HDL (Hardware Description Language) - Donanım Tanımlama Dili
* VHDL ve Verilog FPGA programlamada en çok kullanılan HDL dilleridir.
* VHDL → Very High –Speed Integrated Circuit Hardware Description Language
* FPGA → Field Programmable Gate Array (Alanda Programlanabilen Kapı Dizisi)

**VHDL iki amaç için kullanılır.**
* Sentezleme: FPGA’e yüklenecek kodu oluşturmak için
* Simülasyon: FPGA’e yüklenecek kodun simülasyonunu yapmak için

**Behavioral Modelling - Davranışsal Modelleme**
* Modelin giriş ve çıkış tepkileri davranışsal olarak tanımlanır.
* Modelin iç yapısı ile ilgilenilmez.
* Yanlızca devrenin işlevi ve fonksiyonelitesi ile ilgilenilir

**Structural Modelling - Yapısal Modelleme**
* Bir bileşenin daha alt seviyesindeki bileşenlerle arasındaki ilişkileri gösterir.
* Yapısal tasarım, modelin yapısının tasarımcı tarafından yapılandırılması ilkesine dayanır.

### Tasarım Adımları
* Proje fikri → Kodlama → Derleme → Fonksiyonel Sümulasyon → Zamansal Simulasyon → FPGA → Üretim
* Akış şemasını çiziniz
* Tümleşik devrelerin üretim aşamaları (HDL → Compile → Simulation → FPGA → Product)
* VHDL proje bölümleri → Proje fikri → Kodlama → Derleme → Fonksiyonel Sümulasyon → Zamansal Simulasyon → FPGA → Üretim (Akış diyagramı?)
* [ModelSim-Intel FPGA Edition](https://fpgasoftware.intel.com/?product=modelsim_ae#tabs-2) de (includes Starter Edition) kod yazma ve simulasyon
  * Doğrudan yazılımı indirmek yerine kurulum önce yapan yardımcı bir yazılım indirmek gerekebilir.
  * Intel öğrencilere bu programı ücretsiz sunmaktadır. Öğrenci olarak sisteme kayıt olmanız gerekebilir. Intel dışında indirilen yazılımlar sorun yaratabilir.
  * Programı kurduğunuzda "Yönetici olarak çalıştır" seçeneği ile çalıştırmanız önerilir.
  * Programda işaretleri gözlemek için gerekli "Wave" ekranı gözükmüyorsa "View" menüsü altından bu ekranı aktif yapabilirsiniz.
* **Alternatif Yazılımlar**: _Simulasyon için kullanabileceğiniz alternatif bir yazılımlardır. Bu deneyin işlenişinde kullanılmasalar bile farklı uygulamalar denemek isteyen öğrencilerimiz "Sayısal Tasarım" konularını pekiştirebilirler._
  * [Deeds Simulator](https://www.digitalelectronicsdeeds.com/index.html) 
  * [Multisim (National Instruments)](https://www.ni.com/en-tr/shop/electronic-test-instrumentation/application-software-for-electronic-test-and-instrumentation-category/what-is-multisim/multisim-education.html)
    * [Multisim Live](https://www.multisim.com/) - online uygulama

### VHDL Kod Yapısı
* kütüphane (kullanılan araçlar), entity (giriş, çıkış), architecture (mimari ve yapacağı iş için kod)

### Kombinasyonel Devre Örneği
* Bellek birimi yok, 
* **Örnek:** 
  * Toplama, Karşılaştırma, Tekleyici (multiplexer-MUX, 4 to 1), Çoklayıcı (DEMUX, 1 to 2 vb...)
  * Not kapısı, eDegil
  * 3 girişli AND, 3 girişli NAND vs...
* **UZEM planında izlenecek devre videosu:** giriş 2 bit olan 4-1 mux ([Video](https://youtu.be/qlVf-e4ltEU) 0-4.38dk arası)

### Ardışıl Devre Örneği
* Deney föyündeki çamaşır makinesi, → ön yıkama, kurutma durumu eklenebilir, her durumda R gelince başlangıca gidebilir.
* kominasyonel devre + bellek
* **Örnek:**
  * D flipflop tasarımı
  * Sonlu Durum Makinesi tasarımı
* **Simulasyon**
  * Kare (saat sinyali) sinyal
  * Process → VHDL de sıralı işlemler process olarak yazılır.
* * **UZEM planında izlenecek devre videosu:** Çamaşı makinesi SDM projesi ([Video](https://youtu.be/cg_CRbJMDLM?t=430) 7.10dk sonrası)

---
## Uzaktan Eğitim Sürecinde Verilecek Ödev
Ödev 3 kısımdan oluşmaktadır ve deneyin anlatıldığı günden başlamak üzere 2 hafta süresi bulunmaktadır.
1. **Rapor:** Ödev Raporunun hazırlanması (2-3 sayfa, şablon için [tıklayınız.](https://docs.google.com/document/d/1Dlo4Ryv9QW3a3m_orbNQwbk_16Antnj4AYYB8Ec-pJ4/edit?usp=sharing)) - (_bu şablonu kendi bilgisayarınıza "Dosya/İndir" seçeneği ile docx formatında indiriniz, raporunuzu yazıp pdf olarak kaydediniz ve bu raporu teslim ediniz_)
1. **Video:** 4-8 dk. arasında süre alan kombinasyonel ya da ardışıl bir devre tasarımının kendi bilgisayarınızda yapılması ve tasarım aşamasından fonksiyonel simülasyon aşamasına kadar olan sürecin video olarak hazırlanması.
1. **VHDL Kod:** Yazılan vhdl kaynak dosyasının gönderilmesi.

**Not:** Her öğrencinin konusu ve ödevi nasıl göndereceği deney anlatım sırasında söylenecektir.

---

## Kaynaklar
* [Deney Föyü](0_documents/VHDL_deney_rapor_sablonu.pdf)
* [Deney Raporu için Kullanılacak Şablon](https://docs.google.com/document/d/1Dlo4Ryv9QW3a3m_orbNQwbk_16Antnj4AYYB8Ec-pJ4/edit?usp=sharing) - (_bu şablonu kendi bilgisayarınıza "Dosya/İndir" seçeneği ile docx formatında indiriniz, raporunuzu yazıp pdf olarak kaydediniz ve bu raporu teslim ediniz_)
* [Video 1](https://youtu.be/Z6Ql3Jw2hTU)'de proje tasarım aşamaları ve kombinasyonel devreler anlatılmaktadır.
* [Video 2](https://youtu.be/cg_CRbJMDLM)'de ardışıl devre olarak çamaşır makinesi kodu yazılarak simulasyonu yapılmaktadır.
* [Farklı devre örnekleri](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq) (Youtube Videoları)

---
## VHDL ile Sayısal Devre Örnekleri (Öğrenci Ödevleri)
### Kombinasyonel Devreler 
* **Encoder  & Decoder**
  * Video ve vhdl kodları (Hazırlayan: Aleyna Özbek)
    * *8-3 encoder*: [vhdl](combinational_circuits/8-to-3_encoder.vhd) | [video](https://www.youtube.com/watch?v=Zwku31DfQkM&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=2)
    * *16-4 encoder*: [vhdl](combinational_circuits/16-to-4_encoder.vhd) | [video](https://www.youtube.com/watch?v=Zwku31DfQkM&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=2)
    * *3-8 decoder*: [vhdl](combinational_circuits/3-to-8_decoder.vhd) | [video](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=1)
    * *4-16 decoder*: [vhdl](combinational_circuits/4-to-16_decoder.vhd) | [video](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=1)
  * **Tutorials** [pdf](https://github.com/zyavuz610/laboratory_apps_inKTU/blob/master/0_logic_design_lab/1_vhdl_ile_devre_tasarimi/0_documents/encoder_decoder_tutorial.pdf) | [Github](combinational_circuits/encoder_decoder.md) (Hazırlayan: [Mehmet Santor](https://github.com/SANT0R/examples))
* **Multiplexer (Çoklayıcı) & Demultiplexer (Tekleyici)**
  * Video ve vhdl kodları (Hazırlayan: Büşra Oran)
    * *4-1 multiplexer*: vhdl | [video](https://www.youtube.com/watch?v=qlVf-e4ltEU&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=3)
    * *8-1 multiplexer*: vhdl | [video](https://www.youtube.com/watch?v=qlVf-e4ltEU&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=3)
    * *1-4 demultiplexer*: vhdl | [video](https://www.youtube.com/watch?v=qlVf-e4ltEU&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=4)
    * *1-8 demultiplexer*: vhdl | [video](https://www.youtube.com/watch?v=qlVf-e4ltEU&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=4)
* **Half-adder & Full-adder**
  * Video ve vhdl kodları (Hazırlayan: Yusuf Kaymaz)
    * *4 bit half-adder*: vhdl | [video](https://www.youtube.com/watch?v=FTmJkX7pvf8&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=5)
    * *4 bit full-adder*: vhdl | [video](https://www.youtube.com/watch?v=FTmJkX7pvf8&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=6)

---

Kırık linkler olduğunda lütfen zyavuz@ceng.ktu.edu.tr adresine bildiriniz.
