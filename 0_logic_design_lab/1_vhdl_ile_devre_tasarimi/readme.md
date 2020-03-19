KTÜ Bilgisayar Mühendiliği Bölümünde Sayısal Tasarım Laboratuvarında 1 nolu deney olarak **VHDL ile Devre Tasarımı** yürütülmektedir.

**Deneyin amacı;**
* VHDL, FPGA vb. sayısal tasarım kavramlarını bilir.
* Tasarım süreçlerini bilir, uygular
* Kombinasyonel devreler tasarlar, VHDL kodunu yazar, simulasyon yapar
* Ardışıl devreler tasarlar, VHDL kodunu yazar, simulasyon yapar

---

## Kaynaklar
* [Deney Föyü](0_documents/VHDL_deney_rapor_sablonu.pdf)
* [Deney Raporu için Kullanılacak Şablon](0_documents/VHDL_deney_rapor_sablonu.pdf)
* [Video 1](https://youtu.be/Z6Ql3Jw2hTU)'de proje tasarım aşamaları ve kombinasyonel devreler anlatılmaktadır.
* [Video 2](https://youtu.be/cg_CRbJMDLM)'de ardışıl devre olarak çamaşır makinesi kodu yazılarak simulasyonu yapılmaktadır.
* [Farklı devre örnekleri](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq) (Youtube Videoları)

---

## Deney Yürütme Planı

### Bazı Temel Sorular
* FPGA, VHDL ne demek? 
* ASIC, Arduino ile ne farkları vardır?

### Tasarım Adımları
* Proje fikri → Kodlama → Derleme → Fonksiyonel Sümulasyon → Zamansal Simulasyon → FPGA → Üretim
* Akış şemasını çiziniz
* Tümleşik devrelerin üretim aşamaları (HDL → Compile → Simulation → FPGA → Product)
* VHDL proje bölümleri → Proje fikri → Kodlama → Derleme → Fonksiyonel Sümulasyon → Zamansal Simulasyon → FPGA → Üretim (Akış diyagramı?)
* [ModelSim](https://www.mentor.com/company/higher_ed/modelsim-student-edition) de kod yazma ve simulasyon

### VHDL Kod Yapısı
* kütüphane (kullanılan araçlar), entity (giriş, çıkış), architecture (mimari ve yapacağı iş için kod)

### Kombinasyonel Devre Örneği
* Bellek birimi yok, 
* **Örnek:** 
  * Toplama, Karşılaştırma, Tekleyici (multiplexer-MUX, 4 to 1), Çoklayıcı (DEMUX, 1 to 2 vb...)
  * Not kapısı, eDegil
  * 3 girişli AND, 3 girişli NAND vs...

### Ardışıl Devre Örneği
* Deney föyündeki çamaşır makinesi, → ön yıkama, kurutma durumu eklenebilir, her durumda R gelince başlangıca gidebilir.
* kominasyonel devre + bellek
* **Örnek:**
  * D flipflop tasarımı
  * Sonlu Durum Makinesi tasarımı
* **Simulasyon**
  * Kare (saat sinyali) sinyal
  * Process → VHDL de sıralı işlemler process olarak yazılır.

## Deney Hazırlığı
* Temel kavramlar öğrenilmelidir.
* Video1 (16dk) ve Video 2 (~12dk) izlenmelidir.

## Deney Hazırlık Soruları
* VHDL, FPGA, ASIC nedir?
* Fikir aşamasından üretim aşamasına kadar tasarım süreçleri nelerdir? Her bir adımda neler yapılır?
* Sayısal tasarım devre türleri nelerdir? Aralarındaki farkları söyleyiniz?
* Encoder, ALU, Full Adder, Flip Flop, Counter, Sonlu Durumum Makineleri (SDM) vb. türü devrelerin ardışıl ya da kombinasyonel olup olmadıklarını nedenleri ile birlikte söyleyiniz.

---

## Deneyle İlgili Bazı Notlar
### HDL (Hardware Description Language) - Donanım Tanımlama Dili
* VHDL ve Verilog FPGA programlamada en çok kullanılan HDL dilleridir. 
* VHDL → Very High –Speed Integrated Circuit Hardware Description Language
* FPGA → Field Programmable Gate Array (Alanda Programlanabilen Kapı Dizisi)

### VHDL iki amaç için kullanılır.
* Sentezleme: FPGA’e  yüklenecek kodu oluşturmak için
* Simülasyon: FPGA’e yüklenecek kodun simülasyonunu yapmak için

### Behavioral Modelling - Davranışsal Modelleme
* Modelin giriş ve çıkış tepkileri davranışsal olarak tanımlanır.  
* Modelin iç yapısı ile ilgilenilmez. 
* Yanlızca devrenin işlevi ve fonksiyonelitesi ile ilgilenilir

### Structural Modelling - Yapısal Modelleme
* Bir bileşenin daha alt seviyesindeki bileşenlerle arasındaki ilişkileri gösterir. 
* Yapısal tasarım, modelin yapısının tasarımcı tarafından yapılandırılması ilkesine dayanır.

---

## VHDL ile Sayısal Devreler
### Kombinasyonel Devreler 
* **Encoder  & Decoder**
  * Video ve vhdl kodları (Hazırlayan: Aleyna Özbek)
    * *8-3 encoder*: [vhdl](combinational_circuits/8-to-3_encoder.vhd) | [video](https://www.youtube.com/watch?v=Zwku31DfQkM&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=2)
    * *16-4 encoder*: [vhdl](combinational_circuits/16-to-4_encoder.vhd) | [video](https://www.youtube.com/watch?v=Zwku31DfQkM&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=2)
    * *3-8 decoder*: [vhdl](combinational_circuits/3-to-8_decoder.vhd) | [video](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=1)
    * *4-16 decoder*: [vhdl](combinational_circuits/4-to-16_decoder.vhd) | [video](https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=1)
  * [Tutorial](https://github.com/zyavuz610/laboratory_apps_inKTU/blob/master/0_logic_design_lab/1_vhdl_ile_devre_tasarimi/0_documents/encoder_decoder_tutorial.pdf) (Hazırlayan: [Mehmet Santor](https://github.com/SANT0R/examples))
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

