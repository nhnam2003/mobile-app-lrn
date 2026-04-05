import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            image: const DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/736x/ae/c2/8a/aec28a90503ff0426e09e4ba1edad69c.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nimast NGUYEN",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text(
                    "Software Engineer",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '80/100',
                    style: TextStyle(fontSize: 12, color: Colors.redAccent),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 160,
                child: LinearProgressIndicator(
                  value: 80 / 100,
                  backgroundColor: Colors.grey[300],
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                  minHeight: 6,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0, right: 16),
          child: InkWell(
            onTap: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Edit',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Icon(Icons.chevron_right, color: Colors.grey, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
