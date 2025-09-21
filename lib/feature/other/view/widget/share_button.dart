import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareAppButton extends StatelessWidget {
  final String appLink;
  final String? subject;

  const ShareAppButton({
    super.key,
    required this.appLink,
    this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      icon: const Icon(Icons.share, color: Colors.white),
      label: const Text(
        "مشاركة التطبيق",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Share.share(
          "جرّب تطبيقنا من هنا: $appLink",
          subject: subject ?? "تطبيق رائع يستحق التجربة 🚀",
        );
      },
    );
  }
}
