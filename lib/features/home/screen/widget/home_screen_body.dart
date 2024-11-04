import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'certification_item/certification_item_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.waving_hand_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Row(
                  children: [
                    Text(
                      'Hello,',
                      style: GoogleFonts.quicksand(
                        fontSize: 16.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Welcome to AWS ',
                      style: GoogleFonts.quicksand(
                        fontSize: 16.0.sp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Prep',
                      style: GoogleFonts.quicksand(
                        fontSize: 16.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Hub',
                      style: GoogleFonts.quicksand(
                        fontSize: 16.0.sp,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  "Please Select A Path",
                  style: GoogleFonts.quicksand(
                      fontSize: 16.0.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 15.w,
                ),
                const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 22,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const SingleChildScrollView(
              child: CertificationItemListView(),
            ),
          ],
        ),
      )),
    );
  }
}
