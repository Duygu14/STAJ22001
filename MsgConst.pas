unit msgConst;

interface
uses byzLangRes;

resourcestring
//Dsgnbl Form

  CantSaveObject          = 'Obje kaydedilemedi. Lütfen tekrar deneyin.';
  WritingToDiskFinished   = 'Disk'' e aktarma iþlemi baþarýyla tamamlandý.';
  WritingObjectUnderGroup = '%s adlý Obje %s adlý grup altýna kaydedilecektir!'+
                            ' Devam edecek misiniz?';
  ObjectExistOwerwrite   = '%s  isminde kayýt mevcut ! Üzerine yazýlsýn mý?';
  DeletingObjectFromDB   = '%s adlý objeyi silmek istediðinizden eminmisiniz?';
  DeletingObjectFinished = '%s adlý obje baþarýyla silinmiþtir.';
  DeletingError          = 'Silme iþleminde hata oluþtu';
  ActivateObjectOnDB     = '%s adlý obje aktif edilecek, eminmisiniz?';
  PasivateObjectOnDB     = '%s adlý obje pasif edilecek, eminmisiniz?';
  JobFinishedWell        = 'Ýþlem baþarýyla gerçekleþtirildi.';
  OccuredAnError         = 'Bir hata oluþtu. Ýþlem tamamlanamadý.';
  ThereisNoCardForModify = 'Düzenleme için belirtilen kart bulunamadý.';

var
//Multi Used
  msgMove           :string  = 'Taþý';
  msgCopy           :string  = 'Kopyala';
  msgPaste          :string  = 'Yapýþtýr';
  msgCancel         :string  = 'Ýptal';
  msgOK             :string  = 'Tamam';
  msgAppointmentPrint:string = 'Randevu Yazdýr';
  msgUpdate         :string  = 'Güncelle';
  msgTxnOK          :string  = 'Ýþlem Baþarýlýyla Tamamlandý';
  msgContinue       :string  = 'Devam Et';
  msgAgain          :string  = 'Tekrar Dene';
  msgEnter          :string  = 'Giriþ';
  msgShowTxn        :string  = 'Ýþlemleri Göster';
  msgAllList        :string  = 'Tüm Liste';
  msgStockAmnt      :string  = 'Stok Miktarý';
  msgReWant         :string  = 'Tekrar Ýste';
  msgDelete         :string  = 'Sil';
  msgCancelApprove  :string  = 'Onay Ýptal';
  msgPolyClinic     :string  = 'Poliklinik';
  msgError          :string  = 'Hata';
  msgChange         :string  = 'Deðiþtir';
  msgTxnEnd         :string  = 'Ýþlem Tamamlandý.';
  msgIsContinue     :string  = 'Devam etmek istiyor musunuz?';
  msgDescription    :string  = 'Açýklama';
  msgApproveDiscount:string  = 'Ýndirim Onayý';
  msgCancelDiscount :string  = 'Ýndirim Ýptali';
  msgStockRequest   :string  = 'Stok Ýsteði';
  msgPurchaseRequest:string  = 'Satýnalma Ýsteði';
  msgNoteEnter      :string  = 'Not Giriþi';
  msgDataEntry      :string  = 'Veri Giriþi';
  msgActiveItem     :string  = 'Etken Madde';
  msgOther          :string  = 'Diðer';
  msgSelectConn     :string  = 'Baðlantý Seçiniz.';
  msgProcessIsOK    :string  = '%s iþlemi baþarýlýyla tamamlandý.';
  msgAssociation    :string  = 'Kurum';
  msgPatient        :string  = 'Hasta';
  msgWaiting        :string  = 'Beklemede';
  msgSaveFile       :string  = 'Dosyayý Kaydet.';
  msgApprove        :string  = 'Onayla';
  msgWantToContinue :string  = 'Yinede devam etmek istiyor musunuz?';
  msgYes            :string  = 'Evet';
  msgNo             :string  = 'Hayýr';
  msgWarningMessage :string  = 'Uyarý Mesajý';
  msgInfoMessage    :string  = 'Bilgi Mesajý';
  msgCanceledProces :String  = 'Ýþleminiz iptal edildi.';
  msgAdd            :String  = 'Ekle';
  msgDoctorName     :String  = 'Doktor Adý';
  msgDeptName       :String  = 'Bölüm Adý';
  msgInstrumentName :String  = 'Cihaz Adý';
  msgMakePlan       :String  = 'Planla';
  msgCorrect        :String  = 'Düzelt';
  msgCancelContinue :String  = 'Ýþleme Devam Edemezsiniz.';
  msgSelect         :String  = 'Seç';
  msgHide           :String  = 'Gizle';
  msgReport         :String  = 'Rapor';
  msgNew            :String  = 'Yeni';
  msgPrintPage      :String  = 'SAYFA';
  msgPrintTotalPage :String  = 'TOPLAM SAYFALAR';
  msgList           :String  = 'Liste';
  msgSave           :String  = 'Kaydet';
  msgEdit           :String  = 'Deðiþtir';
  msgTotal          :String  = 'Toplam';
  msgFetchingList   :String  = 'Liste Alýnýyor.';
  msgSend           :String  = 'Gönder';
  msgUnknown        :string  = 'BÝLÝNMÝYOR';
  msgSnetCancel     :string  = 'e-Nabýz takip bilgisi silinmiþtir.';
  msgRun            :string  = 'Çalýþtýr';
  msgCloseAll       :string  = 'Tümünü Kapat';
  msgCloseSel       :string  = 'Seçiliyi Kapat';
  msgAll            :string  = 'Tümü';
  msgIsSelect       :string  = 'Seçili';
  msgMessage        :string  = 'Mesaj';
  msgCancelWantToContinue :string  = 'Ýþleme Devam Edilmeyecek!' + #13#10 + 'Yinede devam etmek istiyorsanýz "HAYIR"''a týklayýn!';
  msgOpening        :strinG  = 'Açýlýyor...';

  msgMultiUsed001 :string = 'Bu zaman aralýðýna randevu veremezsiniz.' + #13 +
                    'Seçtiðiniz zaman aralýðýnda, ekip bilgisindeki personel(ler)in' + #13 +
                    'daha önce verilmiþ randevularý vardýr.';
  msgMultiUsed002 :string = 'Kuruma fatura kesilirken, ortak bir icmalde birleþtirilmek isteniyorsa, buradan ortak yer seçilir.';
  //msgMultiUsed004 :string = 'Hasta için kurum seçerken, sol tarafta Ana Kurum Listesinde görünmesini istiyorsanýz, bu alan seçili olmalýdýr.';
  msgMultiUsed005 :string = 'Ayný kayýt sistemde mevcut.';
  msgMultiUsed006 :string = 'Girilmesi gereken Kimlik numarasý en az 11 hane olmalýdýr.';
  msgMultiUsed007 :string = 'Telefon formatý : Alan Kodu + Numara þeklinde olmalýdýr.'+#13+
                    'Örneðin : Ýstanbul için ; 212 416 11 56'+#13+
                    'Tekrar deneyecek misiniz?';
  msgMultiUsed008 :string = 'Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?';
  msgMultiUsed010 :string = 'Bir hata oluþtu. Ýþlem tamamlanamadý.';
  msgMultiUsed011 :string = 'Ýcmallerin Kurumu ayný olmalýdýr.';
  msgMultiUsed012 :string = 'Onaylanmýþ veya Fatura kaydý yapýlmýþ icmal içerisinde hiçbir deðiþiklik yapamazsýnýz.';
  msgMultiUsed013 :string = 'Muhasebeye aktarýlmýþ faturalarý silemezsiniz.!';
  msgMultiUsed014 :string = 'Farklý Þubeye ait dosya üzerinde iþlem yapamazsýnýz.';
  msgMultiUsed015 :string = 'YENÝ VERSÝYON BULUNDU.'  + #13 +
                    'YAPTIÐINIZ DEÐÝÞÝKLÝKLERÝ KAYDETMEYÝ UNUTMAYINIZ.';
  msgMultiUsed016 :string = 'Dikkat! ' + #13 +
                    'Bizmed yeni güncelleme nedeniyle 30 saniye sonra kapatýlacak.' + #13 +
                    'Yaptýðýnýz deðiþiklikleri kaydediniz.';
  msgMultiUsed017 :string = 'Hastaya ait iþlemlerin fiyatlarý güncellenecek.'+#13+
                    'Devam etmek istiyor musunuz?';
  msgMultiUsed018 :string = 'Geçmiþ zamana randevu veremezsiniz.';
  msgMultiUsed020 :string = 'Dosya Yolunu Seçiniz';
  msgMultiUsed021 :string = 'TC Giriþi';
  msgMultiUsed022 :string = 'Kayýt bulunamadý.';
  msgMultiUsed024 :string = 'Girdiðiniz TC Kimlik Numarasý hatalýdýr.';
  msgMultiUsed027 :string = 'Ýki tarih arasýndaki fark en fazla %d gün olmalýdýr.';
  msgMultiUsed028 :string = 'Kullanýcýnýn "Hasta Geliþ Tipleri" ni görme yetkisi yok.';
  msgMultiUsed030 :string = 'Gönderilecek kayýt bulunamadý.';
  msgMultiUsed031 :string = 'Þablon Adý Giriniz.';
  msgMultiUsed032 :string = 'Þablon olarak kaydetmek için bir ad yazýnýz.';
  msgMultiUsed033 :string = ' Ýþleminiz iptal edildi. ';
  msgMultiUsed034 :string = 'Kullanýcý adý veya þifre hatalý. Lütfen kontrol edip tekrar deneyiniz.';
  msgMultiUsed035 :string = 'Bilinmeyen Hata'+#13+'Gelen XML:';
  msgMultiUsed036 :string = 'Tüm Liste getirilecek, devam etmek istiyor musunuz?';
  msgMultiUsed037 :string = 'Listedeki TÜM kayýtlarý silmek istediðinize emin misiniz?';
  msgMultiUsed038 :string = 'Listedeki belirtilen alan bulunamadý.';
  msgMultiUsed039 :string = 'Fatura tarihi, sistem tarihinden büyük, dosya tarihinden küçük olamaz!' ;
  msgMultiUsed040 :string = 'Klinik dosyasý açma yetkiniz yok.';
  msgMultiUsed041 :string = 'Hastanýn Medula Çýkýþýda Yapýlsýn mý?';
  msgMultiUsed042 :string = 'Ýþlemi yapacak doktorun çalýþma zamanýný kontrol ettiriniz.';
  msgMultiUsed046 :string = 'Dosya kapatýldýðý için iþleminiz iptal edildi.';
  msgMultiUsed047 :string = 'Farklý hastalar üzerinde iþlem yapýyorsunuz.Devam etmek istiyor musunuz?';
  msgMultiUsed048 :string = 'Ýþlem(ler)i kopyalamak/taþýmak istediðinizden emin misiniz?';
  msgMultiUsed049 :string = 'Seçili iþlem(ler) pakete taþýnacak, iþleme devam etmek istiyor musunuz?';
  msgMultiUsed050 :string = 'Seri barkod takibinin kaydýnda sorun oluþtu.';
  msgMultiUsed051 :string = 'Geçersiz Barkod numarasý';
  msgMultiUsed052 :string = 'Seçili Excel dosyasý okunamadý.';
  msgMultiUsed053 :string = ' isimli Excel dosyasýna baðlanýlamadý.';
  msgMultiUsed054 :string = 'Kayýtlý takip numarasý olduðu için ilk önce bu takip numarasýný silmelisiniz.';
  msgMultiUsed055 :string = 'Deðiþikliði yapmak istediðinizden emin misiniz?';
  msgMultiUsed056 :string = 'Ayný kayýt sistemde mevcut, yinede eklemek istiyor musunuz?';
  msgMultiUsed057 :string = 'Yaptýðýnýz Deðiþiklikleri Kaydetmek Ýstiyormusunuz ? ';
  msgMultiUsed058 :string = 'Baþlangýç tarihi , Bitiþ tarihinden büyük olamaz.';
  msgMultiUsed059 :string = 'Ýcmal seçmeniz gerekir.';
  msgMultiUsed060 :string = 'Bu Not tipinde ekleme yetkiniz yok. Ýþleminiz iptal edildi.';
  msgMultiUsed061 :string = 'Ýcmalleri birleþtirmek istediðinizden emin misiniz?';
  msgMultiUsed062 :string = 'Seçili iþlem(ler) Medula''ya gönderilecek, devam etmek istiyor musunuz?';
  msgMultiUsed063 :string = 'Medula Çýkýþýný iptal etmek istediðinizden emin misiniz?';
  msgMultiUsed064 :string = 'Öncelikle baþvuru ve takip numarasý almalýsýnýz.';
  msgMultiUsed065 :string = 'Meduladan dönen deðerlere göre sistemdeki veriler güncellenecek. Devam etmek istiyor musunuz?';
  msgMultiUsed066 :string = 'Paket detayý üzerinde iþlem yapmak için paket dýþýna taþýmalýsýnýz.';
  msgMultiUsed067 :string = 'Lütfen firma seçiniz!';
  msgMultiUsed069 :string = 'Açýklama Giriniz';
  msgMultiUsed070 :string = 'DÝKKAT!!! Panik deðerde olan testler mevcut.';
  msgMultiUsed071 :string = 'Yeni bir sýra numarasý vermek istiyor musunuz?';
  msgMultiUsed072 :string = ' numaralý fatura aktarýlamadý.';
  msgMultiUsed073 :string = 'Aktarým iptal edilecek onaylýyormusunuz?';
  msgMultiUsed074 :string = 'Logo''ya aktarýlmýþ kayýtlar da silinsin mi?';
  msgMultiUsed075 :string = 'Muhasebeþtirilmiþ bir faturanýn aktarýmýný iptal edemezsiniz.';
  msgMultiUsed076 :string = 'Logo ile iletiþim kurulamadý!';
  msgMultiUsed077 :string = 'Lütfen firma bilgisini kontrol edip tekrar deneyiniz!';
  msgMultiUsed078 :string = 'Lütfen kullanýcý bilgilerini kontrol edip tekrar deneyiniz!';
  msgMultiUsed079 :string = 'Lütfen yapmak istediðiniz iþlemi seçiniz...';
  msgMultiUsed080 :string = 'Programdan çýkmak istediðinize emin misiniz?';
  msgMultiUsed083 :string = 'Eklemek istediðiniz notu giriniz.';
  msgMultiUsed084 :string = 'Týbbi kartý açmak için yetkiniz yok.';
  msgMultiUsed085 :string = 'Logo kullanýcý bilgileri girilmemiþ.!';
  msgMultiUsed086 :string = 'Lütfen firma bilgisini tanýmlayýnýz!';
  msgMultiUsed089 :string = 'Baðlý Ýþlemler tek baþýna silinemez.';
  msgMultiUsed090 :string = 'Ýþleme Baðlý Rapor Bulunamadý.';
  msgMultiUsed092 :string = 'Aktarým yapýlacak cari hesap kodu tanýmlanmadýðý için aktarým gerçekleþtirilemedi.';
  msgMultiUsed093 :string = 'Stoklarýn SKT/Lot daðýlýmý yapýldý. Kontrol etmek istiyor musunuz?';
  msgMultiUsed094 :string = 'Stok Muadilleri Mevcut Deðil.';
  msgMultiUsed095 :string = 'Fiyatlar deðiþecek, devam edilsin mi?';
  msgMultiUsed096 :string = 'Medula Fiyat Bilgisi Bulunamayan Ýlaç Listesi';
  msgMultiUsed097 :string = 'Hastayý seansa geldi olarak iþaretlemelisiniz.';
  msgMultiUsed098 :string = ' tarihinde iþleme daha önceden randevu verilmiþ.';
  msgMultiUsed099 :string = 'Girdiðiniz deðerleri kontrol ediniz.';
  msgMultiUsed100 :string = 'Stok muadilleri mevcut deðil! Ýþleminiz iptal edildi.';
  msgMultiUsed101 :string = '''%s'' malzemesinin barkodu olmadýðýndan aktarýlamadý';
  msgMultiUsed102 :string = ' adlý istek için not deðeri girilmelidir.';
  msgMultiUsed103 :string = ' adlý Serili Stok sayýsý ile Miktar alanýndaki sayý ayný deðil. Eþitlensin mi?';
  msgMultiUsed104 :string = 'Daha önceki çýkýþ tipine göre hasta dosyasýndaki GSS kurum hesabýna indirim yapýlmýþ görünüyor. '+
                    ' Çýkýþ tipi deðiþikliði için, bu indirimin iptal edilmesi gerekiyor. Ýþleme devam etmek istiyor musunuz?' +#13+
                    'Ýptal edildiyse bu uyarýyý dikkate almayýnýz.';
  msgMultiUsed105 :string = ' Id''li çýktý formunuz yoktur.Çýktý almak için formu yüklemeniz gerekmektedir';
  msgMultiUsed106 :string = 'Bu iþlem, Bizmed'' e kaydedilmeyen ama Medula'' da görünen raporlarýn silinmesi için kullanýlýr.'+#13+
                    'Silme iþlemine devam etmek istediðinize emin misiniz?';
  msgMultiUsed107 :string = 'Çýkýþ tarihi dosyanýn kayýt tarihinden küçük olamaz!';
  msgMultiUsed108 :string = 'Dosya durumu Çýkýþ yapmanýza uygun deðil.';
  msgMultiUsed109 :string = 'Dosya kontrollerindeki eksiklikleri giderdikten sonra iþleminizi yeniden deneyiniz'+#13+
                    'Kapanýþ Yap iþleminiz iptal edildi.';
  msgMultiUsed110 :string = 'Dosya tarihinden öncesine veya çýkýþ tarihinden sonrasýna iþlem yapamazsýnýz.';
  msgMultiUsed111 :string = 'Dosyanýn takibi alýnmadýðý için iþleminiz iptal edildi.';
  msgMultiUsed112 :string = 'Elinizdeki miktar eksiye düþtüðünden/düþeceðinden,'+#13+ '%s  adlý stoðu iþleyemezsiniz.';
  msgMultiUsed113 :string = 'Faturalanmýþ,'+#13+'Tahsilatý yapýlmýþ,'+#13+'Medula ya gönderilmiþ '+#13+
                    'Paket dýþý seçilmiþ veya '+#13+'Fiyatý sýfýr olan bir paket iþleminin içine, iþlemleri taþýyamazsýnýz.';
  msgMultiUsed114 :string = 'Hasta dosyasýnýn kapanýþý da yapýlsýn mý?';
  msgMultiUsed115 :string = 'Hasta kaydýnda, kontrol edilmesi gereken Not(lar) var...';
  msgMultiUsed116 :string = 'Hastanýn "Çýkýþ Þekli" belirtilmek zorundadýr.';
  msgMultiUsed117 :string = 'Hastanýn diðer geliþlerine ait borçu bulundu. Devam etmek istiyor musunuz?';
  msgMultiUsed118 :string = 'Ýndirim yapma yetkiniz olmadýðý için, çýkýþ þeklinden kaynaklanan indirim hasta dosyasýna uygulanmadý.';
  msgMultiUsed119 :string = 'Ýþlem tarihi sistem tarihinden büyük olamaz!';
  msgMultiUsed120 :string = 'Ýþlemi Kaydetmek Ýstiyor musunuz?';
  msgMultiUsed121 :string = 'Malzeme mevcudu sýfýrýn altýna düþeceði için, iþleminiz iptal edilecek';
  msgMultiUsed122 :string = 'Miktar sýfýr veya altýnda olamaz.';
  msgMultiUsed123 :string = 'Rapor Türü ve Baþlangýç tarihi deðerleri dolu olmalýdýr.';
  msgMultiUsed124 :string = 'Seçili kaydý iptal etmek istediðinizden emin misiniz?';
  msgMultiUsed125 :string = 'Þablon %s adý ile baþarýyla kaydedilmiþtir.';
  msgMultiUsed126 :string = 'Tümünü Sil';
  msgMultiUsed127 :string = 'LOT ve/veya Son Kullanma Tarihi kontürolü yapýlan bir stok Tekrar kullanýlabilir olamaz.';
  msgMultiUsed128 :string = 'Bu kayýt daha önce %s adý ile kaydedilmiþtir.';
  msgMultiUsed129 :string = 'Düzenleme için belirtilen kart bulunamadý.';
  msgMultiUsed130 :string = 'Liste düzenleme kartýnda hata alýndý (%s)!';
  msgMultiUsed131 :string = 'Ayný kayýt daha önce eklenmiþ!';
  msgMultiUsed133 :string = 'Biyometrik Kimlik Doðrulama Sorgulanýyor...';
  msgMultiUsed134 :string = '%s kurumuna ait fatura kesildiðinden iþlem yapamazsýnýz!';
  msgMultiUsed135 :string = 'Saðlýk nete baþarýlý gönderilmiþ kayýtlar var! devam etmek istiyormusunuz?';
  msgMultiUsed136 :string = 'Yeni dönem oluþturulsun mu?';
  msgMultiUsed137 :string = 'Medula fiyatlarý güncelleniyor lütfen bekleyiniz.';
  msgMultiUsed138 :string = 'Provizyon numarasý alýnmayan iþlemler bulunmaktadýr. Ýþleminiz iptal edildi';
  msgMultiUsed139 :string = 'Ýmzalanýyor...Bu imza 5070 sayýlý elektronik imza kanununa göre güvenlidir';
  msgMultiUsed140 :string = 'Bu iþlemi yapmaya yetkiniz yoktur.';
  msgMultiUsed141 :string = 'Ana makina Zamaný / dilimi : %s '+#13+'Sistem zamaný / dilimi : %s '+#13+
                            'Farklý olduðundan uygulama kapanacaktýr.';
  msgMultiUsed142 :string = 'Ana makina Zamaný / dilimi : %s '+#13+'Sistem zamaný / dilimi : %s '+#13+
                            '%s , bilgisayarýnýzýn saatini deðiþtiremedi.'+#13+
                            'Lütfen Güvenlik ekranýndan "Sistem Saatini Deðiþtir" yetkisini Windows kullanýcýsýna veriniz.';
  msgMultiUsed143 :string = 'Daha sonra tekrar deneyiniz.';
  msgMultiUsed144 :string = 'Lütfen sayýsal bir deðer giriniz.';

  msgMultiUsed145 :string = 'Pasaport numarasý %s hastasýna kayýtlýdýr.';
  msgMultiUsed146 :string = 'Plaka No boþ býrakýlamaz.';
  msgMultiUsed147 :string = 'Silinecek kayýt bulunamadý.';
  msgMultiUsed148 :string = 'Bu geliþine ait Laboratuvar verileri bulunamadý!' + #13#10 + 'Son 1 aya ait veriler kontrol edilsin mi?';
  msgMultiUsed149 :string = 'Güncel kayýtlar meduladan tekrar sorgulanacaktýr.';
  msgMultiUsed150 :string = 'Ýlgili Ýþlem daha önce kullanýlmýþ, Pasife alýnsýn mý?';
  msgMultiUsed151 :string = 'Aktarým yapýlacak satýrýn Muhasebe Kodu olmadýðýndan aktarým iptal edildi.';
  msgMultiUsed152 :string = 'Bizmed güncellenmesi sýrasýnda hata oluþtu!'+#13+' Lütfen bilgi iþlemden destek isteyiniz';
  msgMultiUsed153 :string = 'Mahalle bilgisini seçmeniz gerekiyor.';

  msgMultiUsed154 :string = 'Talep ettiðiniz miktar, yetkiniz olan tavan miktarý aþacaktýr. ' +#13+ ' Ýþleminiz iptal edildi.';
  msgMultiUsed155 :string = 'Devretmediðiniz Nöbet Bulundu! Þimdi bu nöbetinizin son kontrollerini yaparak devretmelisiniz.';
  msgMultiUsed156 :string = 'Mesaj: %s - %s tarihleri arasýndaki Nöbet %s tarafýndan teslim alýndý. ';
  msgMultiUsed157 :string = 'Mesaj : %s kullanýcýsýnýn %s ile %s arasýndaki geçmiþ nöbeti görüntülenmektedir.';
  msgMultiUsed158 :string = 'Ýmzalama iþlemi baþarý ile tamamlandý.';
  msgMultiUsed159 :string = 'Devredilen Nöbet geri ALINAMAYACAK ve iþlem GÝRÝLEMEYECEKTÝR!' + #13 +
                            'Nöbetinizi devretmek istediðinizden emin misiniz?';
  msgMultiUsed160 :string = 'Girilen tarihler arasýnda Nöbet tanýmý bulundu. Ýþleminiz iptal edildi!' + #13 +
                            'Kontrol ederek, eklemeyi tekrar deneyin!';
  msgMultiUsed161 :string = 'Medula fiyatýna göre fiyatý deðiþtirilecek Cari/Sgk Fark fiyat listesi bulundu.' + #13 +
                            'Fiyat deðiþimine izin verilsin mi?';
  msgMultiUsed162 :string = 'Güncel kayýtlar tekrar meduladan sorgulansýn mý? Hayýr seçilirse bu kayýtlar için iþlem yapýlmaz';
  msgMultiUsed163 :string = 'Kayýtlar silinerek! kopyalanan kayýtlar yapýþtýrýlacak devam etmek istiyormusunuz?';
  msgMultiUsed164 :string = '%s hizmetine baðlý, %s isimli hizmeti gerçekten eklemek istiyor musunuz?';
  msgMultiUsed165 :string = 'Ýþlem Notu';
  msgMultiUsed166 :string = 'Diðer Notlar';
  msgMultiUsed167 :string = 'Kayýtlar Güncelleniyor. Lütfen Bekleyiniz.';
  msgMultiUsed168 :string = 'Açmak için týklayýnýz';
  msgMultiUsed169 :string = 'Kayýt silinecektir. Emin misiniz ?';
  msgMultiUsed170 :string = '%s - %s Tarihleri Arasýndaki %s Raporu';
  msgMultiUsed171 :string = 'Order "Diðer" Notlar Bulundu... Þablon olarak Kaydetmek Ýster Misiniz?';
  msgMultiUsed172 :string = '%s Stoðu Eczane Tarafýndan Kullaným Dýþýna alýnmýþ. Lütfen Yapýlacak Ýþlemi Seçiniz.';
  msgMultiUsed173 :string = 'Seçilen Muadil Stok Order Þablondaki Kullaným Dýþý Stok ile Deðiþtirilsin Mi?';
  msgMultiUsed174 :string = 'Lütfen aktarým yapýlacak firma bilgilerinin tanýmýný yapýnýz.';
  msgMultiUsed175 :string = '%s ''yi aþan tahsilatlarda fiþ kesemezsiniz. Fatura kesilmesini istiyor musunuz?';
  msgMultiUsed176 :String = 'Eski Ýstekler';
  msgMultiUsed177 :String = 'Lütfen tüm alanlarý doldurunuz';
  msgMultiUsed178 :String = 'Aktarýlan fatura iptal/iade edilecektir. ';
  msgMultiUsed179 :String = 'Aktarýlan fatura silinecektir. ';
  msgMultiUsed180 :String = 'Google hesabýna baðlantý hatasý !';
  msgMultiUsed181 :String = 'Google takvim kaydý yapýlýyor...';
  msgMultiUsed182 :String = 'Google Hangout açýlýyor...';
  msgMultiUsed183 :String = 'Google baðlantýsý kuruluyor...';
  msgMultiUsed184 :String = 'Google takvim kaydý siliniyor...';
  msgMultiUsed185 :String = 'Access Token için baþvuru aþamasýndayýz...';
  msgMultiUsed186 :String = 'Access Token Alýndý !';
  msgMultiUsed187 :String = 'OAuth 2.0 iþlemi Baþarýlý !';
  msgMultiUsed188 :String = 'Google Login Baþarýsýz !';
  msgMultiUsed189 :String = 'Google hesap þifreniz deðiþtirilmiþ!' + #13#10 +
                            '1. API ayarlarýný yaptýðýnýz "Eski Þifrenize" dönerek iþlemlerinize devam edebilirsiniz.' + #13#10 +
                            '2. API ayarlarýný "Yeni Þifreniz" ile tekrar yapýp ilgili alanlarý Bizmed üzerinde kaydedebilirsiniz.';
  msgMultiUsed190 :String = 'Medula birim bilgileri alýnýrken hata ile karþýlaþýldý !';
  msgMultiUsed191 :String = 'Ýleriki bir zamana iþlem yapamazsýnýz.';
  msgMultiUsed192 :String = 'Tüm detay kayýtlarý silmek istediðinizden emin misiniz?';
  msgMultiUsed193 :String = 'Sadece kaydý oluþturan kullanýcý silebilir.';
  msgMultiUsed194 :String = 'E-Nabýza gönderilmiþ kayýt üzerinde deðiþiklik yapmak için'+
  	' E-Nabýz kayýdýný silmek gerekiyor. '+ #13#10 +'E-Nabýz kaydý silinsin mi?';
  //AccountProcess
  msgAccountProcess001 :string = 'SGK kurum hesabýnda yapýlacak deðiþiklik ve sonucunda olacak hatalar kesintilere neden olacaktýr.'+#13+
                         'Yinede devam etmek istiyor musunuz?';
  msgAccountProcess002 :string = 'Yalnýz bir hesabý sabitleyebilirsiniz!';
  msgAccountProcess003 :string = 'Hesap detayý için yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgAccountProcess004 :string = '% 100'' den büyük deðer giremezsiniz!';
  msgAccountProcess005 :string = 'Provizyon numarasýný girmeden devam edemezsiniz.';
  msgAccountProcess006 :string = 'Provizyon silme iþlemi baþarýyla tamamlandý.'; //146389
  msgAccountProcess007 :string = 'Sadece manuel girilen provizyonlarý silebilirsiniz.'; //146389
  msgAccountProcess008 :string = 'Teyit almanýz gerekmektedir. ';
  msgAccountProcess009 :string = 'Bu kuruma hesap oluþturamazsýnýz!';

  //AdminQuery
  msgAdminQuery001 :string = ' tarihleri arasýnda çalýþacak. Bu iþlem uzun sürebilir yinede devam etmek istiyor musunuz?';

  //CentralManage
  msgCentralManage001 :string ='Ýþlemleri iptal etmek istiyormusunuz';


/// <summary>
/// AppointmentProcess
/// LRF_ID=56
/// </summary>
  msgAppointmentProcess001 :string = 'Randevu baþlangýç zamaný : ';
  msgAppointmentProcess002 :string = 'Randevu bitiþ zamaný : ';
  msgAppointmentProcess003 :string = 'Belirtilen maksimum internet randevu sayýsýna ulaþýlmýþtýr. ';
  msgAppointmentProcess004 :string = 'Bu zaman aralýðýna randevu veremezsiniz.' + #13 +
                             'Seçtiðiniz zaman aralýðýna, daha önce verilmiþ bir randevu vardýr.';
  msgAppointmentProcess006 :string = 'Yetkiniz olmayan bir cihaza randevu veremezsiniz.';
  msgAppointmentProcess007 :string = 'Seçilen gün için %s - %s saat aralýðýna randevu veremezsiniz.';
  msgAppointmentProcess008 :string = 'Belirtilen aralýða randevu verilmiþ veya internet randevusuna açýlmamýþ.';
  msgAppointmentProcess009 :string = 'Belirtilen gün için randevu tanýmý yok veya resmi tatil olduðu için iþlem yapamazsýnýz.';
  msgAppointmentProcess010 :string = '"%s" randevu tipinde belirtilen (%s) maksimum sayýya ulaþýlmýþtýr.';
  msgAppointmentProcess011 :string = 'Belirtilen maksimum randevu sayýsýna ulaþýlmýþtýr. ';
  msgAppointmentProcess012 :string = 'Geçmiþ veya sonraki günlerdeki bir randevunun kaydýný yapamazsýnýz.';
  msgAppointmentProcess013 :string = 'Kontrol için daha önceden ayný bölüme geliþinin olmasý gerekir.';
  msgAppointmentProcess014 :string = 'Kapatýlan alan için, Ekip bilgisi girilmesine izin verilsin mi?';
  msgAppointmentProcess015 :string = 'Geçmiþ günlere randevu taþýyamazsýnýz.';
  msgAppointmentProcess016 :string = 'Seçili randevu hastanýn tercihi olduðu için baþka bir kaynaða aktaramazsýnýz.';
  msgAppointmentProcess017 :string = 'Farklý bölümler arasýnda iþlem yapýyorsunuz!!!';
  msgAppointmentProcess019 :string = 'Yanlýþ kayýt üzerinde iþlem yapýyorsunuz.';
  msgAppointmentProcess020 :string = 'Üzerinde iþlem yapýlan ile seçilen kayýt farklý olduðundan iþleminiz iptal edildi. Tekrar deneyiniz.';
  msgAppointmentProcess021 :string = ' lira muayene fark fiyatý alýnmaktadýr. Devam etmek istiyor musunuz?';
  msgAppointmentProcess022 :string = 'Randevu bilgileri güncellensin mi?';
  msgAppointmentProcess023 :string = 'Yanlýþ randevu seçtiniz. Tekrar deneyin.';
  msgAppointmentProcess024 :string = 'Hastaya ait durumu "Beklemede" olan bir randevu bulunamadý.';
  msgAppointmentProcess025 :string = 'Belirttiðiniz aralýkta randevu bulunamadý.';
  msgAppointmentProcess026 :string = 'Hastaya ait randevu bilgisi aþaðýdaki gibidir. Silme iþlemine devam edilsin mi?';
  msgAppointmentProcess027 :string = 'Hastaya ait birden fazla randevu bulundu. Silmek için ilgili bölüme ve saate giderek silebilirsiniz';
  msgAppointmentProcess028 :string = 'Bu Gün için Randevu zamaný tanýmlanmamýþtýr.';
  msgAppointmentProcess029 :string = ' bölümünden ';
  msgAppointmentProcess030 :string = ' "%s" e %s, saat %s e  "%s" randevusu verilmiþtir.';
  msgAppointmentProcess031 :string = ' ve ara tatillere (%s-%s) denk gelmeyen ';
  msgAppointmentProcess032 :string = 'Bu saatler arasýnda randevu vermeniz uygun deðildir.'+#13+
                             ' Lütfen Baþlangýç ve Bitiþ tarihleri ' +#13+
                             '%s ile %s aralýðýnda olan %s bir randevu veriniz.';
  msgAppointmentProcess034 :string = ' tarihindeki randevuyu taþýmak istediðinize emin misiniz?';
  msgAppointmentProcess035 :string = 'Ara Tatil';
  msgAppointmentProcess036 :string = 'Yeni Randevu';
  msgAppointmentProcess037 :string = 'Yeni Muayene';
  msgAppointmentProcess038 :string = 'Yeni Kontrol';
  msgAppointmentProcess039 :string = 'Randevuya Kapat';
  msgAppointmentProcess040 :string = 'Randevuyu silmek için açýklama giriniz!';
  msgAppointmentProcess041 :string = 'Randevuyu kapatma nedenini giriniz:';
  msgAppointmentProcess042 :string = 'Yazdýrma Zamaný :';
  msgAppointmentProcess043 :string = 'Randevu Veremezsiniz.';
  msgAppointmentProcess044 :string = 'Silmek istediðiniz hastanýn TC numarasýný giriniz:';
  msgAppointmentProcess045 :string = 'Seçili Randevu kaynaðýna gün içinde %d adet kapatma iþlemi yapýlmýþ.'+
                                     'Bu kadar kapatma iþlemi normal olmadýðýndan, bilgi iþlemden destek isteyiniz.'+
                                     'Yinede devam etmek istiyor musunuz?';
  msgAppointmentProcess046 :string = 'Arama baþlangýç tarihi dýþýnda randevu veremezsiniz.';
  msgAppointmentProcess047 :string = 'Ýzinli';
  msgAppointmentProcess048 :string = 'Ýzin Ýsteðinde bulundu.';
  msgAppointmentProcess049 :string = 'Ýþlem süresinden fazla deðer giremessiniz.';
  msgAppointmentProcess050 :string = 'Ameliyat istemi yapan doktor, belirlenen tarihte izin isteðinde bulundu. Ýþleminiz iptal edilecek.';
  msgAppointmentProcess051 :string = 'Web Randevu Aralýðý';
  msgAppointmentProcess052 :string = 'Web randevu aralýðýndan randevu verilecek.'+ #13 +'Devam etmek istiyor musunuz?';
  msgAppointmentProcess053 :string = 'Randevu iptali E-nabýz a Bildirilsin mi?';
  msgAppointmentProcess054 :string = 'Randevu verilebilecek maksimum sayýyý geçtiniz.';
  msgAppointmentProcess055 :string = 'Kontrol Randevu Aralýðý';
  msgAppointmentProcess056 :string = 'Hasta için zaten ilgili doktora ilgili gün için verilmiþ bir randevu var.';
  msgAppointmentProcess057 :string = 'Baþlangýç Zamaný : %s Bitiþ Zamaný : %s olacak þekilde randevu bilgisini deðiþtirmek istiyor musunuz?';
  msgAppointmentProcess058 :string = 'Randevu baþlangýç ve bitiþ zamanlarý ayný olamaz. Ýþlem iptal ediliyor.';
  msgAppointmentProcess059 :string = 'Hasta Takip baþlangýç kaydý randevu tarihine göre deðiþtirildi.';
  msgAppointmentProcess060 :string = 'Seçilen zaman aralýðýnda verilmiþ randevu bulundu. Ýþleme yinede devam etmek istiyor musunuz?';
  msgAppointmentProcess061 :string = 'Yedek Randevu silinecek. Ýþleme yinede devam etmek istiyor musunuz?';
  msgAppointmentProcess062 :string = 'Randevu zaman deðiþikliði için açýklama giriniz!';
  msgAppointmentProcess063 :string = 'Personel Ýzni Red Edilecek Lütfen Red Açýklamasý Giriniz!';
  


//AppProcessDetail
  msgAppProcessDetail001 :string = 'Hastanýn geçmiþ 10 gün içinde verilmiþ randevu/Hasta Takip kaydýna rastlandý.';
  msgAppProcessDetail002 :string = 'Kayýtlý olmayan hastaya kontrol tipinde randevu veremezsiniz.';
  msgAppProcessDetail003 :string = 'Ayný e-mail adresi sistemde mevcut!';
  msgAppProcessDetail004 :string = 'Ülke bilgisi dolu olmalýdýr!';
  msgAppProcessDetail005 :string = 'Sadece Kimlik Dosyasý olan kayýtlarda Kampanya seçimi yapabilirsiniz.';
  msgAppProcessDetail006 :string = 'Uygun kampanya bulunamadý.';
  msgAppProcessDetail007 :string = 'Yurtdýþý Ülke bilgisi "Türkiye" seçilmemelidir!';
  msgAppProcessDetail008 :string = 'Geçmiþ tarihe randevu veremezsiniz.';
  msgAppProcessDetail009 :string = 'Bölüm :';
  msgAppProcessDetail010 :string = 'Doktor :';
  msgAppProcessDetail011 :string = 'Açýklama alaný doldurulmamýþ';
  msgAppProcessDetail012 :string = 'Ekip bilgisi seçilmemiþ!' +#13 + 'Ekip bilgisini seçip devam ediniz.';
  msgAppProcessDetail013 :string = 'Randevu için iþlem seçilmemiþ!' +#13 + 'Ýþlemi seçip devam ediniz.';
  msgAppProcessDetail014 :string = 'Hastaya randevu verilmesi engellenmiþ!'+#13+'Lütfen Bilgi Ýþlem ile iletiþime geçiniz.';
  msgAppProcessDetail015 :string = 'Bekleyen Konsültasyon isteði var dikkat ediniz.';
  msgAppProcessDetail016 :string = 'Bundan sonra randevu üzerinde deðiþiklik yapýlmayacaktýr.! ' +#13 + 'Yinede devam etmek istiyormusunuz?';
  msgAppProcessDetail017 :string = '%s Ýsimli Hastanýn CRM Kaydýný Sonlandýrmak Ýstermisiniz?';

//AppSettings
  msgAppSettings001 :string = 'iþleminiz "Tümü" için deðilse tanýmýn yapýlacaðý randevu bölümünü seçmelisiniz';
  msgAppSettings002 :string = 'Var olan randevu ayarlarý silinecek, devam edilsin mi?';
  msgAppSettings003 :string = 'Ayný anda hem "Gün" ve hemde "Çalýþma Tarihi" ni giremezsiniz.';
  msgAppSettings004 :string = '"Gün" veya "Çalýþma Tarihi" nden biri dolu olmalýdýr.';
  msgAppSettings005 :string = ' tarih(ler)inde kapatma iþlemi gerçekleþtirilemedi.';
  msgAppSettings006 :string = 'Kapatýlmýþ tüm randevular silinecek, emin misiniz?';
  msgAppSettings007 :string =' * Aktif olmasý gerekir.';
  msgAppSettings008 :string =' * Randevu Verilecek Bölümler tablosunun doldurulmasý gerekir.';
  msgAppSettings009 :string =' * WEB Randevusu olarak iþaretlenmesi gerekir.';
  msgAppSettings010 :string =' * Randevu Zamanlarý tablosunun doldurulmasý gerekir.';
  msgAppSettings011 :string =' * Açýlacak randevunun tarihi bugün ve sonrasý için olabilir.';
  msgAppSettings012 :string = 'WEB randevusu açma iþlemi iptal edildi.' + #13#10 + 'Web randevusu açabilmek için;';
  msgAppSettings013 :string = 'WEB randevusu açma iþlemi tamamlandý.';
  msgAppSettings014 :string = 'Yeni Giriþ';
  msgAppSettings015 :string = 'Tanýmlamak istediðiniz kaynaðýn adýný giriniz :';
  msgAppSettings016 :string = 'Daha önceden randevu verildiði için silemezsiniz.';
  msgAppSettings017 :string = 'Belirtilen bölüm için maksimum randevu sayýsýný geçtiniz.';
  msgAppSettings018 :string = 'Ayný isimden kayýt daha önce eklenmiþ';
  msgAppSettings019 :string = 'Doktor adýna tanýmlý bölüm bulunamadý.' + #13 +
                   'Randevu verilebilmesi için doktorun en az bir tanýmlý bölümünün bulunmasý gerekmektedir.';
  msgAppSettings020 :string = '"%s" randevu tipinde maksimum randevu hesaplanacak!';
  msgAppSettings021 :string = 'Maksimum randevu sayýsý hesaplanýrken manuel randevu kapatýlanlar iþleme alýnmayacaktýr!';
  msgAppSettings022 :string = '%s olarak tanýmlanmýþ devam etmek istiyormusunuz?';
  msgAppSettings023 :string = 'WEB randevusu silme iþlemi tamamlandý.';
  msgAppSettings024 :string = 'WEB randevusu bulunduðundan silme iþlemi yapýlmayacaktýr.';

//AssContDef
  msgAssContDef001 :string = 'Baþlangýç ve Bitiþ saatlerinin her ikiside dolu veya boþ olmalýdýr.';
  msgAssContDef002 :string = 'Bilgiler';  //163497;KDUMAN;04.10.2019;
  msgAssContDef003 :string = 'Ana Bilgiler';  //163497;KDUMAN;04.10.2019;
  msgAssContDef004 :string = 'Anlaþma Tanýmý';  //163497;KDUMAN;04.10.2019;
  msgAssContDef005 :string = 'Kampanya Tanýmý';  //163497;KDUMAN;04.10.2019;

//AssContDefDet
  msgAssContDefDet001 :string = 'Geliþ Tipi girmeniz gerekmektedir.';
  msgAssContDefDet002 :string = 'Hesap Türü girmeniz gerekmektedir.';
  msgAssContDefDet003 :string = 'Ýþlem Tipi girmeniz gerekmektedir.';
  msgAssContDefDet004 :string = 'En son girilen kayýtta Grup Ýþlem Tipi belirtilmediði için yeni kayýt ekleyemezsiniz.';
  msgAssContDefDet005 :string = 'Fiyat tarifesi belirtilmemiþ, lütfen belirtin.';
  msgAssContDefDet006 :string = 'Fiyat tarifesi için "Ýþlem Tipi" ile "Katsayý" alaný ayný anda seçilmelidir.';
  msgAssContDefDet007 :string = 'Fiyat belirtilmemiþ, lütfen belirtin.';
  msgAssContDefDet008 :string = 'Fiyat SIFIR (0) olarak girilmiþ. Devam etmek istiyor musunuz?';
  msgAssContDefDet009 :string = 'Katsayý belirtilmemiþ, lütfen belirtin.';
  msgAssContDefDet010 :string = 'Fiyat Tarifesi belirtilmemiþ, devam edilsin mi?';
  msgAssContDefDet011 :string = 'Referans Anlaþmasý veya Hesap Türü belirtilmemiþ, lütfen belirtin.';
  msgAssContDefDet012 :string = 'Stok fiyatý için Alýþ ortamasýný bulmak için sayýgirilmemiþ.';
  msgAssContDefDet013 :string = 'Fiyat Listesinin katsayý alaný (sýfýrdan büyük olmalýdýr) tanýmlanmalýdýr.';

//AssContDefList
  msgAssContDefList001 :string = 'Var olan anlaþma detay(lar)ý silinecek, devam edilsin mi?';
  msgAssContDefList002 :string = 'Silmek istediðiniz anlaþma, kurum listesinde anlaþma þablonu olarak kullanýldýðý için ' + #13 +
    'iþleminiz iptal edildi!';

//AssContractDef
  msgAssContractDef001 :string = 'Adý alanýný boþ geçemezsiniz.';

//Association
  msgAssociation001 :string = 'Ýl Önce Kurumu Tanýmlayýnýz.';
  msgAssociation002 :string = 'Ýl Önce Þubeyi Tanýmlayýnýz.';
  msgAssociation003 :string = 'Kullanýcýlara güncelleme mesajý gönderilecek, emin misiniz?';
  msgAssociation004 :string = 'Geçerli bir yol girmediðinizden, iþleminiz iptal edilecek.';
  msgAssociation005 :string = 'Ayný "Dosya Yolu Tipi" nde kayýt mevcut, iþleminiz iptal edildi.';
  msgAssociation006 :string = 'Genel dosya yolu tanýmlanmalýdýr!';
  msgAssociation007 :string = 'Belirlenen dosya yolunda klasör bulunamadý!' + #13 + 'Klasör oluþturulsun mu?';
  msgAssociation008 :string = 'Onaylanmak için bekleyen izin talebi olduðu için iþleminiz gerçekleþtirilemiyor.';
  msgAssociation009 :string = 'Eklemek istediðiniz deðerler mevcut aralýklarda var.';
  msgAssociation010 :string = 'Belirlenen dosya yolunda klasör bulunamadý!' + #13 + 'Silinsin mi?';
  msgAssociation011 :string = 'Belirlenen dosya yolunda klasör bulunamadý! devam edilsin mi?';
  msgAssociation012 :string = 'Bu dosya yoluyla kaydedilmiþ dosyalar mevcut. Bu dosyalarýn yollarý deðiþtirilsin mi?';
  msgAssociation013 :string = 'Sistem parametresi deðiþikliði tüm kullanýcýlara gönderilsin mi?';

//AssociationDef
  msgAssociationDef001 :string = 'En az 1 adet anlaþma þablonu tanýmlamalýsýnýz.';
  msgAssociationDef002 :string = 'Hasta dosyasýnda bu kurum seçildiðinde, hangi fiyat þablunun uygulanacaðýný buradan belirtiriz.';
  msgAssociationDef003 :string = 'Manyetik kart kullanan kurumlarda, bu kurumun sadece kart sahibi olanlarda seçilmesini istiyorsanýz, bu alan seçili olmalýdýr.';
  msgAssociationDef004 :string = 'Hasta dosyalarýnda iþlem yapma süresini belirtir. Dosyanýn açýldýðý tarihten itibaren belirtilen gün kadardýr.';
  msgAssociationDef005 :string = 'Adý alaný boþ geçilemez.';
  msgAssociationDef006 :string = 'Bu anlaþma bu kurum için daha önce tanýmlanmýþtýr';
  msgAssociationDef007 :string = 'Anlaþma þablonlarýnda , farklý bir þube tanýmý olduðu için, iþleminiz gerçekleþtirilemedi.';

  msgAssociationDef008 :string = 'Sadece Firma Personeli için çalýþacaksa lütfen personel giriþi yapýnýz.';
  msgAssociationDef009 :string = 'Kayýtlý personellerin hepsi silinecek. Devam etmek istediðinize emin misiniz?';
  msgAssociationDef010 :string = 'Kayýtlý e-Faturalarýn hepsi pasif yapýlacak. Devam etmek istediðinize emin misiniz?';
  msgAssociationDef011 :string = 'Katýlým tutarý veya katýlým oraný belirtilmemiþ. Devam etmek Ýstiyor musunuz?';
  msgAssociationDef012 :string = 'Katýlým tutarý veya katýlým oraný belirtmeniz gerekir. Ýþleminiz iptal edildi.';
  msgAssociationDef013 :string = 'Hizmete göre katýlým payýný bir kere ekleyebilirsiniz!';
  msgAssociationDef014 :string = 'e-Fatura kurumu için, en az 1 tane aktif "Posta Kodu" tanýmlamanýz gerekiyor.';
  msgAssociationDef015 :string = 'GSS Kurumunda yapýlan deðiþiklik Hasta geliþlerine uygulanacak.'+  #13 +
     'Bu iþlem uzun sürebilir yinede devam etmek istiyor musunuz?';
  msgAssociationDef016 :string = 'Seçilen Excel dosyasýnda ilk hücre baþlýk olmalýdýr,'+  #13 +
     'Alanlar ise soldan ilk olarak TC no, Pasaport No,Adý ve Soyadý þeklinde olmalýdýr.'+  #13 +
     'Excel dosyasýna baðlanmada hata alýrsanýz dosya tipinin XLS olmasýna dikkat ediniz.';
  msgAssociationDef017 :string = 'Seçilen sözleme puaný için iþlenmiþ kayýtlar var! silinemez.';
  msgAssociationDef018 :string = 'Müþteri temsilcisi alanýnda deðiþiklik yapýldý. Kaydetmek istiyor musunuz?';
  msgAssociationDef019 :string = 'Diðer Notlar SQL (:UPN, :PT_ID, :INV_ID Kullanýlabilir)';
  msgAssociationDef020 :string = '%s TC Kimlik/Pasaport %s kiþi %s kurumun personel yakýnlarý listesindedir. Ekleme yapýlamaz';

  //AssociationList
  msgAssociationList001 :string = 'Ana gruba baðlý Kurum(lar) olduðu içim alt grup oluþturamazsýnýz.';
  msgAssociationList002 :string = 'Bir üst gruba kurum tanýmlayamazsýnýz.! Bir alt grup seçmelisiniz.';
  msgAssociationList003 :string = 'Bir üst grubu silmek için öncelikle tüm alt gruplarýný silmelisniz.';


//Attendant
  msgAttendant001 :string = 'Refakatçinin TC numarasýný giriniz:';
  msgAttendant002 :string = 'Refakatçi Adý: %s' + #13#10 + 'Temas Bilgisi: %s';
  msgAttendant003 :string = 'Refakatçi olarak ekleyeceðiniz kiþi, hastanýn kendisi olamaz. Ýþleminiz iptal edildi!';
  msgAttendant004 :string = 'Temas Sorgusu yapmak istediðiniz refakatçinin kimlik bilgileri bulunumadý. Ýþleminiz iptal edildi!';
  msgAttendant005 :string = 'Temas Durumu sorgulamak istediðiniz refakatçinin, ziyaret süresi aralýðýnda deðilsiniz. Ýþleminiz iptal edildi!';

//AutoRevenue
  msgAutoRevenue001 :string = 'Ýþlem Zamaný belirtilmelidir.!';
  msgAutoRevenue002 :string = 'Banka belirtilmelidir.!';
  msgAutoRevenue003 :string = 'Vade Tarihi belirtilmelidir.!';
  msgAutoRevenue004 :string = 'Çek Seri Numarasý girilmelidir.!';
  msgAutoRevenue005 :string = 'Banka Adý girilmelidir.!';
  msgAutoRevenue006 :string = 'Þube Adý girilmelidir.!';
  msgAutoRevenue007 :string = 'Keþide Yeri girilmelidir.!';
  msgAutoRevenue008 :string = 'Kurum uyumsuzluðundan iþleminiz iptal edildi.';
  msgAutoRevenue009 :string = 'Fatura listede mevcuttur.!';
  msgAutoRevenue010 :string = 'Birden fazla kurum seçemezsiniz. Ýþleminiz iptal edildi.';

  //ArchivePage LRF_ID = 266
  msgArchivePage001 :string = 'Dosya içeriði bulunuyor. Dosya silinemez.';
  msgArchivePage002 :string = 'Dosyayý silmek istiyor musunuz ?';
  msgArchivePage003 :string = 'Gönderilen veya istenen dosyaya içerik ekleme ve silme iþlemi yapýlamaz.';
  msgArchivePage004 :string = 'Daha önce eklenmiþ bir içerik seçtiniz. Tanýmlanmamýþ bir içerik seçiniz.';
  msgArchivePage005 :string = 'Dosyayý silmek istiyor musunuz ?';
  msgArchivePage006 :string = 'Silinmek istenen içerik arþiv tanýmlarýnda silinemeyecek þekilde tanýmlanmýþ. Ýçerik silinemez !';
  msgArchivePage007 :string = 'Dosya içeriðini silmek istiyor musunuz ?';
  msgArchivePage008 :string = 'Dosya içeriði bulunmuyor. Dosya içeriðini giriniz.';
  msgArchivePage009 :string = 'Dosya isteðini iptal etmek istiyor musunuz ?';
  msgArchivePage010 :string = 'Dosya gönderimini iptal etmek istiyor musunuz ?';
  msgArchivePage011 :string = 'Geliþ No: ';
  msgArchivePage012 :string = 'Dosyanýn bulunduðu kullanýcý ile gönderilecek kullanýcý ayný olamaz.';
  msgArchivePage013 :string = 'Dosyayý göndermek üzeresiniz. Dosya gönderilsin mi ?';
  msgArchivePage014 :string = 'Dosya isteðini kabul ederek dosyayý göndermek istiyor musunuz ?';
  msgArchivePage015 :string = 'Teslim alýnacak dosya içeriklerini incelemek istiyor musunuz ?';
  msgArchivePage016 :string = 'Ret nedeni giriniz.';
  msgArchivePage017 :string = 'Dosya isteði göndermek üzeresiniz. Ýstek gönderilsin mi ?';
  msgArchivePage018 :string = 'Dosya isteðini reddetmek istiyor musunuz ?';
  msgArchivePage019 :string = 'Dosya gönderim iþlemi tamamlandý.';
  msgArchivePage020 :string = 'Dosya teslim alma iþlemi tamamlandý.';
  msgArchivePage021 :string = 'Dosya reddedildi.';
  msgArchivePage022 :string = 'Dosya isteði yapýldý.';
  msgArchivePage023 :string = 'Dosya isteði reddedildi.';
  msgArchivePage024 :string = 'Arþiv numarasýný silmek istiyor musunuz ?';
  msgArchivePage025 :string = 'Arþiv Dosya Ýþlemi';
  msgArchivePage026 :string = 'Size Gönderilen Bir Dosyanýz Var.';
  msgArchivePage027 :string = 'Dosya Ýsteðiniz Kabul Edildi.';
  msgArchivePage028 :string = 'Gönderdiðiniz dosya teslim alýndý.';
  msgArchivePage029 :string = 'Gönderdiðiniz dosya reddedildi.';
  msgArchivePage030 :string = 'Yeni bir dosya isteðiniz var.';
  msgArchivePage031 :string = 'Dosya isteðiniz reddedildi.';
  msgArchivePage032 :string = 'Arþiv numarasý vermek istiyor musunuz ?';
  msgArchivePage033 :string = 'Dosyanýn arþiv kaydý bulunmuyor.';
  msgArchivePage034 :string = 'Arþiv numarasý verilmiþ dosya silinemez. Ýþleminiz iptal edildi.';
  msgArchivePage035 :string = 'Sistemde tanýmlý arþiv kullanýcýsý bulunmadýðýndan arþive gönderim yapýlamaz. Lütfen bilgi iþlem departmaný ile iletiþim kurunuz.';

  //ArchiveSettings LRF_ID = 267
  msgArchiveSettings001 :string = 'Arþiv tanýmlarý baþarýyla kaydedildi.';
  msgArchiveSettings002 :string = 'Daha önceden arþivlenmiþ baðlý takipler için arþiv numalarý düzenlensin mi ?';
  msgArchiveSettings003 :string = 'Ýçeriði silmek istiyor musunuz ?';
  msgArchiveSettings004 :string = 'Geliþ ve provizyon tanýmýný silmek istiyor musunuz ?';
  msgArchiveSettings005 :string = 'Silinmek istenen tanýma göre arþiv kaydý oluþturulmuþ dosyalar mevcut. Bu tanýmý silebilmek için bu tanýma ait arþiv kaydý açýlmýþ dosyalarýn arþiv kaydý silinmelidir.';
  msgArchiveSettings006 :string = 'Geliþ ve provizyon tanýmý baþarýyla silindi.';
  msgArchiveSettings007 :string = 'En az bir deðer girilmelidir.';
  msgArchiveSettings008 :string = 'Geliþ veya provizyon türünde taným mevcut deðil.';
  msgArchiveSettings009 :string = 'Daha önce eklenmiþ bir içerik seçtiniz. Tanýmlanmamýþ bir içerik seçiniz.';
  msgArchiveSettings010 :string = 'Oluþturulmak istenen arþiv tanýmý zaten mevcut.';
  msgArchiveSettings011 :string = 'Ön eki ile farklý tanýmlamalar mevcut. Arþiv ön eki ayný olan arþiv tanýmlarý için arþiv baþlangýç numarasý ayný olmak zorundadýr. Ayný ön eke sahip arþiv tanýmlarý için baþlangýç numaralarý deðiþtirilsin mi ?';

  //AddArchiveFile LRF_ID = 268
  msgAddArchiveFile001 :string = 'Tabloya eklenmiþ bir geliþ no girdiniz.';
  msgAddArchiveFile002 :string = 'Dosyanýn arþiv kaydý bulunuyor';
  msgAddArchiveFile003 :string = 'Arþiv kaydý oluþturmak istediðiniz dosyanýn geliþ türü arþiv tanýmlarýnda tanýmlanmamýþ. Geliþ ve Provizyon türünde tanýmlama yaparak kaydetmek istiyor musunuz ?';
  msgAddArchiveFile004 :string = 'Böyle bir dosya bulunamadý.';
  //ArchiveFileContentControl LRF_ID = 269
  msgArchiveFileContentControl001 :string = 'Not alanýna ret nedenini giriniz.';
  msgArchiveFileContentControl002 :string = 'Eksik dosya içeriði ile dosyayý almak istiyor musunuz ?';

//BedReservation
  msgBedReservation001 :string = '%s dosya numaralý hasta için "%s" nolu yatak daha önceden rezerve edilmiþ.';
  msgBedReservation002 :string = '%s dosya numaralý hasta "%s" tarihinden beri "%s" nolu yatakda yatýyor görünüyor.'+#13+
                         'Yinede iþleme devam etmek istediðinizden emin misiniz?';
  msgBedReservation003 :string = 'Seçili yatak baþka bir kullanýcý tarafýndan kullanýldýðýndan, iþleminize baþka bir yatak seçerek devam ediniz.';
  msgBedReservation004 :string = 'Rezervasyonu iptal etmek istediðinizden emin misiniz?';
  msgBedReservation005 :string = 'Seçili yatak baþka bir kullanýcý tarafýndan kullanýldýðýndan, iþleminiz iptal edildi.';
  msgBedReservation006 :string = 'Yatak temizliði için durum deðiþtirilecek, emin misiniz?';
  msgBedReservation008 :string = 'Yatak kullanýma açýlacak, iþleme devam edilsin mi?';
  msgBedReservation010 :string = 'Yatak arýzalý duruma getirilecek, iþleme devam edilsin mi?';
  //msgBedReservation012 :string = 'Ýzolasyonlu bir yatak seçtiniz, yinede iþleme devam etmek istiyor musunuz?';
  msgBedReservation013 :string = 'Seçili yataðý kontrol edip tekrar deneyiniz.';
  msgBedReservation014 :string = 'Yatak seçimi yapmanýz gerekiyor. Ýþleminiz iptal edildi.';
  msgBedReservation015 :string = 'Yatak seçimi yapmadýnýz. Devam etmek istiyor musunuz?';
  msgBedReservation016 :string = 'Rezervasyonu yapan "%s" olduðu için iþleminiz iptal edildi.';
  msgBedReservation017 :string = 'Lütfen yatak seçimi yapýnýz.';
  msgBedReservation018 :string = 'Dosya Numarasý %d olan %s isimli hastanýn %s ile %s tarihleri arasýnda %s nolu yatakta rezervasyonu bulunmaktadýr.';
  msgBedReservation019 :string = 'Odada "%s" hastaya yatak rezerve edilmiþtir. Devam etmek istiyor musunuz?';
  msgBedReservation020 :string = 'Bugün için Yatak durumu: %s. '+ #13 +' Devam etmek istiyor musunuz?';
  msgBedReservation021 :string = 'Hastanýn %s ile %s tarihleri arasýnda %s nolu yatakta ileri bir tarihte rezervasyonu bulunmaktadýr!';
  msgBedReservation022 :string = '" %s " servisinde, hastaya ait bekleyen yatak rezerve kuyruðu bulundu.';
  msgBedReservation023 :string = 'Geri alýnacak iþlemin zamaný bugün olmalýdýr!';
  msgBedReservation024 :string = 'Rezerve yatak kuyruðu doludur! Hasta bu bölümün yataklarýna yatýrýlamaz.';
  msgBedReservation025 :string = 'Rezervasyonlu hastanýn Durumu Beklendiye alýndý!';
  msgBedReservation026 :string = 'Rezervasyon Bölümünü deðiþtirmek istediðinizden emin misiniz?';


//BloodBank
  msgBloodBank001 :string = 'Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?';
  msgBloodBank002 :string = 'Kan ürünü oluþturulduðu için silme iþlemini gerçekleþtiremezsiniz.';
  msgBloodBank003 :string = 'Baðýþcý durum kontrolü yapmanýz gerekmektedir.';
  msgBloodBank004 :string = 'Donör TC girilmelidir..';
  msgBloodBank005 :string = 'Donör adý girilmelidir..';
  msgBloodBank006 :string = 'Kan Ürünü Seçilmeli';
  msgBloodBank007 :string = 'Bilet Alýnamadý';
  msgBloodBank008 :string = 'Ret bilgisi bulunmadý, kan alma iþlemine devam edilebilir.';
  msgBloodBank009 :string = 'Donör kimlik dosyasýnda kan grubu girilmelidir.';
  msgBloodBank010 :string = 'Donör kan grubu ile seçtiðiniz ürün kan grubu ayný olmalýdýr.';
  msgBloodBank011 :string = 'Baðýþ türü seçilmelidir!';

//BloodBankDetail
  msgBloodBankDetail001 :string = 'DÝKKAT!!! Hastaya çalýþýlan testlerde "Normal Deðer" in dýþýnda olanlar var. Yinede devam etmek istiyor musunuz?';
  msgBloodBankDetail002 :string = 'Kurumdan gelen kanlar için Kurum Barkodu ve Ürün Kodunu girmeniz gerekmektedir.'+#13+
                          'Devam etmek istiyor musunuz?';
  msgBloodBankDetail003 :string = 'Son Kullanma Tarihi boþ býrakýlamaz.';
  msgBloodBankDetail004 :string = 'Oluþturma Tarihi boþ býrakýlamaz.';
  msgBloodBankDetail005 :string = 'Kan Grubuna ve Ürününe göre tanýmlý stok bulunamadý. '+
                          'Stok tanýmýndaki kan bilgilerini ve detaydaki alýþ-satýþ tanýmlarýný kontrol edin. Ýþleminiz iptal edildi.';
  msgBloodBankDetail006 :string = 'Ünite numarasýnýn ilk karakterinin "T" ve toplam karakter sayýsýnýn 13 olmasý gerekmektedir.'+#13+
                          'Aksi takdirde stok bu barkod numarasýyla bulunamayacaktýr.';
  msgBloodBankDetail007 :string = 'Kan ürününün "Son Kullanma Tarihi"ni deðiþtirmek istediðinize emin misiniz?';
  msgBloodBankDetail008 :string = 'Hareket görmüþ bir kan ürününün Son Kullanma Tarihini deðiþtiremezsiniz';
  msgBloodBankDetail009 :string = 'Bileþen numarasýnýn ilk karakterinin "E" ve toplam karakter sayýsýnýn 8 olmasý gerekmektedir.'+#13+
                          'Aksi takdirde stok bu barkod numarasýyla bulunamayacaktýr.';
  msgBloodBankDetail010 :string = 'Kullanýcýya oluþturulan kan ürünleri seçili hasta için rezerve edilsin mi?';
  msgBloodBankDetail011 :string = 'Kýzýlay sisteminden ve Bizmed için Ýkincil Bileþen oluþturulacak! Devam edilsin mi?';

  //BloodRequest
  msgBloodRequest001 :string = 'Silme iþleminden emin misiniz?';
  msgBloodRequest002 :string = 'Güncelleme iþleminden emin misiniz?';
  msgBloodRequest003 :string = '"Ýstem ID" alaný boþ!Ýþleminiz iptal edilecek.';
  msgBloodRequest004 :string = 'Yalnýzca "Ýstem adedi" ve "Not" alanlarý deðiþtirilebilir!';
  msgBloodRequest005 :string = 'Acil istem giriþlerinizde farklý kan grubu talebi yapýlamaz!';
  msgBloodRequest006 :string = 'Ayný talepte bulunulamaz! (Kan Grubu Kodu, Kan Ürünü Kodu ve Ýstem Sayýsýný kontrol ediniz.)';
  msgBloodRequest007 :string = 'Ýstem iþlemi baþarýsýz!';
  msgBloodRequest008 :string = 'Ýsteðiniz kan bankasýna gönderiliyor.';
  msgBloodRequest009 :string = 'Barkodu eþletirilen kayýtlar oluþturalacak, eþleþtiriþmeyen kayýtlar tekrar oluþturulamaz!';
  msgBloodRequest010 :string = 'Tarihinde durum kontrolü yapýlmayan kayýt var, öncelikle o tarih için sorgulama yapýnýz.';
  msgBloodRequest011 :string = 'Oluþturduðunuz istem listesi silinecek, çýkmak istiyor musunuz?';
  msgBloodRequest012 :string = 'Ýsteðiniz kan bankasýnda bulunamadý silme iþlemine devam etmek istiyormusunuz.';
  msgBloodRequest013 :string = 'Kurumdan kan alýmý iþleminde kurum bilgisi boþ býrakýlamaz!'+#13+
                               'Ýþleminiz iptal edildi.';
  msgBloodRequest014 :string = 'Kan isteði iptal edilecek!' +#13+ 'Devam etmek istiyor musunuz?';


  //CommonConf
  msgCommonConf001 :string = 'Kapatýlmýþ bir dosyada iþlem yapamazsýnýz.';
  msgCommonConf003 :string = 'Hastanýn ödenmemiþ senedi olduðundan iþlem yapamazsýnýz.';
  msgCommonConf004 :string = ' adlý kaydý';
  msgCommonConf005 :string = 'Kaydý';
  msgCommonConf006 :string = ' silmek istediðinize emin misiniz?';
  msgCommonConf007 :string = 'Girdiðiniz TC Kimlik Numarasý %s haneli olmalýdýr.';
  msgCommonConf008 :string = ' adlý iþlem için okunmasý gereken not(lar) var :';
  msgCommonConf009 :string = ' Devam edilsin mi? "Hayýr" derseniz iþlemin durumu iptal yapýlacaktýr.';
  //msgCommonConf010 :string = ' adlý hizmet için okunmasý gereken not(lar) var :';
  msgCommonConf011 :string = 'Hatalý karekod.';
  msgCommonConf012 :string = 'Randevu saatini (%s) %s dk geçirdiðiniz için randevulu olarak iþleminize devam edemezsiniz.';
  msgCommonConf013 :string = 'Randevu saatine (%s) %s dk kala kayýt iþlemi yaptýrabilirsiniz.';
  msgCommonConf014 :string = 'E-mail adresi yanlýþ, "info@bizmed.biz" þeklinde olmalýdýr. Lütfen düzeltiniz.';
  msgCommonConf015 :string = 'Tarih deðeri yanlýþ';
  msgCommonConf016 :string = ' adlý kurum için okunmasý gereken not(lar) var :';
  // msgCommonConf017 :string = 'Kan istem formu bulundu. Kayýtlarý silmek istediðinize emin misiniz?'; // VOZTURK;YANLIS EKLENMIS msgBloodRequest014 EKLENDI
  msgCommonConf018 :string = 'Faturasý kesilmiþ veya iptal edilmiþ dosyalar silinemez, dosyayý iptal edebilirsiniz.'; //219938;Bacl;05.10.2020

//CRMAddNewProc
  msgCRMAddNewProc001 :string = 'Telefon görüþmesinde durumu "Meþgul" veya "Ulaþýlamadý" seçildi. %s saat sonrasýnýn iþ listesine eklensin mi?';
  msgCRMAddNewProc002 :string = 'Plan Türü; Randevu zorunludur. Lütfen "Randevu Ver" ile iþleme devam ediniz...';

//CRMAddSatisfaction
  msgCRMAddSatisfaction001 :string = 'Ad Soyad alanýný doldurmalýsýnýz';
  msgCRMAddSatisfaction002 :string = 'Bir þablon seçmek zorundasýnýz';
  msgCRMAddSatisfaction003 :string = 'Olay Zamaný dolu olmalýdýr';

//CRMPatientSatisfaction
  msgCRMPatientSatisfaction001 :string = ' kullanýcýsýndan Cevap bekleniyor.';
  msgCRMPatientSatisfaction002 :string = 'Gönderilecek personeli seçmeniz gerekiyor.';
  msgCRMPatientSatisfaction003 :string = 'Not alanýný doldurmak zorundasýnýz.';
  msgCRMPatientSatisfaction004 :string = 'Cevap Beklenen Kullanýcý/Kullanýcýlar Bulundu...' + #13#10 + 'Yinede Kapatmak istiyor musunuz?';

//CRMPlanAndDef
  msgCRMPlanAndDef001 :string = 'Baþlýk';
  msgCRMPlanAndDef002 :string = '"%s" alanýný belirtmek zorundasýnýz.';
  msgCRMPlanAndDef003 :string = 'Not';
  msgCRMPlanAndDef005 :string = 'Bu alanýný belirtmek zorundasýnýz.';
  msgCRMPlanAndDef007 :string = 'Yeni iþ bulunamadý';
  msgCRMPlanAndDef008 :string = 'Hasta kara listeye eklenecek ' + #10 + 've bundan sonraki planlanmýþ iþ kayýtlarý silinecek' + #10 + 'Bu iþlemi gerçekleþtirmek isyiyor musunuz?';
  msgCRMPlanAndDef009 :string = 'Hasta kara listeye eklendi ve sonraki iþ planlarý silindi.';
  msgCRMPlanAndDef010 :string = 'Hasta kara listeden çýkarýldý.';
  msgCRMPlanAndDef011 :string = 'Planlama yapmak istediðiniz hasta kara listede bulunmakta. ' + #10 +
                        'Hastayý kara listeden çýkarmak istiyor musunuz?';
  msgCRMPlanAndDef012 :string = 'Bu iþ planý belirttiðiniz hastaya zaten uygulanmýþ.' + #10 +
                        'Bu iþ planý bir hastaya sadece bir defa uygulanabilir.';
  msgCRMPlanAndDef013 :string = 'Bu iþ planý belirttiðiniz hastaya zaten uygulanmýþ.' + #10 +
                        'Bu iþ planýný eklemek istediðinize emin misiniz?';
  msgCRMPlanAndDef014 :string = 'Bu plan þablonunu uygulayamazsýnýz!' + #10 + 'Uygulayabilmek için; Bu iþlemi Hasta Geliþ Dosyasýnda yapmanýz gerekmektedir.';
  msgCRMPlanAndDef015 :string = 'Bu plan þablonunu uygulayamazsýnýz!' + #10 + 'Uygulayabilmek için; Bu iþlemi Hasta Geliþ Dosyasýndan' + #10 + 'bir iþlem seçerek yapmanýz gerekmektedir.';
  msgCRMPlanAndDef016 :string = 'Anket tamamlandý mý?'+#13#13+ '***Anket tamamlandýktan sonra üzerinde deðiþiklik yapamayacaksýnýz!';
  msgCRMPlanAndDef017 :string = 'Sonraki Hasta Takip kaydýnýn baþlangýç süresi randevu zamanýndan küçük! baþlangýç zamaný verilen randevunun tarih ve saati olarak ayarlansýn mý?';
  msgCRMPlanAndDef018 :string = 'Telefon görüþmesi yapýlmýþ kayýt silinemez.';  // 220846

//CRMPollAnswers
  msgCRMPollAnswers001 :string = 'Yaptýðýnýz deðiþikliði kaydetmek istiyormusunuz? ';
  msgCRMPollAnswers002 :string = 'Kaydetmeye yetkiniz yoktur.';
  msgCRMPollAnswers003 :string = 'Sorunun hangi liste ile açýlacaðýný seçiniz';
  msgCRMPollAnswers004 :string = 'Tüm personele anket göndermek istediðinizden emin misiniz ?';  // 189308
  msgCRMPollAnswers005 :string = 'Listeden personel seçebilmeniz için Þube yada Görev seçmeniz gerekmektedir.';  // 189308
  msgCRMPollAnswers006 :string = 'Gizli / Ýsimsiz anket gönderebilmeniz için, en az 3 personel seçmelisiniz.';  // 189308
  msgCRMPollAnswers007 :string = '%s Personeline göndermek istediðiniz anket, daha önce gönderilmiþ ve cevaplanmammýþtýr.' + #13 +
                         'Yinede göndermek istiyor musunuz ?';  // 189308

//CRMPollDescriptions
  msgCRMPollDescriptions001 :string = 'Soruya ait ana soru veya alt soru varsa onlarda eklensin mi?';
  msgCRMPollDescriptions002 :string = 'Anketi silmek istediðinizden eminmisiniz?';
  msgCRMPollDescriptions003 :string = 'Soruya bir anket içinde cevaplandýðý için deðiþtiremezsiniz';
  msgCRMPollDescriptions004 :string = 'Anket sorusunu silmek istediðinizden eminmisiniz?';
  msgCRMPollDescriptions005 :string = 'Lütfen soru için bir "Cevap Tipi" belirtiniz.';
  msgCRMPollDescriptions007 :string = 'Soruya bir anket içinde cevaplandýðý için silemezsiniz';
  msgCRMPollDescriptions008 :string = 'Ana soruya baðlý sorular olduðu için silemezsiniz.';
  msgCRMPollDescriptions009 :string = 'Soruyu silmek istediðinizden eminmisiniz?';
  msgCRMPollDescriptions010 :string = 'Cevabý silmek istediðinizden eminmisiniz?';
  msgCRMPollDescriptions011 :string = 'Bu seçeneði seçtiðinizide sorunun cevaplarý silinecektir?';
  msgCRMPollDescriptions013 :string = 'Ýþlemlerinizi kaydetmek istiyormusunuz';

  //CRMReviews
  msgCRMReviews001 :string = 'Hasta yatýþ istemi "Ýptal" edilsin mi?';
  msgCRMReviews002 :string = 'Seçilen hastaya ait son 1 yýlda, %s adet hasta görüþmesi mevcuttur. Görüntülemek istiyor musunuz?';
  msgCRMReviews003 :string = 'Teklif fiyatýna fiyat deðiþikliði uygulansýn mý?';
  msgCRMReviews004 :string = 'Görüþmeye ait geliþ dosyasý oluþturabilmek için "Baba Adý", "Doðum Tarihi" ve "Tc Kimlik ya da Pasaport No" alanlarý dolu olmalýdýr.';
  msgCRMReviews005 :string = 'Geliþ dosyasý oluþturularak, görüþme durumu ''Hasta Kabul Etti'' olarak deðiþtirilecek. ';
  msgCRMReviews006 :string = 'Hasta görüþmesindeki para birimi döviz olduðundan döviz bilgilerinin güncellenmesi gerekmektedir.';
  msgCRMReviews007 :string = 'Deposu boþ olan malzemeler mevcut. Hastaya eklenecek olan malzemeler için depo seçiniz. Ýþleminiz iptal edildi.';

  //CRMReviewDef
  msgCRMReviewDef001 :string = 'Günlük kur bilgisi bulunamadýðý için para birimine ait tl karþýlýðý hesaplanamayacak.';
  msgCRMReviewDef002 :string = ' adlý iþlem silinecek. Ýþleme devam etmek istiyor musunuz ?';
  msgCRMReviewDef003 :string = 'Hasta bilgilerini doldurunuz.';
  msgCRMReviewDef004 :string = 'Hasta bilgileri kaydedildi.';
  msgCRMReviewDef005 :string = 'Doktor seçilmeden anemnez eklenecek. Ýþleme devam etmek istiyor musunuz ?';
  msgCRMReviewDef006 :string = ' adlý doktora anemnez isteði gönderildi.';
  msgCRMReviewDef007 :string = 'Acenta anlaþmasý ya da yönlendiren personel alanlalarýndan biri dolu olmalýdýr. Ýþleminiz iptal edildi.';
  msgCRMReviewDef008 :string = 'Seçili acenta anlaþmasýna ait anlaþma tipi tanýmlý olmalý. Ýþleminiz iptal edildi.';
  msgCRMReviewDef009 :string = 'Görüþme kaydedildi.';
  msgCRMReviewDef010 :string = 'Teklif fiyatýna fiyat deðiþikliði uygulansýn mý?';
  msgCRMReviewDef011 :string = 'Hasta bilgileri kaydedilmeyecek!!! Yinede devam etmek istiyor musunuz?';

 //CurrentAccounts
  msgCurrentAccounts001 :string = 'Seçili kayýtlarýn Tahsilatý yapýlacak.'+#13+
                          'Devam etmek istiyor musunuz?';
  msgCurrentAccounts002 :string = 'Eksik Tahsilatý, ayný anda birden fazla kayýtta uygulayamazsýnýz.';
  msgCurrentAccounts003 :string = 'Tahsilat yapmak istediðiniz kaydý seçiniz.';
  msgCurrentAccounts004 :string = 'Personel seçebilmeniz için cari hesap tipi "PERSONEL" olmalýdýr.';
  msgCurrentAccounts005 :string = 'Personelin görevini seçtikten sonra personel seçimi yapýnýz!';
  msgCurrentAccounts006 :string = 'Kalan tutarý aþan fiyat giriþi yapýldý. Ödeme tutarý Kalan tutara çekildi!';

//DailyExchange
  msgDailyExchange001 :string = 'Yapýlan sorgulama %s tarihine ait bir sorgulamadýr. Devam edilsin mi?';
  msgDailyExchange002 :string = 'Seçilen tarihler dosya tarihi arasýnda olmalýdýr.';
  msgDailyExchange003 :string = 'Seçili güne ait kur bilgilerini saat "15:30"''dan sonra çekebilirsiniz.';

//Departments
  msgDepartments001 :string = 'Bu iþlem uzun sürebilir ve Hasta Ýþlemleri tablosundaki triggerlar pasif edilecek.'+#13+
                      'Sistemin çalýþmadýðý bir zamanda bu iþlemi uygulamanýz gerekmektedir.'+#13+'Ýþleme devam etmek istiyor musunuz?';
  msgDepartments002 :string = 'Hizmet daha önce eklenmiþ.';
  msgDepartments003 :string = 'Hizmet Kategorisi daha önce eklenmiþ.';
  msgDepartments004 :string = 'Hizmet Tipi daha önce eklenmiþ.';
  msgDepartments005 :string = 'Bölüme ait randevular mevcuttur. Lütfen bu randevularý silerek iþleme devam ediniz.';
  msgDepartments006 :string = 'Bölüme ait randevu tanýmlarý da pasife alýnmýþtýr.';
  msgDepartments007 :string = 'Ortak Sýra Numarasý Ver iþaretini kaldýrdýðýnýzda, Bölümde bulunan tüm doktorlarýn '+
    'Sýra numaralarý Ortak Sýra numarasý bilgilerine çekilecek. ';
  msgDepartments008 :string = 'Ortak Sýra Numarasý Ver iþaretlediðinizde, Ortak Sýra Numarasý Bölümdeki Doktorlar'+
    ' içerisinden Sýra Numarasý en ileride olan doktorun Sýra Numarasý bilgilerinden baþlayacaktýr. ';


//DetailQuery
  msgDetailQuery001 :string = 'Sistem kayýtlarý silinemez, deðiþtirilemez.';
  msgDetailQuery002 :string = 'Sadece son %s günü sorgulayabilirsiniz. Ýþleminiz iptal edildi.';
  msgDetailQuery003 :string = 'Þablona ait SQL bulunamadý.';
  msgDetailQuery004 :string = 'Toplu tahsilat iþlemi için bir kurum seçmiþ olmanýz gerekmektedir!.';
  msgDetailQuery005 :string = 'Ýlk önce bir þablon seçmelisiniz.';
  msgDetailQuery006 :string = 'Sadece seçili kayýtlarda iþlem yapmak istiyor musunuz?';
  msgDetailQuery007 :string = 'Grup altýnda ki deðerler kalacaktýr.';
  msgDetailQuery008 :string = '''UPN'' Alaný olmadýðý için iþleme devam edilemiyor.';
  msgDetailQuery009 :string = '''PT_ID'' Alaný olmadýðý için iþleme devam edilemiyor.';
  msgDetailQuery010 :string = '''PP_ID'' Alaný olmadýðý için iþleme devam edilemiyor.';
  msgDetailQuery011 :string = 'Sadece giriþ yaptýðýnýz þubeyi görebilirsiniz seçiminiz iptal edildi.';
  msgDetailQuery012 :string = '%d hasta için Hasta Takip Planý oluþturulacak. Devam etmek etmek istiyor musunuz?';
  msgDetailQuery013 :string = 'Vefat eden hasta(lar) bulundu ve iþleme dahil edilmedi.';
  msgDetailQuery014 :string = 'Vefat eden hasta(lar) için Hasta Takip planý oluþturamazsýnýz.';

//Diagnosis
  msgDiagnosis001 :string = 'Ayný hastalýk kodu, hastanýn, "%s" tarihli dosyasýna iþlendiðinden, ' +
                    'bu dosyaya ekleyemezsiniz.';
  msgDiagnosis002 :string = 'Hastaya "20" dan fazla Hastalýk Kodu ekleyemezsiniz.';
  msgDiagnosis003 :string = 'Hastaya  "%s"  adet Hastalýk Kodu eklediniz.';
  msgDiagnosis004 :string = 'Baþka bir kullanýcýnýn eklediði Tanýyý silemezsiniz.';
  msgDiagnosis005 :string = ' hastalýk kodu için : ';
  msgDiagnosis006 :string = 'Taný grubunu seçemezsiniz';
  msgDiagnosis007 :string = 'Taný ana grubunu seçemezsiniz. Ana grubun detayýndan bir Taný seçmelisiniz.';
  msgDiagnosis008 :string = ' hastalýk kodu için : ' + #13 + '* Kronik Hastalýk, ilk taný tarihini giriniz. *';
  msgDiagnosis009 :string = 'Ýlk taný tarihini girmeniz gerekiyor.';
  msgDiagnosis010 :string = 'C türü (Onkoloji) taný kodu seçildi, geliþ dosyasý EK 2B dönüþümü yapýlacak.';
  msgDiagnosis011 :string = 'Daha önce eklenmiþ C türü (Onkoloji) taný kodunu sildiniz, '+
                    'Geliþ dosyasý EK 8 dönüþümü kontrol edilmelidir. Aksi takdirde kesintiye neden olacaktýr.';
  msgDiagnosis012 :string = 'Aradýðýnýz hastalýk kodu bulunamadý.';
  msgDiagnosis013 :string = 'Taný, hasta dosyasýna da eklensin mi?';
  msgDiagnosis014 :string = 'C türü (Onkoloji) taný ile C türü olmayan bir taný girdiniz, katýlým payýný ödemesi için'  +
            ' hastayý vezneye yönlendiriniz.';
  msgDiagnosis015 :string = '10 gün içerisinde farklý branþa bu taný girilmiþtir.' +#13 +
                          ' Devam Etmek istiyor musunuz?';
  //msgDiagnosis016 :string = 'C türü (Onkoloji) taný kodu seçildi, geliþ dosyasý EK 2B dönüþümü yapýn.';
  msgDiagnosis017 :string = 'Hastanýn 18 yaþ altý gebelik durumu var ise adli büro ile irtibata geçiniz.';
  msgDiagnosis018 :string = '"%s" tanýsýna baðlý "%s" týbbi kartýna yetkiniz olmadýðý için taný eklenmemiþtir.'+ #13+
            'Ýþlem yapmak için bilgi iþlem ile görüþünüz.';
  msgDiagnosis019 :string = 'Medulaya gönderilmiþ dosyalarda taný bilgisi deðiþtirilemez.';
  msgDiagnosis020 :string = 'Gün içinde, hastaya ayný taný girildiðinden iþleminiz iptal edilmiþtir.';
  msgDiagnosis021 :string = 'Seçilen tanýya ait hizmetler mevcuttur. Görmek için aþaðýdaki Hizmet Ýsteði butonuna týklayýnýz.';
  msgDiagnosis022 :string = '%s tanýsý için Kanser Tespit ve Ýzlem Kartý açýlsýn mý?';
  msgDiagnosis023 :string = 'Tanýyý çýkarabilmeniz için, Karta Ait gönderilmiþ e-Nabýz kaydýnýn silinmesi gerekmektedir.'+#13+
    'Yetkiniz bulunmadýðýndan e-Nabýz takibini silemezsiniz!';
  msgDiagnosis024 :string = 'Hastanýn Yüksek Riskli Gebelik Kaydý bulunmaktadýr. E-Nabýz verilerine eriþmek istiyor musunuz?';
  msgDiagnosis025 :string = 'Yüksek Riskli Gebeliklerde Hasta Perinatoloða yönlendirilmelidir.';
  msgDiagnosis026 :string = '5510 sayýlý kanun madde64/c)(Ek: 17/4/2008-5754/41 md.) Yabancý ülke vatandaþlarýnýn; genel saðlýk'+
      ' sigortalýsý veya genel saðlýk saðlanmayacaktýr sigortalýsýnýn bakmakla yükümlü olduðu kiþi sayýldýðý tarihten önce'+
      ' mevcut olan kronik hastalýklarý ödenmez!';
  msgDiagnosis027 :string = 'KKH tanýlý hasta oraný gereði tansiyon deðerleri girilmelidir.'+ #13+
      'Þimdi girmek istiyor musunuz?';//182567;Bacl;30.09.2020

//Discount LRF_ID = 28
  msgDiscount001 :string = 'Ýndirim yapýlabilecek iþlem yok. (Faturalanmýþ yada tahsilatý yapýlmýþ iþlemlere indirim yapýlamaz)';
  msgDiscount002 :string = 'Girdiðiniz deðer Toplam deðerden büyük olamaz.';
  msgDiscount003 :string = 'GSS indirimi her dosya için yalnýzca bir defa uygulanabilir.';
  msgDiscount004 :string = 'Ýndirim notunu ve/veya Ýsteyen bilgisini giriniz.';
  msgDiscount005 :string = 'Ýndirim yapmanýz için belli bir oran tanýmlanmamýþ.';
  msgDiscount006 :string = 'Girdiðiniz deðer Toplamdan büyük olamaz.';
  msgDiscount007 :string = 'Yetkinizi aþan bir indirim iþlemini gerçekleþtiremezsiniz.';
  msgDiscount008 :string = 'Ýlk önce yapmak istediðiniz indirimi belirtin.';
  msgDiscount009 :string = 'Ýndirim isteðiniz gönderildi.' + #13 +
                   'Onay verildiðine dair mesaj aldýðýnýzda iþleminize devam edebilirsiniz.';
  msgDiscount010 :string = 'Bu dosya için daha önce "%s"' + #13 +
                   ' kullanýcýsý indirim isteðinde bulunmuþ.';
  msgDiscount011 :string = 'Daha önceden Onay isteðinde bulunmuþsunuz. ' +
                   'Fakat henüz onaylanmamýþ. ' +
                   'Ýptal edip yeni istekte bulunmak istiyor musunuz?';
  msgDiscount012 :string = 'Faturasý kesilmiþ iþlem olduðu için iptal iþleminiz sonlandýrýldý.';
  msgDiscount013 :string = 'Ýndirimi iptal etmek istediðinize eminmisiniz?';
  msgDiscount014 :string = 'Bu dosya için  "%s"  ' +
                   'adlý kullanýcý daha önce indirim isteðinde bulunmuþ ve isteði onaylanmýþ.' + #13 +
                   'Bu istek tamamlanmadan veya iptal edilmeden yeni bir istekte bulunamazsýnýz.';
  msgDiscount015 :string = 'Kurum payýna indirim isteði yapýlacak. Devam etmek istiyor musunuz?';
  msgDiscount016 :string = 'Kurum payýna indirim yapýlacak. Devam etmek istiyor musunuz?';
  msgDiscount017 :string = ' adlý kuruma ait iþlemlere, indirim yapýlamasýn olarak ayarlanmýþ. Ýþleminiz iptal edildi.';
  msgDiscount018 :string =  'Ýndirimi iptal etmek için açýklama giriniz!';
  msgDiscount019 :string = 'Kalan tutar, indirim yapabileceðiniz maksimum dosya tutarýndan fazladýr.';
  msgDiscount020 :string = ' iþlemi dosyada baðlanan referans iþlemleri ile indirim yapýlmalý ve oranlarý ayný olmalýdýr. Ýþleminiz iptal edildi.';
  msgDiscount021 :string = 'Dosyaya tanýmlanan kurum veya kurumlarda indirim yapýlamaz seçeneði tanýmlýdýr. Ýþleminiz iptal edildi.';
  msgDiscount022 :string = 'Hasta indirim yapýlamaz olarak kara listeye eklenmiþ. Ýþleminiz iptal edildi.';
  msgDiscount023 :string = 'Bu indirim isteði için daha önceden indirim uygulanmýþ.';
  msgDiscount024 :string = 'Uygulamak istediðiniz indirim tutarý onaylanan indirim tutarýndan fazla olduðundan yeni indirim isteði oluþturmalýsýnýz.';

  //DoctorDeserves
  msgDoctorDeserves001 :string = 'Ýki tarih arasýndaki fark en fazla 1 ay olmalýdýr.';
  msgDoctorDeserves002 :string = 'Yalnýzca son 365 gün içinde bir sorgulama yapabilirsiniz.';
  msgDoctorDeserves003 :string = 'Personel seçmeden iþleme devam edemezsiniz.';
  msgDoctorDeserves004 :string = 'Hakediþ hesaplanýrken hata alýndý.' +#13 + 'Hata:%s'+ #13+
                         '  Protokol No :%s' + #13 +
                         '  Ýþlem ID :%s';
  msgDoctorDeserves005 :string = 'Personele ait þablon uygulansýn mý?';
  msgDoctorDeserves006 :string = 'Personele ait bir þablon daha önceden tanýmlanmýþ, devam etmek istiyor musunuz?';
  msgDoctorDeserves007 :string = 'Tutar ve/veya oranlarda kopyalansýn mý?';
  msgDoctorDeserves008 :string = 'Belirtilen tarihler arasýnda kayýt bulundu, kontrol ediniz.';
  msgDoctorDeserves009 :string = 'Döneme tanýmlanmýþ kayýtlarda silinecek, emin misiniz?';
  msgDoctorDeserves011 :string = '"%s" adlý personel için, %s - %s tarihleri arasýndaki hesaplanmýþ hakediþler kaydedilecektir.'+
                         'Devam etmek istediðinize emin misiniz?';
  msgDoctorDeserves012 :string = 'Seçtiðiniz tarihler arasýnda daha önceden hesaplanýp kaydedilmiþ hakediþler vardýr.';
  msgDoctorDeserves013 :string = 'Seçtiðiniz tarihler arasýnda daha önceden hesaplanýp kaydedilmiþ hakediþler olduðundan iþleminiz iptal edildi.'+#13+
                         'En son hesaplanan hakediþ tarihi : ';
  msgDoctorDeserves014 :string = 'Kaydý sildikten sonra, tanýmlama ile ilgili hakediþ hesaplanamaz.'+#13+
                         'En az bir kayýt olmak zorunda. Silinsin mi? ';
  msgDoctorDeserves015 :string = ' dönemine ait kayýtlar mevcut, bunlar üzerinden iþleme devam edilecek';
  msgDoctorDeserves016 :string = 'Tüm doktorlara hakediþ hesaplanacak. Bu iþlem uzun sürecek, devam edilsin mi?';
  msgDoctorDeserves017 :string = '%s protokollü dosyada %s adlý iþlem %s tarihleri arasýnda hakediþi hesaplanmýþtýr.';
  msgDoctorDeserves018 :string = 'Hakediþ Hesaplanýyor...';
  msgDoctorDeserves019 :string = 'Hesaplanan Hakediþler Kaydediliyor...';
  msgDoctorDeserves020 :string = 'Hakediþ Hesaplandý.';
  msgDoctorDeserves021 :string = 'Seçilen tarihler arasýnda hakediþlerin hesaplanmasý tamamlandý.';
  msgDoctorDeserves022 :string = '" %s " dönemine ait hesaplama YAPILMIÞ ve/veya KAYDEDÝLMÝÞ, kaydý sildikten sonra iþleme devam edebilirsiniz';
  msgDoctorDeserves023 :string = '" %s " dönemine ait kayýtlar oluþturuluyor.';
  msgDoctorDeserves024 :string = '" %s " dönemine ait kayýtlarý kaydettikten sonra silme iþlemini tekrarlayýnýz.';
  msgDoctorDeserves025 :string = '" %s " dönemi onaylandýðý için silemezsiniz.';
  msgDoctorDeserves026 :string = 'Tip, Kategori veya Ýþlem seçeneklerinden en az birtanesi seçilmelidir.';
  msgDoctorDeserves027 :string = '%s adlý hakediþ grubundaki personeller için hakediþ hesaplanacak, devam edilsin mi?';
  msgDoctorDeserves028 :string = 'Þube bazlý kaydetme yapýlsýn mý ?';
  msgDoctorDeserves029 :string = '%s adlý hakediþ grubundaki personellerin oranlar %%100 ü geçemez.';
  msgDoctorDeserves030 :string = 'Özel seçilen maliyet tipinde en az bir adet maliyet detayý girilmelidir. ';
  msgDoctorDeserves031 :string = 'Þube bilgisi boþ olduðu için hesaplanacak doktorlar seçilmelidir.';
  msgDoctorDeserves032 :string = 'Tüm doktorlar';
  msgDoctorDeserves033 :string = 'Þubesi boþ olanlar';
  msgDoctorDeserves034 :string = 'Seçilen personeller için hakediþ hesaplanacak ve kaydedilecek, devam edilsin mi?';
  msgDoctorDeserves035 :string = 'Grup hakediþi olduðu için; gruba ait ayný dönemde bulunan kaydedilmiþ tüm hakediþler silinecektir! devam edilsin mi?';
  msgDoctorDeserves036 :string = 'Grup Hakediþleri getirilirken hata alýndý: %s'+#13+' Sadece normal hakediþler getirilicek!';
  msgDoctorDeserves037 :string = 'Grup hakediþleri getirilirken, daha önce seçilen dönemde kaydedilmiþ hakediþler olduðu için gruptan olan hakediþler getirilmeyecek';
  msgDoctorDeserves038 :string = 'Kaydedilmiþ hakediþi bulunan tanýmlar Silinemez/Deðiþtirilemez! Dönemi sonlandýrýp ve yeni dönem oluþturup düzenleme yapabilirsiniz.';
  msgDoctorDeserves039 :string = 'Daha Önce %s Period ID Hakediþten Maliyet verilmiþtir. %s ID li Hakediþin Maliyet Bilgilerini Görmek Ýster Misiniz?';
  msgDoctorDeserves040 :string = '%s personeline ait, %s ile %s tarihleri arasýnda tanýmlý Hakediþ Dönemi bulunamadý!';
  msgDoctorDeserves041 :string = ' Maliyet detayý kaydedilemedi!';


//DoctorProcess - LRF_ID = 18
  msgDoctorProcess001 :string = 'Sadece kendi hastalarýnýzý görebilirsiniz.';
  msgDoctorProcess002 :string = 'Sadece yetkili olduðunuz bölümlerin hastalarýný görebilirsiniz.';
  msgDoctorProcess003 :string = 'Dosya doktoru "Bilinmiyor/Boþ" olduðundan iþleminiz iptal edildi.';
  msgDoctorProcess004 :string = 'Ýþlem Yapan Bölüm/Poliklinik Sýra Monitörü bilgisini, üst paneldeki sarý renkli alandan deðiþtirebilirsiniz';
  msgDoctorProcess005 :string = 'Dosyanýn Doktoru deðiþtirilsin mi?';
  msgDoctorProcess006 :string = 'Bölümü seçmeniz gerekmektedir.';
  msgDoctorProcess007 :string = 'Ýlk önce iþlemi yapacak doktoru seçiniz.';
  msgDoctorProcess008 :string = 'Seçili iþleme ait "Ýþlem Bitiþ Zamaný" da doldurulsu mu?';
  msgDoctorProcess009 :string = 'Hastaya en son sýra numarasý verilsin mi?';
  msgDoctorProcess010 :string = 'Sadece son %s günlük kayýtlarý görebilirsiniz.';
  msgDoctorProcess011 :string = 'Hastanýn iþlemi onaylansýn mý?';
  msgDoctorProcess012 :string = 'Doktor bilgisini seçmelisiniz.';
  msgDoctorProcess013 :string = 'Hastanýn "Teþhis Kodu" nu belirtmeden onaylama yapamazsýnýz.';
  msgDoctorProcess014 :string = 'Hastanýn "Sonuç Notu" nu (Epikrizini) yazmadan onaylama yapamazsýnýz.';
  msgDoctorProcess015 :string = 'Hastanýn "Triaj Kodu" nu belirtmeden onaylama yapamazsýnýz.';
  msgDoctorProcess016 :string = 'Geliþ tipine baðlý bölüm bulunamadý. Lütfen kontrol ettiriniz.';
  msgDoctorProcess017 :string = ' tipinde yetkili olduðunuz bölüm bulunamadý.';
  msgDoctorProcess018 :string = 'Seçili iþleme ait "Ýþlem Baþlangýç Zamaný" da doldurulsun mu?';
  msgDoctorProcess019 :string = 'Yazdýðýnýz metin baðlý monitörde gözükecek. Devam etmek istediðinizden emin misiniz?';
  msgDoctorProcess020 :string = 'Daha önce içeri aldýðýnýz hastanýn iþlemini tamamlamadýnýz. Yinede devam etmek istiyor musunuz?';
  msgDoctorProcess022 :string = ' adlý doktora ait Ayaktan tipinde, varsayýlan tanýmlý, çalýþma zamanlarýný kontrol ediniz.'+#13+
                        'Ýþleminiz iptal edildi';
  msgDoctorProcess023 :string = 'Baþka doktorun hastasý üzerinde iþlem yapmaya yetkiniz yok';
  msgDoctorProcess024 :string = 'Ýþlem baþlangýç zamaný girilmiþ. Deðiþtirilsin mi?';
  msgDoctorProcess025 :string = 'Ýþlem bitiþ zamaný girilmiþ. Deðiþtirilsin mi?';
  msgDoctorProcess026 :string = 'Bölüm ve Doktoru seçmeniz gerekmektedir.';
  msgDoctorProcess027 :string = 'Bu iþlemden sonra adýnýz , belirtilen zaman diliminde, Bizmed de hiçbir yerde gözükmeyecek.'+#13+
                        'Devam edilsin mi?';
  msgDoctorProcess028 :string = 'Sadece ayný gün için bu iþlemi gerçekleþtirebilirsiniz.';
  msgDoctorProcess029 :string = 'Ýþlem Baþlama ve Bitme deðerlerini iptal etmek istediðinize emin misiniz?';
  //msgMultiUsed144 ile degistirildi
  //msgDoctorProcess030 :string = 'Sayýsal bir deðer girmelisiniz. ';
  msgDoctorProcess031 :string = ' iþlem numarasýna göre uygun kayýt bulunamadý. ';
  msgDoctorProcess032 :string = ' iþlem numaralý hizmet, doktoru tarafýndan iþleme alýndýðýndan dolayý, iþleminiz iptal edilmiþtir. ';
  msgDoctorProcess033 :string = 'Aþaðýda bilgileri yazýlý hastayý kendi polikliðinize taþýmak istediðinizden emin misiniz?'+#13+#13+
                        'Adý Soyadý : %s %s'+#13+
                        'Baba Adý : %s'+#13+
                        'TC Kimlik No : %s'+#13+
                        'Bölüm Adý : %s'+#13+
                        'Doktor Adý : %s';
  msgDoctorProcess034 :string = 'Dosya "Yeþil Alan" a dönüþtürülecek devam etmek istiyor musunuz?';
  msgDoctorProcess036 :string = 'Kendi listenize alacaðýnýz hastanýn iþlem numarasýný giriniz.';
  msgDoctorProcess037 :string = 'Ýþlem Numarasý: ';
  msgDoctorProcess038 :string = 'Ýstek Sonuçlarý';
  msgDoctorProcess039 :string = 'Dosya yeþil alandan "Acil Muayene" ye çevrilecek.';
  msgDoctorProcess040 :string = 'Taný bilgileri ve sonuç notu da silinsin mi?';
  msgDoctorProcess041 :string = 'Dikkat! Yeni hasta - Hastanýn ilk geliþi';
  msgDoctorProcess042 :string = 'Yeni hasta kaydý var! lüften kontrol ediniz.';
  msgDoctorProcess043 :string = 'PACS görüntüsünü açmak ister misinz?';
  msgDoctorProcess044 :string = 'Ýlk önce iþlem yapýlacak hastayý seçmelisiniz.';
  msgDoctorProcess045 :string = 'Lütfen bir doktor seçiniz';
  msgDoctorProcess046 :string = 'Seçilen doktorun TC kimlik numarasý dolu olmalýdýr.';
  msgDoctorProcess047 :string = 'Eriþilmek istenen hastanýn TC kimlik numarasý dolu olmalýdýr.';
  msgDoctorProcess048 :string = 'e-Nabýz eriþiminiz onaylandý';
  msgDoctorProcess049 :string = 'Ýleri/Geçmiþ tarihli iþlem yapýlamaz!';
  msgDoctorProcess050 :string = 'Bu hasta geliþ dosyasýna yeni stok ekleyemezsiniz.';
  msgDoctorProcess051 :string = 'Ýþlem gönderim için sýraya alýndý';
  msgDoctorProcess052 :string = 'Ýcmale alýnmýþ bir dosyada ya da GSS iþlem kaydý yapýlmýþ iþlemde týbbi kart oluþturmaya yetkiniz yoktur!';
  msgDoctorProcess053 :string = 'Onaylama iþlemi yapýlmaya çalýþýlan iþleme ait kart ile rapor yazýlan kart ile ayný deðildir.'+
                                'Onaylama iþlemine devam ederseniz baðlý olan tüm kartlarýn içeriði, onaylanmaya çalýþýlan iþlemin kartý ile ayný olacaktýr. ';
  msgDoctorProcess054 :string = 'Uygulama saati geçen orderlar var. Görmek istiyor musunuz ?';
  msgDoctorProcess055 :string = 'Taburcu iþlemi önce Hekim tarafýndan yapýlmasý gerekmektedir.';

//Doctors LRF_ID = 18
  msgDoctors001 :string = 'Belirtilen alaný boþ geçemezsiniz.';
  msgDoctors002 :string = 'Belirtilen Zaman dilimi daha önceden eklenmiþ.';
  msgDoctors003 :string = 'Belirtilen kayýt daha önceden girilmiþ.';
  msgDoctors004 :string = 'Bugünü veya daha sonraki bir tarihini giriniz.';
  msgDoctors005 :string = 'Doktorun ileri tarihlerde alýnmýþ randevularý var!' + #13 +
    'Yine de doktor "Pasif" edilsin mi?';
  msgDoctors006 :string = 'Mezuniyet Tarihi , Bitiþ Tarihi'' nden küçük olamaz.';
  msgDoctors007 :string = 'Personele randevu vermek istiyorsanýz randevu ekranýndan personeli aktif etmeniz gerekmektedir.';
  msgDoctors008 :string = 'Bu iþlemi yapmak için gün seçmelisiniz!';
  msgDoctors009 :string = 'Seçilen kullanýcý adý daha önceden %s personeline seçilmiþtir!';
  msgDoctors010 :string = 'Saðlýk tarama türü belirtilmemiþ!.Ýþlem gerçekleþtirilmeyecektir.';
  msgDoctors011 :string = 'Saðlýk taramasýna ait taným bilgisini silmek istediðinizden emin misiniz?';
  msgDoctors012 :string = 'Saðlýk taramasýna ait durum-sonuç bilgisini silmek istediðinizden emin misiniz?';
  msgDoctors013 :string = 'Çalýþma bilgilerinde referans bulunmadýðýndan tipi referans seçemezsiniz';
  msgDoctors014 :string = '%s Kullanýcýsý güvenlik ekranýndan pasif edilecek?';
  msgDoctors015 :string = 'Güvenlik ekranýnda %s isminde birden fazla personel tanýmlý ilgili kaydý pasife alýnýz. ';
//  msgDoctors016 :string = '%s Kullanýcýsý güvenlik ekranýndan da pasif edilsin mi?';

//Document
  msgDocument001 :string = 'Yapmýþ olduðunuz deðiþiklikler iptal edilecek, devam etmek istiyor musunuz?';

//DoMessageJobs
  msgDoMessageJobs001 :string = 'Kullanýcý adýnýz ve þifreniz tanýmlý deðil.';
  msgDoMessageJobs002 :string = 'Hata Oluþtu';

//DrDeserveCopy
  msgDrDeserveCopy001 :string = 'Yeni dönem tarihlerini kontrol ediniz.';
  msgDrDeserveCopy002 :string = 'Tanýmlarýn %s isimli doktora kopyalanmasý sýrasýnda hata olustu. Hata : %s';

//DrugPrescription
  msgDrugPrescription003 :string = 'Þablondaki ilaçlar eklenecek, girmiþ olduðunuz ilaçlar listeden silinsin mi?';
  msgDrugPrescription004 :string = 'Þablondaki tanýlar eklenecek, girmiþ olduðunuz tanýlar listeden silinsin mi?';
  msgDrugPrescription005 :string = 'Þablondaki notlar eklenecek, girmiþ olduðunuz notlar listeden silinsin mi?';
  msgDrugPrescription006 :string = 'Hasta taburcu reçetesinde, öncelikle hastanýn çýkýþý yapýlmýþ olmalýdýr.';
  msgDrugPrescription007 :string = 'Hasta taburcu reçetesinde, reçete tarihi ile hasta çýkýþ tarihi ayný olmalýdýr.';
  msgDrugPrescription008 :string = 'Aksi takdirde MEDULA *CEZAÝ* iþlem uygulamaktadýr.'+#13+
                           ' Yinede devam etmek istiyor musunuz?';
  msgDrugPrescription009 :string = 'Takip Numarasý alýnmayan hastanýn gönderimi yapýlmaz.';
  msgDrugPrescription010 :string = 'Göndermeden önce ilaç girmeniz gerekmektedir.';
  msgDrugPrescription011 :string = 'Göndermeden önce taný girmeniz gerekmektedir.';
  msgDrugPrescription012 :string = 'Raporu Medula dan silmek istediðinize emin misiniz?';
  msgDrugPrescription013 :string = 'Doktorun TC Kimlik numarasý tanýmlanmalýdýr. Devam edemezsiniz.';
  msgDrugPrescription015 :string = ' nolu E-Reçete medulada kayýtlý görünmüyor Bizmed'' dende silinsin mi?';
  msgDrugPrescription016 :string = 'E-Ereçete baþarýyla gönderildi';
  msgDrugPrescription017 :string = 'Rapor Yazdýr';
  msgDrugPrescription018 :string = 'E-Reçete bulunamadý.';
  msgDrugPrescription019 :string = 'E-Ereçete gönderiminde hata oluþtu.';
  msgDrugPrescription020 :string = 'E-Ereçete baþarýyla sorgulandý';
  msgDrugPrescription021 :string = 'E-Ereçete sorgulamasýnda hata oluþtu.';
  msgDrugPrescription022 :string = 'E-Ereçete baþarýyla iptal edildi';
  msgDrugPrescription023 :string = 'E-Ereçete iptal edilirken hata oluþtu.';
  msgDrugPrescription024 :string = 'Reçete Tarihi Dosya tarihinden önce olamaz.';

  msgDrugPrescription026 :string = ' baþarýyla gönderildi';
  msgDrugPrescription027 :string = ' gönderiminde hata oluþtu.';
  msgDrugPrescription028 :string = 'Geliþ dosyasýnda taný yok! Reçete tanýlarý dosyaya kopyalanacak, devam edilsin mi?';
  msgDrugPrescription029 :string = 'Hastanýn yatýþ iþlemi devam ettiði için bu reçete türü seçilemez !';
  msgDrugPresApproveErr  :string = 'Onay türü ve doktor bilgisi dolu olmalýdýr!';
  msgDrugPresCncApprErr  :string = 'Ýptal edilebilmesi için onaylý olmasý gerekir';
  msgDrugPrescription030 :string = 'Liste dýþý Ýlaç ';
  msgDrugPrescription031 :string = 'Sýk kullanýlan ilaç listesi yapýlan deðiþikliklere göre güncellensin mi?';
  msgDrugPrescription032 :string = 'Taný';
  msgDrugPrescription033 :string = 'Not ';
  msgDrugPrescription034 :string = 'Ýlaç Notu ';
  msgDrugPrescription035 :string = 'Sýk Kullanýlan Ýlaca ait notlarýnýzda güncellensin mi?';
  msgDrugPrescription036 :string = 'Reçete Tanýmýndaki Yeri alanýný doldurmanýz gerekmektedir!';
  msgDrugPrescription037 :string = 'Eksik Bilgiler bulundu. Ýþleminiz iptal edilecek.';
  msgDrugPrescription038 :string = 'Reçetedeki Ýlaç sisteminizde bulunamadý. Ýlgili Barkod numaralý ilaç sisteminize kayýt yapýlmalýdýr.'+#13+
                                  'Ýþleminiz iptal edilecek.';
  msgDrugPrescription039 :string = '%s nolu reçeteyi silmek için Renkli Reçete ekraný kullanýlacaktýr.';
  msgDrugPrescription040 :string = 'Öncelikle renkli reçete bilgilerini getirmelisiniz.';
  msgDrugPrescription041 :string = 'Ýlacýn vademecumda eþleþmiþ bir kaydý bulunmamaktadýr.';
  msgDrugPrescription042 :string = 'Dosyadaki taný(lar), reçeteye de eklensin mi?';
  msgDrugPrescription043 :string = 'Eksik Bilgiler bulundu(Kimlik No veya Doktor Branþ Kodu). Ýþleminiz iptal edilecek.';
  msgDrugPrescription044 :string = 'Eksik Bilgiler bulundu(Kimlik No, Doktor Branþ Kodu, Baþhekim Kullanýcý Adý). Ýþleminiz iptal edilecek.';
  msgDrugPrescription045 :string = 'Reçetede COVÝD-19 tedavisinde kullanýlan ilaçlar bulunduðundan, '+
    'COVÝD-19 tedavisinde kullanýlmayan ilaçlarýn ödemesi yapýlmayacaðýndan dolayý ekleyemezsiniz.';
  msgDrugPrescription046 :string = 'COVÝD-19 tedavisinde kullanýlan ilaçlarýn ödemesi yapýlmayacaðýndan, diðer ilaçlarla bir arada reçeteye ekleyemezsiniz.';

//OpticalPrescription
  msgOpticalPrescription001 : string = 'Gözlük Türü Seçmelisiniz! Ýþleminiz iptal edildi.';
  msgOpticalPrescription002 : string = 'Teþhis bilgisi dolu Olmalýdýr!';
  msgOpticalPrescription003 : string = 'Gözlük1 için Cam Tipi/Rengi dolu olmalýdýr!';
  msgOpticalPrescription004 : string = 'Gözlük2 için Cam Tipi/Rengi dolu olmalýdýr!';
  msgOpticalPrescription005 : string = 'Taný bilgisi boþ olamaz!';

//DtMdAppoinment
  msgDtMdAppoinment001 :string = ' adlý kurum için günlük randevu limiti (%s) dolmuþtur.';
  msgDtMdAppoinment002 :string = '%s tarihine daha önceden randevu verildiði için,%s tarihindeki isteðiniz gerçekleþmedi.';

//DtMdGeneral LRF_ID = 1
  msgDtMdGeneral001 :string = 'Dosya deðiþtirilemedi. Sadece %s.exe isimli programý kullanabilirsiniz.';
  msgDtMdGeneral002 :string = 'Yedekleme dosyasý oluþturulamadý.';
  msgDtMdGeneral003 :string = 'Dosya deðiþtirilemedi.';
  msgDtMdGeneral004 :string = 'Güncellemek istediðiniz dosyadan güncelleme iþlemi yapmayýnýz.';
  msgDtMdGeneral005 :string = 'Bizmed güncelleniyor, Lütfen bekleyiniz...';
  msgDtMdGeneral006 :string = 'Programýn yeni versiyonu sistemdeki tüm bilgisayarlara gönderilecek.'+#13+
                      'Devam etmek istiyormusunuz?';
  msgDtMdGeneral007 :string = 'Ayný dosya daha önceden sisteme atýlmýþ.';
  msgDtMdGeneral008 :string = 'TcxGridTableView ve TcxDBTreeList görünümleri ile ilgili iþlemler yapýlabilir.';
  msgDtMdGeneral009 :string = 'Sistemde kayýtlý görünüm ayarlarýný deðiþtirmek istediðinize emin misiniz?';
  msgDtMdGeneral010 :string = 'Ekraný kapatýp tekrar açýn lütfen.';
  msgDtMdGeneral011 :string = '"%s" adlý stok için, mevcut miktardan fazlasýný iþlemeye çalýþtýnýz.'+#13+
                      'Elinizdeki miktar = %s' +#13+
                      'Ýþlemeye çalýþtýðýnýz miktar = %s' +#13+
                      'Birim katsayýsý = %s';
  msgDtMdGeneral012 :string = '"%s" adlý stok için; ';
  msgDtMdGeneral013 :string = '"%s" adlý stoðun "%s" etken maddesi için;';
  msgDtMdGeneral014 :string = 'Maksimum miktar: ';
  msgDtMdGeneral015 :string = 'Yapýlabilecek iþlem miktar: %s' + #13 +
                      'Eksi istenen birim miktar: %s' + #13 +
                      'Ýstenen ana birim miktar: %s' + #13 +
                      'Maksimum miktarý geçtiniz.';
  msgDtMdGeneral016 :string = 'Eksi istenen birim miktar: %s' + #13 +
                      'Ýstenen ana birim miktar: %s' + #13 +
                      'Maksimum miktarý geçtiniz.';
  msgDtMdGeneral017 :string = 'Ýþleminiz iptal edilecek';
  msgDtMdGeneral018 :string = 'Aþaðýdaki alan(lar) boþ geçilemez, lütfen deðer giriniz.';
  msgDtMdGeneral019 :string = 'Aktif icmalin dosya tipi hastanýn dosya tipi ile farklý!';
                      //'açýk olan icmali kapatýp yeni bir icmal almak istiyor musunuz?';
  msgDtMdGeneral020 :string = 'Faturanýn, faturalanacaðý yer ile aktif icmalin faturalanacaðý yer bilgisi farklý!';
                      //'açýk olan icmali kapatýp yeni bir icmal almak istiyor musunuz?';
  msgDtMdGeneral021 :string = 'Yeni bir icmal almak istiyormusunuz?';
  msgDtMdGeneral022 :string = 'Aktif icmalin kurumu dosyanýn kurumu ile farklý!';
                      //'açýk olan icmali kapatýp yeni bir icmal almak veya baþka bir icmal seçmek istiyor musunuz?';
  msgDtMdGeneral023 :string = 'Tahsilatý yapýlmamýþ/eksik yapýlmýþ iþlemlerin faturasýný kesmeye çalýþtýnýz.';
  msgDtMdGeneral024 :string = 'MEDULA ya faturalanmýþ veya tutar okunmuþ bir dosyayý silemezsiniz.';
  msgDtMdGeneral025 :string = 'Ýcmal içerisindeki bir faturayý ancak ' + #13 + ' icmal iþlemleri ekranýndan silebilirsiniz.';
  msgDtMdGeneral026 :string = 'Onaylanmýþ icmal içerisindeki bir faturayý silemezsiniz.';
  msgDtMdGeneral027 :string = 'Seçtiðiniz fatura silinecek '+#13+'devam etmek istiyor musunuz.!';
  msgDtMdGeneral028 :string = 'Yapmak istediðiniz iþlem için açýklama giriniz!';
  msgDtMdGeneral029 :string = ' numaralý fatura daha önceden yazdýrýlmýþ. Devam etmek istiyor musunuz?';
  msgDtMdGeneral030 :string = 'Ýþlem kontrollerinde hatalar oluþtu. Devam etmek istiyormusunuz?';
  msgDtMdGeneral031 :string = 'Ýþlem kontrollerinde hatalar oluþtu. Devam edemezsiniz';
  msgDtMdGeneral032 :string = 'Ýþlem kontrollerinde hatalar oluþtu. Fatura iþlemine devam etmek istiyormusunuz?';
  msgDtMdGeneral033 :string = 'Ýþlem kontrollerinde hatalar var. Ýþleme devam edemezsiniz.';
  msgDtMdGeneral034 :string = 'Bu istek için daha önceden barkod yazdýrýlmýþ. Tekrar yazdýrmak istiyor musunuz?';
  msgDtMdGeneral035 :string = ' nolu Protokol(ler) de senet vardýr';
  msgDtMdGeneral036 :string = 'Hastaya ait ödenmemiþ "Senet"(ler) var.'+#13+
                      'Bu "Senet"(ler) hakkýnda hastayý veya yakýnýný bilgilendiriniz.';
  msgDtMdGeneral037 :string = 'Hastaya ait ödenmemiþ "Senet"(ler) var.'+#13+
                      'Bu "Senet"(ler) ödenmeden herhangi bir iþlem yapamazsýnýz.';
  msgDtMdGeneral038 :string = 'Uygulamanýn yolunu ve adýný tam olarak belirtin.';
  msgDtMdGeneral039 :string = 'Merkezi Sisteme gönderdikten sonra istekler üzerinde herhangi bir iþlem yapamayacaksýnýz.'+#13+
                      'Devam etmek istiyor musunuz?';
  msgDtMdGeneral040 :string = 'Veritabaný kullanýcý adý girilmesi gerekiyor.';
  msgDtMdGeneral041 :string = 'Merkezden onaylanan, istekler otomatik olarak daðýtýmý yapýlacaktýr. Devam etmek istiyor musunuz?';
  msgDtMdGeneral042 :string = ' adlý þube için Veritabaný baðlantýsý yapýlmamýþ';
  msgDtMdGeneral043 :string = ' adlý þube için kayýt gönderiminde hata oluþtu.';
  msgDtMdGeneral044 :string = 'Merkeze baðlantý hatasý, lütfen tekrar deneyin. Devam ederse Bilgi iþlemden yardým isteyiniz.';
  msgDtMdGeneral045 :string = 'Ýþleme baðlý randevu tanýmý bulunamadý.';
  msgDtMdGeneral046 :string = 'Yetkiniz olmayan bir cihaza/bölüme randevu veremezsiniz.';
  msgDtMdGeneral047 :string = 'Silme notu yazýlýrken hata alýndý.';
  msgDtMdGeneral048 :string = 'Yeni kayýt oluþturulamadý.';
  msgDtMdGeneral049 :string = 'Mesaj Gönderilemedi. Hata: ';
  msgDtMdGeneral050 :string = 'Girdiðiniz þifre hatalý';
  msgDtMdGeneral051 :string = ' için girdiðiniz þifre hatalý';
  msgDtMdGeneral052 :string = 'Ýþlemi yapacak doktorun çalýþma zamanýný ve aktif olup olmadýðýný kontrol ettiriniz.';
  msgDtMdGeneral053 :string = 'Hastaya ait rapor bilgisi bulunamadý.';
  msgDtMdGeneral054 :string = ' adlý nesnenin Ana Tablo ismi bulunamadý. '+
                      'Nesneyi düzenleme modunda açýp, Kaydet deminiz yeterli olacaktýr.';
  msgDtMdGeneral055 :string = '%s adlý nesnedeki "%s" tablosunda kayýt bulunamadý. '+
                      'Bu kart medyaya aktarýlmayacak.';
  msgDtMdGeneral056 :string = ' hazýr metni daha önce eklenmiþ iþleminiz iptal edilecek.';
  msgDtMdGeneral057 :string = 'Hasta için daha önceden sevk isteði yapýlmýþ. Bu istek iptal edilecek. Devam edilsin mi?';
  msgDtMdGeneral058 :string = 'Hasta için daha önceden sevk isteði yapýlmýþ. Ýptal edip yenisini oluþturmak istiyor musunuz?';
  msgDtMdGeneral060 :string = 'Hasta için bekleyen bir sevk isteði bulunamadý. Ýþleminiz iptal edildi.';
  msgDtMdGeneral061 :string = 'Çýkýþ yapýlmýþ bir dosyada durum deðiþimi yapamazsýnýz.';
  msgDtMdGeneral062 :string = 'Dosyanýn Durumu deðiþtirilecek devam etmek istiyor musunuz?';
  msgDtMdGeneral063 :string = 'Yatak seçmediðiniz için çýkýþ iþlemi yapamazsýnýz.';
  msgDtMdGeneral066 :string = 'Bu hasta için özellikli malzeme kullanýlacak bilgisi var.'+#13+
                      'Hasta dosyasýnada %s tane iþlenmiþ görünüyor. Yinede kontrol etmek istermisiniz?';
  msgDtMdGeneral067 :string = 'Bu hasta için özellikli malzeme kullanýlacak bilgisi var.'+#13+
                      'Ama Hasta dosyasýnda özellikli malzeme bulunamadý.'+#13+
                      'Kontrol etmek istermisiniz?';
  msgDtMdGeneral073 :string = 'Kapanýþ tarihi dosyanýn kayýt tarihinden küçük olamaz!';
  msgDtMdGeneral075 :string = 'Öncelikle çýkýþ iþlemini yapmanýz gerekmektedir.' + #13 +
                      'Hastanýn çýkýþýný yapmak istiyor musunuz ?';
  msgDtMdGeneral076 :string = 'Çýkýþ tipine göre indirim yapýlacak GSS kurumu veya kuruma ait indirim yapýlabilecek iþlem(ler) bulunamadý.';
  msgDtMdGeneral077 :string = 'Deðiþiklik nedenini giriniz.';
  msgDtMdGeneral078 :string = 'Tahsilatý yapýlmamýþ iþlemlerin sorumluluðunu '+
                      'üzerinize almak istediðinizden emin misiniz?';
  msgDtMdGeneral079 :string = '    PAKETLER : ';
  msgDtMdGeneral080 :string = '     ÝSTEKLER : ';
  msgDtMdGeneral081 :string = 'Durumunu deðiþtirmek istediðiniz iþlem aþaðýdaki paketlerde/isteklerde kullanýlmýþtýr. '+
                      'Yinede devam etmek istiyor musunuz? ';
  msgDtMdGeneral082 :string = 'Durumunu deðiþtirmek istediðiniz stok depolarda mevcut.' + #13#10 +
                      'Yinede devam etmek istiyor musunuz?';
  msgDtMdGeneral083 :string = 'Durumunu deðiþtirmek istediðiniz stok depolarda mevcut, "Kullaným Dýþý" yapamazsýnýz!';
  msgDtMdGeneral084 :string = ' nesnesinin alan bilgilerini kontrol ediniz.';
  msgDtMdGeneral085 :string = 'Geçmiþ tarihli bir iþlem için sýra numarasý veremezsiniz.';
  msgDtMdGeneral086 :string = 'Hastaya yeni bir sýra numarasý verilecek.'+#13+'Devam etmek istiyor musunuz?';
  msgDtMdGeneral087 :string = 'Hasta isteklerinde Beklemede ve ödenmesi gereken testler mevcuttur. Lütfen vezneye yönlendirin!';
  msgDtMdGeneral088 :string = 'Stok isteði ile iþlenmiþ bir stok üzerinde iþlem yapamazsýnýz.';
  msgDtMdGeneral089 :string = 'Rapor(lar) daha önceden yazdýrýlmýþ.'+#13+'Tekrar yazdýrmak istiyor musunuz?';
  msgDtMdGeneral090 :string = 'Ýcmal içine alýnmýþ bir dosya üzerinde deðiþiklik yapamazsýnýz.';
  msgDtMdGeneral091 :string = '"%s" etken madde için Maksimum miktar: '  + #13 +
                      ' Yapýlabilecek iþlem miktarý: %s' + #13 +
                      'Muadil stoklar: "%s"';
  msgDtMdGeneral092 :string = ' adlý depo, Hastaya Çýkýþlara ve Transferlere kapatýlacaktýr.'+#13+
                      'Devam etmek istiyor musunuz?';
  msgDtMdGeneral093 :string = 'Sayým fiþi bu iþlemden sonra artýk KAYDEDÝLEMEYECEK.'+#13+
                      'Ve depo tüm iþlemlere açýlacak. Devam etmek istiyor musunuz?';
  msgDtMdGeneral094 :string = 'Protokol(ler)de dosya iþlem kontrollerine göre iþlemleri kontrol ediniz!';
  msgDtMdGeneral095 :string = '%s (%s) adlý ilacýn aþaðýdaki ilaç/besin(ler) ile etkileþimi mevcut;' +  #13#13 + '  %s'
                              +  #13#13 + 'Önlem: %s';
  msgDtMdGeneral096 :string = 'KIRMIZI kategorisinde ilaç etkileþimi olduðundan iþleme devam edemezsiniz.';
  msgDtMdGeneral097 :string = ' Yinede iþleme devam etmek istiyor musunuz?';
  msgDtMdGeneral098 :string = ' adlý nesne CD/DVD (Media) ye yazdýrýlsýn diye seçilmemiþ veya Aktif deðil. Nesne Ýþlemlerinden gerekli düzenlemeyi yapýnýz.';
  msgDtMdGeneral099 :string = ' adlý kurum, Personellere özel bir kurum olduðundan devam etmek için, hastanýn TC nosunu girmek zorundasýnýnz.';
  msgDtMdGeneral100 :string = 'Girdiðiniz TC no Personel listesinde bulunamadýðýndan, iþleme devam edemezsiniz.';
  msgDtMdGeneral101 :string = 'Girdiðiniz TC noya göre birden fazla Personel kaydý bulundu, iþleme devam edemezsiniz.';
  msgDtMdGeneral102 :string = 'Personellere özel olan %s adlý kurum, bu hasta için tanýmlanmamýþ. Ýþleminiz iptal edildi.';
  msgDtMdGeneral103 :string = 'Hasta %s adlý kurumun personeli olarak görünüyor, yinede iþleme devam etmek istiyor musunuz?';
  msgDtMdGeneral104 :string = 'Yazdýrmak istediðiniz fatura, e-Fatura olarak düzenlenmiþtir. Matbu forma yazdýrýlmaMAsý gerekiyor. Yinede yazdýrmak istiyor musunuz?';
  //msgDtMdGeneral105 :string = ' adlý kurum için e-Fatura düzenlensin tanýmý yapýlmýþtýr, fakat aktif "Posta Kodu" bulunamamýþtýr. Ýþleminiz iptal edilecek.';
  msgDtMdGeneral106 :string = 'e-Fatura olarak düzenlenmiþ bir faturada silme/iptal iþlemi yapamazsýnýz.';
  msgDtMdGeneral107 :string = 'Dosya Ýþlem kontrolleri uyarýsý';
  msgDtMdGeneral108 :string = 'Aktif icmalin sigortalý türü ile hasta dosyasýnýn sigortalý türü farklý!';
  msgDtMdGeneral109 :string = 'Açýk olan icmali kapatýp yeni bir icmal almak istiyor musunuz?';
  msgDtMdGeneral110 :string = '%s nolu liste bulunamadý!';
  msgDtMdGeneral111 :string = 'Seçili kayýtlarýn "Biyometrik Kimlik Doðrulama" sý sorgulanacak.' + #13 + 'Devam etmek istiyor musunuz?';
  msgDtMdGeneral112 :string = 'Hastanýn %s kodlu branþýna ait %s tarihinde "Biyometrik Kimlik Doðrulama" sý medula sisteminde bulunamadý!';
  msgDtMdGeneral113 :string = '%s adet iþleme "Biyometrik Kimlik Doðrulama" sorgusu yapýldý.' +#13 +'Medula sisteminde kayýt bulunaMadý!';
  msgDtMdGeneral114 :string = 'Ölüm nedenini seçmelisiniz!';
  msgDtMdGeneral115 :string = 'Aneztezi polkliniðine randevu verilmeden hastayý anestezi polkliniðine gönderemezsiniz!' +#13 +
    'Ýþleminiz iptal edildi.';
  msgDtMdGeneral116 :string = 'Hizmet listesinde, hizmetin "Deðiþtirme Grubu" nda kayýt bulunamadý!';
  msgDtMdGeneral117 :string = 'Hastanýn Biyometrik Kimlik Doðrulamasý olmadýðýndan "Yeþil Alan" a taþýnamadý!';
  msgDtMdGeneral118 :string = 'Dosya yolu bulunamadý!';
  msgDtMdGeneral119 :string = '"%s" hizmetine baðlý "%s" týbbi kartý eklenmedi!';
  msgDtMdGeneral120 :string = '"Tahsilatý/Faturasý" olduðundan "%s" hizmetinin Katsayýsý deðiþtirilemedi!';
  msgDtMdGeneral121 :string = 'Zayi iþlemi için açýklama giriniz:';
  msgDtMdGeneral122 :string = 'Ýcmalsiz Faturala';
  msgDtMdGeneral123 :string = 'e-Fatura olarak düzenlenmiþ bir faturayý iptal etme yetkiniz yok.';
  msgDtMdGeneral124 :string = 'Baðlý hizmet tanýmýnda kullanýlmýþ!' + #13 + 'Öncelikte tanýmý silmelisiniz.';
  msgDtMdGeneral125 :string = '"%s" üst stok için Maksimum miktar: '  + #13 +
                      ' Yapýlabilecek iþlem miktarý: %s' + #13 +
                      'Üst Stoða Ait stoklar: "%s"';
  msgDtMdGeneral126 :string = 'Laboratuvar için yapýlan isteklerde sonucu girilmeyen kayýt yada kayýtlar var. Bunlarý sonuçlandýrdýktan sonra devam edebilirsiniz.';
  msgDtMdGeneral127 :string = 'Sistem Parametrelerinde "Ýlaç Ýsteði (Order) Kullanýlsýn" aktif deðil!';
  msgDtMdGeneral128 :string = 'Ýspark sisteminden çýkýþý yapýlmayan kayýt var. Ýþleminiz iptal edilecek.';
  msgDtMdGeneral129 :string = 'Seans bilgisi boþ olan ameliyatlar mevcut!' + #13 +
                      'Ýþleme devam etmek istiyor musunuz?';
  msgDtMdGeneral130 :string = 'Seansý düzenlenecek iþlem bulunamadý!';
  msgDtMdGeneral131 :string = 'Eklenen Stok Birimiyle Ayný Olmalýdýr!';
  msgDtMdGeneral132 :string = 'Fizik Tedavi Seansý devam etmektedir.! ' + #13 + 'Seans tamamlandýktan sonra fatura edilebilir.';
  msgDtMdGeneral133 :string = 'Yazdýrýlan faturayý, tekrar yazdýrma yetkiniz olmadýðý için iþleminiz iptal edildi.';
  msgDtMdGeneral134 :string = 'Ýzolasyonlu bir yatak seçtiniz, yinede iþleme devam etmek istiyor musunuz?';
  msgDtMdGeneral135 :string = '%s izolasyonu olan yataðý/yataklarý seçme yetkiniz yoktur. Ýþleminiz iptal edildi.';
  msgDtMdGeneral136 :string = 'Ýzolasyonlu hastayý,  izolasyonsuz yataða seçtiniz,  yinede iþleme devam etmek istiyor musunuz?';
  msgDtMdGeneral137 :string = 'Ýzolasyonlu hastayý,  izolasyonsuz yataða seçme yetkiniz yoktur.  Ýþleminiz iptal edildi.';
  msgDtMdGeneral138 :string = 'Seçilen yataðýn bulunduðu odada farklý cinsiyete sahip hasta mevcuttur. Yine de iþleme devam etmek istiyor musunuz?';
  msgDtMdGeneral139 :string = 'Hastanýn cinsiyeti, seçilen yatak için uygun deðildir. Ýþleminiz iptal edilmiþtir.';
  msgDtMdGeneral140 :string = 'Ýþlem yapýlýrken hata oluþtu, sayfayý yenileyip tekrar deneyin.';
  msgDtMdGeneral141 :string = 'Týbbi kartý görme yetkiniz olmadýðýndan iþleminiz iptal edildi.';
  msgDtMdGeneral142 :string = 'Týbbi kartý deðiþtirme yetkiniz olmadýðýndan iþleminiz iptal edildi.';
  msgDtMdGeneral143 :string = 'Hasta "%s" isimli yataða rezerve edilmiþtir!';
  msgDtMdGeneral144 :string = 'Yatak "%d" dosya nolu hastaya, "%s" ile "%s" tarihleri arasý rezerve edilmiþtir!';
  msgDtMdGeneral145 :string = 'e-Fatura kurumu için, "Fatura Ön Ek" tanýmlamanýz gerekiyor.';
  msgDtMdGeneral146 :string = 'Konsültasyon notunun karakter sayýsý en az %s karakter olmalýdýr.';
  msgDtMdGeneral147 :string = 'Aþaðýdaki alan(lar)ýn karakter sayýsý en az karþýsýnda yazan kadar olmalýdýr.';
  msgDtMdGeneral148 :string = 'GSS faturasýný, kaydedebilmeniz için ''Ýcmal'' seçmeniz gerekmektedir! iþleminiz iptal edildi.';
  msgDtMdGeneral149 :string = 'Görünümün deðiþtirilmesini hangi kullanýcý için istiyorsunuz?';
  msgDtMdGeneral150 :string = 'Önceden eklenmiþtir.';
  msgDtMdGeneral151 :string = 'E-Nabýz gönderimi yapýlan kayýtlar üzerinde, iptal iþlemi yapmadan deðiþiklik yapamazsýnýz!';
  msgDtMdGeneral152 :string = 'Ýptal için "Kullaným Bildirim Id" Bulunamadý.';
  msgDtMdGeneral153 :string = 'Baþarýyla ÜTS Kullaným Bildirimi "ÝPTAL" Yapýldý.';
  msgDtMdGeneral154 :string = 'ÜTS Alma Bildirimi Yapýlmýþ Malzeme Bulunamadý!';
  msgDtMdGeneral155 :string = 'ÜTS Sisteminde olan ama Bizmed''''te Kayýt olmayan "ALMA BÝLDÝRÝMÝ" Bulundu!' + #13#10 + 'Ýþlem Bizmed''''e kaydedilsin mi?';
  msgDtMdGeneral156 :string = 'Hasta Bilgisi Bulunamadý. Göz Bankasý Gönderimi Ýptal Edildi.';
  msgDtMdGeneral157 :string = 'Ölüm Tarihi Girilmemiþ. Göz Bankasý Gönderimi Ýptal Edildi. [Mernis Ölüm Tutanaðý]';
  msgDtMdGeneral158: string = 'ÜTS Sisteminde olan ama Bizmed''''te Kayýt olmayan "KULLANIM BÝLDÝRÝMÝ" Bulundu!' + #13#10 + 'Ýþlem Bizmed''''e kaydedilsin mi?';
  msgDtMdGeneral159: string = 'ÜTS Kullaným Bildirimi Yapýldý. Kullanim Kodu: %s';
  msgDtMdGeneral160: string = 'Ýþlemin "Teletýp Gönderimi" Bulundu. Önce Teletýp Gönderimini Ýptal Edin. ';
  msgDtMdGeneral161: string = 'Çýkýþ yapýlmýþ';
  msgDtMdGeneral162: string = 'Vefat eden hastalara ait';
  msgDtMdGeneral163: string = ' dosyalarda bu iþlemi gerçekleþtiremezsiniz.';
  msgDtMdGeneral164: string = 'Bilgi: Faturadaki Miktar ile Kurumun Gönderdiði Verme BÝldirim Miktarý Eþit Deðil, VermeBildirimId Miktarý Kadar Gönderim Yapýlacak.';
  msgDtMdGeneral165: string = 'e-Nabýz gönderimi için gerekli olan bilgiler girilmeden onaylama iþlemi gerçekleþtiremezsiniz.';
  msgDtMdGeneral166 :string = '"%s" adlý iþlem için kontrast bilgisini giriniz.';  //148660;KDUMAN;21.03.2019;
  msgDtMdGeneral167 :string = 'Hastaya ait Ayný Gün Ayný Saate Randevu Bulundu!';
  msgDtMdGeneral168 :string = 'Doktor tarafýndan girilmiþ fakat depoya gönderilmemiþ ''Beklemede'' durumunda order var.' + #13#10 + 'Bu orderlarýn isteði yapan depo bilgisi deðiþtirilecek.';
  msgDtMdGeneral169 :string = 'Yapýlacak iþlemlerde hata oluþmamasý için girmiþ olduðunuz telefon numarasýnýn doðruluðundan emin olunuz.';
  msgDtMdGeneral170 :string = '%s adlý kurumun tanýmýnda %s tanýmý mevcuttur. ';
  msgDtMdGeneral171 :string = 'Sadece doküman depolama klasörlerini seçebilirsiniz.';
  msgDtMdGeneral172 :string = 'TC Kimlik Numarasý: %s';
  msgDtMdGeneral173 :string = 'Dokümana ait doküman kodu baþka bir dokümana verilmiþ olduðundan bu iþlemi gerçekleþtiremezsiniz.';
  msgDtMdGeneral174 :string = 'Cari hesabý borçlu durumda olan personelleri pasif hale getiremezsiniz. '; //161526;KDUMAN;10.07.2019
  msgDtMdGeneral175 :string = 'Borçlu durumdaki cari hesaplarý pasif hale getiremezsiniz. ';  //161526;KDUMAN;10.07.2019
  msgDtMdGeneral176 :string = 'Vademecum eþleþmesi yapýlmamýþ ilaçlar için vademecum bilgisi görüntülenemez.';
  msgDtMdGeneral177 :string = 'ÖNEMLÝ NOT: GENELGE 2019/16 Teletýp ve Teleradyoloji Sistemi' + #13 +
                              '  3. Madde: ...2 Eylül 2019 tarihi itibari ile mükerrer tetkik sorgulama servisinden görüntüsü veya raporu sorgulanmayan veya sorgulandýðý halde görüntülere veya raporlara eriþim' +
                              ' saðlanmadan doðrudan istenen tetkiklerin MEDULA sistemine bildiriminin yapýlmayacaðý ve dolayýsýyla tetkikin geri ödemesinin gerçekleþmeyeceðinin teblið edilmiþtir.';
  msgDtMdGeneral178 :string = 'Seçtiðiniz kampanya hasta tarafýndan son bir yýl içerisinde kullanýlabilecek miktara ulaþtýðýndan bu kampanyayý seçemezsiniz. ' +
                              'Baþka bir kampanya seçmek istiyor musunuz?'; //159176;KDUMAN;08.08.2019
  msgDtMdGeneral179 :string = 'Teletýp''a gönderilen iþlemin tarihini deðiþtiremezsiniz.';
  msgDtMdGeneral180 :string = 'Bu dosya için iliþkili dosyadan tanýlarýn kopyalanmasý iþlemi yapýlamaz. '; //157795;KDUMAN;21.08.2019;
  msgDtMdGeneral181 :string = 'Fatura genel toplamý tevkifat alt sýnýrýnýn altýnda olduðu için tevkifat iptal edilecektir.';
  msgDtMdGeneral182 :string = 'LOT Numarasý ve Seri Numarasýnýn ikisinden birinin dolu olma þartý vardýr. ';
  msgDtMdGeneral183 :string = ' Teletýp Mükerrer Sorgulama Çalýþmamaktadýr. '
                              + #13 + ' Sorun, Kurumunuzdan yada Teletýp sisteminden kaynaklanýyor olabilir.'
                              + #13#13 + ' Hizmeti yinede eklemek istiyor musunuz?';
  msgDtMdGeneral184 :string = 'Dosya farklý bir þubeye ait olduðundan bu iþlemi gerçekleþtiremezsiniz.'; //165583;KDUMAN;29.09.2019;
  msgDtMdGeneral185 :string = 'Ýmzalanmýþ protokol defterindeki geliþ dosyalarýnýn bölüm bilgileri deðiþtirilemez.'; //180463;KDUMAN;07.10.2019; (160316)
  msgDtMdGeneral186 :string = 'Planýn oluþturulacaðý tarih çalýþma günü deðildir. ';
  msgDtMdGeneral187 :string = 'Teletýp Mükerrerlik Sorgusu Yapýldý. Hastanýn Mükerrerlik Verisi Yoktur.';
  msgDtMdGeneral188 :string = 'Teletýp Mükerrerlik Sorgusu zamaný ile tekrar Teletýp HL7 gönderimi yapýlsýn mý?';
  msgDtMdGeneral189 :string = '"%s" adlý iþlemin %s fiyatý indirim uygulanmýþ olduðu için deðiþtirilmedi!';
  msgDtMdGeneral190 :string = '"%s" adlý iþlemin hasta tutarý indirim uygulanmýþ olduðu için deðiþtirilmedi!';
  msgDtMdGeneral191 :string = 'Paket içindeki deðiþtirilmek istenen iþlemin yerine paket türünde iþlem seçilemez!';
  msgDtMdGeneral192 :string = '"%s" adlý iþlem için yön bilgisini giriniz.';
  msgDtMdGeneral193 :string = 'CRM toplam fiyat teklifi hasta tutarýndan büyük. ';
  msgDtMdGeneral194 :string = 'Hizmete Baðlý Týbbi Kart Bilgisi Bulunamadý...' + #13#10 + '(Bknz. Personel Listesi>Hizmet-Týbbi Kart Ýliþkisi)';


//DtMdGss
  msgDtMdGss001 :string = 'Ýþlem Medula'' ya gönderildiði için ilk önce Medula'' dan silinmesi gerekiyor. Devam edilsin mi?';
  msgDtMdGss002 :string = 'Baðlý takiplerin Kurumlarý ayný olmalýdýr.';
  msgDtMdGss003 :string = 'Yenidoðan takip türü için, Yakýnlýk kodu deðeri dolu olmalýdýr.';
  msgDtMdGss004 :string = 'TC Numarasý boþ olamaz.';
  msgDtMdGss005 :string = 'Medula'' dan takip alýnýyor...';
  msgDtMdGss006 :string = 'Biometrik Kimlik Doðrulama yöntemiyle takip alýnamadý. Eski yöntemle takip alýnsýn mý?';
  msgDtMdGss007 :string = 'Bu hasta için sisteme kaydedilmemiþ "%s" numaralý takip bulundu.'+#13+
                  'Lütfen yapmak istediðiniz iþlemi seçiniz...';
  msgDtMdGss008 :string = 'Meduladan SÝL';
  msgDtMdGss009 :string = 'Hastanýn sistemdeki devreden kurum bilgisi ile Medula''daki uyumsuz!' + #13 +
                  'Hastanýn kurumunu düzeltiniz.' + #13 +
                  'Medula''dan dönen devreden kurum : %s'+ #13 +
                  'Sistemdeki devreden kurum : %s';
  msgDtMdGss010 :string = '*** ADLÝ VAKA BÝLGÝSÝ *** ';
  msgDtMdGss011 :string = 'Provizyon Tarihi : ';
  msgDtMdGss012 :string = 'Provizyon Tipi : ';
  msgDtMdGss013 :string = 'TC Kimlik No : ';
  msgDtMdGss014 :string = 'Ýþleme Devam edilsin Mi?';
  msgDtMdGss015 :string = ' numaralý takip dosyasý için alýnmýþ Diþ Taahhütleri vardýr. '+
                  'Taahhütleri sildikten sonra iþleme devam edebilirsiniz.';
  msgDtMdGss016 :string = 'Medula'' dan takip bilgisi siliniyor...';
  msgDtMdGss017 :string = '"Sevk Tarihi" belli bir hastayý sevk edebilmeniz için, "Branþ Kodu" atanmýþ bir bölüme "Takip Numarasý" almýþ olmalýsýnýz!';
  msgDtMdGss018 :string = 'Hastanýn baþka bir Kuruma sevki yapýlacaktýr. Devam etmek istediðinize emin misiniz?';
  msgDtMdGss019 :string = 'Medulaya gönderildikten sonra Doktor ve/veya Bölüm bilgisi deðiþmiþ iþlemler var. '+
                  'Bu iþlemlerin iptal edilip yeniden gönderilmesi gerekiyor.'+#13+
                  'Ýþlem kayýtlarý iptal edilsin mi?';
  msgDtMdGss020 :string = 'Medula'' ya iþlem kaydý yapýlýyor...';
  msgDtMdGss021 :string = 'Diþ bilgisi bulunamadý.';
  msgDtMdGss022 :string = ' kodlu ameliyat iþlemine ait rapor bulunamadý. Ýþleme devam edilsin mi?';
  msgDtMdGss023 :string = ' kodlu radyoloji iþlemine ait rapor bulunamadý. Ýþleme devam edilsin mi?';
  msgDtMdGss024 :string = ' kodlu laboratuar testine ait sonuç bulunamadý. Sýfýr olarak gönderilsin mi?';
  msgDtMdGss025 :string = 'Birden fazla rapor bulundu.'+#13+ ' kodlu iþlem için en son yazýlan rapor otomatik olarak seçilsin mi?';
  msgDtMdGss026 :string = 'Triaj kod hatasý. Lütfen yazýlým firmasýyla irtibata geçiniz.';
  msgDtMdGss027 :string = '%s tesisinde, "%s" tarihinde, %s adet ayný iþlemden yapýlmýþtýr.';
  msgDtMdGss028 :string = ' Protokol numaralý dosya faturalanMAmýþ ve dönem dýþýnda. '+ #13+
                  'Fatura iþleminizin iptali için "Evet", Bu dosya hariç faturalamak için "Hayýr" a týklayýn';
  msgDtMdGss029 :string = 'Hasta Çýkýþ sorunu...'+ #13+ 'Ýcmal No : %s - Takip No : %s';
  msgDtMdGss030 :string = 'Dönem sorunu...'+ #13+ 'Ýcmal No : %s - Takip No : %s'+ #13+ 'Baþvuruya ait dosyalarýn dönemleri ayný olmalýdýr.';
  msgDtMdGss031 :string = 'Fatura kurum hatasý...'+ #13+ 'Ýcmal No : %s - Takip No : %s'+ #13+ 'Baþvuruya ait dosyalarýn kurumlarý ayný olmalýdýr.';
  msgDtMdGss032 :string = 'Faturalanmamýþ iþlem sorunu...'+ #13+ 'Ýcmal No : %s - Takip No : %s';
  msgDtMdGss033 :string = 'Ýþlem kaydý sorunu...'+ #13+ 'Ýcmal No : %s - Takip No : %s';
  msgDtMdGss034 :string = 'Hastanýn %s nolu baþvurusuna ait aþaðýdaki hatalar tespit edildi:';
  msgDtMdGss035 :string = 'Medula'' dan fatura tutarlarý okunuyor...';
  msgDtMdGss036 :string = 'Medula'' ya fatura kaydý yapýlýyor...';
  msgDtMdGss037 :string = 'Faturalanacak dosya bulunamadý';
  msgDtMdGss038 :string = 'Sonuç Mesajý : (%s)%s' + #13 + 'Fatura Teslim No : %s' + #13 + 'Fatura Toplam Tutarý : %s' ;
  msgDtMdGss039 :string = '%s' + #13 + 'Sonuç Mesajý : (%s)%s' + #13 + 'Takip No : %s' + #13+ 'Hata Kodu : %s' + #13 + 'Hata Mesajý : %s';
  msgDtMdGss040 :string = '%s baþvuruya ait fatura %s defa iptal edilmiþ.';
  msgDtMdGss041 :string = 'Devam edemezsiniz!';
  msgDtMdGss042 :string = 'Medula'' daki fatura(lar) iptal ediliyor...';
  msgDtMdGss043 :string = 'Teslim No : ';
  msgDtMdGss044 :string = 'Hata Kodu : ';
  msgDtMdGss045 :string = 'Hata Mesajý : ';
  msgDtMdGss046 :string = 'Sonuç Mesajý : (%s)%s' + #13;
  msgDtMdGss047 :string = 'Fatura Tutar(lar)ý iptal ediliyor...';
  msgDtMdGss048 :string = 'Medulada 105 gün öncesine ait takip alýnamaz.'+#13+'Takibi silmek istediðinizden emin misiniz?';
  msgDtMdGss049 :string = 'Medulaya kaydedilen Yatýþ bilgileri silinmeden iþleminize devam edemezsiniz.';
  msgDtMdGss050 :string = 'Takip sil yetkiniz olmadýðý için, var olan takibi silmeden iþleminize devam edemezsiniz.';
  msgDtMdGss051 :string = 'Belirtilen takip silinecek! Devam etmek istiyor musunuz?';
  msgDtMdGss052 :string = 'Medula ya 30 kb dan büyük bir dosya gönderemezsiniz. '+#13+
                  'Gönderdiðiniz dosyanýn boyutu : %s'+#13+
                  'Ýþleminizi seçimli olarak yapýn.';
  msgDtMdGss053 :string = 'Hastanýn Takip Numarasý alýnmamýþ.';
  msgDtMdGss054 :string = 'Hastanýn raporu daha önceden gönderilmiþ.';
  msgDtMdGss055 :string = 'Rapor Doktoru girilmemiþ.';
  msgDtMdGss056 :string = 'Hastaya ilaç teþhis bilgisi girilmemiþ.';
  msgDtMdGss057 :string = 'Hastaya ait Etkin maddeler girilmemiþ.';
  msgDtMdGss058 :string = 'Hastaya Taný girilmemiþ.';
  msgDtMdGss059 :string = 'Hastaya ait tedavi bilgileri girilmemiþ.';
  msgDtMdGss060 :string = 'Hastanýn ESWL taþ bilgileri girilmemiþ';
  msgDtMdGss061 :string = 'Tedavi Rapor Türünü belirtmelisiniz.';
  msgDtMdGss062 :string = 'Medula'' ya rapor bilgisi kaydediliyor...';
  msgDtMdGss063 :string = 'Rapor medulada kayýtlý görünüyor. Meduladan silinsin mi?';
  msgDtMdGss064 :string = 'Raporun düzenleme türü hatalý. Devam eden rapor ise raporun türü HEYET olmalýdýr.'+ #13 +
                  'Raporu kaydederseniz YENÝ RAPOR olarak kaydedilecek. Lütfen seçiminizi yapýnýz';
  msgDtMdGss065 :string = 'Raporu Kaydet';
  msgDtMdGss066 :string = 'Raporu Düzelt';
  msgDtMdGss067 :string = 'RAPOR BÝLGÝLERÝ'+#13;
  msgDtMdGss068 :string = 'Hasta Adý Soyadý' + #9#9#58;
  msgDtMdGss069 :string = 'Takip No - Sýra No'+ #9#58;
  msgDtMdGss070 :string = 'Rapor No'+ #9#9#58;
  msgDtMdGss071 :string = 'Rapor Türü' + #9#9#58;
  msgDtMdGss072 :string = 'Düzenleme Türü' + #9#9#58;
  msgDtMdGss073 :string = 'Bitiþ Durumu'+ #9#9#58;
  msgDtMdGss074 :string = 'Baþlangýç Tarihi' +#9#9#58;
  msgDtMdGss075 :string = 'Bitiþ Tarihi' +#9#9#58;
  msgDtMdGss076 :string = 'Protokol Tarihi - No'+#9#58;
  msgDtMdGss077 :string = 'Ýþbaþý/Kont.Tarihi'+#9#58;
  msgDtMdGss078 :string = 'Branþý'+#9#9#9#58;
  msgDtMdGss079 :string = 'Kurum Kodu'+ #9#9#58;
  msgDtMdGss080 :string = 'Kurum Adý'+ #9#9#58;
  msgDtMdGss081 :string = 'Açýklama'+ #9#9#58;
  msgDtMdGss082 :string = 'HASTAYA AÝT AÇIK RAPOR VARDIR. "Baðlý Rapor" olarak göndermek isterseniz "Devam Raporu" butonuna týklayýnýz? ';
  msgDtMdGss083 :string = 'Yeni Rapor';
  msgDtMdGss084 :string = 'Devam Raporu';
  msgDtMdGss085 :string = 'Raporun Detay Bilgileri girilmemiþ.';
  msgDtMdGss086 :string = 'Bölümüne ait tanýmlý Branþ bulunamadý.';
  msgDtMdGss087 :string = 'Rapor Türü seçilmemiþ.';
  msgDtMdGss088 :string = 'Analýk "Rapor Tipi" seçilmelidir.';
  msgDtMdGss089 :string = '"Gebelik Tipi" seçilmelidir.';
  msgDtMdGss090 :string = '"Gebelik Haftasý" boþ býrakýlamaz(Doktora gidilen hafta).';
  msgDtMdGss091 :string = '"Gebelik Haftasý" boþ býrakýlamaz(Çalýþabilceði hafta).';
  msgDtMdGss092 :string = '"Doðum haftasý" boþ býrakýlamaz.';
  msgDtMdGss093 :string = '"Canlý çocuk" sayýsý girilmelidir.';
  msgDtMdGss094 :string = '"Doðan çocuk" sayýsý girilmelidir.';
  msgDtMdGss095 :string = 'Ön rapor bilgisi gönderiliyor...';
  msgDtMdGss096 :string = 'Rapor ön seçimden Rapor Takip Numarasý dönmedi.' +#13#13 +
                  '**Devam edildiðinde medula servisinden "Sistem Hatasý" uyarýsý alýnabilir.' +
                  ' "Sistem Hatasý" uyarýsý raðmen Medula raporu kaydetmiþ olabilir.' +
                  ' TC No dan Rapor Bilgilerini Getir ile raporu çaðýrýp, kaydedebilirsiniz .'+#13#13+
                  'Gönderime devam etmek istiyor musunuz?';
  msgDtMdGss097 :string = 'Medula sistemi cevap vermediðinden iþleminiz gerçekleþtirilememiþtir. '+ #13+ 'Daha sonra tekrar deneyiniz.';
  msgDtMdGss098 :string = 'Medula Sisteminde Hata Alýndý. '+ #13+ 'Daha sonra tekrar deneyiniz.' + #13;
  msgDtMdGss099 :string = 'Medula Sisteminde Rapor Ön Seçim Gönderimde Hata Alýndý '+ #13;
  msgDtMdGss103 :string = 'Medula Sisteminde Rapor Kaydederken Hata Alýndý.'+ #13;
  msgDtMdGss105 :string = 'Medula'' dan takip bilgisi okunuyor...';
  msgDtMdGss106 :string = 'Sonuç Mesajý  : (%s)%s'+ #13 +
                  'Baþvuru No : %s'+ #13 +'Kayýt Tarihi : %s'+ #13 +
                  'Takip No : %s'+ #13 + 'Takip Tarihi : %s'+ #13 +
                  'Takip Durumu : %s - %s'+ #13 +
                  'Takip Tipi : %s - %s'+ #13 +
                  'Provizyon Tipi : %s - %s'+ #13 +
                  'Ýlk Takip No : %s'+ #13 +
                  'Tedavi Tipi : %s - %s'+ #13 +
                  'Tedavi Türü : %s'+ #13 +
                  'Branþ Kodu : %s - %s'+ #13 +
                  'Donör TC No : %s'+ #13 +
                  'Hasta Ad Soyad : %s %s'+ #13 +
                  'Hasta TC No : %s'+ #13 +
                  'Hasta Cinsiyet : %s'+ #13 +
                  'Hasta Telefon : %s'+ #13 +
                  'Hasta Adres : %s'+ #13 +
                  'Fatura No : %s'+#13+
                  'Fatura Ýptal Hakký : %s' + #13 +
                  'Fatura Tarihi: %s' + #13 +
                  'Yeni Doðan Çocuk Sýra No : %s' + #13+
                  'Yeni Doðan Doðum Tarihi : %s' + #13 +
                  'Ýstisnai Hal: %s' + #13 +
                  'Kapsam Adý: %s' + #13 +
                  'Ölüm Tarihi: %s';
  msgDtMdGss107 :string = 'Sonuç Mesajý  : (%s)';
  msgDtMdGss108 :string = 'Dosyadaki kayýtlý takip numarasýda silinsin mi?';
  msgDtMdGss109 :string = 'Rapor medulaya gönderilmemiþ. Silme iþleminiz iptal edilecek';
  msgDtMdGss110 :string = 'Týbbi kart medulaya kayýtlý!'+#13+ 'Meduladan raporu silinsin mi?';
  msgDtMdGss111 :string = 'Rapor Takip No : %s' + #13 + 'Rapor Türü : %s' + #13 + 'Sonuç Kodu / Notu : %s / %s';
  msgDtMdGss112 :string = 'Rapor Medula sisteminde bulunamadý, Bizmed'' den silinsin mi?';
  msgDtMdGss113 :string = 'Medula sistemindeki ilaç detayý Bizmed''e uygulansýn mý?';
  msgDtMdGss114 :string = 'Hastanýn medula takip numarasý alýnmamýþ.';
  msgDtMdGss115 :string = 'Hastanýn "TC Kimlik No" dolu olmalýdýr.';
  msgDtMdGss116 :string = 'Hastanýn "TC Kimlik No" yada rapor numarasý dolu olmalýdýr.';
  msgDtMdGss117 :string = 'Hastanýn Sistemdeki ve Meduladaki Ad ve Soyad bilgileri uyuþmuyor.'+#13+ 'Sistem : %s %s'+#13+
                  'Medula : %s %s'+ #13+ 'Yinede rapor bilgisini almak istiyor musunuz?';
//  msgDtMdGss118 :string = 'Hastanýn "TC Kimlik No" alaný girilmelidir.';
//  msgDtMdGss119 :string = 'Hastanýn Sistemdeki ve Meduladaki Ad ve Soyad bilgileri uyuþmuyor.'+#13+
//                  'Sistem : %s %s'+#13+'Medula : %s %s'+#13+'Yinede rapor bilgisini almak istiyor musunuz?';
  msgDtMdGss120 :string = 'Medula'' dan takip bilgileri okunuyor...';
  msgDtMdGss121 :string = 'Medula'' dan fatura bilgisi okunuyor...';
  msgDtMdGss122 :string = 'Sonuç Mesajý  : (%s)%s'+ #13 + 'Teslim No : %s'+ #13 +'Ref No : %s'+ #13 + 'Fatura Tarihi : %s'  +#13+ 'Fatura Tutarý : %s';
  msgDtMdGss123 :string = 'Medula'' da bu fatura numarasý bulunamadý, fatura numarasý silinecek, devam edilsin mi? ';
  msgDtMdGss124 :string = 'Medula'' daki iþlem(ler) iptal ediliyor...';
  msgDtMdGss125 :string = 'Sonuç Mesajý  : (%s)%s';
  msgDtMdGss126 :string = 'Sistemde olmayan ve Medulada kayýtlý taný bilgisi silinemedi.';
  msgDtMdGss127 :string = 'Medula'' dan iþlem bilgileri okunuyor...';
  msgDtMdGss128 :string = '%s-%s'+#13+'Medulada karþýlýðý olmayan kayýtlarýn Medula bilgileri silinsin mi?';
  msgDtMdGss130 :string = 'Sistemdeki ve Meduladaki hasta %s bilgileri uyuþmamaktadýr.'+#13+ 'Sistem : (%s) '+#13+ 'Medula : (%s)';
  msgDtMdGss131 :string = 'DeðiþtirME';
  msgDtMdGss132 :string = 'Medulada çýkýþ kaydý bulunamadý, bizdeki çýkýþ kaydýda silinecek! ';
  msgDtMdGss133 :string = 'Dosyadaki yatýþ baþlangýç ve bitiþ tarihiyle, '+#13+
                  'Meduladaki yatýþ baþlangýç ve bitiþ tarihleri uyumsuz olduðundan,'+#13+
                  'Dosyadaki tarihler Meduladaki bilgilere göre güncellendi.';
  msgDtMdGss134 :string = 'Baþvuru Numarasý olmayan bir hastanýn Çýkýþ Kaydý'' ný yapamazsýnýz.';
  msgDtMdGss135 :string = 'Faturalanmamýþ yatýþ dosyasý bulunamadý.';
  msgDtMdGss136 :string = 'Hastaya açýlmýþ tüm Yatýþ Dosyalarýnýn normal çýkýþ iþlemi yapýlmalýdýr.';
  msgDtMdGss137 :string = 'Medulaya gönderilmiþ bir iþlem üzerinde herhangi bir iþlem yapamazsýnýz.';
  msgDtMdGss138 :string = 'Saðlýk Tesisi Sorgularken Hata:';
  msgDtMdGss140 :string = 'Hastaya teþhis bilgisi girilmemiþ.';
  msgDtMdGss142 :string = 'Dosya Medulaya faturalandýrýldýðý için iþleminiz iptal edilecek.';
  msgDtMdGss143 :string = 'Takip alýndýðý için, bu iþlemi gerçekleþtiremezsiniz. '+#13+
                  'Takibi sildikten sonra iþleminize devam edebilirsiniz.';
  msgDtMdGss144 :string = 'Medula Ýþlem Kaydý tamamlandýðý için iþleminiz iptal edilecek.';
  msgDtMdGss145 :string = 'Dosya iþlemlerinden bazýlarý Medulaya gönderildiði için iþleminiz iptal edilecek.';
  msgDtMdGss146 :string = 'Kural ID : %s' + #13+ 'Branþ Kural Uygulama : %s' + #13+ 'Düzenleme Türü :%s';
  msgDtMdGss147 :string = #13+'BRANÞLAR : ';
  msgDtMdGss148 :string = #13+'Kodu : %s' +#13+'Adý : %s';
  msgDtMdGss149 :string = #13+ 'TEÞHÝSLER : ';
  msgDtMdGss150 :string = #13+'Kodu : %s' +#13+ 'Adý : ';
  msgDtMdGss151 :string = #13+ 'TESÝSLER : ';
  msgDtMdGss152 :string = #13+ 'SERTÝFÝKALAR : ';
  msgDtMdGss153 :string = 'Sistemdeki Etkin Madde listesi, Medula ile eþleþtirilecek. Bu iþlem uzun sürebilir. Devam etmek istiyor musunuz? ';
  msgDtMdGss154 :string = 'Aþaðýdaki Etkin Maddeler listenize eklenmiþtir.'+ #13+'Kodu__Adý___________________Adet__Form__Ýçerik Miktarý'+ #13;
  msgDtMdGss155 :string = 'Güncellenecek herhangi bir etkin madde bulunamadý.';
  msgDtMdGss156 :string = 'Ýþlem baþarýyla gerçekleþtirildi.'+#13+'Örneklemeye düþen dosya sayýsý : %s';
  msgDtMdGss157 :string = 'Örneklenen takip listesini kaydetmek istiyor musunuz?';
  msgDtMdGss158 :string = 'Rapor Medulaya kaydedilmemiþ. Raporu kaydetmeden düzeltme iþlemi yapamazsýnýz.';
  msgDtMdGss159 :string = 'Medula raporu güncelleniyor...';
  msgDtMdGss160 :string = 'Birden fazla rapor bulundu.'+#13+
                  ' kodlu iþlem için en son yazýlan rapor otomatik olarak seçilsin mi?';
  //msgDtMdGss161 :string = 'Medulaya gönderilmek üzere silmek istediðiniz hizmete "Ýþlem Notu" girilmiþtir.'+
  //                ' Silme iþlemine devam ederseniz notunuz da silinecek. Devam etmek istiyor musunuz?';
  msgDtMdGss162 :string = 'Ýþlem Medula'' dan silinemediði için, Bizmed'' den silme iþlemine devam edemezsiniz.';
  msgDtMdGss163 :string = ' numaralý Taahhüt numarasý Medulada bulunamadý. Sistemden silinsin mi?';
  msgDtMdGss164 :string = ' nolu takip numarasý baþka bir dosyaya atandýðý için iþleminiz iptal edildi.';
  msgDtMdGss165 :string = 'Hata Oluþtu: ';
  msgDtMdGss166 :string = ' adlý hasta bilgisine ulaþýldý fakat, Yeþil Kart sevk bilgisi bulunamadý. El Ýle Giriþ yapýnýz.';
  msgDtMdGss167 :string = 'Bu iþlem ortalama 2 dk sürmektedir, yinede devam etmek istiyor musunuz?';
  msgDtMdGss168 :string = 'Bilinmeyen Hata';
  msgDtMdGss169 :string = 'Dosyadan almak istermisiniz?';
  msgDtMdGss171 :string = 'GSS tarafýndan ödenen ilaçlarýn listesi alýndý. Ödenmeyenler için iþlem tekrarlanacak.';
  msgDtMdGss172 :string = 'GSS den Tüm ilaç listeleri baþarýyla alýndý.';
  msgDtMdGss173 :string = 'GSS den ilaç listesi alýmýnda hata oluþtu. Tekrar deneyiniz.' + #13#10;
  msgDtMdGss174 :string = 'GSS den ödenen ilaç listesi alýndý ama ödenmeyen ilaç listesi alýnamadý. Tekrar deneyiniz.' + #13#10;
  msgDtMdGss175 :string = '%s adlý stok için, Medula Alýþ Birimi dönen %s katsayýsýna göre otomatik seçilsin mi?';
  msgDtMdGss176 :string = 'Rapor Doktor bilgisi dolu olmalýdýr.';
  msgDtMdGss177 :string = 'Hastanýn raporunu gönderilmemiþ!' +#13 + 'Rapor medulaya kaydedildikten sonra onay yapabilirsiniz.';
  msgDtMdGss178 :string = 'Silmeye çalýþtýðýnýz rapor sistemde kayýtlý.' + #13;
  msgDtMdGss179 :string = 'Rapor baþarýyla silinmiþtir';
  msgDtMdGss180 :string = 'Rapor silinememiþtir. '+ #13 +'%s : %s';
  msgDtMdGss181 :string = 'Dikkat: Rapor silinememiþtir, Baþhekim onayýný tekrar veriniz.' + #13 + #13;
  msgDtMdGss182 :string = 'Rapor medulaya kayýtlý deðil. Kayýtlý olamyan raporu güncelleyemezsiniz.';
  msgDtMdGss183 :string = 'Güncellemeye çalýþtýðýnýz rapor ile mevcut açýk rapordan farklý. Güncellenmesi gereken açýk raporun takip numarasý :';
  msgDtMdGss184 :string = 'Rapor güncellemek için açýk rapor bulunamadý.'+ #13 +
                  'Rapor Güncellemeye Devam Edilsin mi?';
  msgDtMdGss185 :string = 'Rapor güncelleniyor...';
  msgDtMdGss186 :string = 'Rapor Baþarýyla Güncellenmiþtir.' + #13+ 'Güncelleme iþleminden sonra "Baþhekim Onayý" verilmelidir.';
  msgDtMdGss189 :string = 'Medula sisteminde güncelleme aþamasýnda hata alýndý '+ #13;
  msgDtMdGss190 :string = 'Rapor medulaya kayýtlý deðil. Kayýtlý olamyan raporun durumunu deðiþtiremezsiniz.';
  msgDtMdGss191 :string = '2.Rapor güncellemesi yapýlýyor...';
  msgDtMdGss194 :string = 'Medula Sisteminde Hata Alýndý '+ #13;
  msgDtMdGss195 :string = 'Silmeye çalýþtýðýnýz takibe baðlý medulaya kayýtlý %s mevcut.' +#13 +
                  'Lütfen ilk önce E-Raporun medulaya gönderimini siliniz.';
  msgDtMdGss199 :string = 'Sevk bildirimi yapýlmýþ. Ýþleminiz iptal edildi';
  msgDtMdGss200 :string = 'Sevk Vasýtasý dolu olmalýdýr. Ýþleminiz iptal edildi.';
  msgDtMdGss201 :string = 'Sevk edilen il dolu olmalýdýr. Ýþleminiz iptal edildi.';
  msgDtMdGss202 :string = 'Refakatçi Gerekçesi dolu olmalýdýr. Sevk Bildirim Ýptal Edildi.';
  msgDtMdGss203 :string = 'Sevk Doktor bilgisi yok. Ýþleminiz iptal edildi.';
  msgDtMdGss204 :string = 'Sevk taný bilgisi yok. Ýþleminiz iptal edildi.';
  msgDtMdGss205 :string = 'Medulaya Sevk Bildirimi baþarýyla yapýlmýþtýr';
  msgDtMdGss206 :string = 'Sevk bildirimde hata alýndý.' + #13 + 'Hata :';
  msgDtMdGss207 :string = 'Sevk kaydetme yapýlmýþ. Ýþleminiz iptal edildi';
  msgDtMdGss210 :string = 'Medulaya Sevk Kaydetme iþlemi baþarýyla yapýlmýþtýr';
  msgDtMdGss211 :string = 'Sevk kaydetmede hata alýndý.' + #13 + 'Hata :';
  msgDtMdGss212 :string = 'Hasta sevk bilgileri medulaya kayýtlý deðil iþleminiz iptal edildi.';
  msgDtMdGss213 :string = 'Meduladan Sevk iptal iþlemi baþarýyla yapýlmýþtýr';
  msgDtMdGss214 :string = 'E-Sevk medulada kayýtlý görünmüyor Bizmed" dende silinsin mi?';
  msgDtMdGss215 :string = 'Sevk iptal iþleminde hata alýndý.' + #13 + 'Hata :';
  msgDtMdGss216 :string = 'Mutat Dýþý araç raporu gönderebilmeniz için hasta TC kimlik numarasý dolu olmalýdýr.';
  msgDtMdGss217 :string = 'Mutat Dýþý araç raporu medulaya kayýtlý. Ýþleminiz iptal edildi.';
  msgDtMdGss219 :string = 'Rapor gönderebilmeniz için "Rapor No" alaný dolu olmalýdýr.';
  msgDtMdGss222 :string = 'Medulaya Mutat Dýþý Araç Raporu baþarýyla kaydedilmiþtir';
  msgDtMdGss223 :string = 'Rapor gönderiminde hata alýndý.' + #13 + 'Hata :' ;
  msgDtMdGss224 :string = 'Mutat Dýþý Araç Raporu Meduladan iptal edilmiþtir';
  msgDtMdGss225 :string = 'Rapor iptal edilirken hata alýndý.' + #13 + 'Hata :';
  msgDtMdGss226 :string = 'Hasta TC dolu olmalýdýr!';
  msgDtMdGss227 :string = 'Sevk Listesi Bulunamadý!';
  msgDtMdGss228 :string = 'Sevk listesi meduladan alýnýrken hata alýndý.' + #13 + 'Hata :';
  msgDtMdGss229 :string = 'Rapor iptal edilirken hata alýndý.' + #13 + 'Hata :';
  msgDtMdGss230 :string = 'Saðlýk Net kullanýcý adý veya þifre hatalý. Lütfen kontrol edip tekrar deneyiniz.';
  msgDtMdGss231 :string = 'Silme Ýþlemi baþarýyla gerçekleþmiþtir.';
  msgDtMdGss232 :string = 'Silme Ýþlemi yapýlamamýþtýr.' +#13+ 'Hata:';
  msgDtMdGss233 :string = 'Seçtiðiniz kaydýn form bilgisi ile webservisten dönen form bilgisi farklýdýr. Webservis bilgisi alýnsýn mý?';
  msgDtMdGss234 :string = '1. Tesis Bilgisi : %s'+#13+'1. Ýþlem Tarihi : %s'+#13+'1. Provizyon No : %s';
  msgDtMdGss235 :string = '3. Tesis Bilgisi : %s'+#13+
                  '3. Ýþlem Tarihi : %s'+#13+
                  '3. Provizyon No : %s';
  msgDtMdGss236 :string = 'Form No : %s'+#13+'Ýþlem Türü : %s';
  msgDtMdGss237 :string = 'Okunan Ortodonti Bilgileri : '+#13;
  msgDtMdGss239 :string = 'Rapor Ýptal Ediliyor...';
  msgDtMdGss242 :string = 'Rapor medulada kayýtlý görünüyor. Meduladan silinsin mi?';
  msgDtMdGss243 :string = '"Doktor TC Kimlik No" dolu olmalýdýr.' + #13#10 +'Doktor:%s %s';
  msgDtMdGss245 :string = 'Rapor Takip No : %s' + #13 +
                  'Rapor Türü : Ýlaç Kullaným Raporu' + #13 +
                  'Sonuç Kodu / Notu : %s/%s Uyarý Mesajý: %s';
  msgDtMdGss246 :string = #13+'Rapor Medula sisteminde bulunamadý, Bizmed'' den silinsin mi?';
  msgDtMdGss247 :string = 'Kural ID : %s' + #13+
                   // 'Branþ Kural Uygulama : ' +vEtkinMaddeSUTCevapDVO.etkinMaddeSutListesi[i].+ #13+
                  'Düzenleme Türü :%s';
  msgDtMdGss248 :string = #13+'Kodu : ';
  msgDtMdGss249 :string = 'Adý : ';
  msgDtMdGss250 :string = #13+ 'CÝNSÝYET : ';
  msgDtMdGss251 :string = #13+ 'YAÞ ARALIÐI : ';
  msgDtMdGss252 :string = 'Doktor TC Kimlik Numarasý boþ olamaz!';
  msgDtMdGss253 :string = ' adlý hizmetin çekimi yapýlmadýðýndan iþleminiz iptal edildi.';
  msgDtMdGss254 :string = 'Ýlaç raporuna "Baþhekim Onayý" verilebilmesi için hastane bilgilerine ' +
                  '"Baþhekim Kullanýcý Adý" ve "Þifre" yazýlmalýdýr!';
  msgDtMdGss255 :string = ' adlý hizmetin PACS sistemindeki "Accession Number" bilgisini olmadýðýnda iþleminiz iptal edildi.';

  msgDtMdGss256 :string = 'Onaylý Ýlaç raporunun iptal edilmesi için hastane bilgilerine ' +
                  '"Baþhekim Kullanýcý Adý" ve "Þifre" yazýlmalýdýr!';
  msgDtMdGss257 :string = 'Heyet raporlarýnda "Baþhekim Onayý" yapýlabilmesi için '+
                  'öncelikle doktorlar sekmesinden heyet doktorlarýnýn onayýný yapýnýz.';
  msgDtMdGss258 :string = 'Tüp Bebek Raporlarýnda "Tedavi Türü" dolu olamlýdýr.';
  msgDtMdGss259 :string = 'Bölüm bilgisi bulunamadý!';
  msgDtMdGss260 :string = 'Rapor medulada kayýtlý deðil.';
  msgDtMdGss261 :string = '45 Günü geçen protokolleri silmeye yetkiniz bulunmamaktadýr.';
  msgDtMdGss262 :string = '%s adlý hizmet için Risk derecesi / Euroscore girilmesi zorunludur! iþleminiz iptal edildi.';
  msgDtMdGss263 :string = 'Yoðun Bakým hastalarý gönderebilmeniz için yataðýn "GSS Yatak Kodu" dolu olmalýdýr!';
  msgDtMdGss264 :string = 'Kapatýlmýþ yada açýk kalma süresini doldurmuþ dosyalarý Medulaya gönderemezsiniz!';
  msgDtMdGss265 :string = 'Sistemdeki Hizmet/Malzeme listesi, Medula ile eþleþtirilecek. Bu iþlem uzun sürebilir. Devam etmek istiyor musunuz?';
  msgDtMdGss266 :string = 'Bu iþlem uzun sürebilir!';
  //DYILMAZ kodda herhangi bir yerde kullnýlmamis
  //msgDtMdGss267 :string = 'Güncellenecek kayýt bulunamadý.';
  msgDtMdGss268 :string = 'Fatura tutarý okunmuþ veya Faturalanmýþ kayýtlarýn takip numarasýný silemessiniz.';
  msgDtMdGss269 :string = 'Hastaya ait doðum öncesi rapor bulunamadý.';
  msgDtMdGss270 :string = 'Takip Numarasý alýnmýþ olmalý';
  msgDtMdGss271 :string = 'Stoklara ait sut fiyat listesi bulunamadý güncellenemeyecek';
  msgDtMdGss272 :string = 'Hizmetlere ait sut fiyat listesi bulunamadý güncellenemeyecek';
  msgDtMdGss273 :string = 'Güncellenecek sut fiyat listesi bulunamadý güncellenemeyecek';
  msgDtMdGss274 :string = 'Takip Numarasý alýnmýþ olmalý';
  msgDtMdGss275 :string = 'Takip Kaydý Olmalýdýr!';
  msgDtMdGss276 :string = 'Biometrik kimlik doðrulama - ';
  msgDtMdGss277 :string = 'Ameliyat sonrasý ayaktan dosyalar ayrý faturalandýrýlmalýdýr.' + #13 + 'Takip Numarasý = ';
  msgDtMdGss278 :string = '"%s" adlý iþlem "Faturalama Birimi" tarafýndan girilmiþtir. ' + #13 +
                          'Çekim yapýlMAmýþtýr. ' + #13 +
                          'Ýþleme devam etmek istiyor musunuz?';
  msgDtMdGss279 :string = 'Provizyon Tipi (I) Ýþ Kazasý olan takiplerde EK2C-EK2B dönüþümü yapmalýsýnýz!' + #13 +
                          'Not: Hasta dosyasýnda Paket Ýþlem mevcut ise dönüþüm otomatik yapýlacaktýr.';
  msgDtMdGss280 :string = 'GSS Evrak Numarasýna ait(dönemi kapatýlmýþ) kayýtlar bulunmaktadýr.Meduladan yeniden sorgulama yapýlmayacaktýr.';
  msgDtMdGss281 :string = ' tarihinde GSS Evrak Numarasýna ait kayýtlar sorgulanmýþ, yinede sorgulamak istiyor musunuz?';
  msgDtMdGss282 :string = ' GSS Fiyat Farký Sorunu...'#13'Ýcmal No : %s - Takip No : %s';
  msgDtMdGss283 :string = '105 günü geçen takipleri silmeye yetkiniz bulunmamaktadýr.';
  msgDtMdGss284 :string = 'Branþ bazýnda ayrý dosya olarak kaydedilsin mi?';
  msgDtMdGss285 :string = 'Daha önce baðlý takip alýnan kurum bilgisi, baðlý takip alýnacak kurum bilgisinden farklýdýr.';
  msgDtMdGss286 :string = 'Medula çýkýþ iþlemi iptal ettikten sonra iþleme devam ediniz';
  msgDtMdGss287 :string = 'Vaka Tarihi : ';
  msgDtMdGss288 :string = 'Plaka No : ';
  msgDtMdGss289 :string = 'Vaka Tarihi boþ býrakýlamaz.';
  msgDtMdGss290 :string = ' Etken Madde tanýmý olmayan Ýlaçlar olduðundan Etken Madde Listesini güncelleyerek tekrar Ýlaç Listesini güncellemelisiniz.';
  msgDtMdGss291 :string = 'Hata Mesajlarý:';   //152359
  msgDtMdGss292 :string = 'E-Nabýz iþlemlerini silinemedi iþleminiz iptal edildi.';
  msgDtMdGss293 :string = ' E-Nabýz Gss iþlemleri gönderim sorunu '#13'Ýcmal No : %s - Takip No : %s';
  msgDtMdGss294 :string = 'Hastanýn geliþine ait, provizyon mevcuttur.';
  msgDtMdGss295 :string = 'Ýþlem tanýmýnda e-Nabýz Mükerrerlik Kontrolü iþareti olan iþlemlerin, Medula Gönderme Ýþaretini kaldýramazsýnýz.';
  msgDtMdGss296 :string = 'Ölüm tarihi boþ olamaz !';
  msgDtMdGss297 :string = 'Medula Kullanýcý Adý Boþ Býrakýlamaz !';
  msgDtMdGss298 :string = 'Medula Þifresi Boþ Býrakýlamaz !';
  msgDtMdGss299 :string = 'Medula Saðlýk Tesis Kodu Boþ Býrakýlamaz !';
  msgDtMdGss300 :string = 'GSS Kiþi Vefat Kayýt Bildirimi Baþarýyla Yapýlmýþtýr !' + #13#10 + #13#10 + '%s';

  //DtMdMain
  msgDtMdMain001 :string = 'Veritabanýna baðlanýlamadý.';
  msgDtMdMain002 :string = 'Yeni bir icmal alýnarak iþleme devam edilecek. Devam etmek istiyormusunuz?!';
  msgDtMdMain003 :string = 'Ana makine ile baðlanýtýnýz kaybolmuþ. Tekrar baðlanýlsýn mý?';
  msgDtMdMain004 :string = #13+ 'Ýþleme devam etmek istiyormusunuz?!' + #13;
  msgDtMdMain005 :string = #13+ 'Ýþleminiz iptal edilecek!' + #13;
  msgDtMdMain006 :string = 'Parametre giriþ dosyasý (ini dosyasý) bulunamadý.';

//DtMdProcess
  msgDtMdProcess001 :string = 'Dosya "Kontrol" tipindedir. Muayene iþlemi hasta dosyasýna iþlensin mi?';
  msgDtMdProcess002 :string = '"%s" adlý stok için hareket kaydý oluþturulamadýðýndan '+
                      'iþleminiz gerçekleþtirilemedi.';
  msgDtMdProcess003 :string = 'Doktorun çalýþma zamaný aralýðýnda deðil veya izinlidir, baþka bir doktor seçmelisiniz.';
  msgDtMdProcess004 :string = ' adlý stok için, ';
  msgDtMdProcess005 :string = ' adlý stok için birim bulunamadý.';
  msgDtMdProcess006 :string = 'Herhangi bir istek formu yetkilendirilmemiþ.';
  msgDtMdProcess007 :string = 'Bu test daha önce iþlenmiþ ve henüz iþleme alýnmamýþ!';
  msgDtMdProcess008 :string = 'Hastayý, iþlemlerin ücretini ödemek için vezneye yönlendiriniz.';
  msgDtMdProcess009 :string = 'Hastayý, randevu iþlemleri için yönlendiriniz.';
  msgDtMdProcess010 :string = 'Faturasý kesilmiþ bir iþlemi silemezsiniz.';
  msgDtMdProcess011 :string = '(%s) iþlemine hakediþ verilmiþtir. Silmek yada deðiþtirmek istediðinize emin misiniz?';
  msgDtMdProcess012 :string = 'Hakediþ verilmiþ (%s) iþlemini silemez yada deðiþtiremezsiniz. Ýþleminiz iptal edildi. ';
  msgDtMdProcess013 :string = '"%s" adlý iþlemin "tahsilatý" yapýlmýþ. '+#13+ 'Önce tahsilatýn silinmesi gerekmektedir.';
  msgDtMdProcess014 :string = '"%s" adlý iþlemin "faturasý" kesildiðinden bu iþlem üzerinde deðiþiklik yapamazsýnýz.';
  msgDtMdProcess015 :string = '"%s" adlý iþlem için "indirim" yapýlmýþ. '+#13+ 'Önce indirimin iptal edilmesi gerekmektedir.';
  msgDtMdProcess016 :string = '"%s" adlý iþlem "onaylandýðý" için silemezsiniz.';
  msgDtMdProcess017 :string = '"%s" adlý iþlem Hastaya Özel olduðu için ve yetkiniz olmadýðýndan silemezsiniz..';
  msgDtMdProcess018 :string = 'Stok silme yetkiniz olmadýðý için iþleminiz iptal edildi.';
  msgDtMdProcess019 :string = 'Hizmet silme yetkiniz olmadýðý için iþleminiz iptal edildi.';
  msgDtMdProcess020 :string = 'Silme iþlemi için açýklama girmelisiniz!';
  msgDtMdProcess021 :string = '"%s" adlý "paket" içindeki iþlemler için, Lütfen yapmak istediðiniz iþlemi seçiniz...';
  msgDtMdProcess022 :string = 'Paketten ÇIKAR';
  msgDtMdProcess024 :string = 'Paketin içerisinde stok vardýr.Stok silme yetkiniz olmadýðý için iþleminiz iptal edildi.';
  msgDtMdProcess025 :string = 'Bu dosya için daha önce "%s"' + #13 +' kullanýcýsý indirim isteðinde bulunmuþ.'+#13+
                      'Ýsteði iptal ettirip iþleminize devam edebilirsiniz.';
  msgDtMdProcess026 :string = 'Bu dosya için indirim isteðinde bulunmuþsunuz. '+#13+'Fakat henüz onaylanmamýþ.'+#13+'Ýptal etmek istiyor musunuz?';
  msgDtMdProcess027 :string = 'Bu dosya için "%s"' + #13 + 'kullanýcýsý adýna onaylanmýþ indirim isteði var.'+#13+
                      'Ýndirim isteðini uyguladýktan sonra iþleminize devam edebilirsiniz.';
  msgDtMdProcess028 :string = 'Tahsilatý eksik yapýlan iþlemler olduðu için otomatik Fiþ/Fatura kesilmedi.';
  msgDtMdProcess029 :string = 'Dosyadaki diðer taþýnabilir iþlem(ler) paketin içine dahil edilsin mi?';
  msgDtMdProcess030 :string = 'Dosyanýn iþlem süresi "%s" gündür.'+ ' Bu süre dolduðundan iþleminiz iptal edilecektir.';
  msgDtMdProcess031 :string = 'Hasta Dosyasý bulunamadý.';
  msgDtMdProcess032 :string = 'Kullanýcýya baðlý doktorun, %s tipinde tanýmlý bölümü bulunamadý. '+ 'Lütfen Bölüm ve Doktor bilgisini seçiniz.';
  msgDtMdProcess033 :string = 'Sadece kendi adýnýza kayýtlý Bölüm ve Doktor Seçimi yapabilirsiniz. Ýþleminiz iptal edildi';
  msgDtMdProcess034 :string = ' kalem malzemede sorun oluþtu, bu malzemeler hastaya iþlenemeyecek. Lütfen inceleyiniz.';
  msgDtMdProcess035 :string = 'Dosya "Kontrol" tipindedir.' + '"%s" adlý MUAYENE iþlemi hasta dosyasýna iþlensin mi?';
  msgDtMdProcess036 :string = '"%s"  adlý iþlem kullanýmda olmadýðýndan hasta dosyasýna iþleyemezsiniz.';
  msgDtMdProcess037 :string = '"%s"  adlý iþlem hasta dosyasýna iþlensin mi?';
  msgDtMdProcess038 :string = 'Cep telefonu numaralarýný, "Cep Telefonu" alanýna yazýnýz.';
  msgDtMdProcess039 :string = 'Cep telefonu numaralarý 5 (beþ) rakamýyla baþlar. Örnek : 5XX XXX XX XX';
  msgDtMdProcess040 :string = ' serili stok deponuzda görünmüyor. Ýþleminiz iptal edildi.';
  msgDtMdProcess041 :string = ' adlý stok için girilen Son Kullanma Tarihli stok mevcut deðil.';
  msgDtMdProcess042 :string = ' adlý stok için elinizdeki miktar (%s) kadar giriþ yapýnýz.';
  msgDtMdProcess043 :string = ' adlý stok için, Son Kullanma Tarihi girilmesi zorunludur.';
  msgDtMdProcess044 :string = 'Ýsteklerinizle birlikte, Paket detay toplamý (%s), Paket fiyatýný (%s) geçecek.'+#13+'Devam etmek istiyor musunuz?';
  msgDtMdProcess045 :string = 'Sabit olarak tanýmlanmýþ paket içeriðinde deðiþiklik yapamazsýnýz';
  msgDtMdProcess046 :string = 'Farklý þube dosyasý için bu iþlemi gerçekleþtiremezsiniz.';
  msgDtMdProcess047 :string = 'Ayný dosya içinde bu iþlemi gerçekleþtiremezsiniz.';
  msgDtMdProcess048 :string = ' adlý iþlem %s dolayý taþýnamadý.';
  msgDtMdProcess050 :string = ' adlý iþlem için, ';
  msgDtMdProcess051 :string = '"%s" adlý iþlem kullaným dýþý olduðundan isteðinizden çýkartýlacak.';
  msgDtMdProcess052 :string = 'Katýlým payý tahsil edilecek iþlem bulunamadý!';
  msgDtMdProcess053 :string = 'Hastayý, iþlemlerin katýlým payýný ödemek için vezneye yönlendiriniz.';
  msgDtMdProcess054 :string = 'Seçilen iþlem tarihinde yukarýdaki doktor(lar) ÇALIÞMIYOR.' + #13 +'Ýþleminiz iptal edildi!';
  msgDtMdProcess055 :string = 'Paket içinde sizin tarafýnýzdan eklenilmeyen iþlem yada iþlemler var lütfen paket içerisinden çýkarttýktan sonra devam ediniz.';
  msgDtMdProcses056 :string = 'Dosya iþlem kontrollerinde bu Kod ile kayýt bulundu. Ancak çoðaltýlmýþ bir kaydý mevcut iþleme devam etmek istiyormusunuz?';
  msgDtMdProcess057 :string = 'Dosya iþlem kontrollerinde kaydý mevcut. Ýþleminiz iptal edildi.';
  msgDtMdProcess058 :string = 'Gönderme tipi fiyat yoksada gönder seçildiðinden Fatura kesilmiþ olan 0 fiyatlý kayýtlar için güncelleme yapýlacak onaylýyormusunuz?';
  msgDtMdProcess059 :string = '%s nolu bir istek formu yetkilendirilmemiþ.';
  msgDtMdProcess060 :string = 'Dikkat! iþlem zamaný deðiþtrilmeden taþýnabilir devam etmek istiyormusunuz';
  msgDtMdProcess061 :string = 'Üst stoða baðlanan alt stoklarda uygun kayýt bulunamadý';
  msgDtMdProcess062 :string = 'Kan ürünlerinin kan bankasý durumunu ''Çýkýlmýþ''olarak deðiþtirilecek devam etmek istiyormusunuz.';
  msgDtMdProcess063 :string = 'Kan ürünlerinin kan bankasý durumunu ''Mevcut'' olarak deðiþtirilecek devam etmek istiyormusunuz.';
  msgDtMdProcess064 :string = 'Dosya iþlem kontrollerinde bu Kod ile kayýt bulundu ancak çoðaltýlmýþ bir kayýt iþleme devam etmek istiyormusunuz';
  msgDtMdProcess065 :string = 'Dosya iþlem kontrollerinde kaydý mevcut iþleminiz iptal edildi.';
  msgDtMdProcess066 :string = 'Bu iþlem için ayný kurum ve ayný ek kurum olmalýdýr.';
  msgDtMdProcess067 :string = '"%s" kurumuna eklediðiniz hizmet "%s" kurumuna da iþlensin mi?';
  msgDtMdProcess068 :string = 'Paket tarihi ile paket içerisine taþýnacak iþlem(ler)in tarihleri farklý,';
  msgDtMdProcess069 :string = 'Taþýnan iþlemlerde Order miktarý eþit olmalýdýr. Taþýma iþlemi iptal edildi.';
  msgDtMdProcess070 :string = '"%s" adlý iþlem toplu iþlem paketi ile birlikte iþlenmiþtir.'+ #13 +
    'Silme iþlemine devam ederseniz birlikte iþlenen iþlemlerde paket baðlantýsý kaldýrýlýp fiyatlar yeniden uygulanacaktýr.';
  msgDtMdProcess071 :string = 'Ýsteklerinizle birlikte, Paket detay toplamý (%s), Paket fiyatýný (%s) geçecek.'+#13+'Ýþleme devam edemezsiniz!';
  msgDtMdProcess072 :string = 'Patoloji hizmetiyle iþlem yapýldýðýndan silinemez.';
  msgDtMdProcess073 :string = 'Ýþlem süresince ayný branþa Geliþ Dosyasý açamazsýnýz!';
  msgDtMdProcess074 :string = 'Cep telefonu numaralarý (%s) rakamýyla baþlar. Örnek : (%s)XX XXX XX XX';
  msgDtMdProcess075 :string = 'Dikkat! Ýþlem zamaný deðiþtirilecek devam etmek istiyormusunuz?';
  msgDtMdProcess076 :string = 'Konsültasyon Ýsteði';
  msgDtMdProcess077 :string = '%s Hasta için tarafýnýza istek yapýlmýþtýr Dosya no (%s)';
  msgDtMdProcess078 :string = '"%s" adlý iþlemin TELETIP HL7 gönderimi olduðu silemezsiniz..';
  msgDtMdProcess079 :string = '"%s" adlý stok için paket içerisinde birim bilgisi girilmediðinden stok ekleme iþlemi gerçekleþtirilemedi.';
  msgDtMdProcess080 :string = 'Hizmet isteðinde bulunduðunuz hasta hamile mi?';  //146999;KDUMAN;25.02.2019;
  msgDtMdProcess081 :string = 'Hastaya kontrast maddesi verilmemiþ olduðundan iþlem yapamazsýnýz.'; //148660;KDUMAN;27.03.2019;

  //DrugIntegration LFR_ID = 262
  msgDrugIntegration001 : string = 'Loglar panoya baþarýyla kopyalandý !';
  msgDrugIntegration002 : string = 'Medula''dan fiyat bilgileri çekilirken bir hatayla karþýlaþýldý !';
  msgDrugIntegration003 : string = 'Barkod ve ilaç bilgileri baþarýyla güncellendi !';
  msgDrugIntegration004 : string = 'Ýlaç bilgileri güncellenirken bir hatayla karþýlaþýldý!';
  msgDrugIntegration005 : string = 'Medula karekod zorunluluðu veya ITS Birim Sarf Bildirim zorunluluðu ' +
                                   ' olan barkodlar için yeni stok tanýmý yapmalýsýnýz!' + #13#10 + 'Stok Id :%s ';
  msgDrugIntegration006 : string = 'Veritabaný Hatasý : %s ';
  msgDrugIntegration007 : string = 'Hata : %s ';
  msgDrugIntegration008 : string = '%s güncel barkod bilgisi hatalý lütfen güncel barkod tanýmý yapýnýz !' + #13#10 +
                                   'Ýlaç bilgileri çekilemedi.';
  msgDrugIntegration009 : string = 'Tüm ilaçlar baþarýyla güncellendi, veriler listeleniyor...';
  msgDrugIntegration010 : string = 'Aradýðýnýz kayýt bulunamadý !';
	msgDrugIntegration011 : string = 'Aradýðýnýz barkod numaralý ilaca ait kayýt bulunamadý !';
  msgDrugIntegration012 : string = 'Entegrasyon sisteminde, aradýðýnýz ilaç adý ile ilgili kayýt bulunamadý !';
  msgDrugIntegration013 : string = 'Bulunan ilaçlar, listeye ekleniyor...' + #13 + 'Durum: %s / %s';
  msgDrugIntegration014 : string = 'Lütfen entegrasyon sisteminde aramak istediðiniz ilacýn barkod veya ilaç adý bilgisini giriniz !';
  msgDrugIntegration015 : string = 'Veriler Listeleniyor...';
  msgDrugIntegration016 : string = 'Eþleþmeyen kayýtlar listeleniyor...';
  msgDrugIntegration017 : string = 'Yetkisiz kullanýcý giriþi, iþleminiz iptal edildi !';
  msgDrugIntegration018 : string = 'Form oluþturulurken hata, iþleminiz iptal edildi!';
  msgDrugIntegration019 : string = 'Vademecum kayýtlarý arasýndan sorgulanan bu ilaç Bizmed kayýtlarýnda' + #13#10 +
                                   'mevcut baþka bir ilaçla zaten eþleþmiþ durumda!' + #13#10 +
             											 'Ýþleme bu stok kartý üzerinden, devam edilecektir. Onaylýyor musunuz?' + #13#10 +
            											 'Stok ID = %s' + #13#10 + 'Kullaným Durumu: %s';
  msgDrugIntegration020 : string = 'Eklemek istediðiniz kayýt zaten eklenmiþtir!';

//Emergency
  msgEmergency001 :string = 'Hata oluþtu. Gelen Hata : '+ #13;
  msgEmergency002 :string = 'Nöbet Zamaný bilgilerini kontrol edin.';
  msgEmergency003 :string = ' adet iþleminiz baþarýyla kaydedildi.';
  msgEmergency004 :string = 'Bilinmeyen hata kodu : ';
  msgEmergency005 :string = 'Nöbet Zamaný bilgilerini kontrol edin.';
  msgEmergency006 :string = 'Hastane Bilgileri "Entegrasyon" ekranýndaki "Acil 112 Bilgi Gönderimi" parametrelerinden "IP Adresi" alaný doldurulmalýdýr.! ';

//Entrance
  msgEntrance001 :string = 'Kurum kullanýcý bilgileri sisteme tanýmlanmamýþ. Giriþ yapamazsýnýz.';
  msgEntrance002 :string = 'Sistemde tanýmlanmýþ kullanýcý bilgisi geçersiz. Giriþ yapamazsýnýz.';
  msgEntrance003 :string = 'Sistemdeki lisanslý kullanýcý sayýsý aþýldýðýndan, sisteme giriþ yapamazsýnýz.';
  msgEntrance004 :string = 'Að ayarlarýnýzý kontrol ediniz.';
  msgEntrance005 :string = 'Ýlk baðlantý parametreleri belirtilmemiþ.';
  msgEntrance006 :string = 'Girdiðiniz %s'+#13+'kayýtlarda mevcut deðil.';
  msgEntrance007 :string = ' 3 karakterden az olamaz ';
  msgEntrance008 :string = ' Aktif edilmemiþ '+#13+ 'Lütfen, Bilgi iþlemden yardým alýnýz.';
  msgEntrance009 :string = 'nýn kullaným süresi dolduðundan sisteme giriþ yapamazsýnýz.';
  msgEntrance010 :string = 'Girdiðiniz þifre hatalýdýr. '+#13+'Lütfen tekrar giriniz.';
  msgEntrance011 :string = 'Güvenlik için þifrenizi deðiþtirmeniz gerekiyor.';
  msgEntrance012 :string = 'Bu þubeye giriþ yetkiniz yok.';
  msgEntrance013 :string = 'Adýna iþlem yapacaðýnýz kullanýcýyý seçmek zorundasýnýz.';
  msgEntrance014 :string = 'Ayný bilgisayarda açabileceðiniz %s sayýsý :%s'+#13#10+ ' adet ile sýnýrlandýrýlmýþtýr. Bizmed kapatýlacaktýr.';
  msgEntrance015 :string = 'Baðlantý verileri çözümlenemedi.';
  msgEntrance016 :string = 'Þifrenizde ''%s'' karakterini kullanamazsýnýz.';
  msgEntrance017 :string = 'Ýzinli olduðunuz için giriþ yapamazsýnýz!';
  msgEntrance018 :string = 'Devam etmek için diðer oturumlarý kapatmalýsýnýz!';
  msgEntrance019 :string = 'Kimlik Sorgulamasý yapýlabilmesi için %s adlý Kullanýcýnýn T.C Kimlik numarasý kayýt edilmelidir.';
  msgEntrance020 :string = 'Kimlik Sorgulamasý yapýlabilmesi için %s adlý kullanýcýnýn personel kaydý olmalýdýr.';
  msgEntrance021 :string = 'Beþ (5) kere hatalý þifre ile giriþ yapmaya çalýþtýðýnýzdan dolayý þifreniz bloke olmuþtur. Þifrenizi sýfýrlamak istiyormusunuz?';
  msgEntrance022 :string = 'Sistemdeki lisanslý kullanýcý sayýsý aþýldýðýndan ve BYZ kullanýcýsýyla sadece tek kullanýcý sisteme giriþ yapabilir. Sisteme giriþ yapamazsýnýz.';
  msgEntrance023 :string = 'Þifreniz kurumun belirlediði standartlara uygun olmadýðýndan þifrenizi deðiþtirmeniz gerekmektedir.';

//Enumeration4Serial
  msgEnumeration4Serial001 :string = 'Ýlk önce Giriþ fiþini seçiniz.';
  msgEnumeration4Serial002 :string = 'Giriþ ve Çýkýþ fiþi ayný depo için olmalýdýr.';
  msgEnumeration4Serial003 :string = 'Depo ve Belge tarihini giriniz.';
  msgEnumeration4Serial004 :string = 'Mevcut miktarý sýfýrýn altýnda olanlar içinde Sayým Giriþ Fiþi oluþturulsun mu?';
  msgEnumeration4Serial005 :string = 'Giriþ fiþini belirtmeniz gerekir.';
  msgEnumeration4Serial006 :string = 'Son kullanma tarihi alanýný boþ býraktýnýz. Devam etmek istiyor musunuz?';
  msgEnumeration4Serial007 :string = 'Seri Barkod Kullan alanýný iþaretlemediniz. Seri barkod basýlmayacak. Devam etmek istiyor musunuz?';
  msgEnumeration4Serial008 :string = 'Çýkýþ fiþini belirtmeniz gerekir.';
  msgEnumeration4Serial009 :string = 'Ana depoyu seçiniz.';
  msgEnumeration4Serial010 :string = 'Elinizde serisiz stok yok.';
  msgEnumeration4Serial011 :string = 'Sayým Giriþ Fiþini seçiniz.';
  msgEnumeration4Serial012 :string = 'Seri barkodlu stok bulunamadý.';
  msgEnumeration4Serial013 :string = '%s adlý ve %s seri numaralý stok bulunamadý.';
  msgEnumeration4Serial014 :string = '%s adlý ve %s seri numaralý stok herhangi bir depoda gözükmüyor. Çýkýþý yapýlmýþ.';
  msgEnumeration4Serial015 :string = '%s adlý ve %s seri numaralý stok "%s" adlý depoda gözükmekte.';
  msgEnumeration4Serial016 :string = 'Seçili stoðun depodan serbest çýkýþý yapýlacak, devam etmek istiyor musunuz?';
  msgEnumeration4Serial017 :string = 'Seçili stok depoda var olarak iþaretli, yinede çýkarmak istiyor musunuz?';
  msgEnumeration4Serial018 :string = 'Seçili stoklarýn depodan serbest çýkýþý yapýlacak, devam etmek istiyor musunuz?';
  msgEnumeration4Serial019 :string = 'Mevcut olmayan serili stoklar listelenecektir';
  msgEnumeration4Serial020 :string = 'Giriþ iþlemlerini yapabilmeniz için sayýmý sonlandýrmanýz gerekmektedir.';
  msgEnumeration4Serial021 :string = 'Hedef depo hatalý seçilmiþ!';
  
//EnumerationResults LRF_ID = 89
  msgEnumerationResults001 :string = 'Sayým fiþleri oluþturmak için kayýt bulunamadý!';
  msgEnumerationResults002 :string = 'Sayým ekranýnýndaki kayýtlara filtre uygulanmýþ. Yinede devam etmek istiyor musunuz?';
  msgEnumerationResults003 :string = 'Son Kullanma Kontrolü aktif olan stoklar için Sok Kullanma Tarihi girilmelidir.';
  msgEnumerationResults004 :string = 'Sayým fiþi ekraný kapatýlsýn mý?';
  msgEnumerationResults005 :string = 'Sayým sonucu alanýnýn tümü sýfýrlanacak. Devam etmek istiyor musunuz?';
  msgEnumerationResults006 :string = 'Sayýmý sonlandýrmadýðýnýz için seçili depo üzerinde iþlem yapýlamýyacaktýr.'+#13+
                             'Sayým sonlandýrýlsýn mý?';
  msgEnumerationResults007 :string = 'Seçili depoya ait seçili stoklarýn son kullanma tarihleri sistemden silinsin mi?';
  msgEnumerationResults008 :string = 'Sayým sonuç deðerleri, var olan stok miktarlarýna eþitlensin mi?';
  msgEnumerationResults009 :string = ' adlý depo için yeni sayým fiþi oluþturulacak.'+#13+
      'DÝKKAT : Bu depo tüm giriþ, çýkýþ, transfer ve düzeltme iþlemlerine kapatýlacak. Ýþleme devam etmek istiyor musunuz?';
  msgEnumerationResults010 :string = 'Son kullanma tarihi geçenleri sýfýrlayabilmeniz için sayým fiþi tipini "Son.Kul.Tarihine Göre" oluþturmanýz gerekmektedir.' +#13#13 +
                             'Sayým sonucu alanýnýn son kullanma tarihi geçenler sýfýrlanacak.' +#13 +
                             'Devam etmek istiyor musunuz?';
  msgEnumerationResults011 :string = ' adlý stok için ayný Son Kullanma Tarihi zaten tanýmlanmýþ. Lütfen düzeltin.';
  msgEnumerationResults012 :string = ' adlý depo için daha önceden bir sayým fiþi açýldýðýndan iþleminiz iptal edilecek. Açýk fiþi kapatýp yeniden deneyebilirsiniz.';
  msgEnumerationResults013 :string = 'Depoya ait olmayan stoklarý da sayým listesine eklemek için "Tüm Stoklar"ý seçiniz...';
  msgEnumerationResults014 :string = 'Son Kullanma Tarihi Seçiniz!';
  msgEnumerationResults015 :string = 'Miktarlar doðru. Ýþleminiz iptal edildi.';
  msgEnumerationResults016 :string = 'Düzeltebilmeniz için seri veya lot takipli stok olmasý gerekir!';
  msgEnumerationResults017 :string = 'SKT Kontrolü veya LOT Takibi yok iþleminiz iptal edildi.';
  msgEnumerationResults018 :string = 'Doktor isteði ile depoya transfer edilmiþ ve uygulanmamýþ %s adet ilaç bulunduðundan sayým sonucu bu miktarýn altýna düþemez.';
  msgEnumerationResults019 :string = 'Son Kullanma Kontrolü aktif olan listedeki %s adet stok için Son Kullanma Tarihi girilmelidir.'; // 229400;BAKKAYA;11.11.2020
  msgEnumerationResults020 :string = 'LOT takibi yapýlan listedeki %s adet stok için LOT numarasý girilmelidir.'; // 229400;BAKKAYA;11.11.2020

  msgEnumerationResAllStock :string = 'Tüm Stoklar';
  msgEnumerationResWarehouseStock :string = 'Deponun Stoklarý';


//Epikriz
  msgEpikriz001 :string = 'Kayýt oluþturulamadý. Takip aldýktan sonra tekrar deneyin.';
  msgEpikriz002 :string = 'Hastaya ameliyat planlamasý yapýlacak!' + #13#13 +
     'Devam etmek istiyor musunuz?';
  msgEpikriz003 :string = 'Planlama için uygun deðil!';

//FindAvailableAppPeriod
  msgFindAvailableAppPeriod001 :string = 'Sadece %s tarihine randevu verebilirsiniz.';
  msgFindAvailableAppPeriod002 :string = 'Bu saat aralýðýna randevu verilmiþ.';
  msgFindAvailableAppPeriod003 :string = 'Bölüme tanýmlý Branþ bulunamadý.';
  msgFindAvailableAppPeriod004 :string = '%s-%s tarihleri arasýnda "%s" adlý personel için uygun randevu bulunamadý.'+#13+
                                 'Personele göre rendevu zamaný tekrar ayarlansýn mý?';
  msgFindAvailableAppPeriod005 :string = 'Randevu kaydý oluþturulduðu için bu kaydý silemezsiniz.';

  //GSSDOCUMENTSEND   LGH=261
  msgGSSDocument001 :string = 'Ayný Hasta Deðil. Kopyalanamaz!';
  msgGSSDocument002 :string = 'Ýmzalamak için Evraðýnýzýn Uzantýsý .pdf Olmalýdýr.';
  msgGSSDocument003 :string = 'Evraðý Silmek istediðinizden Emin misiniz?';
  msgGSSDocument004 :string = 'GSS Evrak Silindi!';
  msgGSSDocument005 :string = 'Evrak Bulunamadý.' + #13#10 +  'Evrak Kaydý Silinsin mi?';
  msgGSSDocument006 :string = 'GSS Evrak için Fiziksel Dosya Yolu Tanýmý Bulunamadý.';
  msgGSSDocument007 :string = 'GSS Evrak Gönderimi Yapýlmýþ Evrak Üzerinde Deðiþiklik Yapamazsýnýz!';
  msgGSSDocument008 :string = 'Evrak için Yeni Ýsim Giriniz (*Dosya Uzantýsý ile): ';
  msgGSSDocument009 :string = '%s GSS Ýþlem Numarasýný Baðlamaya Emin Misiniz?';
  msgGSSDocument010 :string = 'GSS Ýþlem Numarasýný Silmek Ýstediðinizden Emin Misiniz?';
  msgGSSDocument011 :string = 'Gönderilmiþ Evrak Üzerinde Deðiþiklik Yapamazsýnýz! Ýþleminiz Ýptal Edildi.';
  msgGSSDocument012 :string = 'Hasta Listesinden Seçim Yapýnýz! Ýþleminiz Ýptal Edildi.';
  msgGSSDocument013 :string = 'GSS Evrak Referans Numarasý, Ana Ýcmaline kaydedilmemiþtir. ';
  msgGSSDocument014 :string = 'GSS Evrak Toplam Gönderim adeti: %d';
  msgGSSDocument015 :string = 'E-Ýmzaya Gönderilen Evrak Durumu Ýptal Edilsin mi?';
  msgGSSDocument016 :string = 'Gss Evrak Gönderimini Ýptal Etmek ister misiniz?';

  //GssErrorMessage  LGH= 359
  msgGSSErrorMessage001 :string = 'Medula Hatalý Özet Kayýtlar Getiriliyor. ';
  msgGSSErrorMessage002 :string = 'Medula Hatalý Detay Kayýtlar Getiriliyor. ';
  msgGSSErrorMessage003 :string = ' Medula Hatasý Ýle Ýlgili Hastalar Listelenmiþtir.';

//GenOutOfWork
  msgGenOutOfWork001 :string = 'Baþka kurumdan rapor bilgisini getirebilmek için kurum bilgisini seçmelisiniz veya "Açýk Rapor" u iþaretlemelisiniz.';
  msgGenOutOfWork003 :string = 'Taný Bilgisi dolu olmalýdýr!';
  msgGenOutOfWork004 :string = 'Yatýþ Durumu seçilmelidir!';
  msgGenOutOfWork005 :string = 'Yatýþ/Taburcu tarihi dolu olmalýdýr!';
  msgGenOutOfWork006 :string = 'Taburcu kodu dolu olmalýdýr!';
  msgGenOutOfWork007 :string = 'Bitiþ Durumu seçilmemiþ!';
  msgGenOutOfWork008 :string = 'Heyet rapor tipinde en az 3 (üç) doktor seçmelisiniz';
  msgGenOutOfWork009 :string = 'Tek hekim raporunda 1 (bir) doktor seçmelisiniz';
  msgGenOutOfWork010 :string = 'Rapor Kayýtlý';
  msgGenOutOfWork011 :string = 'Rapor Bulunamadý!';
  msgGenOutOfWork012 :string = 'Rapor Meduladan Gelen Bilgilere Göre Güncellenecek!'+ #13+ 'Devam etmek istiyor musunuz?';
  msgGenOutOfWork013 :string = 'Ýþbaþý/Kontrol tarihi rapor bitiþ tarihinden önce olamaz!';
  msgGenOutOfWork014 :string = 'Ýþ Kazasý tarihi rapor baþlangýç tarihinden büyük olamaz!';
  msgGenOutOfWork015 :string = 'Deðiþiklikleri yapýp "Güncelle" butonu ile güncelleme yapýnýz.';
  msgGenOutOfWork016 :string = 'Analýk raporlarýnda 2.Rapor verilmemesi gerekir.'+ #13 +'Devam etmek istiyor musunuz?';
  msgGenOutOfWork017 :string = '2. Rapor medulada baþarýyla oluþturuldu. Yeni týbbi kartý açmak ister misiniz?';
  msgGenOutOfWork018 :string = 'Rapor Kayýtlý Deðil';
  msgGenOutOfWork019 :string = 'Saðlýk Kuruluna sevki yapýldý. Yeni týbbi kartý açmak ister misiniz?';
  msgGenOutOfWork020 :string = 'Rapor Medula sisteminde kayýtlý deðil!'+ #13+ 'Rapor Takip No Bizmed"den silinsin mi?';

//GenReport
  msgGenReport001 :string = 'Ekleyeceðiniz yeni tanýlarý Medulaya güncelleme yaparak gönderebilirsiniz. Devam etmek istiyor musunuz?';
  msgGenReport002 :string = ' günde uygulanacak diyaliz iþlemi sayýsý en az 1 en fazla 6 olmalýdýr.';
  msgGenReport003 :string = ' günde uygulanacak diyaliz iþlemi sayýsý en az 10 en fazla 15 olmalýdýr.';
  msgGenReport005 :string = 'Rapor Türünü seçmelisiniz.';
  msgGenReport007 :string = 'Rapor detay bilgileride okunsun mu?';
  msgGenReport008 :string = 'FTR A Grubu hastasý olduðu için daha önceki tedavilerin kontrol edilmesi gerekmektedir.'+
                    #13 + 'Daha önce tedavisi var ise hastanýn üniversite yada devlet hastanesi onaylý saðlýk kurulu raporu getirmesi gerekmektedir'+
                    #13 + #13 +'Geçmiþ FTR tedavilerini sorgulayýnýz.';
  msgGenReport009 :string = 'Medula Sorgula';
  msgGenReport010 :string = 'Kontrol Edildi';
  msgGenReport011 :string = 'Rapor Doktoru birden fazla olamaz!';
  msgGenReport012 :string = 'Rapor Onayla';
  msgGenReport013 :string = 'Hastanýn "%s" etken maddesine ALERJÝSÝ var!';
  msgGenReport014 :string = 'Rapor takip numarasý dosyada bulunan iþlemler için güncellendi.';
  msgGenReport015 :string = 'Ýþlemler için takip numarasý güncellenecek devam etmek istiyormusunuz?';
  msgGenReport016 :string = 'Rapor baþlangýç/Bitiþ tarihleri boþ!';
  msgGenReport017 :string = '%s adlý hastanýn onay bekleyen raporu vardýr.';
  msgGenReport018 :string = '%s adlý hastanýn doktor onayý bekleyen heyet raporu vardýr.';
  msgGenReport019 :string = 'Uygun deðer giriniz!';

//GSSInfos
  msgGSSInfos001 :string = 'Seçili Takip sistemimizde bulunamadý. Ýþleme devam etmek istiyor musunuz?';
  msgGSSInfos002 :string = 'Seçili takip ile baðlý takibin kurumlarý farklý iþleminiz iptal edilecek.';
  msgGSSInfos003 :string = 'Baðlý takibin dosya tarihi, Seçili takibin dosya tarihinden küçük olamaz';
  msgGSSInfos004 :string = 'Polikliniðe baðlanacak Yatýþ dosyasý 10 gün ile sýnýrlýdýr.';
  msgGSSInfos005 :string = 'Baðlanacak takibin provizyon tipi "%s" olduðundan dolayý alýnacak ' +
                   'takibin provizyon tipi "%s" olarak deðiþtirildi.';
  msgGSSInfos006 :string = 'Kayýtlar arasýndaki iliþkiyi iptal etmek istediðinizden emin misiniz?';
  msgGSSInfos007 :string = 'Takip Giriþi';
  msgGSSInfos008 :string = 'Takip Numarasýný Giriniz.';
  msgGSSInfos009 :string = 'YUPASS Numarasýný Giriniz.';
  msgGSSInfos0010 :string = 'Dosya içinde hizmet olmadýðýndan bu dosya ile baðlayamazsýnýz';
  msgGSSInfos0011 :string = '''BKK na göre Borçlular'' dýþýndaki seçenekler için Provizyon Tipinin ''Ýstisnai Hal'' olmasý gerekir.';

//GSSPatInfos
  msgGSSPatInfos001 :string = 'Ýþlem kaydý yapýldýðý için deðiþiklik yapamazsýnýz.';
  msgGSSPatInfos002 :string = 'Takip numarasý seçiniz.';
  msgGSSPatInfos003 :string = 'Takip alýnmamýþ hastalarda bu iþlemi gerçekleþtiremezsiniz.';
  msgGSSPatInfos004 :string = 'Farklý branþlar arasýnda "Tedavi Türü" deðiþtirilemezsiniz.';
  msgGSSPatInfos005 :string = 'Bu iþlem için, "Tedavi Türü" önceki deðer ile ayný olmaz ve/veya boþ olamaz';
  msgGSSPatInfos006 :string = 'Deðiþiklik yapabilmek için yetkniz bulunmamaktadýr!';

//GSSProcess

//GSSQuery
  msgGSSQuery001 :string = 'Kayýt Bulunamadý'+#10+'Girilen bilgilerin doðruluðundan emin olunuz.';
  msgGSSQuery002 :string = 'Seçili kayýt bulunamadý.';
  msgGSSQuery003 :string = 'Ýleri tarihli sorgulama yapýlamaz!';
  msgGSSQuery004 :string = '%s - %s tarihlerinde kayýt mevcut!';
  msgGSSQuery005 :string = 'Bu iþlemi yapmanýz için yetkiniz bulunmamaktadýr.';
  msgGSSQuery006 :string = 'Seçilen kayýtlar için iþlem yapýlacak';
  msgGSSQuery007 :string = 'Medulada Kaydý var. Bizmed üzerinde kayýt bulunamadý!!!';
  msgGSSQuery008 :string = 'Listedeki tek olan farklý kayýtlar için Bizmed kayýtlarý güncellenecektir. Ýþleme devam etmek istiyor musunuz ?';
  msgGSSQuery009 :string = 'Seçili kayýtlar için Bizmed kayýtlarý güncellenecektir. Ýþleme devam etmek istiyor musunuz ?';
  msgGSSQuery010 :string = 'Bizmed ile eþleþtirmiþ kayýtlar seçiniz.';
  msgGSSQuery011 :string = '%s kaydý bulunamadý iþleminiz iptal edildi!';

//GSSShipping
  msgGSSShipping001 :string = 'Sevk iþlemlerinde Muatat dýþý araç rapor numarasý mevcut. Ýþleminiz iptal edildi.';
  msgGSSShipping002 :string = 'Sevk Bildirimi/Kaydetme Medulaya gönderimi yapýlmýþ. ' +
                      'Mutat dýþý araç raporu medulaya sevk bildirimi/gönderme iþleminden önce yapýlmalýdýr.';
  msgGSSShipping003 :string = 'Deðiþiklikleri kaydetmeden çýkmak istiyor musunuz?';
  msgGSSShipping004 :string = 'Sevk iþlemleri kaydedilmiþtir.';
  msgGSSShipping005 :string = 'Sevk Ýþlemelerinde deðiþiklik yapamazsýnýz.';
  msgGSSShipping006 :string = ' iþlemini yapabilmeniz için hasta takip numarasý olmasý gerekir! '+'Ýþleminiz Ýptal Edildi';
  msgGSSShipping007 :string = 'Muatat dýþý araç raporu medulaya kayýtlý deðil. Ýþleminiz iptal edildi.';
  msgGSSShipping008 :string = 'Sevk Bildirimi/Kaydetme Medulaya gönderimi yapýlmýþ. ' +
                      'Sevk iptal yaptýktan sonra Mutat dýþý araç raporunu iptal ediniz!';
  msgGSSShipping009 :string = 'Sevk Bildirimi yapýlmýþ sevk kaydýný silemezsiniz!';
  msgGSSShipping010 :string = 'e-Nabýz Sevk Nedeni bilgisi girilmelidir. ';

//HosBed
  msgHosBed001 :string = 'Yatak adýný girmek zorundasýnýz.';
  msgHosBed002 :string = 'Yataðýn hangi odada olduðunu belirtmek zorundasýnýz.';
  msgHosBed003 :string = 'Pasife alýnan yataðý tekrar aktif edemessiniz, devam etmek istiyor musunuz?';
  msgHosbed004 :string = 'Çýkýþý yapýlmamýþ hastanýn yataðýný boþaltacaksýnýz. Ýþleme devam etmek istiyor musunuz?';
  msgHosbed005 :string = 'Medula yatak kodu daha önce girilmiþ.Daha önce kaydedilen bir medula yatak kodu deðiþtirilemez.';

//HosInfoForm
  msgHosInfoForm001 :string = 'Hastane Bilgi Formu þifreniz tanýmlý deðil.';
  msgHosInfoForm002 :string = 'Belirtilen %s yýlý %s ayýna ait kayýt bulunamadý';
  msgHosInfoForm003 :string = '%s yýlý %s ayýna ait bilgiler daha önceden gönderildiði için,'+#13+
                      'güncelleme sonrasý, verileri tekrardan Saðlýk Bakanlýðý'' na aþaðýdaki %s butonunu kullanarak göndermeniz gerekecektir. '+#13+#13;
  msgHosInfoForm004 :string = 'Güncellemek istediðinizden emin misiniz?';

//IdentState
  msgIdentState001 :string = '"%s" alanýný boþ geçemezsiniz.';

//InPatRequest
  msgInPatRequest001 :string = 'Kabül tipi seçmelisiniz.';
  msgInPatRequest002 :string = 'Yatýþ Ýsteðini iptal etmek istediðinizden emin misiniz?';
  msgInPatRequest003 :string = 'Ameliyat öncesi kontrol dosyasý açýlmamýþ!' + #13+ 'Ýþleme devam etmek istiyor musunuz?';
  msgInPatRequest004 :string = 'Ameliyat Deðiþikliði';
  msgInPatRequest005 :string = ' adlý hastanýn yatýþ isteðinde deðiþiklik yapýldý.';
  msgInPatRequest006 :string = '"Referans Doktor / Ýþlemi Ýsteyen" seçemezsiniz!';
  msgInPatRequest007 :string = '"Ýþlemi Yapan" tek seçilmelidir!';
  msgInPatRequest008 :string = '"Hasta Görüþmesi" kaydý oluþturulmuþ.' + #13 +' Deðiþiklik yapmak istiyor musunuz?';
  msgInPatRequest009 :string = '"Hasta Görüþmesi" kaydý oluþturulmuþ.' + #13 +'Kaydý silemezsiniz!';
  msgInPatRequest010 :string = 'Anestezi Onayý Verildi.';
  msgInPatRequest011 :string = 'Anestezi Onayý Verilmedi. Yatýþ istemi Ýptal edilecek!';
  msgInPatRequest012 :string = '"Risk Derecesi" seçilmemiþ!'+ #13 + 'Ýþleme Devam Edemezsiniz.';
  msgInPatRequest013 :string = 'Konsey tarihi seçilmemiþ!';
  msgInPatRequest014 :string = 'Planlanan yatýþ tarihi seçilmemiþ!';
  msgInPatRequest015 :string = 'Planlanan operasyon tarihi seçilmemiþ!';
  msgInPatRequest016 :string = 'Planlanan operasyon tarihi, planlanan yatýþ tarihinden küçük olamaz!';
  msgInPatRequest017 :string = 'Bölüm bilgisi seçilmemiþ!';
  msgInPatRequest018 :string = 'Doktor adýna tanýmlý bölüm bulunamadý.';
  msgInPatRequest019 :string = '"%s" tarihinde yapýlmýþ durumu "%s" olan yatýþ isteði mevcut.' +  #13#13 +
              'Yatýþ Ýstek Bilgileri : ' + #13 + '%s Yatýþ isteði üzerinden devam edilsin mi?';
  msgInPatRequest020 :String = 'Yatýþ dosyasý üzerinden yeni yatýþ istemi yapýlamaz!';
  msgInPatRequest021 :String = 'Hastanýn farklý branþta yatýþ istemi var.' + #13 +
           'Yeni Yatýþ Ýstemi Yapýlsýn mý?';
  msgInPatRequest022 :String = 'Yeni Yatýþ Ýstemi yapýlacak!';
  msgInPatRequest023 :String = 'Hasta "%s" servisinde yatýyor.' + #13 +
           'Planlanan tedavi mevcut yatýþa baðlantýsý yapýlsýn mý?';
  msgInPatRequest024 :String = 'Anestezi Hizmeti eklenemedi' + #13 + 'Anestezi hizmetini manuel ekleyiniz!';
  msgInPatRequest025 :String = 'Branþ Seçimi yapýlmalýdýr!';
  msgInPatRequest026 :String = 'Doktor Seçimi yapýlmalýdýr!';
  msgInPatRequest027 :String = 'Seans Seçilmelidir!';
  msgInPatRequest028 :String = 'Tedavi türü "Doðum" seçilemez. Hastanýn cinsiyeti uygun deðil!';
  msgInPatRequest029 :String = '"%s" geliþ tipinde yatýþ iþlemi yapýlamaz! Yatýþ iþleminde bölüm bilgisini düzenleyip tekrar iþlem yapýnýz.';
  msgInPatRequest030 :String = 'Geliþ tipi Acil, Klinik veya Öncelik tipi acil ise Planlanan yatýþ tarihi ve Planlanan operasyon tarihi seçilmelidir.';
  msgInPatRequest031 :String = 'Yeni bir operasyon istemi yapýlacak!';
  msgInPatRequest032 :String = '%s hizmetinin %s kodlu paket hizmeti mevcuttur. Yine de eklemek istiyor musunuz ?';
  msgInPatRequest033 :String = 'Doktor adýna kayýtlý rol bulunamadý!';
  msgInPatRequest034 :string = 'Operasyon tarihi bugün olan yatýþ istemi var! Listelemek için týklayýnýz';
  msgInPatRequest035 :string = 'Yatýþ Ýstemi';
  msgInPatRequest036 :string = 'Bölümler listesinde, tüm servisleri de görmek istiyor musunuz?';
  msgInPatRequest037 :string = 'Seçilen bölüme ait bir doktor seçmelisiniz! ';
  msgInPatRequest038 :string = 'Sonlandýrýlmamýþ Yatýþ Ýstemleriniz Bulundu! Açmak ister misiniz ?' + #13#13;  //224077;BAKKAYA;28.09.2020
  msgInPatRequest039 :string = '"%s" tarihinde yapýlmýþ durumu "%s" olan yatýþ isteði mevcut.' +  #13 +
              'Yatýþ Ýstek Bilgileri : ' + #13 + '%s '; //224077;BAKKAYA;28.09.2020
  msgInPatRequest040 :string = 'Hastanýn "Beklemede" statüsünde yatýþ planý yoktur.';  //224077;BAKKAYA;30.09.2020
  msgInPatRequest041 :string = 'Yatýþ Planý sadece Doktor kullanýcýsý tarafýndan iptal edilebilir.';  //224077;BAKKAYA;30.09.2020
//InPatRequestList
  msgInPatRequestList001 :string = 'Hastaya randevu verildiðinden / yatýþ dosyasý açýldýðýndan bu durumu seçemezsiniz.';
  msgInPatRequestList002 :string = 'Hastaya randevu verilmediði için bu durumu seçemezsiniz.';
  msgInPatRequestList003 :string = 'Hastaya yatýþ dosyasý açýlmadýðýndan bu durumu seçemezsiniz.';
  msgInPatRequestList004 :string = 'adlý iþlem(ler) kayýt edildiðinden iþlem yapýlmadý.';
  msgInPatRequestList005 :string = 'adlý iþlem(ler) dosyaya eklenenmedi.';
  msgInPatRequestList006 :string = 'Ameliyat(lar) Dosyaya Eklensin Mi?.';
  msgInPatRequestList007 :string = '%s tarihinde %s nolu hasta "Ameliyat Olacak Hasta Listesi" nde bulunamadý!';
  msgInPatRequestList008 :string = 'Yatýþ Ýstemi Onaylanacak!';
  msgInPatRequestList009 :string = 'Yatýþ Ýstemi Ýptal Edilecek!';
  msgInPatRequestList010 :string = 'Yaptýðýnýz deðiþiklikler iptal edilecek!';
  msgInPatRequestList011 :string = 'Yatýþ istemi Konsey tarafýndan "Ýptal" edildiðinden iþlem yapamazsýnýz!';
  msgInPatRequestList012 :string = 'Konsey yatýþ istemini onaylamamýþ! Yatýþ iþlemi yapamazsýnýz.';
  msgInPatRequestList013 :string = 'Konsey yatýþ istemini onaylamýþ. Yatýþ istemini iptal etmek istediðinize emin misiniz?';
  msgInPatRequestList014 :string = 'Ýþlemler Hasta Dosyasýna iþlenmemiþ, yinede devam etmek istiyor musunuz?';
  msgInPatRequestList015 :string = 'Konsey kullanýmý aktif deðil!';
  msgInPatRequestList016 :string = 'Hastanýn durumu güncel deðil, Ýþleminiz iptal edildi.';
  msgInPatRequestList017 :string = 'Takip alýnýrken hata!';
  msgInPatRequestList018 :string = 'Geliþ dosyasý açýlýrken hata alýndý!';
  msgInPatRequestList019 :string = 'Hasta Ameliyathaneye Çaðrýlacak!';
  msgInPatRequestList020 :string = 'Hasta Ameliyathaneye Kabul Edilecek!';
  msgInPatRequestList021 :string = 'Hastanýn Kimlik Doðrulamasý Yapýlacak!';
  msgInPatRequestList022 :string = 'Hasta Ameliyat Masasýna Alýnacak!';
  msgInPatRequestList023 :string = 'Hastanýn Ameliyatý Baþlatýlacak!';
  msgInPatRequestList024 :string = 'Hastanýn Ameliyatý Bitirilecek!';
  msgInPatRequestList025 :string = 'Hasta Uyandýrma Odasýna Alýanacak!';
  msgInPatRequestList026 :string = 'Hasta Servise Gönderilecek!';
  msgInPatRequestList027 :string = 'Yapýlacak Süreç Bulunamadý!';
  msgInPatRequestList028 :string = 'Barkod okutunuz iþlem gerçekleþtirilecektir.';
  msgInPatRequestList029 :string = 'Ameliyat iptal edilecek ';
  msgInpatRequestList030 :string = 'Ameliyatýn Ertelenme iþlemini gerçekten onaylýyor musunuz?';
  msgInpatRequestList031 :string = 'Anestezi zamanlarýný belirleminiz için hastanýn iþlemleri; Kimlik doðrulama ile Ameliyat bitiþ arasýnda olmalýdýr.';
  msgInpatRequestList032 :string = 'Hastanýn poliklinik dosyasýnýn oluþturulmasý üzerinden %s gün geçmiþtir. Yine de iþleme devam etmek istiyor musunuz?';


//InPatReqOpTeams
  msgInPatReqOpTeams001 :string = 'Seçili dosyada "Ameliyat Ekibi" bulunamadý.';
  msgInPatReqOpTeams002 :string = 'Seçili dosyada "Ameliyat Ekibi" mevcut.';
  msgInPatReqOpTeams003 :string = 'Anestezi Doktoru Seçiniz';
  msgInPatReqOpTeams004 :string = 'Listelenen ameliyatlarýn tamamýndan "%s" personelin kaydý silinsin mi?';
  msgInPatReqOpTeams005 :string = 'Durumu "Planlandý" ameliyatlarda deðiþiklik yapabilirsiniz!';
  msgInPatReqOpTeams006 :string = '"%s" personeline ait tüm kayýtlar deðiþtirilsin mi?';
  msgInPatReqOpTeams007 :string = 'Anestezi doktoru seçmediðinizden iþleminiz iptal edildi!';

//InventoryQuery
  msgInventoryQuery001 :string = 'Zimmet Yazýcý Formu Bulunamadý(5301).';
  msgInventoryQuery002 :string = 'Seçili demirbaþlar için %s yapýlacak devam edilsin mi?';
  msgInventoryQuery003 :string = '%s seri numaralý demirbaþ depoda mevcut deðil!';

//InventoryStock
  msgInventoryStock001 :string = 'Seri Numarasý Girmeden Ýþlem Gerçekleþtiriyorsunuz.Devam Etmek Ýstermisiniz ?';
  msgInventoryStock002 :string = 'Demirbaþýn Ömür Süresini Girmelisiniz';
  msgInventoryStock003 :string = 'Ekli Dosya Mevcut Deðildir';
  msgInventoryStock004 :string = ' Kiþi Seçiniz ';
  msgInventoryStock005 :string = 'Departman Seçiniz';
  msgInventoryStock006 :string = 'Zimmeti Silemezsiniz ' + #13 + 'Ýþlemi Yapan Kiþi Silebilir';
  msgInventoryStock007 :string = 'Girdiðiniz Oran 50 den Büyük Olamaz';
  msgInventoryStock009 :string = 'Seri Numarasý Giriniz ';
  msgInventoryStock010 :string = 'Girdiðiniz Id Bulunamadý.'  + #13 + 'ID = ';
  msgInventoryStock011 :string = 'Girdiðiniz Gün Miktarý Amortisman Ayýrmaya Uygun Deðildir. Demirbaþýn Ömür Süresini Deðiþtiriniz';
  msgInventoryStock012 :string = 'Girdiðiniz Ay Miktarý Amortisman Ayýrmaya Uygun Deðildir. Demirbaþýn Ömür Süresini Deðiþtiriniz';
  msgInventoryStock013 :string = 'Kalan Tutar 0 Olduðu için Amortisman Ayýramazsýnýz';
  msgInventoryStock014 :string = 'En Son Amortisman Tarihinden Daha Büyük Bir Tarih Giriniz';
  msgInventoryStock015 :string = 'En Son Ayrýlmýþ Amortisman Tarihinden Bir Sonraki Yýl Ýçin Amortisman Ayýrabilirsiniz';
  msgInventoryStock016 :string = 'Kalan Miktar Negatife Düþmüþtür.El ile Girdiðiniz Oraný Ýlk Ayýrdýðýnýz Amortisman Ýþleminden Deðiþtiriniz';
  msgInventoryStock017 :string = 'Bu Seri Ýle Birlikte Üretilen Seriler Ýçin Kopyalama Ýþlemi Yapýlacaktýr.Yaptýðýnýz Ýþlemin Geri Dönüþü Olmayacaktýr. Yapmak Ýstiyor musunuz?';
  msgInventoryStock018 :string = 'Dosya boyutu 700 kb dan küçük olmak zorunda. Ýþleminiz iptal edildi.';
  msgInventoryStock019 :string = 'Seri numarasý bulunan kayýtlar silinemez.';
  msgInventoryStock020 :string = 'Lokasyon bilgileri deðiþmiþtir.Zimmet sahibini deðiþtirecek misiniz?';
  msgInventoryStock021 :string = 'Dosya boyutu 10 mb dan büyük olan dosyalar sýkýþtýrtýlmadan gönderilemez. Ýþleminiz iptal edildi.';
  msgInventoryStock022 :string = 'Bmp uzantýlý dosyalar gönderilemez. Ýþleminiz iptal edildi.';
  msgInventoryStock023 :string = 'Demirbaþ %s adlý personele zimmetlidir. Zimmeti iade alarak demirbaþýn durumunu deðiþtirmek ister misiniz?'; //163683;KDUMAN;11.09.2019;
  msgInventoryStock024 :string = 'Hurda, eskimiþ ve kullanýlamaz durumdaki demirbaþlar zimmete verilemez.'; //163683;KDUMAN;11.09.2019;

  //Invoice - LRF_ID = 21
  msgInvoice001 :string = 'Aktarýlmýþ fatura üzerinde deðiþiklik yapamazsýnýz!';
  msgInvoice002 :string = 'Fatura tarihi, dosyanýn kayýt tarihinden küçük olamaz!';
  msgInvoice003 :string = 'Fatura numarasýný boþ geçemezsiniz!';
  msgInvoice004 :string = 'Seçili faturanýn iadesi yapýlacak. Devam etmek istiyor musunuz?';
  msgInvoice005 :string = 'Ýptal iþlemi için açýklama girmelisiniz!';
  msgInvoice006 :string = 'Fatura icmal numarasý deðiþtirilmiþtir.';
  msgInvoice007 :string = 'Ýcmal numarasý deðiþtirilmemiþtir. '+ #13;
  msgInvoice008 :string = 'Fatura formu için yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgInvoice009 :string = 'Girilen deðer, seçilen kayýtlarýn toplam tutarýnda küçük olmalýdýr.';
  msgInvoice010 :string = 'Seçilen Ýþlemler arasýnda faturalanan kayýtlar vardýr iþleminiz iptal edildi!';
  msgInvoice011 :string = 'Seçilen Ýþlemler için ''Hizmet Farký Tutarýnda'' faturalanan kayýtlar vardýr iþleminiz iptal edildi!';
  msgInvoice012 :string = 'Seçili fatura iade durumuna alýnacak. Devam etmek istiyor musunuz?';
  msgInvoice013 :string = 'Ýade iþlemi için açýklama girmelisiniz!';
  msgInvoice014 :string = 'Girdiðiniz fatura tutarý uygun deðildir.Lütfen geçerli bir tutar giriniz!';
  msgInvoice015 :string = 'Gider pusulasý tutarý fatura tutarýndan fazla olamaz.Lütfen geçerli bir tutar giriniz!';
  msgInvoice016 :string = 'Tüm iþlemler için Gider pusulasý kaydý oluþturulacak. ';
  msgInvoice017 :string = 'Gider Pusulasý kesilecek uygun kayýt bulunamadý. ';
  msgInvoice018 :string = 'Fatura Ýzibiz portalý kullanýlarak kaydedilmiþ bir fatura ise Durumu : Ýþlendi olarak deðiþtirilecektir. Devam etmek istiyor musunuz ?';
  msgInvoice019 :string = ' Fatura numarasýný tekrar kullanmak istiyor musunuz ?';
  msgInvoice020 :string = 'Evraðý/Evraklarý geri göndermek için Not alaný dolu olmalýdýr.';
  msgInvoice021 :string = 'Evraðý/Evraklarý göndermek için gerekli alanlar dolu olmalýdýr.';
  msgInvoice022 :string = 'Baþka kullanýcý adýna gönderilen faturayý almak istediðinize emin misiniz?';
  msgInvoice023 :string = 'Ýþleminiz iptal edildi.Seçilen evrak durumlarý eþleþmedi.Lütfen ayný durumda bulunan evraklarý seçiniz.';
  msgInvoice024 :string = 'Ýþleminiz iptal edildi.Gider pusulasý ile faturasý eþleþmedi.';
  msgInvoice025 :string = 'Yeni kurum kaydý yapmak istiyor musunuz?';
  msgInvoice026 :string = 'Ýþleminiz iptal edildi.E-Arþiv faturasý iptal gönderimine olumlu cevap alýnamadý.';

 //EInvoice  LRF_ID = 217
  msgEInvoice001 :string = 'E-Fatura Gönderilecektir. Emin misiniz?';
  msgEInvoice002 :string = 'Fatura(lar) E-Arþive Gönderilecektir. Emin misiniz?';
  msgEInvoice003 :string = 'E-Arþiv Fatura Ýptal Bilgisi Gönderilecektir. Emin misiniz?';
  msgEInvoice004 :string = 'Gönderilmemiþ eski faturalar mevcut. Gönderim yapýlamaz!';
  msgEInvoice005 :string = 'Fatura bulunamadý. Ýþleminiz iptal edildi.';
  msgEInvoice006 :string = 'e-Arþiv önizlemesini görüntülemek ister misiniz ?';


 //InvoiceAll
 // msgInvoiceAll001 :string = 'Seçili iþlem(ler)i çýkarmak istediðinize eminmisiniz?';

//InvoiceGroup - LRF_ID = 22
  msgInvoiceGroup001 :string = 'Mesajlarýný kontrol ediniz';
  msgInvoiceGroup002 :string = 'Ýçinde fatura olan icmali silemezsiniz.';
  msgInvoiceGroup003 :string = 'Aktif Ýcmali silemezsiniz.';
  msgInvoiceGroup005 :string = 'Hasta dosyasýndan Malzemeyi silemezsiniz';
  msgInvoiceGroup006 :string = 'Ýþlem Tarihi, Dosya tarihinden küçük olamaz!';
  msgInvoiceGroup007 :string = 'Ýþlem Tarihi, Fatura tarihinden büyük olamaz!';
  msgInvoiceGroup008 :string = 'Ýþlem Tarihi, Dosya çýkýþ zamanýndan büyük olamaz!';
  msgInvoiceGroup010 :string = 'Ýþleme devam etmek istediðinizden emin misiniz?';
  msgInvoiceGroup011 :string = 'Seçtiðiniz fatura(lar) iptal edilecek '+#13+'devam etmek istiyor musunuz.!';
  msgInvoiceGroup012 :string = 'Seçili dosyalarýn kapanýþlarýda iptal edilsin mi?';
  msgInvoiceGroup013 :string = 'Sadece durumu takip alýndý olan dosyalar icmalden çýkarýlabilir.';
  msgInvoiceGroup014 :string = 'Bir fatura numarasý girmek zorundasýnýz.';
  //msgInvoiceGroup015 :string = 'Fatura Numarasý Giriþi...';
  msgInvoiceGroup016 :string = 'Ýcmal onaylandýktan sonra tüm iþlemlere kapatýlýr. Onaylansýn mý?';
  msgInvoiceGroup017 :string = 'Ýcmal onayý iptal edilecek. Devam edilsin mi?';
  msgInvoiceGroup019 :string = 'Seçili icmal Aktif Ýcmal yapýlacak. Ýþleme devam edilsin mi?';
  msgInvoiceGroup020 :string = 'Otomatik fatura numarasý verilsin mi?';
  msgInvoiceGroup021 :string = 'Fatura numarasý giriniz...';
  msgInvoiceGroup022 :string = 'Seçili hastanýn triaj kodunu deðiþtirilecek.'+#13+ 'Devam etmek istiyor musunuz?';
  msgInvoiceGroup023 :string = 'Seçili iþlem(ler)i faturadan çýkarmak istediðinize eminmisiniz?';
  msgInvoiceGroup024 :string = 'Onaylanmýþ icmal içerisinde hiçbir deðiþiklik yapamazsýnýz.';
  msgInvoiceGroup025 :string = 'Birleþtirilecek icmallerin Kurumlarý ayný olmalýdýr.';
  msgInvoiceGroup026 :string = 'Birleþtirilecek icmallerin Geliþ Tipleri ayný olmalýdýr.';
  msgInvoiceGroup027 :string = 'Seçili tüm hastalar için "Takip Oku" yapmak istediðinize emin misiniz?';
  msgInvoiceGroup028 :string = 'Farklý þubeler arasýnda taþýma yapamazsýnýz.';
  msgInvoiceGroup029 :string = 'Seçtiðiniz icmalin içinde faturalanmýþ dosyalar olduðu için taþýyamazsýnýz.';
  msgInvoiceGroup030 :string = 'Ýcmali seçili dönemin altýna atmak istediðinizden emin misiniz?';
  msgInvoiceGroup031 :string = 'Dönemden çýkarmak istediðinizden emin misiniz?';
  msgInvoiceGroup032 :string = 'Seçili tüm hastalara ait iþlemlerin fiyatlarý GSS fiyatýna eþitlenecek, devam edilsin mi?';
  msgInvoiceGroup033 :string = ' adlý iþlemin GSS fiyatý "0" (Sýfýr) görünmekte, iþleme devam etmek istiyor musunuz?';
  msgInvoiceGroup034 :string = 'Bundan sonraki benzer durum(lar)da verdiðiniz cevap dikkate alýnsýn mý?';
  msgInvoiceGroup035 :string = 'Varsa Medulaya yapýlan "Ýþlem Bilgisi Kaydet" iþlemi iptal edilsin mi?';
  msgInvoiceGroup036 :string = 'Dönem içine alýnmayan bir dosyaya bu iþlemi yapamazsýnýz.';
  msgInvoiceGroup037 :string = 'Seçili iþlem(ler) paketten çýkartýlacak, devam etmek istiyor musunuz?';
  msgInvoiceGroup038 :string = 'Seçili dosyalarý icmalden çýkarmak (fatura iptal edilmeyecek) istediðinize emin misiniz?';
  msgInvoiceGroup039 :string = 'Kesinti bilgisini alabilmek için "GSS Evrak Ref. No" alanýnýn doldurulmuþ olmasý gerekiyor.';
  //msgInvoiceGroup040 :string = '*** ÖNEMLÝ ***'+#13+
  //                     'Medulaya kaydedilmiþ fatura bilgisini, 1 (bir) kere iptal etme hakkýnýz var.'+#13+
  //                     'Gerekli tüm kontrolleri yaptýktan sonra bu iþlemi gerçekleþtirmeniz gerekir.'+#13+
  //                     '"Fatura Bilgisi Kaydet" iþlemi için devam etmek istiyor musunuz?';
  msgInvoiceGroup041 :string = 'Fatura %s dönemine kaydedilicek, devam etmek istiyor musunuz?';
  msgInvoiceGroup042 :string = 'Arama yapabilmek için kriter belirlemelisiniz!';
  msgInvoiceGroup043 :string = 'Hasta Listesi Bulunamadý!';
  msgInvoiceGroup044 :string = 'Dönemdeki tüm hastalarý getirmek istediðinize emin misiniz?';
  msgInvoiceGroup045 :string = 'Ýþlem zamaný, dosya açýk kalma süresinden büyük olamaz!';
  msgInvoiceGroup046 :string = 'Seçili %s iþlemlerin Özel Durumlarý deðiþtirilecek, devam edilsin mi?'+#13+
                       'Önceden Medula ya gönderilen iþlemlerin durumu deðiþtirilemez.';
  msgInvoiceGroup047 :string = 'Katýlým payý bilgisini alabilmek için "GSS Evrak Ref. No" alanýnýn doldurulmuþ olmasý gerekiyor.';
  msgInvoiceGroup048 :string = 'Seçili dosya(lar) "Yeþil Alan" a dönüþtürülecek devam etmek istiyor musunuz?';
  msgInvoiceGroup049 :string = ' Protokol nolu hastada "Yeþil Alana" dönüþtürülecek hizmet bulunamadý!';
  msgInvoiceGroup052 :string = 'Ýcmal grubuna ait tüm hastalarý listelemek istediðinize emin misiniz?';
  msgInvoiceGroup053 :string = 'Ýcmal listesi bulunamadý!';
  msgInvoiceGroup054 :string = 'Seçili iþlem(ler)i faturaya eklemek istediðinize eminmisiniz?';
  msgInvoiceGroup055 :string = 'Fiyat bilgisi bulunamadý!';
  msgInvoiceGroup056 :string = 'Seçili malzemenin GSS UBB kodu deðiþtirmek istiyor musunuz';
  msgInvoiceGroup057 :string = 'Sýralama için ilk fatura numarasýný giriniz.';
  msgInvoiceGroup058 :string = 'Fatura Numarasý';
  msgInvoiceGroup059 :string = 'Taþýnan Ýcmal silinsin mi?';
  msgInvoiceGroup060 :string = 'Seçtiðiniz dosya faturalanmýþ olduðu için taþýyamazsýnýz.';
  msgInvoiceGroup061 :string = 'Belirtilen Ýcmal No deðeri geçersiz';
  msgInvoiceGroup062 :string = 'Tüm hastalarýn faturalarý yazdýrýlacak, devam etmek istiyor musunuz?';
  msgInvoiceGroup063 :string = 'Özel sorgu seçilmiþ, Taný kodu dolu olmalýdýr!';
  msgInvoiceGroup064 :string = 'GSS iþlem notu deðiþtirelemedi!';
  msgInvoiceGroup065 :string = 'Seçili malzemenin PACS Numarasýný deðiþtirmek istiyor musunuz?';
  msgInvoiceGroup066 :string = 'Seç (Seçilileri)';
  msgInvoiceGroup067 :string = 'Kaldýr (Seçilileri)';
  msgInvoiceGroup068 :string = 'Tümünü Seç';
  msgInvoiceGroup069 :string = 'Tümünü Kaldýr';
  msgInvoiceGroup070 :string = 'e-fatura kesildiginde "Fatura Tarihi" ve Fatura Numarasý degistirilemez!';
  //msgInvoiceGroup071 :string = '%s kurumuna ait fatura kesildiðinden iþlem yapamazsýnýz!';  //msgMultiUsed134
  msgInvoiceGroup072 :string = 'Kurum faturasýnda fatura edilecek iþlem bulunamadý!' + #13#10 + 'Fatura Ýptal edilecek.';
  msgInvoiceGroup073 :string = 'Seçili olanlar hariç faturalanacak.Devam etmek istiyor musunuz?';
  msgInvoiceGroup074 :string = 'Medulaya kaydedilmiþ fatura icmalden çýkarýlamaz!';
  msgInvoiceGroup075 :string = 'Faturadan çýkarma iþlemi için açýklama girmelisiniz!';
  msgInvoiceGroup076 :string = '%s iþlem seçildi';
  msgInvoiceGroup077 :string = 'Paket detaylarýndaki iþlemlerin fiyatlarý silin(ME)yecek';
  msgInvoiceGroup078 :string = 'Seçili dosya(lar) yeþil alandan "Acil Muayene" ye dönüþtürülecek.';
  msgInvoiceGroup079 :string = ' Protokol nolu hastada "Acil Muayene" ye dönüþtürülecek hizmet bulunamadý!';
  msgInvoiceGroup080 :string = 'Uygun kayýtlar getiriliyor. Lütfen bekleyiniz.';
  msgInvoiceGroup081 :string = 'Örneklemeye düþen kayýtlar farklý icmale taþýnsýn mý ?';
  msgInvoiceGroup082 :string = 'Kesinti oluþan kayýtlar farklý icmale taþýnsýn mý ?';
  msgInvoiceGroup083 :string = 'Dikkat! faturalan(ma)mýþ, tahsil edil(me)miþ hizmet farký ve hasta payý kayýtlarý silinecektir.';
  msgInvoiceGroup084 :string = 'Bu icmal veya üst icmali onaylanmýþtýr,aktif icmal yapamazsýnýz ve seçemezsiniz';
  msgInvoiceGroup085 :string = 'Bu icmal veya üst icmali onaylanmýþtýr,aktif icmal yapamazsýnýz ve seçemezsiniz';
  msgInvoiceGroup086 :string = 'Hasta Tutarlarý Sýfýrlansýn mý?';
  msgInvoiceGroup087 :string = 'Seçili iþlem(ler) hasta tutarý sýfýrlanacaktýr, devam etmek istiyor musunuz?';
  msgInvoiceGroup088 :string = 'Ýþlem faturalamaya uygun deðil!';
  msgInvoiceGroup089 :string = 'Lab/Rad Sonucu medulaya boþ gönderilecek.';
  msgInvoiceGroup090 :string = 'Yeni Ýcmal dönemi açýlacaktýr, devam etmek istiyor musunuz?' + #13#10 +
                               'Dönemin oluþturulacaðý fatura yerini seçiniz.'+ #13#10 +
                               'GSS(Genel Saðlýk Sigortasý),MSB(Milli Savunma Bakanlýðý)';
  msgInvoiceGroup091 :string = 'Ýcmalin içindeki faturalar GSS kurumuna faturalandýðý için fatura tarihleri deðiþtirilmedi!';
  msgInvoiceGroup092 :string = 'GSS Fatura kaydý bulunmamaktadýr.';
  msgInvoiceGroup093 :string = 'Yüksek Fiyatlý iþlem/iþlemleri iptal ediyorsunuz!';
  msgInvoiceGroup094 :string = 'Dosyanýn son gününe eklenecektir. Devam etmek istiyor musunuz?';
  msgInvoiceGroup095 :string = 'Rapor doktor tarafýndan onaylanmamýþtýr.';
  msgInvoiceGroup096 :string = '%s nolu Referans Kayýt, Bizmed Veritabanýna << Medula >> Kullanýcý adýyla Eklendi!';
  msgInvoiceGroup097 :string = 'Kullaným Bildirimi Yapýlmýþ. Ýþleminiz Ýptal Edildi.';
  msgInvoiceGroup098 :string = 'ÜTS Kullanim Bildirim "ÝPTAL" yapmak istediðinizden emin misiniz?';
  msgInvoiceGroup099 :string = 'Dosya içerisinde %s iþleminden %s adet daha vardýr. Bu iþlemlerde deðiþtirilsin mi? ';
  msgInvoiceGroup100 :string = 'e-Fatura/e-Arþiv Ýþlemidir, Ýptal Edilemez!';
  msgInvoiceGroup101 :string = 'Yataðý boþalttýktan sonra doðru yatak seçmelisiniz. Aksi halde medula gönderimi yapamazsýnýz. Devam etmek istiyor musunuz ?';
  msgInvoiceGroup102 :string = 'Stok için "ÜTS Kullaným Bildirmi" Yapýlmýþtýr. Ýþleminiz Ýptal Edildi!';
  msgInvoiceGroup103 :string = 'SGK icmalinde icmalden çýkarma iþlemi yapýlamaz. Ýþleminiz iptal edildi.';
  msgInvoiceGroup104 :string = 'e-Fatura olarak düzenlenmiþ bir faturada deðiþiklik yapamazsýnýz. ';
  msgInvoiceGroup105 :string = 'Seçilen hastaya ait icmal için mi iþlem yapmak istiyorsunuz?';
  msgInvoiceGroup106 :string = 'Ýþlem Tipi "Tümü" için Takip Durumu yada Özel Sorgu seçilmelidir. ';
  msgInvoiceGroup107 :string = 'Hasta Geliþ Dosyasý, Fatura Ekranýndan Tekrar Deneyiniz.';
  msgInvoiceGroup108 :string = 'Tüm Fatura Detaylar silindiði için Fatura Silinmiþtir.';
  msgInvoiceGroup109 :string = 'Fatura Numarasý Vardýr, Ýþlem/ler Faturadan Çýkarýlamaz!';


//InvoiceInfo
  msgInvoiceInfo001 :string = 'Bir icmalin ait olduðu dönemi (ay''ý) buradan belirtiriz.';
  msgInvoiceInfo002 :string = 'Ýcmal içine atýlacak dosyalarýn geliþ tipini belirtir. Geliþ tipi ''Hepsi'' seçerseniz, icmal içine tüm dosyalarý atabilrsiniz.';
  msgInvoiceInfo003 :string = 'Faturanýn içinde bulunduðu icmal numarasýný giremezsiniz.';
  msgInvoiceInfo004 :string = 'Ýcmallerin Hasta Geliþ Tipleri ayný olmalýdýr.';
  msgInvoiceInfo005 :string = 'Ýcmallerin Fatura Yeri ayný olmalýdýr.';
  msgInvoiceInfo006 :string = 'Onaylanmýþ bir dönem altýna yeni bir icmal açamazsýnýz.';
  msgInvoiceInfo007 :string = 'Ýcmal oluþturulamadý.';

//InvoiceNumber
  msgInvoiceNumber001 :string = 'Fiþ numarasý en fazla dört (4) karakter olmalýdýr. Yinede devam etmek istiyor musunuz?';
  msgInvoiceNumber002 :string = 'Fatura numarasýnýn ilk karakteri harf geri kalaný rakam olmak zorundadýr.'+#13+'Örnek :  B123456';

//InvPreControls
  msgInvPreControls001 :string = 'Ret nedeni girmek zorundasýnýz.';
  msgInvPreControls003 :string = 'Ret Nedeni Giriniz: ';
  msgInvPreControls004 :string = 'Tekrar Gönderme Nedenini Giriniz: ';
  msgInvPreControls005 :string = 'Ret: ';
  msgInvPreControls006 :string = 'Ýþlem yapmanýz için, Teslim Alan kullanýcýnýn iþlemi tamamlamasý gerekmektedir.';
  msgInvPreControls007 :string = 'Onaylanan iþlem üzerinde tekrar iþlem yapýlamaz!';
  msgInvPreControls008 :string = '"Fatura Ön Kontrolleri Reddetme" yetkiniz yok!';
  msgInvPreControls009 :string = 'Ret iþleminden sonra tekrar iþlem yapýlamaz!';


//JobDescription - LRF_ID = 187
  msgJobDescription001 :string = 'Dosyayý Silmek Ýstediðinize Eminmisiniz?';
  msgJobDescription003 :string = 'Ýþi Deðiþtiremezsiniz';
  msgJobDescription004 :string = 'Çalýþtýðýnýz Departman Giriniz';
  msgJobDescription005 :string = 'Ýþi Göndermek Ýçin Departman Giriniz';
  msgJobDescription006 :string = 'Gönderilen departmanýn yöneticisi yok, seçilen departman için yönetici belirleyiniz.';
  msgJobDescription007 :string = 'Talebiniz Sinerji Biliþime gönderildi teþekkür ederiz.';
  msgJobDescription008 :string = 'Sinerji Biliþim onay bekleyen iþler';
  msgJobDescription009 :string = 'Talep nedeni girilmesi zorunludur.';
  msgJobDescription010 :string = 'Sinerji Biliþime baðlanýlýyor...';
  msgJobDescription011 :string = 'Talep önceliði belirtebilmek için önce dosya eklemelisiniz.';
  msgJobDescription012 :string = 'Sinerji Biliþime gönderilmiþ bir dosyayý silemezsiniz!';


//JobList
  msgJobList001 :string = 'Ýþ Kapanmýþ Olduðu Ýçin Atama Ýþlemi Yapamazsýnýz';
  msgJobList002 :string = 'Ýþ, size iþi gönderen kiþiye geri gönderilecektir.Devam edilsin mi?';
  msgJobList003 :string = 'Üst üste yanlýþ atama iþlemi yapamazsýnýz.Lütfen atama iþlemi yapýnýz.';
  msgJobList004 :string = 'Ýþ Kapanmýþ Olduðu için Ýþi Atayamazsýnýz';
  msgJobList005 :string = 'Ýþ demirbaþa baðlý. Ýþe ait demirbaþ bakým kaydý oluþturmak istiyor musunuz?';
  msgJobList006 :string = 'Demirbaþ bakým tiplerine "Arýza" adýnda bakým tipi mevcut deðil.' +#13 + 'Bakým Kaydý oluþturulamadý.';
  msgJobList007 :string = 'Bu iþe ait demirbaþ bakým kaydý mevcut!' +#13 + 'Ýkinci bir bakým kaydý oluþturulmadý.';
  msgJobList008 :string = 'Hata Alýndý, demirbaþ bakým kaydý oluþturulamadý.';
  msgJobList009 :string = 'Açýklama Girmeden Ýþi Kapatamazsýnýz';
  msgJobList010 :string = '(Ýptal Edildi)';
  msgJobList011 :string = 'Ýþi Kapatamazsýnýz ';
  msgJobList012 :string = 'Tarih Aralýðý Girmek Zorundasýnýz';
  msgJobList013 :string = 'Ýþ Siz Dýþarý Göndermediðiniz Ýçin Ýþi Siz Teslim Alamazsýnýz';
  msgJobList014 :string = 'Bu iþe baðlý demirbaþ bakým kaydý oluþturulmuþ. Ýþleme devam ederseniz demirbaþ bakým kaydý silinecek.' + #13+
                  'Ýþleme devam etmek istiyor musunuz?';
  msgJobList015 :string = 'Ýþlem iptal edildi. ';
  msgJobList016 :string = 'Hata alýndý, iþe ait demirbaþ bakým kaydý silinemedi!';
  msgJobList017 :string = 'Açýklama Girmeden Ýþi Sahibine Gönderemezsiniz';
  msgJobList018 :string = 'Ýþ Tipini %s Olarak Seçiniz';
  msgJobList019 :string = 'Ýþ Kapanmýþ Olduðu için Ýþi Gönderemezsiniz';
  msgJobList020 :string = 'Açýklama Girmeden Ýþi Teste Gönderemezsiniz';
  msgJobList021 :string = '(Test Edilecek)';
  msgJobList022 :string = 'Ýþ Siz Teste Gönderemezsiniz';
  msgJobList023 :string = 'Açýklama Girmeden Ýþi Gönderemezsiniz';
  msgJobList024 :string = '(Test Edildi Hatalý)';
  msgJobList025 :string = '(Test Edildi Sorun Yok)';
  msgJobList028 :string = '(Sonuçlandýrýldý)';
  msgJobList029 :string = 'Ýþi Sahibine Gönderme Ýþlemi';
  msgJobList030 :string = 'Ýþ Oluþturulup Hiç Bir Departmana Gönderilmemiþtir Bu Yüzden Atama Ýþlemi Yapamazsýnýz';
  msgJobList031 :string = 'Ýþ Sizin Çalýþtýðýnýz Departmana Ait Deðildir Bu Yüzden Atama Ýþlemi Yapamazsýnýz';
  msgJobList032 :string = 'Açýklama Girmeden Ýþi Üzerinize Alamazsýnýz';
  msgJobList033 :string = '(Üzerine Alma Ýþlemi)';
  msgJobList034 :string = 'Ýþ Siz Üzerine Alamazsýnýz';
  msgJobList035 :string = 'Ýþlem Baþlatýlamadý';
  msgJobList036 :string = 'Ýþlem Bitirilemedi';
  msgJobList037 :string = 'Program kapatýlacak devam etmek istiyor musunuz?';
  msgJobList038 :string = 'Ýþ Tipini %s, %s, %s veya %s Olarak Seçiniz';
  msgJobList039 :string = 'Tanýmlanan maksimum istek sayýsýnýza ulaþýldý';
  msgJobList040 :string = 'Eklediðiniz iþ sonuçlandý';
  msgJobList041 :string = 'Kontrol etmek için BURAYA týklayýn.';
  msgJobList042 :string = 'Yanlýþ Atama';
  msgJobList043 :string = 'Ýþ gönderildi';
  msgJobList044 :string = 'Gönderdiðiniz iþ yanlýþ atama seçimi ile geri döndürüldü.';
  msgJobList045 :string = 'Gönderdiðiniz iþ sahibine gönder seçimi geri döndürüldü.';
  msgJobList046 :string = 'Üzerinize atanan bir iþ var.';
  msgJobList047 :string = '"http://www.bizmed.com.tr" Adresine baðlantý kurulamýyor. Bilgisayarýn ' +
      'internet baðlantýsý olduðundan emin olunuz. bizEBS yeniden baþlatýlacak';
  msgJobList048 :string = 'Bildirim Notu';
  msgJobList049 :string = 'Ýþ Takip';
  msgJobList050 :string = 'Yeni bildirim notu eklendi';
  msgJobList051 :string = 'Eklenen bilgi notu kullanýcýya uyarý olarak gönderilecek devam etmek istiyormusunuz?';
  msgJobList052 :string = 'Lütfen kaydetme iþleminden sonra devam ediniz.';
  msgJobList053 :string = 'Sinerji Biliþime baðlantý kurulamýyor. Lütfen internet baðlantýsý olduðundan emin olunuz.';
  msgJobList054 :string = 'Talebiniz Bilgi Ýþlem Departmanýna yönlendirildi. Gönderiminiz iptal edildi!';


 //JobFolluwUpQuery
 msgJobFolluwUpQuery001 :string = 'Sonuçlanan iþler var görmek istermisiniz ?';
 msgJobFolluwUpQuery002 :string = '"Atanan Kiþi" yada "Ýþi Oluþturan Kiþi" lerden en az biri seçilmelidir.';

//Kiosk
  msgKiosk001 :string = 'Ýþleminiz yapýlýyor. Lütfen Bekleyin...';
  msgKiosk002 :string = 'Sadece SGK Kurumlu hastalar buradan iþlem yapabilir. Lütfen veznelere gidiniz.';
  msgKiosk003 :string = 'Yeþil Kartlý hastalar iþlemlerini sadece veznelerden yaptýrabilirler.';
  msgKiosk004 :string = 'Girmiþ olduðunuz TC Kimlik bilgisi için randevu kaydý bulunamadý.';
  msgKiosk005 :string = 'Vezneye yönlendiriniz';

//LabAntecedentResults
  msgLabAntecedentResults001 :string = '%s adlý test için sayýsal deðer hatasý, Test Sonucu : "%s"';

//LabCalculatedTestDefines
  msgLabCalculatedTestDefines001 :string = 'Test Adý boþ geçilemez. Hangi test için formül tanýmlamak istediðinizi belirtiniz.';
  msgLabCalculatedTestDefines002 :string = 'Formül tanýmlamadýnýz!';
  msgLabCalculatedTestDefines003 :string = 'Eksik Sað Parantez! Yazdýðýnýz ifadeyi kontrol ediniz.';
  msgLabCalculatedTestDefines004 :string = 'Eksik ifade! Yazdýðýnýz ifade '' , + - * / ( '' iþaretlerinden herhangi biri ile bitmemelidir.';
  msgLabCalculatedTestDefines005 :string = 'Yazdýðýnýz ifade içerisinde en az bir tane ''Test Kodu'' geçmelidir. Yazdýðýnýz ifadeyi kontrol ediniz.';
  msgLabCalculatedTestDefines006 :string = 'Grup testlere hesaplamalý test tanýmý yapýlamaz.';
  msgLabCalculatedTestDefines007 :string = 'Ayný kayýt sistemde mevcut.';

//LabInstruments
  msgLabInstruments001 :string = 'Test Cihaz baðlantýsý yapýlmamýþ veya Cihazdaki test kodu teste girilmemiþ';
  msgLabInstruments002 :string = 'Ýþleminiz baþarýlý bir þekilde tamamlandý ';
  msgLabInstruments003 :string = 'Ýþleminiz tamamlandý fakat seçili kayýtlarýn tümü aktarýlamadý. '+#13+
                         ' Nedeni yanlýþ "Lot" veya yanlýþ "Test" seçimi veya sayýsal olmayan "Sonuç" olabilir';
  msgLabInstruments004 :string = 'Ýþleminiz tamamlanmadý ';
  msgLabInstruments005 :string = 'Bu cihaz kullanýlmýþtýr. Silinemez!';


//LabDynamicTestDefines
  msgLabDynamicTestDefines001 :string = 'Eklenebilecek baþka alan yok!';
  msgLabDynamicTestDefines002 :string = 'Bu teste ait sonuç bulundu!' + #13 + 'Test daha önceden kullanýldýðý için silemezsiniz!';

//LabOutLabResult
  msgLabOutLabResult001 :string = 'Dosya silinemedi';
  msgLabOutLabResult002 :string = 'Dosya taþýnmasýnda hata oluþtu.';
  msgLabOutLabResult003 :string = 'Dosya uzantýsý bulunamadý.';

//LabOdsDefines
  msgLabOdsDefines001 :string = 'ODS Sistem parametresi deðiþtirilecek!' + #13 + 'Devam etmek istiyor musunuz?';
  msgLabOdsDefines002 :string = 'Test tanýmlarýnda teste numune türü seçilmiþ olmalýdýr!';
  msgLabOdsDefines003 :string = 'Adýna onaylama yapýlacak doktor bilgisini seçmelisiniz!' + #13 + 'Devam etmek istiyor musunuz?';
  msgLabOdsDefines004 :string = 'Grup test parametresi seçilemez!';
  msgLabOdsDefines005 :string = 'Test tanýmlarýnda teste Delta Check tanýmlanmýþ olmalýdýr!';
  msgLabOdsDefines006 :string = 'Onay derecesi ve bir kontrol kriteri seçili olmalýdýr!';
  msgLabOdsDefines007 :string = 'Test seçmeden iþlemi kayýt edemezsiniz!';
  msgLabOdsDefines008 :string = 'Ýlgili doktorun Laboratuvar ODS Sistemindeki kayýtlarý pasif edilecek!'+ #13 +'Laboratuvara bilgi veriniz!';
  msgLabOdsDefines009 :string = 'Laboratuvar Yönetim Sistemi Taným Yetkiniz Yok!' + #13 + 'Ekran kapatýlacak!';
  msgLabOdsDefines010 :string = 'HIL Index deðerlerinden biri seçili olmalýdýr!';
  msgLabOdsDefines011 :string = 'Alt parametreler seçilemez!';
  msgLabOdsDefines012 :string = 'Formülü silmek istediðinize emin misiniz?';

//LabQCDefines
  msgLabQCDefines001 :string = 'Kural devre dýþý býrakýlacak!' + #13 + 'Devam etmek istiyor musunuz?';
  msgLabQCDefines002 :string = 'Zorunlu alanlar girilmelidir!';
  msgLabQCDefines003 :string = 'Kaydý silmek istediðinizden emin misiniz?';

//LabSampleBarcodePrint
  msgLabSampleBarcodePrint001 :string = 'Ücreti ödenmemiþ testler üzerinde iþlem yapamazsýnýz.';
  msgLabSampleBarcodePrint002 :string = 'COVID-19 LBYS barkodunu giriniz.';

//LabTestDefines
  msgLabTestDefines001 :string = 'Seçilen hizmet herhangi bir test ile iliþkilendirilmemiþ.';
  msgLabTestDefines003 :string = 'Laboratuar kit mevcut olmadýðýnda hizmet isteði yapan kullanýcýyý uyarabilmesi için sistem parametrelerinde '+
                         '"LABORATUAR TESTLERINDE KIT KONTROLU YAPILSIN" aktif olmasý gerekir!';
  msgLabTestDefines004 :string = 'Þube Bilgisi Dolu Olmalýdýr!';
  msgLabTestDefines005 :string = 'Alt parametreler için Hizmet tanýmlanamaz!';
  msgLabTestDefines006 :string = 'Grup testler için Cihaz tanýmlanamaz!';
  msgLabTestDefines007 :string = 'Grup testler için Referans Deðerleri tanýmlanamaz!';
  msgLabTestDefines008 :string = 'Önce Cihaz veya Varsayýlan tanýmýný yapýnýz.';
  msgLabTestDefines009 :string = 'Seçtiðiniz hizmet baþka bir teste baðlý!';
  msgLabTestDefines010 :string = 'Test Adýný ve Grup Adýný kontrol ediniz!';
  msgLabTestDefines011 :string = '" %s " adlý test hasta için her iþlendiðinde, önceki ayný testin çalýþýlmasýna bakýlmaksýzýn dosyaya eklenmesine izin verilecek.';
  msgLabTestDefines012 :string = 'Önce bu teste ait alt parametreleri silmelisiniz!' + #13 +
                            'Alt Prametreler silinsin mi?';
  msgLabTestDefines013 :string = 'Cihaza tanýmlý referans aralýklarý silinsin mi?';
  msgLabTestDefines014 :string = 'Seçilen teste sonuç girildiði için silemezsiniz.';
  msgLabTestDefines015 :string = 'Bu testi Alt Parametre yapmak istediðinize emin misiniz? ';
  msgLabTestDefines016 :string = 'Alt parametreler için çalýþma yeri tanýmlanamaz!';
  msgLabTestDefines017 :string = 'Bakteri seçimi yapmadan Antibiyotik seçimi yapamazsýnýz!';
  msgLabTestDefines018 :string = 'Lütfen numune türü seçerek iþleme devam ediniz.';
  msgLabTestDefines019 :string = 'Pasife alýnacak test hizmeti, isteklerde ve doktor istek gruplarýnda da pasife alýnacaktýr.';
  msgLabTestDefines020 :string = 'Ayný gün içerisinde kargo zamaný gönderim zamanýndan küçük olamaz.!';
  msgLabTestDefines021 :string = 'Tüm deðerleri girmeden Delta Check aktif edilemez!';
  msgLabTestDefines022 :string = 'Grup testler için HIL Index tanýmlanamaz!';
  msgLabTestDefines023 :string = 'Hasta dosyalarýnda sonucu çýkmayan kayýtlar olduðu için deðiþtirilemez!'; //232575;BACL;19.11.2020;
  msgLabTestDefines024 :string = 'Silinen Laboratuvar-Hizmet Baðlantýsýna baðlý Hizmet "Kullaným Dýþý" na alýnmýþtýr.';


  //LabTestResults - LRF_ID = 39
  //msgLabTestResults001 :string = 'Onayla';
  msgLabTestResults002 :string = 'Kýsmen Onayla';
  msgLabTestResults003 :string = 'Sonuçlar da yazdýrýlsýn mý?';
  msgLabTestResults004 :string = 'Bu iþlem isteðe baðlý tüm testlerin durumlarýný da deðiþtirecek.' + #13 + 'Devam etmek istiyor musunuz?';
  msgLabTestResults005 :string = 'Laboratuar Tetkikleri için yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgLabTestResults006 :string = 'Seçtiðiniz hastalara ait tüm sonuçlar yazdýrýlacak.' + #13 + 'Devam etmek istiyor musunuz?';
  msgLabTestResults007 :string = 'Bu iþlem ile test sonuçlarý da silinecek.' + #13 + 'Devam etmek istiyor musunuz?';
  msgLabTestResults008 :string = 'Bölüm tablosunda Týbbi Biyokimya branþlý bölüme baðlý yazýcý formu bulunamadý.';
  msgLabTestResults009 :string = 'Sisteminiz ayný anda tüm þubelerin laboratuar hastalarýný görmeye ayarlý deðil.';
  msgLabTestResults011 :string = 'Hasta kimlik bilgilerindeki kan grubu ile seçmiþ olduðunuz kan grubu uyuþmamaktadýr. Devam etmek istiyor musunuz?';
  //msgLabTestResults012 :string = 'Baþka bir kullanýcý kayýt üzerinde deðiþiklik yapýyor.'+#13+'Daha sonra tekrar deneyiniz.';
  msgLabTestResults013 :string = 'Ýþlem kimin adýna Onaylanmak isteniyorsa lütfen seçiniz.';
  msgLabTestResults014 :string = 'Ýþlemi yapacak olan kullanýcý, doktor olarak belirtilmelidir.';
  msgLabTestResults015 :string = '%s adlý test için ara rapor sayýsý %s olarak belirtilmiþ. '+
    'An itibariyle %s adet rapor açýlmýþ. Yinede açmak istiyor musunuz?';
  msgLabTestResults016 :string = 'Seçili kayýt(lar) için "Ara Rapor" oluþturmak istediðinize emin misiniz?';
  msgLabTestResults017 :string = 'Bu not Hasta Kimlik Dosyasýna eklenecek ve yetkili tüm bölümler bunu görecek.';
  msgLabTestResults018 :string = 'Seçilen testlere ''Ön Onay'' vermek istiyormusunuz.';
  msgLabTestResults019 :string = 'Seçilen testlerin ''Ön Onayýný'' iptal etmek istiyormusunuz.';
  msgLabTestResults020 :string = 'Cihazdan gelen deðeri deðiþtirmek istediðinize eminmisiniz?';
  msgLabTestResults021 :string = 'Ýptal notunu giriniz';
  msgLabTestResults022 :string = 'Test grubuna / Cihaza göre onaylanacak kayýt bulunaMAdý.';
  msgLabTestResults023 :string = 'Onaylanmýþ laboratuvar barkodlarý yazdýrýlamaz';
  msgLabTestResults024 :string = 'Otomatik ara rapor oluþturma iþlemi sonlandýrýlsýn mý?';
  msgLabTestResults025 :string = 'Bakteri/Antibiyotik kaydý bulundu silinsin mi?';
  msgLabTestResults026 :string = 'Geçerli bir E-Posta adresi giriniz. (%s)';
  msgLabTestResults027 :string = 'Ayný numune türüne ait diðer testlerinde durumu deðiþecek.';
  msgLabTestResults028 :string = 'Bu hasta Trafik Kazasý, Ýþ Kazasý veya Adli vaka olarak kuruma baþvurdu.';
  msgLabTestResults029 :string = 'Kullanýcý-Personel iliþkisi bulunamadý. Ýþleminiz Ýptal Edildi.';
  msgLabTestResults030 :string = 'Beklemede olmayan testler mevcut. Ýþleminiz Ýptal Edildi.';
  msgLabTestResults031 :string = 'Seçili Test/Testler için Yeni Kayýt Açýlacaktýr. Emin misiniz?';
  msgLabTestResults032 :string = 'Tüm Kayýtlar seçilmiþtir. Yeni Barkod Açýlmaz. Ýþlem Ýptal Edildi.';
  msgLabTestResults033 :string = 'Laboratuvar sonuçlarý e-Nabýz''a gönderildiðinden dolayý durum deðiþtirilemez. Ýþlem Ýptal Edildi.';
  msgLabTestResults034 :string = ' adlý testin tekrar çalýþmasý için Dilüsyon ayarlamak istiyor musunuz?';
  msgLabTestResults035 :string = '(%s) Ýsimli Hastanýn E-mail Bilgisi Boþ Doldurmak Ýstiyor musunuz?';
  msgLabTestResults036 :string = 'Test Yönetim Sisteminde iþleme alýnmýþ testler onaylanamaz!' + #13 +
                                 'Sonucu beklenen diðer testler sonuçlandýðýnda onaylayabilirsiniz!';
  msgLabTestResults037 :string = 'Aktif kayýt deðiþtirilecek! Devam etmek istiyor musunuz?';
  msgLabTestResults038 :string = 'Laboratuvar sonuçlarý e-Nabýz''a gönderildiðinden dolayý Baðlý Test Eklenemez. Ýþlem Ýptal Edildi.'
    + #13#10 + 'Baðlý Test Eklemek istiyorsanýz, E-Nabýz Laboratuvar Sonuçlarýný silmelisiniz.';
  msgLabTestResults039 :string = 'Barkodu yazdýrýlmayan, numune kabulu yapýlmayan testlere sonuç giremezsiniz!';

 //LabPatSampleType
  msgLabPatSampleType001 : string = 'Numune Reddi E-nabýz a Bildirilsin mi ?';
  msgLabPatSampleType002 : string = 'Numune Reddi ile ilgili kullanýcý uyarýsý verilsin mi ?';
  msgLabPatSampleType003 : string = 'E-nabýz gönderimi iptal edemezsiniz';
  msgLabPatSampleType004 : string =
    'Numune iþlem sýrasý(Zaman Olarak) þu þekilde olmalýdýr.' + #13#10 +
    '1. Barkod Yazdýrma Zamaný' + #13#10 +
    '2. Alýnma Zamaný' + #13#10 +
    '3. Lab''a Teslim Alma Zamaný' + #13#10 +
    '4. Lab''a Kabul Zamaný' + #13#10 +
    '5. Çalýþmaya Baþlama Zamaný' + #13#10 +
    '6. Çalýþmayý Bitirme Zamaný' + #13#10 +
    '7. Ret Zamaný' + #13#10 +
    '8. Kontaminasyon';
  msgLabPatSampleType005 : string = '''Numune Alýnmadan'' iþleme devam edemezsiniz.';
  msgLabPatSampleType006 : string = 'Laboratuvar Test Uyarýsý';
  msgLabPatSampleType007 : string = 'Laboratuvara Teslim Alma Zamaný Geçildi!' + #13#10 + 'Numune Alma Zamaný: %s, Teslim Alma Süresi: %d Dk.' + #13#10 + 'Yine de Laboratuvar Teslim Süresi Onaylansýn mý?';
  msgLabPatSampleType008 : string = 'Laboratuvara Teslim Alýnmýþ, Kabul Edilmiþ ve ya Ret Edilmiþ Numuneler için bu iþlemi yapamazsýnýz!';
  msgLabPatSampleType009 : string = 'Barkod basýlmadan Numune Alma iþlemi yapýlamaz.';

//LangResEdit
  msgLangResEdit001 :string = 'Form tanýmý bulunamadý';

//LogoTransfer
  msgLogoTransfer001 :string = 'Aktarýlacak herhangi bir kayýt bulunamadý!';
  msgLogoTransfer002 :string = 'Logoya baðlý deðilsiniz.';
  msgLogoTransfer003 :string = 'Aktarým gerçekleþtirilemedi.';
  msgLogoTransfer004 :string = ' numaralý faturanýn tahsilat bilgisi aktarýlamadý.';
  msgLogoTransfer005 :string = 'Fatura numarasý girilmemiþ, bu faturayý muhasebe entegrasyonu için seçemezsiniz.';
  msgLogoTransfer006 :string = 'Kurumun Muhasebe Hesap Kodu girilmemiþ, bu faturayý muhasebe entegrasyonu için seçemezsiniz.';
  msgLogoTransfer007 :string = 'Lütfen kullanýcý bilgilerini giriniz!';
  msgLogoTransfer008 :string = 'Aktarým yapýlacak cari hesap kodu tanýmlanmadýðý için %s numaralý fatura aktarýlamadý.';
  msgLogoTransfer009 :string = 'Aktarým yapýlacak firmayý seçmelisiniz.';
  msgLogoTransfer010 :string = ' numaralý faturanýn aktarýmý iptal edilemedi.' + #13 + 'Muhasebeþtirilmiþ bir faturanýn aktarýmýný iptal edemezsiniz.';
  msgLogoTransfer011 :string = ' nolu faturanýn durumu aktarým için uygun deðil.' + #13 + 'Yinede seçmek istiyormusunuz?';
  msgLogoTransfer012 :string = ' protokol nolu hastanýn katýlým payý tahsilatý aktarýlamadý.';
  msgLogoTransfer013 :string = ' nolu kayýt Entegrasyon Programýnda mevcut deðil.'+ #13 +'Kayýt Bizmed tarafýndan "Aktarýlmadý" olarak iþaretlenecektir.';
  msgLogoTransfer014 :string = 'Kayýtlar aktarýlýrken lütfen bekleyiniz.';
  msgLogoTransfer015 :string = 'Aktarýlamayan kayýtlar mevcut.'+ #13 + 'Lütfen aktarým iþlemini tekrarlayýnýz.';
  msgLogoTransfer016 :string = 'Aktarýmlar iptal edilirken lütfen bekleyiniz...'; //183959;KDUMAN;25.11.2019
  msgLogoTransfer017 :string = 'Stok Hareket Aktarým Hatasý : '; //183959;KDUMAN;25.11.2019
  msgLogoTransfer018 :string = 'Kullanýlan entegrasyon programý için aktarýmý yapýlmýþ kayýtlarýn iptal edilmesi iþlemi yapýlamamaktadýr.'; //182936;KDUMAN;17.12.2019
  msgLogoTransfer019 :string = 'Firma kaydý gönderilemedi!';
  msgLogoTransfer020 :string = 'Kayýtlar listeleniyor...';
  msgLogoTransfer021 :string = 'Hesap kodu tanýmlý olmayan kayýtlar var. Gönderim iptal edildi!';
  msgLogoTransfer022 :string = 'Stok aktarýmý için tarih aralýðý 1 aydan büyük olamaz';

//MainAss
  msgMainAss001 :string = 'Ana gruba baðlý bir tanýmý, alt grup yapmak için.';
  msgMainAss002 :string = 'Genel Saðlýk Sigortasý tarafýndan kurumlara verilen kod.';
  msgMainAss003 :string = 'Hastaya elektronik istek yaparken, ön taný girilmesinin zorunlu olmasýný istiyorsanýz, bu alan seçili olmalýdýr.';

//MainForm LRF_ID = 1
  msgMainForm001 :string = 'Programýn kullaným süresi doldu.';
  msgMainForm002 :string = 'Baðlantý sýrasýnda oluþan hata :' + #13;
  msgMainForm003 :string = 'Mernis sistemi cevap vermediðinden, Hasta Ad-Soyad bilgilerini el ile girerek iþleme devam ediniz.';
  msgMainForm004 :string = 'Tc Kimlik numarasýný giriniz.';
  msgMainForm005 :string = 'Arama sonucunda seçilen kayýdýn TC Numarasýyla, '+#13+
                   'girmiþ olduðunuz TC Numarasý farklý olduðundan, iþleme yeni kayýt acarak devam edilecek.';
  msgMainForm006 :string = 'Sistemde kayýtlý olan - Nüfus müdürlüðünden gelen';
  msgMainForm007 :string = 'yukarýdaki farklýlýklara rastlandý, bilgilerin güncellenmesine devam edilsin mi?';
  msgMainForm008 :string = 'Sadece geçmiþ zamana ait düzenleme yapabilirsiniz.';
  msgMainForm009 :string = 'Bu týbbi kart için dosya mak. sayýsýna ulaþýldýðýndan, en son kart açýldý';
  msgMainForm010 :string = 'Hastaya daha önceden ayný týbbi karttan açýlmýþ. Önceki kartý açmak istermisiniz?';
  msgMainForm011 :string = 'Medulaya gönderilmiþ bitiþ durumu "Kontrol" olan iþ göremezlik raporu mevcut. Önceki kartý açmak istermisiniz?';
  msgMainForm012 :string = 'Yeni Ýcmal';
  msgMainForm013 :string = 'Ýcmal Seç';
  msgMainForm014 :string = 'Aktif olan icmal kapatýlsýn mý?';
  msgMainForm015 :string = 'Ýcmal kapatýlamadý. Hata oluþtu.';
  msgMainForm016 :string = 'Ýndirim Ýsteði';
  msgMainForm017 :string = 'Yeni bir Ýndirim Ýsteði var.'+#13+'Lütfen kontrol edin.'+#13+'Kontrol için BURAYA týklayýn.';
  msgMainForm018 :string = 'Yeni bir Stok Ýsteði var.'+'Lütfen kontrol edin.'+#13+'Kontrol için BURAYA týklayýn.';
  msgMainForm019 :string = 'Ýþ Ýsteði';
  msgMainForm020 :string = 'Yeni bir Ýþ Ýsteði var.'+#13+'Kontrol etmek için BURAYA týklayýn.';
  msgMainForm021 :string = '"01.02.2013" tarihine kadar Bizmed destek ekibinden þube bilgisi için yardým isteyiniz.'+#13+
                   'Aksi takdirde belirtilen tarihten sonra bu þubeye giriþiniz engellencektir.';
  msgMainForm022 :string = 'Bu þubeye giriþ yapamazsýnýz. Bizmed destek ekibiyle irtibata geçiniz.';
  msgMainForm023 :string = 'Kayýtlarý göründüðü gibi aktarmak ister misiniz?';
  msgMainForm024 :string = 'Girilen "%s" Geliþ Dosya Numarasý geçerli deðil.';
  msgMainForm025 :string = '  adlý hasta için indirim isteðiniz onaylanmýþ.';
  msgMainForm026 :string = '  için indiriminiz iptal edildi.';
  msgMainForm027 :string = 'Stok Son Kullanma Tarihi ve Min. Max. kontrolü yapýlýyor...';
  msgMainForm028 :string = 'Son Kullanma Tarihi geçen / Kritik Miktarýn altýna düþen stoklar var. '+#13+'Görmek ister misiniz?';
  msgMainForm029 :string = 'Sistemde cevap yazmanýz gereken þikayet kayýtlarý var '+#13+'Görmek ister misiniz?';
  msgMainForm030 :string = 'Dosya durumunun "Fatura Ön Kontrolü Yapýlacaklar" durumunda olmasý gerekmektedir.';
  msgMainForm031 :string = ' PEN ID deðeri alýnamadý';
  msgMainForm032 :string = 'Hastanýn "Teþhis Kodu" nu belirtmeden iþleme devam edemezsiniz.';
  msgMainForm033 :string = 'Dosya Süresi Dolmuþtur. ';
  msgMainForm034 :string = 'Dosya Kapatýlmýþtýr. ';
  msgMainForm035 :string = 'Yeni bir Satýnalma Ýsteði var.'+'Lütfen kontrol edin.'+#13+'Kontrol için BURAYA týklayýn.';
  msgMainForm036 :string = 'Teslim alma iþlemini teslim alýnmasýný istenilen kullanýcý yapabilir.';
  msgMainForm037 :string = ' Lütfen bekleyiniz.';
  msgMainForm038 :string = '  adlý hasta için indirim isteðiniz onaylandý ve uygulandý.';
  msgMainForm039 :string = 'Þikayetler';
  msgMainForm040 :string = 'Açmýþ olduðunuz þikayet ile ilgili cevap yazýldý. Kontrol için BURAYA týklayýn.';
  msgMainForm041 :string = ' Kontrol için BURAYA týklayýn.';
  msgMainForm042 :string = 'Aþaðýda ki kurumlar için tanýmlanan puan bilgisi aþýlmýþ veya sýnýrdadýr.';
  msgMainForm043 :string = 'Girilen tarih kayýtlý tarihler arasýnda bulunmaktadýr.';
  msgMainForm044 :string = 'Baþlangýç zamanýnda büyük olmalýdýr.';
  msgMainForm045 :string = 'Son Bakým Tarihi Yaklaþan/Geçen demirbaþlar var '+#13+'Görmek ister misiniz?';
  msgMainForm046 :string = 'Demirbaþ Bakýmý Yaklaþanlar/Geçenler kontrolü yapýlýyor';
  msgMainForm047 :string = ' adlý demirbaþ üzerinize zimmetlenmiþtir.';
  msgMainForm048 :string = ' adlý demirbaþ zimmeti üzerinizden kalkmýþtýr.';
  msgMainForm049 :string = ' adlý demirbaþta lokasyon deðiþikliði yapýlmýþtýr.';
  msgMainForm050 :string = 'Böyle bir tip tanýmlý deðil!';
  msgMainForm051 :string = 'Logo baðlantýnýz yok/kopmuþ. Tekrar baðlanmak ister misinz?';
  msgMainForm052 :string = '" %s " tescil numaralý personel bulunamadý veya '+
                     'birden fazla personelde ayný tescil no kayýtlý veya Varsayýlan bölüm iþaretli deðil.';
  msgMainForm053 :string = 'Bu hastanýn branþýnýza açýlmýþ kaydý olmadýðýndan hastayý göremezsiniz.!';
  msgMainForm054 :string = 'Mesaj gönderilmesi için saðlýk net takip numarasý olmasý gerekmektedir.';
  msgMainForm055 :string = 'Mesaj baþarýlý olarak gönderildi...';
  msgMainForm056 :string = 'Memnuniyetler';
  msgMainForm057 :string = 'Sistemde sizin için açýlmýþ memnuniyet kayýtlarý var '+#13+'Görmek ister misiniz?';
  msgMainForm058 :string = 'Öneriler';
  msgMainForm059 :string = 'Sistemde sizin için açýlmýþ öneri kayýtlarý var '+#13+'Görmek ister misiniz?';
  msgMainForm060 :string = 'Bizmed in oracle ile baðlanma sýrasýnda versiyon uyuþmazlýðý tespit edildi!'+#13+
                             'Lütfen bilgi iþlemden destek isteyiniz.';
  msgMainForm061 :string = 'Daha önceden kimlik sorgulamasý yapýlmýþtýr. ';
  msgMainForm062 :string = 'Seçilen kayýt(lar) okundu yapýlacak devam etmek istiyormusunuz?';
  msgMainForm063 :string = 'Tüm kayýtlar okundu yapýlacak devam etmek istiyormusunuz?';

  msgMainForm064 :string = 'Tekrar gönderme iþlemini gönderimi yapan kullanýcý yapabilir.';
  msgMainForm065: string = 'Kayýt sayýsý %d ''den fazla olduðu için Excel'' e parçalý atmak ister misiniz?';
  msgMainForm066: string = 'Farklý kaydedilecek dosyanýn yolunu "kendiniz" belirlemek ister misiniz?';
  msgMainForm067: string = 'bizBI dosyasý bulunamadý';
  msgMainForm068: string = 'Hastaya ait Gebelik Bilgisi Sonlandýrýlmayan, Obstetrik Kartý bilgisi bulundu.'+
    ' Gebelik Bilgisi Sonlandýrýlmayan Obstetrik Kartý Açýlacak!';
  msgMainForm069: string = 'Saðlýk bakanlýðýna bildirilen herhangi bir gebelik kaydý bulunamamýþtýr.'+
    'Hastaya daha önce baþka kurum tarafýndan gebelik muayenesi yapýlmýþ ise beyana dayalý olarak son adet tarihi giriþi yapýlsýn mý?';
  msgMainForm070: string = 'Hastaya ait Hasta Takip Kayýtlarý bulunmakta görüntülemek ister misiniz?';
  msgMainForm071: string = 'Teletýp HL7 Ýptal Edildi.';
  msgMainForm072: string = 'Panik Deðerde Testler Mevcut. Görüntülemek Ýster Misiniz ?';
  msgMainForm073: string = 'Talebiniz alýndý.';
  msgMainForm074: string = 'Bilgi iþlem departmaný tarafýndan tamamlanmýþ ve tarafýnýzca incelenmemiþ Bizmed hýzlý talepleri mevcut. Görüntülemek ister misiniz ?';
  msgMainForm075: string = 'Fiyat Artýrým Ýsteði';
  msgMainForm076: string = 'Yeni bir Fiyat Artýrým Ýsteði var.'+#13+'Lütfen kontrol edin.'+#13+'Kontrol için BURAYA týklayýn.';
  msgMainForm077: string = 'Uyarýlar :';
  msgMainForm078: string = 'Ýndirim istekleri ekranýna yetkiniz olmadýðýndan bu iþlemi gerçekleþtiremezsiniz.';
  msgMainForm079: string = 'Kaydedilen dosya Bizmed içerisinde açýlsýn mý?';
  msgMainForm080: string = 'Hasta Kimlik Dosyasý Açýlýyor...!';
  msgMainForm081: string = 'Hasta Geliþ Dosyasý Açýlýyor...!';
  msgMainForm082: string = 'Sistemde yeni güncelleme mevcut. Güncelleme zamanýný planlamak ister misiniz ?';
  msgMainForm083: string = 'Güncelleme planlama zamaný dolduðu için planlama yapmalýsýnýz!';
  // 137773;VOZTURK;22.10.2020;ANKET SORULARI BELIRLENENE KADAR UYARI VERIP DEVAM ETMEYECEK.DAHA SONRA MESAJIN DEVAMI EKLENECEK.
  msgMainForm084: string = 'Ýþleme alýnmamýþ bekleyen talepleriniz var.'; // Taleplerinizi Sinerji Biliþime göndermek ister misiniz?';
  msgMainForm085: string = 'Ýþleme alýnmamýþ bekleyen iþleriniz var. Talepleri görmek ister misiniz?';
  msgMainForm086: string = 'Göster';
  msgMainForm087: string = 'Gösterme';
  msgMainForm088: string = 'Onay bekleyen ve bilgi eksik durumunda talepleriniz var. Görmek ister misiniz ?';
  msgMainForm089: string = 'Geliþ dosyasýný görmeye yetkiniz yoktur.';//'%s hasta geliþ grubundaki hastalarý görüntülemeye yetkiniz yoktur.';
  msgMainForm090: string = 'Hasta için "Hatýrlatýcý" kayýt var. Gösteriliyor.';
  msgMainForm091: string = 'Hastanýn Týbbi Kartý Açýlýyor...!';


  //MainMedCard
  msgMainMedCard001 :string = 'Seçilmiþ istekleriniz var göndermek istiyormusunuz?';
  msgMainMedCard002 :string = 'Kartý silmeye yetkiniz yok veya izin verilmiyor.';
  msgMainMedCard003 :string = ' adlý kartý görme/deðiþtirme yetkiniz yok.';
  msgMainMedCard004 :string = 'Týbbi kartý sadece görme yetkiniz olduðundan deðiþtiremesiniz.';
  msgMainMedCard005 :string = 'Týbbi kart onaylanmadýðý için, kayýtlý bilgileri göremezsiniz.';
  msgMainMedCard006 :string = 'Sonuç notu deðiþtirilecek, Lütfen yapmak istediðiniz iþlemi seçiniz.';
  msgMainMedCard007 :string = 'Sonuna Ekle';
  msgMainMedCard008 :string = 'Ýþlem Açýklamasý/Raporu deðiþtirilecek, Lütfen yapmak istediðiniz iþlemi seçiniz.';
  msgMainMedCard009 :string = ' adlý hizmet için iþlem notu deðiþtirilecek. Devam edilsin mi?';
  msgMainMedCard010 :string = 'Hasta için Endikasyon girmeniz gerekmektedir.';
  msgMainMedCard011 :string = 'Bu iþlemin Medulaya kaydý yapýldýðý için "Ýþlem Sonuç" kýsmýný deðiþtiremezsiniz.';
  msgMainMedCard012 :string = 'Ýþlem Açýklamasý/Raporu deðiþtirilecek, devam edilsin mi?';
  msgMainMedCard013 :string = 'Yazdýrma iþleminden önce yaptýðýnýz deðiþiklikler kaydedilecek.?';
  msgMainMedCard014 :string = 'Týbbi kart için yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgMainMedCard016 :string = 'Teslim Alan :';
  msgMainMedCard017 :string = 'Bu kart üzerinden istek yapamazsýnýz';
  msgMainMedCard018 :string = 'Laboratuvar týbbi kartlarýný buradan silemezsiniz,';
  msgMainMedCard019 :string = 'Týbbi Kartý silmek için açýklama giriniz!';
  msgMainMedCard020 :string = 'Týbbi Kartý Açarken Hata Oluþtu.';
  msgMainMedCard021 :string = 'Þablon oluþturmak için, týbbi kartýn adýnýza açýlmýþ olmasý gerekiyor.';
  msgMainMedCard022 :string = 'Bu kayýt daha önce %s adý ile kaydedilmiþtir. Yapýlan deðiþiklikler þablona yansýmýþtýr.';
  msgMainMedCard024 :string = 'Ýlk önce yaptýðýnýz deðiþilikleri kaydediniz.';
  msgMainMedCard026 :string = 'Hastaya ait dikkat edilmesi gereken hastalýk(lar) var.';
  msgMainMedCard027 :string = 'Hastada Yatýþ Endikasyonu var mý?';
  msgMainMedCard028 :string = 'Fatura Ön Kontrolleri tamamlandýðý için deðiþiklik yapamayacaksýnýz.';
  msgMainMedCard029 :String = 'Hasta Takip Bilgilerini Göster';
  msgMainMedCard030 :String = 'Týbbi kart "Kullanýma Kapatýldýðý" için deðiþtiremezsiniz!';
  msgMainMedCard031 :String = 'Bu hastanýn daha önceden Adli vaka bilgisi vardýr.';
  msgMainMedCard032 :String = 'Hastanýn %s tarihli geliþ dosyasýna týbbi kart eklenecektir.';
  msgMainMedCard033 :String = 'Takip kartýnýn tedavi süresi geçmiþ. Tedavi devam etmiyorsa "Kullanýma Kapat" ile tedaviyi sonlandýrýnýz.';
  msgMainMedCard034 :String = 'Hastanýn Hasta Takip kaydý yoktur.Oluþturmak ister misiniz?';
  msgMainMedCard035 :String = 'Onaylanmýþ icmal içindeki bir dosyada deðiþiklik yapamazsýnýz.';
  msgMainMedCard036 :String = 'Medulaya gönderilmiþ (faturalanmýþ) bir dosyanýn hiçbir iþlemi deðiþtirilemez.Gönderimi iptal ediniz!' ;
  msgMainMedCard037 :String = 'Medulaya Ödeme Sorgusu gönderilmiþ veya faturalanmýþ bir ' + #13 +
          'dosya üzerinde hiç bir deðiþiklik yapamazsýnýz.Gönderimi iptal ediniz!';
  msgMainMedCard038 :String = 'Konsültasyon Sonuçlandý.';
  msgMainMedCard039 :String = '%s adlý hastanýn Konsültasyon cevabý girilmiþtir. Kontrol etmek için BURAYA týklayýn.';
  msgMainMedCard040 :String = 'Ýþlem tamamlandý. Kartý kapatmak istiyor musunuz?';
  msgMainMedCard041 :string = 'Týbbi karta baðlý iþlem bulunamadý!';
  msgMainMedCard042 :string = 'Tüm hasta reçetesi yapýþtýrýlacak devam edilsin mi?';
  msgMainMedCard043 :string = 'Týbbi Kart için þablon kaydedilsin mi?';
  msgMainMedCard044 :string = 'Týbbi Kart için þablondan veri okunsun mu?';
  msgMainMedCard045 :string = 'Týbbi Kart þablonunu silmek istediðinize emin misiniz?';
  msgMainMedCard046 :string = 'Taný/Tanýlar için þablon kaydedilsin mi?';
  msgMainMedCard047 :string = 'Taný/Tanýlar için þablondan veri okunsun mu?';
  msgMainMedCard048 :string = 'Taný/Tanýlar þablonunu silmek istediðinize emin misiniz?';
  msgMainMedCard049 :string = 'Elektronik olarak imzalandýðý için deðiþiklik yapamazsýnýz.';
  msgMainMedCard050 :string = 'Týbbi Kart daha önce imzalanmýþ. Devam edilsin mi?';
  msgMainMedCard051 :string = 'Sadece kendi adýnýza kayýtlý týbbi kartý imzalayabilirsiniz.' + #13 + 'Ýþleminiz iptal edildi.';
  msgMainMedCard052 :string = 'Sonuç notu deðiþtirilecek, devam edilsin mi?';
  msgMainMedCard053 :string = 'Týbbi kartýn kopyalanmaya çalýþýlýldýðý iþleme baðlý zaten onaylý bir týbbi kart mevcuttur.Kopyalama iþlemi iptal ediliyor.';
  msgMainMedCard054 :string = 'Týbbi kartýn kopyalanmaya çalýþýlýldýðý iþleme baðlý zaten farklý bir týbbi kart mevcuttur.Kopyalama iþlemi iptal ediliyor.';
  msgMainMedCard055 :string = 'Týbbi kartýn kopyalanmaya çalýþýlýldýðý iþleme baðlý onaysýz bir týbbi kart mevcuttur. Onaylanmasýný istiyor musunuz?';
  msgMainMedCard056 :string = 'Çekim iþlemi yapýlmamýþtýr.';
  msgMainMedCard057 :string = 'Tüm sekmeler mi yoksa geçerli sekmeyi mi kapatmak istiyorsunuz';
  msgMainMedCard058 :string = 'Tüm Sekmeler kapatýlacak. Devam etmek istiyor musunuz?';
  msgMainMedCard059 :string = 'Panik Bildirimi Gönderilmeye Uygun Deðildir. Ýþleminiz Ýptal Edildi.';
  msgMainMedCard060 :string = 'Hasta Borçlu olduðundan, Yazdýrma Ýþleminiz Ýptal Edildi.';
  msgMainMedCard061 :string = 'Silinmeye çalýþýlan kart tanýya baðlý olarak açýlmýþtýr. Ýlgili taný silindiðinde kartta otomatik olarak silinecektir. ';
  msgMainMedCard062 :string = 'Hastanýn "Teþhis Kodu" nu belirtmeden kaydetme iþlemi yapamazsýnýz.';
  msgMainMedCard063 :string = 'Tanýya baðlý oluþturulan %s adlý tibbi kartý silmek istiyor musunuz?';

//MaintenanceDescription
  msgMaintenanceDescription001 :string = 'Ýþ takip ile oluþturulan arýza kaydý iþ takip ekranýndan silinebilir.' +#13 + 'Ýþleminiz iptal edildi.';
  msgMaintenanceDescription002 :string = 'Bakým tipi "Arýza" seçilmemelidir. Arýza bakým tipi iþ takip ile oluþturulabilir. Ýþleminiz iptal edildi!';
  msgMaintenanceDescription003 :string = 'Çýkýþ Fiþleri Kaydediliyor...';
  msgMaintenanceDescription004 :string = 'Stoðun Serbest Çýkýþ (Sarf) hareketi olduðundan dolayý silinemez.!';
  msgMaintenanceDescription005 :string = 'Durumu tamamlanmadý olan bakýmlar bulundu!'+#13 + 'Ýþleminiz iptal edildi.';

//MaterialFactorInteractions
  msgMaterialFactorInteractions001 :string = '"Tipi" Bilgisi Dolu Olmalýdýr!';
  msgMaterialFactorInteractions002 :string = '"Etken" Bilgisi Dolu Olmalýdýr!';
  msgMaterialFactorInteractions003 :string = '"Etkileþen" Bilgisi Dolu Olmalýdýr!';
  msgMaterialFactorInteractions004 :string = '"Risk" Bilgisi Dolu Olmalýdýr!';
  msgMaterialFactorInteractions005 :string = 'Ayný etken madde listeye eklenmiþ. Ýþleminiz iptal edilecek.';
  msgMaterialFactorInteractions006 :string = '"Adý" Bilgisi Dolu Olmalýdýr!';
  msgMaterialFactorInteractions007 :string = 'Etken Madde Ýlaç listesinde kullanýlmýþ!';
  msgMaterialFactorInteractions008 :string = 'Etken Madde Etkileþim listesinde kullanýlmýþ!';
  msgMaterialFactorInteractions009 :string = 'Etken maddeyi içeren stoklarýn antibiyotik grubunu kontrol ediniz!';

//MaterialInvoice LRF_ID = 26
  msgMaterialInvoice001 :string = 'Muhasebeye aktarýlmýþ faturalarý deðiþtiremezsiniz.';
  msgMaterialInvoice002 :string = 'Evrak Giriþ Tipini belirtmek zorundasýnýz.';
  msgMaterialInvoice003 :string = 'Fatura ve/veya Ýrsaliye bilgileri girilmelidir.!';
  msgMaterialInvoice004 :string = 'Satýcý firmayý seçmeniz gerekmektedir.!';
  msgMaterialInvoice005 :string = 'Depo seçmeniz gerekmektedir.!';
  msgMaterialInvoice006 :string = 'Ayný Fatura/Ýrsaliye numarasý sisteme daha önceden kaydedilmiþ. Ýþleminiz iptal edildi.';
  msgMaterialInvoice007 :string = 'Miktar belirtilmemiþ. Miktar giriniz veya listeden çýkarýnýz!';
  msgMaterialInvoice008 :string = 'Birim belirtilmemiþ. Birimi belirtin veya listeden çýkarýnýz!';
  msgMaterialInvoice009 :string = 'Hastaya Özel malzemelerde, Malzemenin iþleneceði Hasta Geliþ Dosyasýný seçmek zorundasýnýz.';
  msgMaterialInvoice010 :string = 'Hastaya Özel malzemelerde, Fiyat bilgisi girmek zorundasýnýz.';
  msgMaterialInvoice011 :string = '%s adlý stok için girebileceðiniz miktar en fazla '+'%s %s'+' olabilir.';
  msgMaterialInvoice012 :string = '%s adlý stok için sipariþ miktarýný aþtýnýz. ' + #13 +
                          'Sipariþ Miktarý: %s %s'+ #13#13 + 'Devam etmek istiyor musunuz?';
  msgMaterialInvoice013 :string = 'Fatura/Ýrsaliye içindeki tüm stoklar Hastaya Özel malzeme olmak zorundadýr.';
  msgMaterialInvoice014 :string = ' adlý stok için, LOT ve/veya SKT takibi '+
                          'yapýlmasýn iþaretlendiðinden, varsa detay LOT bilgisi sisteme kaydedilmeyecek. Devam edilsin mi?';
  msgMaterialInvoice015 :string = ' adlý stok hasta dosyasýna iþlenemedi. El ile giriþ yapýnýz.';
  msgMaterialInvoice016 :string = #13+'Hastaya Özel malzemeler baþarýyla hasta dosyasýna iþlendi.';
  msgMaterialInvoice017 :string = #13+'Hastaya Özel malzemelerden bazýlarý hasta dosyasýna iþleneMEdi.';
  msgMaterialInvoice018 :string = 'Konsiye faturayý silemezsiniz.';
  msgMaterialInvoice019 :string = 'Fatura silinecek onaylýyormusunuz!';
  msgMaterialInvoice020 :string = 'Muhasebeye aktarýlmýþ faturalarý silemezsiniz.';
  msgMaterialInvoice021 :string = 'ÝTS ye gönderilmiþ bir kaydý silemezsiniz.';
  msgMaterialInvoice022 :string = 'Faturada yaptýðýnýz deðiþiklikleri kaydetmek istiyormusunuz.!';
  msgMaterialInvoice023 :string = ' adlý firma için Sipariþ kaydý bulunamadý.';
  msgMaterialInvoice024 :string = 'Mevcut liste ile eþleþtirme yapýlsýn mý?';
  msgMaterialInvoice025 :string = 'Üzerine eklensin mi?';
  msgMaterialInvoice026 :string = 'Sipariþ Döviz olarak verilmiþ. Fatura tarihine ait kur bilgisi bulunamadý.' +#13+' Ýþleminiz iptal edildi.';
  msgMaterialInvoice027 :string = 'Fiþ Numarasý Bul';
  msgMaterialInvoice028 :string = 'Logodan okumak istediðiniz fiþ numarasýný giriniz';
  msgMaterialInvoice029 :string = ' nolu stok bulunamadý.';
  msgMaterialInvoice030 :string = ' nolu stoðun logo ile eþleþen birimi bulunamadý.';
  msgMaterialInvoice031 :string = ' nolu stoða ait birden fazla taným bulundu.';
  msgMaterialInvoice032 :string = ' adlý stok miktarý sipariþ miktarýndan fazla olduðu için eþleþtirilemedi';
  msgMaterialInvoice033 :string = ' adlý stok miktarý sipariþ miktarýndan fazla. Devam etmek istiyor musunuz?';
  msgMaterialInvoice034 :string = ' Kalem stok sipariþ ile eþleþtirildi.';
  msgMaterialInvoice035 :string = 'Hastaya özel malzemeleri iþlemek için Geliþ Dosyasýný seçmek zorundasýnýz. Tekrar seçmek istermisiniz?';
  msgMaterialInvoice036 :string = 'Fatura aktarýlmýþ, aktarýlacak kayýt bulunamadý.';
  msgMaterialInvoice037 :string = 'Ýrsaliye-Konsiye olarak iþlenmiþ bir evraðý, faturaya taþýyacaksýnýz. '+#13+ 'Devam etmek istiyor musunuz?';
  msgMaterialInvoice038 :string = 'Yeni bir Fatura kaydý açmak istiyor musunuz?';
  msgMaterialInvoice039 :string = ' barkodlu stok bulunamadý.';
  msgMaterialInvoice040 :string = 'Karekod giriþi sistemde bulunamadý. Ýþleminiz iptal edildi.';
  msgMaterialInvoice041 :string = 'Karekod giriþi ÝTS sistemine SARF edildi olarak kaydedildiði için, ,iþleminiz iptal edildi.';
  msgMaterialInvoice042 :string = 'Karekod giriþi ÝTS sistemine gönderilmemiþ. Ýþleminiz iptal edildi.';
  msgMaterialInvoice043 :string = 'Ýlaç takip sistemine gönderilen ilaçlarýn gönderimleri iptal edildikten sonra iþleme devam edebilirsiniz.';
  msgMaterialInvoice044 :string = 'Ýlaç Takip Sistemine gönderilmiþ bir stoðu silmek için ilk önce gönderimi iptal etmelisiniz.';
  msgMaterialInvoice045 :string = ' adlý kurum için ÝTS kodu girilmemiþ.';
  msgMaterialInvoice046 :string = 'Geçersiz Son Kullanma Tarih adý. Varsayýlan : expirationDate';
  msgMaterialInvoice047 :string = 'Geçersiz Lot adý. Varsayýlan : lotNumber';
  msgMaterialInvoice048 :string = 'Kurumunuz adýnýza düzenlenmiþ bir xml dosyasý deðil';
  msgMaterialInvoice049 :string = ' GLN numaralý firma bulunamadý. Firma tanýmlarýna bakýnýz.';
  msgMaterialInvoice050 :string = 'Transfer numarasýný giriniz.';
  msgMaterialInvoice051 :string = 'Bu stok için sipariþten alýnan fiyat "%s" liradýr.Bunun üstünde bir fiyat girdiniz. Ýþleminiz iptal edilecek';
  msgMaterialInvoice052 :string = 'Son Kullanma Tarihi bugünden küçük olamaz.';
  msgMaterialInvoice053 :string = 'Farklý Son Kullanma Tarihi ile çoðaltmanýz için seçilen ' + 'malzemenin son kullanma tarihi olmasý gerekir.';
  //msgMaterialInvoice054 :string = 'Düzenleme için belirtilen kart bulunamadý.';
  msgMaterialInvoice055 :string = ' adlý stok için ITS kaydýna uygun LOT bilgisi bulunamadý.';
  msgMaterialInvoice056 :string = ' alanlarýný girmek zorundasýnýz.';
  msgMaterialInvoice057 :string = 'Bu stok için sipariþten alýnan fiyat "%s" liradýr.Bunun üstünde bir fiyat girdiniz. Devam etmek istiyor musunuz?.';
  msgMaterialInvoice058 :string = ' adlý stok birden fazla sipariþde olduðundan, sipariþ takibi yapýlamýyacak.';
  msgMaterialInvoice059 :string = 'Sýkýþtýrýlmýþ Dosya (*.zip)|*.zip';
  msgMaterialInvoice060 :string = 'Alýnan sýkýþtýrýlmýþ dosyasýnýn kaydedileceði yeri seçin:';
  msgMaterialInvoice061 :string = 'Fatura ve/veya Ýrsaliye tarihi bugünden ileri bir tarih olamaz.';
  msgMaterialInvoice062 :string = 'Stok Saðlayýcý Firma Bilgileri';
  msgMaterialInvoice063 :string = 'Kaydedilmiþ faturada miktar deðiþtirelemez!' + #13 + '%s adlý malzeme için iþlem yapýlamadý.';
  msgMaterialInvoice064 :string = 'Vade gün deðeri 1 ile 365 arasý bir deðer olmalýdýr!';
  msgMaterialInvoice065 :string = 'Fatura ve Ýrsaliye tarihi sistem tarihinden büyük olamaz!';
  msgMaterialInvoice066 :string = 'Sarf Bildirimi ile ürün ÝTS sisteminde çýkar ve tekrar aktive edilemez.';
  msgMaterialInvoice067 :string = 'Sarf Ýþlemi Ýçin Açýklama Giriniz';
  msgMaterialInvoice068 :string = 'Fatura/Ýrsaliye No veri giriþ formatý "B1234567" veya "B1234567-8" þeklinde ilk karakter Harf diðerleri Rakam olmak zorundadýr.';
  msgMaterialInvoice069 :string = 'Stok Ýade Faturasý';
  msgMaterialInvoice070 :string = 'Fark Fiyatý Faturasý';
  msgMaterialInvoice071 :string = 'Seçilen faturada bulunan alým fiyatýndan büyük deðer giremessiniz.';
  msgMaterialInvoice072 :string = 'Ýade faturasý veya fark fiyat faturasý kesilmiþ, faturalarý silemessiniz.';
  msgMaterialInvoice073 :string = 'E-Fatura numarasý 16 karakter olmalýdýr.';
  msgMaterialInvoice074 :string = '"ÝTS Ýptal" iþleminde seçilen "Karekod" lar ayný firmaya ait olmalýdýr.';
  msgMaterialInvoice075 :string = 'Seçilen stokda birim tanýmý bulunamadý! (';
  msgMaterialInvoice076 :string = 'Deaktivasyon Sebebini seçiniz!';
  msgMaterialInvoice077 :string = 'Faturanýz silindi! Malzemeleriniz Ýrsaliye Faturasýna gönderildi!';
  msgMaterialInvoice078 :string = 'Ýrsaliye sonrasý faturaya eklenmiþ malzemeler bulundu! Faturanýzý Kontrol ediniz!';
  msgMaterialInvoice079 :string = ' stok için sipariþten alýnan fiyat, faturadan gelen fiyattan az olduðu için güncellenemedi';
  msgMaterialInvoice080 :string = 'Seçilen kaydýn ''alýþ kdv oraný'' deðiþtirildi! kayýt üzerinde de uygulansýn mý?';
  msgMaterialInvoice081 :string = '%s adlý malzemenin alýþ fiyatý %f TL. Þuan girilen alýþ-birim fiyatý ise %f TL. ' + #13#10 +
                                  'Ýþlemin fiyat bilgileri deðiþtirilecektir.' + #13#10 +
                                  'Devam etmek istiyor musunuz?';
  msgMaterialInvoice082 :string = 'Aþaðýdaki stok/stoklarý sadece anlaþmalý firmalardan alabilirsiniz.';
  msgMaterialInvoice083 :string = 'Depo ve kurum bilgisi boþaltýlsýn mý?';
  msgMaterialInvoice084 :string = 'Öncelikle %s protokol numaralý geliþ dosyasýndan, özellikli malzeme olarak hastaya iþlenen stok/stoklarý siliniz.';
  msgMaterialInvoice085 :string = 'Bu stok için sipariþten alýnan fiyat "%s" liradýr. Bunun altýnda bir fiyat girdiniz. Devam etmek istiyor musunuz?.';
  msgMaterialInvoice086 :string = 'En az bir adet detay satýrý olmasý gerekmektedir.';
  msgMaterialInvoice087 :string = ' barkodlu stok kullanýmda deðildir. Stok tanýmlama kartýný açmak istiyor musunuz?';
  msgMaterialInvoice088 :string = 'Seçilen stok hasta dosyasýnda bulunduðu için deðiþiklik yapamazsýnýz!';
  msgMaterialInvoice089 :string = 'Bu stok için anlaþmada tanýmlanan fiyat "%s" liradýr.Bunun üstünde bir fiyat girdiniz. Devam etmek istiyor musunuz?.';
  msgMaterialInvoice090 :string = 'Bu stok için anlaþmada tanýmlanan fiyat "%s" liradýr.Bunun üstünde bir fiyat girdiniz. Ýþleminiz iptal edilecek';
  msgMaterialInvoice091 :string = 'Bu stok için anlaþmada tanýmlanan fiyat "%s" liradýr. Bunun altýnda bir fiyat girdiniz. Devam etmek istiyor musunuz?.';
  msgMaterialInvoice092 :string = '[Hasta Üzerine Alýnan Stoklarda]' + #13#10 +
       'GSS Faturalama Ýþlemleri, Malzeme Fatura Tarihi yanlýþ gönderilmemesi için, Seçilen Ürünlerde SKT/LOT iþaretli olmalýdýr. ' + #13+#10 +
              'Ýþleminiz Ýptal Edildi.';
  msgMaterialInvoice093 :string = 'Gönderilecek Miktar(%d) ile UTS Kayýt veri sayýsý(%d) uyuþmamaktadýr. Ýþlem Ýptal Edildi.';
  msgMaterialInvoice094 :string = 'Lot Takipli Bildirim Yapýlacak, Bir yada Birden Fazla Satýr Miktar Etkinecek. Bildirim Yapýlacak Miktar = %d   Bildirim Yapýlsýn mý?';
  msgMaterialInvoice095 :string = 'Alma Bildirimi Yapýlmýþ ÜTS Malzemeleri Bulundu.';
  msgMaterialInvoice096 :string = 'E-Fatura Web Servis Mesajý: Firma e-Fatura Mükellefidir.';
  msgMaterialInvoice097 :string = 'Firma tanýmýnda E-Fatura posta kodu tanýmý bulunmaktadýr.';
  msgMaterialInvoice098 :string = 'Firma Tanýmlayýcý Numarasý olmadan yapýlan sorgularda Kuruma verilen tüm ÜTS Faturalarýnýn getirilmesi uzun sürebilir. ';
  msgMaterialInvoice099 :string = 'Aktarmadan Önce Stoklarýn Bizmed Ýle Eþleþiyor Mu Kontrol Edilmeli! ';
  msgMaterialInvoice100 :string = 'Bizmed Stok Listesi Ýle Eþleþmeyen Stok Bulundu. Aktarým Ýptal Edildi.';
  msgMaterialInvoice101 :string = 'ÜTS Servisinden Gelen Ürünler Bizmed ''''e Aktarýlsýn mý? ';
  msgMaterialInvoice102 :string = ' için Son Kullaným Tarihi bilgisi girmeniz gerekmektedir.';
  msgMaterialInvoice103 :string = ' adlý stok UBB Kodunu Giriniz';
  msgMaterialInvoice104 :string = 'Depolar farklý, kayýt için depo seçimi yapmalýsýnýz!';
  msgMaterialInvoice105 :string = 'Fatura Formlarý Ýçin yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgMaterialInvoice106 :string = 'Satýþ Faturasý';
  msgMaterialInvoice107 :string = 'Yeni stok tanýmý yapmak ister misiniz?';

//MaterialWareHouseDetail
  msgMaterialWareHouseDetail001 :string = 'Malzeme bu deponun kullanýmýndan çýkarýlacak devam etmek istiyormusunuz!?';
  msgMaterialWareHouseDetail002 :string = ' adlý stoðun Min, Max ve Kritik deðerleri, bu stoðun Muadillerinin deðerlerine atanacaktýr. Devam etmek istiyor musunuz?';
  msgMaterialWareHouseDetail003 :string = 'Seçili stoðun muadili yok!' +#13 + 'Ýþleminiz Ýptal edildi.';
  msgMaterialWareHouseDetail004 :string = 'Hastanýn yanýndaki ilaç olarak eklensin mi?' +#13#13 +
       'Bu uyarýyý almamak için "Hastanýn Yanýndaki Ýlaçlarý Göster" iþaretini kaldýrýnýz.';
  msgMaterialWareHouseDetail005 :string = 'Ýstek yapýlan depoda miktar ''0'' olduðundan muadil stok gönderilebilir. Devam etmek istiyormusunuz.';
  msgMaterialWareHouseDetail006 :string = 'Depo düzeltme iþlemini seçiniz';
  msgMaterialWareHouseDetail007 :string = 'Depoya Göre';
  msgMaterialWareHouseDetail008 :string = 'Tarih Seçmelisiniz';
  msgMaterialWareHouseDetail009 :string = 'Üst stok grubunda stok(lar) mevcut!' +#13 + 'Üst stok bu deponun kullanýmýndan çýkartýlamaz.';
  msgMaterialWareHouseDetail010 :string = 'Narkotik ilaç eklenecek. Devam etmek istiyor musunuz?';
  msgMaterialWareHouseDetail011 :string = '1000 kayýttan fazla seçim yapamazsýnýz';

//Material_Def
  msgMaterial_Def001 :string = 'Stok hasta dosyalarýnda kullanýldýðýndan silinemez.!' + #13 +
                       'Öncelikle hasta iþlemlerini silmelisiniz.';
  msgMaterial_Def002 :string = 'Stok tanýmý silinecek.! Ýþleme devam etmek istiyormusunuz.';
  msgMaterial_Def003 :string = ' adlý stok seri barkodlu olduðu için sadece üzerindeki barkodu okutarak iþlem yapabilirsiniz.'+#13+
                       'Detaylý bilgi için ilgili ana depoyu arayýnýz.';
  msgMaterial_Def004 :string = 'Elinizde seri barkodu olmayan stok kalmadýðýndan iþleminiz iptal edilecek.';
  msgMaterial_Def005 :string = 'Kullanýmda olmayan "%s"  adlý stoðu iþleyemezsiniz.';
  msgMaterial_Def007 :string = 'Stok mevcudu sýfýrýn altýna düþeceði için, iþleminiz iptal edilecek.';
  msgMaterial_Def008 :string = 'Seri barkodlu stoðun iptali barkod okutularak yapýlmalýdýr.';
  msgMaterial_Def009 :string = 'Elinizdeki miktar yetersiz.';
  msgMaterial_Def011 :string = 'Tekrar kullanýlabilen stoklarýn tükendi durumunu belirtmelisiniz.';
  msgMaterial_Def012 :string = '%s tarihinde %s adlý depo için hasta üzerine gönderilmiþ stok bulunamadý.';
  msgMaterial_Def013 :string = ' adlý stoðun KOPYASI oluþturulacak.'+#13+ 'Devam etmek istiyor musunuz?';
  msgMaterial_Def014 :string = 'Bu iþlemden sonra %s adlý stoktan deponuzda kalmayacak.';
  msgMaterial_Def015 :string = 'Bu iþlemden sonra %s adlý stok Kritik deðere ulaþacak.';
  msgMaterial_Def016 :string = 'Bu iþlemden sonra elinizde %s adlý stok Kritik deðerin altýna düþecek.';
  msgMaterial_Def017 :string = ' adlý stok kritik deðerin altýnda.';
  msgMaterial_Def018 :string = 'Hastalara iþlenmiþ stoklar güncellenecek. Devam edilsin mi?';
  msgMaterial_Def019 :string = 'Stoðu barkod okutarak iþlem yapabilirsiniz, iþleminiz iptal edildi!';
  msgMaterial_Def020 :string = '%s adlý stok "Masraf Merkezi Stoðu" seçilmiþ, iþleminiz iptal edildi!';
  msgMaterial_Def021 :string = 'Üst Stok tanýmý silinecek! Ýþleme devam etmek istiyormusunuz.';
  msgMaterial_Def022 :string = 'Yüksek Riskli Ýlaçtýr!';
  msgMaterial_Def023 :string = 'Yeni eklenen stok "%s" deposuna eklenecek!';
  msgMaterial_Def024 :string = 'Ýlaç tipinde üst stok tanýmý yapýlamaz!';
  msgMaterial_Def025 :string = 'Hastaya order isteði yapýlmýþ ve uygulanmamýþ stok "Stok ekle" ile kullanýlamaz!';
  msgMaterial_Def026 :string = 'Order isteklerinde istenmiþ ve uygulanmamýþ istekler mevcut! Depo mevcudu yetersiz olduðundan "Stok ekle" ile kullanýlamaz!';
  msgMaterial_Def027 :string = 'Order isteklerinde istenmiþ ve uygulanmamýþ istekler mevcut! Depo mevcudu order isteklerini karþýlamasý için miktar olarak "';
  msgMaterial_Def028 :string = ' adlý stok "Medula Kutu Birim" miktarýndan fazla istenemez!';
  msgMaterial_Def029 :string = 'Medula Kutu Birim Miktarý :';
  msgMaterial_Def030 :string = 'Stok Satýþ birimi ile en küçük birim uyumsuz! Stok tanýmýný düzeltip devam edebilirsiniz.';
  msgMaterial_Def031 :string = 'Stoðu barkod okutarak iþlem yapamazsýnýz, iþleminiz iptal edildi!';



//Messenger
  msgMessenger001 :string = 'Seçilen þubeye ait kullanýcý bulunamadý.';
  msgMessenger002 :string = 'Seçilen þubeye ait aktif kullanýcý bulunamadý.';

//NewSearchPatient
  msgNewSearchPatient001 :string = 'Girilmesi gereken karakter sayýsý en az %s olmalýdýr.';
  msgNewSearchPatient002 :string = 'Aranacak yeri seçmelisiniz';
  msgNewSearchPatient003 :string = 'Randevunun durumu "%s" , devam etmek istiyor musunuz?';

//IsparkPatientCar
  msgIsparkPatientCar001 : string = 'Kart baþlangýncýnda 04 bulunmuyor.';
  msgIsparkPatientCar002 : string = 'Baðlý cihaz bulunamadý!';
  msgIsparkPatientCar003 : string = 'Kurum bilgisi veya ip bilgi boþ lütfen kontrol ediniz.';
  msgIsparkPatientCar004 : string = 'Ýþleminiz baþarýlý olarak tamamlandý.';


//Objects
  msgObjects001 :string = 'Disk'' ten aktarma iþlemi baþarýyla tamamlandý.';
  msgObjects002 :string = 'Baðladýðýnýz rapor(lar)daki Form''un OnCreate olayýna FormCreate olayýný baðlamayý unutmayýn.';
  msgObjects003 :string = 'Sadece seçili grubu güncellemek istiyormusunuz?';
  msgObjects004 :string = 'Dream komponenti kaldýrýlacak.';
  msgObjects006 :string = 'Grubu Sil';
  msgObjects007 :string = 'Seçiliyi Sil';
  msgObjects008 :string = 'Aþaðýdaki nesnelerde hata oluþtu:';
  msgObjects009 :string = 'Formu düzenlemek ister misiniz?';

//PackageDefinition
  msgPackageDefinition001 :string = 'Doktor bilgisi girmediðiniz için, "%s" adlý hizmet hastanýn dosyasýna iþlenmiyecek.'+#13+
                            'Devam etmek istiyor musunuz?';
  msgPackageDefinition004 :string = 'Bu iþlem için bir tarife adý seçmelisiniz.';
  msgPackageDefinition005 :string = ' adlý stok için Lot Takip barkodlarýný okutularak giriþ yapýnýz.';
  msgPackageDefinition006 :string = 'Pakete ait hizmet tanýmlarýda silinecek'+#13+ 'Ýþleme devam edilsin mi?';
  msgPackageDefinition007 :string = 'Paket Tiplerine yetkiniz bulunmamaktadýr.!';

//Password
  msgPassword001 :string = 'Kullanýcý bilgilerinize ulaþýlamýyor.';
  msgPassword002 :string = 'Þifrenizde ''%s'' karakterini kullanamazsýnýz.';
  msgPassword003 :string = 'Þifreniz baþarýyla deðiþtirilmiþtir.'+#13+
          'Bundan sonraki giriþlerde yeni þifrenizi kullanmayý unutmayýn.';

//PatBlackList
  msgPatBlackList001 :string = ' nolu TC Kimlik numarasý daha önceden girilmiþ';
  msgPatBlackList002 :string = ' nolu Karne numarasý daha önceden girilmiþ';
  msgPatBlackList003 :string = 'Not girmelisiniz';
  msgPatBlackList004 :string = ' nolu Dosya numarasý daha önceden girilmiþ';
  msgPatBlackList005 :string = 'SMS, Mail veya Arama engelleme seçebilmek için hasta bilgisi dolu olmalý!';
  msgPatBlackList006 :string = 'Engelleme tipinden biri seçilmeli!';
  msgPatBlackList007 :string = ' nolu Pasaport numarasý daha önceden girilmiþ';

//PatGenInfo
  msgPatGenInfo001 :string = 'taný(lar) mevcut.' + #13#13 + 'Ýlk önce tanýlarý silip sonra hastalýklarý düzenleyiniz!';
  msgPatGenInfo002 :string = 'Ýþlem baþarýsýz.' + #10 + 'Bu iþ planý belirttiðiniz hastaya zaten uygulanmýþ.';
  msgPatGenInfo003 :string = 'Hasta için plan yaptýðýnýz tarihten %s %s tanýmlanmýþ bir plan mevcut.' + #10 + 'Planýnýzý bu tarihe yapmak ister misiniz?';
  msgPatGenInfo004 :string = 'Ýþlem baþarýlý.' + #10 + 'Belirttiðiniz iþ planý hastaya uygulanmýþtýr';
  msgPatGenInfo005 :string = 'Kronik hastalýklarda ilk taný tarihi dolu olmalýdýr!' +#13 +'Ýþleminiz iptal edildi.';
  msgPatGenInfo006 :string = '"%s" protokol numaralý dosyada "%s" hastalýðýna ait;' + #13#13;
  msgPatGenInfo007 :string = 'Ameliyathane modülü ile otomatik iþlenen "%s" iþlemi silinemez.' + #13#13;
  msgPatGenInfo008 :string = 'Otomatik olarak kaydedilen hastalýk silinemez.';

  //PatIdentity
  msgPatIdentity002 :string = 'Bu kurumu seçmeniz için hastanýn kurum kartý olmasý ve '+#13+ 'kartý kullanarak dosyayý açmanýz gerek.';
  msgPatIdentity003 :string = 'Hasta sistemde "vefat" etti görünüyor, yeni geliþ dosyasý açamazsýnýz.';
  msgPatIdentity004 :string = 'Hasta sistemde yatýyor gözüktüðü için iþleminiz iptal edilecek.';
  msgPatIdentity005 :string = 'Hastanýn önceki dosyasýnýn çýkýþý yapýlmamýþ.' + #13 + 'Öncelikle çýkýþ iþleminin yapýlmasý gerekmektedir';
  msgPatIdentity006 :string = 'Hastanýn önceki dosyasý kapatýlmamýþ.' + #13 + 'Dosyayý kapatmak istiyormusunuz?' + #13;
  msgPatIdentity007 :string = 'Hastanýn önceki dosyasý kapatýlmamýþ.' + #13 + 'Ýþleme devam edilebilmesi için' + #13 +
                      'açýk olan dosyanýn kapatýlmasý gerekmektedir.' + #13;
  msgPatIdentity008 :string = 'Tahsilat yapma yetkiniz yok.';
  msgPatIdentity009 :string = 'Hasta dosyasý için yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgPatIdentity010 :string = 'Hastanýn Saðlýk-Net de kaydedilmiþ protokolleri mevcut. Lütfen ilk önce mevcut protokolleri siliniz.';
  msgPatIdentity011 :string = 'Birleþtirilmiþ bir dosyayý silemezsiniz.';
  msgPatIdentity012 :string = 'Hasta geliþ dosyasý ve dosyaya ait' +#13+'  Hizmetler, Ýndirimler, Faturalar, Tahsilatlar ve Týbbi Kartlar'
                      +#13+'silinecek.' +#13 +#13+'Bu iþlemin geri dönüþü YOKTUR. Ýþleme devam etmek istiyor musunuz?';
  msgPatIdentity013 :string = 'Hastanýn "Adýný, Soyadýný, Baba Adýný, Kurumunu, Cinsiyetini, Doðum Tarihini (Geçerli bir tarih) ve Hasta Tipini" belirtmek zorundasýnýz.';
  msgPatIdentity014 :string = '''%s''' + ' T.C. Kimlik numaralý hasta ' + #13 + 'daha önce %s dosya numarasý ile kaydedilmiþ.' + #13 + #13 +
                      'Hastanýn önceki dosyasýndan devam etmek istiyormusunuz?.' + #13;
  msgPatIdentity015 :string = 'Hasta kaydýnda, kontrol edilmesi gereken Not(lar) var...'+#13+'Ýþleme devam edemezsiniz.';
  msgPatIdentity017 :string = 'Hasta kaydý silinecek, iþleme devam etmek istiyor musunuz?';
  msgPatIdentity018 :string = 'Hastaya ait borç(lar) bulundu, tahsil etmek istiyor musunuz?';
  msgPatIdentity019 :string = 'Diðer iletiþim bilgilerinde aþaðýdaki alan(lar) boþ býrakýlamaz.' + #13;
  msgPatIdentity021 :string = 'Varolan arþiv numarasýný silip yenisini almak istiyor musunuz?';
  msgPatIdentity022 :string = 'Arþiv numarasý girmek zorundasýnýz.';
  msgPatIdentity023 :string = ' Kýrmýzý renkle gösterilen dosyalar, hastanýn provizyonu alýnmamýþ iþlemlerinin olduðu geliþ dosyalarýdýr.';
  msgPatIdentity024 :string = 'Dosyayý baþka bir hastaya taþýmak üzeresiniz, iþleme devam edilsin mi?';
  msgPatIdentity025 :string = ' adlý doktor pasif durumda, farklý doktor seçip iþleme devam edebilirsiniz.';
  msgPatIdentity026 :string = 'Resim almak için kamera açýlýyor.';
  msgPatIdentity027 :string = 'Kamera bulunamadý!';
  msgPatIdentity028 :string = 'Kaydetmek istediðiniz hastanýn '+ #13 + 'daha önce XXX ismi ile kaydý bulunmaktadýr.' + #13 + #13 +
                      'Hastanýn önceki dosyasýndan devam etmek istiyormusunuz?.' + #13;
  msgPatIdentity029 :string = 'Þubeler farklý ! dosyalarý birleþtirme iþlemine devam etmek istiyormusunuz?';
  msgPatIdentity030 :string = 'Seçili olan dosyaya baðlý fizik tedavi seans randevularý olduðu için silme iþleminiz iptal edilecek';
  msgPatIdentity031 :string = 'Faturasý kesilmiþ iþlem olduðu için iþleminiz iptal edildi.';
  msgPatIdentity032 :string = 'Hastanýn dasyasýnda "Ýptal/Ýade" faturasý mevcut. Dosyalarý birleþtirme iþlemine devam etmek istiyor musunuz?';
  msgPatIdentity033 :string = 'Cihazdan gelen bilgidir, deðiþtirilemez!';
  msgPatIdentity034 :string = 'Yaþ bilgisini giriniz';
  msgPatIdentity035 :string = 'Hasta kartýnýn son kullanma tarihinin dolmasýna " %s gün" kaldý.';
  msgPatIdentity036 :string = ' Kýrmýzý renkle gösterilen dosyalar, hastanýn borçlu olduðu geliþ dosyalarýdýr.';
  msgPatIdentity037 :string = 'Hasta Kart Bilgileri';
  msgPatIdentity038 :string = 'Hasta kartýnýn son kullanma tarihi geçti.';
  msgPatIdentity039 :string = 'Kart Numarasý            : ';
  msgPatIdentity040 :string = 'Son Kullanma Tarihi  : ';
  msgPatIdentity041 :string = 'Kart Tipi                       : ';
  msgPatIdentity042 :string = 'Hasta tipi seçilmelidir.';
  msgPatIdentity043 :string = 'Hasta geliþ dosyasýna ait, e-Nabýz gönderim bilgileri silinerek iþleme devam edilsin mi?';
  msgPatIdentity044 :string = 'e-Nabýz takibi silinirken hatayla karþýlaþýldý, tüm iþlemler iptal edildi.';
  msgPatIdentity045 :string = 'Seçilen özel durum ile hastanýn yaþý uyuþmamaktadýr!';
  msgPatIdentity046 :string = 'Seçilen özel durum ile hastanýn cinsiyeti uyuþmamaktadýr!';
  msgPatIdentity047 :string = 'Seçilen dosya içerisinde belirtilen tarihler arasýnda ki tüm iþlemler yeni dosya açýlarak taþýnacak devam etmek istiyormusunuz?';
  msgPatIdentity048 :string = 'Seçilen tarihler arasýnda kayýt bulunamadý?';
  msgPatIdentity049 :string = 'Stok Ýstekleriniz Bölen Geliþ Dosyasýna taþýnmýþtýr.';
  msgPatIdentity050 :string = 'Yabancý uyruklu veya kimlik türü pasaport olarak seçilmiþ hastalarda "Pasaport No" ve "Uyruðu" bilgilerinin girilmesi zorunludur.';
  msgPatIdentity051 :string = 'TC Kimlik Numarasýný silmek istediðinize emin misiniz ?';
  msgPatIdentity052 :string = 'Hastaya ait faturalandýrýlmýþ dosya mevcut olduðundan TC Kimlik No silinemez.';
  msgPatIdentity053 :string = 'Hastaya ait takibi alýnmýþ dosya mevcut olduðundan TC Kimlik No silinemez.';
  msgPatIdentity054 :string = 'E-Fatura Web Servis Mesajý: Hasta e-Fatura Mükellefidir.';
  msgPatIdentity055 :string = 'Kimlik türü pasaport olarak seçilmiþ hastalarda "Pasaport No" ve "Uyruðu" bilgilerinin girilmesi zorunludur.';
  msgPatIdentity056 :string = ' Senet : ';
  msgPatIdentity057 :string = ' Çek : ';
  msgPatIdentity058 :string = 'Onay Ýsteði';
  msgPatIdentity059 :string = 'Onaylamanýz gereken yeni geliþ dosyasý var. Onaylamak için týklayýnýz.';
  msgPatIdentity060 :string = 'Oluþturduðunuz geliþ dosyasý için onay durumu sonuçlandý. Dosyayý açmak için týklayýnýz.';
  msgPatIdentity061 :string = 'Onay Ýsteði Sonuçlandý';
  msgPatIdentity062 :string = 'Hastanýn "Vefat" þeklinde bir çýkýþý bulunmamaktadýr.';
  msgPatIdentity063 :string = ' Açýk Tahsilat : ';
  msgPatIdentity064 :string = 'Yabancý uyruklu hastalarda "Yabancý Hasta Türü" bilgisinin girilmesi zorunludur.';
  msgPatIdentity065 :string =  'Hastaya özel %s adlý kampanya son bir yýl içerisinde hasta tarafýndan kullanýlabilecek maksimum miktara ulaþtýðýndan yeni dosyaya tanýmlanamadý.'; //159176;KDUMAN;08.08.2019
  msgPatIdentity066 :string = 'Hasta tipi "Vatandaþ" seçilmiþ hastaya TC Kimlik No girilmesi zorunludur.';
  msgPatIdentity067 :string = 'Girdiðiniz Cep telefon numarasý aþaðýdaki hastalarda da kayýtlý.';

//PatientDialysis
  msgPatientDialysis001 :string = 'Hastaya girilmiþ eski seans bilgileri var, hepsini silmek istediðinize emin misiniz?';
  msgPatientDialysis002 :string = 'Ana taný seçilmemiþ devam etmek istiyor musunuz?';
  msgPatientDialysis003 :string = 'Diyaliz bilgilerinde ana taný mevcut. Birden fazla ana taný ekleyemezsiniz!';
  msgPatientDialysis004 :string = 'Hastalýk bilgilerinde seçilen taný mevcut!' + #13 + 'Ýþleminiz iptal edildi.';
  msgPatientDialysis005 :string = 'Diyaliz bilgileri Saðlýk-Net''e kaydedildiði için iþleminiz iptal edildi';
  msgPatientDialysis006 :string = 'URR Testi Giriþi Yapýnýz: ';

//PatientDialysisList
  msgPatientDialysisList002 :string = 'Hastaya ait bir diyaliz dosyasý bulunamadý.! Hasta eklenemedi.';

//PatientFile - LRF_ID = 14
  msgPatientFile001 :string = 'Muhasebeye aktarýlmýþ iþlemler üzerinde deðiþiklik yapamazsýnýz.';
  msgPatientFile002 :string = 'Tüm icmalleri görme yetkiniz yok.';
  msgPatientFile003 :string = 'Baþka bir kullanýcýnýn açtýðý icmali Aktif yapamazsýnýz.';
  msgPatientFile004 :string = 'Ýcmal aktif edilemedi.';
  msgPatientFile005 :string = 'Ýcmalin ve varsa alt icmallerin içindeki hastalarýn fatura tarihleri deðiþtirilsin mi?';
  msgPatientFile006 :string = 'Belirtilen ay içerisine daha önceden dönem açýlmýþ.';
  msgPatientFile007 :string = 'Taným kaydý üzerinde iþlem yapamazsýnýz.';
  msgPatientFile008 :string = 'Dönemi kopyalayamazsýnýz.';
  msgPatientFile009 :string = 'Seçili icmali buraya taþýyamazsýnýz.';
  msgPatientFile011 :string = 'Faturalanmýþ dosya üzerinde hiçbir deðiþiklik yapamazsýnýz.';
  msgPatientFile012 :string = 'Medulaya Ýþlem kaydý yapýlmýþ veya faturalanmýþ bir '+
                      'dosya üzerinde hiç bir deðiþiklik yapamazsýnýz.';
  msgPatientFile013 :string = 'Fatura Ýptal';
  msgPatientFile014 :string = 'Tahsilat silme';
  msgPatientFile015 :string = 'Ýndirim Ýptal';
  msgPatientFile016 :string = 'Ýþlem silme';
  msgPatientFile017 :string = 'Týbbi kart silme';
  msgPatientFile018 :string = 'Stok, Hastaya Özel olduðu için ve yetkiniz olmadýðýndan deðiþtiremezsiniz.';
  msgPatientFile019 :string = ' adlý iþlemin türünü (Hizmet-Stok) silme yetkiniz yok.';
  msgPatientFile020 :string = 'Ödenmiþ bir senedi silemezsiniz.';
  msgPatientFile021 :string = 'Ödenmiþ bir çeki silemezsiniz.';
  msgPatientFile022 :string = 'Silinecek tahsilata baðlý "Geri Ödeme(ler)" bulundu.'+#13+
                      'Silme iþlemine devam ederseniz bu kayýt(lar)da silinecek'+#13+
                      'Devam etmek istiyor musunuz?';
  msgPatientFile023 :string = 'Çýkýþ yapýlmýþ bir dosyada yatak deðiþimi yapamazsýnýz.';
  msgPatientFile024 :string = 'Yeni seçilen kurum SGK kapsamýndadýr. Medula kontrollerinde hata alýndýðýndan iþleminiz iptal edildi.' + #13#13;
  msgPatientFile025 :string = 'Kurum deðiþikliði kimlik dosyasýna da uygulansýn mý?';
  msgPatientFile026 :string = 'Seçili iþlemlerin fiyat bilgileri deðiþtirilecek, Lütfen deðiþtirilecek kýsmý seçiniz:';
  msgPatientFile027 :string = 'Seçili iþlemlerin indirim istekleri iptal edilecek.';
  msgPatientFile028 :string = 'Kurum deðiþikliði tahsilatlarada uygulanacaktýr.';
  msgPatientFile029 :string = 'Ýlk önce kapanýþ ve çýkýþ iþlemini iptal etmeniz gerekmektedir.';
  msgPatientFile030 :string = 'Ýþlemini yapabilmeniz için "Saðlýk-NET Online Protokol" leri "Medula/Diðer" ' +
                      'sekmesinden silmeniz gerekiyor.' + #13#13+  'Ýþleminiz Ýptal edilmiþtir.';
  msgPatientFile031 :string = 'Bölüm deðiþikliði hastaya ait iþlemlerede uygulansýn mý?';
  msgPatientFile033 :string = 'Doktor deðiþikliði hastaya ait iþlemlerede uygulansýn mý?';
  msgPatientFile034 :string = 'Doktor onayý verilmiþ iþlem(ler) üzerinde deðiþiklik yapacaksýnýz. ' + 'Ýþleme devam edilsin mi?';
  msgPatientFile035 :string = 'Doktor onayý verilmiþ bir iþlemin, doktorunu deðiþtiremezsiniz.';
  msgPatientFile036 :string = 'Kapanýþ tarihi dosyanýn kayýt tarihinden küçük olamaz!';
  msgPatientFile037 :string = 'Öncelikle çýkýþ iþlemini yapmanýz gerekmektedir.' + #13 + 'Hastanýn çýkýþýný yapmak istiyor musunuz ?';
  msgPatientFile039 :string = 'Hasta dosyasý %s numaralý icmale alýnarak kuruma faturalanmýþ.'+ ' Ýcmale alýnan hastalarýn kapanýþýný iptal edemezsiniz.';
  msgPatientFile040 :string = 'Yatak seçmediðiniz için çýkýþ yapamazsýnýz.';
  msgPatientFile043 :string = 'Çýkýþ tarihiniz dosyaya uygulanan iþlemlerin tarihinden küçük olamaz';
  msgPatientFile047 :string = 'Medulaya Çýkýþý yapýlmýþ bir kaydýn, çýkýþýný iptal edemezsiniz';
  msgPatientFile048 :string = 'Hastanýn eski yataðý dolu, yeni bir yatak seçmeniz gerekmektedir!. Devam edilsin mi?';
  msgPatientFile049 :string = 'Boþ yatak olmadýðýndan çýkýþ iptalini yapamazsýnýz.';
  msgPatientFile050 :string = 'Yatak seçmeden iþleme devam edemezsiniz.';
  msgPatientFile051 :string = 'Hastanýn dosyasýný silemezsiniz.' + #13 + '%s yetkiniz yok.';
  msgPatientFile052 :string = 'Ücreti alýnmamýþ veya eksik alýnmýþ bir iþlem için sýra numarasý veremezsiniz.';
  msgPatientFile053 :string = 'Hastaya ait iþlemlerin fiyatlarý güncellenecek.'+#13+ 'Devam etmek istiyor musunuz?';
  msgPatientFile055 :string = 'Seçili iþlem(ler) paketten çýkarýlacak, iþleme devam etmek istiyor musunuz?';
  msgPatientFile056 :string = 'Faturalanmýþ veya tahsilatý yapýlmýþ veya Medula''ya gönderilmiþ iþlemleri taþýyamazsýnýz.';
  msgPatientFile057 :string = 'Hasta dosyasýnda, kontrol edilmesi gereken Not(lar) var...'+#13+'Ýþleme devam edemezsiniz.';
  msgPatientFile058 :string = 'Ýþlem baþarý ile gerçekleþtirildi.';
  msgPatientFile059 :string = 'Hasta dosyasýnda, düzenlenmiþ fatura(lar) bulunmaktadýr. ' +
                      'Fatura düzenlenen iþlem(ler)e deðiþiklik uygulanmamýþtýr.';
  msgPatientFile060 :string = ' tane tahsilatta fazlalýk oluþtu, iþlem daðýlýmýný kontrol ediniz.!';
  msgPatientFile061 :string = 'Kapanýþ yapýlmadan tarihi deðiþtiremezsiniz!';
  msgPatientFile062 :string = 'Kapanýþ tarihi sistem tarihinden büyük olamaz!';
  msgPatientFile063 :string = 'Kapanýþ tarihi kayýt tarihinden küçük olamaz!';
  msgPatientFile064 :string = 'Kapanýþ tarihi çýkýþ tarihinden küçük olamaz!';
  msgPatientFile065 :string = 'Çýkýþ yapýlmadan tarihi deðiþtiremezsiniz!';
  msgPatientFile066 :string = 'Medulaya Çýkýþý yapýlmýþ bir kaydý deðiþtiremezsiniz!';
  msgPatientFile067 :string = 'Çýkýþ tarihi sistem tarihinden büyük olamaz!';
  msgPatientFile068 :string = 'Çýkýþ tarihi kayýt tarihinden küçük olamaz!';
  msgPatientFile071 :string = 'Dosya tarihi sistem tarihinden büyük, "01.01.2000" tarihinden küçük olamaz!';
  msgPatientFile072 :string = 'Deðiþiklik hastaya ait iþlemlere ve týbbi kartlara da uygulansýn mý?' +
    ' Hayýr seçerseniz Dosya Tarihinden önce kalan iþlem varsa bunlar Dosya Tarihine çekilecek !';
  msgPatientFile074 :string = 'Hasta geliþ dosyasý için yazýcý formlarý tasarlanmamýþ veya belirtilmemiþ';
  msgPatientFile075 :string = 'Tahsilat fazlasý oluþtu, geri ödemek istermisiniz.!';
  msgPatientFile076 :string = 'Hasta katýlým payýndan muafdýr. Ýþleminiz tamamlandý.';
  msgPatientFile077 :string = ' adlý paket detay toplamý , paket fiyatýný geçti.';
  msgPatientFile079 :string = 'Ýþlem tarihi dosyanýn kayýt tarihinden küçük olamaz!';
  msgPatientFile080 :string = 'Ýþlem tarihi dosyanýn kapanýþ tarihinden büyük olamaz!';
  msgPatientFile081 :string = 'Varsa seçili donöre ait iþlemlerde, yeni donöre aktarýlacak, devam edilsin mi?';
  msgPatientFile082 :string = 'Donöre ait iþlemler bulunduðundan ve silme yetkiniz olmadýðýndan iþleme devam edemezsiniz.';
  msgPatientFile083 :string = 'Donöre ait iþlemler bulundu, iþleme devam etmek istiyor musunuz?';
  msgPatientFile084 :string = 'Bazý iþlem(ler) silinemediðinden, iþleminiz tamamlanamadý.';
  msgPatientFile085 :string = 'Medulaya kaydedilmiþ bir dosya üzerinde deðiþiklik yapamazsýnýz.';
  msgPatientFile086 :string = 'Medulaya yapýlan iþlem kayýtlarý silinsin mi?';
  msgPatientFile087 :string = 'Hasta katýlým payýndan muaf olduðu için, iþleminiz iptal edildi.';
  msgPatientFile088 :string = 'Dosyanýn katýlým payý tahsilatý yapýlmýþ. Ýþleminiz iptal edilecek.';
  msgPatientFile089 :string = 'Medula iþlemlerinden dolayý, isteðiniz iptal edildi.';
  msgPatientFile090 :string = 'Medula iþlemlerinden dolayý, iþleminizi gerçekleþtiremezsiniz.';
  msgPatientFile091 :string = 'Seçili iþlemlerden hasta payý olanlar için, parasý alýnmadan, kurum içinde parasý alýnmýþ gibi iþlem görecektir.'+#13+
                      'Yinede devam etmek istiyor musunuz?';
  msgPatientFile093 :string = 'Takibi alýnmýþ bir dosyanýn "Sigortalý Türü" bilgisi deðiþtirilemez.';
  msgPatientFile094 :string = 'Sigortalý türü deðiþikliði kimlik dosyasýna da uygulansýn mý?';
  msgPatientFile095 :string = 'Tahsilatlarýn iþlemlerle baðlantýsý yapýlacak. Devam edilsin mi?';
  msgPatientFile096 :string = 'Saðlýk-NET için yapýlan bu deðiþiklik, Medula daki Provizyon Tipi bilgisini deðiþtirmez.';
  msgPatientFile097 :string = 'Deðiþiklik yapmak istediðinizden eminmisiniz?';
  msgPatientFile102 :string = 'Hasta ücretli olan tüm iþlemler için, parasý alýnmadan, kurum içinde parasý alýnmýþ gibi iþlem görecektir.'+#13+
                      'Yinede devam etmek istiyor musunuz?';
  msgPatientFile103 :string = 'Hastanýn "Teþhis Kodu" nu belirtmeden iþleminize devam edemezsiniz';
  msgPatientFile104 :string = 'Seçili iþlemlerin Özel Durumlarý deðiþtirilecek, devam edilsin mi?'+#13+
                      'Önceden Medula ya gönderilen iþlemlerin durumu deðiþtirilemez.';
  msgPatientFile105 :string = 'Faturalanmýþ bir iþlemin/paketin zamanýný deðiþtirme yetkiniz yok.';
  msgPatientFile106 :string = 'Baþka tahsilata baðlý bir tahsilatý taþýyamazsýnýz.';
  msgPatientFile107 :string = 'Muhasebeye gönderilmiþ bir tahsilatý taþýyamazsýnýz.';
  msgPatientFile108 :string = 'Tahsilatý taþýmak istediðinizden emin misiniz?';
  msgPatientFile109 :string = 'Seçili hasta ile taþýnmak istenen hasta farklý. Yinede devam etmek istiyor musunuz?';
  msgPatientFile111 :string = ' yoluna eriþilemiyor.';
  msgPatientFile112 :string = 'Saðlýk-NET den alýnmýþ online protokol bulunamadý!';
  msgPatientFile114 :string = 'Dosya tarihinden öncesine iþlem yapamazsýnýz.';
  msgPatientFile115 :string = 'Kurum Sözleþme Bilgisi';
  msgPatientFile116 :string = 'Kurum Notu: %s' + #13#13 +'Sözleþme Bilgisi';
  msgPatientFile117 :string = 'Dosya menüsünden Durumu deðiþtirebilirsiniz.';
  msgPatientFile118 :string = 'Yatýþ kabulü yapýlmadýðýndan dosya üzerinde iþlem yapamazsýnýz. ';
  msgPatientFile119 :string = 'Doktor onayý verilmiþ bir iþlem üzerinde deðiþiklik yapýlamaz.';
  msgPatientFile120 :string = 'Randevulu iþlemin Doktor ve Bölüm bilgisini deðiþtiremezsiniz.';
  msgPatientFile121 :string = 'Ýþlem üzerinde deðiþiklik yapamazsýnýz.';
  msgPatientFile122 :string = '%s %s tarihinde ÇALIÞMIYOR.' + #13 + 'Doktorun %s bölümüne ait çalýþma zamanýný kontrol ediniz!';
  msgPatientFile123 :string = 'Hizmet deðiþtirme iþleminde hizmete baðlý stok/hizmet varsa eklenmeyecektir!';
  msgPatientFile124 :string = 'Kabul tipi "Ameliyat" grubunda olan hastalarýn yatýþýný "Yatýþ Ýstemleri" ekranýndan yapabilirsiniz!';
  msgPatientFile125 :string = 'Makbuz Numarasý';
  msgPatientFile126 :string = 'Makbuz numarasý giriniz : ';
  msgPatientFile127 :string = 'Bir makbuz numarasý girmek zorundasýnýz!';
  msgPatientFile128 :string = 'Uygulanmayan Order ilaçlarýn iadesini yaptýktan sonra dosyanýn durumunu deðiþtirebilirsiniz!';
  msgPatientFile129 :string = 'Ýade iþlemi için "Hemþire Ýþlemleri" ekraný açýlsýn mý?';
  msgPatientFile130 :string = 'Hastanýn borcu vardýr';
  msgPatientFile131 :string = 'Hastayý Kabul Etmek Ýçin "Hemþire Ýþlemleri" ekranýný kullanýnýz!';
  msgPatientFile132 :string = 'Deðiþiklik yapabilmeniz için seçilen kurumun anlaþma þablonunda ek kurum ile baðlantýsý olmalý veya ek kurumun faturasý/takibi olmaMAlý!';
  msgPatientFile133 :string = 'Deðiþtirmek istediðiniz hizmetin faturasý/tahsilatý kesilmiþ!';
  msgPatientFile134 :string = 'Tahsilat fazlasýný geri ödeme yetkiniz bulunmamaktadýr,iþleminiz iptal edildi.';
  msgPatientFile135 :string = 'Kabul tipi "Ameliyat" seçebilmek için yatýþ isteminin tedavi türü "Cerrahi" seçilmelidir!';
  msgPatientFile136 :string = 'Hastaya uygulanmýþ indirim yada indirimler bulunmakta iptal edilerek iþleme devam edebilirsiniz.';
  msgPatientFile137 :string = 'Medula kesilen fatura olduðu için, isteðiniz iptal edildi.';
  msgPatientFile138 :string = 'Hata oluþtu. Bilgi iþlemi arayýnýz veya ekraný kapatýp tekrar açýnýz.';
  msgPatientFile139 :string = 'Fark Tutarý: %s';
  msgPatientFile140 :string = 'Deðiþiklik hastaya ait iþlemlere ve týbbi kartlara da uygulanacak. devam etmek istiyormusunuz?';
  msgPatientFile141 :string = 'Ýzolasyon 1 ve Ýzolasyon 2 için ayný durumlar seçilemez!';
  msgPatientFile142 :string = 'Hasta üzerinden yapýlmýþ stok istekleri bulunmaktadýr.  %s  '+#13 + 'Ýþleminiz iptal edilecek';
  msgPatientFile143 :string = 'Avans olarak alýnmýþ tahsilatlar var bunlarýn tahsilata çevrilmesi gerekiyor!';
  msgPatientFile144 :string = 'Seçilen tarih hastanýn çýkýþ tarihiniden büyük olamaz.';
  msgPatientFile145 :string = 'Hasta Kayýt bilgisi gönderilmelidir.';
  msgPatientFile146 :string = 'Geçerli bir SYSTakipNo bulunmamaktadýr.';
  msgPatientFile147 :string =  'Çýkýþ tipini ''VEFAT'' seçtiðiniz için aþaðýda ki birimlere bilgi veriniz.' + #13#10 +
                              ' 1. Hastane Polisine' + #13#10 + ' 2. Ýdare Amirine' + #13#10 +' 3. Morg Sorumlusuna';
  msgPatientFile148 :string = 'Ölümü gerçekleþen hastaya sadece Mernis Ölüm tutanaðý eklenebilir.'+#13+'Ýþleminiz Ýptal edildi.';
  msgPatientFile149 :string = 'Hastanýn %s nolu protokolünde "Uygulanmayan Order" ilaçlarý mevcut. Order ilaçlarýný iade ettikten veya uyguladýktan sonra iþlem yapabilirsiniz!';
  msgPatientFile150 :string = 'Hastanýn %s nolu protokolünde yapýlmýþ %s onaylanmamýþ stok isteði bulunmaktadýr!';
  msgPatientFile151 :string = 'Dosya tarihi deðiþtirilecek! devam etmek istiyormusunuz?';
  msgPatientFile152 :string = 'Ölümü gerçekleþen hastaya týbbi kart ekleyemezsiniz!';
  msgPatientFile153 :string = 'Ýptal kurumu seçebilmeniz için dosya içerisinde iþlem olmamasý gerekir!';
  msgPatientFile154 :string = 'Hizmet deðiþtirmek için açýklama giriniz!';
  msgPatientFile155 :string = 'Yatak hastanýn yoðun bakým iþlemiyle uyumsuzdur farklý bir yatak seçiniz';
  msgPatientFile156 :string = ' geliþ tipine çevrilemez. Yatýþ yapmak için yatýþ istemleri ekranýný kullanýnýz!';
  msgPatientFile157 :string = 'Ýspark sisteminden çýkýþý yapýlmayan kayýt var. Çýkýþ yaparak devam etmek istiyormusunuz';
  msgPatientFile158 :string = 'Yoðunbakým Yataklarýnýn Medula Yatak Kodu Güncellendi.';
  msgPatientFile159 :string = 'Biyometrik Kimlik Doðrulama yapýlmadýðý için iþleminiz iptal edildi.';
  msgPatientFile160 :string = 'Branþýnýza ait hasta olmadýðýndan iþlem yapamazsýnýz. Konsültasyon girmiþ olmanýz gerekmektedir.';
  msgPatientFile161 :string = 'Anlaþma detayý bulunmamaktadýr.!';
  msgPatientFile162 :string = 'Ýspark iþlemi kapanýþý yapýlmamýþ veya yatan hastalarda uygulanabilmektedir!';
  msgPatientFile163 :string = 'Hasta dosyasýnda seri numara(lar)ý: %s olan beklemede rezerve edilmiþ kan olduðundan çýkýþ yapamazsýnýz!';
  msgPatientFile164 :string = 'Medula kesilen fatura olduðu için, istek yapamazsýnýz, eski isteklerinizi görebilmeniz için ekran açýlacaktýr.';
  msgPatientFile165 :string = 'Seçilen kurumda bu þube için bir anlaþma yok.';
  msgPatientFile166 :string = 'Bölümde, kullanýlabilir durumda olan, ventilatör kaydý bulunmamaktadýr.';
  msgPatientFile167 :string = 'Orderda kullanýlmýþ diðer stok istekleride eklenecek devam edilsin mi?';
  msgPatientFile168 :string = 'Tahsilat deðiþtirme yetkiniz bulunmamaktadýr. Ýþleminiz iptal edilmiþtir.';
  msgPatientFile169 :string = 'Ýptal edilen dosyalar sadece görüntelenir deðiþiklik yapýlamaz.';
  msgPatientFile170 :string = 'Ýptal iþlemi yapabilmeniz için dosyada bulunan iþlemlerde;' + #13#10 + 'Fiyat, Fiyatsýz Ýþlem, Tahsilat, Ýndirim ve Fatura Olamaz.';
  msgPatientFile171 :string = 'Dosya iptal edildikten sonra deðiþiklik yapýlamaz! yinede devam etmek istiyormusunuz?';
  msgPatientFile172 :string = 'Ýptal Notu Giriniz';
  msgPatientFile173 :string = 'Senet iþlemleri silinemez yalnýzca iptal edilebilir. '+
                              'Senet üzerinde "Deðiþtir" dedikten sonra "Senedin Durumu" alanýndan yapabilirsiniz';
  msgPatientFile174 :string = 'Hastanýn ödenmemiþ borcu bulunmaktadýr!';
  msgPatientFile175 :string = 'Dosyanýn iþlem süresi dolduðu için yeni dosya açýlacaktýr devam etmek istiyormusunuz?';
  msgPatientFile176 :string = 'Baþvuru numarasýna baðlý daha önce açýlan, ''Uzayan Yatýþ'' tipinde dosya olduðundan iþleminiz iptal edildi.';
  msgPatientFile177 :string = 'Bugün hasta dosyasýnýn son iþlem günüdür.';
  msgPatientFile178 :string = 'Referans Doktor deðiþikliði hastaya ait iþlemlerede uygulansýn mý?';
  msgPatientFile179 :string = 'Medula Takibi silinmeden dosya iptali iþlemi yapýlamaz. Medula Takibini silmek istiyor musunuz?';
  msgPatientFile180 :string = 'Referans Doktor deðiþikliði hastaya dosyasýna da uygulansýn mý?';
  msgPatientFile181 :string = 'Seçilen Paket :';
  msgPatientFile182 :string = 'Ameliyat iþlemlerindeki hastaya ait iþlem durumu son aþamalardan birinde olmadýðýndan durum deðiþikliði gerçekleþtirilemedi.';
  msgPatientFile183 :string =  ' ödeme kontrolü yapýlmayan kartlar listelenecek';
  msgPatientFile184 :string = 'Ýptal iþlemi yapabilmeniz için dosyada Týbbi Kart olamaz.';
  msgPatientFile185 :string = 'Hasta ameliyattayken order yapýlamaz.';
  msgPatientFile186 :string = 'Hasta ameliyattayken çýkýþ yapýlamaz.';
  msgPatientFile187 :string = 'Eklenecek tanýlar arasýnda týbbi karta baðlantýsý olan tanýlar var bu tanýlar eklenmeyecek!';
  msgPatientFile188 :string = 'Hizmet/Hizmetlerin E-Nabýz takipleri baþarýyla silindi.';
  msgPatientFile189 :string = 'Yönlendiren personel deðiþikliði hastaya ait iþlemlerede uygulansýn mý?';
  msgPatientFile190 :string = 'Hastanýn "Çýkýþ" yapýlmamýþ Yatýþ Dosyalarý bulundu. Ýþleminiz Ýptal Edildi!';
  msgPatientFile191 :string = 'Dosyada ileri tarihli iþlemler olduðundan iþleminiz iptal edildi.';
  msgPatientFile192 :string = 'Vefat Eden Kiþinin Bilgilerini GÖZ Bankasýna Göndermek Ýster Misiniz?';
  msgPatientFile193 :string = 'Paket içindeki deðiþtirilmek istenen iþlemin, fiyatý deðiþtirilsin mi?';
  msgPatientFile194 :string = 'Dosyaya ait  Hasta Baþý Malzeme Kullanýmý Mevcuttur. Hasta Baþý Malzeme Mevcuttur iþaretini kaldýrmalýsýnýz. ';
  msgPatientFile195 :string = 'Dosyadaki kurum veya kurumlar için ''Dosya Kontrolü Yapýlsýn'' seçeneði tanýmlanmýþ olduðundan' +
    ' dosya için onay bekleniyor.' ;
  msgPatientFile196 :string = 'Dosya iþlem yapýlabilmesi için onaylanacak. Devam etmek istiyor musunuz?';
  msgPatientFile197 :string = 'Protokol numaralarý:';
  msgPatientFile198 :string = 'Hizmet/Hizmetlerin E-Nabýz takipleri baþarýyla gönderildi.';
  msgPatientFile199 :string = 'Avans tahsilatýný farklý hastaya taþýmak için yetkiniz yok.';
  msgPatientFile200 :string = 'Ýþlem Durum2, "Teletýp Ýptal" için uygun deðildir.';
  msgPatientFile201 :string = 'Tevkifat tutarlarý sýfýrlanacaktýr. ';
  msgPatientFile202 :string = 'Stok istekleri sevk için açýlacak olan geliþ dosyasýna transfer edilecektir.' + #13 +
                              'Ýþleme devam etmek istiyor musunuz ?';
  msgPatientFile203 :string = 'Kurum Tipi "Özel Hasta" olan dosyalarda, "Hesap Ýþlemleri" iþlemleri yapýlamaz.';
  msgPatientFile204 :string = 'Hasta geliþ dosyasýna ait ATS''den sorgulanan aþý bulunduðundan dolayý, hasta geliþ dosyasýnýn kurum bilgisini deðiþtiremezsiniz. ';
  msgPatientFile205 :string = 'Tetkiðe ait %s istem nedeni bilgisi mevcuttur. ';
  msgPatientFile206 :string = 'Hasta geliþ dosyasýnda "Aþý Kartý" bulunduðundan dolayý, hasta geliþ dosyasýnýn kurum bilgisini deðiþtiremezsiniz. ';
  msgPatientFile207 :string = 'Ýþlemin Teletýp Mükerrerlik Sorgusu tanýmý yoktur.';
  msgPatientFile208 :string = 'Ýþlemin Teletýp Durumu "%s" olduðundan dolayý Tetkik Ýstem Nedenini deðiþtiremezsiniz.';
  msgPatientFile209 :string = 'Hasta Geliþ Dosyasýnýn Kurum Tipi Deðiþtirildi !!!' + #13#10 + #13#10 + '"%s" Kodlu "%s", Hizmetini Deðiþtirmek Ýster Misiniz?';
  msgPatientFile210 :string = 'Bilgi: Ýþlem Yaptýðýnýz Tahsilat, Muhasebeye aktarýlmýþtýr.';
  msgPatientFile211 :string = 'Faturalamada sýkýntý çýkmamasý için "%s" numaralý protokolde bulunan ' + '"%s" Kodlu "%s" isimli hizmeti deðiþtirmelisiniz!' + #13#10 + #13#10 + 'Hizmeti Deðiþtirmek Ýster Misiniz?';
  msgPatientFile212 :string = 'Fiyat artýrým isteði yaparken sadece bir iþlem seçebilirsiniz. %s';

 //PatFileMove
  msgPatFileMove001 :string = '"Gönderen" ile "Teslim Alan" kullanýcý ayný olamaz!';
  msgPatFileMove002 :string = 'Toplu Ýþlem Yapýlacak' + #13 +'Devam etmek istiyor musunuz';
  msgPatFileMove003 :string = 'Arþiv nolu hasta bulunamadý!';
  msgPatFileMove004 :string = 'Hasta kimlik dosyasýnda arþiv numarasý olmadýðýndan dolayý iþleme devam edilemez';

 //PatientProcessDetail
  msgPatientProcessDetail001 :string = 'Bu tipte en fazla bir kiþi ekleyebilirsiniz.';
  msgPatientProcessDetail002 :string = 'Ayný Risk Derecesi daha önce uygulanmýþ, tekrar uygulansýn mý?';
  msgPatientProcessDetail003 :string = 'Tahsilat yapýldýðý için "Seans Bilgisi" ni deðiþtiremezsiniz.';
  msgPatientProcessDetail004 :string = 'Silme iþlemi için, seçim ekranýndaki, iþleme atanan riskleri kaldýrmanýz gerekmektedir.';
  msgPatientProcessDetail005 :string = 'Geçerli bir deðer girmediniz. Ýþleminiz Ýptal edildi.';
  msgPatientProcessDetail006 :string = 'Miktar Deðiþtir';
  msgPatientProcessDetail007 :string = 'Sadece Miktarý azaltabilirsiniz ve bu iþlemin geri dönüþü yoktur.'+#13+'Miktar: ';
  msgPatientProcessDetail008 :string = 'Miktar olarak eksi deðer giremezsiniz.';
  msgPatientProcessDetail009 :string = 'Son Kullanma Tarihi olan stoklarýn miktarý artýrýlamaz.';
  //msgMultiUsed144 ile degistirildi
  //msgPatientProcessDetail010 :string = 'Tam sayý girmek zorundasýnýz.';
  msgPatientProcessDetail012 :string = 'Malzeme mevcudu sýfýrýn altýna düþeceði için' + #13 + ' iþleminiz iptal edilecek';
  msgPatientProcessDetail013 :string = 'Stoklar için iþlem yapan bilgisi giremezsiniz.';
  msgPatientProcessDetail014 :string = 'Toplamý, tahsil edilen deðerin altýna düþüremezsiniz.';
  msgPatientProcessDetail015 :string = 'Medula iþlem kaydý yapýlmýþ bir iþlemi deðiþtiremezsiniz.';
  msgPatientProcessDetail016 :string = 'Onaylanmýþ kayýt üzerinde hiçbir deðiþiklik yapamazsýnýz!';
  msgPatientProcessDetail017 :string = 'Kurum payý olmayan iþlemlerde bu olayý gerçekleþtiremezsiniz.';
  msgPatientProcessDetail018 :string = 'Bu iþlemi, Ameliyat, Diþ, Radyoloji Tetkik ve Diðer tipinde olmayan iþlemler için gerçekleþtremezsiniz.';
  msgPatientProcessDetail019 :string = 'Doktor onayý verilmiþ bir iþlemde "Doktor ve Bölüm" deðiþikliði yapamazsýnýz.';
  msgPatientProcessDetail020 :string = 'Onaylanmýþ iþlemin "Diðer Bilgiler" kýsmýnda deðiþikliði yapamazsýnýz.';
  msgPatientProcessDetail021 :string = 'Faturalanmýþ kayýt üzerinde hiçbir deðiþiklik yapamazsýnýz.';
  msgPatientProcessDetail022 :string = 'Fiyat sýfýrlamak için açýklama girmelisiniz!';
  msgPatientProcessDetail023 :string = 'Donor Id Giriniz!';
  msgPatientProcessDetail024 :string = 'Hakediþ hesaplanmýþ iþlemlerle deðiþiklik yapýlamaz.';
  msgPatientProcessDetail025 :string = 'Seans seçebilmeniz için indirim iptal etmeniz gerekmektedir.';
  msgPatientProcessDetail026 :string = 'Eklenecek kayýt sayýsý iþlem miktarýndan büyük olamaz!';
  msgPatientProcessDetail027 :string = 'Fiyat deðiþikliði için açýklama girmelisiniz!';
  msgPatientProcessDetail028 :string = 'Fiyat deðiþtirmek istediðiniz iþleme baðlý iþlemler var bu iþlemlerinde fiyat bilgisi referans oranýna göre'+
   ' düzenlenecektir (Tahsilat Yapýlmamýþ, ve Faturalanmamýþlar) devam etmek istiyormusunuz?';
  msgPatientProcessDetail029 :string = 'Seçtiðiniz özel durumu eklemeye yetkiniz bulunmamaktadýr. ';
  msgPatientProcessDetail030 :string = 'Fiyat maliyet tutarýnýn (%s) altýnda iþleminiz iptal edilecek!';

//PatientRequest
  msgPatientRequest001 :string = 'Ýstek iptal edilecek, emin misiniz?';
  msgPatientRequest002 :string = 'Detayda iþlem gören istek(ler) olduðundan, iþleminiz gerçekleþtirilemiyor.';
  msgPatientRequest003 :string = 'Seçili istek iptal edilecek, emin misiniz?';
  msgPatientRequest004 :string = 'Dosyaya iþlenmiþ hizmetler silinip, onayýnýz iptal edilecek, emin misiniz?';
  msgPatientRequest005 :string = 'Ýlgili patoloji iþlemi için istek bilgileri baþarýyla güncellendi!';

//PatMakeDiscount
  msgPatMakeDiscount001 :string = 'Ýlk önce onaylanacak kaydý seçiniz.';
  msgPatMakeDiscount002 :string = 'Seçili indirim isteðini onaylamak istediðinizden eminmisiniz?';
  msgPatMakeDiscount003 :string = 'Ýlk önce kaydý seçiniz.';
  msgPatMakeDiscount004 :string = 'Seçili indirim isteðini iptal etmek istediðinizden eminmisiniz?';
  msgPatMakeDiscount005 :string = 'Ýndirimi iptal etmek için not giriniz.';
  msgPatMakeDiscount006 :string = 'Onaylanmýþ indirim isteðini iptal etmek istediðinizden eminmisiniz?';
  msgPatMakeDiscount007 :string = 'Onaylanmýþ indirim isteðini iptal etmek istediðinizden eminmisiniz?';
  //msgPatMakeDiscount008 :string = '%s nolu kaydýn durumu deðiþtirilmiþ liste güncellendi devam etmek istiyormusunuz?';
  msgPatMakeDiscount009 :string = 'Seçili indirim isteði maliyettin altýndadýr.'+#13+
                                  'Maliyetin altýndaki indirimleri onaylamak için, yetkiniz yoktur!';
  msgPatMakeDiscount010 :string = 'Seçili indirim isteði maliyettin altýndadýr.'+#13+
                                  'Onaylamak istediðinizden eminmisiniz?';
  msgPatMakeDiscount011 :string = 'Ýki (2) günden önce açýlmýþ dosyalar bulundu. Seçili indirim isteðini ' + #13#10 +
                                  'onaylamak istediðinizden emin misiniz?';
  msgPatMakeDiscount012 :string = 'Bu dosya için daha önce "%s" kullanýcýsý fiyat artýrým isteðinde bulunmuþ.'+ #13 +
                                  'Ýsteði iptal ettirip iþleminize devam edebilirsiniz.';
  msgPatMakeDiscount013 :string = 'Bu dosya için fiyat artýrým isteðinde bulunmuþsunuz. Fakat henüz onaylanmamýþ. Ýsteði onaylamadan veya iptal etmeden fatura kesemessiniz.' + #13 + #13 + 'Ýptal etmek istiyor musunuz?';
  msgPatMakeDiscount014 :string = 'Faturasý kesilen iþlem için fiyat artýrma isteðini uygulayamazsýnýz. %s';

//PatProcessCompare
  msgPatProcessCompare001 :string = 'Dosya içindeki paket iþlemler Ek2B karþýlýðýna, '+#13+
                            'paket içindeki iþlemlerde paket dýþýna taþýnacak.'+#13+
                            'Bu iþlemin geri dönüþü YOKTUR.'+#13+
                            'Devam etmek istiyor musunuz?';
  msgPatProcessCompare002 :string = 'Dosyada "%s" adlý yýldýzlý iþlem olduðundan iþleminiz iptal edildi.';
  msgPatProcessCompare003 :string = 'Dosyada paket iþlem bulunamadýðýndan iþleminiz iptal edildi.';
  msgPatProcessCompare004 :string = 'Dönüþtürme iþleminde ek kurum hesabýnda deðiþiklik yapýlsýn mý?';
  msgPatProcessCompare005 :string = 'Dönüþüm baþarýyla gerçekleþtirildi';

//PatReception
  msgPatReception001 :string = 'Zorunlu alan Tablo alan adý hatasý.';
  msgPatReception002 :string = 'Seçili doktora/bölüme ait not bulundu : '+#13+ 'Saat Aralýðý : %s - %s' +#13+'Not : %s';
  msgPatReception003 :string = 'Ýliþkili takip(%s) %s branþý için alýnmýþ.' + #13 +
                       'Yatýþýn yapýlacaðý olan %s bölümünün branþý ile uymuyor.' + #13 +
                       'Yinede devam etmek istiyor musunuz?';
  msgPatReception004 :string = 'Provizyon alýnamadý. Lütfen Hasta Kabul birimine baþvurunuz.';
  msgPatReception005 :string = 'Medula baðlantýsý kurulamadý. ';
  msgPatReception006 :string = 'Hastanýn iletiþim bilgileri güncel deðil. Ýletiþim bilgilerini güncelleyiniz.';
  msgPatReception007 :string = 'Ekip Bilgisi Randevularýný seçemezsiniz.';
  msgPatReception008 :string = 'Bu randevu baþka bir hastaya aittir. Eþleþtirme yapamazsýnýz.';
  msgPatReception009 :string = 'Bu randevu baþka bir geliþ dosyasý ile iliþkilendirilmiþ.'+#13+'Ýþleme devam edemezsiniz';
  msgPatReception010 :string = 'Baþka bir doktora ait randevuyu seçtiniz.'+#13+ 'Yinede devam etmek istiyor musunuz?';
  msgPatReception011 :string = 'Baþka bir bölüme ait randevuyu seçtiniz.'+#13+ 'Yinede devam etmek istiyor musunuz?';
  msgPatReception012 :string = 'Bu randevu iþleme alýnmýþ .'+#13+ 'Yinede devam etmek istiyor musunuz?';
  msgPatReception013 :string = 'Hasta için randevu verilmiþ. Yeni bir randevu veremezsiniz.';
  msgPatReception014 :string = '"Yatýþ Ýstemi" ekranýný kullanarak hasta yatýþý yapabilirsiniz!';
  msgPatReception015 :string = 'Hastaya yatýþ istemi yapýlmadan yatýþ yapýyorsunuz!';
  msgPatReception016 :string = '%s adlý bölüm için yalnýzca randevulu hasta kaydý yapabilirsiniz.';
  msgPatReception017 :string = 'Kurum tarafýndan anket yapýlmasý zorunludur.';
  msgPatReception018 :string = 'Seçilen doktor için sistemde randevu mevcuttur lütfen seçim yaparak devam ediniz.';
  msgPatReception019 :string = 'Seçilen bölüm için %s tarihli muayene randevusu vardýr lütfen yapýlacak iþlemi seçiniz.';
  msgPatReception020 :string = 'Seçilen bölüm için %s tarihli kontrol randevusu vardýr lütfen yapýlacak iþlemi seçiniz.';
  msgPatReception021 :string = 'Kontrole Çevir';
  msgPatReception022 :string = 'Yoðun Bakým hastasý için baðlý takip alýnmasý gereklidir.';
  msgPatReception023 :string = 'Dikkat: Doktor Poliklinik Ara Tatilindedir. '+#13+'Notu : %s '+#13+'Poliklinik ara tatil bitiþ zamaný : %s';
  msgPatReception024 :string = 'Personel izinli olduðundan dolayý dosya açýlamaz.';

//PhysiotherapyPatient
  msgPhysiotherapyPatient001 :string = 'Ayný seans tarihi daha önceden eklenmiþ. Ýþleminiz iptal edilecek.';
  msgPhysiotherapyPatient002 :string = 'FTR Paketini girmediniz. Devam edilsin mi?';
  msgPhysiotherapyPatient003 :string = 'Seçili kaydý silemezsiniz. Ana kayýt silindiðinde otomatik silinir.';
  msgPhysiotherapyPatient004 :string = 'Bu tipte bir taným yapamazsýnýz.';
  msgPhysiotherapyPatient005 :string = 'Geçmiþ tarihe iþlem ekleyemezsiniz!';
  msgPhysiotherapyPatient006 :string = '%s tarihinde iþlem ekleyebilmeniz için tarihi ayarlayýnýz!';
  msgPhysiotherapyPatient007 :string = 'Ýleri Tarihli randevular var silinecek iþleme devam etmek istiyormusunuz?';
  msgPhysiotherapyPatient008 :string = 'Seans Uzat';
  msgPhysiotherapyPatient009 :string = 'Seans Sayýsý';
  msgPhysiotherapyPatient010 :string = 'Fizyoterapist seçimi yapmadan, seans seçimi ekleyemezsiniz!';
  msgPhysiotherapyPatient011 :string = 'Hasta dosyasýna eklenen iþlemler hariç tüm detaylar (geliþ bilgileri, randevu bilgileri vs.) silinecek devam etmek istiyormusunuz?';
  msgPhysiotherapyPatient012 :string = 'Hastalýk eklenebilecek hasta bulunamadý. Ýþleminiz iptal edildi!';
  msgPhysiotherapyPatient013 :string = 'Ýlgili hasta için seans planý bulunamadý. Ýþleminiz iptal edildi!';
  msgPhysiotherapyPatient014 :string = 'Dikkat !! Seçtiðiniz Hasta Aþaðýdaki Hastalýk(lar)''a sahiptir: ' + #13#10 + #13#10 + '%s';


//PhysiotherapyPatientList
  msgPhysiotherapyPatientList001 :string = 'Medulaya Kayýtlý Geçerli Fizik Tedavi Raporu Bulunamadý.'+ #13+ 'FTR Hizmetini eklemeye devam etmek istiyor musunuz?';
  msgPhysiotherapyPatientList002 :string = 'Planlanan Seans sayýsýna ulaþýlmýþ devam etmek istiyormusunuz?';
  msgPhysiotherapyPatientList003 :string = 'Planlanan Seans sayýsý aþýldý devam etmek istiyormusunuz?';
  msgPhysiotherapyPatientList004 :string = 'Hizmet için kýsa kod tanýmlanmamýþ. Ýþleminiz iptal edildi.';
  msgPhysiotherapyPatientList005 :string = 'Medula kota sorunu ile karþýlaþtýysanýz "%s" kýsmýndaki Referans Doktor bilgilerine göre iþlem tekrarlanacak. Devam etmek istiyor musunuz?';
  msgPhysiotherapyPatientList006 :string = 'Dosya doktoru ile ayný doktoru seçtiniz. Ýþleminiz iptal edildi.';
  msgPhysiotherapyPatientList007 :string = 'Dosyaya iþlenmiþ hizmeti silmeyi unutmayýnýz.';
  msgPhysiotherapyPatientList008 :string = ' adlý hasta için Seans planlandý iþlemini durum seçerek yapamazsýnýz.';
  msgPhysiotherapyPatientList009 :string = ' adlý hasta için Faturaya Hazýr olmadan Faturalandý yapamazsýnýz.';
  msgPhysiotherapyPatientList010 :string = 'Baþlangýç ve Bitiþ Tarihlerini belirtmeden iþleme devam edemezsiniz.';
  msgPhysiotherapyPatientList011 :string = 'Geliþ dosyasýyla iliþkilendirilmemiþ.';
  msgPhysiotherapyPatientList012 :string = 'Son kayýt durumu tamamlandý olarak deðiþtirilecek devam etmek istiyormusunuz';

//PreparedText
  msgPreparedText001 :string = 'Hazýr metin için bir baþlýk belirtmelisiniz.';
  msgPreparedText002 :string = 'Hazýr metni giriniz.';
  msgPreparedText003 :string = 'Metin Grubu Baðlýðý';
  msgPreparedText004 :string = 'Baþlýk : ';
  msgPreparedText005 :string = 'Silmek istediðiniz grubun altýnda hazýr metinler var. Yinede devam etmek istiyor musunuz?';
  msgPreparedText006 :string = 'Grubu taþýyamazsýnýz.';
  msgPreparedText007 :string = 'Sýra No Giriniz :';
  msgPreparedText008 :string = 'Yaptýðýnýz deðiþiklikler kaydedilsin mi?';

//PriceListPeriod
  msgPriceListPeriod001 :string = 'Dönem adý girilmek zorundadýr!';
  msgPriceListPeriod002 :string = 'Dönem baþlangýç tarihi girilmek zorundadýr!';
  msgPriceListPeriod003 :string = 'Dönem bitiþ tarihi girilmek zorundadýr!';
  msgPriceListPeriod004 :string = 'Seçilen kayýtlar için arttýþ miktarý belitlenmeli.';
  msgPriceListPeriod005 :string = 'Eþleþen Malzemelerinizin fiyatlarý güncellenecektir. Bu iþlemin geri dönüþü YOKTUR!';
  msgPriceListPeriod006 :string = 'Eklenmek istenen dönemin, eski kayýtlarla tarihleri keþiþmektedir.!' + #13 +'Ýþleminiz iptal edildi.';

//ProcessControlList
  msgProcessControlList001 :string = 'Eklemek istediðiniz hizmet mevcut!';
  msgProcessControlList002 :string = 'Fatura yeri boþ olamaz!';
  msgProcessControlList003 :string = 'Hizmet Seçilmemiþ, kategori altýndaki tüm hizmetler eklenecek?'+#13+'Devam Etmek Ýstiyor musunuz?';
  msgProcessControlList005 :string = 'Seçilen kategoride hizmet yok!';
  msgProcessControlList006 :string = ' kategorisindeki iþlemler dosya iþlem kontrollerinde mevcut , yeni kayýt eklenmedi';
  msgProcessControlList007 :string = '%s kategorisindeki tüm iþlemler eklenmiþtir. Toplam %s kayýt.';
  msgProcessControlList008 :string = '%s kategorisindeki toplam %s adet kayýttan %s adet kayýt listeye eklenmiþtir.' +
                             #13 +'Dosya iþlem kontrolünde mevcut olanlar eklenmemiþtir.';
  msgProcessControlList009 :string = ' adet kayýt listeye eklendi.' +#13 + 'Hata alýndýðýndan iþleme devam edilemiyor.';
  msgProcessControlList010 :string = 'Kalan istekler ile %s belge Numaralý Yeni Bir Satýnalma Ýsteði Oluþturulup iptal edilmiþtir.';
  msgProcessControlList011 :string = '"Deðer" bilgisi dolu olmalýdýr!';
  msgProcessControlList012 :string = '"Fatura Yeri" veya "Fatura" bilgisi dolu olmalýdýr!';
  msgProcessControlList013 :string = '"Fatura Yeri" veya "Kurumu" bilgisi dolu olmalýdýr!';
  msgProcessControlList014 :string = '"Uyarý Mesajý" kontrol tipinde "Uyarý Notu" girmek zorunludur!';

//ProcessDetail


//Proform
  msgProform001 :string = 'Yeni kurum fiyatlarý uygulansýn mý?';
  msgProform002 :string = '%s kurum için listedeki tüm iþlemlerin bu kuruma ait fiyatlarý güncellenecek devam etmek istiyormusunuz?';
  msgProform003 :string = 'Not : Ýndirim ve tahsilatý olmayan kayýtlar güncellenecek';
  msgProform004 :string = 'Tarih " %s " arasýnda olmalýdýr iþleminiz iptal edildi.';
  msgProform005 :string = '"%s" kurumu için  geliþ dosyasýnda yapmak istediðiniz iþlemin türünü seçiniz.'+
                           #13 +' Yalnýzca yeni eklenen iþlemlerin bilgileri mi geliþ dosyasýna eklensin?'+
                           #13 +' Yalnýzca dosyada var olan iþlemlerin bilgileri mi güncellensin?'+
                           #13 +' Ýkisi de mi? ';
  msgProform006 :string = '%s kurum için listedeki yeni iþlemlerin bu kuruma ait fiyatlarýný dosyaya eklemek istiyormusunuz?';
  msgProform007 :string = 'Hasta dosyasýna eklenmek istenen iþlem Teletýp Mükerrerlik sorgulama iþlemi olduðundan iþlem zamaný, gerçek zaman olarak deðiþtirilecektir.';
  msgProform008 :string = 'Tüm iþlemlerin fiyatý anlaþma fiyatý ile deðiþtirilecek.' + #13 + 'Devam etmek istiyor musunuz?';
  msgProform009 :string = 'Deðiþiklikler hasta dosyasýna uygulanýyor...';
  msgProform010 :string = 'Deðiþiklikler hasta dosyasýna uygulandý';
  msgProform011 :string = 'Fiyatlar yeniden uygulanýyor...';

//Purchasing
  msgPurchasing001 :string = 'Bu onaydan sonra istekler üzerinde herhangi bir deðiþiklik yapamayacaksýnýz.'+#13+
                     'Devam etmek istiyor musunuz?';
  msgPurchasing002 :string = 'Farklý depolara ait satýnalma isteklerini birleþtiremezsiniz.';
  msgPurchasing003 :string = '%s belge nolu isteði, %s nolu aktif isteðin içine atmak istediðinize emin misiniz?';
  msgPurchasing004 :string = 'Ýstekler içindeki benzer stoklar birleþtirilsin mi?';
  msgPurchasing006 :string = 'Ýsteði iptal etmek istediðinizden emin misiniz?';
  msgPurchasing007 :string = 'Tüm istekler için seçili firmaya teklif hazýrlanacak. Devam etmek istiyor musunuz?';
  msgPurchasing008 :string = 'Ýsteðin durumu deðiþecek, devam etmek istediðinizden emin misiniz?';
  msgPurchasing010 :string = 'Yapýlan satýnalma isteði için alýnan tüm teklifler onaylanacak, devam etmek istediðinizden emin misiniz?';
  msgPurchasing011 :string = '%s adlý stok için %s kurum atanacak.'+#13+'Devam etmek istiyor musunuz?';
  msgPurchasing012 :string = 'Sipariþ deðiþtirme iþlemi için not giriniz.';
  msgPurchasing013 :string = ' Sipariþ tamamlanacak, '+'devam etmek istiyor musunuz?';
  msgPurchasing014 :string = 'Ýsteði bir önceki adýma almak istediðinizden emin misiniz?';
  msgPurchasing015 :string = ' belge nolu isteðinizi bir önceki adýma almak istediðinizden emin misiniz?';
  msgPurchasing017 :string = 'Ýstek Sipariþ durumunu geçecek, devam etmek istediðinizden emin misiniz?';
  msgPurchasing018 :string = 'Sipariþi iptal etmek istediðinizden emin misiniz?';
  msgPurchasing020 :string = ' Belge Numaralý Yeni Bir Satýnalma Ýsteði Oluþturulmuþtur.';
  msgPurchasing021 :string = 'Yeni Bir Satýnalma Ýsteði Oluþturulacak Veri Bulunamadý.';
  msgPurchasing022 :string = 'Miktar Giriniz';
 //msgMultiUsed144 ile degistirildi
 //msgPurchasing023 :string = 'Hatalý Bir Deðer Girdiniz Lütfen Sayý Giriniz';
  msgPurchasing024 :string = 'Anlaþmalý olan fiyatlar deðiþtirilmedi.';
  msgPurchasing025 :string = 'Yukarýdaki stoklarýn anlaþmalarý vardýr.';
  msgPurchasing026 :string = 'Anlaþmadan gelen birim döviz olduðundan döviz bilgilerinin güncellenmesi gerekmektedir. fiyat getirilmez';
  msgPurchasing027 :string = '%s adlý stok için %s kurum iptal edilecek.'+#13+'Devam etmek istiyor musunuz?';
  msgPurchasing028 :string = 'En az bir firmanýn seçilmiþ olmasý gerekmektedir.';
  msgPurchasing029 :string = 'Detay toplamý fazla olan kayýtlar var!';
  msgPurchasing030 :string = 'iþleminiz iptal edildi...';
  msgPurchasing031 :string = 'Detay toplamý farklý olan kayýtlar var!';
  msgPurchasing032 :string = 'yinede devam etmek istiyormusunuz.';
  msgPurchasing033 :string = 'Detay toplamý fazla olan kayýtlar var! lütfen uygun halen getitiriniz.';
  msgPurchasing034 :string = 'Üst Stok üzerinden teklif hazýrlanamaz! "Seç" ile detay stok seçiniz';
  msgPurchasing035 :string = 'Sipariþ verilenler stoklar da iptal edilsin mi?';
  msgPurchasing036 :string = 'Detay kayýtlar içerisinden en az bir kayýt olmasý gerekmekte iþleminiz iptal edildi.';
  msgPurchasing037 :string = 'Sipariþ verilmiþ stoklar mevcut. Ýþleminiz iptal edildi';
  msgPurchasing038 :string = 'Detay kayýtlarý silinecek devam edilsin mi!';
  msgPurchasing039 :string = 'Detay kayýtlar içerisinden en az bir kayýt olmasý gerekmekte iþleminiz iptal edildi.';
  msgPurchasing040 :string = 'Uygun alýþ birimi bulunamadý! Ýþleminiz iptal edildi';
  msgPurchasing041 :string = 'Seçilen muadil kaydýn alýþ birimi ayný deðil! Ýþleminiz iptal edildi';
  msgPurchasing042 :string = 'Uygun alýþ birimi bulunamadý! Ýþleminiz iptal edildi';
  msgPurchasing043 :string = 'Satýnalma Sipariþ';
  msgPurchasing044 :string = 'Belirlenen Tutarý aþan satýnalma iþlemi var! Onaylamak için týklayýnýz';
  msgPurchasing045 :string = 'Sipariþin tamamlanmasý için yönetici onayý gerekmetedir. Devam etmek istiyormusunuz?';
  msgPurchasing046 :string = 'Sipariþiniz onaylanacak devam etmek istiyormusunuz?';
  msgPurchasing047 :string = 'Sipariþiniz onayý iptal edilecek devam etmek istiyormusunuz?';

  msgPurchasing048 :string = 'Þube tanýmlarýnda; Satýnalma için tanýmlanan mail adresi bilgisi bulunamadý! iþleminiz iptal edildi.';
  msgPurchasing049 :string = 'Þube tanýmlarýnda; Satýnalma Sipariþ için tanýmlanan mail adresi bilgisi bulunamadý! iþleminiz iptal edildi.';
  msgPurchasing050 :string = 'Fiyat teklifi girilmeyen stoklar var! bu stoklar üzerinde iþlem yapamazsýnýz';
  msgPurchasing051 :string = 'Anlaþma ile belirlenen alým fiyatýný (tolerans dahil) aþan stoklar var iþleminiz iptal edildi.';
  msgPurchasing052 :string = 'Baðlantý saðlanamadý lütfen mail bilginizi kontrol ediniz!';
  msgPurchasing053 :string = '%s firmasýna mail gönderilemedi.';
  msgPurchasing054 :string = 'Firmalara mail gönderiliyor lütfen bekleyiniz';
  msgPurchasing055 :string = '%s  Belge Numaralý Ýsteðin Detaylarý';
  msgPurchasing056 :string = '%s  Belge Numaralý Ýstek Ýçin Teklif Yapýlan Firmalar';
  msgPurchasing057 :string = 'Ýstek Detaylarý';
  msgPurchasing058 :string = 'Teklif Yapýlan Firmalar';
  msgPurchasing059 :string = 'Þubelerden fiyat bilgileri okunuyor';
  msgPurchasing060 :string = '%s  Firmasý Ýçin Ýstenilen Teklif Detaylarý';
  msgPurchasing061 :string = 'Alým Yapýlacak Firmalar';
  msgPurchasing062 :string = 'Daðýtalacak Þubeler';
  msgPurchasing063 :string = 'Teklif Alýnan Firmalar';
  msgPurchasing064 :string = 'Dikkat Muadil Stok';
  msgPurchasing065 :string = 'Teklif Alýnan Stoklar';
  msgPurchasing066 :string = '%s  Belge Numaralý Ýstek Ýçin Teklif Alýnan Stoklar';
  msgPurchasing067 :string = '%s  Belge Numaralý Ýsteðin Detaylarý';
  msgPurchasing068 :string = '%s  Belge Numaralý Ýstek Ýçin Teklif Yapýlan Firmalar';
  msgPurchasing069 :string = 'Firma :';
  msgPurchasing070 :string = 'Ana Stok : ';
  msgPurchasing071 :string = 'Detay Stok :';
  msgPurchasing072 :string = 'Tüm Þubeler için';
  msgPurchasing073 :string = 'Daðýtýlmasý Gereken Toplam : ';
  msgPurchasing074 :string = 'Aktif Toplam : ';
  msgPurchasing075 :string = 'Ýstek Toplamý : ';
  msgPurchasing076 :string = 'Teklif Toplamý : ';
  msgPurchasing077 :string = 'Firma';
  msgPurchasing078 :string = 'Þube';
  msgPurchasing079 :string = 'Stok';
  msgPurchasing080 :string = 'Teklif Detaylarý';
  msgPurchasing081 :string = 'Lütfen Alanlarda Deðiþiklik Yapmayýnýz ve Þablon Yapýsýný Bozmayýnýz Sadece Farklý Boyalý Alanlarý Düzenleyebilirsiniz';
  msgPurchasing082 :string = 'Tel';
  msgPurchasing083 :string = 'Fax';
  msgPurchasing084 :string = 'TEKLÝFLER';
  msgPurchasing085 :string = 'Excel þablonu okunamadý';
  msgPurchasing086 :string = 'Miktar deðiþikliði için açýklama girmelisiniz!';
  msgPurchasing087 :string = 'Teklif Fiyat Çalýþmasý olarak sonlandýrýlacak!'+#13+'Devam etmek istiyor musunuz?';
  msgPurchasing088 :string = 'Kur bilgisi boþ olduðu için iþlem yapýlamadý!';
  msgPurchasing089 :string = 'Satýnalma süreçlerine ait herhangi bir ekran yetkiniz bulunamadý!';

//FirmsAggrement
  msgFirmsAggrement001 :string = 'Ýptal iþlemi için açýklama girmelisiniz!';

//QuaDocAnalysis
  msgQuaDocAnalysis001  :string = 'Bu doküman için arþivleme iþlemi gerçekleþtiremezsiniz.';

//QuaDocEditExcel
  msgQuaDocEditExcel001 :string = 'Dosya kaydetme iþlemi baþarýsýz.'; //174869;KDUMAN;27.08.2019;

//QuaDocEditPanel
  msgQuaDocEditPanel001 :string = 'Tüm zorunlu alanlarý doldurmadan dokümaný kaydedemezsiniz.';
  msgQuaDocEditPanel002 :string = 'Sadece doküman klasörleri içerisine ekleme yapabilirsiniz.';
  msgQuaDocEditPanel003 :string = 'Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?';
  msgQuaDocEditPanel004 :string = 'Bu dökümana ait revizyon iþlemi daha önceden baþlatýlmýþ.';
  msgQuaDocEditPanel005 :string = '%s bir doküman için bu iþlemi gerçekleþtiremezsiniz.';
  msgQuaDocEditPanel006 :string = 'Boþta olan numaralar: ';
  msgQuaDocEditPanel007 :string = 'Boþta olan numara bulunmuyor. ';
  msgQuaDocEditPanel008 :string = 'Sýradaki numara: ';

//QuaDocFolderSettings
  msgQuaDocFolderSettings001  :string = 'Bu klasör için þablon klasör uygula seçeneði kullanýlamaz.';
  msgQuaDocFolderSettings002  :string = 'Baþka klasör ve doküman(lar) tarafýndan doküman tipi olarak gösterilmiþ olan' +
                                          ' kayýtlarý silemezsiniz.';
  msgQuaDocFolderSettings003  :string = 'Ýçerisinde klasör veya doküman bulunan klasörleri silemezsiniz.';
  msgQuaDocFolderSettings004  :string = 'Silme iþlemi gerçekleþtirilecek. Devam etmek istiyor musunuz?';
  msgQuaDocFolderSettings005  :string = 'Seçilen klasör içerisine þablon klasör ekleme iþlemi yapýlacaktýr. Devam etmek istiyor musunuz?';
  msgQuaDocFolderSettings006  :string = 'Bu tip daha önceden tanýmlanmýþ.';
  msgQuaDocFolderSettings007  :string = 'Tüm bilgileri girmelisiniz.';

//QuaDocManageProcess
  msgQuaDocManageProcess001 :string = '%s iþlemi gerçekleþtirilecek. ';
  msgQuaDocManageProcess002 :string = 'Yaptýðýnýz iþlem gerçekleþtirilecek. ';
  msgQuaDocManageProcess003 :string = 'Birim kalite sorumlusuna gönderme';
  msgQuaDocManageProcess004 :string = 'Hazýrlanma aþamasýnda olan dokümaný silme';
  msgQuaDocManageProcess005 :string = 'Gözden geçirme';
  msgQuaDocManageProcess006 :string = 'Yayýndan kaldýrma';
  msgQuaDocManageProcess007 :string = 'Seçilen dokümanýn revize geçmiþinde bulunan dokümanlar ile birlikte silinmesi';
  msgQuaDocManageProcess008 :string = 'Arþive gönderme';
  msgQuaDocManageProcess009 :string = 'Tekrar yayýna alma';

//QuaDocProcess
  msgQuaDocProcess001 :string = 'Baþka kullanýcýnýn iþlemindeki dokümaný askýya alamazsýnýz.';
  msgQuaDocProcess002 :string = 'Hazýrlayan onayý bulunmayan bir dokümaný onaya gönderemezsiniz.';
  msgQuaDocProcess003 :string = 'Doküman Yönetimi';
  msgQuaDocProcess004 :string = 'Onaya sunduðunuz doküman iþleme alýndý.';
  msgQuaDocProcess005 :string = 'Hazýrlanmasý için gönderdiðiniz doküman iþleme alýndý.';
  msgQuaDocProcess006 :string = 'Üst yönetim onayý sonuçlandý.';
  msgQuaDocProcess007 :string = 'Doküman üst yönetime sunuldu.';
  msgQuaDocProcess008 :string = 'Onayýnýza sunulan yeni doküman var.';
  msgQuaDocProcess009 :string = 'Hazýrlamanýz gereken yeni doküman var.';
  msgQuaDocProcess010 :string = 'Ýþlem yapmanýz için gönderilen doküman geri alýndý.';
  msgQuaDocProcess011 :string = 'Ýmzanýzýn bulunduðu doküman yayýnlandý.';
  msgQuaDocProcess012 :string = 'Yeniden düzenlemeniz gereken doküman var.';
  msgQuaDocProcess013 :string = 'Baþka kullanýcýnýn iþlemindeki dokümaný silemezsiniz.';
  msgQuaDocProcess014 :string = 'Okumanýz gereken doküman var. Buraya týklayarak dokümaný açabilirsiniz.';
  msgQuaDocProcess015 :string = '%s adlý doküman þu an farklý bir kullanýcý tarafýndan düzenleniyor.';
  msgQuaDocProcess016 :string = 'Doküman durumu deðiþtirilmiþ olduðundan þu anda bu iþlemi gerçekleþtiremezsiniz. Lütfen listeyi yenileyiniz.';

//QuaDocument
  msgQuaDocument001 :string = 'Belirlediðiniz kriterlere uygun dokümanlar listelenmiþtir.';
  msgQuaDocument002 :string = 'Bu doküman üzerinde analiz yapýlmamaktadýr.';
  msgQuaDocument003 :string = 'Belirlediðiniz kriterlere uygun doküman bulunamamýþtýr.';
  msgQuaDocument004 :string = 'Bu iþlemi yayýndan kaldýrýlmýþ bir doküman üzerinde gerçekleþtiremezsiniz.';
  msgQuaDocument005 :string = 'Yayýndaki bir doküman için silme iþlemi gerçekleþtiremezsiniz.';
  msgQuaDocument006 :string = '[Okumanýz gereken dokümanlar...]';
  msgQuaDocument007 :string = 'Filtrelenen Dokümanlar';
  msgQuaDocument008 :string = 'Dokümanlar Listeleniyor...';
  msgQuaDocument009 :string = 'Doküman açýlýyor...';

//QuickAddCrmPoll
  msgQuickAddCrmPoll001 :string = 'Lütfen, Hasta seçme iþleminizi tekrarlayýnýz.';
  msgQuickAddCrmPoll002 :string = 'Anket tamamlandý mý?'+#13#13+ '***Anket tamamlandýktan sonra üzerinde deðiþiklik yapamayacaksýnýz!';
  msgQuickAddCrmPoll003 :string = 'Silmek istediðinize emin misiniz?';
  msgQuickAddCrmPoll004 :string = 'Yeni anket kaydý açmak ister misiniz?';
  msgQuickAddCrmPoll005 :string = ' Kullanýcýsý tarafýndan tamamlanmamýþ anket mevcut!' + #13#13 + 'Yeni bir anket açmak ister misiniz?';
  msgQuickAddCrmPoll006 :string = 'Zorunlu alan tanýmý vardýr! Eksik bilgi giriþi yaptýnýz.';

//RationProcess
  msgRationProcess001 :string = 'Ýlk önce "Refaketçi" seçmelisiniz.';
  //msgRationProcess002 :string = 'Ayný kayýt daha önceden eklenmiþ';
  msgRationProcess003 :string = 'Eski tarihli rasyon bilgilerini silemezsiniz.';
  msgRationProcess004 :string = '"%s" tarihindeki tüm kayýtlar, "%s" tarihi için çoðaltýlacak. Devam etmek istiyor musunuz?';
  msgRationProcess005 :string = 'Beklemede olan rasyon istekleri var. Yine de devam etmek istiyor musunuz?';
  msgRationProcess006 :string = 'Karþýlanmýþ rasyon istekleri olan bir dosyada yeni rasyon istekleri yapýldý.';
  msgRationProcess007 :string = 'Lütfen Yazdýrýlacak Hasta Listesi Oluþturunuz';
  msgRationProcess008 :string = 'Silmek istediðiniz rasyon''un durumu Onaylanmýþ veya Karþýlanmýþ. Ýþleminiz iptal edildi!';
  msgRationProcess009 :string = 'Bina bilgisi seçilmedi. Ýþleminiz iptal edildi!';
  msgRationProcess010 :string = 'Kat bilgisi seçilmedi. Ýþleminiz iptal edildi!';
  msgRationProcess011 :string = 'Belirtilen tarihte rasyon isteði yapýlmýþ hasta bulunamadý !';
  msgRationProcess012 :string = 'Hasta için seçilen rasyon diyabetik deðil. %s';
  msgRationProcess013 :string = 'Hasta diyabetiktir, hasta için diyabetik rasyon seçilmedi !';
  msgRationProcess014 :string = 'Kýrmýzý renkli hata mesajý olan hastalar, diyabetik hastalardýr ve bu hastalar için diyabetik rasyon seçilmemiþtir !';
  msgRationProcess015 :string = 'Silinecek rasyon isteði bulunamadý !';
  msgRationProcess016 :string = 'Gönderilecek rasyon isteði bulunamadý !';

// RationSupply LRF_ID = 265
  msgRationSupply001 :string = 'Ýstekler karþýlandý durumuna alýnacak devam etmek istiyor musunuz?';

// RationRequest LRF_ID = 268
  msgRationRequest001 :string = 'Rasyon gönderildi durumda olmalýdýr.';

//ReadFromExcel
  msgReadFromExcel001 :string = 'Ýlgili sütunlarý seçiniz.';
  msgReadFromExcel002 :string = 'Ýlgili sütunlarý ve Kurum bilgisini seçiniz.';
  msgReadFromExcel003 :string = 'Kurum bilgisini giriniz.';
  msgReadFromExcel004 :string = 'Microsoft Office 32 bit Database Engine Driver yüklemelisiniz!';

//RelPatRec
  //msgRelPatRec001 :string = 'Ayný kayýt daha önce eklenmiþ.';
  msgRelPatRec002 :string = 'E-mail adresi yanlýþ, "info@bizmed.biz" þeklinde olmalýdýr.' + #13+
                    'E-mail adresi iptal edilecek, devam etmek istiyor musunuz?';
  msgRelPatRec003 :string = 'Son kullanma tarihi geçmiþ tarih olamaz!'+#13+'Ýþleminiz iptal edildi.';
  msgRelPatRec004 :string = 'Hata oluþtu, bonus eklenemedi.';
  msgRelPatRec005 :string = 'Otomatik yapýlan bonus kayýtlarýný silemezsiniz';
  msgRelPatRec006 :string = 'Silinecek bonus kalan bonusdan küçük olamaz.' + #13 +'Ýþleminiz iptal edildi.';

//RequestAll
  msgRequestAll002 :string = 'Baðlý Ýþlemler üzerinde tek baþýna iþlem yapamazsýnýz.';
  msgRequestAll003 :string = 'Geçmiþ tarihe istekde bulunamazsýnýz.';
  msgRequestAll004 :string = 'Seçili tetkikler iptal edilecek, emin misiniz?';

//RequestDesign
  msgRequestDesign001 :string = 'Ýlk önce bir grup oluþturmalýsýnýz.';
  msgRequestDesign002 :string = 'Sayýsý sýfýr veya aktif olmayan iþlemleri ekleyemezsiniz.';
  msgRequestDesign003 :string = 'Belirtilen iþlem daha önce eklenmiþ.';
  msgRequestDesign004 :string = 'Gruba baðlý tüm detay bilgisi silinecek. Yinede devam etmek istiyor musunuz?';
  msgRequestDesign005 :string = 'Aktif liste tavsiye edilen 30 kaydý geçti.';
  msgRequestDesign006 :string = 'Aktif edilmeye çalýþýlan hizmet, laboratuvar test tanýmlarýnda pasif durumdadýr. ';

//RequestsForPat
  msgRequestsForPat001 :string = 'Seçili iþlem iptal edilsin mi?';
  msgRequestsForPat002 :string = 'Hatalý iþlem : ';
  msgRequestsForPat003 :string = 'Ýptal iþlemi için açýklama girmelisiniz!';
  msgRequestsForPat004 :string = 'Ýþlem geri alýnacak , devam edilsinmi?';
  msgRequestsForPat005 :string = 'Ýþlem(ler) geri alýnacak , devam edilsinmi?';
  msgRequestsForPat006 :string = 'Ýþlem onaylanacak, devam edilsinmi?';
  msgRequestsForPat007 :string = 'Ýþlem(ler) onaylanacak, devam edilsin mi?';
  msgRequestsForPat008 :string = 'Ýþlem(ler) iptal edilecek, devam edilsinmi?';
  msgRequestsForPat009 :string = 'Bölüme baðlý "Sýra No Barkodu" yazýcý formu tanýmý bulunamadý.';
  msgRequestsForPat010 :string = 'Ýþleme daha önceden randevu verilmiþ.';
  msgRequestsForPat011 :string = 'Zamaný gelmemiþ iþlemleri onaylamamalýsýnýz.';
  msgRequestsForPat012 :string = 'Hasta dosyasýnýn Ýþlem Süresi dolmuþ veya Dosya kapatýlmýþ.'+#13+
                         'Hastaya seçili dosyanýn benzeri yeni geliþ dosyasý açýp, '+
                         'istekleri açýlan dosyaya iþlemek ister misiniz?';
  msgRequestsForPat013 :string = 'Bulunan dosya üzerinden iþlem devam etmek istiyor musunuz?';
  msgRequestsForPat014 :string = 'Yeni Dosya açýlmasý sýrasýnda hata oluþtu. ';
  msgRequestsForPat015 :string = '%s adlý iþlem ve ona baðlý eklenmiþ iþlemlerin ödemesi alýnmadan iþleme devam edemezsiniz.';
  msgRequestsForPat016 :string = '%s adlý iþleme randevu verilmeden iþleme devam edemezsiniz.';
  msgRequestsForPat017 :string = 'Yatýþ Ýsteði "Ýptal" edilmiþ!' + #13;
  msgRequestsForPat018 :string = 'Yatýþ Ýsteði yatýþ birimi tarafýndan onaylanmamýþ!' + #13;
  msgRequestsForPat019 :string = 'Randevu iþlemini silmek istediðinize emin misiniz?';
  msgRequestsForPat020 :string = 'Sýra numarasý verebilmeniz için istek formu alaný dolu olmalýdýr!';
  msgRequestsForPat021 :string = ' kalan kayýtlar için iþleme devam edilsin mi?';
  msgRequestsForPat022 :string = 'Hizmete baðlý iþlemin/iþlemlerin, Hasta Payý Ücreti ödenmemiþtir.';
  msgRequestsForPat023 :string = 'Karþýlanmýþ rasyon istekleri olan bir dosyada yapýlan yeni rasyon istekleri için Onay Ýptal iþlemi yapýldý.'; //164903;KDUMAN;09.10.2019;
  msgRequestsForPat024 :string = 'Sadece ayný gün içerisinde onaylanan istekleri iptal edebilirsiniz.'; //164903;KDUMAN;09.10.2019;

//Revenue
  msgRevenue001 :string = 'Yetkiniz olmayan kurum tahsilatýný deðiþtiremezsiniz.';
  msgRevenue002 :string = 'Girdiðiniz deðer tahsil edilecek deðerden büyük olamaz.';
  msgRevenue003 :string = 'Senet Düzeltme yetkiniz yok.';
  msgRevenue004 :string = 'Sadece "Nakit" , "Kredi Kartý", "Havale/Eft" için geri ödeme yapabilirsiniz.';
  msgRevenue005 :string = 'Hastaya geri para ödemesi yapýlacak, eminmisiniz?';
  msgRevenue006 :string = 'Girilen Senet bilgileri iptal edilecek. Devam edilsin mi?';
  msgRevenue007 :string = 'Girilen Çek bilgileri iptal edilecek. Devam edilsin mi?';
  msgRevenue008 :string = 'Tutar sýfýrdan büyük olmalý.';
  msgRevenue009 :string = 'Geri ödemesi yapýlacak iþlemler içinde laboratuar tarafýndan iþlemi baþlanmýþ testler var.'+#13+
                  'Yinede iþleme devam etmek istiyor musunuz?';
  msgRevenue010 :string = '"Vade Tarihi" ni girmek zorundasýnýz.';
  msgRevenue011 :string = '"Senedin Durumu" nu belirtmek zorundasýnýz.';
  msgRevenue012 :string = 'Kýrmýzý renkte belirtilen zorunlu alanlarý giriniz.';
  msgRevenue013 :string = 'Vade Tarihini girmek zorundasýnýz.';
  msgRevenue014 :string = 'Çekim Durumunu belirtmek zorundasýnýz.';
  msgRevenue016 :string = 'Çeki iptal etmek istiyormusunuz?';
  msgRevenue017 :string = 'Çek Düzeltme yetkiniz yok.';
  msgRevenue019 :string = 'Girdiðiniz deðer sýfýrdan küçük olamaz.';
  msgRevenue020 :string = 'Fiþ veya Fatura kesmek zorundasýnýz.';
  msgRevenue021 :string = 'Bu Açýk Hesap için kullanýlabilir limit =  %s  dir. Ýþleminiz iptal edilecektir.';
  msgRevenue022 :string = 'Seçilen dövizin günlük kur bilgisi girilmemiþ. Kur bilgileri güncellenecek.';
  msgRevenue023 :string = 'Ýþleminiz tamamlandý, lütfen tekrar deneyin.';
  msgRevenue024 :string = 'Seçilen Avans miktarý tahsil edilecek deðerden küçük, '+ 'Avans miktarý kadar tahsil etmek ister misiniz?';
  msgRevenue025 :string = 'Sadece Nakit, Kredi Kartý ve Havale/EFT için bu iþlemi kullanabilirsiniz.';
  msgRevenue026 :string = 'Hoþgeldiniz...';
  msgRevenue027 :string = 'Nakit';
  msgRevenue028 :string = 'Tahsil Edilen Tutar';
  msgRevenue029 :string = 'Ýade Edilen Tutar';
  msgRevenue030 :string = 'Lütfen Kredi Kartýnýn Son 4 hanesini giriniz.';
  msgRevenue031 :string = 'Onaylanmýþ bir hizmetin tahsilatýný geri iade yapamazsýnýz.';
  msgRevenue032 :string = 'Geri ödeme iþlemi daha önce yapýlmýþ olabilir tekrar kontrol ediniz!';
  msgRevenue033 :string = 'Hiçbir tahsilat tipine yetkiniz bulunmamaktadýr!';
  msgRevenue034 :string = 'Onaylanmýþ bir hizmetin tahsilatýný geri iade yapmaya çalýþýyorsunuz.';
  msgRevenue035 :string = '   Notlarý Görmek için Týklayýnýz...';
  msgRevenue036 :string = 'Yukarýdaki iþlemler onaylýdýr. Geri iade iþlemine devam etmek istiyor musunuz?';
  msgRevenue037 :string = 'Yukarýdaki iþlemler onaylýdýr. Yetkiniz olmadýðýndan geri iade iþlemi iptal edildi!';
  msgRevenue038 :string = 'Yukarýdaki iþlemlerin geri ödemesi yapýlacak, bu iþlemlerin faturasý mevcuttur.';
  msgRevenue039 :string = 'Kasa kapanýþý yapýlmýþ tahsilatlarýn, geri iadesini yapmaya yetkiniz bulunmamaktadýr.';
  msgRevenue040 :string = 'Hastanýn diðer dosyalardan gelen borç tutarý';
  msgRevenue041 :string = 'Kart ile Pos Ayný Banka Mý? alanýný boþ býrakamazsýnýz!';
  msgRevenue042 :string = 'Tahsilat yapýlmaya çalýþýlan Bankaya ait Onay Kodu sistemde kayýtlýdýr! ';
  msgRevenue043 :string = 'Banka bilgisini seçmeniz gerekmektedir.';
  msgRevenue044 :string = 'Girdiðiniz deðer tahsil edilecek avans deðerinden fazla olamaz.';
  msgRevenue045 :string = 'Seçtiðiniz avans miktarý tahsil edilecek tutardan düþük olamaz.'; //154711
  msgRevenue046 :string = 'Tahsilatýn kalan tutarý üzerinden indirim yapýlacak, "Kalana Ýndirim"''i iþaretlemek istiyor musunuz?';

//PatientCare
  msgPatientCare001 :string = 'Seçilen plana ait tüm giriþimler için uygulama zamanlarý oluþturulacaktýr. ';
  msgPatientCare002 :string = 'Seçilen giriþim için uygulama zamanlarý oluþturulacaktýr. ';
  msgPatientCare003 :string = 'Seçilen giriþim için oluþturulmuþ uygulama zamanlarý silinecektir. ';
  msgPatientCare004 :string = 'Eklenmiþ tüm kýlavuz ve planlar kaldýrýlacaktýr. ';
  msgPatientCare005 :string = 'Seçtiðiniz plan kaldýrýlacaktýr. ';
  msgPatientCare006 :string = 'Seçilen plana ait tüm giriþimler kaldýrýlacaktýr. ';
  msgPatientCare007 :string = 'Seçilen giriþim kaldýrýlacaktýr. ';

//Permissions
  msgPermissions001 :string = 'Personel bilgilerinde Kullanýcý-Personel eþleþmesi ve Ýþe Baþlangýç Tarihi dolu olmalýdýr!';
  msgPermissions002 :string = 'Ýzin baþlangýç tarihi geçmiþe dönük olamaz!';
  msgPermissions003 :string = 'Ýzin bitiþ tarihi geçmiþe dönük olamaz!';
  msgPermissions004 :string = 'Ýzin bitiþ tarihi baþlangýç tarihinden küçük olamaz!';
  msgPermissions005 :string = 'Ýzin hakký aþýldý.'+#13+
                              'Onaylanabilecek/Talep edilebilecek izin hakký : %s';
  msgPermissions006 :string = 'Ýzin talebinizi silmek istediðinize emin misiniz?';
  msgPermissions007 :string = 'Bu tarihler arasýnda randevu mevcut.';
  msgPermissions008 :string = 'Ýptal etmek için açýklama girmelisiniz.';
  msgPermissions009 :string = 'Belirttiðiniz tarihler arasýnda zaten bir talebiniz var!';
  msgPermissions010 :string = 'Göreve baþlama tarihi izin bitiþ tarihine eþit ya da küçük olamaz!';
  msgPermissions011 :string = 'Bu tarihler arasýnda web randevusu mevcut.';
  msgPermissions012 :string = 'Bu tarihler arasýnda randevu mevcut!Ýþleminiz iptal edilecek.';
  msgPermissions013 :string = 'Yapýlan deðiþiklikleri iptal etmek istiyor musunuz?';
  msgPermissions014 :string = 'Sadece Onaylanan tarihler arasýnda deðiþiklik yapýlabilir.';
  msgPermissions015 :string = 'Ýzin Talebiniz';
  msgPermissions016 :string = '%s gün olarak onaylanmýþtýr. Gereklik evraklarý ilgili birimlere teslim ediniz.';
  msgPermissions017 :string = 'Ýptal edildi görüntülemek için týklayýnýz.';
  msgPermissions018 :string = 'Bu tarihler arasýnda web randevunuz açýlmýþ.'+#13+'Ýþleminiz iptal edilecek.';
  msgPermissions019 :string = 'Ameliyat Planlamanýz bulundu. Talebiniz iptal edildi.';
  msgPermissions020 :string = 'Yýllýk Ýzin %d gün önceden alýnmalýdýr. Ýþleminiz Ýptal Edildi.';
  msgPermissions021 :string = 'Ýzin tarihleriniz arasýnda %s branþýn' +#13+
                              'yüzde %d oran olan izin kotasý, yüzde %d oranla aþýlmýþtýr.' + #13+
                              'Ýzin tarihlerinizi deðiþtirerek devam edebilirsiniz.';
  msgPermissions022 :string = 'Ýzin tarihleri aralýðýnda personele ait nöbet tanýmý vardýr. Ýþleme devam edebilmek için bu tanýmý siliniz.';
  msgPermissions023 :string = 'Bu iki tarih arasýndaki tüm online web kayýtlarý silinecektir.Devam etmek istiyor musunuz?';
  msgPermissions024 :string = 'Onay Sýrasýna Göre Ýþlemi Red Edemezsiniz !!';
  msgPermissions025 :string = 'Kullanýcý / Personel Eþleþmesi Yapýlmamýþ Ýþleminiz Ýptal Edildi.!!!';
  msgPermissions026 :string = 'Ýzin Onay Personelleri Tanýmlanmamýþ Ýzin Ýþleminiz Ýptal Edildi. !!';
  msgPermissions027 :string = 'Personel bilgilerinde Personelin Ýþe Baþlama Tarihi dolu olmalýdýr!';





//PrintedConsentForms
  msgPrintedConsentForms001 :string = 'Bu form daha önce eklenmiþ olduðundan tekrar ekleyemezsiniz.';
  msgPrintedConsentForms002 :string = '"%s" adlý onam formu dosyadan/iþlemden kaldýrýlacak.';
  msgPrintedConsentForms003 :string = 'Onam formu ekleme iþlemi gerçekleþtirilecek.';

//Security
  msgSecurity001 :string = 'Ayný isimde grup tanýmlý.';
  msgSecurity002 :string = 'Bu grup altýndaki tüm kullanýcýlar ayný görev tipine dönüþtürülsün mü?';
  msgSecurity003 :string = 'Raporun hangi module baðlý olmasý gerektiðini belirtin.';
  msgSecurity004 :string = 'Yetkiler taþýndý';
  msgSecurity005 :string = 'Ýndirim yetkisi iptal edilecek.';
  msgSecurity006 :string = 'Detayý olan bir grubu silemezsiniz.';
  msgSecurity007 :string = 'Yetkiler kopyalandý.';
  msgSecurity008 :string = 'Kayýt Filtrelenmiþtir.';
  msgSecurity009 :string = ' adlý kullanýcý sadece bu bilgisayarda otomatik olarak açýlmak için ayarlanacak.'+#13+'Devam etmek istediðinize emin misiniz?';
  msgSecurity010 :string = 'Þifre giriþi';
  msgSecurity011 :string = 'Lütfen %s %s adlý kullanýcýnýn þifresini giriniz.';
  msgSecurity012 :string = 'Girdiðiniz þifre hatalý. Ýþleminiz iptal edildi.';
  msgSecurity013 :string = 'Ýþleminiz baþarýyla tamamlandý.';
  msgSecurity014 :string = 'Yetki gruptan geldiði için iptal edilemez!';
  msgSecurity015 :string = 'Bu kullanýcýnýn üzerine zimmetli demirbaþ(lar) mevcut!'+#13+
                           'Zimmet iþlemlerini geri aldýktan sonra iþleme devam edebilirsiniz.' ;
  msgSecurity016 :string = 'Bu kullanýcýnýn tüm yetkileri, haberleþme ve þube bilgileri kaldýrýlacak onaylýyormusunuz?';
  msgSecurity017 :string = ' Yetkisine ait yetki gruplarý :';
  msgSecurity018 :string = 'Gruba ait kullanýcýlar olduðu için silemezsiniz!';
  msgSecurity019 :string = 'Gruba ait tüm yetkiler kullanýcý yetkisi olarak tanýmlanacaktýr. Devam edilsin mi?';
  msgSecurity020 :string = 'Bu yetki ters çalýþan bir yetkidir ve kullanýcýlara yetki kýsýtlamasý getirir.';
  msgSecurity021 :string = 'Tüm Yetkileri kaldýrmak istediðinize emin misiniz?';
  msgSecurity022 :string = '%s isimli týbbi kart pasiftir. Yine de yetki vermek istiyor musunuz?';
  msgSecurity023 :string = 'Grupta þubesi farklý kullanýcýlar mevcut. Ýþleminiz iptal edilecek!';
  msgSecurity024 :string = 'Kullanýcý þubesi grup þubesinden farklý! Ýþleminiz iptal edildi!';

//Service
  msgService001 :string = 'Kayýt mevcut';
  msgService002 :string = 'Medula kodu, Laboratur veya Randyoloji olan hizmetler için deðiþtirme grubu seçilemez! deðiþtirme grubu boþaltýldý.';
  msgService003 :string = 'Deðiþtirilen Resmi kodun Dosya Ýþlem Kontrollerinde kaydý bulundu!';
  msgService004 :string = 'Hizmet için oluþturulmuþ paket bulunduðundan "Paket Türü" alanýný boþ býrakamazsýnýz.';
  msgService005 :string = 'Ayný Branþta Kayýt mevcut!';
  msgService006 :string = 'Branþsýz Baðlý HUV Kodu tanýmý bulundýðundan dolayý, yeni bir Baðlý HUV Kodu tanýmý yapamazsýnýz.';
  msgService007 :string = 'Laboratuvar Test Tanýmý Bulunamadý.' + #13 + 'Hizmet Durumu: "Kullaným Dýþý" yapýldý!';
  msgService008 :string = 'Laboratuvar Test Tanýmý var (%s), fakat Pasiftir. Öncelikle Test Tanýmýný Aktif Ediniz.'
                          + #13 + 'Hizmet Durumu: "Kullaným Dýþý" yapýldý!';
  msgService009 :string = 'Hizmet Tipi: "Laboratuvar".' + #13+#10 +
                          'Hizmet "Kullaným Dýþý" olarak Kaydedildi! Laboratuvar Test tanýmý yapýldýktan sonra "Kullanýma" alýnýr.';


//ServiceCost
  msgServiceCost001 :string = 'Baþlangýç tarihi bitiþ tarihinden büyük olmamalýdýr.';
  msgServiceCost002 :string = 'Bir maliyet deðeri girmeniz gerekmektedir.';
  msgServiceCost003 :string = 'Maliyet deðeri önceki giriþlerle kesiþiyor.';
  msgServiceCost004 :string = 'Baþlangýç tarihi bitiþ tarihinden büyük olmamalýdýr! Deðiþiklik iptal edildi.';
  msgServiceCost005 :string = 'Maliyet deðeri önceki giriþlerle kesiþiyor! Deðiþiklik iptal edildi.';
  msgServiceCost006 :string = 'Kdv oraný girmeniz gerekmektedir.';

//Services_Def
  msgServicesDef002 :string = 'Hastalara iþlenmiþ hizmetler güncellenecek. Devam edilsin mi?';
  msgServicesDef003 :string = 'Ayný Seans seçiminde; fiyatý yüksek olan ameliyatýn '+#13+
                      'miktarýný 1 olarak, diðer ameliyat(lar)ýnda uygun '+#13+'katsayýyla gönderilmesi gerekir.'+#13+
                      'Dosyadaki ameliyatýn fiyatý : %s'+#13+
                      'Devam etmek istiyor musunuz?';
  msgServicesDef005 :string = 'Doktor bilgisi girilmemiþ hizmetleri iþleyemezsiniz.'+
                      'Lütfen "Doktor" kýsmý boþ olan iþlem(ler)e yapacak doktoru atayýnýz.';
  msgServicesDef006 :string = 'Ameliyatýn Seansýný belirtiniz.';
  msgServicesDef007 :string = 'Ameliyat, Diþ, Radyoloji Tetkik ve Diðer tipinde olmayan iþlemler için "Seans" belirtemezsiniz.';
  msgServicesDef008 :string = 'Bir üst kategoriyi silmek için öncelikle tüm alt kategorileri silmelisiniz.';
  msgServicesDef009 :string = 'Bir üst kategoriye hizmet tanýmlayamazsýnýz.! Alt kategori seçmelisiniz.';
  msgServicesDef010 :string = 'Ýþlemler yeni gruba taþýnacak, onaylýyor musunuz?';
  msgServicesDef011 :string = 'Hizmet hasta dosyalarýnda kullanýldýðýndan silinemez.!' + #13 +
          'Öncelikle hasta iþlemlerini silmelisiniz.';
  msgServicesDef012 :string = ' adlý hizmet tanýmý silinecek.!' + #13 + 'Lütfen onaylayýnýz.';
  msgServicesDef013 :string = 'Hizmet paket hizmetler içerisine dahil edilmiþ. Dahil edildiði paketlerden çýkarýlarak' +
    ' silme iþlemi yapýlacak. Devam etmek istiyor musunuz?';
  msgServicesDef014 :string = 'Hizmete ait paket tanýmý bulundu. Paket ve içerisine tanýmlanmýþ hizmetler kaldýrýlarak' +
    ' silme iþlemi yapýlacak. Devam etmek istiyor musunuz?';
  msgServicesDef015 : string = 'Lütfen üst kategori seçiniz! Ayný kaydý bir üst kategori olarak tanýmlayamazsýnýz. Ýþleminiz iptal edildi !';
  msgServicesDef016 : string = 'Ýlgili hizmet sýk kullanýlanlara baþarýyla eklenmiþtir!';
  msgServicesDef017 : string = 'Eklemek istediðiniz hizmet sýk kullanýlanlar listenizde mevcut. Ýþleminiz iptal edildi!';
  msgServicesDef018 : string = 'Ýlgili hizmet sýk kullanýlanlar listenizden silinecektir. Devam etmek ister misiniz?';



 //SnetImmQuery
  msgSnetImmQuery001 :string = 'BizSNET exesi bulunamadý! Bizmed exesinini olduðu yere bizSNET exesini kopyalayýnýz.';
  msgSnetImmQuery002 :string = 'e-Nabýz sistemine gönderilen Aþý Veri Setinde DÜZELTME veya SÝLME iþlemi yapýlamayacaktýr.';
  msgSnetImmQuery003 :string = 'Snet Kullanýcý Adý ve Þifre SHA1 boþ olamaz!';
  msgSnetImmQuery004 :string = 'Snet Kullanýcý Adý ve Þifre boþ olamaz!';
  msgSnetImmQuery005 :string = 'Online Protokol alýnamadý. Tekrar deneyiniz';
  msgSnetImmQuery006 :string = 'Bir saati geçen sorgulamalar gönderilemez tekrar sorgulama yapýnýz.';
  msgSnetImmQuery007 :string = 'Aþý gönderiliyor';
  msgSnetImmQuery008 :string = 'Aþý ATS''ye baþarýlý olarak gönderildi.';
  msgSnetImmQuery009 :string = 'ATS Sistemine Tekrar gönderilecek!';
  msgSnetImmQuery010 :string = 'Doktor TC Kimlik No Boþ Olamaz!';
  msgSnetImmQuery011 :string = 'Hasta Kimlik bilgilerinde kimlik numarasý dolu olmalýdýr!';
  msgSnetImmQuery012 :string = 'Karekod okutunuz.';
  msgSnetImmQuery013 :string = 'Aþý parti no karekod içerisinde bulunamadý!';
  msgSnetImmQuery014 :string = 'Karekod içerisinde bulunan ';
  msgSnetImmQuery015 :string = 'Aþý kodu bilgisi ile seçmiþ olduðunuz aþý kodu ayný deðil devam etmek istiyormusunýz.';
  msgSnetImmQuery016 :string = 'Karekod içerisinde HL7 bilgisi bulunamadý.';
  msgSnetImmQuery017 :string = 'Hastaya açýlan daha yeni bir aþý kartý vardýr. Lütfen sorgulama iþlemini o kart üzerinden gerçekleþtiriniz.';
  msgSnetImmQuery018 :string = 'e-Nabýz servisinde hastaya ait aþý kaydý bulunamamýþtýr.';
  msgSnetImmQuery019 :string = 'Hasta kaydý bilgisi e-Nabýz''a gönderilmelidir. ';
  msgSnetImmQuery020 :string = 'Aþýyý ATS''den tekrar sorgulamalýsýnýz.';
  msgSnetImmQuery021 :string = 'Yenidoðan tipindeki hastanýn aþý sorgulamasý, GSS Kurum bilgisi olmayan bir geliþ dosyasý üzerinden yapýlmalýdýr.';
  msgSnetImmQuery022 :string = 'Hastaya ayný aþý, ayný dozda ikinci kez yapýlamaz! ';
  msgSnetImmQuery023 :string = 'e-Nabýz Ýþ Kurallarý nedeniyle Aþý uygulanma zamaný dosya tarihinden küçük olamaz! ';

//Stock LRF_ID = 126
  msgStock001 :string = 'Katsayý ile Sýra uyumlu deðil! Lütfen Kontrol ediniz';
  msgStock002 :string = 'Medula kod türü but kodu ise resmi kodunu  belirtmek zorundasýnýz';
  msgStock003 :string = 'Stok kategorisini belirtmek zorundasýnýz.';
  msgStock004 :string = 'Birim tanýmý yapmalýsýnýz. Aksi taktirde stok giriþ/çýkýþý yapamazsýnýz.';
  msgStock005 :string = 'Birden fazla "Medula Satýþ Birimi" seçilmiþ. Hataya neden olacaðýndan lütfen düzeltin.';
  msgStock006 :string = 'Birden fazla "Medula Fatura Birimi" seçilmiþ. Hataya neden olacaðýndan lütfen düzeltin.';
  msgStock007 :string = 'Birden fazla "Medula Fatura Birimi" seçemezsiniz.';
  msgStock008 :string = 'Birden fazla "Medula Alýþ Birimi" seçemezsiniz.';
  msgStock009 :string = 'Seçili stok daha önceden hareket gördüðü için, Birim, Katsayý ve Alýþ/Satýþ Biriminde deðiþiklik yapamazsýnýz.';
  msgStock010 :string = 'Seçili stok daha önceden hareket gördüðü için silme iþlemi yapamazsýnýz.';
  msgStock011 :string = 'Bu stok grubu için tanýmlý bir Barkod Önek bulunmamaktadýr. Yeni barkod oluþturabilmek için öncelikle grubun barkod önek alýnýný tanýmlamanýz gerekmektedir.';
  msgStock012 :string = 'Barkod Ýlk Numara';
  msgStock013 :string = 'Bu stok grubu için kayýtlý bir ilk barkod numarasý yoktur.' + #13
              + 'Bundan sonraki barkotlarý numaralandýrmak için bir baþlangýç numarasý giriniz. ';
 //msgMultiUsed144 ile degistirildi
 // msgStock014 :string = 'Sayýsal bir deðer giriniz!';
  msgStock015 :string = 'Bir üst kategoriye stok tanýmlayamazsýnýz.! Alt kategori seçmelisiniz.';
  msgStock016 :string = 'Kategorinin Stok tipini belirtmelisiniz.';
  msgStock017 :string = 'Medula kod türü but kod olarak kaydedilecektir?';
  msgStock018 :string = 'Mevcut miktarý Sýfýr (0) olmayan stoklar seriye dönüþtürülemez.';
  msgStock019 :string = 'Seri Takip kullanýlan stoklarýn tüm giriþ-çýkýþý "sadece" '+
                'fatura giriþi sýrasýnda üretilen barkodlarla yapýlabilecektir.';
  msgStock020 :string = 'Seri Barkod takibi için barkod no üretildiðinden iþleminiz iptal edildi.';
  msgStock021 :string = 'Mevcut miktarý Sýfýr (0) olmayan stoklarýn LOT takibi yapýlamaz, Ýlk önce mevcut miktarlarý sýfýrlamanýz gerekiyor.';
  msgStock022 :string = 'Stoða ait varsa LOT / Son.Kul.Tarihi bilgileri silinecek. Devam etmek istiyor musunuz?';
  msgStock023 :string = 'Mevcut miktarý Sýfýr (0) olmayan stoklar Son Kullanma Tarihi takibi yapýlamaz.';
  msgStock024 :string = 'Tekrar kullanýlabilir bir stokda, Serili takip yapýlamaz.';
  msgStock025 :string = '"Son Kullanma Tarihi" kontrolü yapýlsýn mý?';
  msgStock026 :string = 'Stok "Lot Takipli" veya "Seri Barkodlu" ise barkod okutularak çýkýþý yap iþaretlenebilir' + #13 +
     'Ýþleminiz iptal edildi.';
  msgStock027 :string = 'EHU onayý verilmiþ ilacýn etken maddesi deðiþtirelemez!';
  msgStock028 :string = '"Birim Miktarý" ve "Birim" boþ býrakýlamaz!';
  msgStock029 :string = 'Stoklarda hasta deposunu kullanabilmeniz için sistem parametresinde "Ýlaç Ýsteði (Order) Kullan" aktif olmasý gerekir!';
  msgStock030 :string = 'Birim tanýmlarýnda kutu birimi seçili deðildir. Ýþlem yapabilmek için "Kutu Birimini" iþaretleyiniz.';
  msgStock031 :string = 'Üst Stoklarda "Ýlaç" grubunda stok tipi seçilemez!';
  msgStock032 :string = 'Seçilen birim üst stokta tanýmlý deðil. Ýþlemiminiz iptal edildi.';
  msgStock033 :string = 'Narkotik Ýlacýn Günlük Max Dozunu Girmeniz Gerekiyor!';
  msgStock034 :string = 'Detay stoklarýn "Sut Fiyatlarý" da güncellensin mi?';
  msgStock035 :string = 'Stok için Satýþ yada Alýþ birimi sadece Alýþ/Satýþ birimi ile deðiþtirilebilir.';
  msgStock036 :string = 'Stok için ''Satýþ yada Alýþ / Satýþ'' birimi sadece bir defa eklenebilir.';
  msgStock037 :string = 'Bölünebilir stoklarda seri barkodlu takip yapýlamaz!';
  msgStock038 :string = 'Hasta deposunu kullanan stoklarda seri barkodlu takip yapýlamaz!';
  msgStock039 :string = 'Serili stoklarda hasta deposunu kullan seçilemez!';
  msgStock040 :string = 'Üst stok birimiyle stok birimi ayný olmalýdýr! Ýþleminiz Ýptal Edildi.';
  msgStock041 :string = 'Order isteklerinde doz ve birimi deðiþecek!'+#13 + 'Devam etmek istiyor musunuz?';
  msgStock042 :string = 'Sadece Rakam Giriniz!';
  msgStock043 :string = 'Serili stoklarda "Bölünebilir" seçilemez.!';
  msgStock044 :string = 'Alaný Boþ Brakmayýn.';
  msgStock045 :string = 'Resmi kodu güncellendi.';
  msgStock046 :string = 'Firma tanýmlayýcý kodu güncellendi';
  msgStock047 :string = 'Birden fazla "Order Birimi" seçemezsiniz.';
  //msgStock048 :string = 'Birden fazla "Order Birimi" seçilmiþ. Hataya neden olacaðýndan lütfen düzeltin.';
  //msgStock049 :string = 'Order birimi seçmeniz için, birimin "Aktif" ve Alýþ/Satýþ Birimi seçeneðinin "Alýþ Birimi" dýþýnda olmalýdýr.';
  msgStock050 :string = '"Not" ve "Not Tipi" boþ býrakýlamaz.!';
  msgStock051 :string = 'Bekleyen stok istekleri veya hastaya uygulanmayan order kayýtlarý olduðu için Doz, Birimi veya Bölünebilir Ýlaç alanlarýnda deðiþiklik yapamazsýnýz!';
  msgStock052 :string = 'Eklenen etken maddenin muadilleri için depo min max deðeri kaydedilsin mi?';
  msgStock053 :string = 'Vademecum' + #13#10 + 'Etkileþim Kontrolü Yapýlýyor. Lütfen bekleyiniz';
  msgStock054 :string = 'Vademecum entegrasyonu aktif deðil!' + #13 +
      'Hastane bilgilerinden "Stok entegrasyon" ayarlarýný yapýnýz.';
  msgStock055 :string = 'Ýlaç maksimum dozajlarý güncellenirken hata oluþtu. Hata = %s ';
  msgStock056 :string = 'Maksimum doz deðeri aþýlmýþtýr. Bu ilacýn maksimum dozu = %s';
  msgStock057 :string = 'Ýlacýn Barkod bilgisi olmadýðýndan iþleme devam edilemez';
  msgStock058 :string = 'Seçili kayýtlarýn fiyatlarý güncellenecektir!';
  msgStock059 :string = 'Fiyatlarý güncellenmesi istenen herhangi bir kayýt seçili deðil!';
  msgStock060 :string = 'Vademecum tarafýnda ilacýn barkodu güncellenmiþ.Stoðun barkodunun güncellenmesini istiyor musunuz?';
  msgStock061 :string = 'Stok mevcut miktarý bulundu. Mevcutlar için %s kayýtlarý otomatik oluþturulacaktýr. ';
  msgStock062 :string = 'Mevcutlar için LOT/SKT kayýtlarý oluþturuluyor. Ortalama 5-10 dk içerisinde tamamlanacaktýr. Lütfen bekleyiniz...';
  msgStock063 :string = 'Ýlaç pasife alýndýðýnda vademecum baðlantýsý koparýlacaktýr. Devam etmek istiyor musunuz ?';
  msgStock064 :string = 'Kategori ve stok tipi alanlarý zorunludur. Ýþleminiz iptal edildi.';
  msgStock065 :string = 'Malzeme tanýmýndaki "Kutu Birim Miktarý" nýn tanýmlanmasý gerekebilir.'+
                        'Lütfen kontrol ediniz aksi halde medulaya tanýmlanan birim katsayýsý üzerinden gönderim yapýlacaktýr. ';
//  msgStock066 :string = 'Birden fazla "Vademecum Birimi" seçilmiþ. Hataya neden olacaðýndan lütfen düzeltin.';
//  msgStock067 :string = 'Birden fazla "Vademecum Birimi" seçemezsiniz.';
  msgStock068 :string = 'Medula birim katsayýsý seçmeniz için, birimin Alýþ/Satýþ Birimi seçeneði "Alýþ Birimi" dýþýnda olmalýdýr.';
  msgStock069 :string = 'Birden fazla "Liste Birimi" seçilmiþ. Hataya neden olacaðýndan lütfen düzeltin.';
  msgStock070 :string = 'Birden fazla "Liste Birimi" seçemezsiniz.';
  msgStock071 :string = 'Liste birimi seçmeniz için, birimin "Aktif" olmasý gerekmektedir.';
  msgStock072 :string = 'Liste birimi "Pasif" edilemez, önce baþka bir liste birimi seçiniz.';
  msgStock073 :string = 'Liste birimi "Silinemez", önce baþka bir liste birimi seçiniz.';
  msgStock074 :string = 'Karekod takibi olan stok için "Yok" seçeneði seçilemez!';
  msgStock075 :string = 'Karekod takibi olmayan stok için sadece "Yok" seçeneði seçilebilir!';
  msgStock076 :string = 'Stok için Alýþ ve Satýþ birimlerini ayrý ayrý veya Alýþ/Satýþ Birimi tek olarak seçmelisiniz.';
  msgStock077 :string = 'Aradýðýnýz ilaç, entegrasyon sisteminde bulunmamaktadýr !';
  msgStock078 :string = 'Stok barkod güncelleme iþlemi baþarýlý !';
  msgStock079 :string = 'Bu stok zaten güncel barkoda sahip !';
  msgStock080 :string = 'Entegrasyon sistemi üzerinden gelen barkodlar güncellenirken bir hata ile karþýlaþýldý !';



    //ProtokolBook
  msgProtokolBook001 :string = 'Seçili tarih aralýðýnda daha önce sorgu yapýlmýþ.';
  msgProtokolBook002 :string = 'ROW_NUMBER Bilgisi bulunamadý SQL linizi kontrol ediniz.';
  msgProtokolBook003 :string = 'FIRSTTIME Bilgisi bulunamadý SQL linizi kontrol ediniz.';
  msgProtokolBook004 :string = 'LASTTIME Bilgisi bulunamadý SQL linizi kontrol ediniz.';
  msgProtokolBook005 :string = 'Sadece son kaydý silebilirsiniz. ';
  msgProtokolBook006 :string = 'Yazdýrma iþlemi baþarýsýz oldu. Form ID yi kontrol ediniz.';

  //StockList
  msgStockList001 :string = 'Üst stoðun detay stoklarýda taþýnacak! ';
  msgStockList002 :string = 'Kategori seçtikten sonra iþleminize devam edebilirsiniz!';

//StockConsignment
  msgStockConsignment001 :string = 'Farklý depolara ait giriþleri ayrý ayrý yapmanýz gerekmektedir.';

//StockMovementVoucher
  //msgStockMovementVoucher001 :string = 'Kaynak ve/veya Hedef depoyu seçmeniz gerekmektedir!';
  msgStockMovementVoucher002 :string = 'Kaynak ve Hedef depo ayný olamaz!';
  msgStockMovementVoucher003 :string = 'Belge tarihini girmelisiniz!';
  msgStockMovementVoucher004 :string = 'Fiþ boþ olarak kaydedilecek. Devam etmek istiyor musunuz?';
  msgStockMovementVoucher005 :string = 'Miktar belirtilmemiþ. Miktar giriniz veya Ýstek listesinden çýkarýnýz!';
  msgStockMovementVoucher006 :string = 'Birim belirtilmemiþ. Birimi belirtin veya Ýstek listesinden çýkarýnýz!';
  msgStockMovementVoucher007 :string = 'Seçili Kan ürünü için Cross-match çalýþýlmýþ olmasý gerekmektedir. Ýþleminiz iptal edildi.';
  msgStockMovementVoucher009 :string = 'Stok isteðine baðlý fiþ olduðu için deðiþiklik yapamazsýnýz!';
  msgStockMovementVoucher010 :string = 'Kaynak Depoyu seçmek zorundasýnýz.';
  msgStockMovementVoucher011 :string = 'Hedef Depoyu seçmek zorundasýnýz.';
  msgStockMovementVoucher012 :string = '%s fiþi silinecek. Devam etmek istiyor musunuz?';
  msgStockMovementVoucher013 :string = 'Fiþte yaptýðýnýz deðiþiklikleri kaydetmek istiyormusunuz.!';
  msgStockMovementVoucher014 :string = 'Girilen Seri borkodlarda silinecek, devam etmek istiyor musunuz?';
  msgStockMovementVoucher015 :string = 'Seri borkodlar silinemediðinden iþleminiz iptal edildi';
  msgStockMovementVoucher016 :string = '%s fiþi kaydedilsin mi?';

  msgStockMovementVoucher017 :string = 'Tali depolara Transfer dýþýnda bir hareket yapýlamaz.';
  msgStockMovementVoucher018 :string = 'Bu fiþ, %s nolu giriþ fiþine baðlý. Bu fiþi silmek için baðlý olduðu fiþi silmeniz gerekiyor. Ýþleminiz iptal edilecek.';
  msgStockMovementVoucher019 :string = 'Bu fiþe baðlý %s nolu fiþ bulundu. Silmeye devam ederseniz baðlý fiþde silinecek. Devam etmek istiyor musunuz?';
  msgStockMovementVoucher020 :string = 'Masraf merkezi otomatik çýkýþ ';
  msgStockMovementVoucher021 :string = 'Hata oluþtu. Bilgi iþlemi arayýnýz veya ekraný kapatýp tekrar açýnýz';
  msgStockMovementVoucher022 :string = '%s dan %s deposuna Transfer yapýldý';
  msgStockMovementVoucher023 :string = ' adlý orjinal stok kaydýna ulaþýlamadý.';
  msgStockMovementVoucher024 :string = 'Serbest çýkýþ yapýlan kayýtlar arasýnda kan ürünü bulunmakta kan bankasýndan durumu deðiþtirilmeyecek.'+
                     ' Çýkýþ durumu için ''Trasfer'', Ýmha için ise ''fire, zayi'', yada baþka kuruma ise ''Kuruma Çýkýþ'' þeklinde çýkýþ yapýlmalýdýr.';
  msgStockMovementVoucher025 :string = 'Kurumunuza ait olan tesis kodunu transfer yapýlmaz.';
  msgStockMovementVoucher026 :string = 'Kan bankasý durumunu ''Çýkýlmýþ''olarak deðiþtirilecek devam etmek istiyormusunuz.';
  msgStockMovementVoucher027 :string = 'Kan bankasý durumunu ''Ýmha''olarak deðiþtirilecek devam etmek istiyormusunuz.';
  msgStockMovementVoucher028 :string = 'Kan bankasý durumunu ''Mevcut''olarak deðiþtirilecek devam etmek istiyormusunuz.';
  msgStockMovementVoucher029 :string = 'Girilen tesis kodu kayýtlar arasýnda bulunamadý lütfen medula sorgulama ekranýnda kurumu kaydýný gerçekleþtiriniz';
  msgStockMovementVoucher030 :string = 'Kuruma çýkýþ ile çýkýþ yapýlan kan ürünleri için ekrandan tesis kodunu girerek kuruma transfer yapmanýz gerekmektedir.';
  msgStockMovementVoucher031 :string = 'Yeni Stok Transferi';
  msgStockMovementVoucher032 :string = 'Yetkili deponuza yeni tranfer var '+'Lütfen kontrol edin.'+#13+'Kontrol için BURAYA týklayýn.';
  msgStockMovementVoucher033 :string = 'Kritik ya da max deðeri aþan miktar(lar) girdiniz. Ýþleme devam etmek istiyor musunuz ?';
  msgStockMovementVoucher034 :string = 'Seçilen demirbaþ(lar) arasýnda personellere zimmetli demirbaþlar bulundu. ' +
                                       'Zimmetleri iade alarak demirbaþlarýn durumunu deðiþtirmek ister misiniz?'; //163683;KDUMAN;23.09.2019;

//VoucherSelect
  msgVoucherSelect001 :string = 'Daha önce iade veya fiyat farký kesilmiþ faturalar için deðiþiklik yapýlamaz.';

//StockQuery
  msgStockQuery001 :string = 'Kaynak Depo alaný boþ býrakýlamaz!';
  msgStockQuery002 :string = 'Hasta üzerine yalnýzca çýkýþ yapýlýr.';
  msgStockQuery003 :string = 'Fatura ile yalnýzca giriþ yapýlýr.';
  msgStockQuery004 :string = 'Tüm Depolarý sorgulamak uzun zaman alabilir! Devam etmek istiyor musunuz?';

//StockRequests - LRF_ID = 44
  msgStockRequests001 :string = 'Hasta için yapacaðýnýz isteklerde, kendi deponuzuda seçmek zorundasýnýz.';
  msgStockRequests002 :string = 'Ýstek yapan ve karþýlayacak depo ayný olmamalýdýr.!';
  msgStockRequests003 :string = 'Üzerinde iþlem yapýlmýþ bir kaydý silemezsiniz.';
  msgStockRequests004 :string = 'Seçili isteðin kopyasý oluþturulacak. Devam edilsin mi?';
  msgStockRequests005 :string = 'Masraf merkezine isteðine baðlý stok çýkýþ fiþi mevcut.' + #13#10 +
                        'Devam ederseniz malzeme çýkýþý iptal edilecek.'+ #13#13 + 'Devam etmek istiyor musunuz?';
  msgStockRequests006 :string = ' adlý stok deponuzda tanýmlý deðil.';
  msgStockRequests007 :string = ' adlý stok için transfer hareketi oluþturulamadý.';
  msgStockRequests008 :string = ' adlý malzeme deponuzda tanýmlý deðil.';
  msgStockRequests009 :string = 'Ýsteði yapýlmýþ %s adlý stok hasta dosyasýnda bulunamadý.';
  msgStockRequests010 :string = 'Masraf merkezi çýkýþý yapýlýrken hata alýndý.';
  msgStockRequests011 :string = 'Ýstenen Mik.: %s  -' + 'Ýade Mik.: %s  -' + 'Stok: %s';
  msgStockRequests012 :string = '%s adlý stok için günlük kullaným miktarý aþýldý. En fazla '+ '%s %s isteyebilirsiniz. ';
  msgStockRequests013 :string = ' adlý stok için gün içinde istek yapýlmýþ.';
  msgStockRequests014 :string = ' adlý stok kullanýmda deðil bu stoðu iptal etmek ister misiniz?.';
  msgStockRequests016 :string = 'Bu iþlemden sonra "%s" adlý stok için kritik deðere ulaþýlacak.';
  msgStockRequests018 :string = '%s adlý depoda %s adlý stok için en fazla elinizdeki miktar (%s) kadar geri iade yapabilirsiniz.';
  msgStockRequests019 :string = 'Varsa diðer kontrol edilmiþ isteklerde otomatik olarak onaylansýn mý?';
  msgStockRequests021 :string = 'Onaylanmýþ iadeyi iptal edemezsiniz!';
  msgStockRequests022 :string = 'Birden fazla satýr seçemezsiniz.';
  msgStockRequests023 :string = 'En fazla 1 (bir) adet stok seçebilirsiniz.';
  msgStockRequests024 :string = 'Seçili isteðin geri iadesi yapýlacak. Devam edilsin mi?';
  msgStockRequests025 :string = 'Tüm istekler gönderilsin mi?';
  msgStockRequests026 :string = ' numaralý fiþ aktarýlamadý.';
  msgStockRequests027 :string = 'Sadece seçilileri yazdýrmak ister misiniz?';
  msgStockRequests028 :string = 'Ýstek onaylansýn mý?';
  msgStockRequests029 :string = 'Bu istek daha önce satýnalmaya yönlendirilmiþ. Ýþleminiz iptal edildi.';
  msgStockRequests030 :string = 'Stok Ýsteði , Satýnalma isteðine dönüþtürülecek. Devam etmek istiyor musunuz?';
  msgStockRequests031 :string = 'Birim deðiþikliði görünen miktarlarada uygulansýn mý?';
  msgStockRequests032 :string = 'Farklý depolar arasýnda taþýma iþlemi gerçekleþtiremezsiniz.';
  msgStockRequests033 :string = 'Durumlarý farklý istekler arasýnda taþýma iþlemi gerçekleþtiremezsiniz.';
  msgStockRequests034 :string = 'Seçili istek detaylarý üzerinde yapýlacak iþlemi seçiniz';
  msgStockRequests035 :string = ' adlý depo için sadece hasta adýna istek yapabilirsiniz.';
  msgStockRequests036 :string = ' adlý depo için hasta adýna istek yapamazsýnýz.';
  msgStockRequests037 :string = 'Seri barkodlu ';
  msgStockRequests038 :string = ' Son Kul.Tarihli ';
  msgStockRequests039 :string = 'Ýþleminiz tamamlanmadan baþka bir isteðe geçerseniz yaptýðýnýz iþlemler iptal edilecek. Devam etmek istiyormusunuz?';
  msgStockRequests040 :string = 'Seçilen stok depoda yok! Ýþleminiz iptal edildi.';
  msgStockRequests041 :string = 'Seçilen muadil stok, stok isteðinde var.';
  msgStockRequests042 :string = 'Durumu "Gönderildi" ve "Onaylandý" olan stok isteklerinin "Hazýrlandý" bilgisini deðiþtirebilirsiniz.' + #13+
                        'Ýþleminiz iptal edildi.';
  msgStockRequests043 :string = 'Detayý onaylanmýþ bir isteðin, durumunu deðiþtiremezsiniz.';
  msgStockRequests044 :string = 'Geliþ dosyasýndaki stoklarý deðiþtirme yetkiniz yok. Ýþleminiz iptal edildi.';
  msgStockRequests045 :string = 'Yazýcý formu bulunamadý (%s)!';
  msgStockRequests046 :string = 'Durumu "Kontrol Edildi" ve "Hazýrlandý" olanlarýn onaylayabilirsiniz.' + #13 + 'Ýþleminiz iptal edildi.';
  msgStockRequests047 :string = 'Gönderilecek stok bulunamadý!';
  msgStockRequests048 :string = 'Durumu "Kontrol Edildi" olan stok isteklerinin "Hazýrlandý" bilgisini deðiþtirebilirsiniz.' + #13+
                        'Ýþleminiz iptal edildi.';
  msgStockRequests049 :string = 'Onaylanan isteklerin "Ýrsaliye Formu" nu yazdýrabilirsiniz!' + #13 + 'Ýþleminiz iptal edildi.';
  msgStockRequests050 :string = '%s adlý stok için doz deðerleri girilmelidir.';
  msgStockRequests051 :string = 'Muadil stok seçmediniz!';
  msgStockRequests052 :string = 'Stok isteði %s kullanýcýsý üzerinde görünüyor.';
  msgStockRequests053 :string = 'Onaylayabilmek için "Ýþi Baþlat" ile üzerinize almalýsýnýz!';
  msgStockRequests054 :string = '%s adlý ilaç için "Ýlaç Kullaným Þekli" seçmelisiniz!';
  msgStockRequests055 :string = 'Ýsteme ait seçilen tarihden sonra detay kaydý mevcut!';
  msgStockRequests056 :string = 'Ýstemin detay kaydý olduðundan, iþleminiz iptal edildi.';
  msgStockRequests057 :string = 'Ýade edilen miktar istenen miktardan fazla!';
  msgStockRequests058 :string = 'Order Sýk Kullanýlan Ýlaçlar';
  msgStockRequests059 :string = 'Order Þablonlarý';
  msgStockRequests060 :string = 'Order iadelerini "Yeni Ýstek" sekmesindeki "Order Ýadesi Oluþtur" butonunu kullanarak yapýnýz!';
  msgStockRequests061 :string = 'Order uygulanmayan ilaçlarýn iadesini "Yeni Ýstek" sekmesinde "Order Ýadesi Oluþtur" butonu ile otomatik yapabilirsiniz';
  msgStockRequests062 :string = '"%s" deposuna ait stok isteði onaylanmýþtýr.'+#13+'Kontrol etmek için BURAYA týklayýn.';
  msgStockRequests063 :string = '"%s" ilacýnda bulunan %s etken maddesine hastanýn ALERJÝSÝ var!';
  msgStockRequests064  :string = '%s adlý stoðun istek miktarýndan ( %s ) daha fazlasýný geri iade edemezsiniz.';
  msgStockRequests065 :string = 'Stok isteðin durumu "%s" beklemeye alamazsýnýz!';
  msgStockRequests066 :string = '%s adlý stok için stok birimi seçilmiþ, "Doz Birimi" seçiniz!';
  msgStockRequests067 :string = 'Ýade yapýlacak kayýt bulunamadý!';
  msgStockRequests068 :string = 'Fiþ numarasý alanýný boþ geçemezsiniz.!';
  msgStockRequests069 :string = 'Ýþlem yapabilmeniz için ilk önce "Ýþi baþlat" yapmalýsýnýz.';
  msgStockRequests070 :string = 'Otomatik Uygulama Yapýlamadý... ' + #13 +
                'Depo stok miktarlarýnda hata oluþmamasý için BÝLGÝ ÝÞLEMÝ arayýnýz!!';
  msgStockRequests071 :string = 'Otomatik Uygulama Yapýlýrken Hata Alýndý... ' + #13 +
                'Depo stok miktarlarýnda hata oluþmamasý için BÝLGÝ ÝÞLEMÝ arayýnýz!!';
  msgStockRequests072 :string = ' adlý stok "Kutu Birim Miktarý" kayýtlý deðil!' + #13 +
                'Medula faturalama kontrollerinin yapýlabilmesi için medula kutu birim miktarýný girmelisiniz.';
  msgStockRequests073 :string = ' adlý stok "Medula Kutu Birim" miktarýndan fazla istenemez!';
  msgStockRequests074 :string = 'Medula Kutu Birim Miktarý :';
  msgStockRequests075 :string = 'Detay stok 3 den fazla olamaz!';
  msgStockRequests076 :string = 'Onaylanacak Stok Boþ olamaz!';
  msgStockRequests077 :string = 'Üst stok tanýmýný onaylanamaz! Deðiþtir ile stoðu deðiþtiriniz.';
  msgStockRequests078 :string = 'Onaylanmýþ iade isteði geri alýnamaz!';
  msgStockRequests079 :string = 'Onaylanan istekler otomatik "Teslim Edildi" yapýlsýn mý';
  msgStockRequests080 :string = 'Beklemede stok isteði mevcut!'+#13 + 'Devam etmek istiyor musunuz?';
  msgStockRequests081 :string = 'Teslim alýnan stoklarda deðiþiklik yapamazsýnýz!'+ #13 +
                'Teslim alan kullanýcý iþlemi geri aldýktan sonra devam edebilirsiniz.';
  msgStockRequests082 :string = 'Order isteklerinde kopyalama yapýlamaz!';
  msgStockRequests083 :string = 'Geçmiþ Zamanlý Seçemezsiniz!';
  msgStockRequests084 :string = 'Order tarihi, baþlangýç ve bitiþ tarihi arasýnda olmalýdýr.!' + #13 +
                                'Onaylamaya uygun deðil!';
  msgStockRequests085 :string = ' adlý stok için istenen depodaki mevcud isteði karþýlamadýðý için iþleminiz iptal edildi.';
  msgStockRequests086 :string = 'Ýþlem yapabilmeniz için ilk önce "Ýþi baþlat" yapmalýsýnýz.';
  msgStockRequests087 :string = 'Order taleplerinin gönderme iþlemini "Ýlaç Ýsteði(Order) ekranýndan yapýnýz!';
  msgStockRequests088 :string = 'Durumu "Onaylý" ve Durum2si "Hazýrlandý" olan istekleri "Teslim Edildi" yapýlabilir!';
  msgStockRequests089 :string = 'Ýlaç  %s adlý ilaç ile karýþýmda. Karýþýmdan çýkarmak istiyor musunuz? ';
  msgStockRequests090 :string = 'Bölünebilir tanýmlý ilaçlarýn Birim ve Birim Miktarý tanýmlý olmalýdýr. ';
  msgStockRequests091 :string = 'Sadece kendi adýnýza kayýtlý isteði imzalayabilirsiniz. Ýþleminiz iptal edildi.';
  msgStockRequests092 :string = 'Ýstek daha önce imzalanmýþ. Devam edilsin mi?';
  msgStockRequests093 :string = 'Ayný gün içerisinde istenmiþ depo isteði mevcuttur.Devam etmek istiyormusunuz?';
  msgStockRequests094 :string = 'Hastanýn Albumin deðeri yüksek olduðundan ilaç (%s) '+#13+#13+' SGK tarafýndan ödemez. Yinede devam etmek istiyormusunuz?';
  msgStockRequests095 :string = ' Devam edilsin mi? "Hayýr" derseniz istek onaylanmayacaktýr.';  
  msgStockRequests096 :string = 'Tümünü yazdýrmak istiyor musunuz?';
  msgStockRequests097 :string = 'Seçilen stoklar onaylanmamýþ olduðu için yazdýrýlmayacaktýr.!';
  msgStockRequests098 :string = 'Ýlaç fiyatý SGK tarafýndan ödenmez. Devam etmek istiyor musunuz ?';
  msgStockRequests099 :string = 'Ýlaç fiyatý SGK tarafýndan raporla ödenir olarak tanýmlanmýþ. Hasta için bu ilaçla ilgili Ýlaç Kullaným Raporu bulunamadý. Devam etmek istiyor musunuz ?';
  msgStockRequests100 :string = 'Çýkýþý yapýlmýþ hastaya ait iptal edilmiþ isteði geri alamazsýnýz.';
  msgStockRequests101 :string = 'Bekleyen isteklerde kopyalama iþlemi yapýlamaz.';
  msgStockRequests102 :string = 'Karýþýmda kullanýlan bir ilacý silmek üzeresiniz. Karýþýmdaki tüm ilaçlar silinecek. Ýþleme devam etmek istiyor musunuz ?';
  msgStockRequests103 :string = 'Ýptal iþlemi için açýklama girmelisiniz.';
  msgStockRequests104 :string = 'Ýþleme alýnmýþ istekler geri gönderilemez.';
  msgStockRequests105 :string = 'Geri gönderme isteði için açýklama girmelisiniz!';
  msgStockRequests106 :string = 'Geri gönderilen stok isteðiniz var!' + #13#10 + 'Ýstek No: %s' + #13#10 + 'Geri Gönderim Notu: %s';
  msgStockRequests107 :string = '%s Protokollü "%s" isimli hastada bu ürün kullanýlmýþtýr!';
  msgStockRequests108 :string = 'Geliþ Dosyasýnýn "Çýkýþ" iþlemi yapýlmýþ, Ýþleminiz Ýptal Edildi!';
  msgStockRequests109 :string = 'Ýþleme alýnmýþ veya onaylanmýþ isteklerde iþlem yapýlamaz!';


  msgStockReqForPatient     :string = '" hastasý için ';
  msgStockReqForWarehouse   :string = '" deposu için ';
  msgStockReqTemplateErr1   :string = 'Ýade olan istekler þablon olarak kaydedilemez!';
  msgStockReqTemplateErr2   :string = 'Þablon oluþturacak kayýt bulunamadý!';
  msgStockReqIsPrepared     :string = ' deposuna yaptýðýnýz stok isteði hazýrlanmýþtýr.';
  msgStockReqIdSource       :string = 'Kaynak Ýstek No: ';
  msgStockReqAlertAutoApp   :string = '**DÝKKAT** Gönderilen isteklerin otomatik onaylanmasý AKTÝF edildi.';
  msgStockReqAlertDrOrder   :string = 'Lüzumu halinde kullanýlacak ilaçlardýr.';
  msgStockReqAlertStockUse  :string = 'Stok kullanýldýðýndan, stokda deðiþiklik yapamazsýnýz';
  msgStockReqAlertSendBack  :string = 'Hastaya iþlenen miktardan ( %s ) daha fazlasýný geri iade edemezsiniz.';
  msgStockReqAlertUsageQnt  :string = '%s adlý stok için uygulanmamýþ toplam %s doz stok bulunmaktadýr. ' + #13 + 'Ýþleme devam istiyor musunuz?';
  msgStockReqAlertStcIsUse  :string = '%s adlý stok kullanýldýðýndan iptal edemezsiniz!';
  msgStockReqAlertExpCentr  :string = '%s adlý stok masraf merkezi çýkýþý yapýldýðý için iþleminiz iptal edildi.' + #13 +
                             '%s nolu isteðe ait masraf merkezi çýkýþýný iptal ediniz.';
  msgStockReqAlertOrderSB   :string = '%s adlý stoðun iadesi yapýlmýþ! Ýptal edilemez.';
  msgStockReqRiskCatRed     :string = 'KIRMIZI (Yüksek düzeyde etkileþim riski vardýr. Birlikte verilmemelidir.)';
  msgStockReqRiskCatOrng    :string = 'TURUNCU (Ancak hasta için yararý riskinden fazlaysa verilebilir; aksi halde, alternatif bir ilaç tercih edilmelidir. Kombine kullanýmda hasta dikkatle izlenmelidir.)';
  msgStockReqRiskCatYellow  :string = 'SARI (Ya alternatif bir ilaç kullanýlmalý ya ilaç rejimi (doz, kullanma aralýðý) deðiþtirilmeli ya uygulama yolu deðiþtirilmeli ya da kombine kullanýmda, hasta izlenmelidir. )';
  msgStockReqRiskCatBlue    :string = 'MAVÝ (Düþük düzeyde etkileþim riski vardýr. Sadece etkileþim olasýlýðý akýlda tutulmalýdýr.)';
  msgStockReqRiskCatGreen   :string = 'YEÞÝL (Bilinen bir etkileþim bulunmamaktadýr.)';

//StockSerialNum
  msgStockSerialNum001 :string = 'Ayný anda farklý depolardan iþlem yapamazsýnýz.';
  msgStockSerialNum002 :string = 'Girilen miktar ile okutulan seri sayýsý ayný olmadýðýndan iþleminiz iptal edilecek';
  msgStockSerialNum003 :string = ' seri nolu stok detay bilgisine ulaþýlamadý. Ýþleminiz iptal edilecek.';
  msgStockSerialNum004 :string = ' seri nolu stoðun en son stok hareketi ile seçili stoðunki uyuþmamaktadýr. Ýþleminiz iptal edilecek.';
  msgStockSerialNum005 :string = 'Ýlk deðer, son deðerden küçük olmak zorundadýr.';
   //msgMultiUsed144 ile degistirildi
  //msgStockSerialNum006 :string = 'Sayýsal Deðer Giriniz.';
  msgStockSerialNum007 :string = ' seri nolu stok için : ';
  msgStockSerialNum008 :string = 'Aþaðýdaki hatalar/uyarýlar alýndý :';
  msgStockSerialNum009 :string = 'Kan ürünlerinde;'+#13+ '  Seri numara 16 karakter olmalýdýr. Örnek format :  "=T00271201234523" ';
  msgStockSerialNum010 :string = 'Kan ürünlerinde;'+#13+ '  Ürün Kodu   10 karakter olmalýdýr. Örnek format :  "=<E0429000" þeklinde olmalýdýr.';
  msgStockSerialNum011 :string = 'Hastanýn kan grubu  "%s" ile göndermeye çalýþtýðýnýz kan grubu "%s" uyumsuz. '+#13+
                         'Yinede iþleme devam etmek istiyor musunuz?';
  msgStockSerialNum012 :string = 'Detay hareket gördüðünden silinemedi.';
  msgStockSerialNum013 :string = ' adlý stok için elinizde yeterli miktar yok.';
  msgStockSerialNum014 :string = ' için son kullaným tarihi irsaliye tarihinden büyük olmalýdýr.';
  msgStockSerialNum015 :string = ' için Son Kullaným Tarihi/LOT bilgisi girmeniz gerekmektedir.';
  msgStockSerialNum016 :string = ' için LOT deðeri girmelisiniz.';
  msgStockSerialNum017 :string = '%s adlý stok için elinizdeki miktar "%s" , iþlemeye çalýþtýðýnýz miktar "%s" olduðundan iþleminiz iptal edildi.';
  msgStockSerialNum018 :string = ' adlý stok için girilen Son Kullanma Tarihi veya LOT bilgileri, sistemdekiyle uyuþmamaktadýr.';
  msgStockSerialNum019 :string = ' için LOT/SKT miktarlarý uyuþmamaktadýr, kontrol ediniz.';
  msgStockSerialNum020 :string = 'Fatura satýrýndanki deðerden daha büyük bir deðer girdiniz.Lütfen düzeltin';
  msgStockSerialNum021 :string = 'Stok Giriþ/Çýkýþ detayý oluþturulurken hata oluþtu.';
  msgStockSerialNum022 :string = 'Miktar sýfýr olamaz.';
  msgStockSerialNum023 :string = 'Deðer Giriþi';
  msgStockSerialNum024 :string = 'Seri Baþlangýç Deðeri:';
  msgStockSerialNum025 :string = 'Seri Bitiþ Deðeri:';
  msgStockSerialNum026 :string = '%s seri numaralý %s adlý stok deponuzda yok veya hareket gördüðünden iþleminiz iptal edilecek';
  msgStockSerialNum027 :string = 'Ýstenen miktara ulaþýldý.';
  msgStockSerialNum028 :string = 'Stok UBB/Kod Giriþi';
  msgStockSerialNum029 :string = 'Tüm seçim iptal edilecek devam etmek istiyormusunuz?';
  msgStockSerialNum030 :string = '%s stoðun LOT kaydý bulunamadý!';
  msgStockSerialNum031 :string = 'Stok Lot Giriþi';
  msgStockSerialNum032 :string = 'ÜTS Alma Bildirimi Yapýlmýþ Ürün/Ürünler Bulundu. Ýþleminiz Ýptal Edildi!';
  msgStockSerialNum033 :string = '%s için son kullanma tarihi geçmiþ tarih olamaz.';

//StockReqOrder LRF = 253
  msgStockReqOrder001 :string = 'EHU Doktor onayý gereken ilaçlar var. Konsültasyon yapýlsýn mý?';
  msgStockReqOrder002 :string = 'Order planlamasý yapýlmýþ, devam ederseniz planlama iptal olacak' + #13 +
        'Devam etmek istiyor musunuz?';
  msgStockReqOrder003 :string = 'Hata Alýndý';
  msgStockReqOrder004 :string = 'Yapýlan planlama iptal edilecek!' + #13 + 'Devam etmek istiyor musun?';
  msgStockReqOrder005 :string = 'Doz birimi seçebilmeniz için ilaç taniminda "Birim" ve "Birim Miktar" dolu olmalidir!';
  msgStockReqOrder006 :string = 'Stok tipi HYI olan ilaçlarýn tikini kaldýramazsýnýz.';
  msgStockReqOrder007 :string = 'Ýþlem durumu "Acil" olarak iþaretlenecek!';
  msgStockReqOrder008 :string = 'Geçmis tarihli order eklenemez!';
  msgStockReqOrder009 :string = 'Uygulanmamýþ doz mevcut, yine de istensin mi?';
  msgStockReqOrder010 :string = 'Ýstek Yapabilmeniz Ýçin "Yatýþ Kabul Formu"ndan "Servis Depo" sunu seçiniz!';
  msgStockReqOrder011 :string = ' adlý ilaç orderda mevcut.'; //Ýþlem iptal edildi
  msgStockReqOrder012 :string = ' adlý ilaç onay için beklemede. Ýþlem iptal edildi.';
  msgStockReqOrder013 :string = ' adlý ilacýn stok birimi tanýmý eksik! Ýþlem iptal edildi.';
  msgStockReqOrder014 :string = 'Serili stoklar order istemlerinde kullanýlamaz!' + #13 + 'Ýþleminiz Ýptal Edildi';
  msgStockReqOrder015 :string = '" adlý ilacýn muadili "';
  msgStockReqOrder016 :string = '" ilaç isteklerin arasýnda mevcut.';
  msgStockReqOrder017 :string = 'Uygulanmamýþ doz mevcut, yine de istensin mi?';
  msgStockReqOrder018 :string = 'Stok Ýsteði Yapýlamadý!';
  msgStockReqOrder019 :string = 'Geçmiþ tarihi seçemezsiniz!';
  msgStockReqOrder020 :string = 'Baþlangýç tarihi, bitiþ tarihinden küçük olamaz!';
  //msgStockReqOrder021 :string = 'Kayýt Bulunamadý!';
  msgStockReqOrder022 :string = 'tarihinde Order mevcut, yine de eklemek istiyor musunuz?';
  msgStockReqOrder023 :string = 'Ýstek Yapabilmeniz Ýçin "Yatýþ Kabul Formu"ndan "Servis Depo" sunu seçiniz!';
  msgStockReqOrder024 :string = 'Günün ilaç notu da kopyalansýn mý?';
  msgStockReqOrder025 :string = 'Reçete türü belirlilenmiþ ilaç(lar) var:';
  msgStockReqOrder026 :string = 'Bu ilaç Sözel Orderda kullanýlamaz!';
  msgStockReqOrder027 :string = 'Karýþým yapýlmýþ bir ilacý silmeye çalýþýyorsunuz. Karýþýmýn tümü iptal edilecek, emin misiniz?';
  msgStockReqOrder028 :string = 'Bu ilaç ile karýþým yapýlmýþ kullanýlamaz.';
  msgStockReqOrder029 :string = 'Karýþýmda olduðu için deðiþtirilemez';
  msgStockReqOrder030 :string = 'Karýþým ilacýný sonlandýramazsýnýz!';
  msgStockReqOrder031 :string = ' adli ilaç "Lüzumlu Halinde Kullan" olarak isaretlenecek! ';
  msgStockReqOrder032 :string = 'Bugün için düzenlenen ve gönderilmeyen Ýlaç Ýsteðiniz(Order) var.';
  msgStockReqOrder033 :string = 'Ayný güne kopyalama yapýlamaz! Lütfen farklý bir tarih seçiniz.';
  msgStockReqOrder034 :string = 'Sözel Order olmayan kayýtlarý sadece oluþturan kullanýcý silebilir!';
  msgStockReqOrder035 :string = 'Ýlaç Notu dolu olmalýdýr. Ýþleminiz Ýptal Edildi.';
  msgStockReqOrder036 :string = '%s Hedef Deposu "Karþýlanacak Depo = %s" ile deðiþtirilecek. Emin Misiniz?';
  msgStockReqOrder037 :string = 'Kullaným dýþý olan ilaçlar kopyalanmayacaktýr. ';
  msgStockReqOrder038 :string = 'Þubede tanýmlý kan bankasý deposu bulunamadý.';
  msgStockReqOrder039 :string = 'Diðer Ýstek Tipleri tablonuzla ilgili update bulunmaktadýr. Bizmed Destek ile iletiþime geçiniz.';
  msgStockReqOrder040 :string = 'Order kopyalama iþleminiz tamamlandý. Sonlandýrýlacak ve/veya eklenecek ilaçlarýnýz varsa kontrol ediniz.'; //156445
  msgStockReqOrder041 :string = ' tarihli order kopyalanacak. Ýþleme devam etmek istiyor musunuz ?';
  msgStockReqOrder042 :string = ' adlý ilaç için not girilmesi zorunludur. Lütfen notunuzu giriniz.';
  msgStockReqOrder043 :string = ' adlý stoðun birim tanýmý deðiþtirildiði için daha önceki order bölümünden eklenemez. Ýþleminiz iptal edildi.';
  msgStockReqOrder044 :string = 'Sözel orderlar onaylanmadan order giriþi yapýlamaz.';
  msgStockReqOrder045 :string = 'Lüzumlu Hal Ýçin Ýlaç Notu Giriniz';

//OrderStockSearch
  msgOrderStockSearch001 :string = 'Doz birimi seçebilmeniz için ilaç tanýmýnda "Birim" ve "Birim Miktar" dolu olmalýdýr!';
  msgOrderStockSearch002 :string = '"%s" adlý ilacýn, "%s" Doz Birimi deðiþtirilemez!';
  msgOrderStockSearch003 :string = '"%s" adlý ilacýn miktarý, ilgili depoda mevcut deðildir. Ýþleminiz iptal edilecektir.';
  msgOrderStockSearch004 :string = #13 + 'Alt Bölümde mevcut olan, muadil ilaç/ilaçlardan seçim yapabilirsiniz.';  //Ya da Muadil Ýlaç Seçebilirsiniz.';
  msgOrderStockSearch005 :string = 'Seçmek istiyor musunuz?';

//StockReqEHUApprove
  msgStockReqEHUApprove001 :string = 'EHU Ýsteði Onaylansýn mý?';
  msgStockReqEHUApprove002 :string = 'Ayný kayýt mevcut';
  msgStockReqEHUApprove003 :string = 'Serili stoklar order istemlerinde kullanýlamaz!' + #13 + 'Ýþleminiz Ýptal Edildi';
  msgStockReqEHUApprove004 :string = 'Doz birimi seçebilmeniz için ilaç tanýmýnda "Birim" ve "Birim Miktar" dolu olmalýdýr!';
  msgStockReqEHUApprove005 :string = 'Bu ilaç kullanýlmýþ veya Eczane tarafýndan iþleme alýnmýþ. Ýþleminiz Ýptal edildi'+#13+
                                     'Sadece "Bitiþ Tarihi"ni deðiþtirebilirsiniz.';

//OrderVerbalReq
  msgOrderVerbalReq001 :string = 'Order Ýsteði Ýptal edilecek devam edilsin mi?';
  msgOrderVerbalReq002 :string = 'Order Ýsteði onaylanlanacak devam edilsin mi?';

//TIGProcess
  msgTIGProcess001 :string = 'XML oluþturulan kayýtlar TIG oluþturuldu diye iþaretlensin mi?';
  msgTIGProcess002 :string = 'Seçili kayýtlar TIG oluþturuldu olarak iþaretlenecek. Devam edilsin mi?';
  msgTIGProcess003 :string = 'Seçili kayýtlarýn TIG oluþturulma iþaretleri kaldýrýlacak. Devam edilsin mi?';
  msgTIGProcess004 :string = 'Seçili kayýtlar TIG kodlandý olarak iþaretlenecek. Devam edilsin mi?';
  msgTIGProcess005 :string = 'Seçili kayýtlar TIG kodlandý iþaretleri kaldýrýlacak. Devam edilsin mi?';
  msgTIGProcess006 :string = 'TIG oluþturulmamýþ kayýt için not ekleyemezsiniz.';

//TillAccount
  msgTillAccount001 :string = 'Gerekli alanlarý doldurmanýz gerekiyor. ';
  msgTillAccount002 :string = 'Kapatýlmýþ bir kasanýn detay iþlemini silemezsiniz.';
  msgTillAccount003 :string = 'Açýk kasa hesabý olmadýðý için iþleminiz iptal edildi.';
  msgTillAccount004 :string = 'Kasa kapatýldýðý için, devir iþleminiz iptal edildi.';
  msgTillAccount005 :string = 'Devir iþlemi yapýlacak/deðiþtirilecek, emin misiniz?';
  msgTillAccount006 :string = 'Ýþleminiz gerçekleþtirileMEdi. Kasa kapanmýþ olabilir.';

//TillDetail
  msgTillDetail001 :string = 'Kasayý kapatmak istediðinizden emin misiniz?';
  msgTillDetail002 :string = 'Ýki tarih arasýndaki fark 31 günden fazla. Yinede devam etmek istiyor musunuz?';
  msgTillDetail003 :string = 'Ýki tarih arasýndaki farký 31 günden fazla seçemezsiniz.'+ #13 + 'Lütfen Seçim yapýnýz.';
  msgTillDetail004 :string = '7 Gün Seç';
  msgTillDetail005 :string = '31 Gün Seç';
  msgTillDetail006 :string = 'Ýki tarih arasýndaki fark 7 günden fazla. Yinede devam etmek istiyor musunuz?';
  msgTillDetail007 :string = 'Z raporu numarasý girmek istiyor musunuz?';

//ToothDetail
  msgToothDetail001 :string = 'Kullanýcýnýn "Hasta Geliþ Tipleri" ni görme yetkisi yok.';
  msgToothDetail002 :string = 'Doktor bilgisi boþ. Ýþleminiz iptal edildi.';
  msgToothDetail003 :string = 'Seçili iþlem ayný diþ için daha önceden eklenmiþ. Yinede eklemek istiyor musunuz?';
  msgToothDetail004 :string = 'Seçili Plan güncel olmadýðýndan iþleme devam edemezsiniz. Geçmiþ planý iptal edip, iþleminizi tekrarlayýnýz';
  msgToothDetail005 :string = ' adlý hizmet dosyaya eklenemedi.';
  msgToothDetail006 :string = 'Seçili iþlemlerin istek kaydý %s tarihine yapýlacaktýr. Devam edilsin mi?';
  msgToothDetail007 :string = 'Sistemde kayýtlý olmayan bir taahhüt silme iþlemine devam edilsin mi?';
  msgToothDetail008 :string = 'Taahhüt No Giriþi';
  msgToothDetail009 :string = 'Silinecek Taahhüt No: ';
  msgToothDetail010 :string = 'Geliþ üzerinden açýlmýþ, doktor ve bölüm bilgisi seçilmiþ olmalýdýr.';
  msgToothDetail011 :string = 'Diðer plan(lar) iptal edilecek, devam edilsin mi?';
  msgToothDetail012 :string = 'Seçili iþlemleri kopyalamak istediðinize emin misiniz?';
  msgToothDetail013 :string = 'Seçili iþlemleri taþýmak istediðinize emin misiniz?';
  msgToothDetail014 :string = 'Ýþlem için Medula dan Taahhüt alýnmýþtýr. Taahhütü iptal edip iþleme devam edebilirsiniz.';
  msgToothDetail015 :string = 'Hasta dosyasýna iþlendiði için silme iþlemini gerçekleþtiremezsiniz';
  msgToothDetail016 :string = 'Geri alma sonrasý gönderilen veya iptal edilen iþlemler ilk duruma geri dönecektir. Devam etmek istiyor musunuz?';
  msgToothDetail017 :string = ' nolu plan detayýnda durumu deðiþmiþ istekler olduðu için iþleminiz iptal edildi.';
  msgToothDetail020 :string = 'Seçili plan iptal edilecek, devam edilsin mi?';
  msgToothDetail021 :string = ' adlý iþlem "Yapýldý" olarak iþaretlenecek, emin misiniz?';
  msgToothDetail022 :string = ' adlý iþlem için "Yapýldý" iþareti kaldýrýlacak devam etmek istiyor musunuz?';
  msgToothDetail023 :string = '%s nolu diþi %s nolu diþ ile deðiþtirmek istediðinize emin misiniz?';
  msgToothDetail024 :string = 'Gönderilecek kayýt bulunmadý.'+#13+'Sadece Medula Kodu olan hizmetler gönderilir.';
  msgToothDetail025 :string = ' Yeni plan yapamazsýnýz, sadece izleme yapabilirsiniz.';
  msgToothDetail026 :string = ' GSS kurum hesabý olan hastalarda ''Takip Numarasý'' alýnmýþ ve ''Medula Kontrolü'' yapýlmýþ olmasý gerekmektedir.';
  msgToothDetail027 :string = 'Seçilen iþlem yada iþlemlerde randevu süresi tanýmlanmayan hizmetler bulunmaktadýr. ';
  msgToothDetail028 :string = 'Taahhüt alma iþleminde protez bilgisi seçili olmasý gerekiyor.';
  msgToothDetail029 :string = 'Doktor rol bilgisi boþ. Ýþleminiz iptal edildi.';
  msgToothDetail030 :string = 'Stajyer bilgisi boþ. Ýþleminiz iptal edildi.';
  msgToothDetail031 :string = 'Ücreti karþýlanmayan iþlemler var! Ücretli hasta için tanýmlanan KURUM bilgi bulunamadý';
  msgToothDetail032 :string = 'Randevu kaydý bulunan iþlemler için silme iþlemini gerçekleþtiremezsiniz';
  msgToothDetail033 :string = 'Onaylanmýþ istekleri bulunan kayýtlar için silme iþlemini gerçekleþtiremezsiniz';
  msgToothDetail034 :string = 'Ýþlem yapan doktor, planlama yapan doktordan farklýdýr.';
  msgToothDetail035 :string = 'Son Kullanma Tarihi Geçmiþ Steril Set Barkodu Okutuldu!';
  msgToothDetail036 :string = 'Ayný SetId Kayýtlýdýr. Ýþlem iptal edildi.';
  msgToothDetail037 :string = 'Planlama yapýlabilmesi için "Steril Set Barkodu" ile kayýt oluþturulmalýdýr. Ýþleminiz Ýptal Edildi.';

//Updatebiz
  msgUpdatebiz001 :string = 'Ýþlem tamamlandý. Dosya adý ve yolu : ';
  msgUpdatebiz002 :string = 'Ýþlem baþarýsýz';

//UserControls
  msgUserControls001 :string = 'Seçili kayýt(lar)ýn baðlantýsýný kesmek istediðinizden eminmisiniz. ';

//UserAlertProcess
  msgUserAlertProcess001 : string = 'Gönderilmiþ kayýt.! Tekrar Gönderme iþlemi yapýlamaz';
  msgUserAlertProcess002 : string = 'Sadece "Gönderildi" durumunda "Teslim Al" kullanýlabilir.';
  msgUserAlertProcess003 : string = ' "%s" protokol numaralý hastanýn "%s"  kullanýcýsýna gönderdiðiniz fatura ön kontrolleri giderilmiþtir.' +#13 +
                                    'Lütfen dosyayý kontrol ediniz.(Sistem Tarafýndan Gönderilmiþtir)';

//UserGroup
  msgUserGroup001 :string = 'Gruba ait aktif kullanýcýlar olduðu için grubu pasif edemezsiniz!';

//WareHouseStocks
  msgWareHouseStocks001 :string = 'Belirtilen tarihler arasýnda herhangi bir kayýt bulunamadý.';
  msgWareHouseStocks002 :string = 'Miktarý sýfýr olanlar getirilsin mi?';
  msgWareHouseStocks004 :string = ' tarihleri arasýnda seçili depo için hasta üzerine gönderilmiþ stok bulunamadý.';
  msgWareHouseStocks005 :string = '" %s " adlý stok depoda mevcut deðil. Yerine uygun muadili var ise gönderilecektir. Yinede devam etmek istiyor musunuz?';
  msgWareHouseStocks006 :string = 'Ýstenilen miktarý karþýlayacak kadar depoda mevcut deðil,' + #13 + ' depo mevcudu kadar mý , mevcut olmasa da istenilenin hepsi miktar mý eklensin? ';
  msgWareHouseStocks007 :string = 'Seçilen stoklar ilave edilsin mi?';


//WarehouseStockMinMax
  msgWarehouseStockMinMax001 :string = 'Tüm stoklar için hesaplanacak! Devam etmek istiyor musunuz?';
  msgWarehouseStockMinMax002 :string = 'Max Miktarý "Kritik Deðerden" küçük veya eþit olamaz! Ýþleminiz iptal edildi.';
  msgWarehouseStockMinMax003 :string = 'MAX Miktarý "Minimum Deðerden" küçük veya eþit olamaz! Ýþleminiz iptal edildi.';

//WorkingList
  msgWorkingList001 :string = 'Yetkiniz olmadýðýndan ekranlarý göremezsiniz.';
  msgWorkingList002 :string = 'Kayýt daha önce eklenmiþ';
  msgWorkingList003 :string = 'Geçmiþ tarihli kayýtlarý silemezsiniz.';
  msgWorkingList004 :string = 'Belirtilen aralýk içine giren kayýt mevcut olduðundan iþleminiz iptal edilecek';
  msgWorkingList005 :string = 'Personel adý, Durumu ve Tarih alanlarýna geçerli bir deðer giriniz.';
  msgWorkingList007 :string = ' adlý personele ait girilen kayýtlar onaylanacak. Devam edilsin mi?';
  msgWorkingList008 :string = ' adlý personele ait girilen kayýtlarýn onayý iptal edilecek. Devam edilsin mi?';
  msgWorkingList009 :string = ' adlý personele ait sorumlu onayý yapýlan kayýtlarýn kesin onayý yapýlacak. Devam edilsin mi?';
  msgWorkingList010 :string = ' adlý personele ait girilen kesin onaylar iptal edilecek. Devam edilsin mi?';
  msgWorkingList011 :string = 'Seçilen personelin "Rol" bilgisi hatalý, "%s" olmalýdýr. Yapmak istediðiniz iþlemi seçiniz.';
  msgWorkingList012 :string = 'Bölüm(ler) için "Çalýþma Þekli" tanýmlanmamýþ.' + #13 + 'Personelin çalýþma durumuna kayýt edilemedi!';
  msgWorkingList013 :string = '%s adlý personelin "%s" - "%s" tarih aralýðýnda "Çalýþma Zamaný" kaydý bulunamadý!';
  msgWorkingList014 :string = 'Bu tarihte izin mevcut!';

  //msgWorkingList015 :string = 'Ayýn 25"inden sonra gelecek ay için çalýþma zamaný girilemez!';
  msgWorkingList016 :string = 'Öðleden öncesi için, seçilen personel durumuna ait doktor sýnýrlamasý mevcuttur. ';
  msgWorkingList017 :string = 'Öðleden sonrasý için, seçilen personel durumuna ait doktor sýnýrlamasý mevcuttur. ';


//ExportPatFiles
  msgExportPatFiles001 :string = 'PACS Ana Makinasýna baðlanmak için Baðlantý Parametreleri belirtilmemiþ. PACS Görüntüleri hariç iþleme devam edilecek.';
  msgExportPatFiles002 :string = 'Hasta dosyalarýnýn taþýnacaðý klasor oluþturulamadý.';
  msgExportPatFiles003 :string = ' yolu silinemediðinden iþleminiz iptal edildi.';
  msgExportPatFiles004 :string = 'Giden:';
  msgExportPatFiles005 :string = 'Gelen:';

 //SignFile
  msgSignFile001 :string ='';

//NurseCarePlans
  msgNurseCarePlans001 :string = 'Seçilen giriþim silinecektir. ';
  msgNurseCarePlans002 :string = 'Silmek istediðiniz';
  msgNurseCarePlans003 :string = 'hastalara uygulanmakta olduðundan silme iþlemi gerçekleþtirilemez.';
  msgNurseCarePlans004 :string = 'Seçilen plan silinecektir. ';
  msgNurseCarePlans005 :string = 'Seçilen kýlavuz silinecektir. ';
  msgNurseCarePlans006 :string = 'Kýlavuz adý girilmelidir!';
  msgNurseCarePlans007 :string = 'Plan adý girilmelidir!';
  msgNurseCarePlans008 :string = 'Hedef girilmelidir!';

//NurseProcess
  msgNurseProcess001 :string = 'Hemþire Ýlaç Takip Yazýcý Formu Bulunamadý(5503)!';
  msgNurseProcess002 :string = 'Ýþlem süresi dolduðundan deðiþiklik yapamazsýnýz!';
  msgNurseProcess003 :string = 'Kendi yaptýðýnýz iþlemleri deðiþtirebilirsiniz!';
  msgNurseProcess004 :string = '"%s" adlý personelin mesleði "Hemþire" olmadýðýnda iþlem yapýlamaz!';
  msgNurseProcess005 :string = '"%s" adlý kullanýcýnýn personel listesinde kaydý bulunamadý!' +#13 +
    ' Ýþlem yapabilmek için kullanýcýnýn personel kaydýný oluþturup, personel listesinden "Kullanici Adý"ný seçiniz.';
  msgNurseProcess006 :string = 'Zayi edilen ilacýn iadesi yapýlamaz!';
  msgNurseProcess007 :string = 'Ýade isteði oluþturulmuþ kayýtta iþlem yapýlamaz!';
  msgNurseProcess008 :string = 'Preop Hazýrlýklarý Tamamlandý.';
  msgNurseProcess009 :string = 'Ameliyathaneye Gönderildi.';
  msgNurseProcess010 :string = 'Hasta Servise Kabul Edildi.';
  msgNurseProcess011 :string = 'Bir önceki günden bekleyen kayýtlar var lüfen sonladýrýp iþleme devam ediniz.';
  msgNurseProcess012 :string = 'Seçilen kayýtlar için seçilen saat plan zamaný olarak uygulanacak. Devam etmek istiyor musunuz?';
  msgNurseProcess013 :string = 'Ameliyathane tarafýndan çaðrýlan hasta bulunmaktadýr.!';
  msgNurseProcess014 :string = '%s hastasýna ait bekleyen "Zayi Edilen Ýlaçlar" mevcut. ' +
        'Zayi edilen ilaçlarý kapatmadan devam edemezsiniz!';
  msgNurseProcess015 :string = 'Hastaya kimlik doðrulamasý yaptýktan sonra iþlem yapabilirsiniz!';
  msgNurseProcess016 :string = 'Teslim alýnmadan iþlem yapýlamaz! Ýlk önce stok isteklerinden teslim alýnýz.';
  msgNurseProcess017 :string = 'Stok Ýstekleri';
  msgNurseProcess018 :string = 'Order iadesiyle birlikte hastaya iþlenmiþ ilaçlar silinecek!';
  msgNurseProcess019 :string = 'Zayi edilen ilaçlar için  order isteði oluþturulacak. Devam etmek istiyor musunuz?';
  msgNurseProcess020 :string = 'Zayi Ýçin Order Ýsteði oluþturalamadý!';
  msgNurseProcess021 :string = '"%d" nolu stok isteði oluþturuldu';
  msgNurseProcess022 :string = 'Beklemede istek mevcut! Devam etmek istiyor musunuz?';
  msgNurseProcess023 :string = 'Order iþlem yapmaya uygun deðil!';
  msgNurseProcess024 :string = 'Teslim alýnmadan iþlem yapýlamaz! Ýlk önce stok isteklerinden teslim alýnýz.';
  msgNurseProcess025 :string = 'Ýleri/Geçmiþ tarihli iþlem yapýlamaz!';
  msgNurseProcess026 :string = 'Order isteði oluþturulmamýþ "Zayi edilen ilaç(lar)" mevcut. '#13 + 'Devam etmek istiyor musunuz?';
  msgNurseProcess027 :string = '"%s" tarihinde uygulanmamýþ order mevcut. Ýlk önce eski orderlarý uygulamanýz gerekir!'+ #13#13 +
          'Geçmiþ tarihli orderý uygulamak ister misiniz?';
  msgNurseProcess028 :string = ' hastasý için kimlik Doðrulamasý yapýldý. ';
  msgNurseProcess029 :string = 'Karýþýmda kullanýlan ilaçlar birlikte iþlem yapýlmalýdýr. Karýþýmda kullanýlan ilaçlarda eklenecek.';
  msgNurseProcess030 :string = 'Erken uygulama açýklamasý giriniz.';
  msgNurseProcess031 :string = 'Uygulama tarihinden önce uygulama iþlemi gerçekleþtirecek devam etmek istiyormusunuz?';
  msgNurseProcess032 :string = 'Seçilen tarih bugün veya bir sonraki gün olabilir. Ýþleminiz iptal edildi';
  msgNurseProcess033 :string = 'Tahsilatý yapýlmýþ ve/veya Faturasý kesilmiþ bir stoðun iadesi yapýlamaz.';
  msgNurseProcess034 :string = 'Uygulama tarihinden sonra uygulama iþlemi gerçekleþtirecek devam etmek istiyormusunuz?';
  msgNurseProcess035 :string = 'Geç uygulama açýklamasý giriniz.';
  msgNurseProcess036 :string = 'Uygulama tarihi girilmiþ bir iþlemin uygulamaya tarihi deðiþtirilecek devam etmek istiyormusunuz?';
  msgNurseProcess037 :string = 'Uygulama tarihi deðiþtirme açýklamasý giriniz.';
  msgNurseProcess038 :string = 'Ýlerideki bir günün Ýlaç Ýsteði (Order), Hastaya ÝÞLENEMEZ!!!';
  msgNurseProcess039 :string = 'Hastanýn çýkýþ iþlemi yapýlmýþtýr. ';
  msgNurseProcess040 :string = 'Depo stok miktarý minimum deðer altýndadýr!';

//DBConsole
  msgDBConsole001 :string = 'Sadece SELECT ifadesini kullanabilirsiniz.';

//byzListForm
  msgbyzListForm001 :string = 'Liste düzenleme moduna göre ayarlanmamýþ.';
  msgbyzListForm002 :string = 'Kayýt Silinemedi.';
  msgbyzListForm003 :string = 'Alt kayýtlarý olan bir master kaydý seçemezsiniz';

//UserMessage
  msgUserMessage001 :string = 'sn sonra otomatik onaylanarak kapatýlacak';
  msgUserMessage002 :string = 'Süreyi Uzat';
  msgUserMessage003 :string = 'Personel Ýzin Talep Onayý';
  msgUserMessage004 :string = '%s Personeli için Ýzin Talebi Yapýlmýþtýr.';
  msgUserMessage005 :string = '%s Onayý Gerekmektedir. Ýþleminiz Ýptal Edildi.!!';

  //byzInput
  msgByzInput001 :string = 'Artýrýlacak Fiyat, Þuanki Ýþlem Fiyatýndan büyük olmalýdýr. %s';

//byzMedCard
  msgbyzMedCard001 :string = ' adlý nesne açýlamadý.';
  msgbyzMedCard002 :string = 'Üzerine yazýlsýn mý?';
  msgbyzMedCard003 :string = 'Dosyanýn kaydedileceði yol belirtilmemiþ. Nesne düzenleme ekranýndan belirtebilirsiniz.';
  msgbyzMedCard004 :string = 'Eklemek istediðiniz dosyayý seçiniz';
  msgbyzMedCard005 :string = 'Tüm nesneler';
  msgbyzMedCard006 :string = 'adlý klasör oluþturulamadýðý için iþleminiz iptal edilecek.';
  msgbyzMedCard007 :string = 'adlý dosya kopyalanamadýðý için iþleminiz iptal edilecek.';
  msgbyzMedCard008 :string = 'Dosya silinecek, iþleme devam etmek istiyor musunuz?';
  msgbyzMedCard009 :string = 'Veri kopyalama için Tablo adý belirtilmemiþ. [COPY] den sonraki ilk satira, MC_TabloAdý þeklinde olmalý.';
  msgbyzMedCard010 :string = 'Bir önceki karttan veriler kopyalansýn mý?';
  msgbyzMedCard011 :string = ' alan adý tabloda tanýmlý deðil.';
  msgbyzMedCard012 :string = ' Hazýr Metinler';
  msgbyzMedCard013 :string = 'Seçili hasta için en son %s adlý doktor tarafýndan %s açýlmýþ. '+
                             'Bunun verilerini kopyalamak ister misiniz? '+#13+
                             'Aksi halde varsa adýnýza açýlmýþ en son karttaki veriler kopyalanacak.';
  msgbyzMedCard014 :string = '" %s " tarihli " %s " deðiþti.';
  msgbyzMedCard015 :string = 'Farklý bir kullanýcý tarafýndan deðiþiklik yapýldýðýndan iþleminiz iptal edildi. Lütfen yaptýðýnýz deðiþikliklerin yedeðini alýnýz.';
//  msgbyzMedCard015 :string = 'Farklý bir kullanýcý tarafýndan deðiþiklik yapýlmakta! iþleminiz iptal edilecek lütfen yaptýðýnýz deðiþikliklerin yedeðini alarak daha sonra deneyiniz.';
  msgbyzMedCard016 :string = 'Farklý bir kullanýcý tarafýndan deðiþiklik yapýlmakta! daha sonra tekrar deneyiniz.';
  msgbyzMedCard017 :string = 'Kopyalanmak istediðiniz dosyada taný veya tanýlar eþletmediðinden kopyalama yapýlamamaktadýr.';
  msgbyzMedCard018 :string = ' isimli deðiþken atanamadý.';
  msgbyzMedCard019 :string = 'Hastanýn Ölüm Bildirimi Yapýlacak (ÖBS)!' + #13#10 + 'Devam Etmek Ýstediðinizden Emin Misiniz?';
  msgbyzMedCard020 :string = 'Yaptýðýnýz deðiþiklikleri iptal etmek istiyor musunuz?';
  msgbyzMedCard021 :string = 'ÖNEMLÝ: e-Rapor Doðum Sayfasýnýn açýlabilmesi için Doðum Kartý Girilmesi zorunlu alanlarýn doldurulmasý gereklidir!';
  msgbyzMedCard022 :string = 'e-Nabýz Gönderimi yapýlan "Aþý kartý" üzerinde iþlem yapamazsýnýz. Lütfen yeni aþý kartý açýnýz.';
  msgbyzMedCard023 :string = 'Tümünü kopyalamak istiyor musunuz ?';
  msgbyzMedCard024 :string = 'Lütfen ekleme yapacaðýnýz metin aralýðýný seçiniz.';//214625;Bacl;14.10.2020
  msgbyzMedCard025 :string = 'Hastanýn Medula Kiþi Vefat Kayýt Bildirimi Yapýlacak!' + #13#10 + 'Devam Etmek Ýstediðinizden Emin Misiniz?';

//byzReport
  msgbyzReport001 :string = ' yazýcýsýný bu rapor için varsayýlan yazýcý olarak ayarlamak istermisiniz?';

//byzRequest
  msgbyzRequest001 :string = 'Arama Tamamlandý.';
  msgbyzRequest002 :string = 'Sonrakini Bul';
  msgbyzRequest003 :string = 'Doktorun çaðrýlma zamaný sistem zamanýndan küçük olamaz. Lütfen Tarihi Düzeltiniz.';
  msgbyzRequest004 :string = 'Hastanýn kan grubu testi daha önceden çalýþýlmýþtýr. ';
  msgbyzRequest005 :string = 'Numune alýnma saatini girmelisiniz.';

//PatAcceptInfo
  msgPatAcceptInfo001 :string = 'Bölüme ait tüm personeller eklenecek, iþleme devam etmek istiyor musunuz?' ;
  msgPatAcceptInfo002 :string = 'Bölüme ait herhangi bir personel kaydý bulunamadý.' ;
  msgPatAcceptInfo003 :string = 'Eklenmek istenen kiþiye ait, ayný güne planlanmýþ kayýt olduðundan dolayý ekleyemezsiniz!' ;

//PhysiotherapyPlans
  msgPhysiotherapyPlans001 : string = 'Planladýðýnýz seanslar iptal edilecek devam etmek istiyormusunuz?';
  msgPhysiotherapyPlans002 : string = ' Bu Tarihler arasýnda " %s " Adet randevu bulunmakta devam etmek istiyormusunuz' ;
  msgPhysiotherapyPlans003 : string = 'Seans planlarýnýz arasýnda seçilen tarih mevcut baþka bir tarih seçiniz' ;
  msgPhysiotherapyPlans004 : string = 'Ýstenilen tarih için musait randevu bulunamadý alternatiflere bakýlsýn mý?';
  msgPhysiotherapyPlans005 : string = 'Randevu bulundu kalan kayýtlar yeniden oluþturalacak devam etmek istiyormusunuz?' ;

//DoRelatedMaterials
  msgDoRelatedMaterials001 :string = 'Depo seçilmeyen kayýtlar eklenmeyecek devam etmek istiyormusunuz.';
  msgDoRelatedMaterials002 :string = 'Depoda yeterli malzeme yok.!';
  msgDoRelatedMaterials003 :string = 'Lütfen depo seçiniz.!';
  msgDoRelatedMaterials004 :string = 'adlý hizmette yeterli malzeme olmadýðýndan iþlem iptal edilecektir.';

//FastServiceAdd
  msgFastServiceAdd001 :string = 'Listelenen kayýt sayýsý iki tarih arasýnda bulunan farktan azdýr.';
  msgFastServiceAdd002 :string = 'Hizmet veya Stok Seçilmeli';
  msgFastServiceAdd003 :string = 'Bölüm Seçilmeli';
  msgFastServiceAdd004 :string = 'Doktor Seçilmeli';
  msgFastServiceAdd005 :string = 'Girilen deðerler " %s " Arasýnda olmalýdýr';
  msgFastServiceAdd006 :string = 'Doktor izinli veya çalýþma aralýðýnda deðil.';
  msgFastServiceAdd007 :string = 'Seçilen tarih kayýtlar arasýnda bulunmaktadýr.';
  msgFastServiceAdd008 :string = 'Serili stok ile iþleme devam edemezsiniz.';
  msgFastServiceAdd009 :string = 'Çoklu Ýþlem Eklemede, "Teletýp Mükerrerlik Sorgulama" tipli Ýþlemler Eklenemez.';

//PathologyProcess
  msgPathologyProcess001 :string = 'Numune sýnýfý boþ olamaz.';
  msgPathologyProcess002 :string = 'Patoloji Tipi boþ olamaz.';
  msgPathologyProcess003 :string = 'Ön Taný boþ olamaz.';
  msgPathologyProcess004 :string = 'Reddetme Bilgisi';
  msgPathologyProcess005 :string = 'Reddetme Sebebleri';
  msgPathologyProcess006 :string = 'Blok adet bilgisi boþ olamaz.';
  msgPathologyProcess007 :string = 'Laborant bilgisi boþ olamaz.';
  msgPathologyProcess008 :string = 'Lam adeti boþ olamaz.';
  msgPathologyProcess009 :string = 'Doktor 1 boþ olamaz.';
  msgPathologyProcess010 :string = 'Blok adet bilgisi 0 olamaz.';
  msgPathologyProcess011 :string = ' adet blok vardýr daha fazla girilemez';
  msgPathologyProcess012 :string = 'Kesit adedi boþ olamaz.';
  msgPathologyProcess013 :string = 'Önceki Geliþ Sayýsý';
  msgPathologyProcess014 :string = 'Sitoloji numune Döküm veya Kesit Laboratuvarlarýna gönderilemez';
  msgPathologyProcess015 :string = 'FROZEN tipli numune boyama laboratuvarýna gönderilecektir! devam etmek istiyor musunuz.';
  msgPathologyProcess016 :string = 'Saðlýk Net bilgileri boþ olamaz.';
  msgPathologyProcess017 :string = 'Doku Takibine Gönderiniz.';
  msgPathologyProcess018 :string = 'Numune Reddi ile ilgili kullanýcý uyarýsý verilsin mi ?';
//PathologyLabChoose
  msgPathologyLabChoose001 :string = 'Seçilmiþ Laboratuvar ve Test yoktur.';
//PathologySpecPaint
  msgPathologySpecPaint001 :string = 'Bu kayýt daha önce eklenmiþtir.';
  msgPathologySpecPaint002 :string = 'Bu kayýt diðer özel boyama grubuna eklenmiþtir.';

  //InPatPackage
  msgInPatPackage001 : string = 'En az bir paket seçilmelidir.';
  msgInPatPackage002 : string = 'Stok isteði yapýlacak! devam etmek istiyormusunuz.';
  msgInPatPackage003 : string = 'Yeni Ýstek';
  msgInPatPackage004 : string = 'Depo Seçimi yapýlmalýdýr.';
  msgInPatPackage005 : string = 'Ýstek yapýlacak en az bir detay satýrý olmalýdýr.';

  //PatSeansArrange
  msgPatSeansArrange001 : string = 'Yapýlan deðiþiklikler iptal edilecek! Devam etmek istiyor musunuz?';
  msgPatSeansArrange002 : string = 'Tüm hizmetlere seans bilgisi girilmiþ!';
  msgPatSeansArrange003 : string = ' seans seçiniz.';
  msgPatSeansArrange004 : string = 'Büyük ameliyata seans seçilmiþ: ';
  msgPatSeansArrange005 : string = 'Düzeltip iþleme devam ediniz.';

  //LabGeneticTest
  msgLabGeneticTest001 : string = 'Girilen kayýt ve deðer aralýðý sistemde mevcuttur.';
  msgLabGeneticTest002 : string = 'Daha önce eklenen iþlemi farklý tipte ekleyemessiniz.';
  msgLabGeneticTest003 : string = '" %s " kurumundan kopyalanan himzetler " %s "  kurumunda bulunmuyorsa eklenecek! devam etmek istiyormusunuz ?';

  //StockSerialMovControl
  msgStockSerialMovControl001 : string = 'Fiziksel Transfer';
  msgStockSerialMovControl002 : string = 'Transfer yapmýþ olduðunuz stoklarýn gönderilmesi istenmektedir! kontrol etmek için týklayýnýz.';
  msgStockSerialMovControl003 : string = 'Ýstemde bulunduðunuz stoklar fiziksel transferi yapýldý! kontrol etmek için týklayýnýz. ';
  msgStockSerialMovControl004 : string = 'Gönderilen stoklarýnýz kabul edildi! kontrol etmek için týklayýnýz. ';
  msgStockSerialMovControl005 : string = 'Seçilen kayýtlar için fiziksel olarak çýkýþ istemi yapýlacak devam etmek istiyormusunuz?';
  msgStockSerialMovControl006 : string = 'Seçilen kayýtlar için fiziksel olarak ÇIKIÞ  yapýlacak devam etmek istiyormusunuz?';
  msgStockSerialMovControl007 : string = 'Seçilen kayýtlarýn fiziksel transferi kabul edilecek devam etmek istiyormusunuz?';
  msgStockSerialMovControl008 : string = 'Barkod okutulmayan kayýtlar var yinede devam edilsin mi?';
  msgStockSerialMovControl009 : string = 'Okutulan barkodu kontrol ediniz!';
  msgStockSerialMovControl010 : string = 'Okutulan barkod için uygun kayýt bulunamadý!';
  msgStockSerialMovControl011 : string = 'Ýstek Yap';
  msgStockSerialMovControl012 : string = 'Çýkýþ Yap';
  msgStockSerialMovControl013 : string = 'Kabul Et';
  msgStockSerialMovControl014 : string = 'Ýlk önce Seri Barkodunu okutunuz';
  msgStockSerialMovControl015 : string = 'Ýptal Et';
  msgStockSerialMovControl016 : string = 'Seçilen kayýtlarýn fiziksel transferi iptal edilecek devam etmek istiyormusunuz?';

  //dmSNET
  msgDtMdSnet001 : string = 'Takip numarasý olmadýðýndan iþleminiz iptal edildi.';
  msgDtMdSnet002 : string = 'Silinecek en az bir iþlem kaydý seçilmelidir.';
  msgDtMdSnet003 : string = 'Hastaya ait e-Nabýz''a gönderilen Aþý Kaydý bulundu. E-Nabýz Takibini Silemezsiniz.'+
                            'Herhangi bir veri paketini silmek ister misiniz?';
  msgDtMdSnet004 : string = 'Hastaya ait e-Nabýz''a gönderilen Reçete Bilgisi bulundu. Reçete Bilgisini silmek ister misiniz?';
  msgDtMdSnet005 : string = 'Eklediðiniz taný Yüksek Riskli Gebelik Kapsamýnda kontrol edilmesi gereken bir tanýdýr,'+
    ' Saðlýk Bakanlýðýnýn Ýlgili Servisleri çalýþmadýðýndan kontrol edilememiþtir.';
  msgDtMdSnet006 : string = 'Gönderilecek en az bir iþlem kaydý seçilmelidir.';
  msgDtMdSnet007 : string = 'e-Nabýz''a Gönderme tanýmý olan dosyada gönderim iþlemi yapamazsýnýz. ';
  msgDtMdSnet008 : string = 'SaðlýkNET ve SaðlýkNET Server Uygulamasý kapalýdýr. Lütfen Bilgi Ýþlem ile iletiþime geçiniz.';
  msgDtMdSnet009 : string = 'SaðlýkNET ve SaðlýkNET Server Uygulamasý kapalýdýr. SaðlýkNET Uygulamasýnýn en son aktif olduðu zaman: %s'+
    ' Lütfen Bilgi Ýþlem ile iletiþime geçiniz.';

  //RadDoctorProcess
  msgRadDoctorProcess001 : string = 'Seçili olan kayýtlar, kopyalanýrken bulunduðu taným içerisinden silinsin mi?';
  msgRadDoctorProcess002 : string = 'Seçili olan ses kaydý silinsin mi?';
  msgRadDoctorProcess003 : string = 'Eski Ýþlemler Ekranýný kullanmak istiyor musunuz?';
  msgRadDoctorProcess004 : string = 'Mikrofon baðlantýsý kurulamadý!';
  msgRadDoctorProcess005 : string = 'Ses kaydedilirken bir hata oluþtu!';
  msgRadDoctorProcess006 : string = 'Þablon SQL bilgisinin doðruluðun kontrol ediniz!';
  msgRadDoctorProcess007 : string = 'Kullanýcý Bilgisi seçilmelidir!';
  msgRadDoctorProcess008 : string = 'Þablon SQL bilgisi doldurulmalýdýr. ';
  msgRadDoctorProcess009 : string = 'Hastane bilgilerinde dosya yolu belirtilmelidir!';
  msgRadDoctorProcess010 : string = 'Kaynak dosya yoluna klasör oluþturulamadý!';
  msgRadDoctorProcess011 : string = 'Kayýt iþlemi yapýlamadý!';
  msgRadDoctorProcess012 : string = 'Kayýt edilecek iþlem yok!';
  msgRadDoctorProcess013 : string = 'Dosya silinemedi ve ya dosya yok!';
  msgRadDoctorProcess014 : string = 'Dosya belirtilen yolda bulunamadý!' + #13 +
                                    'Ýþlem üzerindeki kayýt da silinsin mi?';
  msgRadDoctorProcess015 : string = ' adlý kullanýcý iþlem baþlattýðý için, iþleminiz iptal edildi.';

  //JobAssign - LRF_ID = 186
  msgJobAssign001 : string = 'Önünüzde bekleyen %s adet iþ bulunmaktadýr.';

  //Photo Cam
  msgPhoto001 : string = 'Hasta Kaydý Oluþturulmadan Ýþlem Yapýlamaz !!';
  msgPhoto002 : string = 'Stok Kaydý Oluþturulmadan Ýþlem Yapýlamaz !!';
  msgPhoto003 : string = 'Personel Kaydý Oluþturulmadan Ýþlem Yapýlamaz !!';

  //Messages
  msgMsg001 : string = 'Mesajlarýnýz Okundu Olarak Ýþaretlenecek Ýþleme Devam Edilsinmi !';

  // HIDForm
  msgHIDForm001 : string = 'Cihaz çalýþma seçeneði seçilmeli!';
  msgHIDForm002 : string = 'Ayný kayýt sistemde mevcut!';
  msgHIDForm003 : string = 'USB Arayüz kullanan tüm formlar kapatýlmalý!';
  msgHIDForm004 : string = 'Daha önce entegre edilmeyen cihaz veritabanýna kaydedilemez!';
  msgHIDForm005 : string = 'Cihaz tanýmý veritabanýndan silinecek! Cihaz sistemde kullanýlamayacak!' + #13 +
                           'Devam etmek istiyor musunuz?';

  //PeriodPriceListChange
  msgPeriodPriceListChange001: string = 'Seçilen kayýt için mi iþlem yapmak istiyorsunuz?';
  msgPeriodPriceListChange002: string = 'Kayýt seçmeniz gerekmektedir.';  // 219443;BAKKAYA;20.10.2020

  // UpdatePlan
  msgUpdatePlan001 : string = 'Sadece son versiyon için planlama yapabilirsiniz.' + #13 +
                              'Alýnmamýþ tüm eski versiyonlar son versiyon ile birlikte alýnacaktýr.';
  msgUpdatePlan002 : string = ' tarihine güncelleme planlandý.';
  msgUpdatePlan003 : string = 'Geçmiþ tarihe planlama yapamazsýnýz!';
  msgUpdatePlan004 : string = 'Gerçekleþmemiþ tüm güncelleme planlarý iptal edilecek!' + #13 +
                              'Devam etmek istiyor musunuz?';

  //MCCatheterMaterialTrace
  msgMCCatheterMaterialTrace001 : string = 'Daha önce çýkartýlmýþ materyal için bu iþlem yapýlamaz!';

  //MessageTemplates
  msgMessageTemplates001 : string = 'SMS gönderilecek hasta bulunamadý. %s';
  msgMessageTemplates002 : string = 'Mesaj þablonu boþ seçildi. %s';
  msgMessageTemplates003 : string = 'Þablon SQL''inde eksik deðiþkenler bulundu : "%s"';

  //MCAnesthesiaEvaluation
  msgMCAnesthesiaEvaluation001 : String = 'Anestezi deðerlendirmesi reddedilsin mi?';
  msgMCAnesthesiaEvaluation002 : String = 'Ameliyat eklenmeden onay verilemez!';
  msgMCAnesthesiaEvaluation003 : String = 'Aðrý Deðerlendirme Skalasý ekranýna giriþ yetkiniz yok!';
  msgMCAnesthesiaEvaluation004 : String = 'Geçmiþ tarihe ameliyat planlanamaz!';
  msgMCAnesthesiaEvaluation005 : String = 'Ameliyat daha önceden eklenmiþ!';
  msgMCAnesthesiaEvaluation006 : String = 'Anestezi deðerlendirmesini sadece onaylayan kullanýcý beklemeye alabilir.';
  msgMCAnesthesiaEvaluation007 : String = 'Anestezi doktoru seçilmediðinden iþleminiz iptal edildi!';
  msgMCAnesthesiaEvaluation008 : String = 'Ameliyat tarihi seçilmediðinden iþleminiz iptal edildi!';
  msgMCAnesthesiaEvaluation009 : String = 'Onaylý anestezi deðerlendirmesi silinemez!';
  msgMCAnesthesiaEvaluation010 : String = 'Anestezi deðerlendirmesini sadece oluþturan kullanýcý sile bilir!';
  msgMCAnesthesiaEvaluation011 : String = 'Anestezi Onayý Verildi.';

  //MCConstraintEvaluation
  msgMCConstraintEvaluation001 : String = 'Kýsýtlamayý sonlandýrmak istediðinizden emin misiniz?';
  msgMCConstraintEvaluation002 : String = 'Çýkýþý Yapýlan hasta için kýsýtlama dosyasý açýlamaz.';
  msgMCConstraintEvaluation003 : String = 'Kýsýtlama baþlangýç tarihi yatýþ tarihinden önce olamaz.';
  msgMCConstraintEvaluation004 : String = 'Kýsýtlama bitiþ tarihi baþlangýç tarihinden önce yada eþit olamaz.';
  msgMCConstraintEvaluation005 : String = 'Kýsýtlama bitiþ tarihi hasta çýkýþ tarihinden sonra olamaz.';
  //MCAdverseImpactForm
  msgMCAdverseImpactForm001 :String = 'Ciddiyet Kriteri Seçimi Yapýnýz !';
  //MCDietitianEvaluation
  msgMCDietitianEvaluation001 : String = '"NRS Deðerlendirme Formu" doldurulmasý gereklidir.';

  //MCApacheII
  msgMCApacheII001: String = 'Serum HCO3 ve Arterial pH alanlarý ayný anda doldurulamaz!';
  msgMCApacheII002: String = 'O2 ve PaO2 alanlarý ayný anda doldurulamaz!';
  msgMCApacheII003: String = 'Glasgow skoru hesaplanmadan Apache-II hesaplanamaz!';

  //MCPrism
  msgMCPrism0001: String = 'Glasgow skoru hesaplanmadan Prism Skoru hesaplanamaz!';

  //MCSafeBirthControl
  msgMCSafeBirthControl001 : String = 'Seçilen form tipi zaten kayýtlý. Ýþleminiz iptal edilmiþtir.';
  msgMCSafeBirthControl002 : String = 'Tüm form tipleri oluþturulduðundan, iþleminiz iptal edilmiþtir.';
  msgMCSafeBirthControl003: String = 'Bu form yalnýzca Bayan hastalara doldurulabilir!';

  //MCPelodScore
  msgMCPelodScore001: String = 'Glasgow skoru hesaplanmadan Pelod Skoru hesaplanamaz!';

  //MCStrongKidsNutritionAssessment
  msgMCStrongKidsNutritionAssessment001 : String = 'Bu form yalnýzca 18 yaþýndan küçükler için doldurulabilir!';

  //MCSafeSurgeryControl
  msgMCSafeSurgeryControl001 : String = 'Geçmiþ tarihe ameliyat planlanamaz!';
	msgMCSafeSurgeryControl002 : String = 'Operasyon (Seans) bilgisi ve detayý siliniyor.Emin misiniz ?';
  msgMCSafeSurgeryControl003 : String = '4 den fazla klinik süreç baþlatýlamaz.';
  msgMCSafeSurgeryControl004 : String = 'Son kayýt silinmeden önceki kayýtlar silinemez!';

procedure SetFormGlobalMessageValues(pFormClassName: String) ;

implementation

procedure SetFormGlobalMessageValues(pFormClassName: String);
var
  lvMsgVal: String;

  procedure SetGlobalMessage(const pVarName: string; var pVariable:string);
  begin
    lvMsgVal := byzGetLangMsgVal(pVarName);
    if lvMsgVal <> '' then
      pVariable := lvMsgVal;
  end;

begin

  if pFormClassName = 'TfrmMain' then
  begin
    SetGlobalMessage('msgMainForm001',msgMainForm001);
    SetGlobalMessage('msgMainForm002',msgMainForm002);
    SetGlobalMessage('msgMainForm003',msgMainForm003);
    SetGlobalMessage('msgMainForm004',msgMainForm004);
    SetGlobalMessage('msgMainForm005',msgMainForm005);
    SetGlobalMessage('msgMainForm006',msgMainForm006);
    SetGlobalMessage('msgMainForm007',msgMainForm007);
    SetGlobalMessage('msgMainForm008',msgMainForm008);
    SetGlobalMessage('msgMainForm009',msgMainForm009);
    SetGlobalMessage('msgMainForm010',msgMainForm010);
    SetGlobalMessage('msgMainForm011',msgMainForm011);
    SetGlobalMessage('msgMainForm012',msgMainForm012);
    SetGlobalMessage('msgMainForm013',msgMainForm013);
    SetGlobalMessage('msgMainForm014',msgMainForm014);
    SetGlobalMessage('msgMainForm015',msgMainForm015);
    SetGlobalMessage('msgMainForm016',msgMainForm016);
    SetGlobalMessage('msgMainForm017',msgMainForm017);
    SetGlobalMessage('msgMainForm018',msgMainForm018);
    SetGlobalMessage('msgMainForm019',msgMainForm019);
    SetGlobalMessage('msgMainForm020',msgMainForm020);
    SetGlobalMessage('msgMainForm021',msgMainForm021);
    SetGlobalMessage('msgMainForm022',msgMainForm022);
    SetGlobalMessage('msgMainForm023',msgMainForm023);
    SetGlobalMessage('msgMainForm024',msgMainForm024);
    SetGlobalMessage('msgMainForm025',msgMainForm025);
    SetGlobalMessage('msgMainForm026',msgMainForm026);
    SetGlobalMessage('msgMainForm027',msgMainForm027);
    SetGlobalMessage('msgMainForm028',msgMainForm028);
    SetGlobalMessage('msgMainForm029',msgMainForm029);
    SetGlobalMessage('msgMainForm030',msgMainForm030);
    SetGlobalMessage('msgMainForm031',msgMainForm031);
    SetGlobalMessage('msgMainForm032',msgMainForm032);
    SetGlobalMessage('msgMainForm033',msgMainForm033);
    SetGlobalMessage('msgMainForm034',msgMainForm034);
    SetGlobalMessage('msgMainForm035',msgMainForm035);
    SetGlobalMessage('msgMainForm036',msgMainForm036);
    SetGlobalMessage('msgMainForm037',msgMainForm037);
    SetGlobalMessage('msgMainForm038',msgMainForm038);
    SetGlobalMessage('msgMainForm039',msgMainForm039);
    SetGlobalMessage('msgMainForm040',msgMainForm040);
    SetGlobalMessage('msgMainForm041',msgMainForm041);
    SetGlobalMessage('msgMainForm042',msgMainForm042);
    SetGlobalMessage('msgMainForm043',msgMainForm043);
    SetGlobalMessage('msgMainForm044',msgMainForm044);
    SetGlobalMessage('msgMainForm045',msgMainForm045);
    SetGlobalMessage('msgMainForm046',msgMainForm046);
    SetGlobalMessage('msgMainForm047',msgMainForm047);
    SetGlobalMessage('msgMainForm048',msgMainForm048);
    SetGlobalMessage('msgMainForm049',msgMainForm049);
    SetGlobalMessage('msgMainForm050',msgMainForm050);
    SetGlobalMessage('msgMainForm051',msgMainForm051);
    SetGlobalMessage('msgMainForm052',msgMainForm052);
    SetGlobalMessage('msgMainForm053',msgMainForm053);
    SetGlobalMessage('msgMainForm054',msgMainForm054);
    SetGlobalMessage('msgMainForm055',msgMainForm055);
    SetGlobalMessage('msgMainForm060',msgMainForm060);
    SetGlobalMessage('msgMainForm061',msgMainForm061);
    SetGlobalMessage('msgMainForm062',msgMainForm062);
    SetGlobalMessage('msgMainForm063',msgMainForm063);
    SetGlobalMessage('msgMainForm064',msgMainForm064);
    SetGlobalMessage('msgMainForm065',msgMainForm065);
    SetGlobalMessage('msgMainForm066',msgMainForm066);
    SetGlobalMessage('msgMainForm067',msgMainForm067);
    SetGlobalMessage('msgMainForm068',msgMainForm068);
    SetGlobalMessage('msgMainForm069',msgMainForm069);
    SetGlobalMessage('msgMainForm070', msgMainForm070);
    SetGlobalMessage('msgMainForm071', msgMainForm071);
    SetGlobalMessage('msgMainForm072', msgMainForm072);
    SetGlobalMessage('msgMainForm073', msgMainForm073);
    SetGlobalMessage('msgMainForm074', msgMainForm074);
    SetGlobalMessage('msgMainForm075', msgMainForm075);
    SetGlobalMessage('msgMainForm076', msgMainForm076);
    SetGlobalMessage('msgMainForm077', msgMainForm077);
    SetGlobalMessage('msgMainForm078', msgMainForm078);
    SetGlobalMessage('msgMainForm079', msgMainForm079);
    SetGlobalMessage('msgMainForm080', msgMainForm080);
    SetGlobalMessage('msgMainForm081', msgMainForm081);
    SetGlobalMessage('msgMainForm082', msgMainForm082);
    SetGlobalMessage('msgMainForm083', msgMainForm083);
    SetGlobalMessage('msgMainForm084', msgMainForm084);
    SetGlobalMessage('msgMainForm085', msgMainForm085);
    SetGlobalMessage('msgMainForm086', msgMainForm086);
    SetGlobalMessage('msgMainForm087', msgMainForm087);
    SetGlobalMessage('msgMainForm088', msgMainForm088);
    SetGlobalMessage('msgMainForm089', msgMainForm089);
    SetGlobalMessage('msgMainForm090', msgMainForm090);
    SetGlobalMessage('msgMainForm091', msgMainForm091);


    SetGlobalMessage('msgMultiUsed001',msgMultiUsed001);
    SetGlobalMessage('msgMultiUsed002',msgMultiUsed002);
//    SetGlobalMessage('msgMultiUsed004',msgMultiUsed004);
    SetGlobalMessage('msgMultiUsed005',msgMultiUsed005);
    SetGlobalMessage('msgMultiUsed006',msgMultiUsed006);
    SetGlobalMessage('msgMultiUsed007',msgMultiUsed007);
    SetGlobalMessage('msgMultiUsed008',msgMultiUsed008);
    SetGlobalMessage('msgMultiUsed010',msgMultiUsed010);
    SetGlobalMessage('msgMultiUsed011',msgMultiUsed011);
    SetGlobalMessage('msgMultiUsed012',msgMultiUsed012);
    SetGlobalMessage('msgMultiUsed013',msgMultiUsed013);
    SetGlobalMessage('msgMultiUsed014',msgMultiUsed014);
    SetGlobalMessage('msgMultiUsed015',msgMultiUsed015);
    SetGlobalMessage('msgMultiUsed016',msgMultiUsed016);
    SetGlobalMessage('msgMultiUsed017',msgMultiUsed017);
    SetGlobalMessage('msgMultiUsed018',msgMultiUsed018);
    SetGlobalMessage('msgMultiUsed020',msgMultiUsed020);
    SetGlobalMessage('msgMultiUsed021',msgMultiUsed021);
    SetGlobalMessage('msgMultiUsed022',msgMultiUsed022);
    SetGlobalMessage('msgMultiUsed024',msgMultiUsed024);
    SetGlobalMessage('msgMultiUsed027',msgMultiUsed027);
    SetGlobalMessage('msgMultiUsed028',msgMultiUsed027);
    SetGlobalMessage('msgMultiUsed030',msgMultiUsed030);
    SetGlobalMessage('msgMultiUsed031',msgMultiUsed031);
    SetGlobalMessage('msgMultiUsed032',msgMultiUsed032);
    SetGlobalMessage('msgMultiUsed033',msgMultiUsed033);
    SetGlobalMessage('msgMultiUsed034',msgMultiUsed034);
    SetGlobalMessage('msgMultiUsed035',msgMultiUsed035);
    SetGlobalMessage('msgMultiUsed036',msgMultiUsed036);
    SetGlobalMessage('msgMultiUsed037',msgMultiUsed037);
    SetGlobalMessage('msgMultiUsed038',msgMultiUsed038);
    SetGlobalMessage('msgMultiUsed039',msgMultiUsed039);
    SetGlobalMessage('msgMultiUsed040',msgMultiUsed040);
    SetGlobalMessage('msgMultiUsed041',msgMultiUsed041);
    SetGlobalMessage('msgMultiUsed042',msgMultiUsed042);
    SetGlobalMessage('msgMultiUsed046',msgMultiUsed046);
    SetGlobalMessage('msgMultiUsed047',msgMultiUsed047);
    SetGlobalMessage('msgMultiUsed048',msgMultiUsed048);
    SetGlobalMessage('msgMultiUsed049',msgMultiUsed049);
    SetGlobalMessage('msgMultiUsed050',msgMultiUsed050);
    SetGlobalMessage('msgMultiUsed051',msgMultiUsed051);
    SetGlobalMessage('msgMultiUsed052',msgMultiUsed052);
    SetGlobalMessage('msgMultiUsed053',msgMultiUsed053);
    SetGlobalMessage('msgMultiUsed054',msgMultiUsed054);
    SetGlobalMessage('msgMultiUsed055',msgMultiUsed055);
    SetGlobalMessage('msgMultiUsed056',msgMultiUsed056);
    SetGlobalMessage('msgMultiUsed057',msgMultiUsed057);
    SetGlobalMessage('msgMultiUsed058',msgMultiUsed058);
    SetGlobalMessage('msgMultiUsed059',msgMultiUsed059);
    SetGlobalMessage('msgMultiUsed060',msgMultiUsed060);
    SetGlobalMessage('msgMultiUsed061',msgMultiUsed061);
    SetGlobalMessage('msgMultiUsed062',msgMultiUsed062);
    SetGlobalMessage('msgMultiUsed063',msgMultiUsed063);
    SetGlobalMessage('msgMultiUsed064',msgMultiUsed064);
    SetGlobalMessage('msgMultiUsed065',msgMultiUsed065);
    SetGlobalMessage('msgMultiUsed066',msgMultiUsed066);
    SetGlobalMessage('msgMultiUsed067',msgMultiUsed067);
    SetGlobalMessage('msgMultiUsed069',msgMultiUsed069);
    SetGlobalMessage('msgMultiUsed070',msgMultiUsed070);
    SetGlobalMessage('msgMultiUsed071',msgMultiUsed071);
    SetGlobalMessage('msgMultiUsed072',msgMultiUsed072);
    SetGlobalMessage('msgMultiUsed073',msgMultiUsed073);
    SetGlobalMessage('msgMultiUsed074',msgMultiUsed074);
    SetGlobalMessage('msgMultiUsed075',msgMultiUsed075);
    SetGlobalMessage('msgMultiUsed076',msgMultiUsed076);
    SetGlobalMessage('msgMultiUsed077',msgMultiUsed077);
    SetGlobalMessage('msgMultiUsed078',msgMultiUsed078);
    SetGlobalMessage('msgMultiUsed079',msgMultiUsed079);
    SetGlobalMessage('msgMultiUsed080',msgMultiUsed080);
    SetGlobalMessage('msgMultiUsed083',msgMultiUsed083);
    SetGlobalMessage('msgMultiUsed084',msgMultiUsed084);
    SetGlobalMessage('msgMultiUsed085',msgMultiUsed085);
    SetGlobalMessage('msgMultiUsed086',msgMultiUsed086);
    SetGlobalMessage('msgMultiUsed089',msgMultiUsed089);
    SetGlobalMessage('msgMultiUsed090',msgMultiUsed090);
    SetGlobalMessage('msgMultiUsed092',msgMultiUsed092);
    SetGlobalMessage('msgMultiUsed093',msgMultiUsed093);
    SetGlobalMessage('msgMultiUsed094',msgMultiUsed094);
    SetGlobalMessage('msgMultiUsed095',msgMultiUsed095);
    SetGlobalMessage('msgMultiUsed096',msgMultiUsed096);
    SetGlobalMessage('msgMultiUsed097',msgMultiUsed097);
    SetGlobalMessage('msgMultiUsed098',msgMultiUsed098);
    SetGlobalMessage('msgMultiUsed099',msgMultiUsed099);
    SetGlobalMessage('msgMultiUsed100',msgMultiUsed100);
    SetGlobalMessage('msgMultiUsed101',msgMultiUsed101);
    SetGlobalMessage('msgMultiUsed102',msgMultiUsed102);
    SetGlobalMessage('msgMultiUsed103',msgMultiUsed103);
    SetGlobalMessage('msgMultiUsed104',msgMultiUsed104);
    SetGlobalMessage('msgMultiUsed105',msgMultiUsed105);
    SetGlobalMessage('msgMultiUsed106',msgMultiUsed106);
    SetGlobalMessage('msgMultiUsed107',msgMultiUsed107);
    SetGlobalMessage('msgMultiUsed108',msgMultiUsed108);
    SetGlobalMessage('msgMultiUsed109',msgMultiUsed109);
    SetGlobalMessage('msgMultiUsed110',msgMultiUsed110);
    SetGlobalMessage('msgMultiUsed111',msgMultiUsed111);
    SetGlobalMessage('msgMultiUsed112',msgMultiUsed112);
    SetGlobalMessage('msgMultiUsed113',msgMultiUsed113);
    SetGlobalMessage('msgMultiUsed114',msgMultiUsed114);
    SetGlobalMessage('msgMultiUsed115',msgMultiUsed115);
    SetGlobalMessage('msgMultiUsed116',msgMultiUsed116);
    SetGlobalMessage('msgMultiUsed117',msgMultiUsed117);
    SetGlobalMessage('msgMultiUsed118',msgMultiUsed118);
    SetGlobalMessage('msgMultiUsed119',msgMultiUsed119);
    SetGlobalMessage('msgMultiUsed120',msgMultiUsed120);
    SetGlobalMessage('msgMultiUsed121',msgMultiUsed121);
    SetGlobalMessage('msgMultiUsed122',msgMultiUsed122);
    SetGlobalMessage('msgMultiUsed123',msgMultiUsed123);
    SetGlobalMessage('msgMultiUsed124',msgMultiUsed124);
    SetGlobalMessage('msgMultiUsed125',msgMultiUsed125);
    SetGlobalMessage('msgMultiUsed126',msgMultiUsed126);
    SetGlobalMessage('msgMultiUsed127',msgMultiUsed127);
    SetGlobalMessage('msgMultiUsed128',msgMultiUsed128);
    SetGlobalMessage('msgMultiUsed129',msgMultiUsed129);
    SetGlobalMessage('msgMultiUsed130',msgMultiUsed130);
    SetGlobalMessage('msgMultiUsed131',msgMultiUsed131);
    SetGlobalMessage('msgMultiUsed133',msgMultiUsed133);
    SetGlobalMessage('msgMultiUsed134',msgMultiUsed134);
    SetGlobalMessage('msgMultiUsed135',msgMultiUsed135);
    SetGlobalMessage('msgMultiUsed136',msgMultiUsed136);
    SetGlobalMessage('msgMultiUsed137',msgMultiUsed137);
    SetGlobalMessage('msgMultiUsed138',msgMultiUsed138);
    SetGlobalMessage('msgMultiUsed139',msgMultiUsed139);
    SetGlobalMessage('msgMultiUsed140',msgMultiUsed140);
    SetGlobalMessage('msgMultiUsed141',msgMultiUsed141);
    SetGlobalMessage('msgMultiUsed142',msgMultiUsed142);
    SetGlobalMessage('msgMultiUsed143',msgMultiUsed143);
    SetGlobalMessage('msgMultiUsed144',msgMultiUsed144);

    SetGlobalMessage('msgMultiUsed145',msgMultiUsed145);
    SetGlobalMessage('msgMultiUsed146',msgMultiUsed146);
    SetGlobalMessage('msgMultiUsed147',msgMultiUsed147);
    SetGlobalMessage('msgMultiUsed148',msgMultiUsed148);
    SetGlobalMessage('msgMultiUsed149',msgMultiUsed149);
    SetGlobalMessage('msgMultiUsed150',msgMultiUsed150);
    SetGlobalMessage('msgMultiUsed151',msgMultiUsed151);
    SetGlobalMessage('msgMultiUsed152',msgMultiUsed152);
    SetGlobalMessage('msgMultiUsed153',msgMultiUsed153);
    SetGlobalMessage('msgMultiUsed154',msgMultiUsed154);
    SetGlobalMessage('msgMultiUsed155',msgMultiUsed155);
    SetGlobalMessage('msgMultiUsed156',msgMultiUsed156);
    SetGlobalMessage('msgMultiUsed157',msgMultiUsed157);
    SetGlobalMessage('msgMultiUsed158',msgMultiUsed158);
    SetGlobalMessage('msgMultiUsed159',msgMultiUsed159);
    SetGlobalMessage('msgMultiUsed160',msgMultiUsed160);
    SetGlobalMessage('msgMultiUsed161',msgMultiUsed161);
    SetGlobalMessage('msgMultiUsed162',msgMultiUsed162);
    SetGlobalMessage('msgMultiUsed163',msgMultiUsed163);
    SetGlobalMessage('msgMultiUsed164',msgMultiUsed164);
    SetGlobalMessage('msgMultiUsed165',msgMultiUsed165);
    SetGlobalMessage('msgMultiUsed166',msgMultiUsed166);
    SetGlobalMessage('msgMultiUsed167',msgMultiUsed167);
    SetGlobalMessage('msgMultiUsed168', msgMultiUsed168);
    SetGlobalMessage('msgMultiUsed169', msgMultiUsed169);
    SetGlobalMessage('msgMultiUsed170', msgMultiUsed170);
    SetGlobalMessage('msgMultiUsed171', msgMultiUsed171);
    SetGlobalMessage('msgMultiUsed172', msgMultiUsed172);
    SetGlobalMessage('msgMultiUsed173', msgMultiUsed173);
    SetGlobalMessage('msgMultiUsed174', msgMultiUsed174);
    SetGlobalMessage('msgMultiUsed175', msgMultiUsed175);
    SetGlobalMessage('msgMultiUsed176', msgMultiUsed176);
    SetGlobalMessage('msgMultiUsed177', msgMultiUsed177);
    SetGlobalMessage('msgMultiUsed178', msgMultiUsed178);
    SetGlobalMessage('msgMultiUsed179', msgMultiUsed179);
    SetGlobalMessage('msgMultiUsed180', msgMultiUsed180);
    SetGlobalMessage('msgMultiUsed181', msgMultiUsed181);
    SetGlobalMessage('msgMultiUsed182', msgMultiUsed182);
    SetGlobalMessage('msgMultiUsed183', msgMultiUsed183);
    SetGlobalMessage('msgMultiUsed184', msgMultiUsed184);
    SetGlobalMessage('msgMultiUsed185', msgMultiUsed185);
    SetGlobalMessage('msgMultiUsed186', msgMultiUsed186);
    SetGlobalMessage('msgMultiUsed187', msgMultiUsed187);
    SetGlobalMessage('msgMultiUsed188', msgMultiUsed188);
    SetGlobalMessage('msgMultiUsed189', msgMultiUsed189);
    SetGlobalMessage('msgMultiUsed194', msgMultiUsed194);


    SetGlobalMessage('msgActiveItem',msgActiveItem);
    SetGlobalMessage('msgAgain',msgAgain);
    SetGlobalMessage('msgAllList',msgAllList);
    SetGlobalMessage('msgAppointmentPrint',msgAppointmentPrint);
    SetGlobalMessage('msgApprove',msgApprove);
    SetGlobalMessage('msgApproveDiscount',msgApproveDiscount);
    SetGlobalMessage('msgAssociation',msgAssociation);
    SetGlobalMessage('msgCancel',msgCancel);
    SetGlobalMessage('msgCancelApprove',msgCancelApprove);
    SetGlobalMessage('msgCancelDiscount',msgCancelDiscount);
    SetGlobalMessage('msgChange',msgChange);
    SetGlobalMessage('msgContinue',msgContinue);
    SetGlobalMessage('msgCopy',msgCopy);
    SetGlobalMessage('msgDataEntry',msgDataEntry);
    SetGlobalMessage('msgDelete',msgDelete);
    SetGlobalMessage('msgDescription',msgDescription);
    SetGlobalMessage('msgDrugPresApproveErr',msgDrugPresApproveErr);
    SetGlobalMessage('msgDrugPresCncApprErr',msgDrugPresCncApprErr);
    SetGlobalMessage('msgEnter',msgEnter);
    SetGlobalMessage('msgError',msgError);
    SetGlobalMessage('msgIsContinue',msgIsContinue);
    SetGlobalMessage('msgMove',msgMove);
    SetGlobalMessage('msgNoteEnter',msgNoteEnter);
    SetGlobalMessage('msgOK',msgOK);
    SetGlobalMessage('msgOther',msgOther);
    SetGlobalMessage('msgPaste',msgPaste);
    SetGlobalMessage('msgPatient',msgPatient);
    SetGlobalMessage('msgPolyClinic',msgPolyClinic);
    SetGlobalMessage('msgProcessIsOK',msgProcessIsOK);
    SetGlobalMessage('msgReWant',msgReWant);
    SetGlobalMessage('msgSaveFile',msgSaveFile);
    SetGlobalMessage('msgSelectConn',msgSelectConn);
    SetGlobalMessage('msgShowTxn',msgShowTxn);
    SetGlobalMessage('msgStockAmnt',msgStockAmnt);
    SetGlobalMessage('msgStockReqAlertDrOrder',msgStockReqAlertDrOrder);
    SetGlobalMessage('msgStockReqAlertExpCentr',msgStockReqAlertExpCentr);
    SetGlobalMessage('msgStockReqAlertSendBack',msgStockReqAlertSendBack);
    SetGlobalMessage('msgStockReqAlertStcIsUse',msgStockReqAlertStcIsUse);
    SetGlobalMessage('msgStockReqAlertStockUse',msgStockReqAlertStockUse);
    SetGlobalMessage('msgStockReqAlertUsageQnt',msgStockReqAlertUsageQnt);
    SetGlobalMessage('msgStockReqForPatient',msgStockReqForPatient);
    SetGlobalMessage('msgStockReqForWarehouse',msgStockReqForWarehouse);
    SetGlobalMessage('msgStockReqIdSource',msgStockReqIdSource);
    SetGlobalMessage('msgStockReqIsPrepared',msgStockReqIsPrepared);
    SetGlobalMessage('msgStockReqTemplateErr1',msgStockReqTemplateErr1);
    SetGlobalMessage('msgStockReqTemplateErr2',msgStockReqTemplateErr2);
    SetGlobalMessage('msgStockRequest',msgStockRequest);
    SetGlobalMessage('msgPurchaseRequest',msgPurchaseRequest);
    SetGlobalMessage('msgTxnEnd',msgTxnEnd);
    SetGlobalMessage('msgTxnOK',msgTxnOK);
    SetGlobalMessage('msgUpdate',msgUpdate);
    SetGlobalMessage('msgWaiting',msgWaiting);
    SetGlobalMessage('msgWantToContinue',msgWantToContinue);
    SetGlobalMessage('msgYes',msgYes);
    SetGlobalMessage('msgNo',msgNo);
    SetGlobalMessage('msgWarningMessage',msgWarningMessage);
    SetGlobalMessage('msgInfoMessage',msgInfoMessage);
    SetGlobalMessage('msgCanceledProces', msgCanceledProces);
    SetGlobalMessage('msgAdd',msgAdd);
    SetGlobalMessage('msgDoctorName',msgDoctorName);
    SetGlobalMessage('msgDeptName',msgDeptName);
    SetGlobalMessage('msgInstrumentName',msgInstrumentName);
    SetGlobalMessage('msgMakePlan',msgMakePlan);
    SetGlobalMessage('msgCorrect',msgCorrect);
    SetGlobalMessage('msgCancelContinue',msgCancelContinue);
    SetGlobalMessage('msgHide',msgHide);
    SetGlobalMessage('msgSend',msgSend);
    SetGlobalMessage('msgUnknown',msgUnknown);
    SetGlobalMessage('msgSnetCancel',msgSnetCancel);

    //---------------------
    //else if pFormClassName = 'TDmGeneral' then
    SetGlobalMessage('msgDtMdGeneral001',msgDtMdGeneral001);
    SetGlobalMessage('msgDtMdGeneral002',msgDtMdGeneral002);
    SetGlobalMessage('msgDtMdGeneral003',msgDtMdGeneral003);
    SetGlobalMessage('msgDtMdGeneral004',msgDtMdGeneral004);
    SetGlobalMessage('msgDtMdGeneral005',msgDtMdGeneral005);
    SetGlobalMessage('msgDtMdGeneral006',msgDtMdGeneral006);
    SetGlobalMessage('msgDtMdGeneral007',msgDtMdGeneral007);
    SetGlobalMessage('msgDtMdGeneral008',msgDtMdGeneral008);
    SetGlobalMessage('msgDtMdGeneral009',msgDtMdGeneral009);
    SetGlobalMessage('msgDtMdGeneral010',msgDtMdGeneral010);
    SetGlobalMessage('msgDtMdGeneral011',msgDtMdGeneral011);
    SetGlobalMessage('msgDtMdGeneral012',msgDtMdGeneral012);
    SetGlobalMessage('msgDtMdGeneral013',msgDtMdGeneral013);
    SetGlobalMessage('msgDtMdGeneral014',msgDtMdGeneral014);
    SetGlobalMessage('msgDtMdGeneral015',msgDtMdGeneral015);
    SetGlobalMessage('msgDtMdGeneral016',msgDtMdGeneral016);
    SetGlobalMessage('msgDtMdGeneral017',msgDtMdGeneral017);
    SetGlobalMessage('msgDtMdGeneral018',msgDtMdGeneral018);
    SetGlobalMessage('msgDtMdGeneral019',msgDtMdGeneral019);
    SetGlobalMessage('msgDtMdGeneral020',msgDtMdGeneral020);
    SetGlobalMessage('msgDtMdGeneral021',msgDtMdGeneral021);
    SetGlobalMessage('msgDtMdGeneral022',msgDtMdGeneral022);
    SetGlobalMessage('msgDtMdGeneral023',msgDtMdGeneral023);
    SetGlobalMessage('msgDtMdGeneral024',msgDtMdGeneral024);
    SetGlobalMessage('msgDtMdGeneral025',msgDtMdGeneral025);
    SetGlobalMessage('msgDtMdGeneral026',msgDtMdGeneral026);
    SetGlobalMessage('msgDtMdGeneral027',msgDtMdGeneral027);
    SetGlobalMessage('msgDtMdGeneral028',msgDtMdGeneral028);
    SetGlobalMessage('msgDtMdGeneral029',msgDtMdGeneral029);
    SetGlobalMessage('msgDtMdGeneral030',msgDtMdGeneral030);
    SetGlobalMessage('msgDtMdGeneral031',msgDtMdGeneral031);
    SetGlobalMessage('msgDtMdGeneral032',msgDtMdGeneral032);
    SetGlobalMessage('msgDtMdGeneral033',msgDtMdGeneral033);
    SetGlobalMessage('msgDtMdGeneral034',msgDtMdGeneral034);
    SetGlobalMessage('msgDtMdGeneral035',msgDtMdGeneral035);
    SetGlobalMessage('msgDtMdGeneral036',msgDtMdGeneral036);
    SetGlobalMessage('msgDtMdGeneral037',msgDtMdGeneral037);
    SetGlobalMessage('msgDtMdGeneral038',msgDtMdGeneral038);
    SetGlobalMessage('msgDtMdGeneral039',msgDtMdGeneral039);
    SetGlobalMessage('msgDtMdGeneral040',msgDtMdGeneral040);
    SetGlobalMessage('msgDtMdGeneral041',msgDtMdGeneral041);
    SetGlobalMessage('msgDtMdGeneral042',msgDtMdGeneral042);
    SetGlobalMessage('msgDtMdGeneral043',msgDtMdGeneral043);
    SetGlobalMessage('msgDtMdGeneral044',msgDtMdGeneral044);
    SetGlobalMessage('msgDtMdGeneral045',msgDtMdGeneral045);
    SetGlobalMessage('msgDtMdGeneral046',msgDtMdGeneral046);
    SetGlobalMessage('msgDtMdGeneral047',msgDtMdGeneral047);
    SetGlobalMessage('msgDtMdGeneral048',msgDtMdGeneral048);
    SetGlobalMessage('msgDtMdGeneral049',msgDtMdGeneral049);
    SetGlobalMessage('msgDtMdGeneral050',msgDtMdGeneral050);
    SetGlobalMessage('msgDtMdGeneral051',msgDtMdGeneral051);
    SetGlobalMessage('msgDtMdGeneral052',msgDtMdGeneral052);
    SetGlobalMessage('msgDtMdGeneral053',msgDtMdGeneral053);
    SetGlobalMessage('msgDtMdGeneral054',msgDtMdGeneral054);
    SetGlobalMessage('msgDtMdGeneral055',msgDtMdGeneral055);
    SetGlobalMessage('msgDtMdGeneral056',msgDtMdGeneral056);
    SetGlobalMessage('msgDtMdGeneral057',msgDtMdGeneral057);
    SetGlobalMessage('msgDtMdGeneral058',msgDtMdGeneral058);
    SetGlobalMessage('msgDtMdGeneral060',msgDtMdGeneral060);
    SetGlobalMessage('msgDtMdGeneral061',msgDtMdGeneral061);
    SetGlobalMessage('msgDtMdGeneral062',msgDtMdGeneral062);
    SetGlobalMessage('msgDtMdGeneral063',msgDtMdGeneral063);
    SetGlobalMessage('msgDtMdGeneral066',msgDtMdGeneral066);
    SetGlobalMessage('msgDtMdGeneral067',msgDtMdGeneral067);
    SetGlobalMessage('msgDtMdGeneral073',msgDtMdGeneral073);
    SetGlobalMessage('msgDtMdGeneral075',msgDtMdGeneral075);
    SetGlobalMessage('msgDtMdGeneral076',msgDtMdGeneral076);
    SetGlobalMessage('msgDtMdGeneral077',msgDtMdGeneral077);
    SetGlobalMessage('msgDtMdGeneral078',msgDtMdGeneral078);
    SetGlobalMessage('msgDtMdGeneral079',msgDtMdGeneral079);
    SetGlobalMessage('msgDtMdGeneral080',msgDtMdGeneral080);
    SetGlobalMessage('msgDtMdGeneral081',msgDtMdGeneral081);
    SetGlobalMessage('msgDtMdGeneral082',msgDtMdGeneral082);
    SetGlobalMessage('msgDtMdGeneral083',msgDtMdGeneral083);
    SetGlobalMessage('msgDtMdGeneral084',msgDtMdGeneral084);
    SetGlobalMessage('msgDtMdGeneral085',msgDtMdGeneral085);
    SetGlobalMessage('msgDtMdGeneral086',msgDtMdGeneral086);
    SetGlobalMessage('msgDtMdGeneral087',msgDtMdGeneral087);
    SetGlobalMessage('msgDtMdGeneral088',msgDtMdGeneral088);
    SetGlobalMessage('msgDtMdGeneral089',msgDtMdGeneral089);
    SetGlobalMessage('msgDtMdGeneral090',msgDtMdGeneral090);
    SetGlobalMessage('msgDtMdGeneral091',msgDtMdGeneral091);
    SetGlobalMessage('msgDtMdGeneral092',msgDtMdGeneral092);
    SetGlobalMessage('msgDtMdGeneral093',msgDtMdGeneral093);
    SetGlobalMessage('msgDtMdGeneral094',msgDtMdGeneral094);
    SetGlobalMessage('msgDtMdGeneral095',msgDtMdGeneral095);
    SetGlobalMessage('msgDtMdGeneral096',msgDtMdGeneral096);
    SetGlobalMessage('msgDtMdGeneral097',msgDtMdGeneral097);
    SetGlobalMessage('msgDtMdGeneral098',msgDtMdGeneral098);
    SetGlobalMessage('msgDtMdGeneral099',msgDtMdGeneral099);
    SetGlobalMessage('msgDtMdGeneral100',msgDtMdGeneral100);
    SetGlobalMessage('msgDtMdGeneral101',msgDtMdGeneral101);
    SetGlobalMessage('msgDtMdGeneral102',msgDtMdGeneral102);
    SetGlobalMessage('msgDtMdGeneral103',msgDtMdGeneral103);
    SetGlobalMessage('msgDtMdGeneral104',msgDtMdGeneral104);
    SetGlobalMessage('msgDtMdGeneral106',msgDtMdGeneral106);
    SetGlobalMessage('msgDtMdGeneral107',msgDtMdGeneral107);
    SetGlobalMessage('msgDtMdGeneral108',msgDtMdGeneral108);
    SetGlobalMessage('msgDtMdGeneral109',msgDtMdGeneral109);
    SetGlobalMessage('msgDtMdGeneral110',msgDtMdGeneral110);
    SetGlobalMessage('msgDtMdGeneral111',msgDtMdGeneral111);
    SetGlobalMessage('msgDtMdGeneral112',msgDtMdGeneral112);
    SetGlobalMessage('msgDtMdGeneral113',msgDtMdGeneral113);
    SetGlobalMessage('msgDtMdGeneral114',msgDtMdGeneral114);
    SetGlobalMessage('msgDtMdGeneral115',msgDtMdGeneral115);
    SetGlobalMessage('msgDtMdGeneral116',msgDtMdGeneral116);
    SetGlobalMessage('msgDtMdGeneral117',msgDtMdGeneral117);
    SetGlobalMessage('msgDtMdGeneral118',msgDtMdGeneral118);
    SetGlobalMessage('msgDtMdGeneral119',msgDtMdGeneral119);
    SetGlobalMessage('msgDtMdGeneral120',msgDtMdGeneral120);
    SetGlobalMessage('msgDtMdGeneral121',msgDtMdGeneral121);
    SetGlobalMessage('msgDtMdGeneral122',msgDtMdGeneral122);
    SetGlobalMessage('msgDtMdGeneral123',msgDtMdGeneral123);
    SetGlobalMessage('msgDtMdGeneral124',msgDtMdGeneral124);
    SetGlobalMessage('msgDtMdGeneral125',msgDtMdGeneral125);
    SetGlobalMessage('msgDtMdGeneral126',msgDtMdGeneral126);
    SetGlobalMessage('msgDtMdGeneral127',msgDtMdGeneral127);
    SetGlobalMessage('msgDtMdGeneral128',msgDtMdGeneral128);
    SetGlobalMessage('msgDtMdGeneral129',msgDtMdGeneral129);
    SetGlobalMessage('msgDtMdGeneral130',msgDtMdGeneral130);
    SetGlobalMessage('msgDtMdGeneral131',msgDtMdGeneral131);
    SetGlobalMessage('msgDtMdGeneral132',msgDtMdGeneral132);
    SetGlobalMessage('msgDtMdGeneral134',msgDtMdGeneral134);
    SetGlobalMessage('msgDtMdGeneral135',msgDtMdGeneral135);
    SetGlobalMessage('msgDtMdGeneral136',msgDtMdGeneral136);
    SetGlobalMessage('msgDtMdGeneral137',msgDtMdGeneral137);
    SetGlobalMessage('msgDtMdGeneral138',msgDtMdGeneral138);
    SetGlobalMessage('msgDtMdGeneral139',msgDtMdGeneral139);
    SetGlobalMessage('msgDtMdGeneral140',msgDtMdGeneral140);
    SetGlobalMessage('msgDtMdGeneral141',msgDtMdGeneral141);
    SetGlobalMessage('msgDtMdGeneral142',msgDtMdGeneral142);
    SetGlobalMessage('msgDtMdGeneral143',msgDtMdGeneral143);
    SetGlobalMessage('msgDtMdGeneral144',msgDtMdGeneral144);
    SetGlobalMessage('msgDtMdGeneral145',msgDtMdGeneral145);
    SetGlobalMessage('msgDtMdGeneral146',msgDtMdGeneral146);
    SetGlobalMessage('msgDtMdGeneral147',msgDtMdGeneral147);
    SetGlobalMessage('msgDtMdGeneral148',msgDtMdGeneral148);
    SetGlobalMessage('msgDtMdGeneral149',msgDtMdGeneral149);
    SetGlobalMessage('msgDtMdGeneral150',msgDtMdGeneral150);
    SetGlobalMessage('msgDtMdGeneral151',msgDtMdGeneral151);
    SetGlobalMessage('msgDtMdGeneral152',msgDtMdGeneral152);
    SetGlobalMessage('msgDtMdGeneral153',msgDtMdGeneral153);
    SetGlobalMessage('msgDtMdGeneral154',msgDtMdGeneral154);
    SetGlobalMessage('msgDtMdGeneral155',msgDtMdGeneral155);
    SetGlobalMessage('msgDtMdGeneral156',msgDtMdGeneral156);
    SetGlobalMessage('msgDtMdGeneral157',msgDtMdGeneral157);
    SetGlobalMessage('msgDtMdGeneral158',msgDtMdGeneral158);
    SetGlobalMessage('msgDtMdGeneral159',msgDtMdGeneral159);
    SetGlobalMessage('msgDtMdGeneral160',msgDtMdGeneral160);
    SetGlobalMessage('msgDtMdGeneral161',msgDtMdGeneral161);
    SetGlobalMessage('msgDtMdGeneral162',msgDtMdGeneral162);
    SetGlobalMessage('msgDtMdGeneral163',msgDtMdGeneral163);
    SetGlobalMessage('msgDtMdGeneral164',msgDtMdGeneral164);
    SetGlobalMessage('msgDtMdGeneral165',msgDtMdGeneral165);
    SetGlobalMessage('msgDtMdGeneral166',msgDtMdGeneral166);
    SetGlobalMessage('msgDtMdGeneral167',msgDtMdGeneral167);
    SetGlobalMessage('msgDtMdGeneral168',msgDtMdGeneral168);
    SetGlobalMessage('msgDtMdGeneral169',msgDtMdGeneral169);
    SetGlobalMessage('msgDtMdGeneral170',msgDtMdGeneral170);
    SetGlobalMessage('msgDtMdGeneral171',msgDtMdGeneral171);
    SetGlobalMessage('msgDtMdGeneral172',msgDtMdGeneral172);
    SetGlobalMessage('msgDtMdGeneral173',msgDtMdGeneral173);
    SetGlobalMessage('msgDtMdGeneral174',msgDtMdGeneral174);
    SetGlobalMessage('msgDtMdGeneral175',msgDtMdGeneral175);
    SetGlobalMessage('msgDtMdGeneral176',msgDtMdGeneral176);
    SetGlobalMessage('msgDtMdGeneral177',msgDtMdGeneral177);
    SetGlobalMessage('msgDtMdGeneral178',msgDtMdGeneral178);
    SetGlobalMessage('msgDtMdGeneral179',msgDtMdGeneral179);
    SetGlobalMessage('msgDtMdGeneral180',msgDtMdGeneral180);
    SetGlobalMessage('msgDtMdGeneral181',msgDtMdGeneral181);
    SetGlobalMessage('msgDtMdGeneral182',msgDtMdGeneral182);
    SetGlobalMessage('msgDtMdGeneral183',msgDtMdGeneral183);
    SetGlobalMessage('msgDtMdGeneral184',msgDtMdGeneral184);
    SetGlobalMessage('msgDtMdGeneral185',msgDtMdGeneral185);
    SetGlobalMessage('msgDtMdGeneral186',msgDtMdGeneral186);
    SetGlobalMessage('msgDtMdGeneral187',msgDtMdGeneral187);
    SetGlobalMessage('msgDtMdGeneral188',msgDtMdGeneral188);
    SetGlobalMessage('msgDtMdGeneral189',msgDtMdGeneral189);
    SetGlobalMessage('msgDtMdGeneral190',msgDtMdGeneral190);
    SetGlobalMessage('msgDtMdGeneral191',msgDtMdGeneral191);
    SetGlobalMessage('msgDtMdGeneral192',msgDtMdGeneral192);
    SetGlobalMessage('msgDtMdGeneral193',msgDtMdGeneral193);
    SetGlobalMessage('msgDtMdGeneral194',msgDtMdGeneral194);
    //---------------------

    //else if pFormClassName = 'TdmProcess' then
    SetGlobalMessage('msgDtMdProcess001',msgDtMdProcess001);
    SetGlobalMessage('msgDtMdProcess002',msgDtMdProcess002);
    SetGlobalMessage('msgDtMdProcess003',msgDtMdProcess003);
    SetGlobalMessage('msgDtMdProcess004',msgDtMdProcess004);
    SetGlobalMessage('msgDtMdProcess005',msgDtMdProcess005);
    SetGlobalMessage('msgDtMdProcess006',msgDtMdProcess006);
    SetGlobalMessage('msgDtMdProcess007',msgDtMdProcess007);
    SetGlobalMessage('msgDtMdProcess008',msgDtMdProcess008);
    SetGlobalMessage('msgDtMdProcess009',msgDtMdProcess009);
    SetGlobalMessage('msgDtMdProcess010',msgDtMdProcess010);
    SetGlobalMessage('msgDtMdProcess011',msgDtMdProcess011);
    SetGlobalMessage('msgDtMdProcess012',msgDtMdProcess012);
    SetGlobalMessage('msgDtMdProcess013',msgDtMdProcess013);
    SetGlobalMessage('msgDtMdProcess014',msgDtMdProcess014);
    SetGlobalMessage('msgDtMdProcess015',msgDtMdProcess015);
    SetGlobalMessage('msgDtMdProcess016',msgDtMdProcess016);
    SetGlobalMessage('msgDtMdProcess017',msgDtMdProcess017);
    SetGlobalMessage('msgDtMdProcess018',msgDtMdProcess018);
    SetGlobalMessage('msgDtMdProcess019',msgDtMdProcess019);
    SetGlobalMessage('msgDtMdProcess020',msgDtMdProcess020);
    SetGlobalMessage('msgDtMdProcess021',msgDtMdProcess021);
    SetGlobalMessage('msgDtMdProcess022',msgDtMdProcess022);
    SetGlobalMessage('msgDtMdProcess024',msgDtMdProcess024);
    SetGlobalMessage('msgDtMdProcess025',msgDtMdProcess025);
    SetGlobalMessage('msgDtMdProcess026',msgDtMdProcess026);
    SetGlobalMessage('msgDtMdProcess027',msgDtMdProcess027);
    SetGlobalMessage('msgDtMdProcess028',msgDtMdProcess028);
    SetGlobalMessage('msgDtMdProcess029',msgDtMdProcess029);
    SetGlobalMessage('msgDtMdProcess030',msgDtMdProcess030);
    SetGlobalMessage('msgDtMdProcess031',msgDtMdProcess031);
    SetGlobalMessage('msgDtMdProcess032',msgDtMdProcess032);
    SetGlobalMessage('msgDtMdProcess033',msgDtMdProcess033);
    SetGlobalMessage('msgDtMdProcess034',msgDtMdProcess034);
    SetGlobalMessage('msgDtMdProcess035',msgDtMdProcess035);
    SetGlobalMessage('msgDtMdProcess036',msgDtMdProcess036);
    SetGlobalMessage('msgDtMdProcess037',msgDtMdProcess037);
    SetGlobalMessage('msgDtMdProcess038',msgDtMdProcess038);
    SetGlobalMessage('msgDtMdProcess039',msgDtMdProcess039);
    SetGlobalMessage('msgDtMdProcess040',msgDtMdProcess040);
    SetGlobalMessage('msgDtMdProcess041',msgDtMdProcess041);
    SetGlobalMessage('msgDtMdProcess042',msgDtMdProcess042);
    SetGlobalMessage('msgDtMdProcess043',msgDtMdProcess043);
    SetGlobalMessage('msgDtMdProcess044',msgDtMdProcess044);
    SetGlobalMessage('msgDtMdProcess045',msgDtMdProcess045);
    SetGlobalMessage('msgDtMdProcess046',msgDtMdProcess046);
    SetGlobalMessage('msgDtMdProcess047',msgDtMdProcess047);
    SetGlobalMessage('msgDtMdProcess048',msgDtMdProcess048);
    SetGlobalMessage('msgDtMdProcess050',msgDtMdProcess050);
    SetGlobalMessage('msgDtMdProcess051',msgDtMdProcess051);
    SetGlobalMessage('msgDtMdProcess052',msgDtMdProcess052);
    SetGlobalMessage('msgDtMdProcess053',msgDtMdProcess053);
    SetGlobalMessage('msgDtMdProcess054',msgDtMdProcess054);
    SetGlobalMessage('msgDtMdProcess055',msgDtMdProcess055);
    SetGlobalMessage('msgDtMdProcess056',msgDtMdProcses056);
    SetGlobalMessage('msgDtMdProcess057',msgDtMdProcess057);
    SetGlobalMessage('msgDtMdProcess058',msgDtMdProcess058);
    SetGlobalMessage('msgDtMdProcess059',msgDtMdProcess059);
    SetGlobalMessage('msgDtMdProcess060',msgDtMdProcess060);
    SetGlobalMessage('msgDtMdProcess061',msgDtMdProcess061);
    SetGlobalMessage('msgDtMdProcess062',msgDtMdProcess062);
    SetGlobalMessage('msgDtMdProcess063',msgDtMdProcess063);
    SetGlobalMessage('msgDtMdProcess064',msgDtMdProcess064);
    SetGlobalMessage('msgDtMdProcess065',msgDtMdProcess065);
    SetGlobalMessage('msgDtMdProcess066',msgDtMdProcess066);
    SetGlobalMessage('msgDtMdProcess067',msgDtMdProcess067);
    SetGlobalMessage('msgDtMdProcess068',msgDtMdProcess068);
    SetGlobalMessage('msgDtMdProcess069',msgDtMdProcess069);

    SetGlobalMessage('msgDtMdProcess070',msgDtMdProcess070);
    SetGlobalMessage('msgDtMdProcess071',msgDtMdProcess071);
    SetGlobalMessage('msgDtMdProcess072',msgDtMdProcess072);
    SetGlobalMessage('msgDtMdProcess073',msgDtMdProcess073);
    SetGlobalMessage('msgDtMdProcess074',msgDtMdProcess074);
    SetGlobalMessage('msgDtMdProcess075',msgDtMdProcess075);
    SetGlobalMessage('msgDtMdProcess076',msgDtMdProcess076);
    SetGlobalMessage('msgDtMdProcess077',msgDtMdProcess077);
    SetGlobalMessage('msgDtMdProcess078',msgDtMdProcess078);
    SetGlobalMessage('msgDtMdProcess079',msgDtMdProcess079);
    SetGlobalMessage('msgDtMdProcess080',msgDtMdProcess080);
    SetGlobalMessage('msgDtMdProcess081',msgDtMdProcess081);
    //---------------------
    //else if pFormClassName = 'TCommonConf' then
    SetGlobalMessage('msgCommonConf001',msgCommonConf001);
    SetGlobalMessage('msgCommonConf003',msgCommonConf003);
    SetGlobalMessage('msgCommonConf004',msgCommonConf004);
    SetGlobalMessage('msgCommonConf005',msgCommonConf005);
    SetGlobalMessage('msgCommonConf006',msgCommonConf006);
    SetGlobalMessage('msgCommonConf007',msgCommonConf007);
    SetGlobalMessage('msgCommonConf008',msgCommonConf008);
    SetGlobalMessage('msgCommonConf009',msgCommonConf009);
    //SetGlobalMessage('msgCommonConf010',msgCommonConf010);
    SetGlobalMessage('msgCommonConf011',msgCommonConf011);
    SetGlobalMessage('msgCommonConf012',msgCommonConf012);
    SetGlobalMessage('msgCommonConf013',msgCommonConf013);
    SetGlobalMessage('msgCommonConf014',msgCommonConf014);
    SetGlobalMessage('msgCommonConf015',msgCommonConf015);
    SetGlobalMessage('msgCommonConf016',msgCommonConf015);
    // SetGlobalMessage('msgCommonConf017',msgCommonConf017);
    SetGlobalMessage('msgCommonConf018',msgCommonConf018);

    //---------------------

    //else if pFormClassName = 'TdmAppoinment' then     
    SetGlobalMessage('msgDtMdAppoinment001',msgDtMdAppoinment001);
    SetGlobalMessage('msgDtMdAppoinment002',msgDtMdAppoinment002);

    //---------------------
    //else if pFormClassName = 'TdmMain' then
    SetGlobalMessage('msgDtMdMain001',msgDtMdMain001);
    SetGlobalMessage('msgDtMdMain002',msgDtMdMain002);
    SetGlobalMessage('msgDtMdMain003',msgDtMdMain003);
    SetGlobalMessage('msgDtMdMain004',msgDtMdMain004);
    SetGlobalMessage('msgDtMdMain005',msgDtMdMain005);
    SetGlobalMessage('msgDtMdMain006',msgDtMdMain006);


  end
  else if pFormClassName = 'TfrmUserMessage' then
  begin
    SetGlobalMessage('msgUserMessage001',msgUserMessage001);
    SetGlobalMessage('msgUserMessage002',msgUserMessage002);
    SetGlobalMessage('msgUserMessage005',msgUserMessage005);
  end
  else if pFormClassName = 'TfrmAccountProcess' then
  begin
    SetGlobalMessage('msgAccountProcess001',msgAccountProcess001);
    SetGlobalMessage('msgAccountProcess002',msgAccountProcess002);
    SetGlobalMessage('msgAccountProcess003',msgAccountProcess003);
    SetGlobalMessage('msgAccountProcess004',msgAccountProcess004);
    SetGlobalMessage('msgAccountProcess005',msgAccountProcess005);
    SetGlobalMessage('msgAccountProcess006',msgAccountProcess006);
    SetGlobalMessage('msgAccountProcess007',msgAccountProcess007);
    SetGlobalMessage('msgAccountProcess008',msgAccountProcess008);
    SetGlobalMessage('msgAccountProcess009',msgAccountProcess009);
 //   SetGlobalMessage('msgAccountProcess010',msgAccountProcess010);
  end
  else if pFormClassName = 'TfrmAdminQuery' then
  begin
    SetGlobalMessage('msgAdminQuery001',msgAdminQuery001);
  end
  else if pFormClassName = 'TfrmAdminQuery' then
  begin
    SetGlobalMessage('msgCentralManage001',msgCentralManage001);
  end
  else if pFormClassName = 'TfrmAppointmentProcess' then
  begin
    SetGlobalMessage('msgAppointmentProcess001',msgAppointmentProcess001);
    SetGlobalMessage('msgAppointmentProcess002',msgAppointmentProcess002);
    SetGlobalMessage('msgAppointmentProcess003',msgAppointmentProcess003);
    SetGlobalMessage('msgAppointmentProcess004',msgAppointmentProcess004);
    SetGlobalMessage('msgAppointmentProcess006',msgAppointmentProcess006);
    SetGlobalMessage('msgAppointmentProcess007',msgAppointmentProcess007);
    SetGlobalMessage('msgAppointmentProcess008',msgAppointmentProcess008);
    SetGlobalMessage('msgAppointmentProcess009',msgAppointmentProcess009);
    SetGlobalMessage('msgAppointmentProcess010',msgAppointmentProcess010);
    SetGlobalMessage('msgAppointmentProcess011',msgAppointmentProcess011);
    SetGlobalMessage('msgAppointmentProcess012',msgAppointmentProcess012);
    SetGlobalMessage('msgAppointmentProcess013',msgAppointmentProcess013);
    SetGlobalMessage('msgAppointmentProcess014',msgAppointmentProcess014);
    SetGlobalMessage('msgAppointmentProcess015',msgAppointmentProcess015);
    SetGlobalMessage('msgAppointmentProcess016',msgAppointmentProcess016);
    SetGlobalMessage('msgAppointmentProcess017',msgAppointmentProcess017);
    SetGlobalMessage('msgAppointmentProcess019',msgAppointmentProcess019);
    SetGlobalMessage('msgAppointmentProcess020',msgAppointmentProcess020);
    SetGlobalMessage('msgAppointmentProcess021',msgAppointmentProcess021);
    SetGlobalMessage('msgAppointmentProcess022',msgAppointmentProcess022);
    SetGlobalMessage('msgAppointmentProcess023',msgAppointmentProcess023);
    SetGlobalMessage('msgAppointmentProcess024',msgAppointmentProcess024);
    SetGlobalMessage('msgAppointmentProcess025',msgAppointmentProcess025);
    SetGlobalMessage('msgAppointmentProcess026',msgAppointmentProcess026);
    SetGlobalMessage('msgAppointmentProcess027',msgAppointmentProcess027);
    SetGlobalMessage('msgAppointmentProcess028',msgAppointmentProcess028);
    SetGlobalMessage('msgAppointmentProcess029',msgAppointmentProcess029);
    SetGlobalMessage('msgAppointmentProcess030',msgAppointmentProcess030);
    SetGlobalMessage('msgAppointmentProcess031',msgAppointmentProcess031);
    SetGlobalMessage('msgAppointmentProcess032',msgAppointmentProcess032);
    SetGlobalMessage('msgAppointmentProcess034',msgAppointmentProcess034);
    SetGlobalMessage('msgAppointmentProcess035',msgAppointmentProcess035);
    SetGlobalMessage('msgAppointmentProcess036',msgAppointmentProcess036);
    SetGlobalMessage('msgAppointmentProcess037',msgAppointmentProcess037);
    SetGlobalMessage('msgAppointmentProcess038',msgAppointmentProcess038);
    SetGlobalMessage('msgAppointmentProcess039',msgAppointmentProcess039);
    SetGlobalMessage('msgAppointmentProcess040',msgAppointmentProcess040);
    SetGlobalMessage('msgAppointmentProcess041',msgAppointmentProcess041);
    SetGlobalMessage('msgAppointmentProcess042',msgAppointmentProcess042);
    SetGlobalMessage('msgAppointmentProcess043',msgAppointmentProcess043);
    SetGlobalMessage('msgAppointmentProcess044',msgAppointmentProcess044);
    SetGlobalMessage('msgAppointmentProcess045',msgAppointmentProcess045);
    SetGlobalMessage('msgAppointmentProcess046',msgAppointmentProcess046);
    SetGlobalMessage('msgAppointmentProcess047',msgAppointmentProcess047);
    SetGlobalMessage('msgAppointmentProcess048',msgAppointmentProcess048);
    SetGlobalMessage('msgAppointmentProcess049',msgAppointmentProcess049);
    SetGlobalMessage('msgAppointmentProcess050',msgAppointmentProcess050);
    SetGlobalMessage('msgAppointmentProcess051',msgAppointmentProcess051);
    SetGlobalMessage('msgAppointmentProcess052',msgAppointmentProcess052);
    SetGlobalMessage('msgAppointmentProcess053',msgAppointmentProcess053);
    SetGlobalMessage('msgAppointmentProcess054',msgAppointmentProcess054);
    SetGlobalMessage('msgAppointmentProcess055',msgAppointmentProcess055);
    SetGlobalMessage('msgAppointmentProcess056',msgAppointmentProcess056);
    SetGlobalMessage('msgAppointmentProcess057',msgAppointmentProcess057);
    SetGlobalMessage('msgAppointmentProcess058',msgAppointmentProcess058);
    SetGlobalMessage('msgAppointmentProcess059',msgAppointmentProcess059);
    SetGlobalMessage('msgAppointmentProcess060',msgAppointmentProcess060);
    SetGlobalMessage('msgAppointmentProcess061',msgAppointmentProcess061);
    SetGlobalMessage('msgAppointmentProcess062',msgAppointmentProcess062);
    SetGlobalMessage('msgAppointmentProcess063',msgAppointmentProcess063);

  end
  else if pFormClassName = 'TfrmAppProcessDetail' then
  begin
    SetGlobalMessage('msgAppProcessDetail001',msgAppProcessDetail001);
    SetGlobalMessage('msgAppProcessDetail002',msgAppProcessDetail002);
    SetGlobalMessage('msgAppProcessDetail003',msgAppProcessDetail003);
    SetGlobalMessage('msgAppProcessDetail004',msgAppProcessDetail004);
    SetGlobalMessage('msgAppProcessDetail005',msgAppProcessDetail005);
    SetGlobalMessage('msgAppProcessDetail006',msgAppProcessDetail006);
    SetGlobalMessage('msgAppProcessDetail007',msgAppProcessDetail007);
    SetGlobalMessage('msgAppProcessDetail008',msgAppProcessDetail008);
    SetGlobalMessage('msgAppProcessDetail009',msgAppProcessDetail009);
    SetGlobalMessage('msgAppProcessDetail010',msgAppProcessDetail010);
    SetGlobalMessage('msgAppProcessDetail011',msgAppProcessDetail011);
    SetGlobalMessage('msgAppProcessDetail012',msgAppProcessDetail012);
    SetGlobalMessage('msgAppProcessDetail013',msgAppProcessDetail013);
    SetGlobalMessage('msgAppProcessDetail014',msgAppProcessDetail014);
    SetGlobalMessage('msgAppProcessDetail015',msgAppProcessDetail015);
    SetGlobalMessage('msgAppProcessDetail016',msgAppProcessDetail016);
    SetGlobalMessage('msgAppProcessDetail017',msgAppProcessDetail017);

  end
  else if pFormClassName = 'TfrmAppSettings' then
  begin
    SetGlobalMessage('msgAppSettings001',msgAppSettings001);
    SetGlobalMessage('msgAppSettings002',msgAppSettings002);
    SetGlobalMessage('msgAppSettings003',msgAppSettings003);
    SetGlobalMessage('msgAppSettings004',msgAppSettings004);
    SetGlobalMessage('msgAppSettings005',msgAppSettings005);
    SetGlobalMessage('msgAppSettings006',msgAppSettings006);
    SetGlobalMessage('msgAppSettings007',msgAppSettings007);
    SetGlobalMessage('msgAppSettings008',msgAppSettings008);
    SetGlobalMessage('msgAppSettings009',msgAppSettings009);
    SetGlobalMessage('msgAppSettings010',msgAppSettings010);
    SetGlobalMessage('msgAppSettings011',msgAppSettings011);
    SetGlobalMessage('msgAppSettings012',msgAppSettings012);
    SetGlobalMessage('msgAppSettings013',msgAppSettings013);
    SetGlobalMessage('msgAppSettings014',msgAppSettings014);
    SetGlobalMessage('msgAppSettings015',msgAppSettings015);
    SetGlobalMessage('msgAppSettings016',msgAppSettings016);
    SetGlobalMessage('msgAppSettings017',msgAppSettings017);
    SetGlobalMessage('msgAppSettings018',msgAppSettings018);
    SetGlobalMessage('msgAppSettings019',msgAppSettings019);
    SetGlobalMessage('msgAppSettings020',msgAppSettings020);
    SetGlobalMessage('msgAppSettings021',msgAppSettings021);
    SetGlobalMessage('msgAppSettings022',msgAppSettings022);
    SetGlobalMessage('msgAppSettings023',msgAppSettings023);
    SetGlobalMessage('msgAppSettings024',msgAppSettings024);
  end
  else if pFormClassName = 'TfrmAssContDef' then
  begin
    SetGlobalMessage('msgAssContDef001',msgAssContDef001);
    SetGlobalMessage('msgAssContDef002',msgAssContDef002);
    SetGlobalMessage('msgAssContDef003',msgAssContDef003);
    SetGlobalMessage('msgAssContDef004',msgAssContDef004);
    SetGlobalMessage('msgAssContDef005',msgAssContDef005);
  end
  else if pFormClassName = 'TfrmAssContDefDet' then
  begin
    SetGlobalMessage('msgAssContDefDet001',msgAssContDefDet001);
    SetGlobalMessage('msgAssContDefDet002',msgAssContDefDet002);
    SetGlobalMessage('msgAssContDefDet003',msgAssContDefDet003);
    SetGlobalMessage('msgAssContDefDet004',msgAssContDefDet004);
    SetGlobalMessage('msgAssContDefDet005',msgAssContDefDet005);
    SetGlobalMessage('msgAssContDefDet006',msgAssContDefDet006);
    SetGlobalMessage('msgAssContDefDet007',msgAssContDefDet007);
    SetGlobalMessage('msgAssContDefDet008',msgAssContDefDet008);
    SetGlobalMessage('msgAssContDefDet009',msgAssContDefDet009);
    SetGlobalMessage('msgAssContDefDet010',msgAssContDefDet010);
    SetGlobalMessage('msgAssContDefDet011',msgAssContDefDet011);
    SetGlobalMessage('msgAssContDefDet012',msgAssContDefDet012);
    SetGlobalMessage('msgAssContDefDet013',msgAssContDefDet013);
  end
  else if pFormClassName = 'TfrmAssContDefList' then
  begin
    SetGlobalMessage('msgAssContDefList001',msgAssContDefList001);
  end
  else if pFormClassName = 'TfrmAssContractDef' then
  begin
    SetGlobalMessage('msgAssContractDef001',msgAssContractDef001);
  end
  else if pFormClassName = 'TfrmAssociation' then
  begin
    SetGlobalMessage('msgAssociation001',msgAssociation001);
    SetGlobalMessage('msgAssociation002',msgAssociation002);
    SetGlobalMessage('msgAssociation003',msgAssociation003);
    SetGlobalMessage('msgAssociation004',msgAssociation004);
    SetGlobalMessage('msgAssociation005',msgAssociation005);
    SetGlobalMessage('msgAssociation006',msgAssociation006);
    SetGlobalMessage('msgAssociation007',msgAssociation007);
    SetGlobalMessage('msgAssociation008',msgAssociation008);
    SetGlobalMessage('msgAssociation009',msgAssociation009);
    SetGlobalMessage('msgAssociation010',msgAssociation010);
    SetGlobalMessage('msgAssociation011',msgAssociation011);
    SetGlobalMessage('msgAssociation012',msgAssociation012);
    SetGlobalMessage('msgAssociation013',msgAssociation013);
  end
  else if pFormClassName = 'TfrmAssociationDef' then
  begin
    SetGlobalMessage('msgAssociationDef001',msgAssociationDef001);
    SetGlobalMessage('msgAssociationDef002',msgAssociationDef002);
    SetGlobalMessage('msgAssociationDef003',msgAssociationDef003);
    SetGlobalMessage('msgAssociationDef004',msgAssociationDef004);
    SetGlobalMessage('msgAssociationDef005',msgAssociationDef005);
    SetGlobalMessage('msgAssociationDef006',msgAssociationDef006);
    SetGlobalMessage('msgAssociationDef007',msgAssociationDef007);
    SetGlobalMessage('msgAssociationDef008',msgAssociationDef008);
    SetGlobalMessage('msgAssociationDef009',msgAssociationDef009);
    SetGlobalMessage('msgAssociationDef010',msgAssociationDef010);
    SetGlobalMessage('msgAssociationDef011',msgAssociationDef011);
    SetGlobalMessage('msgAssociationDef012',msgAssociationDef012);
    SetGlobalMessage('msgAssociationDef013',msgAssociationDef013);
    SetGlobalMessage('msgAssociationDef014',msgAssociationDef014);
    SetGlobalMessage('msgAssociationDef015',msgAssociationDef015);
    SetGlobalMessage('msgAssociationDef016',msgAssociationDef016);
    SetGlobalMessage('msgAssociationDef017',msgAssociationDef017);
    SetGlobalMessage('msgAssociationDef018',msgAssociationDef018);
    SetGlobalMessage('msgAssociationDef019',msgAssociationDef019);
    SetGlobalMessage('msgAssociationDef020',msgAssociationDef020);
  end
  else if pFormClassName = 'TfrmAssociationList' then
  begin
    SetGlobalMessage('msgAssociationList001',msgAssociationList001);
    SetGlobalMessage('msgAssociationList002',msgAssociationList002);
    SetGlobalMessage('msgAssociationList003',msgAssociationList003);
  end
  else if pFormClassName = 'TfrmAttendant' then
  begin
    SetGlobalMessage('msgAttendant001',msgAttendant001);
  end
  else if pFormClassName = 'TfrmAutoRevenue' then
  begin
    SetGlobalMessage('msgAutoRevenue001',msgAutoRevenue001);
    SetGlobalMessage('msgAutoRevenue002',msgAutoRevenue002);
    SetGlobalMessage('msgAutoRevenue003',msgAutoRevenue003);
    SetGlobalMessage('msgAutoRevenue004',msgAutoRevenue004);
    SetGlobalMessage('msgAutoRevenue005',msgAutoRevenue005);
    SetGlobalMessage('msgAutoRevenue006',msgAutoRevenue006);
    SetGlobalMessage('msgAutoRevenue007',msgAutoRevenue007);
    SetGlobalMessage('msgAutoRevenue008',msgAutoRevenue008);
    SetGlobalMessage('msgAutoRevenue009',msgAutoRevenue009);
    SetGlobalMessage('msgAutoRevenue010',msgAutoRevenue010);
  end
  else if pFormClassName = 'TfrmArchivePage' then
  begin
    SetGlobalMessage('msgArchivePage001',msgArchivePage001);
    SetGlobalMessage('msgArchivePage002',msgArchivePage002);
    SetGlobalMessage('msgArchivePage003',msgArchivePage003);
    SetGlobalMessage('msgArchivePage004',msgArchivePage004);
    SetGlobalMessage('msgArchivePage005',msgArchivePage005);
    SetGlobalMessage('msgArchivePage006',msgArchivePage006);
    SetGlobalMessage('msgArchivePage007',msgArchivePage007);
    SetGlobalMessage('msgArchivePage008',msgArchivePage008);
    SetGlobalMessage('msgArchivePage009',msgArchivePage009);
    SetGlobalMessage('msgArchivePage010',msgArchivePage010);
    SetGlobalMessage('msgArchivePage011',msgArchivePage011);
    SetGlobalMessage('msgArchivePage012',msgArchivePage012);
    SetGlobalMessage('msgArchivePage013',msgArchivePage013);
    SetGlobalMessage('msgArchivePage014',msgArchivePage014);
    SetGlobalMessage('msgArchivePage015',msgArchivePage015);
    SetGlobalMessage('msgArchivePage016',msgArchivePage016);
    SetGlobalMessage('msgArchivePage017',msgArchivePage017);
    SetGlobalMessage('msgArchivePage018',msgArchivePage018);
    SetGlobalMessage('msgArchivePage019',msgArchivePage019);
    SetGlobalMessage('msgArchivePage020',msgArchivePage020);
    SetGlobalMessage('msgArchivePage021',msgArchivePage021);
    SetGlobalMessage('msgArchivePage022',msgArchivePage022);
    SetGlobalMessage('msgArchivePage023',msgArchivePage023);
    SetGlobalMessage('msgArchivePage024',msgArchivePage024);
    SetGlobalMessage('msgArchivePage025',msgArchivePage025);
    SetGlobalMessage('msgArchivePage026',msgArchivePage026);
    SetGlobalMessage('msgArchivePage027',msgArchivePage027);
    SetGlobalMessage('msgArchivePage028',msgArchivePage028);
    SetGlobalMessage('msgArchivePage029',msgArchivePage029);
    SetGlobalMessage('msgArchivePage030',msgArchivePage030);
    SetGlobalMessage('msgArchivePage031',msgArchivePage031);
    SetGlobalMessage('msgArchivePage032',msgArchivePage032);
    SetGlobalMessage('msgArchivePage033',msgArchivePage033);
    SetGlobalMessage('msgArchivePage034',msgArchivePage034);
    SetGlobalMessage('msgArchivePage035',msgArchivePage035);
  end
  else if pFormClassName = 'TfrmArchiveSettings' then
  begin
    SetGlobalMessage('msgArchiveSettings001',msgArchiveSettings001);
    SetGlobalMessage('msgArchiveSettings002',msgArchiveSettings002);
    SetGlobalMessage('msgArchiveSettings003',msgArchiveSettings003);
    SetGlobalMessage('msgArchiveSettings004',msgArchiveSettings004);
    SetGlobalMessage('msgArchiveSettings005',msgArchiveSettings005);
    SetGlobalMessage('msgArchiveSettings006',msgArchiveSettings006);
    SetGlobalMessage('msgArchiveSettings007',msgArchiveSettings007);
    SetGlobalMessage('msgArchiveSettings008',msgArchiveSettings008);
    SetGlobalMessage('msgArchiveSettings009',msgArchiveSettings009);
    SetGlobalMessage('msgArchiveSettings010',msgArchiveSettings010);
    SetGlobalMessage('msgArchiveSettings011',msgArchiveSettings011);
  end
  else if pFormClassName = 'TfrmAddArchiveFile' then
  begin
    SetGlobalMessage('msgAddArchiveFile001',msgAddArchiveFile001);
    SetGlobalMessage('msgAddArchiveFile002',msgAddArchiveFile002);
    SetGlobalMessage('msgAddArchiveFile003',msgAddArchiveFile003);
    SetGlobalMessage('msgAddArchiveFile004',msgAddArchiveFile004);
  end
  else if pFormClassName = 'TfrmArchiveFileContentControl' then
  begin
    SetGlobalMessage('msgArchiveFileContentControl001',msgArchiveFileContentControl001);
    SetGlobalMessage('msgArchiveFileContentControl002',msgArchiveFileContentControl002);

  end
  else if pFormClassName = 'TfrmBedReservation' then
  begin
    SetGlobalMessage('msgBedReservation001',msgBedReservation001);
    SetGlobalMessage('msgBedReservation002',msgBedReservation002);
    SetGlobalMessage('msgBedReservation003',msgBedReservation003);
    SetGlobalMessage('msgBedReservation004',msgBedReservation004);
    SetGlobalMessage('msgBedReservation005',msgBedReservation005);
    SetGlobalMessage('msgBedReservation006',msgBedReservation006);
    SetGlobalMessage('msgBedReservation008',msgBedReservation008);
    SetGlobalMessage('msgBedReservation010',msgBedReservation010);
   // SetGlobalMessage('msgBedReservation012',msgBedReservation012);
    SetGlobalMessage('msgBedReservation013',msgBedReservation013);
    SetGlobalMessage('msgBedReservation014',msgBedReservation014);
    SetGlobalMessage('msgBedReservation015',msgBedReservation015);
    SetGlobalMessage('msgBedReservation016',msgBedReservation016);
    SetGlobalMessage('msgBedReservation017',msgBedReservation017);
    SetGlobalMessage('msgBedReservation018',msgBedReservation018);
    SetGlobalMessage('msgBedReservation019',msgBedReservation019);
    SetGlobalMessage('msgBedReservation020',msgBedReservation020);
    SetGlobalMessage('msgBedReservation021',msgBedReservation021);
    SetGlobalMessage('msgBedReservation022',msgBedReservation022);
    SetGlobalMessage('msgBedReservation023',msgBedReservation023);
    SetGlobalMessage('msgBedReservation024',msgBedReservation024);
    SetGlobalMessage('msgBedReservation025',msgBedReservation025);
    SetGlobalMessage('msgBedReservation026',msgBedReservation026);
  end
  else if pFormClassName = 'TfrmBloodBank' then
  begin
    SetGlobalMessage('msgBloodBank001',msgBloodBank001);
    SetGlobalMessage('msgBloodBank002',msgBloodBank002);
    SetGlobalMessage('msgBloodBank003',msgBloodBank003);
    SetGlobalMessage('msgBloodBank004',msgBloodBank004);
    SetGlobalMessage('msgBloodBank005',msgBloodBank005);
    SetGlobalMessage('msgBloodBank006',msgBloodBank006);
    SetGlobalMessage('msgBloodBank007',msgBloodBank007);
    SetGlobalMessage('msgBloodBank008',msgBloodBank008);
    SetGlobalMessage('msgBloodBank009',msgBloodBank009);
    SetGlobalMessage('msgBloodBank010',msgBloodBank010);
    SetGlobalMessage('msgBloodBank011',msgBloodBank011);
  end
  else if pFormClassName = 'TfrmBloodBankDetail' then
  begin
    SetGlobalMessage('msgBloodBankDetail001',msgBloodBankDetail001);
    SetGlobalMessage('msgBloodBankDetail002',msgBloodBankDetail002);
    SetGlobalMessage('msgBloodBankDetail003',msgBloodBankDetail003);
    SetGlobalMessage('msgBloodBankDetail004',msgBloodBankDetail004);
    SetGlobalMessage('msgBloodBankDetail005',msgBloodBankDetail005);
    SetGlobalMessage('msgBloodBankDetail006',msgBloodBankDetail006);
    SetGlobalMessage('msgBloodBankDetail007',msgBloodBankDetail007);
    SetGlobalMessage('msgBloodBankDetail008',msgBloodBankDetail008);
    SetGlobalMessage('msgBloodBankDetail009',msgBloodBankDetail009);
    SetGlobalMessage('msgBloodBankDetail010',msgBloodBankDetail010);
    SetGlobalMessage('msgBloodBankDetail011',msgBloodBankDetail011);
  end
  else if pFormClassName = 'TfrmBloodRequest' then
  begin
    SetGlobalMessage('msgBloodRequest001',msgBloodRequest001);
    SetGlobalMessage('msgBloodRequest002',msgBloodRequest002);
    SetGlobalMessage('msgBloodRequest003',msgBloodRequest003);
    SetGlobalMessage('msgBloodRequest004',msgBloodRequest004);
    SetGlobalMessage('msgBloodRequest005',msgBloodRequest005);
    SetGlobalMessage('msgBloodRequest006',msgBloodRequest006);
    SetGlobalMessage('msgBloodRequest007',msgBloodRequest007);
    SetGlobalMessage('msgBloodRequest008',msgBloodRequest008);
    SetGlobalMessage('msgBloodRequest009',msgBloodRequest009);
    SetGlobalMessage('msgBloodRequest010',msgBloodRequest010);
    SetGlobalMessage('msgBloodRequest011',msgBloodRequest011);
    SetGlobalMessage('msgBloodRequest012',msgBloodRequest012);
    SetGlobalMessage('msgBloodRequest013',msgBloodRequest013);//223802;Bacl;13.10.2020
    SetGlobalMessage('msgBloodRequest014',msgBloodRequest014);
  end
  else if pFormClassName = 'TfrmCRMAddNewProc' then
  begin
    SetGlobalMessage('msgCRMAddNewProc001',msgCRMAddNewProc001);
    SetGlobalMessage('msgCRMAddNewProc002',msgCRMAddNewProc002);
  end
  else if pFormClassName = 'TfrmCRMAddSatisfaction' then    
  begin
    SetGlobalMessage('msgCRMAddSatisfaction001',msgCRMAddSatisfaction001);
    SetGlobalMessage('msgCRMAddSatisfaction002',msgCRMAddSatisfaction002);
    SetGlobalMessage('msgCRMAddSatisfaction003',msgCRMAddSatisfaction003);
  end
  else if pFormClassName = 'TfrmCRMPatientSatisfaction' then    
  begin
    SetGlobalMessage('msgCRMPatientSatisfaction001',msgCRMPatientSatisfaction001);
    SetGlobalMessage('msgCRMPatientSatisfaction002',msgCRMPatientSatisfaction002);
    SetGlobalMessage('msgCRMPatientSatisfaction003',msgCRMPatientSatisfaction003);
    SetGlobalMessage('msgCRMPatientSatisfaction004',msgCRMPatientSatisfaction004);
  end
  else if pFormClassName = 'TfrmCRMPlanAndDef' then
  begin
    SetGlobalMessage('msgCRMPlanAndDef001',msgCRMPlanAndDef001);
    SetGlobalMessage('msgCRMPlanAndDef002',msgCRMPlanAndDef002);
    SetGlobalMessage('msgCRMPlanAndDef003',msgCRMPlanAndDef003);
    SetGlobalMessage('msgCRMPlanAndDef005',msgCRMPlanAndDef005);
    SetGlobalMessage('msgCRMPlanAndDef007',msgCRMPlanAndDef007);
    SetGlobalMessage('msgCRMPlanAndDef008',msgCRMPlanAndDef008);
    SetGlobalMessage('msgCRMPlanAndDef009',msgCRMPlanAndDef009);
    SetGlobalMessage('msgCRMPlanAndDef010',msgCRMPlanAndDef010);
    SetGlobalMessage('msgCRMPlanAndDef011',msgCRMPlanAndDef011);
    SetGlobalMessage('msgCRMPlanAndDef012',msgCRMPlanAndDef012);
    SetGlobalMessage('msgCRMPlanAndDef013',msgCRMPlanAndDef013);
    SetGlobalMessage('msgCRMPlanAndDef014',msgCRMPlanAndDef014);
    SetGlobalMessage('msgCRMPlanAndDef015',msgCRMPlanAndDef015);
    SetGlobalMessage('msgCRMPlanAndDef016',msgCRMPlanAndDef016);
    SetGlobalMessage('msgCRMPlanAndDef017',msgCRMPlanAndDef017);
  end
  else if pFormClassName = 'TfrmPatientPollAnswers' then
  begin
    SetGlobalMessage('msgCRMPollAnswers001',msgCRMPollAnswers001);
    SetGlobalMessage('msgCRMPollAnswers002',msgCRMPollAnswers002);
    SetGlobalMessage('msgCRMPollAnswers003',msgCRMPollAnswers003);
  end
  else if pFormClassName = 'TfrmPollDescriptions' then
  begin
    SetGlobalMessage('msgCRMPollDescriptions001',msgCRMPollDescriptions001);
    SetGlobalMessage('msgCRMPollDescriptions002',msgCRMPollDescriptions002);
    SetGlobalMessage('msgCRMPollDescriptions003',msgCRMPollDescriptions003);
    SetGlobalMessage('msgCRMPollDescriptions004',msgCRMPollDescriptions004);
    SetGlobalMessage('msgCRMPollDescriptions005',msgCRMPollDescriptions005);
    SetGlobalMessage('msgCRMPollDescriptions007',msgCRMPollDescriptions007);
    SetGlobalMessage('msgCRMPollDescriptions008',msgCRMPollDescriptions008);
    SetGlobalMessage('msgCRMPollDescriptions009',msgCRMPollDescriptions009);
    SetGlobalMessage('msgCRMPollDescriptions010',msgCRMPollDescriptions010);
    SetGlobalMessage('msgCRMPollDescriptions011',msgCRMPollDescriptions011);
    SetGlobalMessage('msgCRMPollDescriptions013',msgCRMPollDescriptions013);
  end
  else if  pFormClassName = 'TfrmCRMReviews' then
  begin
    SetGlobalMessage('msgCRMReviews001',msgCRMReviews001);
    SetGlobalMessage('msgCRMReviews002',msgCRMReviews002);
    SetGlobalMessage('msgCRMReviews003',msgCRMReviews003);
    SetGlobalMessage('msgCRMReviews004',msgCRMReviews004);
    SetGlobalMessage('msgCRMReviews005',msgCRMReviews005);
    SetGlobalMessage('msgCRMReviews006',msgCRMReviews006);
    SetGlobalMessage('msgCRMReviews007',msgCRMReviews007);
  end
  else if  pFormClassName = 'TfrmCRMReviewDef' then
  begin
    SetGlobalMessage('msgCRMReviewDef001',msgCRMReviewDef001);
    SetGlobalMessage('msgCRMReviewDef002',msgCRMReviewDef002);
    SetGlobalMessage('msgCRMReviewDef003',msgCRMReviewDef003);
    SetGlobalMessage('msgCRMReviewDef004',msgCRMReviewDef004);
    SetGlobalMessage('msgCRMReviewDef005',msgCRMReviewDef005);
    SetGlobalMessage('msgCRMReviewDef006',msgCRMReviewDef006);
    SetGlobalMessage('msgCRMReviewDef007',msgCRMReviewDef007);
    SetGlobalMessage('msgCRMReviewDef008',msgCRMReviewDef008);
    SetGlobalMessage('msgCRMReviewDef009',msgCRMReviewDef009);
    SetGlobalMessage('msgCRMReviewDef010',msgCRMReviewDef010);
    SetGlobalMessage('msgCRMReviewDef011',msgCRMReviewDef011);
  end
  else if pFormClassName = 'TfrmCurrentAccounts' then
  begin
    SetGlobalMessage('msgCurrentAccounts001',msgCurrentAccounts001);
    SetGlobalMessage('msgCurrentAccounts002',msgCurrentAccounts002);
    SetGlobalMessage('msgCurrentAccounts003',msgCurrentAccounts003);
    SetGlobalMessage('msgCurrentAccounts004',msgCurrentAccounts004);
    SetGlobalMessage('msgCurrentAccounts005',msgCurrentAccounts005);
    SetGlobalMessage('msgCurrentAccounts006',msgCurrentAccounts006);
  end
  else if pFormClassName = 'TfrmDailyExchanges' then
  begin
    SetGlobalMessage('msgDailyExchange001',msgDailyExchange001);
    SetGlobalMessage('msgDailyExchange002',msgDailyExchange002);
    SetGlobalMessage('msgDailyExchange003',msgDailyExchange003);
  end
  else if pFormClassName = 'TfrmDepartments' then
  begin
    SetGlobalMessage('msgDepartments001',msgDepartments001);
    SetGlobalMessage('msgDepartments002',msgDepartments002);
    SetGlobalMessage('msgDepartments003',msgDepartments003);
    SetGlobalMessage('msgDepartments004',msgDepartments004);
    SetGlobalMessage('msgDepartments005',msgDepartments005);
    SetGlobalMessage('msgDepartments006',msgDepartments006);
    SetGlobalMessage('msgDepartments007',msgDepartments007);
    SetGlobalMessage('msgDepartments008', msgDepartments008);
  end
  else if pFormClassName = 'TfrmDetailQuery' then
  begin
    SetGlobalMessage('msgDetailQuery001',msgDetailQuery001);
    SetGlobalMessage('msgDetailQuery002',msgDetailQuery002);
    SetGlobalMessage('msgDetailQuery003',msgDetailQuery003);
    SetGlobalMessage('msgDetailQuery004',msgDetailQuery004);
    SetGlobalMessage('msgDetailQuery005',msgDetailQuery005);
    SetGlobalMessage('msgDetailQuery006',msgDetailQuery006);
    SetGlobalMessage('msgDetailQuery007',msgDetailQuery007);
    SetGlobalMessage('msgDetailQuery008',msgDetailQuery008);
    SetGlobalMessage('msgDetailQuery009',msgDetailQuery009);
    SetGlobalMessage('msgDetailQuery010',msgDetailQuery010);
    SetGlobalMessage('mgdDetailQuery011',msgDetailQuery011);
    SetGlobalMessage('mgdDetailQuery012',msgDetailQuery012);
    SetGlobalMessage('mgdDetailQuery013',msgDetailQuery013);
    SetGlobalMessage('mgdDetailQuery014',msgDetailQuery014);
  end
  else if pFormClassName = 'TfrmDiagnosis' then
  begin
    SetGlobalMessage('msgDiagnosis001',msgDiagnosis001);
    SetGlobalMessage('msgDiagnosis002',msgDiagnosis002);
    SetGlobalMessage('msgDiagnosis003',msgDiagnosis003);
    SetGlobalMessage('msgDiagnosis004',msgDiagnosis004);
    SetGlobalMessage('msgDiagnosis005',msgDiagnosis005);
    SetGlobalMessage('msgDiagnosis006',msgDiagnosis006);
    SetGlobalMessage('msgDiagnosis007',msgDiagnosis007);
    SetGlobalMessage('msgDiagnosis008',msgDiagnosis008);
    SetGlobalMessage('msgDiagnosis009',msgDiagnosis009);
    SetGlobalMessage('msgDiagnosis010',msgDiagnosis010);
    SetGlobalMessage('msgDiagnosis011',msgDiagnosis011);
    SetGlobalMessage('msgDiagnosis012',msgDiagnosis012);
    SetGlobalMessage('msgDiagnosis013',msgDiagnosis013);
    SetGlobalMessage('msgDiagnosis014',msgDiagnosis014);
    SetGlobalMessage('msgDiagnosis015',msgDiagnosis015);
    //SetGlobalMessage('msgDiagnosis016',msgDiagnosis016);
    SetGlobalMessage('msgDiagnosis017',msgDiagnosis017);
    SetGlobalMessage('msgDiagnosis018',msgDiagnosis018);
    SetGlobalMessage('msgDiagnosis019',msgDiagnosis019);
    SetGlobalMessage('msgDiagnosis020',msgDiagnosis020);
    SetGlobalMessage('msgDiagnosis021',msgDiagnosis021);
    SetGlobalMessage('msgDiagnosis022',msgDiagnosis022);
    SetGlobalMessage('msgDiagnosis023',msgDiagnosis023);
    SetGlobalMessage('msgDiagnosis024',msgDiagnosis024);
    SetGlobalMessage('msgDiagnosis025',msgDiagnosis025);
    SetGlobalMessage('msgDiagnosis026',msgDiagnosis026);
    SetGlobalMessage('msgDiagnosis027',msgDiagnosis027);
  end
  else if pFormClassName = 'TfrmDiscount' then
  begin
    SetGlobalMessage('msgDiscount001',msgDiscount001);
    SetGlobalMessage('msgDiscount002',msgDiscount002);
    SetGlobalMessage('msgDiscount003',msgDiscount003);
    SetGlobalMessage('msgDiscount004',msgDiscount004);
    SetGlobalMessage('msgDiscount005',msgDiscount005);
    SetGlobalMessage('msgDiscount006',msgDiscount006);
    SetGlobalMessage('msgDiscount007',msgDiscount007);
    SetGlobalMessage('msgDiscount008',msgDiscount008);
    SetGlobalMessage('msgDiscount009',msgDiscount009);
    SetGlobalMessage('msgDiscount010',msgDiscount010);
    SetGlobalMessage('msgDiscount011',msgDiscount011);
    SetGlobalMessage('msgDiscount012',msgDiscount012);
    SetGlobalMessage('msgDiscount013',msgDiscount013);
    SetGlobalMessage('msgDiscount014',msgDiscount014);
    SetGlobalMessage('msgDiscount015',msgDiscount015);
    SetGlobalMessage('msgDiscount016',msgDiscount016);
    SetGlobalMessage('msgDiscount017',msgDiscount017);
    SetGlobalMessage('msgDiscount018',msgDiscount018);
    SetGlobalMessage('msgDiscount019',msgDiscount019);
    SetGlobalMessage('msgDiscount020',msgDiscount020);
    SetGlobalMessage('msgDiscount021',msgDiscount021);
    SetGlobalMessage('msgDiscount022',msgDiscount022);
    SetGlobalMessage('msgDiscount023',msgDiscount023);
    SetGlobalMessage('msgDiscount024',msgDiscount024);
  end
  else if pFormClassName = 'TfrmDoctorDeserves' then
  begin
    SetGlobalMessage('msgDoctorDeserves001',msgDoctorDeserves001);
    SetGlobalMessage('msgDoctorDeserves002',msgDoctorDeserves002);
    SetGlobalMessage('msgDoctorDeserves003',msgDoctorDeserves003);
    SetGlobalMessage('msgDoctorDeserves004',msgDoctorDeserves004);
    SetGlobalMessage('msgDoctorDeserves005',msgDoctorDeserves005);
    SetGlobalMessage('msgDoctorDeserves006',msgDoctorDeserves006);
    SetGlobalMessage('msgDoctorDeserves007',msgDoctorDeserves007);
    SetGlobalMessage('msgDoctorDeserves008',msgDoctorDeserves008);
    SetGlobalMessage('msgDoctorDeserves009',msgDoctorDeserves009);
    SetGlobalMessage('msgDoctorDeserves011',msgDoctorDeserves011);
    SetGlobalMessage('msgDoctorDeserves012',msgDoctorDeserves012);
    SetGlobalMessage('msgDoctorDeserves013',msgDoctorDeserves013);
    SetGlobalMessage('msgDoctorDeserves014',msgDoctorDeserves014);
    SetGlobalMessage('msgDoctorDeserves015',msgDoctorDeserves015);
    SetGlobalMessage('msgDoctorDeserves016',msgDoctorDeserves016);
    SetGlobalMessage('msgDoctorDeserves017',msgDoctorDeserves017);
    SetGlobalMessage('msgDoctorDeserves018',msgDoctorDeserves018);
    SetGlobalMessage('msgDoctorDeserves019',msgDoctorDeserves019);
    SetGlobalMessage('msgDoctorDeserves020',msgDoctorDeserves020);
    SetGlobalMessage('msgDoctorDeserves021',msgDoctorDeserves021);
    SetGlobalMessage('msgDoctorDeserves022',msgDoctorDeserves022);
    SetGlobalMessage('msgDoctorDeserves023',msgDoctorDeserves023);
    SetGlobalMessage('msgDoctorDeserves024',msgDoctorDeserves024);
    SetGlobalMessage('msgDoctorDeserves025',msgDoctorDeserves025);
    SetGlobalMessage('msgDoctorDeserves026',msgDoctorDeserves026);
    SetGlobalMessage('msgDoctorDeserves027',msgDoctorDeserves027);
    SetGlobalMessage('msgDoctorDeserves028',msgDoctorDeserves028);
    SetGlobalMessage('msgDoctorDeserves029',msgDoctorDeserves029);
    SetGlobalMessage('msgDoctorDeserves030',msgDoctorDeserves030);
    SetGlobalMessage('msgDoctorDeserves031',msgDoctorDeserves031);
    SetGlobalMessage('msgDoctorDeserves032',msgDoctorDeserves032);
    SetGlobalMessage('msgDoctorDeserves033',msgDoctorDeserves033);
    SetGlobalMessage('msgDoctorDeserves034',msgDoctorDeserves034);
    SetGlobalMessage('msgDoctorDeserves035',msgDoctorDeserves035);
    SetGlobalMessage('msgDoctorDeserves036',msgDoctorDeserves036);
    SetGlobalMessage('msgDoctorDeserves037',msgDoctorDeserves037);
    SetGlobalMessage('msgDoctorDeserves038',msgDoctorDeserves038);
    SetGlobalMessage('msgDoctorDeserves039',msgDoctorDeserves039);
    SetGlobalMessage('msgDoctorDeserves040',msgDoctorDeserves040);
    SetGlobalMessage('msgDoctorDeserves041',msgDoctorDeserves041);
  end
  else if pFormClassName = 'TfrmDoctorProcess' then
  begin
    SetGlobalMessage('msgDoctorProcess001',msgDoctorProcess001);
    SetGlobalMessage('msgDoctorProcess002',msgDoctorProcess002);
    SetGlobalMessage('msgDoctorProcess003',msgDoctorProcess003);
    SetGlobalMessage('msgDoctorProcess004',msgDoctorProcess004);
    SetGlobalMessage('msgDoctorProcess005',msgDoctorProcess005);
    SetGlobalMessage('msgDoctorProcess006',msgDoctorProcess006);
    SetGlobalMessage('msgDoctorProcess007',msgDoctorProcess007);
    SetGlobalMessage('msgDoctorProcess008',msgDoctorProcess008);
    SetGlobalMessage('msgDoctorProcess009',msgDoctorProcess009);
    SetGlobalMessage('msgDoctorProcess010',msgDoctorProcess010);
    SetGlobalMessage('msgDoctorProcess011',msgDoctorProcess011);
    SetGlobalMessage('msgDoctorProcess012',msgDoctorProcess012);
    SetGlobalMessage('msgDoctorProcess013',msgDoctorProcess013);
    SetGlobalMessage('msgDoctorProcess014',msgDoctorProcess014);
    SetGlobalMessage('msgDoctorProcess015',msgDoctorProcess015);
    SetGlobalMessage('msgDoctorProcess016',msgDoctorProcess016);
    SetGlobalMessage('msgDoctorProcess017',msgDoctorProcess017);
    SetGlobalMessage('msgDoctorProcess018',msgDoctorProcess018);
    SetGlobalMessage('msgDoctorProcess019',msgDoctorProcess019);
    SetGlobalMessage('msgDoctorProcess020',msgDoctorProcess020);
    SetGlobalMessage('msgDoctorProcess022',msgDoctorProcess022);
    SetGlobalMessage('msgDoctorProcess023',msgDoctorProcess023);
    SetGlobalMessage('msgDoctorProcess024',msgDoctorProcess024);
    SetGlobalMessage('msgDoctorProcess025',msgDoctorProcess025);
    SetGlobalMessage('msgDoctorProcess026',msgDoctorProcess026);
    SetGlobalMessage('msgDoctorProcess027',msgDoctorProcess027);
    SetGlobalMessage('msgDoctorProcess028',msgDoctorProcess028);
    SetGlobalMessage('msgDoctorProcess029',msgDoctorProcess029);
    //SetGlobalMessage('msgDoctorProcess030',msgDoctorProcess030);
    SetGlobalMessage('msgDoctorProcess031',msgDoctorProcess031);
    SetGlobalMessage('msgDoctorProcess032',msgDoctorProcess032);
    SetGlobalMessage('msgDoctorProcess033',msgDoctorProcess033);
    SetGlobalMessage('msgDoctorProcess034',msgDoctorProcess034);
    SetGlobalMessage('msgDoctorProcess036',msgDoctorProcess036);
    SetGlobalMessage('msgDoctorProcess037',msgDoctorProcess037);
    SetGlobalMessage('msgDoctorProcess038',msgDoctorProcess038);
    SetGlobalMessage('msgDoctorProcess039',msgDoctorProcess039);
    SetGlobalMessage('msgDoctorProcess040',msgDoctorProcess040);
    SetGlobalMessage('msgDoctorProcess041',msgDoctorProcess041);
    SetGlobalMessage('msgDoctorProcess042',msgDoctorProcess042);
    SetGlobalMessage('msgDoctorProcess043',msgDoctorProcess043);
    SetGlobalMessage('msgDoctorProcess044',msgDoctorProcess044);
    SetGlobalMessage('msgDoctorProcess045',msgDoctorProcess045);
    SetGlobalMessage('msgDoctorProcess046',msgDoctorProcess046);
    SetGlobalMessage('msgDoctorProcess047',msgDoctorProcess047);
    SetGlobalMessage('msgDoctorProcess048',msgDoctorProcess048);
    SetGlobalMessage('msgDoctorProcess049',msgDoctorProcess049);
    SetGlobalMessage('msgDoctorProcess050',msgDoctorProcess050);
    SetGlobalMessage('msgDoctorProcess051',msgDoctorProcess051);
    SetGlobalMessage('msgDoctorProcess052',msgDoctorProcess052);
    SetGlobalMessage('msgDoctorProcess053',msgDoctorProcess053);
    SetGlobalMessage('msgDoctorProcess054',msgDoctorProcess054);
    SetGlobalMessage('msgDoctorProcess055',msgDoctorProcess055);
  end
  else if pFormClassName = 'TfrmDoctors' then
  begin
    SetGlobalMessage('msgDoctors001',msgDoctors001);
    SetGlobalMessage('msgDoctors002',msgDoctors002);
    SetGlobalMessage('msgDoctors003',msgDoctors003);
    SetGlobalMessage('msgDoctors004',msgDoctors004);
    SetGlobalMessage('msgDoctors005',msgDoctors005);
    SetGlobalMessage('msgDoctors007',msgDoctors007);
    SetGlobalMessage('msgDoctors008',msgDoctors008);
    SetGlobalMessage('msgDoctors009',msgDoctors009);
    SetGlobalMessage('msgDoctors010',msgDoctors010);
    SetGlobalMessage('msgDoctors011',msgDoctors011);
    SetGlobalMessage('msgDoctors012',msgDoctors012);
    SetGlobalMessage('msgDoctors013',msgDoctors013);
    SetGlobalMessage('msgDoctors014',msgDoctors014);
    SetGlobalMessage('msgDoctors015',msgDoctors015);

  end
  else if pFormClassName = 'TfrmDocument' then
  begin
    SetGlobalMessage('msgDocument001',msgDocument001);
  end
  else if pFormClassName = 'TfrmScheduledMessageJobs' then
  begin
    SetGlobalMessage('msgDoMessageJobs001',msgDoMessageJobs001);
    SetGlobalMessage('msgDoMessageJobs002',msgDoMessageJobs002);
  end
  else if pFormClassName = 'TfrmDrDeserveCopy' then
  begin
    SetGlobalMessage('msgDrDeserveCopy001',msgDrDeserveCopy001);
    SetGlobalMessage('msgDrDeserveCopy002',msgDrDeserveCopy002);
  end
  else if pFormClassName = 'TfrmDrugPrescription' then
  begin
    SetGlobalMessage('msgDrugPrescription003',msgDrugPrescription003);
    SetGlobalMessage('msgDrugPrescription004',msgDrugPrescription004);
    SetGlobalMessage('msgDrugPrescription005',msgDrugPrescription005);
    SetGlobalMessage('msgDrugPrescription006',msgDrugPrescription006);
    SetGlobalMessage('msgDrugPrescription007',msgDrugPrescription007);
    SetGlobalMessage('msgDrugPrescription008',msgDrugPrescription008);
    SetGlobalMessage('msgDrugPrescription009',msgDrugPrescription009);
    SetGlobalMessage('msgDrugPrescription010',msgDrugPrescription010);
    SetGlobalMessage('msgDrugPrescription011',msgDrugPrescription011);
    SetGlobalMessage('msgDrugPrescription012',msgDrugPrescription012);
    SetGlobalMessage('msgDrugPrescription013',msgDrugPrescription013);
    SetGlobalMessage('msgDrugPrescription015',msgDrugPrescription015);
    SetGlobalMessage('msgDrugPrescription016',msgDrugPrescription016);
    SetGlobalMessage('msgDrugPrescription017',msgDrugPrescription017);
    SetGlobalMessage('msgDrugPrescription018',msgDrugPrescription018);
    SetGlobalMessage('msgDrugPrescription019',msgDrugPrescription019);
    SetGlobalMessage('msgDrugPrescription020',msgDrugPrescription020);
    SetGlobalMessage('msgDrugPrescription021',msgDrugPrescription021);
    SetGlobalMessage('msgDrugPrescription022',msgDrugPrescription022);
    SetGlobalMessage('msgDrugPrescription023',msgDrugPrescription023);
    SetGlobalMessage('msgDrugPrescription024',msgDrugPrescription024);

    SetGlobalMessage('msgDrugPrescription026',msgDrugPrescription026);
    SetGlobalMessage('msgDrugPrescription027',msgDrugPrescription027);
    SetGlobalMessage('msgDrugPrescription028',msgDrugPrescription028);
    SetGlobalMessage('msgDrugPrescription029',msgDrugPrescription029);
    SetGlobalMessage('msgDrugPresApproveErr',msgDrugPresApproveErr);
    SetGlobalMessage('msgDrugPresCncApprErr',msgDrugPresCncApprErr);
    SetGlobalMessage('msgDrugPrescription030',msgDrugPrescription030);
    SetGlobalMessage('msgDrugPrescription031',msgDrugPrescription031);
    SetGlobalMessage('msgDrugPrescription032',msgDrugPrescription032);
    SetGlobalMessage('msgDrugPrescription033',msgDrugPrescription033);
    SetGlobalMessage('msgDrugPrescription034',msgDrugPrescription034);
    SetGlobalMessage('msgDrugPrescription035',msgDrugPrescription035);
    SetGlobalMessage('msgDrugPrescription036',msgDrugPrescription036);
    SetGlobalMessage('msgDrugPrescription037',msgDrugPrescription037);
    SetGlobalMessage('msgDrugPrescription038',msgDrugPrescription038);
    SetGlobalMessage('msgDrugPrescription039',msgDrugPrescription039);
    SetGlobalMessage('msgDrugPrescription040',msgDrugPrescription040);
    SetGlobalMessage('msgDrugPrescription041',msgDrugPrescription041);
    SetGlobalMessage('msgDrugPrescription042',msgDrugPrescription042);
    SetGlobalMessage('msgDrugPrescription043',msgDrugPrescription043);
    SetGlobalMessage('msgDrugPrescription044',msgDrugPrescription044);
    SetGlobalMessage('msgDrugPrescription045',msgDrugPrescription045);
    SetGlobalMessage('msgDrugPrescription046',msgDrugPrescription046);
  end
  else if pFormClassName = 'TdmGSS' then         // medula turkiyeye ozel oldugu icin dil destegine alinmadi
  begin
    SetGlobalMessage('msgOpticalPrescription001',msgOpticalPrescription001);
    SetGlobalMessage('msgOpticalPrescription002',msgOpticalPrescription002);
    SetGlobalMessage('msgOpticalPrescription003',msgOpticalPrescription003);
    SetGlobalMessage('msgOpticalPrescription004',msgOpticalPrescription004);
    SetGlobalMessage('msgOpticalPrescription005',msgOpticalPrescription005);
  end
  else if pFormClassName = 'TdmGSS' then         // medula turkiyeye ozel oldugu icin dil destegine alinmadi
  begin
    SetGlobalMessage('msgDtMdGss001',msgDtMdGss001);
    SetGlobalMessage('msgDtMdGss002',msgDtMdGss002);
    SetGlobalMessage('msgDtMdGss003',msgDtMdGss003);
    SetGlobalMessage('msgDtMdGss004',msgDtMdGss004);
    SetGlobalMessage('msgDtMdGss005',msgDtMdGss005);
    SetGlobalMessage('msgDtMdGss006',msgDtMdGss006);
    SetGlobalMessage('msgDtMdGss007',msgDtMdGss007);
    SetGlobalMessage('msgDtMdGss008',msgDtMdGss008);
    SetGlobalMessage('msgDtMdGss009',msgDtMdGss009);
    SetGlobalMessage('msgDtMdGss010',msgDtMdGss010);
    SetGlobalMessage('msgDtMdGss011',msgDtMdGss011);
    SetGlobalMessage('msgDtMdGss012',msgDtMdGss012);
    SetGlobalMessage('msgDtMdGss013',msgDtMdGss013);
    SetGlobalMessage('msgDtMdGss014',msgDtMdGss014);
    SetGlobalMessage('msgDtMdGss015',msgDtMdGss015);
    SetGlobalMessage('msgDtMdGss016',msgDtMdGss016);
    SetGlobalMessage('msgDtMdGss017',msgDtMdGss017);
    SetGlobalMessage('msgDtMdGss018',msgDtMdGss018);
    SetGlobalMessage('msgDtMdGss019',msgDtMdGss019);
    SetGlobalMessage('msgDtMdGss020',msgDtMdGss020);
    SetGlobalMessage('msgDtMdGss021',msgDtMdGss021);
    SetGlobalMessage('msgDtMdGss022',msgDtMdGss022);
    SetGlobalMessage('msgDtMdGss023',msgDtMdGss023);
    SetGlobalMessage('msgDtMdGss024',msgDtMdGss024);
    SetGlobalMessage('msgDtMdGss025',msgDtMdGss025);
    SetGlobalMessage('msgDtMdGss026',msgDtMdGss026);
    SetGlobalMessage('msgDtMdGss027',msgDtMdGss027);
    SetGlobalMessage('msgDtMdGss028',msgDtMdGss028);
    SetGlobalMessage('msgDtMdGss029',msgDtMdGss029);
    SetGlobalMessage('msgDtMdGss030',msgDtMdGss030);
    SetGlobalMessage('msgDtMdGss031',msgDtMdGss031);
    SetGlobalMessage('msgDtMdGss032',msgDtMdGss032);
    SetGlobalMessage('msgDtMdGss033',msgDtMdGss033);
    SetGlobalMessage('msgDtMdGss034',msgDtMdGss034);
    SetGlobalMessage('msgDtMdGss035',msgDtMdGss035);
    SetGlobalMessage('msgDtMdGss036',msgDtMdGss036);
    SetGlobalMessage('msgDtMdGss037',msgDtMdGss037);
    SetGlobalMessage('msgDtMdGss038',msgDtMdGss038);
    SetGlobalMessage('msgDtMdGss039',msgDtMdGss039);
    SetGlobalMessage('msgDtMdGss040',msgDtMdGss040);
    SetGlobalMessage('msgDtMdGss041',msgDtMdGss041);
    SetGlobalMessage('msgDtMdGss042',msgDtMdGss042);
    SetGlobalMessage('msgDtMdGss043',msgDtMdGss043);
    SetGlobalMessage('msgDtMdGss044',msgDtMdGss044);
    SetGlobalMessage('msgDtMdGss045',msgDtMdGss045);
    SetGlobalMessage('msgDtMdGss046',msgDtMdGss046);
    SetGlobalMessage('msgDtMdGss047',msgDtMdGss047);
    SetGlobalMessage('msgDtMdGss048',msgDtMdGss048);
    SetGlobalMessage('msgDtMdGss049',msgDtMdGss049);
    SetGlobalMessage('msgDtMdGss050',msgDtMdGss050);
    SetGlobalMessage('msgDtMdGss051',msgDtMdGss051);
    SetGlobalMessage('msgDtMdGss052',msgDtMdGss052);
    SetGlobalMessage('msgDtMdGss053',msgDtMdGss053);
    SetGlobalMessage('msgDtMdGss054',msgDtMdGss054);
    SetGlobalMessage('msgDtMdGss055',msgDtMdGss055);
    SetGlobalMessage('msgDtMdGss056',msgDtMdGss056);
    SetGlobalMessage('msgDtMdGss057',msgDtMdGss057);
    SetGlobalMessage('msgDtMdGss058',msgDtMdGss058);
    SetGlobalMessage('msgDtMdGss059',msgDtMdGss059);
    SetGlobalMessage('msgDtMdGss060',msgDtMdGss060);
    SetGlobalMessage('msgDtMdGss061',msgDtMdGss061);
    SetGlobalMessage('msgDtMdGss062',msgDtMdGss062);
    SetGlobalMessage('msgDtMdGss063',msgDtMdGss063);
    SetGlobalMessage('msgDtMdGss064',msgDtMdGss064);
    SetGlobalMessage('msgDtMdGss065',msgDtMdGss065);
    SetGlobalMessage('msgDtMdGss066',msgDtMdGss066);
    SetGlobalMessage('msgDtMdGss067',msgDtMdGss067);
    SetGlobalMessage('msgDtMdGss068',msgDtMdGss068);
    SetGlobalMessage('msgDtMdGss069',msgDtMdGss069);
    SetGlobalMessage('msgDtMdGss070',msgDtMdGss070);
    SetGlobalMessage('msgDtMdGss071',msgDtMdGss071);
    SetGlobalMessage('msgDtMdGss072',msgDtMdGss072);
    SetGlobalMessage('msgDtMdGss073',msgDtMdGss073);
    SetGlobalMessage('msgDtMdGss074',msgDtMdGss074);
    SetGlobalMessage('msgDtMdGss075',msgDtMdGss075);
    SetGlobalMessage('msgDtMdGss076',msgDtMdGss076);
    SetGlobalMessage('msgDtMdGss077',msgDtMdGss077);
    SetGlobalMessage('msgDtMdGss078',msgDtMdGss078);
    SetGlobalMessage('msgDtMdGss079',msgDtMdGss079);
    SetGlobalMessage('msgDtMdGss080',msgDtMdGss080);
    SetGlobalMessage('msgDtMdGss081',msgDtMdGss081);
    SetGlobalMessage('msgDtMdGss082',msgDtMdGss082);
    SetGlobalMessage('msgDtMdGss083',msgDtMdGss083);
    SetGlobalMessage('msgDtMdGss084',msgDtMdGss084);
    SetGlobalMessage('msgDtMdGss085',msgDtMdGss085);
    SetGlobalMessage('msgDtMdGss086',msgDtMdGss086);
    SetGlobalMessage('msgDtMdGss087',msgDtMdGss087);
    SetGlobalMessage('msgDtMdGss088',msgDtMdGss088);
    SetGlobalMessage('msgDtMdGss089',msgDtMdGss089);
    SetGlobalMessage('msgDtMdGss090',msgDtMdGss090);
    SetGlobalMessage('msgDtMdGss091',msgDtMdGss091);
    SetGlobalMessage('msgDtMdGss092',msgDtMdGss092);
    SetGlobalMessage('msgDtMdGss093',msgDtMdGss093);
    SetGlobalMessage('msgDtMdGss094',msgDtMdGss094);
    SetGlobalMessage('msgDtMdGss095',msgDtMdGss095);
    SetGlobalMessage('msgDtMdGss096',msgDtMdGss096);
    SetGlobalMessage('msgDtMdGss097',msgDtMdGss097);
    SetGlobalMessage('msgDtMdGss098',msgDtMdGss098);
    SetGlobalMessage('msgDtMdGss099',msgDtMdGss099);
    SetGlobalMessage('msgDtMdGss103',msgDtMdGss103);
    SetGlobalMessage('msgDtMdGss105',msgDtMdGss105);
    SetGlobalMessage('msgDtMdGss106',msgDtMdGss106);
    SetGlobalMessage('msgDtMdGss107',msgDtMdGss107);
    SetGlobalMessage('msgDtMdGss108',msgDtMdGss108);
    SetGlobalMessage('msgDtMdGss109',msgDtMdGss109);
    SetGlobalMessage('msgDtMdGss110',msgDtMdGss110);
    SetGlobalMessage('msgDtMdGss111',msgDtMdGss111);
    SetGlobalMessage('msgDtMdGss112',msgDtMdGss112);
    SetGlobalMessage('msgDtMdGss113',msgDtMdGss113);
    SetGlobalMessage('msgDtMdGss114',msgDtMdGss114);
    SetGlobalMessage('msgDtMdGss115',msgDtMdGss115);
    SetGlobalMessage('msgDtMdGss116',msgDtMdGss116);
    SetGlobalMessage('msgDtMdGss117',msgDtMdGss117);
//    SetGlobalMessage('msgDtMdGss118',msgDtMdGss118);
//    SetGlobalMessage('msgDtMdGss119',msgDtMdGss119);
    SetGlobalMessage('msgDtMdGss120',msgDtMdGss120);
    SetGlobalMessage('msgDtMdGss121',msgDtMdGss121);
    SetGlobalMessage('msgDtMdGss122',msgDtMdGss122);
    SetGlobalMessage('msgDtMdGss123',msgDtMdGss123);
    SetGlobalMessage('msgDtMdGss124',msgDtMdGss124);
    SetGlobalMessage('msgDtMdGss125',msgDtMdGss125);
    SetGlobalMessage('msgDtMdGss126',msgDtMdGss126);
    SetGlobalMessage('msgDtMdGss127',msgDtMdGss127);
    SetGlobalMessage('msgDtMdGss128',msgDtMdGss128);
    SetGlobalMessage('msgDtMdGss130',msgDtMdGss130);
    SetGlobalMessage('msgDtMdGss131',msgDtMdGss131);
    SetGlobalMessage('msgDtMdGss132',msgDtMdGss132);
    SetGlobalMessage('msgDtMdGss133',msgDtMdGss133);
    SetGlobalMessage('msgDtMdGss134',msgDtMdGss134);
    SetGlobalMessage('msgDtMdGss135',msgDtMdGss135);
    SetGlobalMessage('msgDtMdGss136',msgDtMdGss136);
    SetGlobalMessage('msgDtMdGss137',msgDtMdGss137);
    SetGlobalMessage('msgDtMdGss138',msgDtMdGss138);
    SetGlobalMessage('msgDtMdGss140',msgDtMdGss140);
    SetGlobalMessage('msgDtMdGss142',msgDtMdGss142);
    SetGlobalMessage('msgDtMdGss143',msgDtMdGss143);
    SetGlobalMessage('msgDtMdGss144',msgDtMdGss144);
    SetGlobalMessage('msgDtMdGss145',msgDtMdGss145);
    SetGlobalMessage('msgDtMdGss146',msgDtMdGss146);
    SetGlobalMessage('msgDtMdGss147',msgDtMdGss147);
    SetGlobalMessage('msgDtMdGss148',msgDtMdGss148);
    SetGlobalMessage('msgDtMdGss149',msgDtMdGss149);
    SetGlobalMessage('msgDtMdGss150',msgDtMdGss150);
    SetGlobalMessage('msgDtMdGss151',msgDtMdGss151);
    SetGlobalMessage('msgDtMdGss152',msgDtMdGss152);
    SetGlobalMessage('msgDtMdGss153',msgDtMdGss153);
    SetGlobalMessage('msgDtMdGss154',msgDtMdGss154);
    SetGlobalMessage('msgDtMdGss155',msgDtMdGss155);
    SetGlobalMessage('msgDtMdGss156',msgDtMdGss156);
    SetGlobalMessage('msgDtMdGss157',msgDtMdGss157);
    SetGlobalMessage('msgDtMdGss158',msgDtMdGss158);
    SetGlobalMessage('msgDtMdGss159',msgDtMdGss159);
    SetGlobalMessage('msgDtMdGss160',msgDtMdGss160);
    //SetGlobalMessage('msgDtMdGss161',msgDtMdGss161);
    SetGlobalMessage('msgDtMdGss162',msgDtMdGss162);
    SetGlobalMessage('msgDtMdGss163',msgDtMdGss163);
    SetGlobalMessage('msgDtMdGss164',msgDtMdGss164);
    SetGlobalMessage('msgDtMdGss165',msgDtMdGss165);
    SetGlobalMessage('msgDtMdGss166',msgDtMdGss166);
    SetGlobalMessage('msgDtMdGss167',msgDtMdGss167);
    SetGlobalMessage('msgDtMdGss168',msgDtMdGss168);
    SetGlobalMessage('msgDtMdGss169',msgDtMdGss169);
    SetGlobalMessage('msgDtMdGss171',msgDtMdGss171);
    SetGlobalMessage('msgDtMdGss172',msgDtMdGss172);
    SetGlobalMessage('msgDtMdGss173',msgDtMdGss173);
    SetGlobalMessage('msgDtMdGss174',msgDtMdGss174);
    SetGlobalMessage('msgDtMdGss175',msgDtMdGss175);
    SetGlobalMessage('msgDtMdGss176',msgDtMdGss176);
    SetGlobalMessage('msgDtMdGss177',msgDtMdGss177);
    SetGlobalMessage('msgDtMdGss178',msgDtMdGss178);
    SetGlobalMessage('msgDtMdGss179',msgDtMdGss179);
    SetGlobalMessage('msgDtMdGss180',msgDtMdGss180);
    SetGlobalMessage('msgDtMdGss181',msgDtMdGss181);
    SetGlobalMessage('msgDtMdGss182',msgDtMdGss182);
    SetGlobalMessage('msgDtMdGss183',msgDtMdGss183);
    SetGlobalMessage('msgDtMdGss184',msgDtMdGss184);
    SetGlobalMessage('msgDtMdGss185',msgDtMdGss185);
    SetGlobalMessage('msgDtMdGss186',msgDtMdGss186);
    SetGlobalMessage('msgDtMdGss189',msgDtMdGss189);
    SetGlobalMessage('msgDtMdGss190',msgDtMdGss190);
    SetGlobalMessage('msgDtMdGss191',msgDtMdGss191);
    SetGlobalMessage('msgDtMdGss194',msgDtMdGss194);
    SetGlobalMessage('msgDtMdGss195',msgDtMdGss195);
    SetGlobalMessage('msgDtMdGss199',msgDtMdGss199);
    SetGlobalMessage('msgDtMdGss200',msgDtMdGss200);
    SetGlobalMessage('msgDtMdGss201',msgDtMdGss201);
    SetGlobalMessage('msgDtMdGss202',msgDtMdGss202);
    SetGlobalMessage('msgDtMdGss203',msgDtMdGss203);
    SetGlobalMessage('msgDtMdGss204',msgDtMdGss204);
    SetGlobalMessage('msgDtMdGss205',msgDtMdGss205);
    SetGlobalMessage('msgDtMdGss206',msgDtMdGss206);
    SetGlobalMessage('msgDtMdGss207',msgDtMdGss207);
    SetGlobalMessage('msgDtMdGss210',msgDtMdGss210);
    SetGlobalMessage('msgDtMdGss211',msgDtMdGss211);
    SetGlobalMessage('msgDtMdGss212',msgDtMdGss212);
    SetGlobalMessage('msgDtMdGss213',msgDtMdGss213);
    SetGlobalMessage('msgDtMdGss214',msgDtMdGss214);
    SetGlobalMessage('msgDtMdGss215',msgDtMdGss215);
    SetGlobalMessage('msgDtMdGss216',msgDtMdGss216);
    SetGlobalMessage('msgDtMdGss217',msgDtMdGss217);
    SetGlobalMessage('msgDtMdGss219',msgDtMdGss219);
    SetGlobalMessage('msgDtMdGss222',msgDtMdGss222);
    SetGlobalMessage('msgDtMdGss223',msgDtMdGss223);
    SetGlobalMessage('msgDtMdGss224',msgDtMdGss224);
    SetGlobalMessage('msgDtMdGss225',msgDtMdGss225);
    SetGlobalMessage('msgDtMdGss226',msgDtMdGss226);
    SetGlobalMessage('msgDtMdGss227',msgDtMdGss227);
    SetGlobalMessage('msgDtMdGss228',msgDtMdGss228);
    SetGlobalMessage('msgDtMdGss229',msgDtMdGss229);
    SetGlobalMessage('msgDtMdGss230',msgDtMdGss230);
    SetGlobalMessage('msgDtMdGss231',msgDtMdGss231);
    SetGlobalMessage('msgDtMdGss232',msgDtMdGss232);
    SetGlobalMessage('msgDtMdGss233',msgDtMdGss233);
    SetGlobalMessage('msgDtMdGss234',msgDtMdGss234);
    SetGlobalMessage('msgDtMdGss235',msgDtMdGss235);
    SetGlobalMessage('msgDtMdGss236',msgDtMdGss236);
    SetGlobalMessage('msgDtMdGss237',msgDtMdGss237);
    SetGlobalMessage('msgDtMdGss239',msgDtMdGss239);
    SetGlobalMessage('msgDtMdGss242',msgDtMdGss242);
    SetGlobalMessage('msgDtMdGss243',msgDtMdGss243);
    SetGlobalMessage('msgDtMdGss245',msgDtMdGss245);
    SetGlobalMessage('msgDtMdGss246',msgDtMdGss246);
    SetGlobalMessage('msgDtMdGss247',msgDtMdGss247);
    SetGlobalMessage('msgDtMdGss248',msgDtMdGss248);
    SetGlobalMessage('msgDtMdGss249',msgDtMdGss249);
    SetGlobalMessage('msgDtMdGss250',msgDtMdGss250);
    SetGlobalMessage('msgDtMdGss251',msgDtMdGss251);
    SetGlobalMessage('msgDtMdGss252',msgDtMdGss252);
    SetGlobalMessage('msgDtMdGss253',msgDtMdGss253);
    SetGlobalMessage('msgDtMdGss254',msgDtMdGss254);
    SetGlobalMessage('msgDtMdGss255',msgDtMdGss255);
    SetGlobalMessage('msgDtMdGss256',msgDtMdGss256);
    SetGlobalMessage('msgDtMdGss257',msgDtMdGss257);
    SetGlobalMessage('msgDtMdGss258',msgDtMdGss258);
    SetGlobalMessage('msgDtMdGss259',msgDtMdGss259);
    SetGlobalMessage('msgDtMdGss260',msgDtMdGss260);
    SetGlobalMessage('msgDtMdGss261',msgDtMdGss261);
    SetGlobalMessage('msgDtMdGss262',msgDtMdGss262);
    SetGlobalMessage('msgDtMdGss263',msgDtMdGss263);
    SetGlobalMessage('msgDtMdGss264',msgDtMdGss264);
    SetGlobalMessage('msgDtMdGss265',msgDtMdGss265);
    SetGlobalMessage('msgDtMdGss266',msgDtMdGss266);
    //SetGlobalMessage('msgDtMdGss267',msgDtMdGss267);
    SetGlobalMessage('msgDtMdGss268',msgDtMdGss268);
    SetGlobalMessage('msgDtMdGss269',msgDtMdGss269);
    SetGlobalMessage('msgDtMdGss270',msgDtMdGss270);
    SetGlobalMessage('msgDtMdGss271',msgDtMdGss271);
    SetGlobalMessage('msgDtMdGss272',msgDtMdGss272);
    SetGlobalMessage('msgDtMdGss273',msgDtMdGss273);
    SetGlobalMessage('msgDtMdGss274',msgDtMdGss274);
    SetGlobalMessage('msgDtMdGss275',msgDtMdGss275);
    SetGlobalMessage('msgDtMdGss276',msgDtMdGss276);
    SetGlobalMessage('msgDtMdGss277',msgDtMdGss277);
    SetGlobalMessage('msgDtMdGss278',msgDtMdGss278);
    SetGlobalMessage('msgDtMdGss279',msgDtMdGss279);
    SetGlobalMessage('msgDtMdGss280',msgDtMdGss280);
    SetGlobalMessage('msgDtMdGss281',msgDtMdGss281);
    SetGlobalMessage('msgDtMdGss282',msgDtMdGss282);
    SetGlobalMessage('msgDtMdGss283',msgDtMdGss283);
    SetGlobalMessage('msgDtMdGss284',msgDtMdGss284);
    SetGlobalMessage('msgDtMdGss285',msgDtMdGss285);
    SetGlobalMessage('msgDtMdGss286',msgDtMdGss286);
    SetGlobalMessage('msgDtMdGss287',msgDtMdGss287);
    SetGlobalMessage('msgDtMdGss288',msgDtMdGss288);
    SetGlobalMessage('msgDtMdGss289',msgDtMdGss289);
    SetGlobalMessage('msgDtMdGss290',msgDtMdGss290);
    SetGlobalMessage('msgDtMdGss291',msgDtMdGss291);
    SetGlobalMessage('msgDtMdGss292',msgDtMdGss292);
    SetGlobalMessage('msgDtMdGss293',msgDtMdGss293);
    SetGlobalMessage('msgDtMdGss294',msgDtMdGss294);
    SetGlobalMessage('msgDtMdGss295',msgDtMdGss295);
    SetGlobalMessage('msgDtMdGss296',msgDtMdGss296);
    SetGlobalMessage('msgDtMdGss297',msgDtMdGss297);
    SetGlobalMessage('msgDtMdGss298',msgDtMdGss298);
    SetGlobalMessage('msgDtMdGss299',msgDtMdGss299);
    SetGlobalMessage('msgDtMdGss300',msgDtMdGss300);
  end
  else if pFormClassName = 'TfrmEmergency' then
  begin
    SetGlobalMessage('msgEmergency001',msgEmergency001);
    SetGlobalMessage('msgEmergency002',msgEmergency002);
    SetGlobalMessage('msgEmergency003',msgEmergency003);
    SetGlobalMessage('msgEmergency004',msgEmergency004);
    SetGlobalMessage('msgEmergency005',msgEmergency005);
    SetGlobalMessage('msgEmergency006',msgEmergency006);
  end
  else if pFormClassName = 'TfrmEntrance' then
  begin
    SetGlobalMessage('msgEntrance001',msgEntrance001);
    SetGlobalMessage('msgEntrance002',msgEntrance002);
    SetGlobalMessage('msgEntrance003',msgEntrance003);
    SetGlobalMessage('msgEntrance004',msgEntrance004);
    SetGlobalMessage('msgEntrance005',msgEntrance005);
    SetGlobalMessage('msgEntrance006',msgEntrance006);
    SetGlobalMessage('msgEntrance007',msgEntrance007);
    SetGlobalMessage('msgEntrance008',msgEntrance008);
    SetGlobalMessage('msgEntrance009',msgEntrance009);
    SetGlobalMessage('msgEntrance010',msgEntrance010);
    SetGlobalMessage('msgEntrance011',msgEntrance011);
    SetGlobalMessage('msgEntrance012',msgEntrance012);
    SetGlobalMessage('msgEntrance013',msgEntrance013);
    SetGlobalMessage('msgEntrance014',msgEntrance014);
    SetGlobalMessage('msgEntrance015',msgEntrance015);
    SetGlobalMessage('msgEntrance016',msgEntrance016);
    SetGlobalMessage('msgEntrance017',msgEntrance017);
    SetGlobalMessage('msgEntrance018',msgEntrance018);
    SetGlobalMessage('msgEntrance021',msgEntrance021);
    SetGlobalMessage('msgEntrance022',msgEntrance022);
    SetGlobalMessage('msgEntrance023',msgEntrance023);
  end
  else if pFormClassName = 'TfrmEnumeration4Serial' then
  begin
    SetGlobalMessage('msgEnumeration4Serial001',msgEnumeration4Serial001);
    SetGlobalMessage('msgEnumeration4Serial002',msgEnumeration4Serial002);
    SetGlobalMessage('msgEnumeration4Serial003',msgEnumeration4Serial003);
    SetGlobalMessage('msgEnumeration4Serial004',msgEnumeration4Serial004);
    SetGlobalMessage('msgEnumeration4Serial005',msgEnumeration4Serial005);
    SetGlobalMessage('msgEnumeration4Serial006',msgEnumeration4Serial006);
    SetGlobalMessage('msgEnumeration4Serial007',msgEnumeration4Serial007);
    SetGlobalMessage('msgEnumeration4Serial008',msgEnumeration4Serial008);
    SetGlobalMessage('msgEnumeration4Serial009',msgEnumeration4Serial009);
    SetGlobalMessage('msgEnumeration4Serial010',msgEnumeration4Serial010);
    SetGlobalMessage('msgEnumeration4Serial011',msgEnumeration4Serial011);
    SetGlobalMessage('msgEnumeration4Serial012',msgEnumeration4Serial012);
    SetGlobalMessage('msgEnumeration4Serial013',msgEnumeration4Serial013);
    SetGlobalMessage('msgEnumeration4Serial014',msgEnumeration4Serial014);
    SetGlobalMessage('msgEnumeration4Serial015',msgEnumeration4Serial015);
    SetGlobalMessage('msgEnumeration4Serial016',msgEnumeration4Serial016);
    SetGlobalMessage('msgEnumeration4Serial017',msgEnumeration4Serial017);
    SetGlobalMessage('msgEnumeration4Serial018',msgEnumeration4Serial018);
    SetGlobalMessage('msgEnumeration4Serial019',msgEnumeration4Serial019);
    SetGlobalMessage('msgEnumeration4Serial020',msgEnumeration4Serial020);
    SetGlobalMessage('msgEnumeration4Serial021',msgEnumeration4Serial021);
  end
  else if pFormClassName = 'TfrmEnumerationResult' then
  begin
    SetGlobalMessage('msgEnumerationResults001',msgEnumerationResults001);
    SetGlobalMessage('msgEnumerationResults002',msgEnumerationResults002);
    SetGlobalMessage('msgEnumerationResults003',msgEnumerationResults003);
    SetGlobalMessage('msgEnumerationResults004',msgEnumerationResults004);
    SetGlobalMessage('msgEnumerationResults005',msgEnumerationResults005);
    SetGlobalMessage('msgEnumerationResults006',msgEnumerationResults006);
    SetGlobalMessage('msgEnumerationResults007',msgEnumerationResults007);
    SetGlobalMessage('msgEnumerationResults008',msgEnumerationResults008);
    SetGlobalMessage('msgEnumerationResults009',msgEnumerationResults009);
    SetGlobalMessage('msgEnumerationResults010',msgEnumerationResults010);
    SetGlobalMessage('msgEnumerationResults011',msgEnumerationResults011);
    SetGlobalMessage('msgEnumerationResults012',msgEnumerationResults012);
    SetGlobalMessage('msgEnumerationResults013',msgEnumerationResults013);
    SetGlobalMessage('msgEnumerationResults014',msgEnumerationResults014);
    SetGlobalMessage('msgEnumerationResults015',msgEnumerationResults015);
    SetGlobalMessage('msgEnumerationResults016',msgEnumerationResults016);
    SetGlobalMessage('msgEnumerationResults017',msgEnumerationResults017);
    SetGlobalMessage('msgEnumerationResults018',msgEnumerationResults018);

    SetGlobalMessage('msgEnumerationResAllStock',msgEnumerationResAllStock);
    SetGlobalMessage('msgEnumerationResWarehouseStock',msgEnumerationResWarehouseStock);
  end
  else if pFormClassName = 'TfrmEpikriz' then
  begin
    SetGlobalMessage('msgEpikriz001',msgEpikriz001);
    SetGlobalMessage('msgEpikriz002',msgEpikriz002);
    SetGlobalMessage('msgEpikriz003',msgEpikriz003);
  end
  else if pFormClassName = 'TfrmFindFirstPeriod' then
  begin
    SetGlobalMessage('msgFindAvailableAppPeriod001',msgFindAvailableAppPeriod001);
    SetGlobalMessage('msgFindAvailableAppPeriod002',msgFindAvailableAppPeriod002);
    SetGlobalMessage('msgFindAvailableAppPeriod003',msgFindAvailableAppPeriod003);
    SetGlobalMessage('msgFindAvailableAppPeriod004',msgFindAvailableAppPeriod004);
    SetGlobalMessage('msgFindAvailableAppPeriod005',msgFindAvailableAppPeriod005);
  end
  else if pFormClassName = 'TfrmGssDocumendSend' then
  begin
    SetGlobalMessage('msgGSSDocument001', msgGSSDocument001);
    SetGlobalMessage('msgGSSDocument002', msgGSSDocument002);
    SetGlobalMessage('msgGSSDocument003', msgGSSDocument003);
    SetGlobalMessage('msgGSSDocument004', msgGSSDocument004);
    SetGlobalMessage('msgGSSDocument005', msgGSSDocument005);
    SetGlobalMessage('msgGSSDocument006', msgGSSDocument006);
    SetGlobalMessage('msgGSSDocument007', msgGSSDocument007);
    SetGlobalMessage('msgGSSDocument008', msgGSSDocument008);
    SetGlobalMessage('msgGSSDocument009', msgGSSDocument009);
    SetGlobalMessage('msgGSSDocument010', msgGSSDocument010);
    SetGlobalMessage('msgGSSDocument011', msgGSSDocument011);
    SetGlobalMessage('msgGSSDocument012', msgGSSDocument012);
    SetGlobalMessage('msgGSSDocument013', msgGSSDocument013);
    SetGlobalMessage('msgGSSDocument014', msgGSSDocument014);
    SetGlobalMessage('msgGSSDocument015', msgGSSDocument015);
    SetGlobalMessage('msgGSSDocument016', msgGSSDocument016);
  end
  else if pFormClassName = 'TfrmGssErrorMessage' then
  begin
    SetGlobalMessage('msgGSSErrorMessage001', msgGSSErrorMessage001);
    SetGlobalMessage('msgGSSErrorMessage002', msgGSSErrorMessage002);
    SetGlobalMessage('msgGSSErrorMessage003', msgGSSErrorMessage003);
  end
  else if pFormClassName = 'TfrmGenOutOfWork' then
  begin
    SetGlobalMessage('msgGenOutOfWork001',msgGenOutOfWork001);
    SetGlobalMessage('msgGenOutOfWork003',msgGenOutOfWork003);
    SetGlobalMessage('msgGenOutOfWork004',msgGenOutOfWork004);
    SetGlobalMessage('msgGenOutOfWork005',msgGenOutOfWork005);
    SetGlobalMessage('msgGenOutOfWork006',msgGenOutOfWork006);
    SetGlobalMessage('msgGenOutOfWork007',msgGenOutOfWork007);
    SetGlobalMessage('msgGenOutOfWork008',msgGenOutOfWork008);
    SetGlobalMessage('msgGenOutOfWork009',msgGenOutOfWork009);
    SetGlobalMessage('msgGenOutOfWork010',msgGenOutOfWork010);
    SetGlobalMessage('msgGenOutOfWork011',msgGenOutOfWork011);
    SetGlobalMessage('msgGenOutOfWork012',msgGenOutOfWork012);
    SetGlobalMessage('msgGenOutOfWork013',msgGenOutOfWork013);
    SetGlobalMessage('msgGenOutOfWork014',msgGenOutOfWork014);
    SetGlobalMessage('msgGenOutOfWork015',msgGenOutOfWork015);
    SetGlobalMessage('msgGenOutOfWork016',msgGenOutOfWork016);
    SetGlobalMessage('msgGenOutOfWork017',msgGenOutOfWork017);
    SetGlobalMessage('msgGenOutOfWork018',msgGenOutOfWork018);
    SetGlobalMessage('msgGenOutOfWork019',msgGenOutOfWork019);
    SetGlobalMessage('msgGenOutOfWork020',msgGenOutOfWork020);
  end
  else if pFormClassName = 'TfrmGenReport' then
  begin
    SetGlobalMessage('msgGenReport001',msgGenReport001);
    SetGlobalMessage('msgGenReport002',msgGenReport002);
    SetGlobalMessage('msgGenReport003',msgGenReport003);
    SetGlobalMessage('msgGenReport005',msgGenReport005);
    SetGlobalMessage('msgGenReport007',msgGenReport007);
    SetGlobalMessage('msgGenReport008',msgGenReport008);
    SetGlobalMessage('msgGenReport009',msgGenReport009);
    SetGlobalMessage('msgGenReport010',msgGenReport010);
    SetGlobalMessage('msgGenReport011',msgGenReport011);
    SetGlobalMessage('msgGenReport012',msgGenReport012);
    SetGlobalMessage('msgGenReport013',msgGenReport013);
    SetGlobalMessage('msgGenReport014',msgGenReport014);
    SetGlobalMessage('msgGenReport015',msgGenReport015);
    SetGlobalMessage('msgGenReport016',msgGenReport016);
    SetGlobalMessage('msgGenReport017',msgGenReport017);
    SetGlobalMessage('msgGenReport018',msgGenReport018);
    SetGlobalMessage('msgGenReport019',msgGenReport019);
  end
  else if pFormClassName = 'TfrmGSSInfos' then
  begin
    SetGlobalMessage('msgGSSInfos001',msgGSSInfos001);
    SetGlobalMessage('msgGSSInfos002',msgGSSInfos002);
    SetGlobalMessage('msgGSSInfos003',msgGSSInfos003);
    SetGlobalMessage('msgGSSInfos004',msgGSSInfos004);
    SetGlobalMessage('msgGSSInfos005',msgGSSInfos005);
    SetGlobalMessage('msgGSSInfos006',msgGSSInfos006);
    SetGlobalMessage('msgGSSInfos007',msgGSSInfos007);
    SetGlobalMessage('msgGSSInfos008',msgGSSInfos008);
    SetGlobalMessage('msgGSSInfos009',msgGSSInfos009);
    SetGlobalMessage('msgGSSInfos0010',msgGSSInfos0010);
  end
  else if pFormClassName = 'TfrmGSSPatInfos' then
  begin
    SetGlobalMessage('msgGSSPatInfos001',msgGSSPatInfos001);
    SetGlobalMessage('msgGSSPatInfos002',msgGSSPatInfos002);
    SetGlobalMessage('msgGSSPatInfos003',msgGSSPatInfos003);
    SetGlobalMessage('msgGSSPatInfos004',msgGSSPatInfos004);
    SetGlobalMessage('msgGSSPatInfos005',msgGSSPatInfos005);
    SetGlobalMessage('msgGSSPatInfos006',msgGSSPatInfos006);
  end
  else if pFormClassName = 'TfrmGSSQuery' then
  begin
    SetGlobalMessage('msgGSSQuery001',msgGSSQuery001);
    SetGlobalMessage('msgGSSQuery002',msgGSSQuery002);
    SetGlobalMessage('msgGSSQuery003',msgGSSQuery003);
    SetGlobalMessage('msgGSSQuery004',msgGSSQuery004);
    SetGlobalMessage('msgGSSQuery005',msgGSSQuery005);
    SetGlobalMessage('msgGSSQuery006',msgGSSQuery006);
    SetGlobalMessage('msgGSSQuery007',msgGSSQuery007);
    SetGlobalMessage('msgGSSQuery008',msgGSSQuery008);
    SetGlobalMessage('msgGSSQuery009',msgGSSQuery009);
    SetGlobalMessage('msgGSSQuery010',msgGSSQuery010);
    SetGlobalMessage('msgGSSQuery011',msgGSSQuery011);
  end
  else if pFormClassName = 'TfrmGSSShipping' then
  begin
    SetGlobalMessage('msgGSSShipping001',msgGSSShipping001);
    SetGlobalMessage('msgGSSShipping002',msgGSSShipping002);
    SetGlobalMessage('msgGSSShipping003',msgGSSShipping003);
    SetGlobalMessage('msgGSSShipping004',msgGSSShipping004);
    SetGlobalMessage('msgGSSShipping005',msgGSSShipping005);
    SetGlobalMessage('msgGSSShipping006',msgGSSShipping006);
    SetGlobalMessage('msgGSSShipping007',msgGSSShipping007);
    SetGlobalMessage('msgGSSShipping008',msgGSSShipping008);
    SetGlobalMessage('msgGSSShipping009',msgGSSShipping009);
    SetGlobalMessage('msgGSSShipping010',msgGSSShipping010);
  end
  else if pFormClassName = 'TfrmHosBed' then
  begin
    SetGlobalMessage('msgHosBed001',msgHosBed001);
    SetGlobalMessage('msgHosBed002',msgHosBed002);
    SetGlobalMessage('msgHosBed003',msgHosBed003);
    SetGlobalMessage('msgHosbed004',msgHosbed004);
  end
  else if pFormClassName = 'TfrmHosInfoForm' then
  begin
    SetGlobalMessage('msgHosInfoForm001',msgHosInfoForm001);
    SetGlobalMessage('msgHosInfoForm002',msgHosInfoForm002);
    SetGlobalMessage('msgHosInfoForm003',msgHosInfoForm003);
    SetGlobalMessage('msgHosInfoForm004',msgHosInfoForm004);
  end
  else if pFormClassName = 'TfrmIdentState' then
  begin
    SetGlobalMessage('msgIdentState001',msgIdentState001);
  end
  else if pFormClassName = 'TfrmInPatRequest' then
  begin
    SetGlobalMessage('msgInPatRequest001',msgInPatRequest001);
    SetGlobalMessage('msgInPatRequest002',msgInPatRequest002);
    SetGlobalMessage('msgInPatRequest003',msgInPatRequest003);
    SetGlobalMessage('msgInPatRequest004',msgInPatRequest004);
    SetGlobalMessage('msgInPatRequest005',msgInPatRequest005);
    SetGlobalMessage('msgInPatRequest006',msgInPatRequest006);
    SetGlobalMessage('msgInPatRequest007',msgInPatRequest007);
    SetGlobalMessage('msgInPatRequest008',msgInPatRequest008);
    SetGlobalMessage('msgInPatRequest009',msgInPatRequest009);
    SetGlobalMessage('msgInPatRequest010',msgInPatRequest010);
    SetGlobalMessage('msgInPatRequest011',msgInPatRequest011);
    SetGlobalMessage('msgInPatRequest012',msgInPatRequest012);
    SetGlobalMessage('msgInPatRequest013',msgInPatRequest013);
    SetGlobalMessage('msgInPatRequest014',msgInPatRequest014);
    SetGlobalMessage('msgInPatRequest015',msgInPatRequest015);
    SetGlobalMessage('msgInPatRequest016',msgInPatRequest016);
    SetGlobalMessage('msgInPatRequest017',msgInPatRequest017);
    SetGlobalMessage('msgInPatRequest018',msgInPatRequest018);
    SetGlobalMessage('msgInPatRequest019',msgInPatRequest019);
    SetGlobalMessage('msgInPatRequest020',msgInPatRequest020);
    SetGlobalMessage('msgInPatRequest021',msgInPatRequest021);
    SetGlobalMessage('msgInPatRequest022',msgInPatRequest022);
    SetGlobalMessage('msgInPatRequest023',msgInPatRequest023);
    SetGlobalMessage('msgInPatRequest024',msgInPatRequest024);
    SetGlobalMessage('msgInPatRequest025',msgInPatRequest025);
    SetGlobalMessage('msgInPatRequest026',msgInPatRequest026);
    SetGlobalMessage('msgInPatRequest027',msgInPatRequest027);
    SetGlobalMessage('msgInPatRequest028',msgInPatRequest028);
    SetGlobalMessage('msgInPatRequest029',msgInPatRequest029);
    SetGlobalMessage('msgInPatRequest030',msgInPatRequest030);
    SetGlobalMessage('msgInPatRequest031',msgInPatRequest031);
    SetGlobalMessage('msgInPatRequest032',msgInPatRequest032);
    SetGlobalMessage('msgInPatRequest033',msgInPatRequest033);
    SetGlobalMessage('msgInPatRequest034',msgInPatRequest034);
    SetGlobalMessage('msgInPatRequest035',msgInPatRequest035);
    SetGlobalMessage('msgInPatRequest036',msgInPatRequest036);
    SetGlobalMessage('msgInPatRequest037',msgInPatRequest037);

  end
  else if pFormClassName = 'TfrmInPatRequestList' then
  begin
    SetGlobalMessage('msgInPatRequestList001',msgInPatRequestList001);
    SetGlobalMessage('msgInPatRequestList002',msgInPatRequestList002);
    SetGlobalMessage('msgInPatRequestList003',msgInPatRequestList003);
    SetGlobalMessage('msgInPatRequestList004',msgInPatRequestList004);
    SetGlobalMessage('msgInPatRequestList005',msgInPatRequestList005);
    SetGlobalMessage('msgInPatRequestList006',msgInPatRequestList006);
    SetGlobalMessage('msgInPatRequestList007',msgInPatRequestList007);
    SetGlobalMessage('msgInPatRequestList008',msgInPatRequestList008);
    SetGlobalMessage('msgInPatRequestList009',msgInPatRequestList009);
    SetGlobalMessage('msgInPatRequestList010',msgInPatRequestList010);
    SetGlobalMessage('msgInPatRequestList011',msgInPatRequestList011);
    SetGlobalMessage('msgInPatRequestList012',msgInPatRequestList012);
    SetGlobalMessage('msgInPatRequestList013',msgInPatRequestList013);
    SetGlobalMessage('msgInPatRequestList014',msgInPatRequestList014);
    SetGlobalMessage('msgInPatRequestList015',msgInPatRequestList015);
    SetGlobalMessage('msgInPatRequestList016',msgInPatRequestList016);
    SetGlobalMessage('msgInPatRequestList017',msgInPatRequestList017);
    SetGlobalMessage('msgInPatRequestList018',msgInPatRequestList018);
    SetGlobalMessage('msgInPatRequestList019',msgInPatRequestList019);
    SetGlobalMessage('msgInPatRequestList020',msgInPatRequestList020);
    SetGlobalMessage('msgInPatRequestList021',msgInPatRequestList021);
    SetGlobalMessage('msgInPatRequestList022',msgInPatRequestList022);
    SetGlobalMessage('msgInPatRequestList023',msgInPatRequestList023);
    SetGlobalMessage('msgInPatRequestList024',msgInPatRequestList024);
    SetGlobalMessage('msgInPatRequestList025',msgInPatRequestList025);
    SetGlobalMessage('msgInPatRequestList026',msgInPatRequestList026);
    SetGlobalMessage('msgInPatRequestList027',msgInPatRequestList027);
    SetGlobalMessage('msgInPatRequestList028',msgInPatRequestList028);
    SetGlobalMessage('msgInPatRequestList029',msgInPatRequestList029);
    SetGlobalMessage('msgInpatRequestList030',msgInpatRequestList030);
    SetGlobalMessage('msgInpatRequestList031',msgInpatRequestList031);
    SetGlobalMessage('msgInpatRequestList032',msgInpatRequestList032);
  end
  else if  pFormClassName = 'TfrmInPatReqOpTeams' then
  begin
    SetGlobalMessage('msgInPatReqOpTeams001',msgInPatReqOpTeams001);
    SetGlobalMessage('msgInPatReqOpTeams002',msgInPatReqOpTeams002);
    SetGlobalMessage('msgInPatReqOpTeams003',msgInPatReqOpTeams003);
    SetGlobalMessage('msgInPatReqOpTeams004',msgInPatReqOpTeams004);
    SetGlobalMessage('msgInPatReqOpTeams005',msgInPatReqOpTeams005);
    SetGlobalMessage('msgInPatReqOpTeams006',msgInPatReqOpTeams006);
    SetGlobalMessage('msgInPatReqOpTeams007',msgInPatReqOpTeams007);
  end
  else if pFormClassName = 'TfrmInventoryQuery' then
  begin
    SetGlobalMessage('msgInventoryQuery001',msgInventoryQuery001);
    SetGlobalMessage('msgInventoryQuery002',msgInventoryQuery002);
    SetGlobalMessage('msgInventoryQuery003',msgInventoryQuery003);
  end
  else if pFormClassName = 'TfrmInventoryStock' then
  begin
    SetGlobalMessage('msgInventoryStock001',msgInventoryStock001);
    SetGlobalMessage('msgInventoryStock002',msgInventoryStock002);
    SetGlobalMessage('msgInventoryStock003',msgInventoryStock003);
    SetGlobalMessage('msgInventoryStock004',msgInventoryStock004);
    SetGlobalMessage('msgInventoryStock005',msgInventoryStock005);
    SetGlobalMessage('msgInventoryStock006',msgInventoryStock006);
    SetGlobalMessage('msgInventoryStock007',msgInventoryStock007);
    SetGlobalMessage('msgInventoryStock009',msgInventoryStock009);
    SetGlobalMessage('msgInventoryStock010',msgInventoryStock010);
    SetGlobalMessage('msgInventoryStock011',msgInventoryStock011);
    SetGlobalMessage('msgInventoryStock012',msgInventoryStock012);
    SetGlobalMessage('msgInventoryStock013',msgInventoryStock013);
    SetGlobalMessage('msgInventoryStock014',msgInventoryStock014);
    SetGlobalMessage('msgInventoryStock015',msgInventoryStock015);
    SetGlobalMessage('msgInventoryStock016',msgInventoryStock016);
    SetGlobalMessage('msgInventoryStock017',msgInventoryStock017);
    SetGlobalMessage('msgInventoryStock018',msgInventoryStock018);
    SetGlobalMessage('msgInventoryStock019',msgInventoryStock019);
    SetGlobalMessage('msgInventoryStock020',msgInventoryStock020);
    SetGlobalMessage('msgInventoryStock021',msgInventoryStock021);
    SetGlobalMessage('msgInventoryStock022',msgInventoryStock022);
    SetGlobalMessage('msgInventoryStock023',msgInventoryStock023);
    SetGlobalMessage('msgInventoryStock024',msgInventoryStock024);
  end
  else if pFormClassName = 'TfrmInvoice' then
  begin
    SetGlobalMessage('msgInvoice001',msgInvoice001);
    SetGlobalMessage('msgInvoice002',msgInvoice002);
    SetGlobalMessage('msgInvoice003',msgInvoice003);
    SetGlobalMessage('msgInvoice004',msgInvoice004);
    SetGlobalMessage('msgInvoice005',msgInvoice005);
    SetGlobalMessage('msgInvoice006',msgInvoice006);
    SetGlobalMessage('msgInvoice007',msgInvoice007);
    SetGlobalMessage('msgInvoice008',msgInvoice008);
    SetGlobalMessage('msgInvoice009',msgInvoice009);
    SetGlobalMessage('msgInvoice010',msgInvoice010);
    SetGlobalMessage('msgInvoice011',msgInvoice011);
    SetGlobalMessage('msgInvoice012',msgInvoice012);
    SetGlobalMessage('msgInvoice013',msgInvoice013);
    SetGlobalMessage('msgInvoice014',msgInvoice014);
    SetGlobalMessage('msgInvoice015',msgInvoice015);
    SetGlobalMessage('msgInvoice016',msgInvoice016);
    SetGlobalMessage('msgInvoice017',msgInvoice017);
    SetGlobalMessage('msgInvoice018',msgInvoice018);
    SetGlobalMessage('msgInvoice019',msgInvoice019);
    SetGlobalMessage('msgInvoice020',msgInvoice020);
    SetGlobalMessage('msgInvoice021',msgInvoice021);
    SetGlobalMessage('msgInvoice022',msgInvoice022);
    SetGlobalMessage('msgInvoice023',msgInvoice023);
    SetGlobalMessage('msgInvoice024',msgInvoice024);
    SetGlobalMessage('msgInvoice025',msgInvoice025);
    SetGlobalMessage('msgInvoice026',msgInvoice026);
  end
  else if pFormClassName = 'TfrmEInvoice' then
  begin
     SetGlobalMessage('msgEInvoice001',msgEInvoice001);
     SetGlobalMessage('msgEInvoice002',msgEInvoice002);
     SetGlobalMessage('msgEInvoice003',msgEInvoice003);
     SetGlobalMessage('msgEInvoice004',msgEInvoice004);
     SetGlobalMessage('msgEInvoice005',msgEInvoice005);
     SetGlobalMessage('msgEInvoice006',msgEInvoice006);
  end
  //else if pFormClassName = 'TfrmInvoiceAll' then
  //begin
  //  SetGlobalMessage('msgInvoiceAll001',msgInvoiceAll001);
  //end
  else if pFormClassName = 'TfrmInvoiceGroup' then
  begin
    SetGlobalMessage('msgInvoiceGroup001',msgInvoiceGroup001);
    SetGlobalMessage('msgInvoiceGroup002',msgInvoiceGroup002);
    SetGlobalMessage('msgInvoiceGroup003',msgInvoiceGroup003);
    SetGlobalMessage('msgInvoiceGroup005',msgInvoiceGroup005);
    SetGlobalMessage('msgInvoiceGroup006',msgInvoiceGroup006);
    SetGlobalMessage('msgInvoiceGroup007',msgInvoiceGroup007);
    SetGlobalMessage('msgInvoiceGroup008',msgInvoiceGroup008);
    SetGlobalMessage('msgInvoiceGroup010',msgInvoiceGroup010);
    SetGlobalMessage('msgInvoiceGroup011',msgInvoiceGroup011);
    SetGlobalMessage('msgInvoiceGroup012',msgInvoiceGroup012);
    SetGlobalMessage('msgInvoiceGroup013',msgInvoiceGroup013);
    SetGlobalMessage('msgInvoiceGroup014',msgInvoiceGroup014);
    SetGlobalMessage('msgInvoiceGroup016',msgInvoiceGroup016);
    SetGlobalMessage('msgInvoiceGroup017',msgInvoiceGroup017);
    SetGlobalMessage('msgInvoiceGroup019',msgInvoiceGroup019);
    SetGlobalMessage('msgInvoiceGroup020',msgInvoiceGroup020);
    SetGlobalMessage('msgInvoiceGroup021',msgInvoiceGroup021);
    SetGlobalMessage('msgInvoiceGroup022',msgInvoiceGroup022);
    SetGlobalMessage('msgInvoiceGroup023',msgInvoiceGroup023);
    SetGlobalMessage('msgInvoiceGroup024',msgInvoiceGroup024);
    SetGlobalMessage('msgInvoiceGroup025',msgInvoiceGroup025);
    SetGlobalMessage('msgInvoiceGroup026',msgInvoiceGroup026);
    SetGlobalMessage('msgInvoiceGroup027',msgInvoiceGroup027);
    SetGlobalMessage('msgInvoiceGroup028',msgInvoiceGroup028);
    SetGlobalMessage('msgInvoiceGroup029',msgInvoiceGroup029);
    SetGlobalMessage('msgInvoiceGroup030',msgInvoiceGroup030);
    SetGlobalMessage('msgInvoiceGroup031',msgInvoiceGroup031);
    SetGlobalMessage('msgInvoiceGroup032',msgInvoiceGroup032);
    SetGlobalMessage('msgInvoiceGroup033',msgInvoiceGroup033);
    SetGlobalMessage('msgInvoiceGroup034',msgInvoiceGroup034);
    SetGlobalMessage('msgInvoiceGroup035',msgInvoiceGroup035);
    SetGlobalMessage('msgInvoiceGroup036',msgInvoiceGroup036);
    SetGlobalMessage('msgInvoiceGroup037',msgInvoiceGroup037);
    SetGlobalMessage('msgInvoiceGroup038',msgInvoiceGroup038);
    SetGlobalMessage('msgInvoiceGroup039',msgInvoiceGroup039);
    //SetGlobalMessage('msgInvoiceGroup040',msgInvoiceGroup040);
    SetGlobalMessage('msgInvoiceGroup041',msgInvoiceGroup041);
    SetGlobalMessage('msgInvoiceGroup042',msgInvoiceGroup042);
    SetGlobalMessage('msgInvoiceGroup043',msgInvoiceGroup043);
    SetGlobalMessage('msgInvoiceGroup044',msgInvoiceGroup044);
    SetGlobalMessage('msgInvoiceGroup045',msgInvoiceGroup045);
    SetGlobalMessage('msgInvoiceGroup046',msgInvoiceGroup046);
    SetGlobalMessage('msgInvoiceGroup047',msgInvoiceGroup047);
    SetGlobalMessage('msgInvoiceGroup048',msgInvoiceGroup048);
    SetGlobalMessage('msgInvoiceGroup049',msgInvoiceGroup049);
    SetGlobalMessage('msgInvoiceGroup052',msgInvoiceGroup052);
    SetGlobalMessage('msgInvoiceGroup053',msgInvoiceGroup053);
    SetGlobalMessage('msgInvoiceGroup054',msgInvoiceGroup054);
    SetGlobalMessage('msgInvoiceGroup055',msgInvoiceGroup055);
    SetGlobalMessage('msgInvoiceGroup056',msgInvoiceGroup056);
    SetGlobalMessage('msgInvoiceGroup057',msgInvoiceGroup057);
    SetGlobalMessage('msgInvoiceGroup058',msgInvoiceGroup058);
    SetGlobalMessage('msgInvoiceGroup059',msgInvoiceGroup059);
    SetGlobalMessage('msgInvoiceGroup060',msgInvoiceGroup060);
    SetGlobalMessage('msgInvoiceGroup061',msgInvoiceGroup061);
    SetGlobalMessage('msgInvoiceGroup062',msgInvoiceGroup062);
    SetGlobalMessage('msgInvoiceGroup063',msgInvoiceGroup063);
    SetGlobalMessage('msgInvoiceGroup064',msgInvoiceGroup064);
    SetGlobalMessage('msgInvoiceGroup065',msgInvoiceGroup065);
    SetGlobalMessage('msgInvoiceGroup066',msgInvoiceGroup066);
    SetGlobalMessage('msgInvoiceGroup067',msgInvoiceGroup067);
    SetGlobalMessage('msgInvoiceGroup068',msgInvoiceGroup068);
    SetGlobalMessage('msgInvoiceGroup069',msgInvoiceGroup069);
    SetGlobalMessage('msgInvoiceGroup070',msgInvoiceGroup070);
    //SetGlobalMessage('msgInvoiceGroup071',msgInvoiceGroup071);
    SetGlobalMessage('msgInvoiceGroup072',msgInvoiceGroup072);
    SetGlobalMessage('msgInvoiceGroup073',msgInvoiceGroup073);
    SetGlobalMessage('msgInvoiceGroup074',msgInvoiceGroup074);
    SetGlobalMessage('msgInvoiceGroup075',msgInvoiceGroup075);
    SetGlobalMessage('msgInvoiceGroup076',msgInvoiceGroup076);
    SetGlobalMessage('msgInvoiceGroup077',msgInvoiceGroup077);
    SetGlobalMessage('msgInvoiceGroup078',msgInvoiceGroup078);
    SetGlobalMessage('msgInvoiceGroup079',msgInvoiceGroup079);
    SetGlobalMessage('msgInvoiceGroup080',msgInvoiceGroup080);
    SetGlobalMessage('msgInvoiceGroup081',msgInvoiceGroup081);
    SetGlobalMessage('msgInvoiceGroup082',msgInvoiceGroup082);
    SetGlobalMessage('msgInvoiceGroup083',msgInvoiceGroup083);
    SetGlobalMessage('msgInvoiceGroup084',msgInvoiceGroup084);
    SetGlobalMessage('msgInvoiceGroup085',msgInvoiceGroup085);
    SetGlobalMessage('msgInvoiceGroup086',msgInvoiceGroup086);
    SetGlobalMessage('msgInvoiceGroup087',msgInvoiceGroup087);
    SetGlobalMessage('msgInvoiceGroup088',msgInvoiceGroup088);
    SetGlobalMessage('msgInvoiceGroup089',msgInvoiceGroup089);
    SetGlobalMessage('msgInvoiceGroup090',msgInvoiceGroup090);
    SetGlobalMessage('msgInvoiceGroup091',msgInvoiceGroup091);
    SetGlobalMessage('msgInvoiceGroup092',msgInvoiceGroup092);
    SetGlobalMessage('msgInvoiceGroup093',msgInvoiceGroup093);
    SetGlobalMessage('msgInvoiceGroup094',msgInvoiceGroup094);
    SetGlobalMessage('msgInvoiceGroup095',msgInvoiceGroup095);
    SetGlobalMessage('msgInvoiceGroup096',msgInvoiceGroup096);
    SetGlobalMessage('msgInvoiceGroup097',msgInvoiceGroup097);
    SetGlobalMessage('msgInvoiceGroup098',msgInvoiceGroup098);
    SetGlobalMessage('msgInvoiceGroup099',msgInvoiceGroup099);
    SetGlobalMessage('msgInvoiceGroup100',msgInvoiceGroup100);
    SetGlobalMessage('msgInvoiceGroup101',msgInvoiceGroup101);
    SetGlobalMessage('msgInvoiceGroup102',msgInvoiceGroup102);
    SetGlobalMessage('msgInvoiceGroup103',msgInvoiceGroup103);
    SetGlobalMessage('msgInvoiceGroup104',msgInvoiceGroup104);
    SetGlobalMessage('msgInvoiceGroup105',msgInvoiceGroup105);
    SetGlobalMessage('msgInvoiceGroup106',msgInvoiceGroup106);
    SetGlobalMessage('msgInvoiceGroup107',msgInvoiceGroup107);
    SetGlobalMessage('msgInvoiceGroup108',msgInvoiceGroup108);
    SetGlobalMessage('msgInvoiceGroup109',msgInvoiceGroup109);
  end
  else if pFormClassName = 'TfrmInvoiceInfo' then
  begin
    SetGlobalMessage('msgInvoiceInfo001',msgInvoiceInfo001);
    SetGlobalMessage('msgInvoiceInfo002',msgInvoiceInfo002);
    SetGlobalMessage('msgInvoiceInfo003',msgInvoiceInfo003);
    SetGlobalMessage('msgInvoiceInfo004',msgInvoiceInfo004);
    SetGlobalMessage('msgInvoiceInfo005',msgInvoiceInfo005);
    SetGlobalMessage('msgInvoiceInfo006',msgInvoiceInfo006);
    SetGlobalMessage('msgInvoiceInfo007',msgInvoiceInfo007);
  end
  else if pFormClassName = 'TfrmInvoiceNumber' then
  begin
    SetGlobalMessage('msgInvoiceNumber001',msgInvoiceNumber001);
    SetGlobalMessage('msgInvoiceNumber002',msgInvoiceNumber002);
  end
  else if pFormClassName = 'TfrmInvPreControls' then
  begin
    SetGlobalMessage('msgInvPreControls001',msgInvPreControls001);
    SetGlobalMessage('msgInvPreControls003',msgInvPreControls003);
    SetGlobalMessage('msgInvPreControls004',msgInvPreControls004);
    SetGlobalMessage('msgInvPreControls005',msgInvPreControls005);
    SetGlobalMessage('msgInvPreControls006',msgInvPreControls006);
    SetGlobalMessage('msgInvPreControls007',msgInvPreControls007);
    SetGlobalMessage('msgInvPreControls008',msgInvPreControls008);
    SetGlobalMessage('msgInvPreControls009',msgInvPreControls009);
  end
  else if pFormClassName = 'TfrmJobDescription' then
  begin
    SetGlobalMessage('msgJobDescription001',msgJobDescription001);
    SetGlobalMessage('msgJobDescription003',msgJobDescription003);
    SetGlobalMessage('msgJobDescription004',msgJobDescription004);
    SetGlobalMessage('msgJobDescription005',msgJobDescription005);
    SetGlobalMessage('msgJobDescription006',msgJobDescription006);
    SetGlobalMessage('msgJobDescription007',msgJobDescription007);
    SetGlobalMessage('msgJobDescription008',msgJobDescription008);
    SetGlobalMessage('msgJobDescription009',msgJobDescription009);
    SetGlobalMessage('msgJobDescription010',msgJobDescription010);
    SetGlobalMessage('msgJobDescription011',msgJobDescription011);
    SetGlobalMessage('msgJobDescription012',msgJobDescription012);
  end
  else if pFormClassName = 'TfrmJobList' then
  begin
    SetGlobalMessage('msgJobList001',msgJobList001);
    SetGlobalMessage('msgJobList002',msgJobList002);
    SetGlobalMessage('msgJobList003',msgJobList003);
    SetGlobalMessage('msgJobList004',msgJobList004);
    SetGlobalMessage('msgJobList005',msgJobList005);
    SetGlobalMessage('msgJobList006',msgJobList006);
    SetGlobalMessage('msgJobList007',msgJobList007);
    SetGlobalMessage('msgJobList008',msgJobList008);
    SetGlobalMessage('msgJobList009',msgJobList009);
    SetGlobalMessage('msgJobList010',msgJobList010);
    SetGlobalMessage('msgJobList011',msgJobList011);
    SetGlobalMessage('msgJobList012',msgJobList012);
    SetGlobalMessage('msgJobList013',msgJobList013);
    SetGlobalMessage('msgJobList014',msgJobList014);
    SetGlobalMessage('msgJobList015',msgJobList015);
    SetGlobalMessage('msgJobList016',msgJobList016);
    SetGlobalMessage('msgJobList017',msgJobList017);
    SetGlobalMessage('msgJobList018',msgJobList018);
    SetGlobalMessage('msgJobList019',msgJobList019);
    SetGlobalMessage('msgJobList020',msgJobList020);
    SetGlobalMessage('msgJobList021',msgJobList021);
    SetGlobalMessage('msgJobList022',msgJobList022);
    SetGlobalMessage('msgJobList023',msgJobList023);
    SetGlobalMessage('msgJobList024',msgJobList024);
    SetGlobalMessage('msgJobList025',msgJobList025);
    SetGlobalMessage('msgJobList028',msgJobList028);
    SetGlobalMessage('msgJobList029',msgJobList029);
    SetGlobalMessage('msgJobList030',msgJobList030);
    SetGlobalMessage('msgJobList031',msgJobList031);
    SetGlobalMessage('msgJobList032',msgJobList032);
    SetGlobalMessage('msgJobList033',msgJobList033);
    SetGlobalMessage('msgJobList034',msgJobList034);
    SetGlobalMessage('msgJobList035',msgJobList035);
    SetGlobalMessage('msgJobList036',msgJobList036);
    SetGlobalMessage('msgJobList037',msgJobList037);
    SetGlobalMessage('msgJobList038',msgJobList038);
    SetGlobalMessage('msgJobList039',msgJobList039);
    SetGlobalMessage('msgJobList040',msgJobList040);
    SetGlobalMessage('msgJobList041',msgJobList041);
    SetGlobalMessage('msgJobList042',msgJobList042);
    SetGlobalMessage('msgJobList043',msgJobList043);
    SetGlobalMessage('msgJobList044',msgJobList044);
    SetGlobalMessage('msgJobList045',msgJobList045);
    SetGlobalMessage('msgJobList046',msgJobList046);
    SetGlobalMessage('msgJobList047',msgJobList047);
    SetGlobalMessage('msgJobList048',msgJobList048);
    SetGlobalMessage('msgJobList049',msgJobList049);
    SetGlobalMessage('msgJobList050',msgJobList050);
    SetGlobalMessage('msgJobList051',msgJobList051);
    SetGlobalMessage('msgJobList052',msgJobList052);
    SetGlobalMessage('msgJobList053',msgJobList053);
    SetGlobalMessage('msgJobList054',msgJobList054);
  end
  else if pFormClassName = 'TfrmJobFollowUpQuery' then
  begin
    SetGlobalMessage('msgJobFolluwUpQuery001',msgJobFolluwUpQuery001);
    SetGlobalMessage('msgJobFolluwUpQuery002',msgJobFolluwUpQuery002);

  end
  else if pFormClassName = 'TfrmKiosk' then
  begin
    SetGlobalMessage('msgKiosk001',msgKiosk001);
    SetGlobalMessage('msgKiosk002',msgKiosk002);
    SetGlobalMessage('msgKiosk003',msgKiosk003);
    SetGlobalMessage('msgKiosk004',msgKiosk004);
    SetGlobalMessage('msgKiosk005',msgKiosk005);
  end
  else if pFormClassName = 'TfrmLabAntecedentResults' then
  begin
    SetGlobalMessage('msgLabAntecedentResults001',msgLabAntecedentResults001);
  end
  else if pFormClassName = 'TfrmLabCalculatedTestDefines' then
  begin
    SetGlobalMessage('msgLabCalculatedTestDefines001',msgLabCalculatedTestDefines001);
    SetGlobalMessage('msgLabCalculatedTestDefines002',msgLabCalculatedTestDefines002);
    SetGlobalMessage('msgLabCalculatedTestDefines003',msgLabCalculatedTestDefines003);
    SetGlobalMessage('msgLabCalculatedTestDefines004',msgLabCalculatedTestDefines004);
    SetGlobalMessage('msgLabCalculatedTestDefines005',msgLabCalculatedTestDefines005);
    SetGlobalMessage('msgLabCalculatedTestDefines006',msgLabCalculatedTestDefines006);
    SetGlobalMessage('msgLabCalculatedTestDefines007',msgLabCalculatedTestDefines007);
  end
  else if pFormClassName = 'TfrmLabInstruments' then
  begin
    SetGlobalMessage('msgLabInstruments001',msgLabInstruments001);
    SetGlobalMessage('msgLabInstruments002',msgLabInstruments002);
    SetGlobalMessage('msgLabInstruments003',msgLabInstruments003);
    SetGlobalMessage('msgLabInstruments004',msgLabInstruments004);
    SetGlobalMessage('msgLabInstruments005',msgLabInstruments005);
  end
  else if pFormClassName = 'TfrmLabDynamicTestDefines' then
  begin
    SetGlobalMessage('msgLabDynamicTestDefines001',msgLabDynamicTestDefines001);
    SetGlobalMessage('msgLabDynamicTestDefines002',msgLabDynamicTestDefines002);
  end
  else if pFormClassName = 'TfrmLabOutLabResult' then
  begin
    SetGlobalMessage('msgLabOutLabResult001',msgLabOutLabResult001);
    SetGlobalMessage('msgLabOutLabResult002',msgLabOutLabResult002);
    SetGlobalMessage('msgLabOutLabResult003',msgLabOutLabResult003);
  end
  else if pFormClassName = 'TfrmLabOdsDefines' then
  begin
    SetGlobalMessage('msgLabOdsDefines001',msgLabOdsDefines001);
    SetGlobalMessage('msgLabOdsDefines002',msgLabOdsDefines002);
    SetGlobalMessage('msgLabOdsDefines003',msgLabOdsDefines003);
    SetGlobalMessage('msgLabOdsDefines004',msgLabOdsDefines004);
    SetGlobalMessage('msgLabOdsDefines005',msgLabOdsDefines005);
    SetGlobalMessage('msgLabOdsDefines006',msgLabOdsDefines006);
    SetGlobalMessage('msgLabOdsDefines007',msgLabOdsDefines007);
    SetGlobalMessage('msgLabOdsDefines008',msgLabOdsDefines008);
    SetGlobalMessage('msgLabOdsDefines009',msgLabOdsDefines009);
    SetGlobalMessage('msgLabOdsDefines010',msgLabOdsDefines010);
    SetGlobalMessage('msgLabOdsDefines011',msgLabOdsDefines011);
    SetGlobalMessage('msgLabOdsDefines012',msgLabOdsDefines012);
  end
  else if pFormClassName = 'TfrmLabQCDefinitions' then
  begin
    SetGlobalMessage('msgLabQCDefines001',msgLabQCDefines001);
    SetGlobalMessage('msgLabQCDefines002',msgLabQCDefines002);
    SetGlobalMessage('msgLabQCDefines003',msgLabQCDefines003);
  end
  else if pFormClassName = 'TfrmLabSampleBarcodePrint' then
  begin
    SetGlobalMessage('msgLabSampleBarcodePrint001',msgLabSampleBarcodePrint001);
    SetGlobalMessage('msgLabSampleBarcodePrint002',msgLabSampleBarcodePrint002);
  end
  else if pFormClassName = 'TfrmLabTestDefines' then
  begin
    SetGlobalMessage('msgLabTestDefines001',msgLabTestDefines001);
    SetGlobalMessage('msgLabTestDefines003',msgLabTestDefines003);
    SetGlobalMessage('msgLabTestDefines004',msgLabTestDefines004);
    SetGlobalMessage('msgLabTestDefines005',msgLabTestDefines005);
    SetGlobalMessage('msgLabTestDefines006',msgLabTestDefines006);
    SetGlobalMessage('msgLabTestDefines007',msgLabTestDefines007);
    SetGlobalMessage('msgLabTestDefines008',msgLabTestDefines008);
    SetGlobalMessage('msgLabTestDefines009',msgLabTestDefines009);
    SetGlobalMessage('msgLabTestDefines010',msgLabTestDefines010);
    SetGlobalMessage('msgLabTestDefines011',msgLabTestDefines011);
    SetGlobalMessage('msgLabTestDefines012',msgLabTestDefines012);
    SetGlobalMessage('msgLabTestDefines013',msgLabTestDefines013);
    SetGlobalMessage('msgLabTestDefines014',msgLabTestDefines014);
    SetGlobalMessage('msgLabTestDefines015',msgLabTestDefines015);
    SetGlobalMessage('msgLabTestDefines016',msgLabTestDefines016);
    SetGlobalMessage('msgLabTestDefines017',msgLabTestDefines017);
    SetGlobalMessage('msgLabTestDefines018',msgLabTestDefines018);
    SetGlobalMessage('msgLabTestDefines019',msgLabTestDefines019);
    SetGlobalMessage('msgLabTestDefines020',msgLabTestDefines020);
    SetGlobalMessage('msgLabTestDefines021',msgLabTestDefines021);
    SetGlobalMessage('msgLabTestDefines022',msgLabTestDefines022);
    SetGlobalMessage('msgLabTestDefines023',msgLabTestDefines023);
    SetGlobalMessage('msgLabTestDefines024',msgLabTestDefines024);
  end
  else if pFormClassName = 'TfrmLabTestResults' then
  begin
    SetGlobalMessage('msgLabTestResults002',msgLabTestResults002);
    SetGlobalMessage('msgLabTestResults003',msgLabTestResults003);
    SetGlobalMessage('msgLabTestResults004',msgLabTestResults004);
    SetGlobalMessage('msgLabTestResults005',msgLabTestResults005);
    SetGlobalMessage('msgLabTestResults006',msgLabTestResults006);
    SetGlobalMessage('msgLabTestResults007',msgLabTestResults007);
    SetGlobalMessage('msgLabTestResults008',msgLabTestResults008);
    SetGlobalMessage('msgLabTestResults009',msgLabTestResults009);
    SetGlobalMessage('msgLabTestResults011',msgLabTestResults011);
    //SetGlobalMessage('msgLabTestResults012',msgLabTestResults012);
    SetGlobalMessage('msgLabTestResults013',msgLabTestResults013);
    SetGlobalMessage('msgLabTestResults014',msgLabTestResults014);
    SetGlobalMessage('msgLabTestResults015',msgLabTestResults015);
    SetGlobalMessage('msgLabTestResults016',msgLabTestResults016);
    SetGlobalMessage('msgLabTestResults017',msgLabTestResults017);
    SetGlobalMessage('msgLabTestResults018',msgLabTestResults018);
    SetGlobalMessage('msgLabTestResults019',msgLabTestResults019);
    SetGlobalMessage('msgLabTestResults020',msgLabTestResults020);
    SetGlobalMessage('msgLabTestResults021',msgLabTestResults021);
    SetGlobalMessage('msgLabTestResults022',msgLabTestResults022);
    SetGlobalMessage('msgLabTestResults023',msgLabTestResults023);
    SetGlobalMessage('msgLabTestResults024',msgLabTestResults024);
    SetGlobalMessage('msgLabTestResults025',msgLabTestResults025);
    SetGlobalMessage('msgLabTestResults026',msgLabTestResults026);
    SetGlobalMessage('msgLabTestResults027',msgLabTestResults027);
    SetGlobalMessage('msgLabTestResults028',msgLabTestResults028);
    SetGlobalMessage('msgLabTestResults029',msgLabTestResults029);
    SetGlobalMessage('msgLabTestResults030',msgLabTestResults030);
    SetGlobalMessage('msgLabTestResults031',msgLabTestResults031);
    SetGlobalMessage('msgLabTestResults032',msgLabTestResults032);
    SetGlobalMessage('msgLabTestResults033',msgLabTestResults033);
    SetGlobalMessage('msgLabTestResults034',msgLabTestResults034);
    SetGlobalMessage('msgLabTestResults035',msgLabTestResults035);
    SetGlobalMessage('msgLabTestResults036',msgLabTestResults036);
    SetGlobalMessage('msgLabTestResults037',msgLabTestResults037);
    SetGlobalMessage('msgLabTestResults038',msgLabTestResults038);
    SetGlobalMessage('msgLabTestResults039',msgLabTestResults039);
  end
  else if pFormClassName = 'TfrmLabPatSampleType' then
  begin
    SetGlobalMessage('msgLabPatSampleType001',msgLabPatSampleType001);
    SetGlobalMessage('msgLabPatSampleType002',msgLabPatSampleType002);
    SetGlobalMessage('msgLabPatSampleType003',msgLabPatSampleType003);
    SetGlobalMessage('msgLabPatSampleType004',msgLabPatSampleType004);
    SetGlobalMessage('msgLabPatSampleType005',msgLabPatSampleType005);
    SetGlobalMessage('msgLabPatSampleType006',msgLabPatSampleType006);
    SetGlobalMessage('msgLabPatSampleType007',msgLabPatSampleType007);
    SetGlobalMessage('msgLabPatSampleType008',msgLabPatSampleType008);
    SetGlobalMessage('msgLabPatSampleType009',msgLabPatSampleType009);
  end
  else if pFormClassName = 'TfrmLangResEdit' then
  begin
    SetGlobalMessage('msgLangResEdit001',msgLangResEdit001);
  end
  else if pFormClassName = 'TfrmLogoTransfer' then
  begin
    SetGlobalMessage('msgLogoTransfer001',msgLogoTransfer001);
    SetGlobalMessage('msgLogoTransfer002',msgLogoTransfer002);
    SetGlobalMessage('msgLogoTransfer003',msgLogoTransfer003);
    SetGlobalMessage('msgLogoTransfer004',msgLogoTransfer004);
    SetGlobalMessage('msgLogoTransfer005',msgLogoTransfer005);
    SetGlobalMessage('msgLogoTransfer006',msgLogoTransfer006);
    SetGlobalMessage('msgLogoTransfer007',msgLogoTransfer007);
    SetGlobalMessage('msgLogoTransfer008',msgLogoTransfer008);
    SetGlobalMessage('msgLogoTransfer009',msgLogoTransfer009);
    SetGlobalMessage('msgLogoTransfer010',msgLogoTransfer010);
    SetGlobalMessage('msgLogoTransfer011',msgLogoTransfer011);
    SetGlobalMessage('msgLogoTransfer012',msgLogoTransfer012);
    SetGlobalMessage('msgLogoTransfer013',msgLogoTransfer013);
    SetGlobalMessage('msgLogoTransfer014',msgLogoTransfer014);
    SetGlobalMessage('msgLogoTransfer015',msgLogoTransfer015);
    SetGlobalMessage('msgLogoTransfer016',msgLogoTransfer016);
    SetGlobalMessage('msgLogoTransfer017',msgLogoTransfer017);
    SetGlobalMessage('msgLogoTransfer018',msgLogoTransfer018);
    SetGlobalMessage('msgLogoTransfer019',msgLogoTransfer019);
    SetGlobalMessage('msgLogoTransfer020',msgLogoTransfer020);
    SetGlobalMessage('msgLogoTransfer021',msgLogoTransfer021);
    SetGlobalMessage('msgLogoTransfer022',msgLogoTransfer022);
  end
  else if pFormClassName = 'TfrmMainAss' then
  begin
    SetGlobalMessage('msgMainAss001',msgMainAss001);
    SetGlobalMessage('msgMainAss002',msgMainAss002);
    SetGlobalMessage('msgMainAss003',msgMainAss003);
  end
  else if pFormClassName = 'TfrmMain' then
  begin
    SetGlobalMessage('msgMainForm001',msgMainForm001);
    SetGlobalMessage('msgMainForm002',msgMainForm002);
    SetGlobalMessage('msgMainForm003',msgMainForm003);
    SetGlobalMessage('msgMainForm004',msgMainForm004);
    SetGlobalMessage('msgMainForm005',msgMainForm005);
    SetGlobalMessage('msgMainForm006',msgMainForm006);
    SetGlobalMessage('msgMainForm007',msgMainForm007);
    SetGlobalMessage('msgMainForm008',msgMainForm008);
    SetGlobalMessage('msgMainForm009',msgMainForm009);
    SetGlobalMessage('msgMainForm010',msgMainForm010);
    SetGlobalMessage('msgMainForm011',msgMainForm011);
    SetGlobalMessage('msgMainForm012',msgMainForm012);
    SetGlobalMessage('msgMainForm013',msgMainForm013);
    SetGlobalMessage('msgMainForm014',msgMainForm014);
    SetGlobalMessage('msgMainForm015',msgMainForm015);
    SetGlobalMessage('msgMainForm016',msgMainForm016);
    SetGlobalMessage('msgMainForm017',msgMainForm017);
    SetGlobalMessage('msgMainForm018',msgMainForm018);
    SetGlobalMessage('msgMainForm019',msgMainForm019);
    SetGlobalMessage('msgMainForm020',msgMainForm020);
    SetGlobalMessage('msgMainForm021',msgMainForm021);
    SetGlobalMessage('msgMainForm022',msgMainForm022);
    SetGlobalMessage('msgMainForm023',msgMainForm023);
    SetGlobalMessage('msgMainForm024',msgMainForm024);
    SetGlobalMessage('msgMainForm025',msgMainForm025);
    SetGlobalMessage('msgMainForm026',msgMainForm026);
    SetGlobalMessage('msgMainForm027',msgMainForm027);
    SetGlobalMessage('msgMainForm028',msgMainForm028);
    SetGlobalMessage('msgMainForm029',msgMainForm029);
    SetGlobalMessage('msgMainForm030',msgMainForm030);
    SetGlobalMessage('msgMainForm031',msgMainForm031);
    SetGlobalMessage('msgMainForm032',msgMainForm032);
    SetGlobalMessage('msgMainForm033',msgMainForm033);
    SetGlobalMessage('msgMainForm034',msgMainForm034);
    SetGlobalMessage('msgMainForm035',msgMainForm035);
    SetGlobalMessage('msgMainForm036',msgMainForm036);
    SetGlobalMessage('msgMainForm037',msgMainForm037);
    SetGlobalMessage('msgMainForm038',msgMainForm038);
    SetGlobalMessage('msgMainForm039',msgMainForm039);
    SetGlobalMessage('msgMainForm040',msgMainForm040);
    SetGlobalMessage('msgMainForm041',msgMainForm041);
    SetGlobalMessage('msgMainForm042',msgMainForm042);
    SetGlobalMessage('msgMainForm043',msgMainForm043);
    SetGlobalMessage('msgMainForm044',msgMainForm044);
    SetGlobalMessage('msgMainForm045',msgMainForm045);
    SetGlobalMessage('msgMainForm046',msgMainForm046);
    SetGlobalMessage('msgMainForm047',msgMainForm047);
    SetGlobalMessage('msgMainForm048',msgMainForm048);
    SetGlobalMessage('msgMainForm049',msgMainForm049);
  end
  else if pFormClassName = 'TfrmMainMedCard' then
  begin
    SetGlobalMessage('msgMainMedCard001',msgMainMedCard001);
    SetGlobalMessage('msgMainMedCard002',msgMainMedCard002);
    SetGlobalMessage('msgMainMedCard003',msgMainMedCard003);
    SetGlobalMessage('msgMainMedCard004',msgMainMedCard004);
    SetGlobalMessage('msgMainMedCard005',msgMainMedCard005);
    SetGlobalMessage('msgMainMedCard006',msgMainMedCard006);
    SetGlobalMessage('msgMainMedCard007',msgMainMedCard007);
    SetGlobalMessage('msgMainMedCard008',msgMainMedCard008);
    SetGlobalMessage('msgMainMedCard009',msgMainMedCard009);
    SetGlobalMessage('msgMainMedCard010',msgMainMedCard010);
    SetGlobalMessage('msgMainMedCard011',msgMainMedCard011);
    SetGlobalMessage('msgMainMedCard012',msgMainMedCard012);
    SetGlobalMessage('msgMainMedCard013',msgMainMedCard013);
    SetGlobalMessage('msgMainMedCard014',msgMainMedCard014);
    SetGlobalMessage('msgMainMedCard016',msgMainMedCard016);
    SetGlobalMessage('msgMainMedCard017',msgMainMedCard017);
    SetGlobalMessage('msgMainMedCard018',msgMainMedCard018);
    SetGlobalMessage('msgMainMedCard019',msgMainMedCard019);
    SetGlobalMessage('msgMainMedCard020',msgMainMedCard020);
    SetGlobalMessage('msgMainMedCard021',msgMainMedCard021);
    SetGlobalMessage('msgMainMedCard022',msgMainMedCard022);
    SetGlobalMessage('msgMainMedCard024',msgMainMedCard024);
    SetGlobalMessage('msgMainMedCard026',msgMainMedCard026);
    SetGlobalMessage('msgMainMedCard027',msgMainMedCard027);
    SetGlobalMessage('msgMainMedCard028',msgMainMedCard028);
    SetGlobalMessage('msgMainMedCard029',msgMainMedCard029);
    SetGlobalMessage('msgMainMedCard030',msgMainMedCard030);
    SetGlobalMessage('msgMainMedCard031',msgMainMedCard031);
    SetGlobalMessage('msgMainMedCard032',msgMainMedCard032);
    SetGlobalMessage('msgMainMedCard033',msgMainMedCard033);
    SetGlobalMessage('msgMainMedCard034',msgMainMedCard034);
    SetGlobalMessage('msgMainMedCard035',msgMainMedCard035);
    SetGlobalMessage('msgMainMedCard036',msgMainMedCard036);
    SetGlobalMessage('msgMainMedCard037',msgMainMedCard037);
    SetGlobalMessage('msgMainMedCard038',msgMainMedCard038);
    setGlobalMessage('msgMainMedCard038',msgMainMedCard039);
    SetGlobalMessage('msgMainMedCard040',msgMainMedCard040);
    SetGlobalMessage('msgMainMedCard041',msgMainMedCard041);
    SetGlobalMessage('msgMainMedCard042',msgMainMedCard042);
    SetGlobalMessage('msgMainMedCard043',msgMainMedCard043);
    SetGlobalMessage('msgMainMedCard044',msgMainMedCard044);
    SetGlobalMessage('msgMainMedCard045',msgMainMedCard045);
    SetGlobalMessage('msgMainMedCard046',msgMainMedCard046);
    SetGlobalMessage('msgMainMedCard047',msgMainMedCard047);
    SetGlobalMessage('msgMainMedCard048',msgMainMedCard048);
    SetGlobalMessage('msgMainMedCard049',msgMainMedCard049);
    SetGlobalMessage('msgMainMedCard050',msgMainMedCard050);
    SetGlobalMessage('msgMainMedCard051',msgMainMedCard051);
    SetGlobalMessage('msgMainMedCard052',msgMainMedCard052);
    SetGlobalMessage('msgMainMedCard053',msgMainMedCard053);
    SetGlobalMessage('msgMainMedCard054',msgMainMedCard054);
    SetGlobalMessage('msgMainMedCard055',msgMainMedCard055);
    SetGlobalMessage('msgMainMedCard056',msgMainMedCard056);
    SetGlobalMessage('msgMainMedCard057',msgMainMedCard057);
    SetGlobalMessage('msgMainMedCard058',msgMainMedCard058);
    SetGlobalMessage('msgMainMedCard059',msgMainMedCard059);
    SetGlobalMessage('msgMainMedCard060',msgMainMedCard060);
    SetGlobalMessage('msgMainMedCard061',msgMainMedCard061);
    SetGlobalMessage('msgMainMedCard062',msgMainMedCard062);
    SetGlobalMessage('msgMainMedCard063',msgMainMedCard063);
  end
  else if pFormClassName = 'TfrmMaintenanceDescription' then
  begin
    SetGlobalMessage('msgMaintenanceDescription001',msgMaintenanceDescription001);
    SetGlobalMessage('msgMaintenanceDescription002',msgMaintenanceDescription002);
    SetGlobalMessage('msgMaintenanceDescription003',msgMaintenanceDescription003);
    SetGlobalMessage('msgMaintenanceDescription004',msgMaintenanceDescription004);
  end
  else if pFormClassName = 'TfrmMaterialFactorInteractions' then
  begin
    SetGlobalMessage('msgMaterialFactorInteractions001',msgMaterialFactorInteractions001);
    SetGlobalMessage('msgMaterialFactorInteractions002',msgMaterialFactorInteractions002);
    SetGlobalMessage('msgMaterialFactorInteractions003',msgMaterialFactorInteractions003);
    SetGlobalMessage('msgMaterialFactorInteractions004',msgMaterialFactorInteractions004);
    SetGlobalMessage('msgMaterialFactorInteractions005',msgMaterialFactorInteractions005);
    SetGlobalMessage('msgMaterialFactorInteractions006',msgMaterialFactorInteractions006);
    SetGlobalMessage('msgMaterialFactorInteractions007',msgMaterialFactorInteractions007);
    SetGlobalMessage('msgMaterialFactorInteractions008',msgMaterialFactorInteractions008);
    SetGlobalMessage('msgMaterialFactorInteractions009',msgMaterialFactorInteractions009);
  end
  else if pFormClassName = 'TfrmMaterialInvoice' then
  begin
    SetGlobalMessage('msgMaterialInvoice001',msgMaterialInvoice001);
    SetGlobalMessage('msgMaterialInvoice002',msgMaterialInvoice002);
    SetGlobalMessage('msgMaterialInvoice003',msgMaterialInvoice003);
    SetGlobalMessage('msgMaterialInvoice004',msgMaterialInvoice004);
    SetGlobalMessage('msgMaterialInvoice005',msgMaterialInvoice005);
    SetGlobalMessage('msgMaterialInvoice006',msgMaterialInvoice006);
    SetGlobalMessage('msgMaterialInvoice007',msgMaterialInvoice007);
    SetGlobalMessage('msgMaterialInvoice008',msgMaterialInvoice008);
    SetGlobalMessage('msgMaterialInvoice009',msgMaterialInvoice009);
    SetGlobalMessage('msgMaterialInvoice010',msgMaterialInvoice010);
    SetGlobalMessage('msgMaterialInvoice011',msgMaterialInvoice011);
    SetGlobalMessage('msgMaterialInvoice012',msgMaterialInvoice012);
    SetGlobalMessage('msgMaterialInvoice013',msgMaterialInvoice013);
    SetGlobalMessage('msgMaterialInvoice014',msgMaterialInvoice014);
    SetGlobalMessage('msgMaterialInvoice015',msgMaterialInvoice015);
    SetGlobalMessage('msgMaterialInvoice016',msgMaterialInvoice016);
    SetGlobalMessage('msgMaterialInvoice017',msgMaterialInvoice017);
    SetGlobalMessage('msgMaterialInvoice018',msgMaterialInvoice018);
    SetGlobalMessage('msgMaterialInvoice019',msgMaterialInvoice019);
    SetGlobalMessage('msgMaterialInvoice020',msgMaterialInvoice020);
    SetGlobalMessage('msgMaterialInvoice021',msgMaterialInvoice021);
    SetGlobalMessage('msgMaterialInvoice022',msgMaterialInvoice022);
    SetGlobalMessage('msgMaterialInvoice023',msgMaterialInvoice023);
    SetGlobalMessage('msgMaterialInvoice024',msgMaterialInvoice024);
    SetGlobalMessage('msgMaterialInvoice025',msgMaterialInvoice025);
    SetGlobalMessage('msgMaterialInvoice026',msgMaterialInvoice026);
    SetGlobalMessage('msgMaterialInvoice027',msgMaterialInvoice027);
    SetGlobalMessage('msgMaterialInvoice028',msgMaterialInvoice028);
    SetGlobalMessage('msgMaterialInvoice029',msgMaterialInvoice029);
    SetGlobalMessage('msgMaterialInvoice030',msgMaterialInvoice030);
    SetGlobalMessage('msgMaterialInvoice031',msgMaterialInvoice031);
    SetGlobalMessage('msgMaterialInvoice032',msgMaterialInvoice032);
    SetGlobalMessage('msgMaterialInvoice033',msgMaterialInvoice033);
    SetGlobalMessage('msgMaterialInvoice034',msgMaterialInvoice034);
    SetGlobalMessage('msgMaterialInvoice035',msgMaterialInvoice035);
    SetGlobalMessage('msgMaterialInvoice036',msgMaterialInvoice036);
    SetGlobalMessage('msgMaterialInvoice037',msgMaterialInvoice037);
    SetGlobalMessage('msgMaterialInvoice038',msgMaterialInvoice038);
    SetGlobalMessage('msgMaterialInvoice039',msgMaterialInvoice039);
    SetGlobalMessage('msgMaterialInvoice040',msgMaterialInvoice040);
    SetGlobalMessage('msgMaterialInvoice041',msgMaterialInvoice041);
    SetGlobalMessage('msgMaterialInvoice042',msgMaterialInvoice042);
    SetGlobalMessage('msgMaterialInvoice043',msgMaterialInvoice043);
    SetGlobalMessage('msgMaterialInvoice044',msgMaterialInvoice044);
    SetGlobalMessage('msgMaterialInvoice045',msgMaterialInvoice045);
    SetGlobalMessage('msgMaterialInvoice046',msgMaterialInvoice046);
    SetGlobalMessage('msgMaterialInvoice047',msgMaterialInvoice047);
    SetGlobalMessage('msgMaterialInvoice048',msgMaterialInvoice048);
    SetGlobalMessage('msgMaterialInvoice049',msgMaterialInvoice049);
    SetGlobalMessage('msgMaterialInvoice050',msgMaterialInvoice050);
    SetGlobalMessage('msgMaterialInvoice051',msgMaterialInvoice051);
    SetGlobalMessage('msgMaterialInvoice052',msgMaterialInvoice052);
    SetGlobalMessage('msgMaterialInvoice053',msgMaterialInvoice053);
    SetGlobalMessage('msgMaterialInvoice055',msgMaterialInvoice055);
    SetGlobalMessage('msgMaterialInvoice056',msgMaterialInvoice056);
    SetGlobalMessage('msgMaterialInvoice057',msgMaterialInvoice057);
    SetGlobalMessage('msgMaterialInvoice058',msgMaterialInvoice058);
    SetGlobalMessage('msgMaterialInvoice059',msgMaterialInvoice059);
    SetGlobalMessage('msgMaterialInvoice060',msgMaterialInvoice060);
    SetGlobalMessage('msgMaterialInvoice061',msgMaterialInvoice061);
    SetGlobalMessage('msgMaterialInvoice062',msgMaterialInvoice062);
    SetGlobalMessage('msgMaterialInvoice063',msgMaterialInvoice063);
    SetGlobalMessage('msgMaterialInvoice064',msgMaterialInvoice064);
    SetGlobalMessage('msgMaterialInvoice065',msgMaterialInvoice065);
    SetGlobalMessage('msgMaterialInvoice066',msgMaterialInvoice066);
    SetGlobalMessage('msgMaterialInvoice067',msgMaterialInvoice067);
    SetGlobalMessage('msgMaterialInvoice068',msgMaterialInvoice068);
    SetGlobalMessage('msgMaterialInvoice069',msgMaterialInvoice069);
    SetGlobalMessage('msgMaterialInvoice070',msgMaterialInvoice070);
    SetGlobalMessage('msgMaterialInvoice071',msgMaterialInvoice071);
    SetGlobalMessage('msgMaterialInvoice072',msgMaterialInvoice072);
    SetGlobalMessage('msgMaterialInvoice073',msgMaterialInvoice073);
    SetGlobalMessage('msgMaterialInvoice074',msgMaterialInvoice074);
    SetGlobalMessage('msgMaterialInvoice075',msgMaterialInvoice075);
    SetGlobalMessage('msgMaterialInvoice076',msgMaterialInvoice076);
    SetGlobalMessage('msgMaterialInvoice077',msgMaterialInvoice077);
    SetGlobalMessage('msgMaterialInvoice078',msgMaterialInvoice078);
    SetGlobalMessage('msgMaterialInvoice079',msgMaterialInvoice079);
    SetGlobalMessage('msgMaterialInvoice080',msgMaterialInvoice080);
    SetGlobalMessage('msgMaterialInvoice081',msgMaterialInvoice081);
    SetGlobalMessage('msgMaterialInvoice082',msgMaterialInvoice082);
    SetGlobalMessage('msgMaterialInvoice083',msgMaterialInvoice083);
    SetGlobalMessage('msgMaterialInvoice084',msgMaterialInvoice084);
    SetGlobalMessage('msgMaterialInvoice085',msgMaterialInvoice085);
    SetGlobalMessage('msgMaterialInvoice086',msgMaterialInvoice086);
    SetGlobalMessage('msgMaterialInvoice087',msgMaterialInvoice087);
    SetGlobalMessage('msgMaterialInvoice088',msgMaterialInvoice088);
    SetGlobalMessage('msgMaterialInvoice089',msgMaterialInvoice089);
    SetGlobalMessage('msgMaterialInvoice090',msgMaterialInvoice090);
    SetGlobalMessage('msgMaterialInvoice091',msgMaterialInvoice091);
    SetGlobalMessage('msgMaterialInvoice092',msgMaterialInvoice092);
    SetGlobalMessage('msgMaterialInvoice093',msgMaterialInvoice093);
    SetGlobalMessage('msgMaterialInvoice094',msgMaterialInvoice094);
    SetGlobalMessage('msgMaterialInvoice095',msgMaterialInvoice095);
    SetGlobalMessage('msgMaterialInvoice096',msgMaterialInvoice096);
    SetGlobalMessage('msgMaterialInvoice097',msgMaterialInvoice097);
    SetGlobalMessage('msgMaterialInvoice098',msgMaterialInvoice098);
    SetGlobalMessage('msgMaterialInvoice099',msgMaterialInvoice099);
    SetGlobalMessage('msgMaterialInvoice100',msgMaterialInvoice100);
    SetGlobalMessage('msgMaterialInvoice101',msgMaterialInvoice101);
    SetGlobalMessage('msgMaterialInvoice102',msgMaterialInvoice102);
    SetGlobalMessage('msgMaterialInvoice103',msgMaterialInvoice103);
    SetGlobalMessage('msgMaterialInvoice104',msgMaterialInvoice104);
    SetGlobalMessage('msgMaterialInvoice105',msgMaterialInvoice105);//196142;BACL;28.06.2020
  end
  else if pFormClassName = 'TfrmMaterialWareHouseDetail' then
  begin
    SetGlobalMessage('msgMaterialWareHouseDetail001',msgMaterialWareHouseDetail001);
    SetGlobalMessage('msgMaterialWareHouseDetail002',msgMaterialWareHouseDetail002);
    SetGlobalMessage('msgMaterialWareHouseDetail003',msgMaterialWareHouseDetail003);
    SetGlobalMessage('msgMaterialWareHouseDetail004',msgMaterialWareHouseDetail004);
    SetGlobalMessage('msgMaterialWareHouseDetail005',msgMaterialWareHouseDetail005);
    SetGlobalMessage('msgMaterialWareHouseDetail006',msgMaterialWareHouseDetail006);
    SetGlobalMessage('msgMaterialWareHouseDetail007',msgMaterialWareHouseDetail007);
    SetGlobalMessage('msgMaterialWareHouseDetail008',msgMaterialWareHouseDetail008);
    SetGlobalMessage('msgMaterialWareHouseDetail009',msgMaterialWareHouseDetail009);
    SetGlobalMessage('msgMaterialWareHouseDetail010',msgMaterialWareHouseDetail010);
    SetGlobalMessage('msgMaterialWareHouseDetail011',msgMaterialWareHouseDetail011);
  end
  else if pFormClassName = 'TfrmMaterials_def' then
  begin
    SetGlobalMessage('msgMaterial_Def001',msgMaterial_Def001);
    SetGlobalMessage('msgMaterial_Def002',msgMaterial_Def002);
    SetGlobalMessage('msgMaterial_Def003',msgMaterial_Def003);
    SetGlobalMessage('msgMaterial_Def004',msgMaterial_Def004);
    SetGlobalMessage('msgMaterial_Def005',msgMaterial_Def005);
    SetGlobalMessage('msgMaterial_Def007',msgMaterial_Def007);
    SetGlobalMessage('msgMaterial_Def008',msgMaterial_Def008);
    SetGlobalMessage('msgMaterial_Def009',msgMaterial_Def009);
    SetGlobalMessage('msgMaterial_Def011',msgMaterial_Def011);
    SetGlobalMessage('msgMaterial_Def012',msgMaterial_Def012);
    SetGlobalMessage('msgMaterial_Def013',msgMaterial_Def013);
    SetGlobalMessage('msgMaterial_Def014',msgMaterial_Def014);
    SetGlobalMessage('msgMaterial_Def015',msgMaterial_Def015);
    SetGlobalMessage('msgMaterial_Def016',msgMaterial_Def016);
    SetGlobalMessage('msgMaterial_Def017',msgMaterial_Def017);
    SetGlobalMessage('msgMaterial_Def018',msgMaterial_Def018);
    SetGlobalMessage('msgMaterial_Def019',msgMaterial_Def019);
    SetGlobalMessage('msgMaterial_Def020',msgMaterial_Def020);
    SetGlobalMessage('msgMaterial_Def021',msgMaterial_Def021);
    SetGlobalMessage('msgMaterial_Def022',msgMaterial_Def022);
    SetGlobalMessage('msgMaterial_Def023',msgMaterial_Def023);
    SetGlobalMessage('msgMaterial_Def024',msgMaterial_Def024);
    SetGlobalMessage('msgMaterial_Def025',msgMaterial_Def025);
    SetGlobalMessage('msgMaterial_Def026',msgMaterial_Def026);
    SetGlobalMessage('msgMaterial_Def027',msgMaterial_Def027);
    SetGlobalMessage('msgMaterial_Def028',msgMaterial_Def028);
    SetGlobalMessage('msgMaterial_Def029',msgMaterial_Def029);
    SetGlobalMessage('msgMaterial_Def030',msgMaterial_Def030);
    SetGlobalMessage('msgMaterial_Def031',msgMaterial_Def031);

  end
  else if pFormClassName = 'TfrmMessenger' then
  begin
    SetGlobalMessage('msgMessenger001',msgMessenger001);
    SetGlobalMessage('msgMessenger002',msgMessenger002);
  end
  else if pFormClassName = 'TfrmNewSearchPatient' then
  begin
    SetGlobalMessage('msgNewSearchPatient001',msgNewSearchPatient001);
    SetGlobalMessage('msgNewSearchPatient002',msgNewSearchPatient002);
    SetGlobalMessage('msgNewSearchPatient003',msgNewSearchPatient003);
  end
  else if pFormClassName = 'TfrmIsparkSendCar' then
  begin
    SetGlobalMessage('msgIsparkPatientCar001',msgIsparkPatientCar001);
    SetGlobalMessage('msgIsparkPatientCar002',msgIsparkPatientCar002);
    SetGlobalMessage('msgIsparkPatientCar003',msgIsparkPatientCar003);
    SetGlobalMessage('msgIsparkPatientCar004',msgIsparkPatientCar004);
  end
  else if pFormClassName = 'TfrmObjects' then
  begin
    SetGlobalMessage('msgObjects001',msgObjects001);
    SetGlobalMessage('msgObjects002',msgObjects002);
    SetGlobalMessage('msgObjects003',msgObjects003);
    SetGlobalMessage('msgObjects004',msgObjects004);
    SetGlobalMessage('msgObjects006',msgObjects006);
    SetGlobalMessage('msgObjects007',msgObjects007);
    SetGlobalMessage('msgObjects008',msgObjects008);
    SetGlobalMessage('msgObjects009',msgObjects009);
  end
  else if pFormClassName = 'TfrmPackageDefinition' then
  begin
    SetGlobalMessage('msgPackageDefinition001',msgPackageDefinition001);
    SetGlobalMessage('msgPackageDefinition004',msgPackageDefinition004);
    SetGlobalMessage('msgPackageDefinition005',msgPackageDefinition005);
    SetGlobalMessage('msgPackageDefinition006',msgPackageDefinition006);
    SetGlobalMessage('msgPackageDefinition007',msgPackageDefinition007);
  end
  else if pFormClassName = 'TfrmPassword' then
  begin
    SetGlobalMessage('msgPassword001',msgPassword001);
    SetGlobalMessage('msgPassword002',msgPassword002);
    SetGlobalMessage('msgPassword003',msgPassword003);
  end
  else if pFormClassName = 'TfrmPatBlackList' then
  begin
    SetGlobalMessage('msgPatBlackList001',msgPatBlackList001);
    SetGlobalMessage('msgPatBlackList002',msgPatBlackList002);
    SetGlobalMessage('msgPatBlackList003',msgPatBlackList003);
    SetGlobalMessage('msgPatBlackList004',msgPatBlackList004);
    SetGlobalMessage('msgPatBlackList005',msgPatBlackList005);
    SetGlobalMessage('msgPatBlackList006',msgPatBlackList006);
    SetGlobalMessage('msgPatBlackList007',msgPatBlackList007);
  end
  else if pFormClassName = 'TfrmPatGenInfo' then
  begin
    SetGlobalMessage('msgPatGenInfo001',msgPatGenInfo001);
    SetGlobalMessage('msgPatGenInfo002',msgPatGenInfo002);
    SetGlobalMessage('msgPatGenInfo003',msgPatGenInfo003);
    SetGlobalMessage('msgPatGenInfo004',msgPatGenInfo004);
    SetGlobalMessage('msgPatGenInfo005',msgPatGenInfo005);
    SetGlobalMessage('msgPatGenInfo006',msgPatGenInfo006);
    SetGlobalMessage('msgPatGenInfo007',msgPatGenInfo007);
    SetGlobalMessage('msgPatGenInfo008',msgPatGenInfo008);
  end
  else if pFormClassName = 'TfrmPatIdentity' then
  begin //LRF_ID = 2
    SetGlobalMessage('msgPatIdentity002',msgPatIdentity002);
    SetGlobalMessage('msgPatIdentity003',msgPatIdentity003);
    SetGlobalMessage('msgPatIdentity004',msgPatIdentity004);
    SetGlobalMessage('msgPatIdentity005',msgPatIdentity005);
    SetGlobalMessage('msgPatIdentity006',msgPatIdentity006);
    SetGlobalMessage('msgPatIdentity007',msgPatIdentity007);
    SetGlobalMessage('msgPatIdentity008',msgPatIdentity008);
    SetGlobalMessage('msgPatIdentity009',msgPatIdentity009);
    SetGlobalMessage('msgPatIdentity010',msgPatIdentity010);
    SetGlobalMessage('msgPatIdentity011',msgPatIdentity011);
    SetGlobalMessage('msgPatIdentity012',msgPatIdentity012);
    SetGlobalMessage('msgPatIdentity013',msgPatIdentity013);
    SetGlobalMessage('msgPatIdentity014',msgPatIdentity014);
    SetGlobalMessage('msgPatIdentity015',msgPatIdentity015);
    SetGlobalMessage('msgPatIdentity017',msgPatIdentity017);
    SetGlobalMessage('msgPatIdentity018',msgPatIdentity018);
    SetGlobalMessage('msgPatIdentity019',msgPatIdentity019);
    SetGlobalMessage('msgPatIdentity021',msgPatIdentity021);
    SetGlobalMessage('msgPatIdentity022',msgPatIdentity022);
    SetGlobalMessage('msgPatIdentity023',msgPatIdentity023);
    SetGlobalMessage('msgPatIdentity024',msgPatIdentity024);
    SetGlobalMessage('msgPatIdentity025',msgPatIdentity025);
    SetGlobalMessage('msgPatIdentity026',msgPatIdentity026);
    SetGlobalMessage('msgPatIdentity027',msgPatIdentity027);
    SetGlobalMessage('msgPatIdentity028',msgPatIdentity028);
    SetGlobalMessage('msgPatIdentity029',msgPatIdentity029);
    SetGlobalMessage('msgPatIdentity030',msgPatIdentity030);
    SetGlobalMessage('msgPatIdentity031',msgPatIdentity031);
    SetGlobalMessage('msgPatIdentity032',msgPatIdentity032);
    SetGlobalMessage('msgPatIdentity033',msgPatIdentity033);
    SetGlobalMessage('msgPatIdentity034',msgPatIdentity034);
    SetGlobalMessage('msgPatIdentity035',msgPatIdentity035);
    SetGlobalMessage('msgPatIdentity036',msgPatIdentity036);
    SetGlobalMessage('msgPatIdentity037',msgPatIdentity037);
    SetGlobalMessage('msgPatIdentity038',msgPatIdentity038);
    SetGlobalMessage('msgPatIdentity039',msgPatIdentity039);
    SetGlobalMessage('msgPatIdentity040',msgPatIdentity040);
    SetGlobalMessage('msgPatIdentity041',msgPatIdentity041);
    SetGlobalMessage('msgPatIdentity042',msgPatIdentity042);
    SetGlobalMessage('msgPatIdentity043',msgPatIdentity043);
    SetGlobalMessage('msgPatIdentity044',msgPatIdentity044);
    SetGlobalMessage('msgPatIdentity045',msgPatIdentity045);
    SetGlobalMessage('msgPatIdentity046',msgPatIdentity046);
    SetGlobalMessage('msgPatIdentity047',msgPatIdentity047);
    SetGlobalMessage('msgPatIdentity048',msgPatIdentity048);
    SetGlobalMessage('msgPatIdentity049',msgPatIdentity049);
    SetGlobalMessage('msgPatIdentity050',msgPatIdentity050);
    SetGlobalMessage('msgPatIdentity051',msgPatIdentity051);
    SetGlobalMessage('msgPatIdentity052',msgPatIdentity052);
    SetGlobalMessage('msgPatIdentity053',msgPatIdentity053);
    SetGlobalMessage('msgPatIdentity054',msgPatIdentity054);
    SetGlobalMessage('msgPatIdentity055',msgPatIdentity055);
    SetGlobalMessage('msgPatIdentity056',msgPatIdentity056);
    SetGlobalMessage('msgPatIdentity057',msgPatIdentity057);
    SetGlobalMessage('msgPatIdentity058',msgPatIdentity058);
    SetGlobalMessage('msgPatIdentity059',msgPatIdentity059);
    SetGlobalMessage('msgPatIdentity060',msgPatIdentity060);
    SetGlobalMessage('msgPatIdentity061',msgPatIdentity061);
    SetGlobalMessage('msgPatIdentity062',msgPatIdentity062);
    SetGlobalMessage('msgPatIdentity063',msgPatIdentity063);
    SetGlobalMessage('msgPatIdentity064',msgPatIdentity064);
    SetGlobalMessage('msgPatIdentity065',msgPatIdentity065);
    SetGlobalMessage('msgPatIdentity066',msgPatIdentity066);
    SetGlobalMessage('msgPatIdentity067',msgPatIdentity067);
  end
  else if pFormClassName = 'TfrmPatientDialysis' then
  begin
    SetGlobalMessage('msgPatientDialysis001',msgPatientDialysis001);
    SetGlobalMessage('msgPatientDialysis002',msgPatientDialysis002);
    SetGlobalMessage('msgPatientDialysis003',msgPatientDialysis003);
    SetGlobalMessage('msgPatientDialysis004',msgPatientDialysis004);
    SetGlobalMessage('msgPatientDialysis005',msgPatientDialysis005);
    SetGlobalMessage('msgPatientDialysis006',msgPatientDialysis006);
  end
  else if pFormClassName = 'TfrmPatientDialysisList' then
  begin
    SetGlobalMessage('msgPatientDialysisList002',msgPatientDialysisList002);
  end
  else if pFormClassName = 'TfrmPatientFile' then
  begin
    SetGlobalMessage('msgPatientFile001',msgPatientFile001);
    SetGlobalMessage('msgPatientFile002',msgPatientFile002);
    SetGlobalMessage('msgPatientFile003',msgPatientFile003);
    SetGlobalMessage('msgPatientFile004',msgPatientFile004);
    SetGlobalMessage('msgPatientFile005',msgPatientFile005);
    SetGlobalMessage('msgPatientFile006',msgPatientFile006);
    SetGlobalMessage('msgPatientFile007',msgPatientFile007);
    SetGlobalMessage('msgPatientFile008',msgPatientFile008);
    SetGlobalMessage('msgPatientFile009',msgPatientFile009);
    SetGlobalMessage('msgPatientFile011',msgPatientFile011);
    SetGlobalMessage('msgPatientFile012',msgPatientFile012);
    SetGlobalMessage('msgPatientFile013',msgPatientFile013);
    SetGlobalMessage('msgPatientFile014',msgPatientFile014);
    SetGlobalMessage('msgPatientFile015',msgPatientFile015);
    SetGlobalMessage('msgPatientFile016',msgPatientFile016);
    SetGlobalMessage('msgPatientFile017',msgPatientFile017);
    SetGlobalMessage('msgPatientFile018',msgPatientFile018);
    SetGlobalMessage('msgPatientFile019',msgPatientFile019);
    SetGlobalMessage('msgPatientFile020',msgPatientFile020);
    SetGlobalMessage('msgPatientFile021',msgPatientFile021);
    SetGlobalMessage('msgPatientFile022',msgPatientFile022);
    SetGlobalMessage('msgPatientFile023',msgPatientFile023);
    SetGlobalMessage('msgPatientFile024',msgPatientFile024);
    SetGlobalMessage('msgPatientFile025',msgPatientFile025);
    SetGlobalMessage('msgPatientFile026',msgPatientFile026);
    SetGlobalMessage('msgPatientFile027',msgPatientFile027);
    SetGlobalMessage('msgPatientFile028',msgPatientFile028);
    SetGlobalMessage('msgPatientFile029',msgPatientFile029);
    SetGlobalMessage('msgPatientFile030',msgPatientFile030);
    SetGlobalMessage('msgPatientFile031',msgPatientFile031);
    SetGlobalMessage('msgPatientFile033',msgPatientFile033);
    SetGlobalMessage('msgPatientFile034',msgPatientFile034);
    SetGlobalMessage('msgPatientFile035',msgPatientFile035);
    SetGlobalMessage('msgPatientFile036',msgPatientFile036);
    SetGlobalMessage('msgPatientFile037',msgPatientFile037);
    SetGlobalMessage('msgPatientFile039',msgPatientFile039);
    SetGlobalMessage('msgPatientFile040',msgPatientFile040);
    SetGlobalMessage('msgPatientFile043',msgPatientFile043);
    SetGlobalMessage('msgPatientFile047',msgPatientFile047);
    SetGlobalMessage('msgPatientFile048',msgPatientFile048);
    SetGlobalMessage('msgPatientFile049',msgPatientFile049);
    SetGlobalMessage('msgPatientFile050',msgPatientFile050);
    SetGlobalMessage('msgPatientFile051',msgPatientFile051);
    SetGlobalMessage('msgPatientFile052',msgPatientFile052);
    SetGlobalMessage('msgPatientFile053',msgPatientFile053);
    SetGlobalMessage('msgPatientFile055',msgPatientFile055);
    SetGlobalMessage('msgPatientFile056',msgPatientFile056);
    SetGlobalMessage('msgPatientFile057',msgPatientFile057);
    SetGlobalMessage('msgPatientFile058',msgPatientFile058);
    SetGlobalMessage('msgPatientFile059',msgPatientFile059);
    SetGlobalMessage('msgPatientFile060',msgPatientFile060);
    SetGlobalMessage('msgPatientFile061',msgPatientFile061);
    SetGlobalMessage('msgPatientFile062',msgPatientFile062);
    SetGlobalMessage('msgPatientFile063',msgPatientFile063);
    SetGlobalMessage('msgPatientFile064',msgPatientFile064);
    SetGlobalMessage('msgPatientFile065',msgPatientFile065);
    SetGlobalMessage('msgPatientFile066',msgPatientFile066);
    SetGlobalMessage('msgPatientFile067',msgPatientFile067);
    SetGlobalMessage('msgPatientFile068',msgPatientFile068);
    SetGlobalMessage('msgPatientFile071',msgPatientFile071);
    SetGlobalMessage('msgPatientFile072',msgPatientFile072);
    SetGlobalMessage('msgPatientFile074',msgPatientFile074);
    SetGlobalMessage('msgPatientFile075',msgPatientFile075);
    SetGlobalMessage('msgPatientFile076',msgPatientFile076);
    SetGlobalMessage('msgPatientFile077',msgPatientFile077);
    SetGlobalMessage('msgPatientFile079',msgPatientFile079);
    SetGlobalMessage('msgPatientFile080',msgPatientFile080);
    SetGlobalMessage('msgPatientFile081',msgPatientFile081);
    SetGlobalMessage('msgPatientFile082',msgPatientFile082);
    SetGlobalMessage('msgPatientFile083',msgPatientFile083);
    SetGlobalMessage('msgPatientFile084',msgPatientFile084);
    SetGlobalMessage('msgPatientFile085',msgPatientFile085);
    SetGlobalMessage('msgPatientFile086',msgPatientFile086);
    SetGlobalMessage('msgPatientFile087',msgPatientFile087);
    SetGlobalMessage('msgPatientFile088',msgPatientFile088);
    SetGlobalMessage('msgPatientFile089',msgPatientFile089);
    SetGlobalMessage('msgPatientFile090',msgPatientFile090);
    SetGlobalMessage('msgPatientFile091',msgPatientFile091);
    SetGlobalMessage('msgPatientFile093',msgPatientFile093);
    SetGlobalMessage('msgPatientFile094',msgPatientFile094);
    SetGlobalMessage('msgPatientFile095',msgPatientFile095);
    SetGlobalMessage('msgPatientFile096',msgPatientFile096);
    SetGlobalMessage('msgPatientFile097',msgPatientFile097);
    SetGlobalMessage('msgPatientFile102',msgPatientFile102);
    SetGlobalMessage('msgPatientFile103',msgPatientFile103);
    SetGlobalMessage('msgPatientFile104',msgPatientFile104);
    SetGlobalMessage('msgPatientFile105',msgPatientFile105);
    SetGlobalMessage('msgPatientFile106',msgPatientFile106);
    SetGlobalMessage('msgPatientFile107',msgPatientFile107);
    SetGlobalMessage('msgPatientFile108',msgPatientFile108);
    SetGlobalMessage('msgPatientFile109',msgPatientFile109);
    SetGlobalMessage('msgPatientFile111',msgPatientFile111);
    SetGlobalMessage('msgPatientFile112',msgPatientFile112);
    SetGlobalMessage('msgPatientFile114',msgPatientFile114);
    SetGlobalMessage('msgPatientFile115',msgPatientFile115);
    SetGlobalMessage('msgPatientFile116',msgPatientFile116);
    SetGlobalMessage('msgPatientFile117',msgPatientFile117);
    SetGlobalMessage('msgPatientFile118',msgPatientFile118);
    SetGlobalMessage('msgPatientFile119',msgPatientFile119);
    SetGlobalMessage('msgPatientFile120',msgPatientFile120);
    SetGlobalMessage('msgPatientFile121',msgPatientFile121);
    SetGlobalMessage('msgPatientFile122',msgPatientFile122);
    SetGlobalMessage('msgPatientFile123',msgPatientFile123);
    SetGlobalMessage('msgPatientFile124',msgPatientFile124);
    SetGlobalMessage('msgPatientFile125',msgPatientFile125);
    SetGlobalMessage('msgPatientFile126',msgPatientFile126);
    SetGlobalMessage('msgPatientFile127',msgPatientFile127);
    SetGlobalMessage('msgPatientFile128',msgPatientFile128);
    SetGlobalMessage('msgPatientFile129',msgPatientFile129);
    SetGlobalMessage('msgPatientFile130',msgPatientFile130);
    SetGlobalMessage('msgPatientFile131',msgPatientFile131);
    SetGlobalMessage('msgPatientFile132',msgPatientFile132);
    SetGlobalMessage('msgPatientFile133',msgPatientFile133);
    SetGlobalMessage('msgPatientFile134',msgPatientFile134);
    SetGlobalMessage('msgPatientFile135',msgPatientFile135);
    SetGlobalMessage('msgPatientFile136',msgPatientFile136);
    SetGlobalMessage('msgPatientFile137',msgPatientFile137);
    SetGlobalMessage('msgPatientFile138',msgPatientFile138);
    SetGlobalMessage('msgPatientFile139',msgPatientFile139);
    SetGlobalMessage('msgPatientFile140',msgPatientFile140);
    SetGlobalMessage('msgPatientFile141',msgPatientFile141);
    SetGlobalMessage('msgPatientFile142',msgPatientFile142);
    SetGlobalMessage('msgPatientFile143',msgPatientFile143);
    SetGlobalMessage('msgPatientFile144',msgPatientFile144);
    SetGlobalMessage('msgPatientFile145',msgPatientFile145);
    SetGlobalMessage('msgPatientFile146',msgPatientFile146);
    SetGlobalMessage('msgPatientFile147',msgPatientFile147);
    SetGlobalMessage('msgPatientFile148',msgPatientFile148);
    SetGlobalMessage('msgPatientFile149',msgPatientFile149);
    SetGlobalMessage('msgPatientFile150',msgPatientFile150);
    SetGlobalMessage('msgPatientFile151',msgPatientFile151);
    SetGlobalMessage('msgPatientFile152',msgPatientFile152);
    SetGlobalMessage('msgPatientFile153',msgPatientFile153);
    SetGlobalMessage('msgPatientFile154',msgPatientFile154);
    SetGlobalMessage('msgPatientFile155',msgPatientFile155);
    SetGlobalMessage('msgPatientFile156',msgPatientFile156);
    SetGlobalMessage('msgPatientFile157',msgPatientFile157);
    SetGlobalMessage('msgPatientFile158',msgPatientFile158);
    SetGlobalMessage('msgPatientFile159',msgPatientFile159);
    SetGlobalMessage('msgPatientFile160',msgPatientFile160);
    SetGlobalMessage('msgPatientFile161',msgPatientFile161);
    SetGlobalMessage('msgPatientFile162',msgPatientFile162);
    SetGlobalMessage('msgPatientFile163',msgPatientFile163);
    SetGlobalMessage('msgPatientFile164',msgPatientFile164);
    SetGlobalMessage('msgPatientFile165',msgPatientFile165);
    SetGlobalMessage('msgPatientFile166',msgPatientFile166);
    SetGlobalMessage('msgPatientFile167',msgPatientFile167);
    SetGlobalMessage('msgPatientFile168',msgPatientFile168);
    SetGlobalMessage('msgPatientFile169',msgPatientFile169);
    SetGlobalMessage('msgPatientFile170',msgPatientFile170);
    SetGlobalMessage('msgPatientFile171',msgPatientFile171);
    SetGlobalMessage('msgPatientFile172',msgPatientFile172);
    SetGlobalMessage('msgPatientFile173',msgPatientFile173);
    SetGlobalMessage('msgPatientFile174',msgPatientFile174);
    SetGlobalMessage('msgPatientFile175',msgPatientFile175);
    SetGlobalMessage('msgPatientFile176',msgPatientFile176);
    SetGlobalMessage('msgPatientFile177',msgPatientFile177);
    SetGlobalMessage('msgPatientFile178',msgPatientFile178);
    SetGlobalMessage('msgPatientFile179',msgPatientFile179);
    SetGlobalMessage('msgPatientFile180',msgPatientFile180);
    SetGlobalMessage('msgPatientFile181',msgPatientFile181);
    SetGlobalMessage('msgPatientFile182',msgPatientFile182);
    SetGlobalMessage('msgPatientFile183',msgPatientFile183);
    SetGlobalMessage('msgPatientFile184',msgPatientFile184);
    SetGlobalMessage('msgPatientFile185',msgPatientFile185);
    SetGlobalMessage('msgPatientFile186',msgPatientFile186);
    SetGlobalMessage('msgPatientFile187',msgPatientFile187);
    SetGlobalMessage('msgPatientFile188',msgPatientFile188);
    SetGlobalMessage('msgPatientFile189',msgPatientFile189);
    SetGlobalMessage('msgPatientFile190',msgPatientFile190);
    SetGlobalMessage('msgPatientFile191',msgPatientFile191);
    SetGlobalMessage('msgPatientFile192',msgPatientFile192);
    SetGlobalMessage('msgPatientFile193',msgPatientFile193);
    SetGlobalMessage('msgPatientFile194',msgPatientFile194);
    SetGlobalMessage('msgPatientFile195',msgPatientFile195);
    SetGlobalMessage('msgPatientFile196',msgPatientFile196);
    SetGlobalMessage('msgPatientFile197',msgPatientFile197);
    SetGlobalMessage('msgPatientFile198',msgPatientFile198);
    SetGlobalMessage('msgPatientFile199',msgPatientFile199);
    SetGlobalMessage('msgPatientFile200',msgPatientFile200);
    SetGlobalMessage('msgPatientFile201',msgPatientFile201);
    SetGlobalMessage('msgPatientFile202',msgPatientFile202);
    SetGlobalMessage('msgPatientFile203',msgPatientFile203);
    SetGlobalMessage('msgPatientFile204',msgPatientFile204);
    SetGlobalMessage('msgPatientFile205',msgPatientFile205);
    SetGlobalMessage('msgPatientFile206',msgPatientFile206);
    SetGlobalMessage('msgPatientFile207',msgPatientFile207);
    SetGlobalMessage('msgPatientFile208',msgPatientFile208);
    SetGlobalMessage('msgPatientFile209',msgPatientFile209);
    SetGlobalMessage('msgPatientFile210',msgPatientFile210);
    SetGlobalMessage('msgPatientFile211',msgPatientFile211);
    SetGlobalMessage('msgPatientFile212',msgPatientFile212);
  end
  else if pFormClassName = 'TfrmPatFileMove' then
  begin
    SetGlobalMessage('msgPatFileMove001',msgPatFileMove001);
    SetGlobalMessage('msgPatFileMove002',msgPatFileMove002);
    SetGlobalMessage('msgPatFileMove003',msgPatFileMove003);
    SetGlobalMessage('msgPatFileMove004',msgPatFileMove004);
  end
  else if pFormClassName = 'TfrmPatientProcessDetail' then
  begin
    SetGlobalMessage('msgPatientProcessDetail001',msgPatientProcessDetail001);
    SetGlobalMessage('msgPatientProcessDetail002',msgPatientProcessDetail002);
    SetGlobalMessage('msgPatientProcessDetail003',msgPatientProcessDetail003);
    SetGlobalMessage('msgPatientProcessDetail004',msgPatientProcessDetail004);
    SetGlobalMessage('msgPatientProcessDetail005',msgPatientProcessDetail005);
    SetGlobalMessage('msgPatientProcessDetail006',msgPatientProcessDetail006);
    SetGlobalMessage('msgPatientProcessDetail007',msgPatientProcessDetail007);
    SetGlobalMessage('msgPatientProcessDetail008',msgPatientProcessDetail008);
    SetGlobalMessage('msgPatientProcessDetail009',msgPatientProcessDetail009);
    //SetGlobalMessage('msgPatientProcessDetail010',msgPatientProcessDetail010);
    SetGlobalMessage('msgPatientProcessDetail012',msgPatientProcessDetail012);
    SetGlobalMessage('msgPatientProcessDetail013',msgPatientProcessDetail013);
    SetGlobalMessage('msgPatientProcessDetail014',msgPatientProcessDetail014);
    SetGlobalMessage('msgPatientProcessDetail015',msgPatientProcessDetail015);
    SetGlobalMessage('msgPatientProcessDetail016',msgPatientProcessDetail016);
    SetGlobalMessage('msgPatientProcessDetail017',msgPatientProcessDetail017);
    SetGlobalMessage('msgPatientProcessDetail018',msgPatientProcessDetail018);
    SetGlobalMessage('msgPatientProcessDetail019',msgPatientProcessDetail019);
    SetGlobalMessage('msgPatientProcessDetail020',msgPatientProcessDetail020);
    SetGlobalMessage('msgPatientProcessDetail021',msgPatientProcessDetail021);
    SetGlobalMessage('msgPatientProcessDetail022',msgPatientProcessDetail022);
    SetGlobalMessage('msgPatientProcessDetail023',msgPatientProcessDetail023);
    SetGlobalMessage('msgPatientProcessDetail024',msgPatientProcessDetail024);
    SetGlobalMessage('msgPatientProcessDetail025',msgPatientProcessDetail025);
    SetGlobalMessage('msgPatientProcessDetail026',msgPatientProcessDetail026);
    SetGlobalMessage('msgPatientProcessDetail027',msgPatientProcessDetail027);
    SetGlobalMessage('msgPatientProcessDetail028',msgPatientProcessDetail028);
    SetGlobalMessage('msgPatientProcessDetail029',msgPatientProcessDetail029);
    SetGlobalMessage('msgPatientProcessDetail030',msgPatientProcessDetail030);
  end
  else if pFormClassName = 'TfrmPatientRequest' then
  begin
    SetGlobalMessage('msgPatientRequest001',msgPatientRequest001);
    SetGlobalMessage('msgPatientRequest002',msgPatientRequest002);
    SetGlobalMessage('msgPatientRequest003',msgPatientRequest003);
    SetGlobalMessage('msgPatientRequest004',msgPatientRequest004);
  end
  else if pFormClassName = 'TfrmPatMakeDiscount' then
  begin
    SetGlobalMessage('msgPatMakeDiscount001',msgPatMakeDiscount001);
    SetGlobalMessage('msgPatMakeDiscount002',msgPatMakeDiscount002);
    SetGlobalMessage('msgPatMakeDiscount003',msgPatMakeDiscount003);
    SetGlobalMessage('msgPatMakeDiscount004',msgPatMakeDiscount004);
    SetGlobalMessage('msgPatMakeDiscount005',msgPatMakeDiscount005);
    SetGlobalMessage('msgPatMakeDiscount006',msgPatMakeDiscount006);
    SetGlobalMessage('msgPatMakeDiscount009',msgPatMakeDiscount009);
    SetGlobalMessage('msgPatMakeDiscount010',msgPatMakeDiscount010);
    SetGlobalMessage('msgPatMakeDiscount011',msgPatMakeDiscount011);
    SetGlobalMessage('msgPatMakeDiscount012',msgPatMakeDiscount012);
    SetGlobalMessage('msgPatMakeDiscount013',msgPatMakeDiscount013);
    SetGlobalMessage('msgPatMakeDiscount014',msgPatMakeDiscount014);
  end
  else if pFormClassName = 'TfrmPatProcessCompare' then
  begin
    SetGlobalMessage('msgPatProcessCompare001',msgPatProcessCompare001);
    SetGlobalMessage('msgPatProcessCompare002',msgPatProcessCompare002);
    SetGlobalMessage('msgPatProcessCompare003',msgPatProcessCompare003);
    SetGlobalMessage('msgPatProcessCompare004',msgPatProcessCompare004);
    SetGlobalMessage('msgPatProcessCompare005',msgPatProcessCompare005);
  end
  else if pFormClassName = 'TfrmPatReception' then
  begin
    SetGlobalMessage('msgPatReception001',msgPatReception001);
    SetGlobalMessage('msgPatReception002',msgPatReception002);
    SetGlobalMessage('msgPatReception003',msgPatReception003);
    SetGlobalMessage('msgPatReception004',msgPatReception004);
    SetGlobalMessage('msgPatReception005',msgPatReception005);
    SetGlobalMessage('msgPatReception006',msgPatReception006);
    SetGlobalMessage('msgPatReception007',msgPatReception007);
    SetGlobalMessage('msgPatReception008',msgPatReception008);
    SetGlobalMessage('msgPatReception009',msgPatReception009);
    SetGlobalMessage('msgPatReception010',msgPatReception010);
    SetGlobalMessage('msgPatReception011',msgPatReception011);
    SetGlobalMessage('msgPatReception012',msgPatReception012);
    SetGlobalMessage('msgPatReception013',msgPatReception013);
    SetGlobalMessage('msgPatReception014',msgPatReception014);
    SetGlobalMessage('msgPatReception015',msgPatReception015);
    SetGlobalMessage('msgPatReception016',msgPatReception016);
    SetGlobalMessage('msgPatReception017',msgPatReception017);
    SetGlobalMessage('msgPatReception018',msgPatReception018);
    SetGlobalMessage('msgPatReception019',msgPatReception019);
    SetGlobalMessage('msgPatReception020',msgPatReception020);
    SetGlobalMessage('msgPatReception021',msgPatReception021);
    SetGlobalMessage('msgPatReception022',msgPatReception022);
    SetGlobalMessage('msgPatReception023',msgPatReception023);
    SetGlobalMessage('msgPatReception024',msgPatReception024);
  end
  else if pFormClassName = 'TfrmPhysiotherapyPatient' then
  begin
    SetGlobalMessage('msgPhysiotherapyPatient001',msgPhysiotherapyPatient001);
    SetGlobalMessage('msgPhysiotherapyPatient002',msgPhysiotherapyPatient002);
    SetGlobalMessage('msgPhysiotherapyPatient003',msgPhysiotherapyPatient003);
    SetGlobalMessage('msgPhysiotherapyPatient004',msgPhysiotherapyPatient004);
    SetGlobalMessage('msgPhysiotherapyPatient005',msgPhysiotherapyPatient005);
    SetGlobalMessage('msgPhysiotherapyPatient006',msgPhysiotherapyPatient006);
    SetGlobalMessage('msgPhysiotherapyPatient007',msgPhysiotherapyPatient007);
    SetGlobalMessage('msgPhysiotherapyPatient008',msgPhysiotherapyPatient008);
    SetGlobalMessage('msgPhysiotherapyPatient009',msgPhysiotherapyPatient009);
    SetGlobalMessage('msgPhysiotherapyPatient010',msgPhysiotherapyPatient010);
    SetGlobalMessage('msgPhysiotherapyPatient011',msgPhysiotherapyPatient011);
  end
  else if pFormClassName = 'TfrmPhysiotherapyPatientList' then
  begin
    SetGlobalMessage('msgPhysiotherapyPatientList001',msgPhysiotherapyPatientList001);
    SetGlobalMessage('msgPhysiotherapyPatientList002',msgPhysiotherapyPatientList002);
    SetGlobalMessage('msgPhysiotherapyPatientList003',msgPhysiotherapyPatientList003);
    SetGlobalMessage('msgPhysiotherapyPatientList004',msgPhysiotherapyPatientList004);
    SetGlobalMessage('msgPhysiotherapyPatientList005',msgPhysiotherapyPatientList005);
    SetGlobalMessage('msgPhysiotherapyPatientList006',msgPhysiotherapyPatientList006);
    SetGlobalMessage('msgPhysiotherapyPatientList007',msgPhysiotherapyPatientList007);
    SetGlobalMessage('msgPhysiotherapyPatientList008',msgPhysiotherapyPatientList008);
    SetGlobalMessage('msgPhysiotherapyPatientList009',msgPhysiotherapyPatientList009);
    SetGlobalMessage('msgPhysiotherapyPatientList010',msgPhysiotherapyPatientList010);
    SetGlobalMessage('msgPhysiotherapyPatientList011',msgPhysiotherapyPatientList011);
    SetGlobalMessage('msgPhysiotherapyPatientList012',msgPhysiotherapyPatientList012);
  end
  else if pFormClassName = 'TfrmPreparedText' then
  begin
    SetGlobalMessage('msgPreparedText001',msgPreparedText001);
    SetGlobalMessage('msgPreparedText002',msgPreparedText002);
    SetGlobalMessage('msgPreparedText003',msgPreparedText003);
    SetGlobalMessage('msgPreparedText004',msgPreparedText004);
    SetGlobalMessage('msgPreparedText005',msgPreparedText005);
    SetGlobalMessage('msgPreparedText006',msgPreparedText006);
    SetGlobalMessage('msgPreparedText007',msgPreparedText007);
    SetGlobalMessage('msgPreparedText008',msgPreparedText008);
  end
  else if pFormClassName = 'TfrmPriceListPeriod' then
  begin
    SetGlobalMessage('msgPriceListPeriod001',msgPriceListPeriod001);
    SetGlobalMessage('msgPriceListPeriod002',msgPriceListPeriod002);
    SetGlobalMessage('msgPriceListPeriod003',msgPriceListPeriod003);
    SetGlobalMessage('msgPriceListPeriod004',msgPriceListPeriod004);
    SetGlobalMessage('msgPriceListPeriod005',msgPriceListPeriod005);
    SetGlobalMessage('msgPriceListPeriod006',msgPriceListPeriod006);
  end
  else if pFormClassName = 'TfrmProcessControlList' then
  begin
    SetGlobalMessage('msgProcessControlList001',msgProcessControlList001);
    SetGlobalMessage('msgProcessControlList002',msgProcessControlList002);
    SetGlobalMessage('msgProcessControlList003',msgProcessControlList003);
    SetGlobalMessage('msgProcessControlList005',msgProcessControlList005);
    SetGlobalMessage('msgProcessControlList006',msgProcessControlList006);
    SetGlobalMessage('msgProcessControlList007',msgProcessControlList007);
    SetGlobalMessage('msgProcessControlList008',msgProcessControlList008);
    SetGlobalMessage('msgProcessControlList009',msgProcessControlList009);
    SetGlobalMessage('msgProcessControlList010',msgProcessControlList010);
    SetGlobalMessage('msgProcessControlList011',msgProcessControlList011);
    SetGlobalMessage('msgProcessControlList012',msgProcessControlList012);
    SetGlobalMessage('msgProcessControlList013',msgProcessControlList013);
    SetGlobalMessage('msgProcessControlList014',msgProcessControlList014);
  end
  else if pFormClassName = 'TfrmProform' then
  begin
    SetGlobalMessage('msgProform001',msgProform001);
    SetGlobalMessage('msgProform002',msgProform002);
    SetGlobalMessage('msgProform003',msgProform003);
    SetGlobalMessage('msgProform004',msgProform004);
    SetGlobalMessage('msgProform005',msgProform005);
    SetGlobalMessage('msgProform006',msgProform006);
    SetGlobalMessage('msgProform007',msgProform007);
    SetGlobalMessage('msgProform008',msgProform008);
    SetGlobalMessage('msgProform009',msgProform009);
    SetGlobalMessage('msgProform010',msgProform010);
    SetGlobalMessage('msgProform011',msgProform011);
  end
  else if pFormClassName = 'TfrmPurchasing' then
  begin
    SetGlobalMessage('msgPurchasing001',msgPurchasing001);
    SetGlobalMessage('msgPurchasing002',msgPurchasing002);
    SetGlobalMessage('msgPurchasing003',msgPurchasing003);
    SetGlobalMessage('msgPurchasing004',msgPurchasing004);
   // SetGlobalMessage('msgPurchasing005',msgPurchasing005);
    SetGlobalMessage('msgPurchasing006',msgPurchasing006);
    SetGlobalMessage('msgPurchasing007',msgPurchasing007);
    SetGlobalMessage('msgPurchasing008',msgPurchasing008);
    //SetGlobalMessage('msgPurchasing009',msgPurchasing009);
    SetGlobalMessage('msgPurchasing010',msgPurchasing010);
    SetGlobalMessage('msgPurchasing011',msgPurchasing011);
    SetGlobalMessage('msgPurchasing012',msgPurchasing012);
    SetGlobalMessage('msgPurchasing013',msgPurchasing013);
    SetGlobalMessage('msgPurchasing014',msgPurchasing014);
    SetGlobalMessage('msgPurchasing015',msgPurchasing015);
    //SetGlobalMessage('msgPurchasing016',msgPurchasing016);
    SetGlobalMessage('msgPurchasing017',msgPurchasing017);
    SetGlobalMessage('msgPurchasing018',msgPurchasing018);
    //SetGlobalMessage('msgPurchasing019',msgPurchasing019);
    SetGlobalMessage('msgPurchasing020',msgPurchasing020);
    SetGlobalMessage('msgPurchasing021',msgPurchasing021);
    SetGlobalMessage('msgPurchasing022',msgPurchasing022);
    //SetGlobalMessage('msgPurchasing023',msgPurchasing023);
    SetGlobalMessage('msgPurchasing024',msgPurchasing024);
    SetGlobalMessage('msgPurchasing025',msgPurchasing025);
    SetGlobalMessage('msgPurchasing026',msgPurchasing026);
    SetGlobalMessage('msgPurchasing027',msgPurchasing027);
    SetGlobalMessage('msgPurchasing028',msgPurchasing028);
    SetGlobalMessage('msgPurchasing029',msgPurchasing029);
    SetGlobalMessage('msgPurchasing030',msgPurchasing030);
    SetGlobalMessage('msgPurchasing031',msgPurchasing031);
    SetGlobalMessage('msgPurchasing032',msgPurchasing032);
    SetGlobalMessage('msgPurchasing033',msgPurchasing033);
    SetGlobalMessage('msgPurchasing034',msgPurchasing034);
    SetGlobalMessage('msgPurchasing035',msgPurchasing035);
    SetGlobalMessage('msgPurchasing036',msgPurchasing036);
    SetGlobalMessage('msgPurchasing037',msgPurchasing037);
    SetGlobalMessage('msgPurchasing038',msgPurchasing038);
    SetGlobalMessage('msgPurchasing039',msgPurchasing039);
    SetGlobalMessage('msgPurchasing040',msgPurchasing040);
    SetGlobalMessage('msgPurchasing041',msgPurchasing041);
    SetGlobalMessage('msgPurchasing042',msgPurchasing042);
    SetGlobalMessage('msgPurchasing043',msgPurchasing044);
    SetGlobalMessage('msgPurchasing043',msgPurchasing044);
    SetGlobalMessage('msgPurchasing045',msgPurchasing045);

    SetGlobalMessage('msgPurchasing046',msgPurchasing046);
    SetGlobalMessage('msgPurchasing047',msgPurchasing047);
    SetGlobalMessage('msgPurchasing048',msgPurchasing048);
    SetGlobalMessage('msgPurchasing049',msgPurchasing049);
    SetGlobalMessage('msgPurchasing050',msgPurchasing050);
    SetGlobalMessage('msgPurchasing051',msgPurchasing051);
    SetGlobalMessage('msgPurchasing052',msgPurchasing052);
    SetGlobalMessage('msgPurchasing053',msgPurchasing053);
    SetGlobalMessage('msgPurchasing054',msgPurchasing054);
    SetGlobalMessage('msgPurchasing055',msgPurchasing055);
    SetGlobalMessage('msgPurchasing056',msgPurchasing056);
    SetGlobalMessage('msgPurchasing057',msgPurchasing057);
    SetGlobalMessage('msgPurchasing058',msgPurchasing058);
    SetGlobalMessage('msgPurchasing059',msgPurchasing059);
    SetGlobalMessage('msgPurchasing060',msgPurchasing060);
    SetGlobalMessage('msgPurchasing061',msgPurchasing061);
    SetGlobalMessage('msgPurchasing062',msgPurchasing062);
    SetGlobalMessage('msgPurchasing063',msgPurchasing063);
    SetGlobalMessage('msgPurchasing064',msgPurchasing064);
    SetGlobalMessage('msgPurchasing065',msgPurchasing065);
    SetGlobalMessage('msgPurchasing066',msgPurchasing066);
    SetGlobalMessage('msgPurchasing067',msgPurchasing067);
    SetGlobalMessage('msgPurchasing068',msgPurchasing068);
    SetGlobalMessage('msgPurchasing069',msgPurchasing069);
    SetGlobalMessage('msgPurchasing070',msgPurchasing070);
    SetGlobalMessage('msgPurchasing071',msgPurchasing071);
    SetGlobalMessage('msgPurchasing072',msgPurchasing072);
    SetGlobalMessage('msgPurchasing073',msgPurchasing073);
    SetGlobalMessage('msgPurchasing074',msgPurchasing074);
    SetGlobalMessage('msgPurchasing075',msgPurchasing075);
    SetGlobalMessage('msgPurchasing076',msgPurchasing076);
    SetGlobalMessage('msgPurchasing077',msgPurchasing077);
    SetGlobalMessage('msgPurchasing078',msgPurchasing078);
    SetGlobalMessage('msgPurchasing079',msgPurchasing079);
    SetGlobalMessage('msgPurchasing080',msgPurchasing080);
    SetGlobalMessage('msgPurchasing081',msgPurchasing081);
    SetGlobalMessage('msgPurchasing082',msgPurchasing082);
    SetGlobalMessage('msgPurchasing083',msgPurchasing083);
    SetGlobalMessage('msgPurchasing084',msgPurchasing084);
    SetGlobalMessage('msgPurchasing085',msgPurchasing085);
    SetGlobalMessage('msgPurchasing086',msgPurchasing086);
    SetGlobalMessage('msgPurchasing087',msgPurchasing087);
    SetGlobalMessage('msgPurchasing088',msgPurchasing088);
    SetGlobalMessage('msgPurchasing089',msgPurchasing089);
  end
  else if pFormClassName = 'TfrmFirmsAggrement' then
  begin
    SetGlobalMessage('msgFirmsAggrement001',msgFirmsAggrement001);
  end
  else if pFormClassName = 'TfrmQuaDocAnalysis' then
  begin
    SetGlobalMessage('msgQuaDocAnalysis001',msgQuaDocAnalysis001);
  end
  else if pFormClassName = 'TfrmQuaDocEditExcel' then
  begin
    SetGlobalMessage('msgQuaDocEditExcel001',msgQuaDocEditExcel001);
  end
  else if pFormClassName = 'TfrmQuaDocEditPanel' then
  begin
    SetGlobalMessage('msgQuaDocEditPanel001',msgQuaDocEditPanel001);
    SetGlobalMessage('msgQuaDocEditPanel002',msgQuaDocEditPanel002);
    SetGlobalMessage('msgQuaDocEditPanel003',msgQuaDocEditPanel003);
    SetGlobalMessage('msgQuaDocEditPanel004',msgQuaDocEditPanel004);
    SetGlobalMessage('msgQuaDocEditPanel005',msgQuaDocEditPanel005);
    SetGlobalMessage('msgQuaDocEditPanel006',msgQuaDocEditPanel006);
    SetGlobalMessage('msgQuaDocEditPanel007',msgQuaDocEditPanel007);
    SetGlobalMessage('msgQuaDocEditPanel008',msgQuaDocEditPanel008);
  end
  else if pFormClassName = 'TfrmQuaDocFolderSettings' then
  begin
    SetGlobalMessage('msgQuaDocFolderSettings001',msgQuaDocFolderSettings001);
    SetGlobalMessage('msgQuaDocFolderSettings002',msgQuaDocFolderSettings002);
    SetGlobalMessage('msgQuaDocFolderSettings003',msgQuaDocFolderSettings003);
    SetGlobalMessage('msgQuaDocFolderSettings004',msgQuaDocFolderSettings004);
    SetGlobalMessage('msgQuaDocFolderSettings005',msgQuaDocFolderSettings005);
    SetGlobalMessage('msgQuaDocFolderSettings006',msgQuaDocFolderSettings006);
    SetGlobalMessage('msgQuaDocFolderSettings007',msgQuaDocFolderSettings007);
  end
  else if pFormClassName = 'TfrmQuaDocManageProcess' then
  begin
    SetGlobalMessage('msgQuaDocManageProcess001',msgQuaDocManageProcess001);
    SetGlobalMessage('msgQuaDocManageProcess002',msgQuaDocManageProcess002);
    SetGlobalMessage('msgQuaDocManageProcess003',msgQuaDocManageProcess003);
    SetGlobalMessage('msgQuaDocManageProcess004',msgQuaDocManageProcess004);
    SetGlobalMessage('msgQuaDocManageProcess005',msgQuaDocManageProcess005);
    SetGlobalMessage('msgQuaDocManageProcess006',msgQuaDocManageProcess006);
    SetGlobalMessage('msgQuaDocManageProcess007',msgQuaDocManageProcess007);
    SetGlobalMessage('msgQuaDocManageProcess008',msgQuaDocManageProcess008);
    SetGlobalMessage('msgQuaDocManageProcess009',msgQuaDocManageProcess009);
  end
  else if pFormClassName = 'TfrmQuaDocProcess' then
  begin
    SetGlobalMessage('msgQuaDocProcess001',msgQuaDocProcess001);
    SetGlobalMessage('msgQuaDocProcess002',msgQuaDocProcess002);
    SetGlobalMessage('msgQuaDocProcess003',msgQuaDocProcess003);
    SetGlobalMessage('msgQuaDocProcess004',msgQuaDocProcess004);
    SetGlobalMessage('msgQuaDocProcess005',msgQuaDocProcess005);
    SetGlobalMessage('msgQuaDocProcess006',msgQuaDocProcess006);
    SetGlobalMessage('msgQuaDocProcess007',msgQuaDocProcess007);
    SetGlobalMessage('msgQuaDocProcess008',msgQuaDocProcess008);
    SetGlobalMessage('msgQuaDocProcess009',msgQuaDocProcess009);
    SetGlobalMessage('msgQuaDocProcess010',msgQuaDocProcess010);
    SetGlobalMessage('msgQuaDocProcess011',msgQuaDocProcess011);
    SetGlobalMessage('msgQuaDocProcess012',msgQuaDocProcess012);
    SetGlobalMessage('msgQuaDocProcess013',msgQuaDocProcess013);
    SetGlobalMessage('msgQuaDocProcess014',msgQuaDocProcess014);
    SetGlobalMessage('msgQuaDocProcess015',msgQuaDocProcess015);
    SetGlobalMessage('msgQuaDocProcess016',msgQuaDocProcess016);
  end
  else if pFormClassName = 'TfrmQuaDocument' then
  begin
    SetGlobalMessage('msgQuaDocument001',msgQuaDocument001);
    SetGlobalMessage('msgQuaDocument002',msgQuaDocument002);
    SetGlobalMessage('msgQuaDocument003',msgQuaDocument003);
    SetGlobalMessage('msgQuaDocument004',msgQuaDocument004);
    SetGlobalMessage('msgQuaDocument005',msgQuaDocument005);
    SetGlobalMessage('msgQuaDocument006',msgQuaDocument006);
    SetGlobalMessage('msgQuaDocument007',msgQuaDocument007);
    SetGlobalMessage('msgQuaDocument008',msgQuaDocument008);
    SetGlobalMessage('msgQuaDocument009',msgQuaDocument009);
  end
  else if pFormClassName = 'TfrmQuickAddCrmPoll' then
  begin
    SetGlobalMessage('msgQuickAddCrmPoll001',msgQuickAddCrmPoll001);
    SetGlobalMessage('msgQuickAddCrmPoll002',msgQuickAddCrmPoll002);
    SetGlobalMessage('msgQuickAddCrmPoll003',msgQuickAddCrmPoll003);
    SetGlobalMessage('msgQuickAddCrmPoll004',msgQuickAddCrmPoll004);
    SetGlobalMessage('msgQuickAddCrmPoll005',msgQuickAddCrmPoll005);
    SetGlobalMessage('msgQuickAddCrmPoll006',msgQuickAddCrmPoll006);
  end
  else if pFormClassName = 'TfrmRationProcess' then
  begin
    SetGlobalMessage('msgRationProcess001',msgRationProcess001);
    SetGlobalMessage('msgRationProcess003',msgRationProcess003);
    SetGlobalMessage('msgRationProcess004',msgRationProcess004);
    SetGlobalMessage('msgRationProcess005',msgRationProcess005);
    SetGlobalMessage('msgRationProcess006',msgRationProcess006);
    SetGlobalMessage('msgRationProcess007',msgRationProcess007);
    SetGlobalMessage('msgRationProcess008',msgRationProcess008);
    SetGlobalMessage('msgRationProcess009',msgRationProcess009);
    SetGlobalMessage('msgRationProcess010',msgRationProcess010);
    SetGlobalMessage('msgRationProcess011',msgRationProcess011);
    SetGlobalMessage('msgRationProcess012',msgRationProcess012);
    SetGlobalMessage('msgRationProcess013',msgRationProcess013);
    SetGlobalMessage('msgRationProcess014',msgRationProcess014);
    SetGlobalMessage('msgRationProcess015',msgRationProcess015);
    SetGlobalMessage('msgRationProcess016',msgRationProcess016);
  end
  else if pFormClassName = 'TfrmRationSupply' then
  begin
    SetGlobalMessage('msgRationSupply001',msgRationSupply001);
  end
  else if pFormClassName = 'TfrmRationRequest' then
  begin
    SetGlobalMessage('msgRationRequest001',msgRationRequest001);
  end

  else if pFormClassName = 'TfrmReadFromExcel' then
  begin
    SetGlobalMessage('msgReadFromExcel001',msgReadFromExcel001);
    SetGlobalMessage('msgReadFromExcel002',msgReadFromExcel002);
    SetGlobalMessage('msgReadFromExcel003',msgReadFromExcel003);
    SetGlobalMessage('msgReadFromExcel004',msgReadFromExcel004);
  end
  else if pFormClassName = 'TfrmRelPatRec' then
  begin
    SetGlobalMessage('msgRelPatRec002',msgRelPatRec002);
    SetGlobalMessage('msgRelPatRec003',msgRelPatRec003);
    SetGlobalMessage('msgRelPatRec004',msgRelPatRec004);
    SetGlobalMessage('msgRelPatRec005',msgRelPatRec005);
    SetGlobalMessage('msgRelPatRec006',msgRelPatRec006);
  end
  else if pFormClassName = 'TfrmRequestAll' then
  begin
    SetGlobalMessage('msgRequestAll002',msgRequestAll002);
    SetGlobalMessage('msgRequestAll003',msgRequestAll003);
    SetGlobalMessage('msgRequestAll004',msgRequestAll004);
  end
  else if pFormClassName = 'TfrmRequestDesign' then
  begin
    SetGlobalMessage('msgRequestDesign001',msgRequestDesign001);
    SetGlobalMessage('msgRequestDesign002',msgRequestDesign002);
    SetGlobalMessage('msgRequestDesign003',msgRequestDesign003);
    SetGlobalMessage('msgRequestDesign004',msgRequestDesign004);
    SetGlobalMessage('msgRequestDesign005',msgRequestDesign005);
    SetGlobalMessage('msgRequestDesign006',msgRequestDesign006);
  end
  else if pFormClassName = 'TfrmRequestsForPat' then
  begin
    SetGlobalMessage('msgRequestsForPat001',msgRequestsForPat001);
    SetGlobalMessage('msgRequestsForPat002',msgRequestsForPat002);
    SetGlobalMessage('msgRequestsForPat003',msgRequestsForPat003);
    SetGlobalMessage('msgRequestsForPat004',msgRequestsForPat004);
    SetGlobalMessage('msgRequestsForPat005',msgRequestsForPat005);
    SetGlobalMessage('msgRequestsForPat006',msgRequestsForPat006);
    SetGlobalMessage('msgRequestsForPat007',msgRequestsForPat007);
    SetGlobalMessage('msgRequestsForPat008',msgRequestsForPat008);
    SetGlobalMessage('msgRequestsForPat009',msgRequestsForPat009);
    SetGlobalMessage('msgRequestsForPat010',msgRequestsForPat010);
    SetGlobalMessage('msgRequestsForPat011',msgRequestsForPat011);
    SetGlobalMessage('msgRequestsForPat012',msgRequestsForPat012);
    SetGlobalMessage('msgRequestsForPat013',msgRequestsForPat013);
    SetGlobalMessage('msgRequestsForPat014',msgRequestsForPat014);
    SetGlobalMessage('msgRequestsForPat015',msgRequestsForPat015);
    SetGlobalMessage('msgRequestsForPat016',msgRequestsForPat016);
    SetGlobalMessage('msgRequestsForPat017',msgRequestsForPat017);
    SetGlobalMessage('msgRequestsForPat018',msgRequestsForPat018);
    SetGlobalMessage('msgRequestsForPat019',msgRequestsForPat019);
    SetGlobalMessage('msgRequestsForPat020',msgRequestsForPat020);
    SetGlobalMessage('msgRequestsForPat021',msgRequestsForPat021);
    SetGlobalMessage('msgRequestsForPat022',msgRequestsForPat022);
    SetGlobalMessage('msgRequestsForPat023',msgRequestsForPat023);
    SetGlobalMessage('msgRequestsForPat024',msgRequestsForPat024);
  end
  else if pFormClassName = 'TfrmRevenue' then
  begin
    SetGlobalMessage('msgRevenue001',msgRevenue001);
    SetGlobalMessage('msgRevenue002',msgRevenue002);
    SetGlobalMessage('msgRevenue003',msgRevenue003);
    SetGlobalMessage('msgRevenue004',msgRevenue004);
    SetGlobalMessage('msgRevenue005',msgRevenue005);
    SetGlobalMessage('msgRevenue006',msgRevenue006);
    SetGlobalMessage('msgRevenue007',msgRevenue007);
    SetGlobalMessage('msgRevenue008',msgRevenue008);
    SetGlobalMessage('msgRevenue009',msgRevenue009);
    SetGlobalMessage('msgRevenue010',msgRevenue010);
    SetGlobalMessage('msgRevenue011',msgRevenue011);
    SetGlobalMessage('msgRevenue012',msgRevenue012);
    SetGlobalMessage('msgRevenue013',msgRevenue013);
    SetGlobalMessage('msgRevenue014',msgRevenue014);
    SetGlobalMessage('msgRevenue016',msgRevenue016);
    SetGlobalMessage('msgRevenue017',msgRevenue017);
    SetGlobalMessage('msgRevenue019',msgRevenue019);
    SetGlobalMessage('msgRevenue020',msgRevenue020);
    SetGlobalMessage('msgRevenue021',msgRevenue021);
    SetGlobalMessage('msgRevenue022',msgRevenue022);
    SetGlobalMessage('msgRevenue023',msgRevenue023);
    SetGlobalMessage('msgRevenue024',msgRevenue024);
    SetGlobalMessage('msgRevenue025',msgRevenue025);
    SetGlobalMessage('msgRevenue026',msgRevenue026);
    SetGlobalMessage('msgRevenue027',msgRevenue027);
    SetGlobalMessage('msgRevenue028',msgRevenue028);
    SetGlobalMessage('msgRevenue029',msgRevenue029);
    SetGlobalMessage('msgRevenue030',msgRevenue030);
    SetGlobalMessage('msgRevenue031',msgRevenue031);
    SetGlobalMessage('msgRevenue033',msgRevenue033);
    SetGlobalMessage('msgRevenue034',msgRevenue034);
    SetGlobalMessage('msgRevenue035',msgRevenue035);
    SetGlobalMessage('msgRevenue036',msgRevenue036);
    SetGlobalMessage('msgRevenue037',msgRevenue037);
    SetGlobalMessage('msgRevenue038',msgRevenue038);
    SetGlobalMessage('msgRevenue039',msgRevenue039);
    SetGlobalMessage('msgRevenue040',msgRevenue040);
    SetGlobalMessage('msgRevenue041',msgRevenue041);
    SetGlobalMessage('msgRevenue042',msgRevenue042);
    SetGlobalMessage('msgRevenue043',msgRevenue043);
    SetGlobalMessage('msgRevenue044',msgRevenue044);
    SetGlobalMessage('msgRevenue045',msgRevenue045);
    SetGlobalMessage('msgRevenue046',msgRevenue046);
  end
  else if pFormClassName = 'TfrmPatientCare' then
  begin
    SetGlobalMessage('msgPatientCare001',msgPatientCare001);
    SetGlobalMessage('msgPatientCare002',msgPatientCare002);
    SetGlobalMessage('msgPatientCare003',msgPatientCare003);
    SetGlobalMessage('msgPatientCare004',msgPatientCare004);
    SetGlobalMessage('msgPatientCare005',msgPatientCare005);
    SetGlobalMessage('msgPatientCare006',msgPatientCare006);
    SetGlobalMessage('msgPatientCare007',msgPatientCare007);
  end
  else if pFormClassName = 'TfrmRequestPermission' then
  begin
    SetGlobalMessage('msgPermissions001',msgPermissions001);
    SetGlobalMessage('msgPermissions002',msgPermissions002);
    SetGlobalMessage('msgPermissions003',msgPermissions003);
    SetGlobalMessage('msgPermissions004',msgPermissions004);
    SetGlobalMessage('msgPermissions005',msgPermissions005);
    SetGlobalMessage('msgPermissions006',msgPermissions006);
    SetGlobalMessage('msgPermissions007',msgPermissions007);
    SetGlobalMessage('msgPermissions008',msgPermissions008);
    SetGlobalMessage('msgPermissions009',msgPermissions009);
    SetGlobalMessage('msgPermissions010',msgPermissions010);
    SetGlobalMessage('msgPermissions011',msgPermissions011);
    SetGlobalMessage('msgPermissions012',msgPermissions012);
    SetGlobalMessage('msgPermissions013',msgPermissions013);
    SetGlobalMessage('msgPermissions014',msgPermissions014);
    SetGlobalMessage('msgPermissions015',msgPermissions015);
    SetGlobalMessage('msgPermissions016',msgPermissions016);
    SetGlobalMessage('msgPermissions017',msgPermissions017);
    SetGlobalMessage('msgPermissions018',msgPermissions018);
    SetGlobalMessage('msgPermissions019',msgPermissions019);
    SetGlobalMessage('msgPermissions020',msgPermissions020);
    SetGlobalMessage('msgPermissions021',msgPermissions021);
    SetGlobalMessage('msgPermissions022',msgPermissions022);
    SetGlobalMessage('msgPermissions023',msgPermissions023);
    SetGlobalMessage('msgPermissions024',msgPermissions024);
    SetGlobalMessage('msgPermissions025',msgPermissions025);
    SetGlobalMessage('msgPermissions026',msgPermissions026);
    SetGlobalMessage('msgPermissions027',msgPermissions027);



  end
  else if pFormClassName = 'TfrmPrintedConsentForms' then
  begin
    SetGlobalMessage('msgPrintedConsentForms001',msgPrintedConsentForms001);
    SetGlobalMessage('msgPrintedConsentForms002',msgPrintedConsentForms002);
    SetGlobalMessage('msgPrintedConsentForms003',msgPrintedConsentForms003);
  end
  else if pFormClassName = 'TfrmSecurity' then
  begin
    SetGlobalMessage('msgSecurity001',msgSecurity001);
    SetGlobalMessage('msgSecurity002',msgSecurity002);
    SetGlobalMessage('msgSecurity003',msgSecurity003);
    SetGlobalMessage('msgSecurity004',msgSecurity004);
    SetGlobalMessage('msgSecurity005',msgSecurity005);
    SetGlobalMessage('msgSecurity006',msgSecurity006);
    SetGlobalMessage('msgSecurity007',msgSecurity007);
    SetGlobalMessage('msgSecurity008',msgSecurity008);
    SetGlobalMessage('msgSecurity009',msgSecurity009);
    SetGlobalMessage('msgSecurity010',msgSecurity010);
    SetGlobalMessage('msgSecurity011',msgSecurity011);
    SetGlobalMessage('msgSecurity012',msgSecurity012);
    SetGlobalMessage('msgSecurity013',msgSecurity013);
    SetGlobalMessage('msgSecurity014',msgSecurity014);
    SetGlobalMessage('msgSecurity015',msgSecurity015);
    SetGlobalMessage('msgSecurity016',msgSecurity016);
    SetGlobalMessage('msgSecurity017',msgSecurity017);
    SetGlobalMessage('msgSecurity018',msgSecurity018);
    SetGlobalMessage('msgSecurity019',msgSecurity019);
    SetGlobalMessage('msgSecurity020',msgSecurity020);
    SetGlobalMessage('msgSecurity021',msgSecurity021);
    SetGlobalMessage('msgSecurity022',msgSecurity022);
    SetGlobalMessage('msgSecurity023',msgSecurity023);
    SetGlobalMessage('msgSecurity024',msgSecurity024);
  end
  else if pFormClassName = 'TfrmService' then
  begin
    SetGlobalMessage('msgService001',msgService001);
    SetGlobalMessage('msgService002',msgService002);
    SetGlobalMessage('msgService003',msgService003);
    SetGlobalMessage('msgService004',msgService004);
    SetGlobalMessage('msgService005',msgService005);
    SetGlobalMessage('msgService006',msgService006);
    SetGlobalMessage('msgService007',msgService007);
    SetGlobalMessage('msgService008',msgService008);
    SetGlobalMessage('msgService009',msgService009);
  end
  else if pFormClassName = 'TfrmServiceCosts' then
  begin
    SetGlobalMessage('msgServiceCost001',msgServiceCost001);
    SetGlobalMessage('msgServiceCost002',msgServiceCost002);
    SetGlobalMessage('msgServiceCost003',msgServiceCost003);
    SetGlobalMessage('msgServiceCost004',msgServiceCost004);
    SetGlobalMessage('msgServiceCost005',msgServiceCost005);
    SetGlobalMessage('msgServiceCost006',msgServiceCost006);
  end
  else if pFormClassName = 'Tservices_def_frm' then            
  begin
    SetGlobalMessage('msgServicesDef002',msgServicesDef002);
    SetGlobalMessage('msgServicesDef003',msgServicesDef003);
    SetGlobalMessage('msgServicesDef005',msgServicesDef005);
    SetGlobalMessage('msgServicesDef006',msgServicesDef006);
    SetGlobalMessage('msgServicesDef007',msgServicesDef007);
    SetGlobalMessage('msgServicesDef008',msgServicesDef008);
    SetGlobalMessage('msgServicesDef009',msgServicesDef009);
    SetGlobalMessage('msgServicesDef010',msgServicesDef010);
    SetGlobalMessage('msgServicesDef011',msgServicesDef011);
    SetGlobalMessage('msgServicesDef012',msgServicesDef012);
    SetGlobalMessage('msgServicesDef013',msgServicesDef013);
    SetGlobalMessage('msgServicesDef014',msgServicesDef014);
  end
  else if pFormClassName = 'TfrmSnetImmQuery' then
  begin
    SetGlobalMessage('msgSnetImmQuery001',msgSnetImmQuery001);
    SetGlobalMessage('msgSnetImmQuery002',msgSnetImmQuery002);
    SetGlobalMessage('msgSnetImmQuery003',msgSnetImmQuery003);
    SetGlobalMessage('msgSnetImmQuery004',msgSnetImmQuery004);
    SetGlobalMessage('msgSnetImmQuery005',msgSnetImmQuery005);
    SetGlobalMessage('msgSnetImmQuery006',msgSnetImmQuery006);
    SetGlobalMessage('msgSnetImmQuery007',msgSnetImmQuery007);
    SetGlobalMessage('msgSnetImmQuery008',msgSnetImmQuery008);
    SetGlobalMessage('msgSnetImmQuery009',msgSnetImmQuery009);
    SetGlobalMessage('msgSnetImmQuery010',msgSnetImmQuery010);
    SetGlobalMessage('msgSnetImmQuery011',msgSnetImmQuery011);
    SetGlobalMessage('msgSnetImmQuery012',msgSnetImmQuery012);
    SetGlobalMessage('msgSnetImmQuery013',msgSnetImmQuery013);
    SetGlobalMessage('msgSnetImmQuery014',msgSnetImmQuery014);
    SetGlobalMessage('msgSnetImmQuery015',msgSnetImmQuery015);
    SetGlobalMessage('msgSnetImmQuery016',msgSnetImmQuery016);
    SetGlobalMessage('msgSnetImmQuery017',msgSnetImmQuery017);
    SetGlobalMessage('msgSnetImmQuery018',msgSnetImmQuery018);
    SetGlobalMessage('msgSnetImmQuery019',msgSnetImmQuery019);
    SetGlobalMessage('msgSnetImmQuery020',msgSnetImmQuery020);
    SetGlobalMessage('msgSnetImmQuery021',msgSnetImmQuery021);
    SetGlobalMessage('msgSnetImmQuery022',msgSnetImmQuery022);
    SetGlobalMessage('msgSnetImmQuery023',msgSnetImmQuery023);
  end
  else if pFormClassName = 'TfrmStock' then
  begin
    SetGlobalMessage('msgStock001',msgStock001);
    SetGlobalMessage('msgStock002',msgStock002);
    SetGlobalMessage('msgStock003',msgStock003);
    SetGlobalMessage('msgStock004',msgStock004);
    SetGlobalMessage('msgStock005',msgStock005);
    SetGlobalMessage('msgStock006',msgStock006);
    SetGlobalMessage('msgStock007',msgStock007);
    SetGlobalMessage('msgStock008',msgStock008);
    SetGlobalMessage('msgStock009',msgStock009);
    SetGlobalMessage('msgStock010',msgStock010);
    SetGlobalMessage('msgStock011',msgStock011);
    SetGlobalMessage('msgStock012',msgStock012);
    SetGlobalMessage('msgStock013',msgStock013);
   // SetGlobalMessage('msgStock014',msgStock014);
    SetGlobalMessage('msgStock015',msgStock015);
    SetGlobalMessage('msgStock016',msgStock016);
    SetGlobalMessage('msgStock017',msgStock017);
    SetGlobalMessage('msgStock018',msgStock018);
    SetGlobalMessage('msgStock019',msgStock019);
    SetGlobalMessage('msgStock020',msgStock020);
    SetGlobalMessage('msgStock021',msgStock021);
    SetGlobalMessage('msgStock022',msgStock022);
    SetGlobalMessage('msgStock023',msgStock023);
    SetGlobalMessage('msgStock024',msgStock024);
    SetGlobalMessage('msgStock025',msgStock025);
    SetGlobalMessage('msgStock026',msgStock026);
    SetGlobalMessage('msgStock027',msgStock027);
    SetGlobalMessage('msgStock028',msgStock028);
    SetGlobalMessage('msgStock029',msgStock029);
    SetGlobalMessage('msgStock030',msgStock030);
    SetGlobalMessage('msgStock031',msgStock031);
    SetGlobalMessage('msgStock032',msgStock032);
    SetGlobalMessage('msgStock033',msgStock033);
    SetGlobalMessage('msgStock034',msgStock034);
    SetGlobalMessage('msgStock035',msgStock035);
    SetGlobalMessage('msgStock036',msgStock036);
    SetGlobalMessage('msgStock037',msgStock037);
    SetGlobalMessage('msgStock038',msgStock038);
    SetGlobalMessage('msgStock039',msgStock039);
    SetGlobalMessage('msgStock040',msgStock040);
    SetGlobalMessage('msgStock041',msgStock041);
    SetGlobalMessage('msgStock042',msgStock042);
    SetGlobalMessage('msgStock043',msgStock043);
    SetGlobalMessage('msgStock044',msgStock044);
    SetGlobalMessage('msgStock045',msgStock045);
    SetGlobalMessage('msgStock046',msgStock046);
    SetGlobalMessage('msgStock047',msgStock047);
    //SetGlobalMessage('msgStock048',msgStock048);
//    SetGlobalMessage('msgStock049',msgStock049);
    SetGlobalMessage('msgStock050',msgStock050);
    SetGlobalMessage('msgStock051',msgStock051);
    SetGlobalMessage('msgStock052',msgStock052);
    SetGlobalMessage('msgStock053',msgStock053);
    SetGlobalMessage('msgStock054',msgStock054);
    SetGlobalMessage('msgStock055',msgStock055);
    SetGlobalMessage('msgStock056',msgStock056);
    SetGlobalMessage('msgStock057',msgStock057);
    SetGlobalMessage('msgStock058',msgStock058);
    SetGlobalMessage('msgStock059',msgStock059);
    SetGlobalMessage('msgStock060',msgStock060);
    SetGlobalMessage('msgStock061',msgStock061);
    SetGlobalMessage('msgStock062',msgStock062);
    SetGlobalMessage('msgStock063',msgStock063);
    SetGlobalMessage('msgStock064',msgStock064);
    SetGlobalMessage('msgStock065',msgStock065);
//    SetGlobalMessage('msgStock066',msgStock066);
//    SetGlobalMessage('msgStock067',msgStock067);
    SetGlobalMessage('msgStock068',msgStock068);
    SetGlobalMessage('msgStock069',msgStock069);
    SetGlobalMessage('msgStock070',msgStock070);
    SetGlobalMessage('msgStock071',msgStock071);
    SetGlobalMessage('msgStock072',msgStock072);
    SetGlobalMessage('msgStock073',msgStock073);
    SetGlobalMessage('msgStock074',msgStock074);
    SetGlobalMessage('msgStock075',msgStock075);
    SetGlobalMessage('msgStock076',msgStock076);
  end
  else if pFormClassName = 'TfrmStockConsignment' then
  begin
    SetGlobalMessage('msgStockConsignment001',msgStockConsignment001);
  end
  else if pFormClassName = 'TfrmStockList' then
  begin
    SetGlobalMessage('msgStockList001',msgStockList001);
    SetGlobalMessage('msgStockList002',msgStockList002);
  end
  else if pFormClassName = 'TfrmProtocolBook' then
  begin
    SetGlobalMessage('msgProtokolBook001',msgProtokolBook001);
    SetGlobalMessage('msgProtokolBook002',msgProtokolBook002);
    SetGlobalMessage('msgProtokolBook003',msgProtokolBook003);
    SetGlobalMessage('msgProtokolBook004',msgProtokolBook004);
    SetGlobalMessage('msgProtokolBook005',msgProtokolBook005);
    SetGlobalMessage('msgProtokolBook006',msgProtokolBook006);
  end
  else if pFormClassName = 'TfrmStockMovementVoucher' then
  begin
    SetGlobalMessage('msgStockMovementVoucher002',msgStockMovementVoucher002);
    SetGlobalMessage('msgStockMovementVoucher003',msgStockMovementVoucher003);
    SetGlobalMessage('msgStockMovementVoucher004',msgStockMovementVoucher004);
    SetGlobalMessage('msgStockMovementVoucher005',msgStockMovementVoucher005);
    SetGlobalMessage('msgStockMovementVoucher006',msgStockMovementVoucher006);
    SetGlobalMessage('msgStockMovementVoucher007',msgStockMovementVoucher007);
    //SetGlobalMessage('msgStockMovementVoucher008',msgStockMovementVoucher008);
    SetGlobalMessage('msgStockMovementVoucher009',msgStockMovementVoucher009);
    SetGlobalMessage('msgStockMovementVoucher010',msgStockMovementVoucher010);
    SetGlobalMessage('msgStockMovementVoucher011',msgStockMovementVoucher011);
    SetGlobalMessage('msgStockMovementVoucher012',msgStockMovementVoucher012);
    SetGlobalMessage('msgStockMovementVoucher013',msgStockMovementVoucher013);
    SetGlobalMessage('msgStockMovementVoucher014',msgStockMovementVoucher014);
    SetGlobalMessage('msgStockMovementVoucher015',msgStockMovementVoucher015);
    SetGlobalMessage('msgStockMovementVoucher016',msgStockMovementVoucher016);
    SetGlobalMessage('msgStockMovementVoucher017',msgStockMovementVoucher017);
    SetGlobalMessage('msgStockMovementVoucher018',msgStockMovementVoucher018);
    SetGlobalMessage('msgStockMovementVoucher019',msgStockMovementVoucher019);
    SetGlobalMessage('msgStockMovementVoucher020',msgStockMovementVoucher020);
    SetGlobalMessage('msgStockMovementVoucher021',msgStockMovementVoucher021);
    SetGlobalMessage('msgStockMovementVoucher022',msgStockMovementVoucher022);
    SetGlobalMessage('msgStockMovementVoucher023',msgStockMovementVoucher023);
    SetGlobalMessage('msgStockMovementVoucher024',msgStockMovementVoucher024);
    SetGlobalMessage('msgStockMovementVoucher025',msgStockMovementVoucher025);
    SetGlobalMessage('msgStockMovementVoucher026',msgStockMovementVoucher026);
    SetGlobalMessage('msgStockMovementVoucher027',msgStockMovementVoucher027);
    SetGlobalMessage('msgStockMovementVoucher028',msgStockMovementVoucher028);
    SetGlobalMessage('msgStockMovementVoucher029',msgStockMovementVoucher029);
    SetGlobalMessage('msgStockMovementVoucher030',msgStockMovementVoucher030);
    SetGlobalMessage('msgStockMovementVoucher031',msgStockMovementVoucher031);
    SetGlobalMessage('msgStockMovementVoucher032',msgStockMovementVoucher032);
    SetGlobalMessage('msgStockMovementVoucher033',msgStockMovementVoucher033);
    SetGlobalMessage('msgStockMovementVoucher034',msgStockMovementVoucher034);
  end
  else if pFormClassName = 'TfrmVoucherSelect' then
  begin
    SetGlobalMessage('msgVoucherSelect001',msgVoucherSelect001);
  end
  else if pFormClassName = 'TfrmStockQuery' then
  begin
    SetGlobalMessage('msgStockQuery001',msgStockQuery001);
    SetGlobalMessage('msgStockQuery002',msgStockQuery002);
    SetGlobalMessage('msgStockQuery003',msgStockQuery003);
    SetGlobalMessage('msgStockQuery004',msgStockQuery004);
  end
  else if pFormClassName = 'TfrmStockRequests' then
  begin
    SetGlobalMessage('msgStockRequests001',msgStockRequests001);
    SetGlobalMessage('msgStockRequests002',msgStockRequests002);
    SetGlobalMessage('msgStockRequests003',msgStockRequests003);
    SetGlobalMessage('msgStockRequests004',msgStockRequests004);
    SetGlobalMessage('msgStockRequests005',msgStockRequests005);
    SetGlobalMessage('msgStockRequests006',msgStockRequests006);
    SetGlobalMessage('msgStockRequests007',msgStockRequests007);
    SetGlobalMessage('msgStockRequests008',msgStockRequests008);
    SetGlobalMessage('msgStockRequests009',msgStockRequests009);
    SetGlobalMessage('msgStockRequests010',msgStockRequests010);
    SetGlobalMessage('msgStockRequests011',msgStockRequests011);
    SetGlobalMessage('msgStockRequests012',msgStockRequests012);
    SetGlobalMessage('msgStockRequests013',msgStockRequests013);
    SetGlobalMessage('msgStockRequests014',msgStockRequests014);
    SetGlobalMessage('msgStockRequests016',msgStockRequests016);
    SetGlobalMessage('msgStockRequests018',msgStockRequests018);
    SetGlobalMessage('msgStockRequests019',msgStockRequests019);
    SetGlobalMessage('msgStockRequests021',msgStockRequests021);
    SetGlobalMessage('msgStockRequests022',msgStockRequests022);
    SetGlobalMessage('msgStockRequests023',msgStockRequests023);
    SetGlobalMessage('msgStockRequests024',msgStockRequests024);
    SetGlobalMessage('msgStockRequests025',msgStockRequests025);
    SetGlobalMessage('msgStockRequests026',msgStockRequests026);
    SetGlobalMessage('msgStockRequests027',msgStockRequests027);
    SetGlobalMessage('msgStockRequests028',msgStockRequests028);
    SetGlobalMessage('msgStockRequests029',msgStockRequests029);
    SetGlobalMessage('msgStockRequests030',msgStockRequests030);
    SetGlobalMessage('msgStockRequests031',msgStockRequests031);
    SetGlobalMessage('msgStockRequests032',msgStockRequests032);
    SetGlobalMessage('msgStockRequests033',msgStockRequests033);
    SetGlobalMessage('msgStockRequests034',msgStockRequests034);
    SetGlobalMessage('msgStockRequests035',msgStockRequests035);
    SetGlobalMessage('msgStockRequests036',msgStockRequests036);
    SetGlobalMessage('msgStockRequests037',msgStockRequests037);
    SetGlobalMessage('msgStockRequests038',msgStockRequests038);
    SetGlobalMessage('msgStockRequests039',msgStockRequests039);
    SetGlobalMessage('msgStockRequests040',msgStockRequests040);
    SetGlobalMessage('msgStockRequests041',msgStockRequests041);
    SetGlobalMessage('msgStockRequests042',msgStockRequests042);
    SetGlobalMessage('msgStockRequests043',msgStockRequests043);
    SetGlobalMessage('msgStockRequests044',msgStockRequests044);
    SetGlobalMessage('msgStockRequests045',msgStockRequests045);
    SetGlobalMessage('msgStockRequests046',msgStockRequests046);
    SetGlobalMessage('msgStockRequests047',msgStockRequests047);
    SetGlobalMessage('msgStockRequests048',msgStockRequests048);
    SetGlobalMessage('msgStockRequests049',msgStockRequests049);
    SetGlobalMessage('msgStockRequests050',msgStockRequests050);
    SetGlobalMessage('msgStockRequests051',msgStockRequests051);
    SetGlobalMessage('msgStockRequests052',msgStockRequests052);
    SetGlobalMessage('msgStockRequests053',msgStockRequests053);
    SetGlobalMessage('msgStockRequests054',msgStockRequests054);
    SetGlobalMessage('msgStockRequests055',msgStockRequests055);
    SetGlobalMessage('msgStockRequests056',msgStockRequests056);
    SetGlobalMessage('msgStockRequests057',msgStockRequests057);
    SetGlobalMessage('msgStockRequests058',msgStockRequests058);
    SetGlobalMessage('msgStockRequests059',msgStockRequests059);
    SetGlobalMessage('msgStockRequests060',msgStockRequests060);
    SetGlobalMessage('msgStockRequests061',msgStockRequests061);
    SetGlobalMessage('msgStockRequests062',msgStockRequests062);
    SetGlobalMessage('msgStockRequests063',msgStockRequests063);
    SetGlobalMessage('msgStockRequests064',msgStockRequests064);
    SetGlobalMessage('msgStockRequests065',msgStockRequests065);
    SetGlobalMessage('msgStockRequests066',msgStockRequests066);
    SetGlobalMessage('msgStockRequests067',msgStockRequests067);
    SetGlobalMessage('msgStockRequests068',msgStockRequests068);
    SetGlobalMessage('msgStockRequests069',msgStockRequests069);
    SetGlobalMessage('msgStockRequests070',msgStockRequests070);
    SetGlobalMessage('msgStockRequests071',msgStockRequests071);
    SetGlobalMessage('msgStockRequests072',msgStockRequests072);
    SetGlobalMessage('msgStockRequests073',msgStockRequests073);
    SetGlobalMessage('msgStockRequests074',msgStockRequests074);
    SetGlobalMessage('msgStockRequests075',msgStockRequests075);
    SetGlobalMessage('msgStockRequests076',msgStockRequests076);
    SetGlobalMessage('msgStockRequests077',msgStockRequests077);
    SetGlobalMessage('msgStockRequests078',msgStockRequests078);
    SetGlobalMessage('msgStockRequests079',msgStockRequests079);
    SetGlobalMessage('msgStockRequests080',msgStockRequests080);
    SetGlobalMessage('msgStockRequests081',msgStockRequests081);
    SetGlobalMessage('msgStockRequests083',msgStockRequests083);
    SetGlobalMessage('msgStockRequests084',msgStockRequests084);
    SetGlobalMessage('msgStockRequests085',msgStockRequests085);
    SetGlobalMessage('msgStockRequests086',msgStockRequests086);
    SetGlobalMessage('msgStockRequests087',msgStockRequests087);
    SetGlobalMessage('msgStockRequests088',msgStockRequests088);
    SetGlobalMessage('msgStockRequests089',msgStockRequests089);
    SetGlobalMessage('msgStockRequests090',msgStockRequests090);
    SetGlobalMessage('msgStockRequests091',msgStockRequests091);
    SetGlobalMessage('msgStockRequests092',msgStockRequests092);
    SetGlobalMessage('msgStockRequests093',msgStockRequests093);
    SetGlobalMessage('msgStockRequests094',msgStockRequests094);
    SetGlobalMessage('msgStockRequests095',msgStockRequests095);   
    SetGlobalMessage('msgStockRequests096',msgStockRequests096);
    SetGlobalMessage('msgStockRequests097',msgStockRequests097);
    SetGlobalMessage('msgStockRequests098',msgStockRequests098);
    SetGlobalMessage('msgStockRequests099',msgStockRequests099);
    SetGlobalMessage('msgStockRequests100',msgStockRequests100);
    SetGlobalMessage('msgStockRequests101',msgStockRequests101);
    SetGlobalMessage('msgStockRequests103',msgStockRequests103);
    SetGlobalMessage('msgStockRequests104',msgStockRequests104);
    SetGlobalMessage('msgStockRequests105',msgStockRequests105);
    SetGlobalMessage('msgStockRequests106',msgStockRequests106);
    SetGlobalMessage('msgStockRequests107',msgStockRequests107);
    SetGlobalMessage('msgStockRequests108',msgStockRequests108);
    SetGlobalMessage('msgStockRequests109',msgStockRequests109);


    SetGlobalMessage('msgStockReqForPatient',msgStockReqForPatient);
    SetGlobalMessage('msgStockReqForWarehouse',msgStockReqForWarehouse);
    SetGlobalMessage('msgStockReqTemplateErr1',msgStockReqTemplateErr1);
    SetGlobalMessage('msgStockReqTemplateErr2',msgStockReqTemplateErr2);
    SetGlobalMessage('msgStockReqIsPrepared',msgStockReqIsPrepared);
    SetGlobalMessage('msgStockReqIdSource',msgStockReqIdSource);
    SetGlobalMessage('msgStockReqAlertAutoApp',msgStockReqAlertAutoApp);
    SetGlobalMessage('msgStockReqAlertDrOrder',msgStockReqAlertDrOrder);
    SetGlobalMessage('msgStockReqAlertStockUse',msgStockReqAlertStockUse);
    SetGlobalMessage('msgStockReqAlertSendBack',msgStockReqAlertSendBack);
    SetGlobalMessage('msgStockReqAlertUsageQnt',msgStockReqAlertUsageQnt);
    SetGlobalMessage('msgStockReqAlertStcIsUse',msgStockReqAlertStcIsUse);
    SetGlobalMessage('msgStockReqAlertExpCentr',msgStockReqAlertExpCentr);
    SetGlobalMessage('msgStockReqAlertOrderSB',msgStockReqAlertOrderSB);

  end
  else if pFormClassName = 'TfrmStockSerialNum' then
  begin
    SetGlobalMessage('msgStockSerialNum001',msgStockSerialNum001);
    SetGlobalMessage('msgStockSerialNum002',msgStockSerialNum002);
    SetGlobalMessage('msgStockSerialNum003',msgStockSerialNum003);
    SetGlobalMessage('msgStockSerialNum004',msgStockSerialNum004);
    SetGlobalMessage('msgStockSerialNum005',msgStockSerialNum005);
    //SetGlobalMessage('msgStockSerialNum006',msgStockSerialNum006);
    SetGlobalMessage('msgStockSerialNum007',msgStockSerialNum007);
    SetGlobalMessage('msgStockSerialNum008',msgStockSerialNum008);
    SetGlobalMessage('msgStockSerialNum009',msgStockSerialNum009);
    SetGlobalMessage('msgStockSerialNum010',msgStockSerialNum010);
    SetGlobalMessage('msgStockSerialNum011',msgStockSerialNum011);
    SetGlobalMessage('msgStockSerialNum012',msgStockSerialNum012);
    SetGlobalMessage('msgStockSerialNum013',msgStockSerialNum013);
    SetGlobalMessage('msgStockSerialNum014',msgStockSerialNum014);
    SetGlobalMessage('msgStockSerialNum015',msgStockSerialNum015);
    SetGlobalMessage('msgStockSerialNum016',msgStockSerialNum016);
    SetGlobalMessage('msgStockSerialNum017',msgStockSerialNum017);
    SetGlobalMessage('msgStockSerialNum018',msgStockSerialNum018);
    SetGlobalMessage('msgStockSerialNum019',msgStockSerialNum019);
    SetGlobalMessage('msgStockSerialNum020',msgStockSerialNum020);
    SetGlobalMessage('msgStockSerialNum021',msgStockSerialNum021);
    SetGlobalMessage('msgStockSerialNum022',msgStockSerialNum022);
    SetGlobalMessage('msgStockSerialNum023',msgStockSerialNum023);
    SetGlobalMessage('msgStockSerialNum024',msgStockSerialNum024);
    SetGlobalMessage('msgStockSerialNum025',msgStockSerialNum025);
    SetGlobalMessage('msgStockSerialNum026',msgStockSerialNum026);
    SetGlobalMessage('msgStockSerialNum027',msgStockSerialNum027);
    SetGlobalMessage('msgStockSerialNum028',msgStockSerialNum028);
    SetGlobalMessage('msgStockSerialNum029',msgStockSerialNum029);
    SetGlobalMessage('msgStockSerialNum030',msgStockSerialNum030);
    SetGlobalMessage('msgStockSerialNum031',msgStockSerialNum031);
    SetGlobalMessage('msgStockSerialNum032',msgStockSerialNum032);
    SetGlobalMessage('msgStockSerialNum033',msgStockSerialNum033);
  end
  else if pFormClassName = 'TfrmTIGProcess' then
  begin
    SetGlobalMessage('msgStockReqOrder001',msgStockReqOrder001);
    SetGlobalMessage('msgStockReqOrder002',msgStockReqOrder002);
    SetGlobalMessage('msgStockReqOrder003',msgStockReqOrder003);
    SetGlobalMessage('msgStockReqOrder004',msgStockReqOrder004);
    SetGlobalMessage('msgStockReqOrder005',msgStockReqOrder005);
    SetGlobalMessage('msgStockReqOrder006',msgStockReqOrder006);
    SetGlobalMessage('msgStockReqOrder007',msgStockReqOrder007);
    SetGlobalMessage('msgStockReqOrder008',msgStockReqOrder008);
    SetGlobalMessage('msgStockReqOrder009',msgStockReqOrder009);
    SetGlobalMessage('msgStockReqOrder010',msgStockReqOrder010);
    SetGlobalMessage('msgStockReqOrder011',msgStockReqOrder011);
    SetGlobalMessage('msgStockReqOrder012',msgStockReqOrder012);
    SetGlobalMessage('msgStockReqOrder013',msgStockReqOrder013);
    SetGlobalMessage('msgStockReqOrder014',msgStockReqOrder014);
    SetGlobalMessage('msgStockReqOrder015',msgStockReqOrder015);
    SetGlobalMessage('msgStockReqOrder016',msgStockReqOrder016);
    SetGlobalMessage('msgStockReqOrder017',msgStockReqOrder017);
    SetGlobalMessage('msgStockReqOrder018',msgStockReqOrder018);
    SetGlobalMessage('msgStockReqOrder019',msgStockReqOrder019);
    SetGlobalMessage('msgStockReqOrder020',msgStockReqOrder020);
    //SetGlobalMessage('msgStockReqOrder021',msgStockReqOrder021);
    SetGlobalMessage('msgStockReqOrder022',msgStockReqOrder022);
    SetGlobalMessage('msgStockReqOrder023',msgStockReqOrder023);
    SetGlobalMessage('msgStockReqOrder024',msgStockReqOrder024);
    SetGlobalMessage('msgStockReqOrder025',msgStockReqOrder025);
    SetGlobalMessage('msgStockReqOrder026',msgStockReqOrder026);
    SetGlobalMessage('msgStockReqOrder027',msgStockReqOrder027);
    SetGlobalMessage('msgStockReqOrder028',msgStockReqOrder028);
    SetGlobalMessage('msgStockReqOrder029',msgStockReqOrder029);
    SetGlobalMessage('msgStockReqOrder030',msgStockReqOrder030);
    SetGlobalMessage('msgStockReqOrder031',msgStockReqOrder031);
    SetGlobalMessage('msgStockReqOrder032',msgStockReqOrder032);
    SetGlobalMessage('msgStockReqOrder033',msgStockReqOrder033);
    SetGlobalMessage('msgStockReqOrder034',msgStockReqOrder034);
    SetGlobalMessage('msgStockReqOrder035',msgStockReqOrder035);
    SetGlobalMessage('msgStockReqOrder036',msgStockReqOrder036);
    SetGlobalMessage('msgStockReqOrder037',msgStockReqOrder037);
    SetGlobalMessage('msgStockReqOrder038',msgStockReqOrder038);
    SetGlobalMessage('msgStockReqOrder039',msgStockReqOrder039);
    SetGlobalMessage('msgStockReqOrder040',msgStockReqOrder040);
    SetGlobalMessage('msgStockReqOrder041',msgStockReqOrder041);
    SetGlobalMessage('msgStockReqOrder042',msgStockReqOrder042);
    SetGlobalMessage('msgStockReqOrder043',msgStockReqOrder043);
    SetGlobalMessage('msgStockReqOrder044',msgStockReqOrder044);
    SetGlobalMessage('msgStockReqOrder045',msgStockReqOrder045);
  end
  else if pFormClassName = 'TfrmOrderStockSearch' then
  begin
    SetGlobalMessage('msgOrderStockSearch001',msgOrderStockSearch001);
    SetGlobalMessage('msgOrderStockSearch002',msgOrderStockSearch002);
    SetGlobalMessage('msgOrderStockSearch003',msgOrderStockSearch003);
    SetGlobalMessage('msgOrderStockSearch004',msgOrderStockSearch004);
    SetGlobalMessage('msgOrderStockSearch005',msgOrderStockSearch005);
  end
  else if pFormClassName = 'TfrmStockReqEHUApprove' then
  begin
    SetGlobalMessage('msgStockReqEHUApprove001',msgStockReqEHUApprove001);
    SetGlobalMessage('msgStockReqEHUApprove002',msgStockReqEHUApprove002);
    SetGlobalMessage('msgStockReqEHUApprove003',msgStockReqEHUApprove003);
    SetGlobalMessage('msgStockReqEHUApprove004',msgStockReqEHUApprove004);
    SetGlobalMessage('msgStockReqEHUApprove005',msgStockReqEHUApprove005);
  end
  else if pFormClassName = 'TfrmOrderVerbalReq' then
  begin
    SetGlobalMessage('msgOrderVerbalReq001',msgOrderVerbalReq001);
    SetGlobalMessage('msgOrderVerbalReq002',msgOrderVerbalReq002);
  end
  else if pFormClassName = 'TfrmTIGProcess' then
  begin
    SetGlobalMessage('msgTIGProcess001',msgTIGProcess001);
    SetGlobalMessage('msgTIGProcess002',msgTIGProcess002);
    SetGlobalMessage('msgTIGProcess003',msgTIGProcess003);
    SetGlobalMessage('msgTIGProcess004',msgTIGProcess004);
    SetGlobalMessage('msgTIGProcess005',msgTIGProcess005);
    SetGlobalMessage('msgTIGProcess006',msgTIGProcess006);
  end
  else if pFormClassName = 'TfrmTillAccount' then
  begin
    SetGlobalMessage('msgTillAccount001',msgTillAccount001);
    SetGlobalMessage('msgTillAccount002',msgTillAccount002);
    SetGlobalMessage('msgTillAccount003',msgTillAccount003);
    SetGlobalMessage('msgTillAccount004',msgTillAccount004);
    SetGlobalMessage('msgTillAccount005',msgTillAccount005);
    SetGlobalMessage('msgTillAccount006',msgTillAccount006);
  end
  else if pFormClassName = 'TfrmTillReport' then
  begin
    SetGlobalMessage('msgTillDetail001',msgTillDetail001);
    SetGlobalMessage('msgTillDetail002',msgTillDetail002);
    SetGlobalMessage('msgTillDetail003',msgTillDetail003);
    SetGlobalMessage('msgTillDetail004',msgTillDetail004);
    SetGlobalMessage('msgTillDetail005',msgTillDetail005);
    SetGlobalMessage('msgTillDetail006',msgTillDetail006);
    SetGlobalMessage('msgTillDetail007',msgTillDetail007);
  end
  else if pFormClassName = 'TfrmToothDetail' then
  begin
    SetGlobalMessage('msgToothDetail001',msgToothDetail001);
    SetGlobalMessage('msgToothDetail002',msgToothDetail002);
    SetGlobalMessage('msgToothDetail003',msgToothDetail003);
    SetGlobalMessage('msgToothDetail004',msgToothDetail004);
    SetGlobalMessage('msgToothDetail005',msgToothDetail005);
    SetGlobalMessage('msgToothDetail006',msgToothDetail006);
    SetGlobalMessage('msgToothDetail007',msgToothDetail007);
    SetGlobalMessage('msgToothDetail008',msgToothDetail008);
    SetGlobalMessage('msgToothDetail009',msgToothDetail009);
    SetGlobalMessage('msgToothDetail010',msgToothDetail010);
    SetGlobalMessage('msgToothDetail011',msgToothDetail011);
    SetGlobalMessage('msgToothDetail012',msgToothDetail012);
    SetGlobalMessage('msgToothDetail013',msgToothDetail013);
    SetGlobalMessage('msgToothDetail014',msgToothDetail014);
    SetGlobalMessage('msgToothDetail015',msgToothDetail015);
    SetGlobalMessage('msgToothDetail016',msgToothDetail016);
    SetGlobalMessage('msgToothDetail017',msgToothDetail017);
    SetGlobalMessage('msgToothDetail020',msgToothDetail020);
    SetGlobalMessage('msgToothDetail021',msgToothDetail021);
    SetGlobalMessage('msgToothDetail022',msgToothDetail022);
    SetGlobalMessage('msgToothDetail023',msgToothDetail023);
    SetGlobalMessage('msgToothDetail024',msgToothDetail024);
    SetGlobalMessage('msgToothDetail025',msgToothDetail025);
    SetGlobalMessage('msgToothDetail026',msgToothDetail026);
    SetGlobalMessage('msgToothDetail027',msgToothDetail027);
    SetGlobalMessage('msgToothDetail028',msgToothDetail028);
    SetGlobalMessage('msgToothDetail029',msgToothDetail029);
    SetGlobalMessage('msgToothDetail030',msgToothDetail030);
    SetGlobalMessage('msgToothDetail031',msgToothDetail031);
    SetGlobalMessage('msgToothDetail032',msgToothDetail032);
    SetGlobalMessage('msgToothDetail033',msgToothDetail033);
    SetGlobalMessage('msgToothDetail034',msgToothDetail034);
    SetGlobalMessage('msgToothDetail035',msgToothDetail035);
    SetGlobalMessage('msgToothDetail036',msgToothDetail036);
    SetGlobalMessage('msgToothDetail037',msgToothDetail037);
  end
  else if pFormClassName = 'TfrmUpdatebiz' then
  begin
    SetGlobalMessage('msgUpdatebiz001',msgUpdatebiz001);
    SetGlobalMessage('msgUpdatebiz002',msgUpdatebiz002);
  end
  else if pFormClassName = 'TfrmUserControls' then
  begin
    SetGlobalMessage('msgUserControls001',msgUserControls001);
  end
  else if pFormClassName = 'TfrmUserAlertProcess' then
  begin
    SetGlobalMessage('msgUserAlertProcess001',msgUserAlertProcess001);
    SetGlobalMessage('msgUserAlertProcess002',msgUserAlertProcess002);
    SetGlobalMessage('msgUserAlertProcess003',msgUserAlertProcess003);
  end
  else if pFormClassName = 'TfrmUserGroup' then
  begin
    SetGlobalMessage('msgUserGroup001', msgUserGroup001);
  end
  else if pFormClassName = 'TfrmWareHouseStocks' then
  begin
    SetGlobalMessage('msgWareHouseStocks001',msgWareHouseStocks001);
    SetGlobalMessage('msgWareHouseStocks002',msgWareHouseStocks002);
    SetGlobalMessage('msgWareHouseStocks004',msgWareHouseStocks004);
    SetGlobalMessage('msgWareHouseStocks005',msgWareHouseStocks005);
    SetGlobalMessage('msgWareHouseStocks006',msgWareHouseStocks006);
    SetGlobalMessage('msgWareHouseStocks007',msgWareHouseStocks007);
  end
  else if pFormClassName = 'TfrmWarehouseStockMinMax' then
  begin
  //
    SetGlobalMessage('msgWarehouseStockMinMax001',msgWarehouseStockMinMax001);
    SetGlobalMessage('msgWarehouseStockMinMax002',msgWarehouseStockMinMax002);
    SetGlobalMessage('msgWarehouseStockMinMax003',msgWarehouseStockMinMax003);
  end
  else if pFormClassName = 'TfrmWorkingList' then
  begin
    SetGlobalMessage('msgWorkingList001',msgWorkingList001);
    SetGlobalMessage('msgWorkingList002',msgWorkingList002);
    SetGlobalMessage('msgWorkingList003',msgWorkingList003);
    SetGlobalMessage('msgWorkingList004',msgWorkingList004);
    SetGlobalMessage('msgWorkingList005',msgWorkingList005);
    SetGlobalMessage('msgWorkingList007',msgWorkingList007);
    SetGlobalMessage('msgWorkingList008',msgWorkingList008);
    SetGlobalMessage('msgWorkingList009',msgWorkingList009);
    SetGlobalMessage('msgWorkingList010',msgWorkingList010);
    SetGlobalMessage('msgWorkingList011',msgWorkingList011);
    SetGlobalMessage('msgWorkingList012',msgWorkingList012);
    SetGlobalMessage('msgWorkingList013',msgWorkingList013);
    SetGlobalMessage('msgWorkingList014',msgWorkingList014);
    //SetGlobalMessage('msgWorkingList015',msgWorkingList015);
    SetGlobalMessage('msgWorkingList016',msgWorkingList016);
    SetGlobalMessage('msgWorkingList017', msgWorkingList017);
  end
  else if pFormClassName = 'TfrmExportPatFiles' then
  begin
    SetGlobalMessage('msgExportPatFiles001',msgExportPatFiles001);
    SetGlobalMessage('msgExportPatFiles002',msgExportPatFiles002);
    SetGlobalMessage('msgExportPatFiles003',msgExportPatFiles003);
    SetGlobalMessage('msgExportPatFiles004',msgExportPatFiles004);
    SetGlobalMessage('msgExportPatFiles005',msgExportPatFiles005);
  end
  else if pFormClassName = 'TfrmExportPatFiles' then
  begin
    //
  end
  else if pFormClassName = 'TfrmNurseCarePlans' then
  begin
    SetGlobalMessage('msgNurseCarePlans001',msgNurseCarePlans001);
    SetGlobalMessage('msgNurseCarePlans002',msgNurseCarePlans002);
    SetGlobalMessage('msgNurseCarePlans003',msgNurseCarePlans003);
    SetGlobalMessage('msgNurseCarePlans004',msgNurseCarePlans004);
    SetGlobalMessage('msgNurseCarePlans005',msgNurseCarePlans005);
    SetGlobalMessage('msgNurseCarePlans006',msgNurseCarePlans006);
    SetGlobalMessage('msgNurseCarePlans007',msgNurseCarePlans007);
    SetGlobalMessage('msgNurseCarePlans008',msgNurseCarePlans008);
  end
  else if pFormClassName = 'TfrmNurseProcess' then
  begin
    SetGlobalMessage('msgNurseProcess001',msgNurseProcess001);
    SetGlobalMessage('msgNurseProcess002',msgNurseProcess002);
    SetGlobalMessage('msgNurseProcess003',msgNurseProcess003);
    SetGlobalMessage('msgNurseProcess004',msgNurseProcess004);
    SetGlobalMessage('msgNurseProcess005',msgNurseProcess005);
    SetGlobalMessage('msgNurseProcess006',msgNurseProcess006);
    SetGlobalMessage('msgNurseProcess007',msgNurseProcess007);
    SetGlobalMessage('msgNurseProcess008',msgNurseProcess008);
    SetGlobalMessage('msgNurseProcess009',msgNurseProcess009);
    SetGlobalMessage('msgNurseProcess010',msgNurseProcess010);
    SetGlobalMessage('msgNurseProcess011',msgNurseProcess011);
    SetGlobalMessage('msgNurseProcess012',msgNurseProcess012);
    SetGlobalMessage('msgNurseProcess013',msgNurseProcess013);
    SetGlobalMessage('msgNurseProcess014',msgNurseProcess014);
    SetGlobalMessage('msgNurseProcess015',msgNurseProcess015);
    SetGlobalMessage('msgNurseProcess016',msgNurseProcess016);
    SetGlobalMessage('msgNurseProcess017',msgNurseProcess017);
    SetGlobalMessage('msgNurseProcess018',msgNurseProcess018);
    SetGlobalMessage('msgNurseProcess019',msgNurseProcess019);
    SetGlobalMessage('msgNurseProcess020',msgNurseProcess020);
    SetGlobalMessage('msgNurseProcess021',msgNurseProcess021);
    SetGlobalMessage('msgNurseProcess022',msgNurseProcess022);
    SetGlobalMessage('msgNurseProcess023',msgNurseProcess023);
    SetGlobalMessage('msgNurseProcess024',msgNurseProcess024);
    SetGlobalMessage('msgNurseProcess025',msgNurseProcess025);
    SetGlobalMessage('msgNurseProcess026',msgNurseProcess026);
    SetGlobalMessage('msgNurseProcess027',msgNurseProcess027);
    SetGlobalMessage('msgNurseProcess028',msgNurseProcess028);
    SetGlobalMessage('msgNurseProcess029',msgNurseProcess029);
    SetGlobalMessage('msgNurseProcess030',msgNurseProcess030);
    SetGlobalMessage('msgNurseProcess031',msgNurseProcess031);
    SetGlobalMessage('msgNurseProcess032',msgNurseProcess032);
    SetGlobalMessage('msgNurseProcess033',msgNurseProcess033);
    SetGlobalMessage('msgNurseProcess034',msgNurseProcess034);
    SetGlobalMessage('msgNurseProcess035',msgNurseProcess035);
    SetGlobalMessage('msgNurseProcess036',msgNurseProcess036);
    SetGlobalMessage('msgNurseProcess037',msgNurseProcess037);
    SetGlobalMessage('msgNurseProcess038',msgNurseProcess038);
    SetGlobalMessage('msgNurseProcess039',msgNurseProcess039);
    SetGlobalMessage('msgNurseProcess040',msgNurseProcess040);

  end
  else if pFormClassName = 'TfrmDBConsole' then
  begin
    SetGlobalMessage('msgDBConsole001',msgDBConsole001);
  end
  else if pFormClassName = 'TfrmbyzListForm' then
  begin
    SetGlobalMessage('msgbyzListForm001',msgbyzListForm001);
    SetGlobalMessage('msgbyzListForm002',msgbyzListForm002);
    SetGlobalMessage('msgbyzListForm003',msgbyzListForm003);
  end
  else if pFormClassName = 'TfrmUserMessage' then
  begin
    SetGlobalMessage('msgUserMessage001',msgUserMessage001);
    SetGlobalMessage('msgUserMessage002',msgUserMessage002);
  end
  else if pFormClassName = 'TfrmbyzMedCard' then
  begin
    SetGlobalMessage('msgbyzMedCard001',msgbyzMedCard001);
    SetGlobalMessage('msgbyzMedCard002',msgbyzMedCard002);
    SetGlobalMessage('msgbyzMedCard003',msgbyzMedCard003);
    SetGlobalMessage('msgbyzMedCard004',msgbyzMedCard004);
    SetGlobalMessage('msgbyzMedCard005',msgbyzMedCard005);
    SetGlobalMessage('msgbyzMedCard006',msgbyzMedCard006);
    SetGlobalMessage('msgbyzMedCard007',msgbyzMedCard007);
    SetGlobalMessage('msgbyzMedCard008',msgbyzMedCard008);
    SetGlobalMessage('msgbyzMedCard009',msgbyzMedCard009);
    SetGlobalMessage('msgbyzMedCard010',msgbyzMedCard010);
    SetGlobalMessage('msgbyzMedCard011',msgbyzMedCard011);
    SetGlobalMessage('msgbyzMedCard012',msgbyzMedCard012);
    SetGlobalMessage('msgbyzMedCard013',msgbyzMedCard013);
    SetGlobalMessage('msgbyzMedCard014',msgbyzMedCard014);
    SetGlobalMessage('msgbyzMedCard015',msgbyzMedCard015);
    SetGlobalMessage('msgbyzMedCard016',msgbyzMedCard016);
    SetGlobalMessage('msgbyzMedCard017',msgbyzMedCard017);
    SetGlobalMessage('msgbyzMedCard018',msgbyzMedCard018);
    SetGlobalMessage('msgbyzMedCard019',msgbyzMedCard019);
    SetGlobalMessage('msgbyzMedCard020',msgbyzMedCard020);
    SetGlobalMessage('msgbyzMedCard021',msgbyzMedCard021);
    SetGlobalMessage('msgbyzMedCard022',msgbyzMedCard022);
    SetGlobalMessage('msgbyzMedCard023',msgbyzMedCard023);
    SetGlobalMessage('msgbyzMedCard024',msgbyzMedCard024);
    SetGlobalMessage('msgbyzMedCard025',msgbyzMedCard025);
  end
  else if pFormClassName = 'TfrmbyzReport' then
  begin
    SetGlobalMessage('msgbyzReport001',msgbyzReport001);
  end
  else if pFormClassName = 'TfrmbyzRequest' then
  begin
    SetGlobalMessage('msgbyzRequest001',msgbyzRequest001);
    SetGlobalMessage('msgbyzRequest002',msgbyzRequest002);
    SetGlobalMessage('msgbyzRequest003',msgbyzRequest003);
    SetGlobalMessage('msgbyzRequest004',msgbyzRequest004);
    SetGlobalMessage('msgbyzRequest005',msgbyzRequest005);
  end
  else if pFormClassName = 'TfrmPatAcceptInfo' then
  begin
    SetGlobalMessage('msgPatAcceptInfo001',msgPatAcceptInfo001);
    SetGlobalMessage('msgPatAcceptInfo002',msgPatAcceptInfo002);
    SetGlobalMessage('msgPatAcceptInfo003',msgPatAcceptInfo003);
  end
  else if pFormClassName = 'TfrmPhysiotherapyPlans' then
  begin
    SetGlobalMessage('msgPhysiotherapyPlans001',msgPhysiotherapyPlans001);
    SetGlobalMessage('msgPhysiotherapyPlans002',msgPhysiotherapyPlans002);
    SetGlobalMessage('msgPhysiotherapyPlans001',msgPhysiotherapyPlans003);
    SetGlobalMessage('msgPhysiotherapyPlans002',msgPhysiotherapyPlans004);
    SetGlobalMessage('msgPhysiotherapyPlans001',msgPhysiotherapyPlans005);
  end
  else if pFormClassName = 'TfrmDoRelatedMaterials' then
  begin
    SetGlobalMessage('msgDoRelatedMaterials001',msgDoRelatedMaterials001);
    SetGlobalMessage('msgDoRelatedMaterials002',msgDoRelatedMaterials002);
    SetGlobalMessage('msgDoRelatedMaterials003',msgDoRelatedMaterials003);
    SetGlobalMessage('msgDoRelatedMaterials004',msgDoRelatedMaterials004);
  end
  else if pFormClassName = 'TfrmFastServiceAdd' then
  begin
    SetGlobalMessage('msgFastServiceAdd001',msgFastServiceAdd001);
    SetGlobalMessage('msgFastServiceAdd002',msgFastServiceAdd002);
    SetGlobalMessage('msgFastServiceAdd003',msgFastServiceAdd003);
    SetGlobalMessage('msgFastServiceAdd004',msgFastServiceAdd004);
    SetGlobalMessage('msgFastServiceAdd005',msgFastServiceAdd005);
    SetGlobalMessage('msgFastServiceAdd006',msgFastServiceAdd006);
    SetGlobalMessage('msgFastServiceAdd007',msgFastServiceAdd007);
    SetGlobalMessage('msgFastServiceAdd008',msgFastServiceAdd008);
    SetGlobalMessage('msgFastServiceAdd009',msgFastServiceAdd009);
  end
  else if pFormClassName = 'TfrmPathologyProcess' then
  begin
    SetGlobalMessage('msgPathologyProcess001',msgPathologyProcess001);
    SetGlobalMessage('msgPathologyProcess002',msgPathologyProcess002);
    SetGlobalMessage('msgPathologyProcess003',msgPathologyProcess003);
    SetGlobalMessage('msgPathologyProcess004',msgPathologyProcess004);
    SetGlobalMessage('msgPathologyProcess005',msgPathologyProcess005);
    SetGlobalMessage('msgPathologyProcess006',msgPathologyProcess006);
    SetGlobalMessage('msgPathologyProcess007',msgPathologyProcess007);
    SetGlobalMessage('msgPathologyProcess008',msgPathologyProcess008);
    SetGlobalMessage('msgPathologyProcess009',msgPathologyProcess009);
    SetGlobalMessage('msgPathologyProcess010',msgPathologyProcess010);
    SetGlobalMessage('msgPathologyProcess011',msgPathologyProcess011);
    SetGlobalMessage('msgPathologyProcess012',msgPathologyProcess012);
    SetGlobalMessage('msgPathologyProcess013',msgPathologyProcess013);
    SetGlobalMessage('msgPathologyProcess014',msgPathologyProcess014);
    SetGlobalMessage('msgPathologyProcess015',msgPathologyProcess015);
    SetGlobalMessage('msgPathologyProcess016',msgPathologyProcess016);
    SetGlobalMessage('msgPathologyProcess017',msgPathologyProcess017);
    SetGlobalMessage('msgPathologyProcess018',msgPathologyProcess018);
  end
  else if pFormClassName = 'TfrmPathologyLabChoose' then
  begin
    SetGlobalMessage('msgPathologyLabChoose001',msgPathologyLabChoose001);
  end
  else if pFormClassName = 'TfrmPathologySpecialPaintins' then
  begin
    SetGlobalMessage('msgPathologySpecPaint001',msgPathologySpecPaint001);
    SetGlobalMessage('msgPathologySpecPaint002',msgPathologySpecPaint002);
  end
  else if pFormClassName = 'TfrmInPatPackage' then
  begin
    SetGlobalMessage('msgInPatPackage001',msgInPatPackage001);
    SetGlobalMessage('msgInPatPackage002',msgInPatPackage002);
    SetGlobalMessage('msgInPatPackage003',msgInPatPackage003);
  end
  else if pFormClassName = 'TfrmPatSeansArrange' then
  begin
    SetGlobalMessage('msgPatSeansArrange001',msgPatSeansArrange001);
    SetGlobalMessage('msgPatSeansArrange002',msgPatSeansArrange002);
    SetGlobalMessage('msgPatSeansArrange003',msgPatSeansArrange003);
    SetGlobalMessage('msgPatSeansArrange004',msgPatSeansArrange004);
    SetGlobalMessage('msgPatSeansArrange005',msgPatSeansArrange005);
  end
  else if pFormClassName = 'TfrmLabGeneticTest' then
  begin
    SetGlobalMessage('msgLabGeneticTest001',msgLabGeneticTest001);
    SetGlobalMessage('msgLabGeneticTest002',msgLabGeneticTest002);
    SetGlobalMessage('msgLabGeneticTest003',msgLabGeneticTest003);
  end
  else if pFormClassName = 'TfrmStockSerialMovControl' then
  begin
    SetGlobalMessage('msgStockSerialMovControl001',msgStockSerialMovControl001);
    SetGlobalMessage('msgStockSerialMovControl002',msgStockSerialMovControl002);
    SetGlobalMessage('msgStockSerialMovControl003',msgStockSerialMovControl003);
    SetGlobalMessage('msgStockSerialMovControl004',msgStockSerialMovControl004);
    SetGlobalMessage('msgStockSerialMovControl005',msgStockSerialMovControl005);
    SetGlobalMessage('msgStockSerialMovControl006',msgStockSerialMovControl006);
    SetGlobalMessage('msgStockSerialMovControl007',msgStockSerialMovControl007);
    SetGlobalMessage('msgStockSerialMovControl008',msgStockSerialMovControl008);
    SetGlobalMessage('msgStockSerialMovControl009',msgStockSerialMovControl009);
    SetGlobalMessage('msgStockSerialMovControl010',msgStockSerialMovControl010);
    SetGlobalMessage('msgStockSerialMovControl011',msgStockSerialMovControl011);
    SetGlobalMessage('msgStockSerialMovControl012',msgStockSerialMovControl012);
    SetGlobalMessage('msgStockSerialMovControl013',msgStockSerialMovControl013);
    SetGlobalMessage('msgStockSerialMovControl014',msgStockSerialMovControl014);
  end
  else if pFormClassName = 'TdmSNET' then
  begin
    SetGlobalMessage('msgDtMdSnet001',msgDtMdSnet001);
    SetGlobalMessage('msgDtMdSnet002',msgDtMdSnet002);
    SetGlobalMessage('msgDtMdSnet003',msgDtMdSnet003);
    SetGlobalMessage('msgDtMdSnet004',msgDtMdSnet004);
    SetGlobalMessage('msgDtMdSnet005',msgDtMdSnet005);
    SetGlobalMessage('msgDtMdSnet006',msgDtMdSnet006);
    SetGlobalMessage('msgDtMdSnet007',msgDtMdSnet007);
  end
  else if pFormClassName = 'TfrmRadDoctorProcess' then
  begin
    SetGlobalMessage('msgRadDoctorProcess001', msgRadDoctorProcess001);
    SetGlobalMessage('msgRadDoctorProcess002', msgRadDoctorProcess002);
    SetGlobalMessage('msgRadDoctorProcess003', msgRadDoctorProcess003);
    SetGlobalMessage('msgRadDoctorProcess004', msgRadDoctorProcess004);
    SetGlobalMessage('msgRadDoctorProcess005', msgRadDoctorProcess005);
    SetGlobalMessage('msgRadDoctorProcess006', msgRadDoctorProcess006);
    SetGlobalMessage('msgRadDoctorProcess007', msgRadDoctorProcess007);
    SetGlobalMessage('msgRadDoctorProcess008', msgRadDoctorProcess008);
    SetGlobalMessage('msgRadDoctorProcess009', msgRadDoctorProcess009);
    SetGlobalMessage('msgRadDoctorProcess010', msgRadDoctorProcess010);
    SetGlobalMessage('msgRadDoctorProcess011', msgRadDoctorProcess011);
    SetGlobalMessage('msgRadDoctorProcess012', msgRadDoctorProcess012);
    SetGlobalMessage('msgRadDoctorProcess013', msgRadDoctorProcess013);
    SetGlobalMessage('msgRadDoctorProcess014', msgRadDoctorProcess014);
    SetGlobalMessage('msgRadDoctorProcess015', msgRadDoctorProcess015);
  end
  else if pFormClassName = 'TfrmJobAssign' then
    SetGlobalMessage('msgJobAssign001', msgJobAssign001)
  else if pFormClassName = 'TfrmPhotoCam' then
  begin
    SetGlobalMessage('msgPhoto001', msgPhoto001);
    SetGlobalMessage('msgPhoto002', msgPhoto002);
    SetGlobalMessage('msgPhoto003', msgPhoto003);
  end
  else if pFormClassName = 'TfrmMsg' then
  begin
    SetGlobalMessage('msgMsg001', msgMsg001);
  end
  else if pFormClassName = 'TfrmHID' then
  begin
    SetGlobalMessage('msgHIDForm001', msgHIDForm001);
    SetGlobalMessage('msgHIDForm002', msgHIDForm002);
    SetGlobalMessage('msgHIDForm003', msgHIDForm003);
    SetGlobalMessage('msgHIDForm004', msgHIDForm004);
    SetGlobalMessage('msgHIDForm005', msgHIDForm005);
  end
  else if pFormClassName = 'TfrmPeriodPriceListChange' then
  begin
    SetGlobalMessage('msgPeriodPriceListChange001', msgPeriodPriceListChange001);
  end
  else if pFormClassName = 'TfrmUpdatePlan' then
  begin
    SetGlobalMessage('msgUpdatePlan001', msgUpdatePlan001);
    SetGlobalMessage('msgUpdatePlan002', msgUpdatePlan002);
    SetGlobalMessage('msgUpdatePlan003', msgUpdatePlan003);
    SetGlobalMessage('msgUpdatePlan004', msgUpdatePlan004);
  end
  else if pFormClassName = 'TfrmMCCatheterMaterialTrace' then
  begin
    SetGlobalMessage('msgMCCatheterMaterialTrace001', msgMCCatheterMaterialTrace001);
  end
  else if pFormClassName = 'TfrmByzInput' then
  begin
    SetGlobalMessage('msgByzInput001', msgByzInput001);
  end
  else if pFormClassName = 'TfrmMessageTemplates' then
  begin
    SetGlobalMessage('msgMessageTemplates001', msgMessageTemplates001);
    SetGlobalMessage('msgMessageTemplates002', msgMessageTemplates002);
    SetGlobalMessage('msgMessageTemplates003', msgMessageTemplates003);
  end
  else if pFormClassName = 'TfrmMCAnesthesiaEvaluation' then
  begin
    SetGlobalMessage('msgMCAnesthesiaEvaluation001', msgMCAnesthesiaEvaluation001);
    SetGlobalMessage('msgMCAnesthesiaEvaluation002', msgMCAnesthesiaEvaluation002);
    SetGlobalMessage('msgMCAnesthesiaEvaluation003', msgMCAnesthesiaEvaluation003);
    SetGlobalMessage('msgMCAnesthesiaEvaluation004', msgMCAnesthesiaEvaluation004);
    SetGlobalMessage('msgMCAnesthesiaEvaluation005', msgMCAnesthesiaEvaluation005);
    SetGlobalMessage('msgMCAnesthesiaEvaluation006', msgMCAnesthesiaEvaluation006);
    SetGlobalMessage('msgMCAnesthesiaEvaluation007', msgMCAnesthesiaEvaluation007);
    SetGlobalMessage('msgMCAnesthesiaEvaluation008', msgMCAnesthesiaEvaluation008);
    SetGlobalMessage('msgMCAnesthesiaEvaluation009', msgMCAnesthesiaEvaluation009);
    SetGlobalMessage('msgMCAnesthesiaEvaluation010', msgMCAnesthesiaEvaluation010);
    SetGlobalMessage('msgMCAnesthesiaEvaluation011', msgMCAnesthesiaEvaluation011);
  end
  else if pFormClassName = 'TfrmMCConstraintEvaluation' then
  begin
    SetGlobalMessage('msgMCConstraintEvaluation001', msgMCConstraintEvaluation001);
    SetGlobalMessage('msgMCConstraintEvaluation002', msgMCConstraintEvaluation002);
    SetGlobalMessage('msgMCConstraintEvaluation003', msgMCConstraintEvaluation003);
    SetGlobalMessage('msgMCConstraintEvaluation004', msgMCConstraintEvaluation004);
    SetGlobalMessage('msgMCConstraintEvaluation005', msgMCConstraintEvaluation005);
  end
  else if pFormClassName = 'TfrmMCAdverseImpactForm' then
  begin
    SetGlobalMessage('msgMCAdverseImpactForm001', msgMCAdverseImpactForm001);
  end
   else if pFormClassName = 'TfrmMCDietitianEvaluation' then
  begin
    SetGlobalMessage('msgMCDietitianEvaluation001', msgMCDietitianEvaluation001);
  end
  else if pFormClassName = 'TfrmMCApacheII' then
  begin
    SetGlobalMessage('msgMCApacheII001', msgMCApacheII001);
    SetGlobalMessage('msgMCApacheII002', msgMCApacheII002);
    SetGlobalMessage('msgMCApacheII003', msgMCApacheII003);
  end
  else if pFormClassName = 'TMCPrismScore' then
  begin
    SetGlobalMessage('msgMCPrism0001', msgMCPrism0001);
  end
  else if pFormClassName ='TfrmSafeBirthControl' then
  begin
    SetGlobalMessage('msgMCSafeBirthControl001', msgMCSafeBirthControl001);
    SetGlobalMessage('msgMCSafeBirthControl002', msgMCSafeBirthControl002);
    SetGlobalMessage('msgMCSafeBirthControl003', msgMCSafeBirthControl003);
  end
  else if pFormClassName ='TfrmMCPelodScore' then
  begin
    SetGlobalMessage('msgMCPelodScore001', msgMCPelodScore001);
  end
  else if pFormClassName ='TfrmMCStrongKidsNutritionAssessment' then
  begin
    SetGlobalMessage('msgMCStrongKidsNutritionAssessment001', msgMCStrongKidsNutritionAssessment001);
  end
  else if pFormClassName ='TfrmMCSafeSurgeryControl' then
  begin
    SetGlobalMessage('msgMCSafeSurgeryControl001', msgMCSafeSurgeryControl001);
    SetGlobalMessage('msgMCSafeSurgeryControl002', msgMCSafeSurgeryControl002);
    SetGlobalMessage('msgMCSafeSurgeryControl003', msgMCSafeSurgeryControl003);
    SetGlobalMessage('msgMCSafeSurgeryControl004', msgMCSafeSurgeryControl004);
  end;
end;
end.
