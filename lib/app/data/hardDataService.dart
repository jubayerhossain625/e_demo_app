

import '../modules/home/model/banner_model.dart';
import '../modules/productView/product_model.dart';
import 'commonData.dart';

class HardDataService{

  List<BannerModel> banner=[
    BannerModel(image: 'https://i.ibb.co/MMbWkQZ/banner01.png',title: 'Best Offer',subtitle: 'Only Two Day Offers'),
    BannerModel(image: 'https://i.ibb.co/MSTXVWn/banner03.png',title: 'Good Review',subtitle: 'Batter Shopping'),
    BannerModel(image: 'https://i.ibb.co/1dcCZnh/banner02.png',title: '50% OFF',subtitle: 'Free on Chair'),
    BannerModel(image: 'https://i.ibb.co/MSTXVWn/banner03.png',title: 'Good Review',subtitle: 'Batter Shopping'),
    BannerModel(image: 'https://i.ibb.co/1dcCZnh/banner02.png',title: '50% OFF',subtitle: 'Free on Chair'),
    BannerModel(image: 'https://i.ibb.co/MMbWkQZ/banner01.png',title: 'Best Offer',subtitle: 'Only Two Day Offers'),
    BannerModel(image: 'https://i.ibb.co/MSTXVWn/banner03.png',title: 'Good Review',subtitle: 'Batter Shopping'),
  ];

  List<ProductModel> getAllProduct=[
    ProductModel(
      id: 1,
      title: 'Samsung Watch 4',
      description: 'Is a good product of samsung and backup to 7 hours',
      price: 3099,
      discountPercentage: 12,
      rating: 4.5,
      stock: 70,
      brand: 'samsung',
      category: 'watch',
      thumbnail: Data.watch1,
      images: [
        Data.watch1,
        Data.watch2
      ]
    ),
    ProductModel(
        id: 2,
        title: 'Realme watch S',
        description: 'Is a good product of Realme and backup to 7 hours',
        price: 3299,
        discountPercentage: 14,
        rating: 4.7,
        stock: 70,
        brand: 'realme',
        category: 'watch',
        thumbnail: Data.watch2,
        images: [
          Data.watch1,
          Data.watch2
        ]
    ),

    ProductModel(
        id: 3,
        title: 'Apple watch UG',
        description: 'Is a good product of Apple and backup to 7 hours',
        price: 8299,
        discountPercentage: 6,
        rating: 4.7,
        stock: 70,
        brand: 'apple',
        category: 'watch',
        thumbnail: Data.watch2,
        images: [
          Data.watch1,
          Data.watch2
        ]
    ),
    ProductModel(
        id: 4,
        title: 'Samsung Watch 4',
        description: 'Is a good product of samsung and backup to 7 hours',
        price: 3099,
        discountPercentage: 12,
        rating: 4.5,
        stock: 70,
        brand: 'samsung',
        category: 'watch',
        thumbnail: Data.watch1,
        images: [
          Data.watch1,
          Data.watch2
        ]
    ),
    ProductModel(
        id: 5,
        title: 'Apple watch UG',
        description: 'Is a good product of Apple and backup to 7 hours',
        price: 8299,
        discountPercentage: 6,
        rating: 4.7,
        stock: 70,
        brand: 'apple',
        category: 'watch',
        thumbnail: Data.watch1,
        images: [
          Data.watch1,
          Data.watch2
        ]
    ),
    ProductModel(
        id: 7,
        title: 'Realme watch S',
        description: 'Is a good product of Realme and backup to 7 hours',
        price: 3299,
        discountPercentage: 14,
        rating: 4.7,
        stock: 70,
        brand: 'realme',
        category: 'watch',
        thumbnail: Data.watch2,
        images: [
          Data.watch1,
          Data.watch2
        ]
    ),

  ];
}