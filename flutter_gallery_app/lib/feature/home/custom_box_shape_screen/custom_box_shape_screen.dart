import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/custom_box_shape_screen/widgets/custom_painter_item.dart';

class CustomBoxShapeScreen extends StatelessWidget {
  const CustomBoxShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        title: const Text(
          'Custom Box Shape',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xff2196F3),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: CustomPaint(
            painter: CustomPainterItem(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 110,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffDDF2DB),
                      ),
                      child: const Center(
                          child: Text(
                        '10K',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff5B7F62)),
                      )),
                    ),
                    const SizedBox(width: 14),
                    const DottedLine(
                      direction: Axis.vertical,
                      lineLength: 84,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashColor: Color.fromARGB(255, 160, 160, 160),
                      dashRadius: 0.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                    const SizedBox(width: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GIOITHIEU',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Giảm giá 12k cho đơn hàng',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Kết thúc: 31/12/2021',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.circle_outlined,
                      color: Color.fromARGB(255, 0, 96, 174),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
