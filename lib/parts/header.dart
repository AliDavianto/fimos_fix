import 'package:flutter/material.dart';
import '../screen/editProfile.dart';
import '../styleguide/font_style.dart';
import 'package:get/get.dart';
import '../CRUD/crud_auth_login.dart';
import '../widget/dropdown.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
        Container(
              width: 44,
              height: 44,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: darkGreen,
              ),

              child: CircleAvatar(
                
                    backgroundImage: AssetImage('assets/images/profile_bg.png'),
                    
                    )
                        ),
               Padding(
               padding: EdgeInsets.only(left: 12,top: 6),
               child: Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment:
               CrossAxisAlignment.start,  
               mainAxisAlignment:
               MainAxisAlignment.start,
               children: [
              Text("Admin",
              overflow:
              TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Paragraph),
              Padding(
              padding: EdgeInsets.only(top: 6, bottom: 6),
              child: Text("id 001",
               overflow: TextOverflow
               .ellipsis,
               textAlign:
              TextAlign.left,
              style: regular_small)),
              ]
               )),

                                         
          SizedBox(width:110 ,),     

     DropdownButtons()


      ],
    ),
    );
  }
}
