//lib/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/product.dart';
import '../../../services/cart_provider.dart';
import '../../widgets/product/product_card.dart';
import '../../../core/themes/app_theme.dart';
import '../../providers/auth_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);
    final cartList = cart.values.toList();
    final authState = ref.watch(authProvider);

    final List<Product> featuredProducts = [
      Product(
        id: "1",
        title: "Wireless Headphones",
        description: "Premium quality wireless headphones with noise cancellation and superior sound quality.",
        imgurl: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500",
        price: "2999",
        category: "Electronics",
        rating: 4.5,
      ),
      Product(
        id: "2",
        title: "Smart Watch",
        description: "Advanced smartwatch with fitness tracking, heart rate monitor, and GPS.",
        imgurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500",
        price: "8999",
        category: "Electronics",
        rating: 4.3,
      ),
      Product(
        id: "3",
        title: "Gaming Mouse",
        description: "High-precision gaming mouse with RGB lighting and programmable buttons.",
        imgurl: "https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500",
        price: "2499",
        category: "Gaming",
        rating: 4.7,
      ),
      Product(
        id: "4",
        title: "Premium Shirt",
        description: "Comfortable cotton shirt for men with modern fit and premium quality fabric.",
        imgurl: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=500",
        price: "1299",
        category: "Fashion",
        rating: 4.2,
      ),
      Product(
        id: "5",
        title: "Straw Hat",
        description: "Stylish straw hat perfect for summer adventures and outdoor activities.",
        imgurl: "https://images.unsplash.com/photo-1521369909029-2afed882baee?w=500",
        price: "899",
        category: "Fashion",
        rating: 4.4,
      ),
    ];

    final List<Product> allProducts = [
      ...featuredProducts,
      Product(
        id: "6",
        title: "Bluetooth Speaker",
        description: "Portable Bluetooth speaker with powerful bass and long battery life.",
        imgurl: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500",
        price: "3499",
        category: "Electronics",
        rating: 4.6,
      ),
      Product(
        id: "7",
        title: "Running Shoes",
        description: "Comfortable running shoes with advanced cushioning technology.",
        imgurl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500",
        price: "4999",
        category: "Sports",
        rating: 4.5,
      ),
      Product(
        id: "8",
        title: "Coffee Mug",
        description: "Elegant ceramic coffee mug perfect for your morning brew.",
        imgurl: "data:image/jpeg;base64,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",
        price: "599",
        category: "Home",
        rating: 4.1,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${authState.user?.name ?? 'User'}!',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            const Text(
              'ShopEase',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    // Navigate to cart will be handled by bottom navigation
                  },
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
                if (cartList.isNotEmpty)
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        cartList.length.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              
              // Categories
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryCard('Electronics', Icons.devices),
                    _buildCategoryCard('Fashion', Icons.checkroom),
                    _buildCategoryCard('Sports', Icons.sports),
                    _buildCategoryCard('Home', Icons.home),
                    _buildCategoryCard('Gaming', Icons.games),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              // Featured Products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured Products',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredProducts.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: ProductCard(
                          product: featuredProducts[index],
                          isGridView: false,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              
              // All Products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All Products',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: allProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: allProducts[index],
                    isGridView: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: AppTheme.primaryColor,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}