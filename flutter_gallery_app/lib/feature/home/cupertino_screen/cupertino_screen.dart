import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/cubit/cupertino_screen_cubit.dart';

class CupertinoScreen extends StatefulWidget {
  const CupertinoScreen({Key? key}) : super(key: key);

  @override
  _CupertinoScreenState createState() => _CupertinoScreenState();
}

class _CupertinoScreenState extends State<CupertinoScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => CupertinoScreenCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cupertino Widget',
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
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            top: 50, left: 20, bottom: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Widget',
                            style: (textTheme.labelMedium ?? const TextStyle())
                                .copyWith(
                                    fontSize: 32, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 150),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Pull to refresh',
                                style:
                                    (textTheme.labelMedium ?? const TextStyle())
                                        .copyWith(fontSize: 21),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Indicator',
                              style:
                                  (textTheme.labelMedium ?? const TextStyle())
                                      .copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                                child: CupertinoActivityIndicator(
                              radius: 14,
                            )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Button',
                              style:
                                  (textTheme.labelMedium ?? const TextStyle())
                                      .copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: CupertinoButton(
                                onPressed: null,
                                child: Text(
                                  'Button',
                                  style: (textTheme.labelMedium ??
                                          const TextStyle())
                                      .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: const Color(0xff2196F3),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: CupertinoButton(
                                onPressed: () {},
                                color: const Color(0xff2196F3),
                                child: Text(
                                  'With background',
                                  style: (textTheme.labelMedium ??
                                          const TextStyle())
                                      .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Slider',
                              style:
                                  (textTheme.labelMedium ?? const TextStyle())
                                      .copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            BlocBuilder<CupertinoScreenCubit,
                                CupertinoScreenState>(
                              buildWhen: (previous, current) =>
                                  previous.sliderValue1 !=
                                      current.sliderValue1 ||
                                  previous.sliderValue2 != current.sliderValue2,
                              builder: (context, state) => Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: CupertinoSlider(
                                      key: const Key('slider'),
                                      value: state.sliderValue1,
                                      divisions: 10,
                                      max: 100,
                                      activeColor: const Color(0xff2196F3),
                                      thumbColor: CupertinoColors.white,
                                      onChanged: (double value) {
                                        context
                                            .read<CupertinoScreenCubit>()
                                            .updateSlider1(value);
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: CupertinoSlider(
                                      key: const Key('slider1'),
                                      value: state.sliderValue2,
                                      divisions: 10,
                                      max: 100,
                                      activeColor: const Color(0xff2196F3),
                                      thumbColor: CupertinoColors.white,
                                      onChanged: (double value) {
                                        context
                                            .read<CupertinoScreenCubit>()
                                            .updateSlider2(value);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Switch',
                              style:
                                  (textTheme.labelMedium ?? const TextStyle())
                                      .copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            BlocBuilder<CupertinoScreenCubit,
                                CupertinoScreenState>(
                              buildWhen: (previous, current) =>
                                  previous.switchValue2 != current.switchValue2,
                              builder: (context, state) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Switch.adaptive(
                                      applyCupertinoTheme: true,
                                      value: state.switchValue1,
                                      onChanged: null),
                                  Switch.adaptive(
                                      applyCupertinoTheme: true,
                                      value: state.switchValue2,
                                      onChanged: (value) {
                                        context
                                            .read<CupertinoScreenCubit>()
                                            .updateSwitch2(value);
                                      }),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  height: 60,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings),
                      label: 'Widget',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.collections),
                      label: 'Modal',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.news),
                      label: 'Form',
                    ),
                  ],
                  iconSize: 32,
                  activeColor: const Color(0xff2196F3),
                ),
                tabBuilder: (context, index) {
                  return CupertinoTabView(
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
