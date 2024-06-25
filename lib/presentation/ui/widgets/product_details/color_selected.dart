import 'package:flutter/material.dart';
class ColorsSelected extends StatefulWidget {
  const ColorsSelected({super.key, required this.color, required this.onChangeColor});
  final List<Color>color;
  final Function(Color) onChangeColor;

  @override
  State<ColorsSelected> createState() => _ColorsSelectedState();
}

class _ColorsSelectedState extends State<ColorsSelected> {

  late Color _selectedColor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedColor=widget.color.first;
    widget.onChangeColor(_selectedColor);
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      children:widget.color.map((c) =>

          InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: (){
              _selectedColor=c;
              widget.onChangeColor(c);
              if(mounted){
                setState(() {

                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: c,
                radius: 15,
                child: _selectedColor==c?const Icon(Icons.done,color: Colors.white,):null,
              ),
            ),
          )
      ).toList(),
    );
  }
}
