import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffac3931),
    Color(0xffe5d352),
    Color(0xffd9e76c),
    Color(0xff357d8d),
    Color(0xff482c3d),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
