import 'package:eartify/user_plant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.notifications_active,
              color: Color(0xFF4E6129),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.settings,
              color: Color(0xFF4E6129),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 15,
              child: ClipOval(
                child: Image.asset('images/profil.jpg'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/tree.png',
                width: 40,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: RichText(
                  text: const TextSpan(
                    text: "How are you Dicoding,",
                    style: TextStyle(
                        color: Color(0xFFABBD72),
                        fontFamily: "Carot",
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: "\nHelp us save the earth",
                          style: TextStyle(
                              color: Color(0xFF4E6129),
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.5)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "LATEST PLANTS",
                      style: TextStyle(
                          color: Color(0xFF4E6129),
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Color(0xFFABBD72),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 323,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    final UserPlant plant = userPlaceList[index];

                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 200,
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        plant.imageAsset,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const FavoritButton(),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  plant.name,
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Color(0xFF4E6129),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 15),
                                child: Text(
                                  plant.description,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    color: Color(0xFF4E6129),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12, left: 15),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.watch_later,
                                      color: Color(0xFF798759),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text(
                                        plant.time,
                                        style: TextStyle(
                                            color: Color(0xFF798759),
                                            fontFamily: "Carrot",
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                  itemCount: userPlaceList.length,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "TODAY",
                      style: TextStyle(
                          color: Color(0xFF4E6129),
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Color(0xFFABBD72),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 7),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.08),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.forest,
                          color: Color(0XFFABBD72),
                          size: 33,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: "Dicky planted",
                                  style: TextStyle(
                                      fontFamily: "Carrot",
                                      color: Color(0XFF798759),
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                        text: " evergreen tree",
                                        style: TextStyle(
                                            color: Color(0XFF4E6129),
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  color: Color(0xFF798759),
                                  size: 18,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "2:18pm",
                                    style: TextStyle(
                                        color: Color(0xFF798759),
                                        fontFamily: "Carrot",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.08),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.local_florist,
                          color: Color(0XFFABBD72),
                          size: 33,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: "Tsabit planted",
                                  style: TextStyle(
                                      fontFamily: "Carrot",
                                      color: Color(0XFF798759),
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                        text: " tanabata tree",
                                        style: TextStyle(
                                            color: Color(0XFF4E6129),
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  color: Color(0xFF798759),
                                  size: 18,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "2:18pm",
                                    style: TextStyle(
                                        color: Color(0xFF798759),
                                        fontFamily: "Carrot",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFFABBD72),
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 30, right: 30, top: 15, bottom: 15)),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                          fontFamily: "Carot",
                          color: Color(0xFFE4ECE2),
                          fontWeight: FontWeight.w600),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Text("Plant your first tree"),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Privacy policy & Terms of conditions",
                    style: TextStyle(
                      color: Color(0XFF798759),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritButton extends StatefulWidget {
  const FavoritButton({Key? key}) : super(key: key);

  @override
  _FavoritButtonState createState() => _FavoritButtonState();
}

class _FavoritButtonState extends State<FavoritButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isFavorite ? Color(0xFF4E6129) : Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 2,
            color: Colors.white.withOpacity(0),
          ),
        ),
        child: IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            size: 20,
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
