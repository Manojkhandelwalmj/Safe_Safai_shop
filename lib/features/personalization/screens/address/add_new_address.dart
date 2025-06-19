import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/appbar/appbar.dart';
import 'package:safe_safai_shop/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SafeSafaiAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SafeSafaiSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), labelText: 'Name'),
                ),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call), labelText: 'Phone Number'),
                ),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call), labelText: 'Address Line 1'),
                ),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call), labelText: 'Landmark(optional)'),
                ),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_road), labelText: 'Street'),
                      ),
                    ),
                    const SizedBox(width: SafeSafaiSizes.spaceBtwInputFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.pin_drop), labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city), labelText: 'City'),
                      ),
                    ),
                    const SizedBox(width: SafeSafaiSizes.spaceBtwInputFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.map), labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: SafeSafaiSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.flag_rounded), labelText: 'Country'),
                ),
                const SizedBox(height: SafeSafaiSizes.defaultSpace,),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save')),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
