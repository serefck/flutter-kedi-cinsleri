import 'package:flutter/material.dart';
import 'dart:convert';
import 'cins_detay.dart';


class jsonCins extends StatefulWidget {
  
  // jsonCins({Key? key}) : super(key: key);

  @override
  State<jsonCins> createState() => jsonCinsState();
}

class jsonCinsState extends State<jsonCins> {

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kedi Cinsleri'),),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString("veriler/cins.json"),
            builder: (context, cevap){
               var cins = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CinsDetay(secilenCins: cins[index]),),);
            },
                    
                    leading: Image.asset("resimler/${cins[index]['image']}", height: 64, width: 64, fit: BoxFit.cover,),
                     title: Text("Cins Adı: ${cins[index]['name']}"),
                     subtitle:Text("Yaşam Süresi: ${cins[index]['life_span']} Yıl"),
                     trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple,),
                     
                    ),
                  );
                },
                
                itemCount: cins == null ? 0 : cins.length,
                );
            }, 
          ),
        ),
      ),
    );
  }
}