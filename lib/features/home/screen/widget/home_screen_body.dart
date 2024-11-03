import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.waving_hand_outlined,
                color: Colors.black,
                size: 15,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Hello, Welcome to AWS PrepHub',
                style: GoogleFonts.quicksand(
                  fontSize: 16.0.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Text(
                "Please Select A Category",
                style: GoogleFonts.quicksand(
                    fontSize: 16.0.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 15.w,
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.black,
                size: 22,
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFF8337),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(

            ),
          )
        ],
      ),
    ));
  }
}
