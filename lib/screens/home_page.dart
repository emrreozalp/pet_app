import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_app/items/info_cards.dart';
import 'package:pet_app/items/project_colors.dart';
import 'package:pet_app/items/project_icons.dart';
import 'package:pet_app/items/project_paddings.dart';
import 'package:pet_app/items/project_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        actions: const [
          FavIcon(),
        ],
        leading: const BackIcon(),
        elevation: 0,
        backgroundColor: ProjectColors().transparentColor,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const TopImage(),
              Padding(
                padding: stackPadding,
                child: Container(
                  width: MediaQuery.of(context).size.shortestSide,
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  height: 137,
                  color: ProjectColors().whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: verticalPadding,
                        child: CardFirstLine(),
                      ),
                      CardSecondLine(),
                      Padding(
                        padding: verticalPadding,
                        child: InfoCardsRow(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: verticalPadding + bodyHorizontalPadding,
            child: const OwnerCard(),
          ),
          Padding(
            padding: bodyVerticalPadding + bodyHorizontalPadding,
            child: const DescriptionTexts(),
          ),
          const Padding(
            padding: verticalPadding,
            child: AdaptButton(),
          )
        ],
      ),
    );
  }
}

class AdaptButton extends StatelessWidget {
  const AdaptButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ProjectColors().buttonColor),
        onPressed: () {},
        child: const Text(
          buttonText,
        ),
      ),
    );
  }
}

class DescriptionTexts extends StatelessWidget {
  const DescriptionTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _descriptionTitle(context),
        Padding(
          padding: verticalPadding,
          child: _descriptionSubtitle(context),
        ),
      ],
    );
  }

  Text _descriptionSubtitle(BuildContext context) {
    return Text(
      descriptionSubtitle,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  Text _descriptionTitle(BuildContext context) {
    return Text(
      descriptionTitle,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class OwnerCard extends StatelessWidget {
  const OwnerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const OwnerImage(),
      title: Row(
        children: [
          _ownerName(context),
          Padding(
            padding: iconsLeftPadding,
            child: _ownerCommunication(),
          ),
        ],
      ),
      subtitle: _ownerStatus(context),
    );
  }

  Text _ownerStatus(BuildContext context) {
    return Text(
      status,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }

  Row _ownerCommunication() {
    return Row(
      children: const [
        MessageIcon.messageIcon,
        PhoneIcon.phoneIcon,
      ],
    );
  }

  Text _ownerName(BuildContext context) {
    return Text(
      ownerName,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

class OwnerImage extends StatelessWidget {
  const OwnerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Image.asset(
        'assets/profile_photo.jpg',
        width: 70.0,
      ),
    );
  }
}

class InfoCardsRow extends StatelessWidget {
  const InfoCardsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        FirstInfoCard(),
        SecondInfoCard(),
        ThirdInfoCard(),
      ],
    );
  }
}

//------------Third Info Card----------

class ThirdInfoCard extends StatelessWidget {
  const ThirdInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCards(
      color: ProjectColors().purpleCardColor,
      title: thirdCardTitle,
      subtitle: thirdCardSubtitle,
    );
  }
}

//------------Second Info Card----------

class SecondInfoCard extends StatelessWidget {
  const SecondInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCards(
      color: ProjectColors().orangeCardColor,
      title: secondCardTitle,
      subtitle: secondCardSubtitle,
    );
  }
}

//------------First Info Card----------

class FirstInfoCard extends StatelessWidget {
  const FirstInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCards(
      color: ProjectColors().blueCardColor,
      title: firstCardTitle,
      subtitle: firstCardSubtitle,
    );
  }
}

//------------------Card Row Second Line------------

class CardSecondLine extends StatelessWidget {
  const CardSecondLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          gender,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          location,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

//------------------Card Row First Line------------

class CardFirstLine extends StatelessWidget {
  const CardFirstLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          children: [
            const Text(
              verified,
            ),
            Padding(
              padding: leftPadding,
              child: TickIcon.tickIcon,
            )
          ],
        ),
      ],
    );
  }
}

class TopImage extends StatelessWidget {
  const TopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const assetImage = AssetImage('assets/top_photo.jpg');
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: assetImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
