import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Welcome!", style: TextStyle(fontFamily: "Bungee", fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  section 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/programmer.png",),
                  )

                ],
              ),

              SizedBox(height: 24),

              //  section 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/development.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Hello!\n",
                          style: TextTheme.of(context).displayMedium?.copyWith(
                            color: Colors.indigo,
                            fontSize: 30,
                            fontFamily: "Bungee",
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        TextSpan(
                          text: "I'M A\n",
                          style: TextTheme.of(context).displayMedium?.copyWith(
                            color: Colors.indigo,
                            fontSize: 30,
                            fontFamily: "Bungee",
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        TextSpan(
                          text: "Mobile Dev!",
                          style: TextTheme.of(context).displayMedium?.copyWith(
                            color: Colors.indigo,
                            fontSize: 30,
                            fontFamily: "Bungee",

                            fontWeight: FontWeight.bold,
                          ),

                        )
                      ]
                    )
                  )

                ],
              ),
              SizedBox(height: 24),

            //   section 3
              Text("Mobile developer specializing in Kotlin and Jetpack Compose. I build clean, scalable apps with a focus on performance and user experience. Now, I'm learning Flutter.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,

                ),
              ),
              SizedBox(height: 24),

            //   section4
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("Education",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,

                  ),),
                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2022 - 2027", style: TextStyle(fontFamily: "Bungee", color: Colors.indigo),),
                      SizedBox(width: 16),
                      Expanded(child: Text("I am a Computer Science student currently in my final year (first semester), with an expected graduation in 2027.",textAlign: TextAlign.justify,)),
                    ],
                  )




                ],

              ),

              SizedBox(height: 24),


              //   section5
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("Personal Info",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,

                    ),),
                  SizedBox(height: 16),

                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/github.png", width: 30,),
                          SizedBox(width: 16),

                          Text("https://github.com/soekhant01")
                        ],
                      ),
                      SizedBox(height: 8),

                      Row(

                        children: [
                          Icon(Icons.email_rounded),
                          SizedBox(width: 16),

                          Text("soekhant.dev@gmail.com")
                        ],
                      ),
                      SizedBox(height: 8),

                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 16),

                          Text("+959957848184")
                        ],
                      )
                    ],
                  )






                ],

              )


            ],
          ),
          ),


        ),
      ),
    );
  }
}
