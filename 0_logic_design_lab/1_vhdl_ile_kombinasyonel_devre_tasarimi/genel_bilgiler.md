### sayısal tasarım
- kombinasyonel -> çıktı, girdilerin bir kombinasyonu
- ardışıl -> çıktı girdilere ve önceki çıkışlara bağlı, bellek gerektirir

**bu deneyde kombinasyonel devreler üzerinde durulacak**
* 3 sınıfa ayrılırlar
  - ALU, toplayıcı, 
  - Veri ileticileri
  - Kodlayıcılar
    - kodlayıcılar -> girişteki veriyi farklı bir biçimde idae etmek amacıyla dönüştüren devrelerdir, verinin değerlendirilmesi tamamen değişir.

### sayısal kodlama
* İkili Kodlanmış Onlu (Binary Coded Decimal-BCD)
* Ağırlıklı İkili Kodlama
* 3 Fazlalı Kod
* Bitişik Kodlama
* Gray Kodu
* Eşitlik Kodu
* Hamming Kodlama

### Ardışıl devrelere örnek olarak 
* Flip-Flop’lar, 
* Sayıcılar, 
* tampon bellek birimleri
* durum makinaları ile tasarlanan bellek gerektiren devreler verilebilir.
	
### Devre tasarımı
- ASIC (application specific ıntegrated circuits), 
  * sadece amaca yönelik devre, değiştirilemez
- CPU, Arduino
  * amaca yönelik, programlanabilir, devre değişmez
- FPGA nedir?
  * genel amaçlı, devre bağlantıları programla değiştirilebilir
- HDL, FPGA donanımlarını tanımlamak için kullanılan dil
  * VHDL, Verilog FPGA

### Tavsiye
- FPGA sektörü giderek gelişiyor, iş imkanları
  * savunma sanayi
  * otomobil sanayi
  * yapay zeka için özel donanım tasarlama
  * işlemci ve entegre devre tasarımları
  * akademi
- Donanım tasarlama konusa ilgili öğrencilerin bu alana yönelmesini tavsiye ederim

### Ana Oyuncular (FPGA üreticileri)
- Altera 
	- kuruluş: 1983
	- Intel satın aldı, 2015, 16.7 milyar dolar
	- satın alınmadan önce yıllım kazanç, ~2 milyar dolar
	- 3000 civarı çalışan
- Xilinx 
	- kuruluş:1984,
	- AMD satın aldı, 2021 (35 milyar dolar)
	- yıllık kazanç, ~4 milyar dolar
	- 5000 civarı yaklaşık çalışan

### KTÜ Bilg. Sayısal Tasarım Lab.
- Altera üretimi FPGA ler mevcut
	- 1. deneyde, kombinasyonel
	- 2. deneyde, ardışıl devreler için
	- kodlama, derleme ve fonksiyonel simulasyon yapılacak

### Kombinasyonel Devre Tasarımı 
- VHDL kodlamaya giriş
- Eşitlik kodu
- Hamming ile kodlama,