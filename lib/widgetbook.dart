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
              name: 'Th Button',
              useCases: [
                // * no sent param
                WidgetbookUseCase(
                    name: 'Button no sent param',
                    builder: (context) => const Button()),

                // * sent title
                WidgetbookUseCase(
                    name: 'Button sent title',
                    builder: (context) => const Button(title: 'sent title')),

                // * sent backgroundColor
                WidgetbookUseCase(
                    name: 'Button sent backgroundColor',
                    builder: (context) =>
                        const Button(backgroundColor: Color(0xFF3A8A1F))),

                // * sent width
                WidgetbookUseCase(
                    name: 'Button sent width',
                    builder: (context) => const Button(width: 300)),

                // * sent TextStyle
                WidgetbookUseCase(
                    name: 'Button sent TextStyle',
                    builder: (context) => const Button(
                            textStyle: TextStyle(
                          color: Color.fromARGB(255, 235, 5, 5),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ))),

                // * sent fontColor
                WidgetbookUseCase(
                    name: 'Button sent fontColor',
                    builder: (context) =>
                        const Button(fontColor: Color(0xFF3A8A1F))),

                // * sent fontSize
                WidgetbookUseCase(
                    name: 'Button sent fontSize',
                    builder: (context) => const Button(fontSize: 25.0)),

                // * sent fontWeight
                WidgetbookUseCase(
                    name: 'Button sent fontWeight',
                    builder: (context) =>
                        const Button(fontWeight: FontWeight.bold)),

                // * sent borderRadius
                WidgetbookUseCase(
                    name: 'Button sent borderRadius',
                    builder: (context) => const Button(borderRadius: 10)),

                // * sent borderRadiusColor
                WidgetbookUseCase(
                    name: 'Button sent borderRadiusColor',
                    builder: (context) => const Button(
                        borderRadiusColor: Color.fromARGB(255, 202, 16, 16))),

                // * sent loading
                WidgetbookUseCase(
                    name: 'Button sent loading',
                    builder: (context) => const Button(
                        statusButton: 'loading',
                        strokeWidth: 4.0,
                        loadingIconWidth: 0.0,
                        loadingIconColor: Color.fromARGB(255, 202, 16, 16))),

                // * sent disable
                WidgetbookUseCase(
                    name: 'Button sent disable',
                    builder: (context) =>
                        const Button(statusButton: 'disable')),

                // * sent enable
                WidgetbookUseCase(
                    name: 'Button sent enable',
                    builder: (context) => const Button(statusButton: 'enable')),

                // * sent strokeWidth
                WidgetbookUseCase(
                    name: 'Button sent strokeWidth',
                    builder: (context) => const Button(strokeWidth: 10.0)),

                // Todo call function
                // widget.onPress?.call()
                // onPress: ()=>{}
              ],
            ),
          ],
        ),
      ],
    );
  }
}
