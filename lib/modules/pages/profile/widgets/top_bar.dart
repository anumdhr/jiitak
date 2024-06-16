import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: Color(0xffE8E8E8),
              ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff8C817B).withOpacity(0.10),
            child: SvgPicture.asset(
              "assets/images/icon.svg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "店舗プロフィール編集",
            style: TextStyle(
              color: Color(0xff4B4948),
              fontSize: 15,
            ),
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    color: Color(0xff4B4948),
                    "assets/images/notification.svg",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Color(0xffEE7D42),
                    child: Text(
                      "99+",
                      style: TextStyle(
                        fontSize: 6.95,
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
