import 'package:flutter/material.dart';

import '../../models/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  ProductModel product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ElevatedButton(
          child: const Text('Checkout'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: const Size(double.infinity, 56), // width, height
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)))),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Image.asset(
                widget.product.image,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$ ${widget.product.price}",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ],
                  ),
                  Image.asset(
                    widget.product.brandImage,
                    height: 54,
                    width: 54,
                  ),
                ],
              ),
            ),
            ProductSizedWidget(
              sizes: widget.product.sizes,
              selectedSizeIndex: selectedSizeIndex,
              onTapSize: (index) {
                setState(() {
                  selectedSizeIndex = index;
                });
              },
            ),
            DescriptionWidget(product: widget.product)
          ],
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
                widget.product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: widget.product.isFavorite
                    ? Colors.pinkAccent
                    : Colors.black)),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.black,
            )),
      ],
    );
  }
}

class ProductSizedWidget extends StatelessWidget {
  const ProductSizedWidget(
      {Key? key,
      required this.sizes,
      required this.selectedSizeIndex,
      required this.onTapSize})
      : super(key: key);

  final List<int> sizes;
  final int selectedSizeIndex;
  final Function(int) onTapSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Size',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(sizes.length, (index) {
                int size = sizes[index];
                return GestureDetector(
                  onTap: () {
                    onTapSize(index);
                  },
                  child: Container(
                    height: 62,
                    width: 54,
                    margin: EdgeInsets.only(
                        top: 12,
                        bottom: 12,
                        left: index == 0 ? 16 : 4,
                        right: index == (sizes.length - 1) ? 16 : 4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: selectedSizeIndex == index
                            ? Colors.black
                            : Color(0xFFEDEDED),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Text(
                      size.toString(),
                      style: TextStyle(
                          color: selectedSizeIndex == index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Desription",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(product.description),
        ],
      ),
    );
  }
}
