import 'package:flutter/material.dart';

class CustomComponent extends StatelessWidget {
  const CustomComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                    title: 'food',
                    onPressed: () {},
                  )),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomFoodButton(
                title: 'food',
                onPressed: () {},
              ),
            ),
          ],
        )));
  }
}

class _ColorsUtiliity {
  final Color red = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtiliity, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: red, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normal2xPadding,
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: white, fontWeight: FontWeight.bold)),
        ));
  }
}
