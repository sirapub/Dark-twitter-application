import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: true,
      time: "10m",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
      postText: ' Hi My name is Sirapub , My nickname Art',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: true,
      time: "9m",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318124919_2369612859871003_3638420384383983435_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=bM5gqb_1OK8AX9QDs1d&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCX0PFSz2XVnnCbKghSDJB2b6BuW_ZstrBui-G6HFkj0w&oe=6391E753',
      postText:
          'เมื่อเดือนก่อน ผมได้เดินทางไปที่อเมริกา เพื่อไปเยี่ยมพี่สาวครับ พี่สาวเรียนต่อที่นี่ จบปริญญาตรีที่ ม.กรุงเทพครับ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: false,
      time: "8m",
      name: '@art',
      avatar_url: '',
      postText: 'วันนี้เดินทางค่อนข้างเพลีย',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: true,
      time: "7m",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318189754_2369612753204347_1178010827147831060_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=1cjYO4-HC2UAX9KiBSg&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCQLzYFkdw8mvL8mMkZs5Ktj6LBxP4Zye56mexxMcZtbg&oe=63918A95',
      postText: 'ภาพบรรยากาศที่นั่น',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: true,
      time: "6m",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk12-1.fna.fbcdn.net/v/t39.30808-6/318320950_2369612713204351_1866957179776347334_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=Ui-mowkvjcYAX8qNX1V&_nc_ht=scontent.fbkk12-1.fna&oh=00_AfCplP681iNQpimOOhb0iUlqyYHeJvOo_V6bT_ptdF0JFw&oe=639260F8',
      postText: 'แม่ถ่ายครับ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: true,
      time: "5m",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk12-4.fna.fbcdn.net/v/t39.30808-6/318445236_2369612673204355_4577649557202366609_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=cnUKflr-aXQAX8cpE3m&_nc_ht=scontent.fbkk12-4.fna&oh=00_AfCI_bzNC_0DWZb0nPBtWzXRIf11_GasIqbxstPcH5cPYA&oe=6391107A',
      postText: 'สวยดีครับ เลยถ่ายเก็บไว้สักหน่อย',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: false,
      time: "4m",
      name: '@art',
      avatar_url: '',
      postText:
          'มาหลายสัปดาห์ ขาดเรียนหลายคาบ ไม่รู้จะกลับไปตามงานทันไหม (sad)',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: true,
      time: "3m",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk12-2.fna.fbcdn.net/v/t39.30808-6/318432599_2369612823204340_7805396697101700706_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=GFRQpj427ZMAX-G4X30&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-2.fna&oh=00_AfBi10OTDYrOt3iFCS_kpT6TKcJdvlC5QCKgn_u8ZVVv6g&oe=6390E648',
      postText: 'ร้านนี้ดีครับ ยกนิ้วให้เลย ให้เดาครับว่านิ้วไหน',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: false,
      time: "2m",
      name: '@art',
      avatar_url: '',
      postText: 'ไม่ค่อยได้ถ่ายภาพตัวเองเลยครับ ถ่ายให้แต่แม่กับพี่สาว',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
    Tweet(
      state: true,
      time: "0s",
      name: '@art',
      avatar_url:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/318119927_2369612953204327_382177502217302161_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=Oyp0czgaQIoAX-wkKRg&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfDJOvngjBhhOkoVzCNeTQqsdD72ZtuclHpzuU44GJSfnw&oe=63929AAC',
      postText: 'รูปไม่ค่อยมี โพสต์สุดท้ายครับ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/318152121_2369612886537667_8299841933662440016_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=jRs9PP47F4oAX9fNjkK&_nc_oc=AQlv3l8uJLm326BXSYT3Edl2H_RycLrm92c02MaIjDgq1gAeIztv3uItMwXnQsui4alEkaKTmV5EoPUicp7GwZ_d&tn=BTnxNh2e9CDsk4Cw&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfCbPrfmbdFerL4uGmfiNAbqov6jWuRZIdrCKx1eYN9RVg&oe=639131F7'),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Twitter",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.red),
            buildIconButton(Icons.search_outlined, Colors.black),
            buildIconButton(Icons.notifications_outlined, Colors.black),
            buildIconButton(Icons.email_outlined, Colors.black),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
