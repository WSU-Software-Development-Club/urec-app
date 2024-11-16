import 'package:flutter/material.dart';
import 'package:urec_app_gt/urec_themes/urec_themes.dart';


class UrecIconButton extends StatelessWidget {
  //stateless it is immutable does not maintain any state
  //UrecIconbutton({super.key});
  final String? imageUrl; //nullable string with ?
  final double? width;
  final double? height;
  final Function()? onPressed;
  //final Color? splashColor;
  final Color iconColor;
  final double iconSize;
  final double? splashRadius;
  final Color? highlightColor;
  final String? tooltip;

  UrecIconButton({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.onPressed, //if want to pass customized function
    //this.splashColor,
    required this.iconColor, //must pass in a parameter!
    required this.iconSize,
    this.splashRadius,
    this.highlightColor,
    this.tooltip,
  });

  @override
  //State<UrecIconButton> createState() => _UrecIconButtonState();
  Widget build(BuildContext context) {
    return Material(
        //Wraps the widget in a Material Design context
        color: Colors
            .white, //sets the background color of the material (entire line)

        //we are not using Center!
        child: Center(
          child: Ink(
              decoration: const ShapeDecoration(
                color: Colors.white, //background shape color
                shape:
                    CircleBorder(), //shape of the background which will be a circle
              ),
              child: IconButton(
                icon: imageUrl != null
                    ? Image.network(imageUrl!,
                        width: width, //use the specified width
                        height: height) // Load image from URL if available
                    : const Icon(
                        Icons.android,
                        color: Colors.grey,
                      ), // Default icon if no URL is provided

                color: iconColor, //required parameter!
                onPressed:
                    onPressed ?? //passing a customized function (optional) when the icon is pressed
                        () {
                          print(
                              "Reusable Icon pressed!"); //fall back action be default when no onpressed is passed
                        },
                //splashColor: Colors.green,
                highlightColor: highlightColor,
                iconSize:iconSize, //required parameter to set the size of the icon
                splashRadius: splashRadius,
                tooltip: tooltip != null ? tooltip : "",
              )),
        ));
  }
}

/*
//class _UrecSwitchState extends State<UrecSwitch> {
class _UrecIconButtonState extends State<UrecIconButton>{
  bool is_clicked = false;
  
  Widget build(BuildContext context){
    return Column(
      
    )
  }
}
*/
