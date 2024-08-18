import 'package:dashboard/component/category/category.dart';
import 'package:dashboard/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Device extends StatelessWidget {
  const Device({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final List<CategoryCartItemData> categories = [
      CategoryCartItemData(
          name: 'Category 1',
          imageUrl:
              'https://sneakernerds.com/cdn/shop/products/1.png?v=1676565286'),
      CategoryCartItemData(
        name: 'Category 2',
        imageUrl:
            'https://cdn.shopify.com/s/files/1/2358/2817/products/air-jordan-1-high-og-patent-bred-555088-063-1.png?v=1639669875',
      ),
      CategoryCartItemData(
        name: 'Category 3',
        imageUrl:
            'https://www.shoebuya.com/cdn/shop/products/image_90e43801-ff83-40a4-b34e-6c3b7205800b.webp?v=1678031994',
      ),
      CategoryCartItemData(
        name: 'Category 1',
        imageUrl:
            'https://sneakernerds.com/cdn/shop/products/1.png?v=1676565286',
      ),
      CategoryCartItemData(
        name: 'Category 2',
        imageUrl:
            'https://www.sneakerhype.eu/cdn/shop/products/file_2d5615e9-91ed-4802-8764-cecb01d0edc4.png?v=1710155044',
      ),
      CategoryCartItemData(
        name: 'Category 3',
        imageUrl:
            'https://www.sneakerhype.eu/cdn/shop/products/file_2d5615e9-91ed-4802-8764-cecb01d0edc4.png?v=1710155044',
      ),
      CategoryCartItemData(
        name: 'Category 1',
        imageUrl:
            'https://sneakernerds.com/cdn/shop/products/1.png?v=1676565286',
      ),
      CategoryCartItemData(
        name: 'Category 2',
        imageUrl:
            'https://www.sneakerhype.eu/cdn/shop/products/file_2d5615e9-91ed-4802-8764-cecb01d0edc4.png?v=1710155044',
      ),
      CategoryCartItemData(
        name: 'Category 3',
        imageUrl:
            'https://www.sneakerhype.eu/cdn/shop/products/file_2d5615e9-91ed-4802-8764-cecb01d0edc4.png?v=1710155044',
      ),
      CategoryCartItemData(
        name: 'Category 3',
        imageUrl:
            'https://www.sneakerhype.eu/cdn/shop/products/file_2d5615e9-91ed-4802-8764-cecb01d0edc4.png?v=1710155044',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 255, 255, 255), // AppBar background color
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/user.svg', // Path to your left icon
            width: 24.0,
            height: 24.0,
          ),
          onPressed: () {
            // Handle left icon press
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Image.asset(
                'assets/images/nike.png',
                width: 100,
                height: 100,
              ),
              onPressed: () {
                // Handle center icon press
              },
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 24.0,
              height: 24.0,
            ),
            onPressed: () {
              // Handle right icon press
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: categories.map((category) {
            return SizedBox(
              child: CategoryCard(
                name: category.name,
                imageUrl: category.imageUrl,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
