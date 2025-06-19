import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/common/widgets/images/safesafai_circular_image.dart';
import 'package:safe_safai_shop/common/widgets/texts/section_heading.dart';
import 'package:safe_safai_shop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:safe_safai_shop/utils/constants/image_strings.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SafeSafaiSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SafeSafaiCircularImage(image: SafeSafaiImages.user, width: 80,height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            /// Details
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems / 2,),
            const Divider(),
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

            /// Heading Profile Info
            SafeSafaiSectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

            SafeSafaiProfileMenu(title: 'Name', value: 'Safe Safai',onPressed: (){},),
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
            SafeSafaiProfileMenu(title: 'Username', value: 'safesafai', onPressed: (){},),

            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),

            /// Heading Personal Info
            SafeSafaiSectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),

            SafeSafaiProfileMenu(title: 'User Id', value: 'SS01', icon: Icons.copy,onPressed: (){},),
            SafeSafaiProfileMenu(title: 'E-mail', value: 'SafeSafaiOfficial@gmail.com', onPressed: (){},),
            SafeSafaiProfileMenu(title: 'Phone Number', value: '6367936385', onPressed: (){},),
            SafeSafaiProfileMenu(title: 'Gender', value: 'male', onPressed: (){},),
            SafeSafaiProfileMenu(title: 'Date of Birth', value: '1-1-1111', onPressed: (){},),

            const SizedBox(height: SafeSafaiSizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: SafeSafaiSizes.spaceBtwSections,),

            Center(
              child: TextButton(onPressed: (){}, child: Text('Delete Account',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),)),
            )

          ],
        ),
        ),
      ),
    );
  }
}


