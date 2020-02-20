# Wireless Sensor Networks (WSN)
Bilgisayar Ağları Laboratuvarında bir deney olarak tasarlanan bu deney Kablosuz Sensör Ağlarının simulasyonunu yapmayı kapsamaktadır.

![WSN](/2_computer_networks_lab/Example-of-a-wireless-sensor-network-based-on-the-Berkeley-mote-platform-The-circles.png)

Amaç, sıcaklık, ses, basınç, nem gibi fiziksel ve çevresel değişiklikleri algılamak ve algılanan veriyi kurulan kablosuz ağ üzerinden işbirliği içerisinde ana bir merkeze iletmektir. 

Kablosuz sensör ağlarda her bir **sensör düğümü (mote)** olarak isimlendirilir.

Kablosuz sensör ağlarda sensör düğümlerinin çalışması 3 aşamada düşünülebilir.
* **Algılama (Sensing):** Sensörler vasıtasıyla fiziksel biyiklükler algılanır ve sayısal değer olarak iletilir.
* **Bilgi İşleme (Processing):** Contiki vb. kısıtlı hafıza ve düşük güç gerektiren işletim sistemlerine yazılan yazılımlarla algılanan veriler işlenmektedir.
* **Haberleşme**: Sensör düğümü (mote) ile diğer sensör düğümlerinin işbirliği içerisinde çalışarak verileri ana bir merkeze ulaştırır.
  * Fiziksel, veri iletim, ağ, taşıma ve uygulama katmanları (5 adet) yardımıyla haberleşilir.
  * Kullanılan standartlar, IEEE 802.15.4 ve onun üzerinde çalışan ZigBee protokolüdür.
  
Deneyde **contiki** işletim sistemi ve bu sisteme kurulu **coaja** simulatörü kullanılacaktır.

## DENEYDE GERÇEKLEŞTİRİLECEK UYGULAMALAR
1. COOJA simülatörü kullanarak contiki/examples/ipv6/simple-upd-rpl/broadcastexample.c örneği gerçekleştirilecektir.
1. COOJA simülatörü kullanılarak bir server/client uygulaması yapılacaktır. Bu uyguama için examples/ipv6/rpl-udp/udp-server.c ve examples/ipv6/rpl-udp/udp-client.c kaynak dosyaları kullanılacaktır.
1. COOJA simülatörü kullanarak Sky Mote sensör düğümlerinde bulunan sensörler ile sıcaklık, nem ve ışık değerleri okunacak ve server düğüme gönderilecektir. Bu uygulamada 2 de yapılan uygulamadan farklı olarak server cihazına “hello” mesajı yerine sernsörlerden okunan değerler gönderilecektir.
1. İkinci adımda gerçekleştirilen simülatör uygulaması Sky Mote donanımlarıyla gerçeklenecektir. Sensörlerden okunan değerler “minicom” isimli metin tabanlı modem kontrol programıyla görüntülenecektir.

## Önemli Bağlantılar
* [Contiki OS](https://github.com/contiki-os/contiki)
* [Contiki-NG OS](https://github.com/contiki-ng/contiki-ng)
* [Contiki Tutorial](https://anrg.usc.edu/contiki/index.php/Contiki_tutorials)
