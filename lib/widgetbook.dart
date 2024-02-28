import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13ProMax,
          ],
        ),
        TimeDilationAddon(),
        GridAddon(50),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        BuilderAddon(
          name: 'white',
          builder: (context, child) => ColoredBox(
            color: Colors.transparent,
            child: child,
          ),
        ),
      ],
      directories: [
        WidgetbookFolder(
          name: 'Widgets',
          children: [
            WidgetbookComponent(
              name: 'Example Button',
              useCases: [
                // * Default Button No Sent Param *** Ex1 ***
                WidgetbookUseCase(
                    name: 'Default', builder: (context) => const Button()),

                // * Example Button Sent Param All ***Ex2***
                WidgetbookUseCase(
                    name: 'Loading',
                    builder: (context) => Button(
                          onPressed: () {
                            /// Your onTap logic here
                          },
                          title: 'Button',
                          backgroundColor: const Color(0xFFFFFFFF),
                          width: 150,
                          height: 50,
                          textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          fontColor: const Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          borderRadius: 30.0,
                          borderRadiusColor: const Color(0xFF000000),
                          disableColor: const Color(0xFFD9D9D9),
                          loadingIconColor: const Color(0xFFD9D9D9),
                          strokeWidth: 4.0,
                          loadingIconWidth: 0.0,
                          statusButton:
                              'loading', // 'enable'  , 'disable' , 'loading'
                        )),

                // * Disable *** Ex3 ***
                WidgetbookUseCase(
                    name: 'Disable',
                    builder: (context) =>
                        const Button(statusButton: 'disable')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
