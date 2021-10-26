import 'package:dashbord_ui/constant/style.dart';
import 'package:dashbord_ui/helpers/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_text.dart';

AppBar topAppNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0.0,
      leading: !ResponsiveWidgets.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: const Icon(
                    Icons.ac_unit_sharp,
                    size: 28.0,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu_rounded),
            ),
      title: Row(
        children: [
          const Visibility(
            child: CustomeText(
              text: 'Dashbord',
              size: 20.0,
              weight: FontWeight.bold,
              color: lightGrey,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(0.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
              ),
              Positioned(
                top: 7.0,
                right: 7.0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: light,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 12.0,
            width: 1.0,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24.0,
          ),
          const CustomeText(
            text: 'Ashikur R.',
            color: lightGrey,
          ),
          const SizedBox(
            width: 16.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              margin: const EdgeInsets.all(2.0),
              child: const CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme:const IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
