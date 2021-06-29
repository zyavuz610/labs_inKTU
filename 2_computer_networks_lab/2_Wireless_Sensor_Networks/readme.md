# Wireless Sensor Networks (WSN)


Bilgisayar Ağları Laboratuvarında bir deney olarak tasarlanan bu deney **Kablosuz Sensör Ağları**nın simulasyonunu yapmayı kapsamaktadır.

---

Deney hakkında bilgi edinmek ve deneye hazırlanmak için [Deney Föyü](http://www.ktu.edu.tr/dosyalar/bilgisayar_ce12e.pdf)'nü okumalısınız.

---

![WSN](/2_computer_networks_lab/2_Wireless_Sensor_Networks/Example-of-a-wireless-sensor-network-based-on-the-Berkeley-mote-platform-The-circles.png)

**Amaç**, sıcaklık, ses, basınç, nem gibi fiziksel ve çevresel değişiklikleri algılamak ve algılanan veriyi kurulan kablosuz ağ üzerinden işbirliği içerisinde ana bir merkeze iletmektir. 

Kablosuz sensör ağlarda her bir **sensör düğümü (mote)** olarak isimlendirilir.

Kablosuz sensör ağlarda sensör düğümlerinin çalışması 3 aşamada düşünülebilir.
* **Algılama (Sensing):** Sensörler vasıtasıyla fiziksel biyiklükler algılanır ve sayısal değer olarak iletilir.
* **Bilgi İşleme (Processing):** Contiki vb. kısıtlı hafıza ve düşük güç gerektiren işletim sistemlerine yazılan yazılımlarla algılanan veriler işlenmektedir.
* **Haberleşme**: Sensör düğümü (mote) ile diğer sensör düğümlerinin işbirliği içerisinde çalışarak verileri ana bir merkeze ulaştırır.
  * Fiziksel, veri iletim, ağ, taşıma ve uygulama katmanları (5 adet) yardımıyla haberleşilir.
  * Kullanılan standartlar, IEEE 802.15.4 ve onun üzerinde çalışan ZigBee protokolüdür.
  
Deneyde **contiki** işletim sistemi ve bu sisteme kurulu **coaja** simulatörü kullanılacaktır.

## Kurulum
1. Bilgisayarınızın donanım düzeyinde sanallaştırma "[Hardware Virtualization](https://h30434.www3.hp.com/t5/image/serverpage/image-id/23649i03555FB16979A05D/image-size/original?v=v2&px=-1)" seçeneği aktif olmalı
1. Bir linux dağıtımına kurulu "[Instant Contiki](https://sourceforge.net/projects/contiki/files/Instant%20Contiki/)" paketini (2.7 veya daha üst sürüm) elde edinin ve [VMware Workstation Player](https://www.vmware.com/) (veya [VirtualBox](https://www.virtualbox.org/)) sanal makinesine bu paketi kurun. (Üzerinde WSN simulasyonu için gerekli tüm araçlar ve contiki paketleri kurulu ubuntu işletim sistemi kurulu olacaktır)
   * **Instant Contiki** işletim sistemine giriş (login) için;
     * **username**: *user*
     * **password**: *user*
   * **Not:** Contiki işletim işletim sistemini mevcut bir Linux dağıtımına kaynak paketleri ([Github](https://github.com/contiki-os/contiki/releases)) kullanarak da kurabilirsiniz. Ancak  deneyde "Instant Contiki" seçeneği üzerinden devam edilecektir.
1. Aşağıdaki kodu çalıştırın ve coaja simulatörünü açın, sonraki bölümdeki uygulamaları gerçekleştirin (_komutları çalıştırırken yönetici rolü gerekebilir, bu nedenle komutun başına **sudo** ön komutu eklemek gerekebilir_).
<code>
 cd contiki/tools/cooja 
 
ant run
 </code>

Cooja çalıştırıldıktan sonra simülasyon işlemleri yapabilirsiniz. Sırasıyla aşağıdaki videoları izleyerek deneyde yapılacak uygulamaları kendi kendinize deneyebilirsiniz.

## Yardımcı Videolar
* **Çalışma 1**
  * [Contiki İşletim Sistemi Kurulumu](https://www.youtube.com/watch?v=-s3U3mV4JcQ)
  * [Contiki İşletim Sistemi Çalıştırma](https://www.youtube.com/watch?v=p3VWS1EbjMc)
  * [Cooja ile BroadCast Uygulaması](https://www.youtube.com/watch?v=9U9BJY53q2Y)
  * [Cooja ile Client Server Uygulaması](https://www.youtube.com/watch?v=QVnOr8WDnBI)
  * [Cooja ile Client Server **Sensör** Uygulaması](https://www.youtube.com/watch?v=YW7UBMnBZ2E)
* **Çalışma 2**
  * [Uygulama](https://www.youtube.com/watch?v=fPrQSneEob8&feature=youtu.be&app=desktop) (Cooja simulatörü, "Hello World", BroadCast, Client-Server Uygulaması)

## DENEYDE GERÇEKLEŞTİRİLECEK UYGULAMALAR
1. **COOJA** simülatörü kullanarak **"Hello World"** örneğini çalıştırın (contiki/examples/hello-world). **Bu uygulamanın amacı:**
   * cooja simulatörünü tanımak
   * istenen sayıda düğüm ekleyerek (Sky Mote) bu düğümlere kaynak kodu derleyerek göndermek.
   * simulasyon ektranında her bir kablosuz sensör düğümlerinin (mote) davranışlarını basitçe gözlemek.
1. **COOJA** simülatörü kullanarak contiki/examples/ipv6/simple-upd-rpl/broadcastexample.c örneği gerçekleştirilecektir. Bu uygulamada;
   * 3-4 adet **Sky Mote** ekleyiniz. broadcastexample.c kodunu yükleyip derleyiniz.
   * Kablosuz sensör ağlarda her bir düğümün davranışlarını gözlemleyiniz.
1. **COOJA** simülatörü kullanılarak bir server/client uygulaması yapılacaktır. Bu uygulama için examples/ipv6/rpl-udp/udp-server.c ve examples/ipv6/rpl-udp/udp-client.c kaynak dosyaları kullanılacaktır.
   * Bir **Sky Mote** ekleyiniz. server.c kodunu yükleyip derleyiniz.
   * 3-4 adet **Sky Mote** ekleyiniz. client.c kodunu yükleyip derleyiniz.
   * Kablosuz sensör ağlarda server ve client düğümlerinin davranışlarını gözlemleyiniz.

### Ek Uygulamalar (*Yüzyüze Eğitimde gerçekleştirilmektedir*)
1. **COOJA** simülatörü kullanarak Sky Mote sensör düğümlerinde bulunan sensörler ile sıcaklık, nem ve ışık değerleri okunacak ve server düğüme gönderilecektir. Bu uygulamada 2 de yapılan uygulamadan farklı olarak server cihazına “hello” mesajı yerine sensörlerden okunan değerler gönderilecektir.
   * Bu adım için Tmote Sky sensör fonksiyonları kullanabiliyor olmanız gerekir.
   * Alternatif olarak client düğümler kendi id numarasını sunucuya gönderebilirler (2 ya da daha çok sunucu olabilir), server düğüm[ler] bu numaraları alıp toplamını ekrana yazabilirler
1. *İkinci adımda gerçekleştirilen simülatör uygulaması Sky Mote donanımlarıyla gerçeklenecektir. Sensörlerden okunan değerler “minicom” isimli metin tabanlı modem kontrol programıyla görüntülenecektir.*

---

# Uzaktan Eğitim Sürecinde Ölçme ve Değerlendirme
## Deney Ödev Raporunun Hazırlanması (Arasınav için)
* Laboratuvar deney ödevi olarak **rapor** hazırlanmalıdır.
* Rapor için laboratuvar web sayfasındaki *şablon* kullanılacak.
* Çekilen video her öğrencinin kendi drive hesabında yüklü olacak ve bağlantısı rapora eklenecek
* Video içerisinde
  * Kurulum aşamaları
  * contaki ve cooja simulatörünün çalıştırılması
  * Hello World, Broadcast ve client server uygulamalarının yapılışı olmalıdır.

## Deney Ödev Raporunun Hazırlanması (Dönemsonu sınavı için)
* Video 7-8 dk. yı **geçmemelidir.**
* Çekilen video her öğrencinin kendi drive hesabında yüklü olacak ve bağlantısı rapora eklenecek
* Video içerisinde
  * Kurulum aşamaları
  * contaki ve cooja simulatörünün çalıştırılması
  * Hello World, Broadcast ve client server uygulamalarının yapılışı olmalıdır.

---

## Önemli Bağlantılar
* [Contiki Tutorial](https://anrg.usc.edu/contiki/index.php/Contiki_tutorials) - işletim sisteminin kurulumu ve örnek uygulamaları barındırır.
* [Contiki OS](https://github.com/contiki-os/contiki)
* [Contiki-NG OS](https://github.com/contiki-ng/contiki-ng)
* Some WSN Tutorials
  * [WSN Tutorials-pdf](http://pages.di.unipi.it/bonuccelli/sensori.pdf)
  * [Wikipedia](https://en.wikipedia.org/wiki/Wireless_sensor_network)
  * [WSN Architecture](https://www.elprocus.com/architecture-of-wireless-sensor-network-and-applications/)
  * [WSN Overview-pdf](https://cdn.intechopen.com/pdfs/38793/InTechOverview_of_wireless_sensor_network.pdf)
  
---

**Not:** Kırık linkleri lütfen *zyavuz@ceng.ktu.edu.tr* adresine bildiriniz.
