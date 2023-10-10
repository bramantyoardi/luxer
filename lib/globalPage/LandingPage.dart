import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:luxer/user/HomeUser.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  String nama = "";
  String team = "";
  String id = "";
  TextEditingController namaController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController idController = TextEditingController();
  final _controller = PageController();
  
  // bool _showFAB = false; // Variabel untuk mengontrol visibilitas FAB

  // @override
  // void initState() {
  //   super.initState();

  //   // Mendengarkan perubahan halaman di PageView
  //   _controller.addListener(() {
  //     if (_controller.page == 2) {
  //       // Jika slide tampil ke slide ketiga (indeks 2), tampilkan FAB
  //       setState(() {
  //         _showFAB = true;
  //       });
  //     } else {
  //       // Jika tidak, sembunyikan FAB
  //       setState(() {
  //         _showFAB = false;
  //       });
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 250, 237),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    controller: _controller,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/LandingPage1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/LandingPage2.png",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/LandingPage3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/images/LandingPage4.png"),
                          fit: BoxFit.fill,
                        )),
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Masuk ke Luxer',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 19, 42, 76),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 19, 42, 76),
                                  ),
                                  controller: namaController,
                                  decoration: InputDecoration(
                                      hintText: "Masukkan Nama Anda",
                                      labelText: "Nama",
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 19, 42, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 19, 42, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  validator: (value) {
                                    if (value!.length == 0) {
                                      return "Field tidak boleh kosong";
                                    }
                                  },
                                  onSaved: (value) {
                                    namaController.text = value!;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 19, 42, 76),
                                  ),
                                  controller: teamController,
                                  decoration: InputDecoration(
                                      hintText: "Masukkan Team Anda",
                                      labelText: "Nama Team",
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 19, 42, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 19, 42, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  validator: (value) {
                                    if (value!.length == 0) {
                                      return "Field tidak boleh kosong";
                                    }
                                  },
                                  onSaved: (value) {
                                    teamController.text = value!;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color.fromARGB(255, 19, 42, 76),
                                  ),
                                  controller: idController,
                                  decoration: InputDecoration(
                                      hintText: "Masukkan ID Luxer Anda",
                                      labelText: "ID Luxer",
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 19, 42, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 19, 42, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  validator: (value) {
                                    if (value!.length == 0) {
                                      return "Field tidak boleh kosong";
                                    }
                                  },
                                  onSaved: (value) {
                                    idController.text = value!;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                OutlinedButton(
                                    onPressed: () {
                                      String nama = namaController.text;
                                      String team = teamController.text;
                                      String id = idController.text;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => HomeUser()));
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            backgroundColor:
                                                Color.fromARGB(255, 19, 42, 76),
                                            title: Text(
                                              'Data yang Diinputkan',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 250, 237)),
                                            ),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Nama: $nama',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            255,
                                                            250,
                                                            237))),
                                                Text('Team: $team',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            255,
                                                            250,
                                                            237))),
                                                Text('ID: $id',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            255,
                                                            250,
                                                            237))),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('Tutup',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255,
                                                            255,
                                                            250,
                                                            237))),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          color: Color.fromARGB(
                                              255, 255, 250, 237)),
                                      foregroundColor:
                                          Color.fromARGB(255, 255, 250, 237),
                                    ),
                                    child: Text("Masuk")),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                          activeDotColor: Colors.white,
                          dotColor: Colors.grey,
                          dotHeight: 10,
                          dotWidth: 10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),

      // floatingActionButton: _showFAB
      //     ? OutlinedButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (_) => HomeUser()));
      //         },
      //         style: OutlinedButton.styleFrom(
      //           side: BorderSide(color: Colors.blueAccent, width: 1),
      //           foregroundColor: Colors.blueAccent,
      //         ),
      //         child: Text("Jelajahi"))
      //     : null, // FAB hanya ditampilkan ketika _showFAB adalah true
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
