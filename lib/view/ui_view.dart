import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ui_presentation/view_model/ui_view_model.dart';

class PageUI extends StatefulWidget {
  const PageUI({super.key});

  @override
  State<PageUI> createState() => _PageUIState();
}

class _PageUIState extends State<PageUI> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double appBarHeight = 200.0; // Initial height of app bar
    double bottomNavBarHeight =
        kBottomNavigationBarHeight; // Height of bottom navigation bar

    // Calculate available height for the body content
    double availableBodyHeight =
        screenHeight - appBarHeight - bottomNavBarHeight;

    return Scaffold(
      extendBodyBehindAppBar: true, // Ensure body extends behind app bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            screenHeight - bottomNavBarHeight), // Adjust height as needed
        child: ClipPath(
          clipper: AppBarCurveClipper(), // Custom clipper for curved shape
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top:30.0),

              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Consumer<viewModel>(builder: (context, viewmodel, _) {
                          return viewmodel.uiContainer(context, 50.0, 50.0,
                              iconData: Icons.abc,
                              radius: 100.0,
                              borderColor: Colors.lightBlueAccent);
                        }),
                        Consumer<viewModel>(builder: (context, viewmodel, _) {
                          return viewmodel.uiContainer(context, 50.0, 50.0,
                              iconData: Icons.person,
                              radius: 100.0,
                              // borderColor: Colors.purpleAccent,
                              ContainerColor: Colors.yellow,
                          image: AssetImage("assets1/pro2.png"),

                          );

                        }),
                      ],
                    ),

                    SizedBox(height: mq.size.height*0.02,),
                    Stack(
                      children: [

                    Consumer<viewModel>(builder: (context, viewmodel, _) {
                      return viewmodel.uiContainer(
                        context,
                        100,
                        screenWidth,
                      );
                    }),


                        Consumer<viewModel>(builder: (context, viewmodel, _) {
                          return viewmodel.uiContainer(
                            context,
                            140,
                            screenWidth*0.8,
                            ContainerColor: Colors.purple.shade50,
                            radius: 30.0,
                            // borderColor: Colors.yellow,
                            fontcolor: Colors.black26
                          );
                        }),

                        Positioned(
                          left: 50,
                          // right: 0,
                          top: 30,
                          // right: -(screenWidth * 0.1),
                          child: Consumer<viewModel>(builder: (context, viewmodel, _) {
                            return viewmodel.uiContainer(
                              context,
                              30,
                              130,
                              // ContainerColor: Colors.orange,
                              radius: 20.0,
                              // borderColor: Colors.green,
                              textdata: "Find Best",
                              fontsize: 25,
                              fontWeight: FontWeight.w600,
                              fontcolor: Colors.black54
                            );
                          }),
                        ),

                        Positioned(
                          left: 50,
                          // right: 0,
                          top: 60,
                          // right: -(screenWidth * 0.1),
                          child: Consumer<viewModel>(builder: (context, viewmodel, _) {
                            return viewmodel.uiContainer(
                                context,
                                30,
                                200,
                                // ContainerColor: Colors.orange,
                                radius: 20.0,
                                // borderColor: Colors.green,
                                textdata: "Online School",
                                fontsize: 25,
                                fontWeight: FontWeight.w800,
                                fontcolor: Colors.black87
                            );
                          }),
                        ),

                        Positioned(
                          left: 270,
                          // right: 0,
                          top: 30,
                          // right: -(screenWidth * 0.1),
                          child: Consumer<viewModel>(builder: (context, viewmodel, _) {
                            return viewmodel.uiContainer(
                              context,
                              70,
                              100,
                              ContainerColor: Colors.white,
                              radius: 20.0,
                              // borderColor: Colors.green,

                              textdata: "",
                              children: [
                                Icon(Icons.search,color: Colors.black87,size: 30, ),
                                Text("/",style: TextStyle(fontSize: 30,color: Colors.grey)),
                                Icon(Icons.mic,color: Colors.grey, size: 30,),
                              ],
                            );
                          }),
                        ),
                      ]
                    ),

                        SizedBox(height:20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Consumer<viewModel>(builder: (context, viewmodel, _){
                              return viewmodel.uiContainer(context, 30, 140,
                                  // ContainerColor: Colors.cyan,
                                  children: [
                                    Text("Next",style: GoogleFonts.poppins(fontSize: 25,color: Colors.black54,fontWeight: FontWeight.w600),),
                                    SizedBox(width: 5,),
                                    Text("Class",style: GoogleFonts.poppins(fontSize: 25,color: Colors.black87,fontWeight: FontWeight.w800))
                                  ]);
                            }),



                            Consumer<viewModel>(builder: (context, viewmodel, _){
                              return
                              viewmodel.uiContainer(context, 30, 70,
                                  ContainerColor: Colors.grey.shade300,
                                textdata: "View all",
                                fontsize: 12,
                                radius: 50.0,

                              );
                            }),
                          ],
                        ),

                        SizedBox(height:30,),
                        Stack(
                          children: [
                          Consumer<viewModel>(builder: (context, viewmodel, _){
                            return viewmodel.uiContainer(context, 220, screenWidth,
                            ContainerColor: Colors.purple.shade200,
                              radius: 30.0,
                            );
                          }),


                        Positioned(
                          top: 20,
                          left: 20,
                          child: Consumer<viewModel>(builder: (context, viewmodel, _){
                            return viewmodel.uiContainer(context, 70, 70,
                              ContainerColor: Colors.pink.shade50,
                              borderColor:Colors.pink.shade50,
                              radius: 20.0,
                                useColumn: true,
                              children: [
                                Text("MON",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 13),),
                                Text("24",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,color: Colors.black87,fontSize: 25))
                              ]
                            );
                          }),
                        ),

                            Positioned(
                              top: 10,
                              left: 100,
                              child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                return viewmodel.uiContainer(context, 40, 200,
                                    // ContainerColor: Colors.orange,
                                    // borderColor:Colors.pink.shade50,
                                    radius: 20.0,
                                    useColumn: true,
                                    children: [
                                      Text("Mon 14:30 PM || Zoom",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 17),),
                                      // Text("24",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,color: Colors.black87,fontSize: 25))
                                    ]
                                );
                              }),
                            ),

                            Positioned(
                              top: 50,
                              left: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 40, 140,
                                      ContainerColor: Colors.black26,
                                      // borderColor:Colors.pink.shade50,
                                      radius: 20.0,
                                      useColumn: true,
                                      children: [
                                        Text("UI/UX Design",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 15),),
                                        // Text("24",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,color: Colors.black87,fontSize: 25))
                                      ]
                                  );
                                }),
                              ),
                            ),

                            Positioned(
                              top: 100,
                              left: 15,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 40, 330,
                                      // ContainerColor: Colors.black26,
                                      // borderColor:Colors.pink.shade50,
                                      radius: 20.0,
                                      useColumn: true,
                                      children: [
                                        Text("UX & Web Design Course",style: GoogleFonts.poppins(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 24),),
                                        // Text("24",style: GoogleFonts.poppins(fontWeight: FontWeight.w800,color: Colors.black87,fontSize: 25))
                                      ]
                                  );
                                }),
                              ),
                            ),

                            Positioned(
                              top: 150,
                              left: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 50, 50,
                                      // ContainerColor: Colors.black26,
                                      // borderColor:Colors.pink.shade50,
                                      radius: 100.0,
                                      borderColor: Colors.white,
                                      useColumn: true,
                                    image: AssetImage("assets1/pro9.png",),
                                    innerContainerColor: Colors.green.shade100,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,

                                  );
                                }),

                              ),
                            ),

                            Positioned(
                              top: 150,
                              left: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 50, 50,
                                    // ContainerColor: Colors.black26,
                                    // borderColor:Colors.pink.shade50,
                                    radius: 100.0,
                                    borderColor: Colors.white,
                                    useColumn: true,
                                    image: AssetImage("assets1/pro5.png",),
                                    innerContainerColor: Colors.pink.shade100,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,

                                  );
                                }),

                              ),
                            ),

                            Positioned(
                              top: 150,
                              left: 80,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 50, 50,
                                    // ContainerColor: Colors.black26,
                                    // borderColor:Colors.pink.shade50,
                                    radius: 100.0,
                                    borderColor: Colors.white,
                                    useColumn: true,
                                    image: AssetImage("assets1/pro2.png",),
                                    // innerContainerColor: Colors.green.shade100,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,
                                  );
                                }),

                              ),
                            ),

                            Positioned(
                              top: 150,
                              left: 110,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 50, 50,
                                    // ContainerColor: Colors.black26,
                                    // borderColor:Colors.pink.shade50,
                                    radius: 100.0,
                                    borderColor: Colors.white,
                                    useColumn: true,

                                    ContainerColor: Colors.cyan,
                                    textdata: "+8",
                                    fontcolor: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontsize:16
                                  );
                                }),

                              ),
                            ),

                            Positioned(
                              top: 150,
                              left: 220,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 50, 120,
                                    ContainerColor: Colors.yellow.shade200,
                                    // borderColor:Colors.pink.shade50,
                                    radius: 20.0,
                                    // borderColor: Colors.white,
                                    useColumn: true,
                                    textdata: "Join Class",
                                    fontsize: 15,
                                    fontWeight: FontWeight.w600

                                  );
                                }),

                              ),
                            ),

                          ]),

                        SizedBox(height:30,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Consumer<viewModel>(builder: (context, viewmodel, _){
                              return viewmodel.uiContainer(context, 30, 180,
                                  // ContainerColor: Colors.cyan,
                                  children: [
                                    Text("Best",style: GoogleFonts.poppins(fontSize: 25,color: Colors.black54,fontWeight: FontWeight.w600),),
                                    SizedBox(width: 0,),
                                    Text("Teacher",style: GoogleFonts.poppins(fontSize: 25,color: Colors.black87,fontWeight: FontWeight.w800))
                                  ]);
                            }),




                            Consumer<viewModel>(builder: (context, viewmodel, _){
                              return
                                viewmodel.uiContainer(context, 30, 70,
                                  ContainerColor: Colors.grey.shade300,
                                  textdata: "View all",
                                  fontsize: 12,
                                  radius: 50.0,

                                );
                            }),
                          ],
                        ),



                        SizedBox(height:30,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              children: [
                                Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 80,80,
                                      radius: 100.0,
                                    borderColor: Colors.purple.shade200,
                                      image: AssetImage("assets1/pro5.png",),
                                    innerContainerColor: Colors.purple.shade200,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,
                                     );
                                }),

                                
                                Positioned(
                                  top: 200
                                  ,left: 10,
                                  child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                    return
                                      viewmodel.uiContainer(context, 30, 70,
                                        ContainerColor: Colors.purple.shade200,
                                        textdata: "View all",
                                        fontsize: 12,
                                        radius: 50.0,

                                      );
                                  }),
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 80,80,
                                    radius: 100.0,
                                    borderColor: Colors.orange.shade100,
                                    image: AssetImage("assets1/pro6.png",),
                                    innerContainerColor: Colors.orange.shade100,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,


                                    // ContainerColor: Colors.cyan,
                                  );
                                }),
                                Positioned(
                                  top: 200
                                  ,left: 10,
                                  child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                    return
                                      viewmodel.uiContainer(context, 30, 70,
                                        ContainerColor: Colors.orange.shade100,
                                        textdata: "View all",
                                        fontsize: 12,
                                        radius: 50.0,

                                      );
                                  }),
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 80,80,
                                    radius: 100.0,
                                    borderColor: Colors.green.shade100,
                                    image: AssetImage("assets1/pro10.png",),
                                    innerContainerColor: Colors.green.shade100,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,


                                    // ContainerColor: Colors.cyan,
                                  );
                                }),
                                Positioned(
                                  top: 200
                                  ,left: 10,
                                  child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                    return
                                      viewmodel.uiContainer(context, 30, 70,
                                        ContainerColor: Colors.green.shade100,
                                        textdata: "View all",
                                        fontsize: 12,
                                        radius: 50.0,

                                      );
                                  }),
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Consumer<viewModel>(builder: (context, viewmodel, _){
                                  return viewmodel.uiContainer(context, 80,80,
                                    radius: 100.0,
                                    borderColor: Colors.blue.shade100,
                                    image: AssetImage("assets1/pro9.png",),
                                    innerContainerColor: Colors.blue.shade100,

                                    innerHeightFactor:70 ,
                                    innerWidthFactor: 70,

                                    ContainerColor: Colors.white,


                                    // ContainerColor: Colors.cyan,
                                  );
                                }),
                                Positioned(
                                  top: 200
                                  ,left: 10,
                                  child: Consumer<viewModel>(builder: (context, viewmodel, _){
                                    return
                                      viewmodel.uiContainer(context, 30, 70,
                                        ContainerColor: Colors.blue.shade100,
                                        textdata: "View all",
                                        fontsize: 12,
                                        radius: 50.0,

                                      );
                                  }),
                                ),
                              ],
                            ),
                          ],
                        ),

                  ]) // Background color of app bar

                  ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFFde9b6),
      ),

      bottomNavigationBar: Consumer<viewModel>(
        builder: (context, viewmodel, _) {
          return viewmodel.bottomNavigationBar(context, Color(0xFFFde9b6)
              // Color(0xFFF2A39D)
              );
        },
      ),
    );
  }
}

// // Custom Clipper for bottom curve
class AppBarCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 40); // Start from bottom left
    path.quadraticBezierTo(size.width / 2, size.height + 20, size.width,
        size.height - 40); // Curve to bottom right
    path.lineTo(size.width, 0); // Line to top right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Assuming the clipper does not need to be recalculated
  }
}
