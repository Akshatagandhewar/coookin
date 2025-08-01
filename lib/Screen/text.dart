import 'package:cookin/App_color/app_color.dart';
import 'package:flutter/material.dart';

class Textscreen extends StatefulWidget {
  Textscreen({Key? key}) : super(key: key);

  @override
  State<Textscreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<Textscreen> {
  final TextEditingController _ingredientController = TextEditingController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.white, size: 28),
              ),
              SizedBox(height: 30),

              Center(
                child: Text(
                  'Enter the Ingredients',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Center(
                
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  child: Text("📝", style: TextStyle(fontSize: 30)),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: Container(
                  width: 369,
                  height: 334,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: _ingredientController,
                    maxLines: 6,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter ingredients..........',
                      hintStyle: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              Center(
                child: ElevatedButton(
                  
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondarycolor,
                    minimumSize: Size(357, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Generate Your Recipe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
