# VHDL ile Kombinasyonel Devre Tasarımı

## Özet
* Bu sayfa KTÜ Bilgisayar Mühendiliği Bölümünde Sayısal Tasarım Laboratuvarında 1 nolu deney olarak verilen  **VHDL ile Kombinasyonel Devre Tasarımı** için hazırlanmıştır.
* Deneyin amacı, 
  * HDL, VHDL, FPGA vb. sayısal tasarım kavramlarını bilmek, 
  * tasarım süreçlerini bilmek ve uygulamak, 
  * kombinasyonel devreler tasarlamak, VHDL kodunu yazabilmek, simulasyon yapabilmektir.
* **Deneye Hazırlık** (deneye gelmeden önce yapılması gerekenler)
  * Deneye hazırlık için temel kavramlar öğrenilmelidir ([Deney föyü](https://www.ktu.edu.tr/dosyalar/bilgisayar_ae476.pdf) dikkatlice okunmalı ve incelenmelidir).
  * Deneyden önce aşağıda verilen deneyin hazırlık videoları anlayana kadar izlenmelidir: 
    * [Genel Bilgiler](https://youtu.be/GM-62MMqvH8)
    * [3 girişli OR işlemi](https://youtu.be/F-CK1crxn0o), ve _[Kaynak kod](eVeya.vhd)_
    * [Çift eşlik biti](https://youtu.be/gSsEVL2PKz0), ve _[Kaynak kod](eParity.vhd)_
    * [Hamming kodlama ve Hata Bulma](https://youtu.be/FWAJL-FcpYs), _[Kaynak kod](eHam.vhd)_
* Deney esnasında her öğrenci ayrı bir bilgisayarda çalışmalıdır. Bilgisayara hazırlık videolarında anlatıldığı gibi ModelSim kurulumu yapılmalıdır. Daha sonra 3 girişli OR işlemi, çift eşlik biti ve Hamming kodlama ve hata bulma için verilen VHDL kodları ayrı ayrı yazılıp ModelSim ile fonksiyonel simülasyon yapılmalıdır. Gerekli ekran görüntüleri rapora eklenmek üzere kaydedilmelidir.
    * Modelsim indirme bağlantısı uzem sistemi üzerinden öğrencilerle paylaşılmıştır.
* Deneyden sonra grup olarak rapor hazırlanmalıdır. Raporun içeriği [aşağıda](#deney-raporunda-i̇stenen) verilmiştir.

---

### Deney Raporunda İstenen
* Rapor, **grup halinde** deney bitiminden sonra 1-2 haftalık süre içerisinde hazırlanmalıdır.
* Rapor, grubu oluşturan öğrencilerin deney esnasında aldıkları notları birleştirerek her grup için tek bir rapor olacak şekilde hazırlanmalıdır.
* Deney raporu, grubu oluşturan öğrencilerden biri tarafından verilen sürede teslim edilmelidir ve kapak hariç 3-4 sayfadan oluşmalıdır.
* Raporda her bir kod için **deney tasarlama, deney yapma, veri toplama, sonuçları analiz etme ve yorumlama** bölümleri olmalıdır. Gruptaki her öğrenci rapordan eşit derecede sorumludur.
* Raporlar UZEM’deki derste size açılacak moodle sistemi üzerinden grubu oluşturan öğrencilerden biri tarafından pdf formatında teslim edilmelidir.
* **Rapor Konusu ve İçeriği**
  * Temel ve Teorik Bilgiler
  * 3 girişli AND devresi ([video](https://youtu.be/F-CK1crxn0o)) VHDL kodu ve fonksiyonel simülasyon (ekran görüntüleri ve anlatım rapora yazılacak, video linki eklenecektir)
  * tek eşlik biti ([video](https://youtu.be/gSsEVL2PKz0)) VHDL kodu ve fonksiyonel simülasyon (ekran görüntüleri ve anlatım rapora yazılacak, video linki eklenecektir)
  * Hamming kodlama ve hata bulma ([video](https://youtu.be/FWAJL-FcpYs)) için en az 3 kez farklı bitleri bozarak hata düzeltme VHDL kodu ve fonksiyonel simülasyon (ekran görüntüleri ve anlatım rapora yazılacak, video linki eklenecektir, videolar en az 1 yıl erişime açık kalacak şekilde ayarlanmalıdır).

---

### Deney Hazırlık Soruları
* HDL, VHDL, FPGA, ASIC nedir?
* FPGA ile ASIC, Arduino ile ne farkları vardır?
* Fikir aşamasından üretim aşamasına kadar tasarım süreçleri nelerdir? Her bir adımda neler yapılır?
* Sayısal tasarım devre türleri nelerdir? Aralarındaki farkları söyleyiniz?
* Encoder, ALU, Full Adder, Flip Flop, Counter, Sonlu Durumum Makineleri (SDM) vb. türü devrelerin ardışıl ya da kombinasyonel olup olmadıklarını nedenleri ile birlikte söyleyiniz.

### Bazı Deney Kazanımları
* Donanım tanımlama dilleri (VHDL vb.) ile ardışıl ve tümleşik devreler hakkında bilgi
* Tasarım süreçleri hakkında bilgi
* Kombinasyonel ve ardışıl devreler arasındaki farklar
* Örnek bir simulasyon yazılımı olan ModelSim uygulaması üzerinden bir devrenin simülasyonunu gerçekleştirme 
  * Kod yazımında ve derleme sırasında alınan hataları çözme becerisi ve bunlarla ilgili İngilizce araştırmalar yapabilme. 

---

## Deneyin Yürütme Planı

### Temel Kavramlar ve Deneyle İlgili Bazı Notlar
* [Genel Bilgiler](genel_bilgiler.md)
* FPGA → Field Programmable Gate Array (Alanda Programlanabilen Kapı Dizisi)
  * Programlanabilen devre (donanım), programlanabilen kapı dizisi
  * Donanım sabit değil, yazılım ile nasıl bir donanım olduğu tanımlanıyor
* HDL (Hardware Description Language) - Donanım Tanımlama Dili
  * FPGA programlamak için kullanılan dil ailesi
* ASIC → Application Specific Circuit
  * Sadece belirli işlemleri gerçekleştirmek için tasarlanmış donanım
* CPU, Arduino -> Programlanabilen donanım, donanım sabit, yazılım ile farklı işlemler yapılabiliyor
* VHDL ve Verilog FPGA programlamada en çok kullanılan HDL dillerindendir.
* VHDL → Very High–Speed Integrated Circuit Hardware Description Language

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
* [Intel® Quartus® Prime Lite Edition Design Software](https://www.intel.com/content/www/us/en/software-kit/684216/intel-quartus-prime-lite-edition-design-software-version-21-1-for-windows.html?) kullanarak kod yazma ve simulasyon
  * Doğrudan yazılımı indirmek yerine kurulum önce yapan yardımcı bir yazılım indirmek gerekebilir.
  * Programı kurduğunuzda "Yönetici olarak çalıştır" seçeneği ile çalıştırmanız önerilir.
  * Programda işaretleri gözlemek için gerekli "Wave" ekranı gözükmüyorsa "View" menüsü altından bu ekranı aktif yapabilirsiniz.
* **Alternatif Yazılımlar**: _Simulasyon için kullanabileceğiniz alternatif bir yazılımlardır. Bu deneyin işlenişinde kullanılmasalar bile farklı uygulamalar denemek isteyen öğrencilerimiz "Sayısal Tasarım" konularını pekiştirebilirler._
  * [Deeds Simulator](https://www.digitalelectronicsdeeds.com/index.html) 
  * [Multisim (National Instruments)](https://www.ni.com/en-tr/shop/electronic-test-instrumentation/application-software-for-electronic-test-and-instrumentation-category/what-is-multisim/multisim-education.html)
    * [Multisim Live](https://www.multisim.com/) - online uygulama

### VHDL Kod Yapısı
* kütüphane (kullanılan araçlar), entity (giriş, çıkış), architecture (mimari ve yapacağı iş için kod)

### Kombinasyonel Devre Örnekleri
* 3 girişli OR
* Çift parity biti
* Hamming ile kodlama ve hata bulma

---

## Kaynaklar
* [Video 1](https://youtu.be/Z6Ql3Jw2hTU)'de proje tasarım aşamaları ve kombinasyonel devreler anlatılmaktadır.
* [Video 2](https://youtu.be/cg_CRbJMDLM)'de ardışıl devre olarak çamaşır makinesi kodu yazılarak simulasyonu yapılmaktadır.
* [Farklı devre örnekleri](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq) (Youtube Videoları, İbrahim Savran )

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
