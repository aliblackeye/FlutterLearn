import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: ekranGenisligi,
                child: Image.network(
                    "https://cdn.yemek.com/mncrop/600/315/uploads/2017/02/hazir-donerden-iskender-adim-5.jpg"),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: ekranGenisligi / 8,
                      child: TextButton(
                        child: Yazi("Beğen", ekranGenisligi / 25),
                        onPressed: () {
                          print("Beğenildi");
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: ekranGenisligi / 8,
                      child: TextButton(
                        child: Yazi("Yorum Yap", ekranGenisligi / 25),
                        onPressed: () {
                          print("Yorum Yapıldı");
                        },
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "İskender",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi / 20,
                      ),
                    ),
                    Row(
                      children: [
                        Yazi("İskender tarifi", 20),
                        Spacer(),
                        Yazi("10 Nisan", 20),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 100),
                child: Yazi(
                    "Dana bonfile etini streç filme sarıp dondurucuya alın. Yaklaşık 1-1,5 saat buzlukta bekletin. Bıçakla ince dilimler kesebileceğiniz sertliğe geldiğinde eti buzluktan çıkarın."
                    "Keskin bir bıçak yardımıyla ince yaprak şeklinde dilimler kesin. Yapışmaz yüzeyli bir tencereye etleri alın ve suyunu salıp tekrar çekene kadar karıştırmadan kapağı kapalı olarak pişirin."
                    "Zeytinyağı ve tereyağını da tencereye ilave edip kızartın. Tuz ve karabiber ile tatlandırıp ocaktan alın."
                    "Sosu için zeytinyağı ve tereyağını bir sos tenceresine alıp ısıtın. Domates püresi ve sıcak suyu ekleyip kaynamaya bırakın. Kaynamaya başladığında tuzunu ilave edip karıştırın ve ocaktan alın."
                    "Yapışmaz yüzeyli bir tavada tereyağını eritin. Pideleri küp küp doğrayıp tavaya ekleyin ve hafif pembeleşene kadar kızartın."
                    "Ayçiçek yağını bir tavada ısıtın. Biberleri ve dörde böldüğünüz domatesleri yağda kızartıp hazırlayın."
                    ""
                    "Servis tabağına önce hafif kızarttığınız pideleri yayın. Üzerine domates sosu gezdirin ve kızarttığınız etleri yerleştirin. Tereyağını eritip etlerin üzerine gezdirin. Yanında yoğurt, kızarttığınız domates ve biberleri yerleştirin.",
                    20),
              ),
            ],
          ),
        ));
  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyutu;

  Yazi(this.icerik, this.yaziBoyutu);

  @override
  Widget build(BuildContext context) {
    return Text(icerik, style: TextStyle(fontSize: yaziBoyutu));
  }
}
