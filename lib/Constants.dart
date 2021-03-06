import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

var kBackgroundColor = Color(0xffF9F9F9);


textfieldDecoration(label, IconData icon) {
  return InputDecoration(
      prefixIcon: Icon(icon),
      isDense: true, // Added this
      contentPadding: EdgeInsets.all(15),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(
          width: 1,
          color: Color(0xFF2821B5),
        ),
      ),
      border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Color(0xFF23232))),
      labelText: label);
}

const EdgeInsets padding10 = EdgeInsets.all(10);
const SizedBox box10 = SizedBox(
  height: 10,
);
const SizedBox box5 = SizedBox(
  height: 5,
);
const SizedBox box20 = SizedBox(
  height: 20,
);
const SizedBox box30 = SizedBox(
  height: 30,
);
const Color primaryColor = Color(0xFF02777b);
const Color secondaryColor = Color(0xFFf9a825);

displaySnackBar(text, ctx) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: Duration(seconds: 1),
    ),
  );
}

displayTimedSnackBar(text, ctx, seconds) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: Duration(seconds: seconds),
    ),
  );
}
