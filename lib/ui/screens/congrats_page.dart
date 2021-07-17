import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loono/ui/widgets/extend_inkwell.dart';

class ContragsPage extends StatelessWidget {
  const ContragsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/congrats.svg',
                width: 184,
                height: 184,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Báječné! Jsi poctivější než polovina žen v Česku',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Tato prohlídka je důležitá pro včasné odhalení rakoviny děložního čípku a jiných obtíží.Jen tak dál...',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ExtendedInkWell(
                  onTap: () {},
                  materialColor: const Color(0xFFEFAD89),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: const SizedBox(
                    height: 65,
                    child: Align(
                      child: Text('Pokračovat',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}
