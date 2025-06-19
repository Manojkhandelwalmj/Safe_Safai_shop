import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/icons/safesafai_circular_icon.dart';

class SafeSafaiUserProfileTile extends StatelessWidget {
  const SafeSafaiUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  SafeSafaiCircularIcon(icon: Icons.person, width: 50,height: 50),
      title: Text('Safe Safai', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),),
      subtitle: Text('SafeSafaiOfficial@gamil.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Icons.edit, color: Colors.white,)),
    );
  }
}