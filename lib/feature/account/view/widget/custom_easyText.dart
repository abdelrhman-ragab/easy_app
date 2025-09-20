import 'package:flutter/material.dart';

class EasyText extends StatelessWidget {
  const EasyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        
      ),
      child: RichText(
        text: TextSpan(
          children: [
            // حرف E - أزرق فاتح
            TextSpan(
              text: 'E',
              style: TextStyle(
                fontFamily: 'Lama Sans',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.lightBlue,
              ),
            ),
            // حرف a - أزرق
            TextSpan(
              text: 'a',
              style: TextStyle(
                fontFamily: 'Finger Paint',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
            ),
            // حرف z - أزرق داكن
            TextSpan(
              text: 'z',
              style: TextStyle(
                fontFamily: 'Finger Paint',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.blue[800],
              ),
            ),
            // حرف y - برتقالي
            TextSpan(
              text: 'y',
              style: TextStyle(
                fontFamily: 'Finger Paint',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// مثال على الاستخدام
