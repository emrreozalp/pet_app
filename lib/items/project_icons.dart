import 'package:flutter/material.dart';
import 'package:pet_app/items/project_colors.dart';
import 'package:pet_app/items/project_paddings.dart';

//----------------FAV ICON---------------------

class FavIcon extends StatelessWidget {
  const FavIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: rightPadding,
      child: Container(
        decoration: BoxDecoration(
          color: ProjectColors().redColor,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
      ),
    );
  }
}

//-------------BACK ICON------------------------

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: ProjectColors().blueColor),
      child: FittedBox(
        fit: BoxFit.cover,
        child: IconButton(
          onPressed: () {},
          icon: backIconDecoration(),
        ),
      ),
    ));
  }

  Container backIconDecoration() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: ProjectColors().whiteColor),
      child: Icon(
        size: 22.0,
        Icons.arrow_back,
        color: ProjectColors().blueColor,
      ),
    );
  }
}

//------------------Tick Icon--------------------

class TickIcon {
  static Icon tickIcon = Icon(
    Icons.task_alt_rounded,
    color: Colors.green.shade300,
    size: 20.0,
  );
}

class MessageIcon {
  static const Icon messageIcon = Icon(
    Icons.message,
    color: Colors.black,
  );
}

class PhoneIcon {
  static const Icon phoneIcon = Icon(
    Icons.phone_in_talk_rounded,
    color: Colors.black,
  );
}
