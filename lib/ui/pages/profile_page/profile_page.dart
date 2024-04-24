import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(6),
            child: Center(
              child: Text("Xarid qilish buyurtmalarni kuzatish va \nbo'lib - bo'lib to'lash uchun tizimga kiring",style:TextStyle(fontSize: 12),),
            ),
          ),
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(right: 26,left: 26,bottom: 10,top: 10),
            padding: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'Kirish',style: TextStyle(fontSize:14),),),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: 20,left: 20,bottom: 10,),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.percent_outlined, size: 24.0, color: Colors.black54,),
                    ),
                    Text('Aksiya'),
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                       ],
                     ),
                   ),
                  ],
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 24.0, color: Colors.black54,),
                    ),
                    Text('Sevimlilar'),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.balance, size: 24.0, color: Colors.black54,),
                    ),
                    const Text('Taqqoslash',style: TextStyle(color: Colors.black87),),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.language, size: 24.0, color: Colors.black54,),
                  ),
                  Text('Ilova tili'),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.only(right: 20,left: 20,bottom: 10,),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined, size: 24.0, color: Colors.black54,),
                    ),
                    Text("Bizning do'konlarimiz"),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.sms_failed_outlined, size: 24.0, color: Colors.black54,),
                    ),
                    Text("Qo'llab-quvvatlash xizmati"),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.info_outline, size: 24.0, color: Colors.black54,),
                    ),
                    Text("Ma'lumot "),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.app_blocking_outlined, size: 24.0, color: Colors.black54,),
                    ),
                    Text("Ilova haqida"),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, size: 24.0, color: Colors.black54,),
                    ),
                    Text("Bildirishnoma sozlamalari"),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 14)
                        ],
                      ),
                    ),
                  ],
                 ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ],
      ),
    );
    
  }
}
