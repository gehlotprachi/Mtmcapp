import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField(
      TextEditingController controller, String text, IconData icondata) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              color: Colors.cyan,
            ),
            suffixIcon: Icon(icondata),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }

  static CustomButton(VoidCallback callback, String text,
      {required onPressed}) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: 50,
        width: 325,
        child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.pink),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ))),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

//   static  Customlog(BuildContext context, String text) {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return log();
//           // title: Text(text),
//           // actions: [
//           //   TextButton(
//           //       onPressed: () {
//           //         Navigator.pop(context);
//           //       },
//           //       child: Text("ok"),
//           // ],
//         });
//   }
// }

  CustomFloatButton(VoidCallback callback) {
    return FloatingActionButton(onPressed: () {
      callback();
    });
  }

  CustomtextField(
      TextEditingController controller, String text, IconData? icondata) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextField(
          //readOnly: readOnly,
          style: TextStyle(color: Colors.white),
          //controller: controller,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            suffixIcon: Icon(icondata, color: Colors.white),
          ),
        ),
      ],
    );
  }

  CustomPassword(TextEditingController controller, String text,
      [String? params, bool? password, VoidCallback? callback]) {
    return TextField(
      controller: controller,
      obscureText: password!,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: IconButton(
          icon: Icon(password ? Icons.visibility_off : Icons.visibility),
          onPressed: callback,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
