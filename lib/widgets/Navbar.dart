import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/logo/LOGO.png',
                  width: 120,
                  fit: BoxFit.contain,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.black, // adjust based on background
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const Divider(
            color: Colors.red,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF666666),
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              // Navigate or do stuff

              GoRouter.of(context).push('/about');

              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'Land partnership',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500),
            ),
            onTap: () {
              GoRouter.of(context).push('/landpartner');

              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'Solar power',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500),
            ),
            onTap: () {
              GoRouter.of(context).push('/solarpower');

              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'Integrated Farming',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500),
            ),
            onTap: () {
              GoRouter.of(context).push('/integratedfarm');

              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'Solutions',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500),
            ),
            onTap: () {
              GoRouter.of(context).push('/solutions');

              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'Projects',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500),
            ),
            onTap: () {
              GoRouter.of(context).push('/projects');

              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          ListTile(
            title: Text(
              'Contact',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500),
            ),
            onTap: () {
              GoRouter.of(context).push('/contact');

              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
