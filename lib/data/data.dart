import '../models/brand_model.dart';
import '../models/product_model.dart';

List topBrands = [
  BrandModel(id: 1, brand: "Nike", image: 'assets/images/nike_brand.png'),
  BrandModel(id: 2, brand: "Adidas", image: 'assets/images/adidas_brand.png'),
  BrandModel(id: 3, brand: "Puma", image: 'assets/images/puma_brand.png'),
  BrandModel(id: 4, brand: "Jordan", image: 'assets/images/jordan_brand.png'),
];

List<ProductModel> products = [
  ProductModel(
    id: 1,
    price: 239.80,
    title: "Nike Air Max 90",
    image: "assets/images/image.png",
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    brandImage: 'assets/images/nike_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 2,
    price: 85.80,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Adidas Air Max 90",
    image: "assets/images/image1.png",
    brandImage: 'assets/images/adidas_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 3,
    price: 39,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Puma Air Max 90",
    image: "assets/images/image2.png",
    brandImage: 'assets/images/puma_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 4,
    price: 39,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Jordan Air Max 90",
    image: "assets/images/image4.png",
    brandImage: 'assets/images/jordan_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
];

List<ProductModel> popularProducts = [
  ProductModel(
    id: 5,
    price: 39,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Jordan Air Max 90",
    image: "assets/images/image4.png",
    brandImage: 'assets/images/jordan_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 6,
    price: 239.80,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Nike Air Max 90",
    image: "assets/images/image.png",
    brandImage: 'assets/images/nike_brand.png',
    isFavorite: true,
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 7,
    price: 39,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Puma Air Max 90",
    image: "assets/images/image2.png",
    brandImage: 'assets/images/puma_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 8,
    price: 85.80,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Adidas Air Max 90",
    image: "assets/images/image1.png",
    brandImage: 'assets/images/adidas_brand.png',
    description:
        "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
];


List<ProductModel> newArrivalProducts = [

  ProductModel(
    id: 9,
    price: 39,
    title: "Jordan Air Max 90",
    image: "assets/images/image4.png",
    brandImage: 'assets/images/jordan_brand.png',
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 10,
    price: 39,
    title: "Puma Air Max 90",
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    image: "assets/images/image2.png",
    brandImage: 'assets/images/puma_brand.png',
    isFavorite: true,
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 11,
    price: 239.80,
    title: "Nike Air Max 90",
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    image: "assets/images/image.png",
    brandImage: 'assets/images/nike_brand.png',
    isFavorite: true,
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),

  ProductModel(
    id: 12,
    price: 85.80,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Adidas Air Max 90",
    image: "assets/images/image1.png",
    brandImage: 'assets/images/adidas_brand.png',
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
];


List<ProductModel> favoriteProducts = [
  ProductModel(
    id: 13,
    price: 239.80,
    isFavorite: true,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Nike Air Max 90",
    image: "assets/images/image.png",
    brandImage: 'assets/images/nike_brand.png',
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 14,
    price: 85.80,
    isFavorite: true,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Adidas Air Max 90",
    image: "assets/images/image1.png",
    brandImage: 'assets/images/adidas_brand.png',
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 9,
    price: 39,
    isFavorite: true,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Puma Air Max 90",
    image: "assets/images/image2.png",
    brandImage: 'assets/images/puma_brand.png',
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
  ProductModel(
    id: 15,
    price: 39,
    isFavorite: true,
    sizes:[34,35,36,37,38,39,40,41,42,43,44] ,
    title: "Jordan Air Max 90",
    image: "assets/images/image4.png",
    brandImage: 'assets/images/jordan_brand.png',
    description:
    "A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.",
  ),
];
