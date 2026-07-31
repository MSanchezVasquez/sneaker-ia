import 'package:flutter/material.dart';

import '../features/shop/models/banner_model.dart';
import '../features/shop/models/brand_model.dart';
import '../features/shop/models/category_model.dart';
import '../features/shop/models/product_attribute_model.dart';
import '../features/shop/models/product_model.dart';
import '../features/shop/models/product_variation_model.dart';
import '../utils/constants/image_strings.dart';

class TDummyData {
  /// -- Banners
  static final List<BannerModel> banners = [
    BannerModel(imageUrl: 'assets/images/banners/promo-banner-1.png', targetScreen: '/search', active: true),
    BannerModel(imageUrl: 'assets/images/banners/promo-banner-2.png', targetScreen: '/cart', active: true),
    BannerModel(imageUrl: 'assets/images/banners/promo-banner-3.png', targetScreen: '/checkout', active: true),
  ];

  /// -- Categories
  static final List<CategoryModel> categories = [
    CategoryModel(id: '1', name: 'Sports', image: 'assets/icons/categories/icons8-bowling-64.png', isFeatured: true),
    CategoryModel(id: '5', name: 'Furniture', image: 'assets/icons/categories/icons8-dining-chair-64.png', isFeatured: true),
    CategoryModel(id: '2', name: 'Electronics', image: 'assets/icons/categories/icons8-smartphone-64.png', isFeatured: true),
    CategoryModel(id: '3', name: 'Clothes', image: 'assets/icons/categories/icons8-tailors-dummy-64.png', isFeatured: true),

    // Subcategories (parentId links back to main category)
    CategoryModel(id: '8', parentId: '1', name: 'Sport Shoes', image: 'assets/icons/categories/icons8-shoes-64.png', isFeatured: false),
    CategoryModel(id: '9', parentId: '1', name: 'Track Suits', image: 'assets/icons/categories/icons8-tracksuit-64.png', isFeatured: false),
    CategoryModel(id: '14', parentId: '5', name: 'Bedroom Furniture', image: 'assets/icons/categories/icons8-bed-64.png', isFeatured: false),
  ];

  /// -- List of all Products
  static final List<ProductModel> products = [
  ProductModel(
  id: '001',
  title: 'Green Nike sports shoe',
  stock: 15,
  price: 135,
  isFeatured: true,
  thumbnail: TImages.productImage1,
  description: 'Green Nike sports shoe',
  brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike', productsCount: 265, isFeatured: true),
  images: [TImages.productImage1, TImages.productImage23, TImages.productImage21, TImages.productImage9],
  salePrice: 30,
  sku: 'ABR4568',
  categoryId: '1',
  productAttributes: [
  ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
  ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
  ],
  productVariations: [
  ProductVariationModel(
  id: '1',
  stock: 34,
  price: 134,
  salePrice: 122.6,
  image: TImages.productImage1,
  description: 'This is a Product description for Green Nike sports shoe.',
  attributeValues: {'Color': 'Green', 'Size': 'EU 34'},
  ), // ProductVariationModel
  ProductVariationModel(
  id: '2',
  stock: 15,
  price: 132,
  image: TImages.productImage23,
  attributeValues: {'Color': 'Black', 'Size': 'EU 32'},
  ), // ProductVariationModel
  ProductVariationModel(
  id: '3',
  stock: 0,
  price: 234,
  image: TImages.productImage23,
  attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
  ), // ProductVariationModel
  ProductVariationModel(
  id: '4',
  stock: 222,
  price: 232,
  image: TImages.productImage1,
  attributeValues: {'Color': 'Green', 'Size': 'EU 32'},
  ), // ProductVariationModel
  ProductVariationModel(
  id: '5',
  stock: 0,
  price: 334,
  image: TImages.productImage21,
  attributeValues: {'Color': 'Red', 'Size': 'EU 34'},
  ), // ProductVariationModel
  ProductVariationModel(
  id: '6',
  stock: 11,
  price: 332,
  image: TImages.productImage21,
  attributeValues: {'Color': 'Red', 'Size': 'EU 32'},
  ), // ProductVariationModel
  ],
  productType: 'ProductType.variable',
  ),
];// ProductModel
}
