import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rich Text View',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Creates a text widget. If the [style] argument is null, the text will use the style from the...',
              style: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                fontWeight: FontWeight.w800,
                color: const Color(0xffEA80FC),
              ),
              textAlign: TextAlign.center,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'First ',
                    style: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  const WidgetSpan(
                      child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.red,
                  )),
                  TextSpan(
                    text: ' second ',
                    style: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
                      color: Colors.grey,
                      fontSize: 32,
                    ),
                  ),
                  WidgetSpan(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(
                    text: ' third',
                    style: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
                      color: Colors.grey,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'One ', style: textTheme.bodySmall),
                  TextSpan(
                    text: 'Two ',
                    style: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: 'Three Four', style: textTheme.bodySmall),
                  TextSpan(
                    text: ' Five',
                    style: (textTheme.bodyMedium ?? const TextStyle()).copyWith(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'G',
                    style: (textTheme.bodyLarge ?? const TextStyle()).copyWith(
                      backgroundColor: const Color(0xffF8BBD0),
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                      text: 'o',
                      style: (textTheme.bodyLarge ?? const TextStyle())
                          .copyWith(
                              height: 1.4,
                              backgroundColor: const Color(0xffFCE4EC),
                              color: Colors.red,
                              fontWeight: FontWeight.w900)),
                  TextSpan(
                      text: 'o',
                      style: (textTheme.bodyLarge ?? const TextStyle())
                          .copyWith(
                              height: 1.4,
                              backgroundColor: const Color(0xffF48FB1),
                              color: Colors.yellow,
                              fontWeight: FontWeight.w900)),
                  TextSpan(
                    text: 'g',
                    style: (textTheme.bodyLarge ?? const TextStyle()).copyWith(
                      backgroundColor: const Color(0xffF8BBD0),
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                      text: 'l',
                      style: (textTheme.bodyLarge ?? const TextStyle())
                          .copyWith(
                              height: 1.4,
                              backgroundColor: const Color(0xffFCE4EC),
                              color: Colors.green,
                              fontWeight: FontWeight.w900)),
                  TextSpan(
                    text: 'e',
                    style: (textTheme.bodyLarge ?? const TextStyle()).copyWith(
                      backgroundColor: const Color(0xffF8BBD0),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
