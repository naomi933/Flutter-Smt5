import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class ProfileWid extends StatelessWidget {
  const ProfileWid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone ? Row(
        children: [
          const Expanded(
            flex: 1,
            child: ClipRRect(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 150,
                foregroundImage: NetworkImage('https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
              ),
            ),
          ),
          // SizedBox(width: 20,),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Alicia Jasmin', 
                  style: TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 40,
                  ),
                ),
                Text(
                  'alicia@gmail.com', 
                  style: TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      )
      :Center(
        child: Column(
          children: const [
            SizedBox(height: 20,),
            ClipRRect(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 150,
                foregroundImage: NetworkImage('https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Alicia Jasmin', 
              style: TextStyle(
                color: AppColors.primaryText, 
                fontSize: 40,
              ),
            ),
            Text(
              'alicia@gmail.com', 
              style: TextStyle(
                color: AppColors.primaryText, 
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
