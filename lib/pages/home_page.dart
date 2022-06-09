import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental_health_app/routes/routes.dart';
import 'package:mental_health_app/utils/dimensions.dart';
import 'package:mental_health_app/widgets/app_icon.dart';
import 'package:mental_health_app/widgets/card_widget.dart';
import 'package:mental_health_app/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Category"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account"
          )
        ],
      ),
      body: SafeArea(
        child: _pages.elementAt(_currentIndex),
      ),
    );
  }

  final _pages = <Widget>[
    Column(
        children: [
          SizedBox(height: Dimensions.height25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width25),
            child: Column(
              children: [
                // greetings row
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTextWidget(
                            text: "Hi, Bello!",
                            color: Colors.white,
                            size: Dimensions.font26,
                            isBold: true,
                          ),
                          SizedBox(height: Dimensions.height8),
                          MyTextWidget(
                            text: "08 06, 2022",
                            color: Colors.blue[200],
                            size: Dimensions.font16,
                            isBold: true,
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(
                              RoutesClass.getNotificationPage(),
                              arguments: {
                                "name": 'Go Back'
                              }
                          );
                        },
                        child: AppIcon(
                            icon: Icons.notifications,
                            iconColor: Colors.white,
                            bgColor: Colors.blue[600]
                        ),
                      )
                    ]
                ),
                SizedBox(height: Dimensions.height20),
                // search bar
                Container(
                  padding: EdgeInsets.all(Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    color: Colors.blue[600],
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.white,),
                      SizedBox(width: Dimensions.width10),
                      MyTextWidget(text: "Search", color: Colors.white)
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextWidget(
                      text: "How do you feel?",
                      color: Colors.white,
                      size: Dimensions.font16,
                    ),
                    const Icon(Icons.more_horiz, color: Colors.white,)
                  ],
                ),
                SizedBox(height: Dimensions.height25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        AppIcon(icon: Icons.emoji_emotions, iconColor: Colors.yellow, bgColor: Colors.blue[600]),
                        SizedBox(height: Dimensions.height8),
                        MyTextWidget(text: "Badly", color: Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        AppIcon(icon: Icons.emoji_emotions, iconColor: Colors.yellow, bgColor: Colors.blue[600]),
                        SizedBox(height: Dimensions.height8),
                        MyTextWidget(text: "Fine", color: Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        AppIcon(icon: Icons.emoji_emotions, iconColor: Colors.yellow, bgColor: Colors.blue[600]),
                        SizedBox(height: Dimensions.height8),
                        MyTextWidget(text: "Well", color: Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        AppIcon(icon: Icons.emoji_emotions, iconColor: Colors.yellow, bgColor: Colors.blue[600]),
                        SizedBox(height: Dimensions.height8),
                        MyTextWidget(text: "Excellent", color: Colors.white)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: Dimensions.height25),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius30),
                topLeft: Radius.circular(Dimensions.radius30),
              ),
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.width25),
                  child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTextWidget(
                            size: Dimensions.font20,
                            text: "Exercises",
                            color: Colors.grey[700],
                            isBold: true,
                          ),
                          Icon(Icons.more_horiz, color: Colors.grey[700],)
                        ],
                      ),
                      SizedBox(height: Dimensions.height20),
                      // listview of exercises
                      Expanded(
                          child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    top: Dimensions.height8,
                                    bottom: Dimensions.height8,
                                  ),
                                  padding: EdgeInsets.all(Dimensions.width15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(Dimensions.radius15)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          AppIcon(
                                              icon: index.isEven ? Icons.favorite : Icons.person,
                                              iconColor: Colors.white,
                                              bgColor: index.isEven ? Colors.yellow[600] : Colors.blue[600]
                                          ),
                                          SizedBox(width: Dimensions.width15,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              MyTextWidget(text: "What is Lorem Ipsum?", color: Colors.grey[800], isBold: true,),
                                              SizedBox(height: Dimensions.height8,),
                                              MyTextWidget(text: "Lorem Ipsum", color: Colors.grey, size: Dimensions.font12,)
                                            ],
                                          )
                                        ],
                                      ),
                                      const Icon(Icons.more_horiz)
                                    ],
                                  ),
                                );
                              })
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]
    ),
    Column(
        children: [
          SizedBox(height: Dimensions.height25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width25),
            child: Column(
              children: [
                // greetings row
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTextWidget(
                            text: "Hi, Bello!",
                            color: Colors.white,
                            size: Dimensions.font26,
                            isBold: true,
                          ),
                          SizedBox(height: Dimensions.height8),
                          MyTextWidget(
                            text: "08 06, 2022",
                            color: Colors.blue[200],
                            size: Dimensions.font16,
                            isBold: true,
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(
                              RoutesClass.getNotificationPage(),
                              arguments: {
                                "name": 'Go Back'
                              }
                          );
                        },
                        child: AppIcon(
                            icon: Icons.notifications,
                            iconColor: Colors.white,
                            bgColor: Colors.blue[600]
                        ),
                      )
                    ]
                ),
                SizedBox(height: Dimensions.height20),
                // search bar
                Container(
                  padding: EdgeInsets.all(Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    color: Colors.blue[600],
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.white,),
                      SizedBox(width: Dimensions.width10),
                      MyTextWidget(text: "Search", color: Colors.white)
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height25),
              ],
            ),
          ),
          SizedBox(height: Dimensions.height25),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius30),
                topLeft: Radius.circular(Dimensions.radius30),
              ),
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.width25),
                  child: Column(
                    children: [
                      // Category heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTextWidget(
                            size: Dimensions.font20,
                            text: "Category",
                            color: Colors.grey[700],
                            isBold: true,
                          ),
                          Icon(Icons.more_horiz, color: Colors.grey[700])
                        ],
                      ),
                      SizedBox(height: Dimensions.height20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CardWidget(bgColor: Colors.purple, text: "Relationship"),
                          CardWidget(bgColor: Colors.blue, text: "Career"),
                        ],
                      ),
                      SizedBox(height: Dimensions.height20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CardWidget(bgColor: Colors.orangeAccent, text: "Education"),
                          CardWidget(bgColor: Colors.red, text: "Other"),
                        ],
                      ),
                      SizedBox(height: Dimensions.height20),
                      // listview of exercises
                      Expanded(
                          child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    top: Dimensions.height8,
                                    bottom: Dimensions.height8,
                                  ),
                                  padding: EdgeInsets.all(Dimensions.width15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(Dimensions.radius15)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          AppIcon(
                                              icon: index.isEven ? Icons.favorite : Icons.person,
                                              iconColor: Colors.white,
                                              bgColor: index.isEven ? Colors.yellow[600] : Colors.blue[600]
                                          ),
                                          SizedBox(width: Dimensions.width15,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              MyTextWidget(text: "What is Lorem Ipsum?", color: Colors.grey[800], isBold: true,),
                                              SizedBox(height: Dimensions.height8,),
                                              MyTextWidget(text: "Lorem Ipsum", color: Colors.grey, size: Dimensions.font12,)
                                            ],
                                          )
                                        ],
                                      ),
                                      const Icon(Icons.more_horiz)
                                    ],
                                  ),
                                );
                              })
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]
    ),
    Column(
      children: [
        SizedBox(height: Dimensions.height20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back, iconColor: Colors.white, bgColor: Colors.blue[500]),
              Column(
                children: [
                  MyTextWidget(text: "Abdulrouf", color: Colors.white, isBold: true,),
                  MyTextWidget(text: "Online", color: Colors.white, size: Dimensions.font12),
                ],
              ),
              AppIcon(icon: Icons.phone, iconColor: Colors.white, bgColor: Colors.blue[500])
            ],
          ),
        ),
        SizedBox(height: Dimensions.height20,),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.radius30),
              topLeft: Radius.circular(Dimensions.radius30),
            ),
            child: Container(
              color: Colors.white,
            ),
          ),
        )
      ],
    )
  ];

  void _showSnackBar () {
    Get.snackbar(
        "title",
        "message",
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      snackStyle: SnackStyle.FLOATING
    );
  }
}
