import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../view/ui_view.dart';

class viewModel with ChangeNotifier{

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void setIndex(int index){
    _selectedIndex = index;
    notifyListeners();
  }

  BottomNavigationBar bottomNavigationBar(BuildContext context, Color backgroundColor){
    return BottomNavigationBar(


        backgroundColor: backgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFFDE9687),
        unselectedItemColor: Color(0xFFE7BAB1),
        elevation: 0,



        onTap: (index){
        setIndex(index);
        switch (index){
          case 0: Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageUI()));
          break;
          case 1: Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageUI()));
          break;
          case 2: Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageUI()));
          break;
          case 3: Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageUI()));
          break;
          default:
        }},

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
          label: ''),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
              label: ''),

          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_outlined),
              label: ''),

          BottomNavigationBarItem(
            icon: Icon(Icons.edit_calendar_outlined),
              label: '')
        ],


    );
  }

  Widget uiContainer(BuildContext context, double height , double weight, {
    Color? innerContainerColor,
    ImageProvider? image,
    bool useColumn = false,
    List<Widget>? children,
    Color? borderColor,
    String textdata='',
    IconData? iconData,
    FontWeight? fontWeight,
    double fontsize = 14.0,
    fontcolor = Colors.black,
    double radius = 0.0,
    ContainerColor = Colors.transparent,
    double? innerHeightFactor,
    double? innerWidthFactor

  }){

    return Container(
      height: height,
      width: weight,


      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(radius),
        color: ContainerColor,
        // border: Border.all(color: borderColor, width: 2.0)
        border: borderColor != null
            ? Border.all(color: borderColor, width: 2.0)
            : null,
      ),
      // child: Text(textdata,style: GoogleFonts.poppins(fontSize: fontsize,color: fontcolor),

      child: children != null
          ? useColumn
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children,
      ) :
      image != null
          ? Center(
        child: Container(
          height: innerHeightFactor,
          width: innerWidthFactor,
          decoration: BoxDecoration(
            color: innerContainerColor ?? Colors.orange,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Image(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      )

          : iconData != null
          ? Icon(iconData)
          :
          textdata.isNotEmpty ?
              Center(child: Text(textdata,style: GoogleFonts.poppins(fontSize: fontsize,fontWeight: fontWeight, color: fontcolor),  textAlign: TextAlign.center, )): SizedBox.shrink(),
    );




  }


}