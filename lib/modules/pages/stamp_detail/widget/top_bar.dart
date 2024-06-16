import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StampTopBar extends StatelessWidget {
  const StampTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff949EFF),
            child: SvgPicture.asset(
              "assets/images/icon.svg",
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          Text(
            "スタンプカード詳細",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                color: Color(0xffFFFFFF),
                "assets/images/minus-circle.svg",

                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
