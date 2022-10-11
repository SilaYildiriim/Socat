A1: istemci. client.sh (ya da client.bat) dosyasını çalıştıracaktır. 10 adet TCP4 ve 10 adet UDP4 mesajı 
oluşturacaktır. {id:”ogrencino”, no:”ID” msg:”packet from client”, 
timestamp:”DATETIME”} mesajını A2 makinesi 5001 numaralı porta gönderecektir. ID 
gönderilen mesajın sıra no’su, DATETIME parametresi işletim sisteminin gönderme zamanı olarak 
düzenlenecektir. Windows ve Linux türevi işletim sistemlerinde date komutu çıktısı yeterlidir. Tarih 
formatı ödev için önemli olmayacaktır. Gönderilen her mesaj client.txt dosyasına ayrı satırlar halinde:
1- CLIENT-->{PROTOKOL}: {mesaj}{ID}{datetime} şeklinde yazılması beklenmektedir.
A2: yönlendirici. route.sh (ya da route.bat) dosyasını çalıştıracaktır. Hem UDP hem de TCP protokolü 
için 5001 numaralı portu dinleyecek, gelen mesajın TCP protokolünü kullanması durumunda A4 
bilgisayarına, UDP protokolü olması durumda da A3 bilgisayarına yönlendirecektir. route.txt dosyasına 
her yönlendirme işlemini ayrı satıra olmak üzere:
1- ROUTER-->PROTOKOL: [{mesaj}{ID}{datetime}] {datetime} şeklinde yazılması beklenmektedir.
Buradaki PROTOKOL değeri gelen protokole göre UDP4 ya da TCP4 olacaktır. Buradaki mesaj, ID ve ilk 
datetime parametresi A1’den A2 bilgisayarına gelen mesajın içeriğidir. İkinci datetime ise A2 
bilgisayarının mesajı aldığı andaki datetime değeri olacaktır.
A3: UDP4 sunucu. udpserver.sh (ya da udpserver.bat) dosyasını çalıştıracaktır. UDP4:10001 portunu 
dinleyecek ve gelen mesajı udplog.txt dosyasına kaydedecektir. udplog.txt dosyasına gelen her mesaj 
ayrı satırlarda olmak üzere:
UDP--> [{mesaj}{ID}{datetime}] {datetime}şeklinde yazılması beklenmektedir. Buradaki mesaj, ID ve ilk 
datetime parametresi A1’den A2 bilgisayarına gelen mesajın içeriğidir. İkinci datetime ise A3
bilgisayarının mesajı aldığı andaki datetime değeri olacaktır.
A4: TCP4 sunucu. tcpserver.sh (ya da tcpserver.bat) dosyasını çalıştıracaktır. TCP4:20002 portunu 
dinleyecek ve gelen mesajı tcplog.txt dosyasına kaydedecektir. tcplog.txt dosyasına gelen her mesaj 
ayrı satırlarda olmak üzere:
TCP--> [{mesaj}{ID}{datetime}] {datetime} şeklinde yazılması beklenmektedir. Buradaki mesaj, ID ve ilk 
datetime parametresi A1’den A2 bilgisayarına gelen mesajın içeriğidir. İkinci datetime ise A4 
bilgisayarının mesajı aldığı andaki datetime değeri olacaktır.
• Tüm mesajlardaki {, }, [ ve ] parantezleri korunacaktır.
• Mesajların ilk sütünunda mesaj numarası 1’den başlayacak şekilde bulunacaktır.
• Txt dosyası mevcut değilse oluşturulacak, mevcutsa üzerine yazılacaktır. Her çalıştırmada yeni 
log değerleri yazılacaktır.
Bonus: A1 den A2’ye ulaşılamaması ya da A2’den A3 ya da A4 bilgisayarlarına ulaşılamaması 
durumunda ilgili txt dosyasına “ERR: Ax’ten Ay’ye ulaşılamadı” yazılması bonus olarak 
değerlendirilebilecektir
