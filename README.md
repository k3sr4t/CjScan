# CjScan
Scan your cronjob for suspicious activities and get protect

Linux/debian makinenizdeki cronjobları tarar. Eğer şüpheli bir kod parçası varsa uyarır.
Bu script pardus yarışması için yazılmıştır

crontab dosyalarında şüpheli yükleri kontrol eder. Eğer şüpheli bir cron işi tespit edilirse, güvenilir değilse silmenizi ve bir antivirüs taraması yapmanızı önerir. Aksi takdirde, şüpheli bir cron işi bulunmadığı onaylanır.

(hata alırsanız 
  1. dosya dizinini kontrol et
  2. scan.rb yi sudo olarak çalıştır
bunları deneyebilirsiniz)
