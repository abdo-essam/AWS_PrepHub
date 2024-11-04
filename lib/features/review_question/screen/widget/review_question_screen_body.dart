import 'package:flutter/material.dart';

class ReviewQuestionScreenBody extends StatelessWidget {
  const ReviewQuestionScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "Questions With Answers",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child:  const Column(
              children: [
                Text("Question 1" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 2" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 3" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 4" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 5" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 6" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 7" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 8" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 9" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 10" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
                Text("Question 11" , style: TextStyle(color: Colors.white),),
                SizedBox(height: 20,),
            ],),
          ),
        )
      ),
    );
  }
}
