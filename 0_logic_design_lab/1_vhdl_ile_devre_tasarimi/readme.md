KTÜ Bilgisayar Mühendiliği Bölümünde Sayısal Tasarım Laboratuvarında 1 nolu deney olarak **VHDL ile Devre Tasarımı** yürütülmektedir.

**Deneyin amacı;**
* VHDL, FPGA vb. sayısal tasarım kavramlarını bilir.
* Tasarım süreçlerini bilir, uygular
* Kombinasyonel devreler tasarlar, VHDL kodunu yazar, simulasyon yapar
* Ardışıl devreler tasarlar, VHDL kodunu yazar, simulasyon yapar

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
* ModelSim de kod yazma ve simulasyon

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
* Video1 (16dk) ve Video 2 (~12dk) izlenmelidir
* Video 1'de proje tasarım aşamaları ve kombinasyonel devreler anlatılmaktadır.
* Video 2'de ardışıl devre olarak çamaşır makinesi kodu yazılarak simulasyonu yapılmaktadır.


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
