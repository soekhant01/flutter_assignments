import 'package:flutter/material.dart';

class StudentTable extends StatelessWidget {
  StudentTable({super.key});

  final ScrollController _horizontalController = ScrollController();
  final ScrollController _verticalController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Student Table")),
        body: Scrollbar(
          controller: _verticalController,
          thumbVisibility: true,
          trackVisibility: true,
          notificationPredicate: (_) => true,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: _verticalController,
            child: Row(
              children: [
                // id
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    headingCell("id"),
                    dataCell("1"),
                    dataCell("2"),
                    dataCell("3"),
                    dataCell("4"),
                    dataCell("5"),
                    dataCell("6"),
                    dataCell("7"),
                    dataCell("8"),
                    dataCell("9"),
                    dataCell("10"),
                    dataCell("11"),
                    dataCell("12"),
                    dataCell("13"),
                    dataCell("14"),
                    dataCell("15"),
                    dataCell("16"),
                    dataCell("17"),
                    dataCell("18"),
                    dataCell("19"),
                    dataCell("20"),
                    dataCell("21"),
                    dataCell("22"),
                    dataCell("23"),
                    dataCell("24"),
                    dataCell("25"),
                    dataCell("26"),
                    dataCell("27"),
                    dataCell("28"),
                    dataCell("29"),
                    dataCell("30"),
                  ],
                ),
                // name
                Column(
                  children: [
                    headingCell("name"),
                    dataCell("မောင်မောင်"),
                    dataCell("အေးအေးမြင့်"),
                    dataCell("ကိုကို"),
                    dataCell("သူဇာမြင့်"),
                    dataCell("ဇော်လင်းထွန်း"),
                    dataCell("နီလာထွန်း"),
                    dataCell("အောင်ကိုကို"),
                    dataCell("စုစုမြင့်"),
                    dataCell("သန်းထွန်းဦး"),
                    dataCell("ယုယုခိုင်"),
                    dataCell("မင်းခန့်"),
                    dataCell("သင်းသင်းမော်"),
                    dataCell("ဖေမောင်"),
                    dataCell("ခင်နီလာဝင်း"),
                    dataCell("ကျော်မြင့်"),
                    dataCell("ရွှေစင်အောင်"),
                    dataCell("ဝင်းဝင်းမြင့်"),
                    dataCell("နေလင်းဦး"),
                    dataCell("မေမေခိုင်"),
                    dataCell("ဇော်မင်းထွန်း"),
                    dataCell("သူဇာမြင့်"),
                    dataCell("ဇော်လင်းထွန်း"),
                    dataCell("နီလာထွန်း"),
                    dataCell("အောင်ကိုကို"),
                    dataCell("စုစုမြင့်"),
                    dataCell("သန်းထွန်းဦး"),
                    dataCell("ယုယုခိုင်"),
                    dataCell("မင်းခန့်"),
                    dataCell("သင်းသင်းမော်"),
                    dataCell("ဖေမောင်"),
                  ],
                ),
                Expanded(
                  child: Scrollbar(
                    controller: _horizontalController,
                    thumbVisibility: true,
                    notificationPredicate: (_) => true,
                    child: SingleChildScrollView(
                      controller: _horizontalController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // education
                          Column(
                            children: [
                              headingCell("education"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Ph.D"),
                              dataCell("Master"),
                              dataCell("Ph.D"),
                              dataCell("Master"),
                              dataCell("Master"),
                              dataCell("Ph.D"),
                              dataCell("Ph.D"),
                              dataCell("Bachelor"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Ph.D"),
                              dataCell("Ph.D"),
                              dataCell("Bachelor"),
                              dataCell("Ph.D"),
                              dataCell("Master"),
                              dataCell("Bachelor"),
                              dataCell("Ph.D"),
                            ],
                          ),
                          // address
                          Column(
                            children: [
                              headingCell("address"),
                              dataCell(
                                "ရန်ကုန်မြို့, သင်္ဃန်းကျွန်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "မန္တလေးမြို့, ချမ်းအေးသာစံမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "နေပြည်တော်, ဇေယျာသီရိမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, ဗဟန်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "မန္တလေးမြို့, မဟာအောင်မြေမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့,ကမာရွတ်မြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "မွန်ပြည်နယ်, မော်လမြိုင်မြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, တာမွေမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ပဲခူးတိုင်းဒေသကြီး, တောင်ငူမြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, ရန်ကင်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "မန္တလေးမြို့, ပြင်ဦးလွင်မြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့,ကမာရွတ်မြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "မွန်ပြည်နယ်, မော်လမြိုင်မြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, တာမွေမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ပဲခူးတိုင်းဒေသကြီး, တောင်ငူမြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, ရန်ကင်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, သင်္ဃန်းကျွန်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "မန္တလေးမြို့, ချမ်းအေးသာစံမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "နေပြည်တော်, ဇေယျာသီရိမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, ဗဟန်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ကချင်ပြည်နယ်, မြစ်ကြီးနားမြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ဧရာဝတီတိုင်းဒေသကြီး, ပုသိမ်မြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, သန်လျင်မြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ကယားပြည်နယ်, လွိုင်ကော်မြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, ဗဟန်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ကချင်ပြည်နယ်, မြစ်ကြီးနားမြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ဧရာဝတီတိုင်းဒေသကြီး, ပုသိမ်မြို့",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, သန်လျင်မြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ရန်ကုန်မြို့, ဗဟန်းမြို့နယ်",
                                textAlign: TextAlign.start,
                              ),
                              dataCell(
                                "ကချင်ပြည်နယ်, မြစ်ကြီးနားမြို့",
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          // phone
                          Column(
                            children: [
                              headingCell("phone"),
                              dataCell("09678012345"),
                              dataCell("09567801234"),
                              dataCell("09780123456"),
                              dataCell("09678012345"),
                              dataCell("09567801234"),
                              dataCell("09780123456"),
                              dataCell("09678012345"),
                              dataCell("09345678012"),
                              dataCell("09234567801"),
                              dataCell("09567801234"),
                              dataCell("09345678012"),
                              dataCell("09678012345"),
                              dataCell("09678012345"),
                              dataCell("09567801234"),
                              dataCell("09780123456"),
                              dataCell("09678012345"),
                              dataCell("09567801234"),
                              dataCell("09780123456"),
                              dataCell("09678012345"),
                              dataCell("09345678012"),
                              dataCell("09234567801"),
                              dataCell("09567801234"),
                              dataCell("09345678012"),
                              dataCell("09678012345"),
                              dataCell("09678012345"),
                              dataCell("09567801234"),
                              dataCell("09780123456"),
                              dataCell("09678012345"),
                              dataCell("09567801234"),
                              dataCell("09345678012"),
                            ],
                          ),
                          // email
                          Column(
                            children: [
                              headingCell("email"),
                              dataCell("mg@gmail.com"),
                              dataCell("ayemyint@gmail.com"),
                              dataCell("ko@gmail.com"),
                              dataCell("thuzar@gmail.com"),
                              dataCell("zaw@gmail.com"),
                              dataCell("nilar@gmail.com"),
                              dataCell("aungko@gmail.com"),
                              dataCell("su@gmail.com"),
                              dataCell("thanoo@gmail.com"),
                              dataCell("yu@gmail.com"),
                              dataCell("min@gmail.com"),
                              dataCell("maw@gmail.com"),
                              dataCell("phay@gmail.com"),
                              dataCell("khin@gmail.com"),
                              dataCell("kyaw@gmail.com"),
                              dataCell("shwe@gmail.com"),
                              dataCell("win@gmail.com"),
                              dataCell("naylin@gmail.com"),
                              dataCell("may@gmail.com"),
                              dataCell("min@gmail.com"),
                              dataCell("thu@gmail.com"),
                              dataCell("htun@gmail.com"),
                              dataCell("ni@gmail.com"),
                              dataCell("koko@gmail.com"),
                              dataCell("myint@gmail.com"),
                              dataCell("than@gmail.com"),
                              dataCell("khaing@gmail.com"),
                              dataCell("khant@gmail.com"),
                              dataCell("maw@gmail.com"),
                              dataCell("mgphay@gmail.com"),
                            ],
                          ),
                          // hobby
                          Column(
                            children: [
                              headingCell("hobby"),
                              dataCell("Reading"),
                              dataCell("Cooking"),
                              dataCell("Music"),
                              dataCell("Sports"),
                              dataCell("Dancing"),
                              dataCell("Gaming"),
                              dataCell("Traveling"),
                              dataCell("Photography"),
                              dataCell("Painting"),
                              dataCell("Football"),
                              dataCell("Gardening"),
                              dataCell("Gaming"),
                              dataCell("hobby"),
                              dataCell("Reading"),
                              dataCell("Cooking"),
                              dataCell("Music"),
                              dataCell("Sports"),
                              dataCell("Dancing"),
                              dataCell("Gaming"),
                              dataCell("Traveling"),
                              dataCell("Photography"),
                              dataCell("Reading"),
                              dataCell("Cooking"),
                              dataCell("Music"),
                              dataCell("Sports"),
                              dataCell("Traveling"),
                              dataCell("Photography"),
                              dataCell("Painting"),
                              dataCell("Football"),
                              dataCell("Gardening"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget headingCell(String text) {
  return Container(
    width: 150,

    margin: EdgeInsets.all(1),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(color: Colors.blueGrey),
    child: Text(
      text,
      style: TextStyle(color: Colors.white),
      textAlign: TextAlign.center,
    ),
  );
}

Widget dataCell(String text, {TextAlign textAlign = TextAlign.center}) {
  return Container(
    width: 150,
    height: 60,

    margin: EdgeInsets.all(1),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      border: BoxBorder.all(color: Colors.grey),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
        textAlign: textAlign,
      ),
    ),
  );
}
