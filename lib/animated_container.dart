import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {

  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double _largura = 100.0;
  double _altura = 100.0;

 _aumentarLargura() {
    setState( (){
      if(_largura >= 320.0){
        _largura = 100.0;
      }else{
        _largura += 50.0;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          color: Colors.blue,
          height: _altura,
          width: _largura,
          child: FlatButton(onPressed: 
          (){
            _aumentarLargura();
          }, child: Text("Clique para\n crescer"), textColor:Colors.white,),
        )
      ],
    );
  }
}