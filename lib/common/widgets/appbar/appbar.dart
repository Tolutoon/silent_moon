import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? route;
  const BasicAppBar({super.key, this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Small white portion at the top
        Container(
          height: 4, // Adjust this height as needed
          color: Colors.white,
        ),
        // Actual AppBar
        AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.white, // Ensures status bar blends in
            statusBarIconBrightness: Brightness.dark, // Icons remain visible
          ),
          leading: IconButton(
            onPressed: () {
              context.go(route!);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black, // Ensures visibility
            ),
          ),
          title: title != null
              ? Text(
                  title!,
                  style: const TextStyle(
                    color: Colors.black, // Ensures visibility on white
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
