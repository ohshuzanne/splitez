import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitez/theme/theme_provider.dart';
import 'package:splitez/utils/color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:splitez/components/panel_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isToggled = false;
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.4;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.8;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Piggy Bank",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          // Toggle button in the app bar
          AnimatedSwitcher(
            duration: Duration(
              milliseconds: 150,
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: GestureDetector(
              key: ValueKey<bool>(isToggled),
              onTap: () {
                setState(() {
                  isToggled = !isToggled;
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: Icon(
                  isToggled ? Icons.toggle_on : Icons.toggle_off,
                  key: UniqueKey(),
                  color: Theme.of(context).colorScheme.secondary,
                  size: 50,
                ),
              ),
            ),
          ),
        ],
      ),

      //panel
      body: SlidingUpPanel(
        controller: panelController,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        maxHeight: panelHeightOpen,
        minHeight: panelHeightClosed,
        color: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/images/investment.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          dragHandleColor: Theme.of(context).colorScheme.secondary,
          panelController: panelController,
        ),
      ),
    );
  }
}
