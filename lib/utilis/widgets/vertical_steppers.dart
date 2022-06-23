import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalStepper extends StatefulWidget {
  const VerticalStepper({Key? key}) : super(key: key);

  @override
  State<VerticalStepper> createState() => _VerticalStepperState();
}

class _VerticalStepperState extends State<VerticalStepper> {
  List<Model> list = [];

  @override
  void initState() {
    super.initState();
    list.add(
      Model(
        "6am - 8am",
      ),
    );
    list.add(
      Model(
        "9am - 11am",
      ),
    );
    list.add(
      Model(
        "11am - 2pm",
      ),
    );
    list.add(
      Model(
        "2pm - 4pm",
      ),
    );
    list.add(
      Model(
        "4pm - 6pm",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (con, ind) {
        return ind != 0
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Column(
                        children: List.generate(
                          3,
                          (ii) => Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 0,
                              bottom: 5,
                            ),
                            child: Container(
                              height: 3,
                              width: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '600ml',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: const Color(0xffC58BF2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFC58BF2),
                          ),
                        ),
                      ),
                      Text(
                        list[ind].time,
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          color: const Color(0XFFADA4A5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFC58BF2),
                      ),
                    ),
                  ),
                  Text(
                    list[ind].time,
                    style: GoogleFonts.poppins(
                      fontSize: 8,
                      color: const Color(0XFFADA4A5),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              );
      },
    );
  }
}

class Model {
  String time;

  Model(
    this.time,
  );
  //initialise other fields so on....
}
