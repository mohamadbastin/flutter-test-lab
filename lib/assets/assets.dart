import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FauliDefaultPic extends StatelessWidget {
  const FauliDefaultPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/fauli_default.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class WaterDrop extends StatelessWidget {
  const WaterDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/waterdrop.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class Storm extends StatelessWidget {
  const Storm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/storm.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class ShellPopOver extends StatelessWidget {
  const ShellPopOver({Key? key, this.relativeHeight}) : super(key: key);

  final num? relativeHeight;

  @override
  Widget build(BuildContext context) {
    return relativeHeight == null
        ? SvgPicture.asset(
            "assets/icons/shell_popover.svg",
          )
        : SvgPicture.asset("assets/icons/shell_popover.svg",
            height: MediaQuery.of(context).size.height * relativeHeight!);
  }
}

class IceIsland extends StatelessWidget {
  const IceIsland({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/ice_island.png",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class JungleIsland extends StatelessWidget {
  const JungleIsland({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/jungle_island.png",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class MountainIsland extends StatelessWidget {
  const MountainIsland({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/mountain_island.png",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class UnderwaterIsland extends StatelessWidget {
  const UnderwaterIsland({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/underwater_island_active.png",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class SeedIce extends StatelessWidget {
  const SeedIce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/plant_seed_ice.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class SeedJungle extends StatelessWidget {
  const SeedJungle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/plant_seed_jungle.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class SeedMountain extends StatelessWidget {
  const SeedMountain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/plant_seed_mountain.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class SeedUnderwater extends StatelessWidget {
  const SeedUnderwater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/plant_seed_underwater.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}
