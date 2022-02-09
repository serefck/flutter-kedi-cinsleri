

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CinsDetay extends StatelessWidget {
List<Widget> get cinsOzellikleri {
    return [
          Container(
            height: 40,
            child: Text("${secilenCins['name']} Kedisi Genel Özellikleri", style: TextStyle(fontSize: 15, color: Colors.white),),
            color: Colors.purple,
            alignment: Alignment.center,
          ),
          Container(
            height: 40,
            child: Text("Cinsin Adı: ${secilenCins['name']} Kedisi", style: TextStyle(fontSize: 15,),),
            color: Colors.white,
            alignment: Alignment.center,
          ),
          Container(
            height: 40,
            child: Text("Karakter: ${secilenCins['temperament']}", style: TextStyle(fontSize: 15,),),
            color: Colors.white,
            alignment: Alignment.center,
          ),
           Container(
            height: 40,
            child: Text("Yaşam Süresi: ${secilenCins['life_span']} Yıl", style: TextStyle(fontSize: 15,),),
            color: Colors.white,
            alignment: Alignment.center,
          ),
          Container(
            height: 40,
            child: Text("Uzunluk: ${secilenCins['imperial']} inch", style: TextStyle(fontSize: 15,),),
            color: Colors.white,
            alignment: Alignment.center,
          ),
          Container(
            height: 40,
            child: Text("Ağırlık: ${secilenCins['metric']} KG", style: TextStyle(fontSize: 15,),),
            color: Colors.white,
            alignment: Alignment.center,
          ),
          Container(
            height: 40,
            child: Text("Menşei: ${secilenCins['origin']}", style: TextStyle(fontSize: 15,),),
            color: Colors.white,
            alignment: Alignment.center,
          ),
          
          
          
        ];
  }

    final secilenCins;


  const CinsDetay({required this.secilenCins, Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenCins['name'] + " Kedisi"),
            centerTitle: true,
              background: Image.asset("resimler/"+ secilenCins['image'],fit: BoxFit.cover,),
              ),
          ),

          
         
         

          SliverPadding(
        padding: EdgeInsets.all(0),
        sliver: SliverList(
        delegate:SliverChildListDelegate(cinsOzellikleri),
        ),
        ),

          SliverToBoxAdapter(
          child:  Container(
            height: 40,
            child: Text("${secilenCins['name']} Kedisi Karakter Analizi", style: TextStyle(fontSize: 15, color: Colors.white),),
            color: Colors.purple,
            alignment: Alignment.center,
          ),
          ),

           SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Adapte Olabilme"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['adaptability']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),                  
                        Text("Çocuklarla Dostluk"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['child_friendly']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
), 
                        Text("Enerji Seviyesi"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['energy_level']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
), 
                        Text("Bakım İhtiyacı"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['grooming']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
), 
                        Text("Sağlık Sorunları"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['health_issues']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
), 
                        Text("Zeka"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['intelligence']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),              

],

),
Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Sevgi"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['affection_level']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),     
Text("Köpeklerle Dostluk"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['dog_friendly']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),    
Text("Sosyal İhtiyaç", ), 
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['social_needs']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),  
Text("Yabancılarla Dostluk"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['stranger_friendly']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),  
Text("Tüy Dökme"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['shedding_level']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),  
Text("Ses"),
                        RatingBarIndicator(
                          rating: double.parse(secilenCins['vocalisation']),
                          itemBuilder: (context, index) => Icon(
                             Icons.star,
                             color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 28.0,
                          direction: Axis.horizontal,
),                 
],


),
                  ],
                ),
            ),
          ),
          
                    SliverToBoxAdapter(
          child:  Container(
            height: 40,
            child: Text("${secilenCins['name']} Kedisi Hakkında Kısa Bilgi", style: TextStyle(fontSize: 15, color: Colors.white),),
            color: Colors.purple,
            alignment: Alignment.center,
          ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child:Html( data: secilenCins['description'],),
                ),
            ),
          ),
          
        ],
      )
    );
    
    
    
    /* Scaffold(
      appBar: AppBar(title:Text("${secilenCins['name']} Kedisi"),),
    ); */
  }
}


