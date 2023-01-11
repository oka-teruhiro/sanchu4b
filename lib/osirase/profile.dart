import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'プロフィール',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const <Widget>[
          /*TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookListPageB(),
                  ));
            },
            child: Text(''),
          ),*/
          //icon: const Icon(Icons.navigate_next),
          //tooltip: 'Next page',
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Image.asset('images/main/taxi.png'),
          ),
          const ListTile(
            title: Text('　私は東京のタクシー運転手です。63歳です。'
                '2016年にタクシー運転手になりました。'
                '2020年4月コロナ禍で失業し、7月再就職しました。'),
          ),
          const ListTile(
            title: Text('　タクシー運転手をしてみると、こんなアプリがあったらいいなと思うことが多々'
                'ありました。失業中、ネットでスマホのアプリを初心者でも作れることを知'
                'り、スマホアプリに挑戦してみました。'),
          ),
          const ListTile(
            title: Text('　主にYouTubeの「KBOYのFlutter大学の基礎」を何度も繰り返し見ながら、'
                'わからないところはQiitaで調べながら、例題をこなすなかで、ふと浮か'
                'んだのが、「占い」アプリです。'),
          ),
          const ListTile(
            title: Text('　私は、2011年に公益社団法人日本易学連合会の藤懸庚汪先生から'
                '四柱推命を学んだ経験があります。人間関係で悩んでいる方々の相談にのっ'
                'てあげたこともありました。まず、自分を知って、相手を知ることによって、ど'
                'のように関わっていったらいいかのアドバスをしました。自分の心の持ち方が'
                '変わることで解決した方も多くいました。みるべきところは色々ありますが、'
                '今回は、日干（にっかん）に絞って表示するようにしました。'),
          ),
          const ListTile(
            title: Text('　日干は、甲・乙・丙・丁・戊・己・庚・辛・壬・癸　の順に10日間で巡って'
                'きます。西暦1900年1月1日は「甲」なので、1900年1月1日から生年月日までの'
                '日数を出し、１０で割った余りを算出します。余りが０なら甲、余りが１なら乙、'
                '・・・、余りが９なら癸になります。余りの数字に従って画面遷移させています。'),
          ),
          const ListTile(
            title: Text('　6/22、環境構築から始まって、①画面に文字や画像を配置し、②ボタ'
                'ンを押したら画面遷移し、③生年月日を入れたら日干を計算し、画面遷移する。'
                'ところまでできたところで、7/14、新しいタクシー会社に入社しました。同期入'
                '社の方が、IT会社のSEを経験された方でした。その方から、「GooglePlayに上'
                'げたらいいですよ」とアドバイスを頂き、今回のリリースとなりました。'),
          ),
          const ListTile(
            title: Text('　日干から見る大まかな性格がわかるだけでも、けっこう有効です'
                'が、どのような関係性があるかについてはまだ記述してないので、今後追加し'
                'てバージョンアップしていこうと思います。ズブの素人が初めて作成したもの'
                'です。温かい目で見ていただけるとありがたいです。'),
          ),
          const ListTile(
            title: Text('　また、タクシー運転手としてもまだまだ未熟です。未熟ゆえにこん'
                'な支援機能があったらいいなと思うことが沢山あります。今後もプログラムを'
                '学びながら実現していきたいと思っています。'),
          ),
          const ListTile(
            title: Text('　　(2021.2.22)'),
          ),
          const ListTile(
            title: Text(''),
          ),
          /*AdmobBanner(
              adUnitId: AdMobService().getBannerAdUnitId(),
              adSize: AdmobBannerSize(
                width: MediaQuery.of(context).size.width.toInt(),
                height: AdMobService().getHeight(context).toInt(),
                name: 'SMART_BANNER',
              )),*/
          const ListTile(
            title: Text(''),
          ),
          ElevatedButton(
            child: const Text('戻る'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
