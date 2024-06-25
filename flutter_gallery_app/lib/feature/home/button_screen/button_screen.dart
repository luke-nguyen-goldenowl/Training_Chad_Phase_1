import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/cubit/button_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/material_button_custom.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonScreenCubit(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Button View',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            backgroundColor: const Color(0xff2196F3),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff1AF9FF),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/my_container');
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/my_container');
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<ButtonScreenCubit, ButtonScreenState>(
                  buildWhen: (p, c) => p.dropdown != c.dropdown,
                  builder: (context, state) => DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text('Select your favourite fruit'),
                    value: state.dropdown,
                    onChanged: (String? newValue) {
                      context.read<ButtonScreenCubit>().updateDropdown(
                          newValue ?? Constants.dropdownData.first);
                    },
                    items: Constants.dropdownData
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<ButtonScreenCubit,ButtonScreenState>(
                  buildWhen: (p, c) => p.dropdownFormField != c.dropdownFormField,
                  builder: (context, state) => DropdownButtonFormField<String>(
                    hint: const Text('Select your favourite fruit'),
                    value: state.dropdownFormField,
                    onChanged: (String? newValue) {
                      context.read<ButtonScreenCubit>().updateDropdownFormField(
                          newValue ?? Constants.dropdownFormFieldData.first);
                    },
                    items: Constants.dropdownFormFieldData
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero, // Set this
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 34),
                      backgroundColor: const Color(0xff2196F3),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  child: const Text(
                    'Elevated Button',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 34),
                      backgroundColor: const Color(0xff2196F3),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  icon: const Icon(
                    Icons.account_circle_sharp,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Elevated Button Icon',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Text Button',
                      style: TextStyle(
                          color: Color(0xff2196F3),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Center(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle_sharp,
                      color: Color(0xff2196F3),
                    ),
                    label: const Text(
                      'Text Button Icon',
                      style: TextStyle(
                        color: Color(0xff2196F3),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 34),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: const Text(
                    'Outlined Button',
                    style: TextStyle(
                      color: Color(0xff2196F3),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 34),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  icon: const Icon(
                    Icons.account_circle_sharp,
                    color: Color(0xff2196F3),
                  ),
                  label: const Text(
                    'Outlined Button Icon',
                    style: TextStyle(
                      color: Color(0xff2196F3),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 42,
                  width: double.infinity,
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    color: const Color(0xff9E9E9E),
                    child: const Text(
                      'Cupertino Button',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 34,
                  child: CustomPaint(
                    painter: MaterialButtonCustom(),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      clipBehavior: Clip.hardEdge,
                      minWidth: double.infinity,
                      child: const Text('Material Button'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 34,
                  child: CustomPaint(
                    painter: MaterialButtonCustom(),
                    child: RawMaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      clipBehavior: Clip.hardEdge,
                      constraints: const BoxConstraints(
                        minWidth: double.infinity,
                      ),
                      child: const Text(
                        'Raw Material Button',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<ButtonScreenCubit,ButtonScreenState>(
                  buildWhen: (p, c) => p.options != c.options,
                  builder: (context, state) => ToggleButtons(
                    constraints: const BoxConstraints(minHeight: 48),
                    onPressed: (int index) {
                      context.read<ButtonScreenCubit>().updateOptionState(index);
                    },
                    isSelected: state.options,
                    fillColor: const Color(0xffE0EEFA),
                    borderColor: Colors.grey[300],
                    borderWidth: 2,
                    selectedColor: const Color.fromARGB(255, 4, 141, 246),
                    children: const <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Text('Option 1'),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Text('Option 2'),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Text('Option 3'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 187, 187, 187)
                            .withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    style: IconButton.styleFrom(
                      minimumSize: const Size(54, 54),
                      padding: EdgeInsets.zero,
                      backgroundColor: const Color(0xff2196F3),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
