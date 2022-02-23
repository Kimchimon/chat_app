import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      width: 150.0,
      height: 300.0,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 10.0,
          ),
          OutlineButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.image),
            label: const Text('Add icon'),
          ),
          const SizedBox(
            height: 80,
          ),
          TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              label: const Text(
                'Close',
                style: TextStyle(
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }
}
