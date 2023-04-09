import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const VideoApp());

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;
  late bool value1 = false; 
  late TextEditingController co;
 
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://mf-baria.darbwali.com/api/fm/v1_download?file=dmlkZW86X1BtRDo0MDAzMjIwMjp2aWRlby9tcDQ=.mp4', )
      ..initialize().then((_) {
   
        setState(() {

       
        });
      });
      co = new TextEditingController();

    
  }






  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Demo',
      home:Builder(builder: (BuildContext context) { 
         var size = MediaQuery.of(context).size;
    return
      
      
      Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
            
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller,),
                  )
                : Container(),
              ),
            Container(
width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250) 
                ,bottomRight:Radius.circular(250)  )),
              child: TextButton(onPressed: (){
            showModalBottomSheet<void>( context: context,
            isScrollControlled: true,
            useSafeArea: true,
            
            constraints: BoxConstraints.expand(height: size.height * 0.77,),
            shape: const RoundedRectangleBorder(
            
              borderRadius:  BorderRadius.vertical(top: Radius.circular(30))
            ),
            backgroundColor: Colors.transparent,
            
                builder: (BuildContext context) {
                  return Stack(
                    children:[      
                      Container(
        
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Align(
                    alignment: Alignment.centerRight,
       
                   child: Container(
                  height: 35,
                  
                     width: 100,
                   child: Row(
                    
             
                     children: [
                       IconButton(
               onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
               icon:  Icon(
                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,size: 30,
                      ),
                       ),
                       IconButton(
               onPressed: () {
                        setState(() {
                        _controller.value.volume==0?
                         _controller.setVolume(1):
                         _controller.setVolume(0);
                        });
                      },
               icon:  Icon(
                        _controller.value.volume==0 ? Icons.volume_up : Icons.volume_off,
                        color: Colors.white,size: 30,
                      ),
                     
                     
                     
                     
                     
                       ),
                    
                     ],
                   ),
                    ),
                 ),
                 
            
            
            
            
            
            
            
                       Stack(
                    alignment: Alignment.center,
               children: [   
                      Container(
              height: 30,
                    decoration: BoxDecoration(
                      color:Colors.grey.shade800,
                      borderRadius: const BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) )),
                    
                      ),
                      
                       Container(
                      decoration: BoxDecoration(
                      color:Colors.grey.shade700,
                      borderRadius: const BorderRadius.all(Radius.circular(30) )),
                            margin: const EdgeInsets.all(10),
                            width: 50,
                           
                            height: 5,
                          ),]
                       ),
                    
                  con (Colors.grey.shade900,'image/images.png' ,10, "purpul-circle" , "the consestency of these welds",
                  Container() ,true,1  ,context,0),
                  
                    con (Colors.black,'image/images.png' ,13, "Equal-warning-8612 - 11h" ,
                    "what kind of welder is this?Expensive?",
                   const Text('2.9',style: TextStyle(color: Colors.white)) ,true,2  ,context,0),    
                  
                  
                      con (Colors.black,'image/images.png' ,13, "EllzGoesPro - 11h" ,
                    "Laser welder and yes",
                   const Text('2.3',style: TextStyle(color: Colors.white)) ,false,2  ,context,1),
                  
                  
              con (Colors.black,'image/images.png' ,13, "Equal-warning-8612 - 10h" ,
                    "Like how much for one of these?",
                   IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_double_arrow_down,color: Colors.white,)) 
                   ,false,2  ,context,2),    
                  
                     con (Colors.black,'image/images.png' ,13, "whats_all_the_hype - 5h" ,
                    "",
                   Container()
                   ,false,3  ,context,3), 
                  
                  
                  
                     Row(
            
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
               Stack(
            
                  children: const[
                    Align(
                  heightFactor: 0.2,  
                   widthFactor: 2,
                    child: CircleAvatar(backgroundImage: AssetImage("image/images.png"),maxRadius: 10)),
                  CircleAvatar(backgroundImage: AssetImage("image/images.png"),maxRadius: 10),
                  
                  ],
                  
                  
                   ),
                   const Text('197 people here' ,style: TextStyle(
                                color: Colors.white,fontSize: 10),)
                       ],
                     )             ,
                     Container(
                      height: 30,
                      decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                  
                      ),
                       child: TextField(
                      
                      keyboardType: TextInputType.name, 
                       
               
               decoration: new InputDecoration(
                  border:OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.transparent),// لون الايطار تبع الفورم
                     borderRadius: BorderRadius.all(Radius.circular(5))),
             
                labelStyle: TextStyle(color: Colors.white),
                   labelText: "Add a comment",       
                fillColor:Colors.grey.shade900,
                filled : true,          
            
                
                ),            
               controller: co,            
                     
                     
                     
                     
                       ),
                     ),
                  
              ],
                      ),
                    ),
                    
                  
                  
                  
                  
                  
                  
                  
                  Align(
                     alignment: const Alignment(-0.97, 0.4),
                    child: Container(
                       
                        width: 1,
                        color: Colors.grey.shade900,
                        height: size.height *0.30,
                      ),
                  ),   
                      Align(
                  alignment: const Alignment(-0.9, 0.54),
                   
                    child: Container(
                     
                        width: 1,
                        color: Colors.grey.shade900,
                        height: size.height *0.18,
                      ),
                  ),  
                    Align(
                  alignment: const Alignment(-0.82, 0.62),
                  
                    child: Container(
                     
                        width: 1,
                        color: Colors.grey.shade900,
                        height: size.height *0.05,
                      ),
                  ),  
                  
                  
                  
                       
                    
                    ]
                  );});
            
            
            
            
              } ,child:const Text("Comments",style: TextStyle(fontSize: 30,
              color: Colors.black
              ),)),
            )
          ],
        ),
    
      );}
    ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

