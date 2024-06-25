
import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class SizeSelected extends StatefulWidget {
  const SizeSelected({super.key, required this.sizes, required this.onChaneSize});
  final List<String>sizes;
  final Function(String) onChaneSize;
  @override
  State<SizeSelected> createState() => _SizeSelectedState();
}

class _SizeSelectedState extends State<SizeSelected> {


  late String _selectedSize;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedSize=widget.sizes.first;
    widget.onChaneSize(_selectedSize);
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      children:widget.sizes.map((s) =>

          InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: (){
              _selectedSize=s;
              widget.onChaneSize(s);
              if(mounted){
                setState(() {

                });
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8
              ),
              margin:const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey),
                  color: s==_selectedSize?AppColors.primaryColor:null
              ),
              child: Text(s,style: TextStyle(
                  color: s==_selectedSize?Colors.white:Colors.black
              ),),
            ),
          )
      ).toList(),
    );
  }
}