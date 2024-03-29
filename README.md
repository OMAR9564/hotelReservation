# Otel Rezervasyon Uygulaması

Bu projede, bir otel rezervasyon uygulamasının temel özelliklerini içeren bir yazılım geliştirilmiştir. Bu uygulama, otel müşterilerinin rezervasyon yapabilmesine, mevcut rezervasyonları görüntüleyebilmesine ve rezervasyonları iptal edebilmesine olanak tanır.

## Özellikler

- Kullanıcılar, otel odaları arasından seçim yapabilir ve rezervasyon yapabilir.
- Kullanıcılar, rezervasyonlarını görüntüleyebilir ve mevcut rezervasyonlarını düzenleyebilir.
- Kullanıcılar, rezervasyonlarını iptal edebilir ve otel odası durumunu güncelleyebilir.
- Yöneticiler, kullanıcıları yönetebilir, otel odalarını ekleyebilir ve düzenleyebilir.
- Yöneticiler, otel odası durumunu güncelleyebilir ve mevcut rezervasyonları görüntüleyebilir.

## Kurulum

1. Projeyi yerel makinenize klonlayın:

   ```
   git clone https://github.com/OMAR9564/hotelReservation.git
   ```
2. İndirdiğiniz veya klonladığınız dizine gidin:
   ```
   cd hotelReservation
   ```
3. Daha sonra, MySQL sunucunuzda yeni bir veritabanı oluşturun ve hotel.sql dosyasını içe aktarın
   ```
   mysql -u kullanici_adi -p veritabani_adi < hotel.sql
   ```
- phpMyAdmin gibi bir araç kullanıyorsanız, veritabanı oluşturun ve "İçe Aktar" seçeneğini kullanarak hotel.sql dosyasını seçin.

## Kullanim
  1.  Kayıt olmak için bir kullanıcı hesabı oluşturun.
  2.  Giriş yapın ve mevcut otel odalarını görüntüleyin.
  3.  Bir otel odası seçin ve rezervasyon yapmak istediğiniz tarihleri belirtin.
  4.  Rezervasyonlarınızı görüntüleyin ve gerektiğinde düzenleyin veya iptal edin.
  5.  Yönetici hesabıyla giriş yaparak otel odalarını düzenleyin veya yeni otel odaları ekleyin.
  6.  Mevcut rezervasyonları görüntüleyin ve otel odası durumunu güncelleyin.
