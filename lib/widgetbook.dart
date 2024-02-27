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
              name: 'Button',
              useCases: [
                // * Default Button
                WidgetbookUseCase(
                    name: 'Default Button',
                    builder: (context) => const Button()),

                // * Example Button
                WidgetbookUseCase(
                    name: 'Example Button',
                    builder: (context) => const Button(
                          title: 'Button',
                          backgroundColor: Color.fromARGB(255, 176, 233, 101),
                          width: 150,
                          height: 50,
                          fontColor: Color.fromARGB(255, 242, 3, 250),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          borderRadius: 30.0,
                          borderRadiusColor: Color.fromARGB(255, 194, 48, 48),
                          statusButton: 'enable',
                        )),

                WidgetbookUseCase(
                    name: 'Example TextStyle',
                    builder: (context) => const Button(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 248, 3, 3),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )),

                WidgetbookUseCase(
                    name: 'Example Loading',
                    builder: (context) => const Button(
                          statusButton: 'loading',
                          strokeWidth: 4.0,
                          loadingIconWidth: 0.0,
                          loadingIconColor: Color.fromARGB(255, 1, 250, 34),
                        )),

                WidgetbookUseCase(
                    name: 'Example Disable',
                    builder: (context) => const Button(
                          statusButton: 'disable',
                          disableColor: Color(0xFFD9D9D9),
                        )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
