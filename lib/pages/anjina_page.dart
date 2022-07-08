import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class AnjinaApp extends StatelessWidget {
  const AnjinaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anjina Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnjinaPage(),
    );
  }
}

class AnjinaPage extends StatelessWidget {
  const AnjinaPage({Key? key}) : super(key: key);

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);

  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);

  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);

  final _textCustomStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 20, fontWeight: FontWeight.bold);

  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and 
       philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  build(context) => Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Center(child: Text('ANJINA TRACKER')),
        ),
        body: Accordion(
          maxOpenSections: 2,
          headerBackgroundColorOpened: Colors.black54,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(
                Icons.insights_rounded,
                color: Colors.white,
              ),
              headerBackgroundColor: Colors.black,
              headerPadding: const EdgeInsets.all(16.0),
              headerBackgroundColorOpened: Colors.red,
              header: Text('SITUATION BEFORE', style: _textCustomStyle),
              content: Accordion(
                maxOpenSections: 1,
                headerBackgroundColorOpened: Colors.black54,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                children: [
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(
                      Icons.bed,
                      color: Colors.white,
                    ),
                    header: Text('At Rest', style: _headerStyle),
                    content: Text(
                      _loremIpsum,
                      style: _contentStyle,
                    ),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(
                      Icons.compare_rounded,
                      color: Colors.white,
                    ),
                    header: Text('Post Exertion', style: _headerStyle),
                    headerBackgroundColor: Colors.blue,
                    headerBackgroundColorOpened: Colors.black54,
                    contentBorderColor: Colors.black54,
                    content: Row(
                      children: [
                        const Icon(
                          Icons.compare_rounded,
                          size: 120,
                          color: Colors.orangeAccent,
                        ),
                        Flexible(
                            flex: 1,
                            child: Text(_loremIpsum, style: _contentStyle)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(
                Icons.compare_rounded,
                color: Colors.white,
              ),
              header: Text('DESCRIPTION OF SYMPTOMS', style: _headerStyle),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: Colors.amber,
              content: Accordion(
                maxOpenSections: 1,
                headerBackgroundColorOpened: Colors.black54,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                children: [
                  AccordionSection(
                    header: Text('Nested Section #1', style: _headerStyle),
                    content: Text(
                      _loremIpsum,
                      style: _contentStyle,
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderColor: Colors.black54,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon: const Icon(
                      Icons.compare_rounded,
                      color: Colors.white,
                    ),
                    header: Text('Nested Section #2', style: _headerStyle),
                    headerBackgroundColor: Colors.black38,
                    headerBackgroundColorOpened: Colors.black54,
                    contentBorderColor: Colors.black54,
                    content: Row(
                      children: [
                        const Icon(
                          Icons.compare_rounded,
                          size: 120,
                          color: Colors.orangeAccent,
                        ),
                        Flexible(
                            flex: 1,
                            child: Text(_loremIpsum, style: _contentStyle)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.contact_page, color: Colors.white),
              header: Text('Contact', style: _headerStyle),
              content: Wrap(
                children: List.generate(
                    30,
                    (index) => const Icon(Icons.contact_page,
                        size: 30, color: Color(0xff999999))),
              ),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.movie, color: Colors.white),
              header: Text('Culture', style: _headerStyle),
              content:
                  const Icon(Icons.movie, size: 200, color: Color(0xff999999)),
            ),
            AccordionSection(
              header: Text('Community', style: _headerStyle),
              content:
                  const Icon(Icons.people, size: 200, color: Color(0xff999999)),
            ),
            AccordionSection(
              header: Text('Map', style: _headerStyle),
              content:
                  const Icon(Icons.map, size: 200, color: Color(0xff999999)),
            )
          ],
        ),
      );
}