Widget con (var color , String avatar , double Size_avatar,  String lable ,  String comment,
 Widget rate_or_icon ,bool reply, int bottom ,BuildContext context , int re){
 var size = MediaQuery.of(context).size;
return 
Container(
              padding: EdgeInsets.only(top: 5,left: 5),
             height: bottom==3?size.height * 0.073: size.height * 0.124 ,
              decoration: BoxDecoration(
                color:color ,

              ),

                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
      re==1? SizedBox(width: 15,):re==2? SizedBox(width: 25,):re==3? SizedBox(width: 40,):
       SizedBox(width: 0,),
      CircleAvatar(backgroundImage: AssetImage(avatar),maxRadius: Size_avatar),
      SizedBox(width: 2,),
      Text(lable,style: TextStyle(color: Colors.white,fontSize: 10),)
      
      
      
                  ],),
 
                        Row(

                          children: [
                              re==1? SizedBox(width: 15,):re==2? SizedBox(width: 25,):re==3? SizedBox(width: 40,):
       SizedBox(width: 0,),
                            Text(comment,style: TextStyle(
                              color: Colors.white,
                              fontSize: 10),),
                          ],
                        ),
            
  bottom==1?
      Container(
        height: 30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.rocket_outlined,color: Colors.white,size: 13,),
            Text("BEST COMMENTS",style: TextStyle(
                            color: Colors.white,fontSize: 10)),
            IconButton(onPressed: (){
            
            setState(() {
            value1 =!value1;
            });
            }, icon: Icon(
               value1?Icons.keyboard_arrow_down_outlined 
               :Icons.keyboard_arrow_up_outlined,color: Colors.white,size: 13,)),
            
            
          ], ),
      ):
      bottom==2?  Container(
        color: Colors.transparent,
          height: 30,
          child: Row(
                           
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              
                              children: [
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.keyboard_control_sharp,color: Colors.white,size: 13,
              ))
              ,
              IconButton(onPressed: (){}, icon: Icon(Icons.turn_left_rounded,
              color: Colors.white,size: 13,)),
              reply?  Text("Reply",style: TextStyle(color: Colors.white,fontSize: 10)):Container(),
              IconButton(onPressed: (){}, icon: Icon(Icons.north_rounded,
              color: Colors.white,size: 13,)),
           rate_or_icon,
              IconButton(onPressed: (){}, icon: Icon(Icons.south_outlined,
              color: Colors.white,size: 13,)),
              
              
              
              
                            ],),
        ):Container( ),



    
      
      
      
      
      
                            ]));



 }





}






