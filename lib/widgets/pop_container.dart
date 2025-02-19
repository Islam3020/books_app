import 'package:flutter/material.dart';

class PopContainer extends StatelessWidget {
  const PopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.of(context).pop();
    },
      child: Container(
        width: 30,height: 30,
          
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey,width: .25)),
          child: 
               const Icon(Icons.arrow_back_ios,size: 16,)),
    );
  }
}
