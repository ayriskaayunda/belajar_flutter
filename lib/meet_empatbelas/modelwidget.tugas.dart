import 'package:belajar_flutter/constant/app_image.dart';
import 'package:belajar_flutter/meet_empatbelas/model/product_model.dart';
import 'package:flutter/material.dart';

class tugas9 extends StatefulWidget {
  const tugas9({super.key});

  @override
  State<tugas9> createState() => _tugas9State();
}

class _tugas9State extends State<tugas9> {
  final List<ProductModel> dataProduct = [
    ProductModel(
      id: "1",
      productName: "Bola Basket",
      productPrice: "80000",
      productImage: AppImage.bolabasket,
    ),
    ProductModel(
      id: "2",
      productName: "Sepak Bola",
      productPrice: "250000",
      productImage: AppImage.sepakbola,
    ),
    ProductModel(
      id: "3",
      productName: "bola Baseball",
      productPrice: "30000",
      productImage: AppImage.bolabaseball,
    ),
    ProductModel(
      id: "4",
      productName: "Tenis",
      productPrice: "20000",
      productImage: AppImage.tennis,
    ),
    ProductModel(
      id: "5",
      productName: "bola Voli",
      productPrice: "20000",
      productImage: AppImage.bolavoli,
    ),
    ProductModel(
      id: "6",
      productName: "Kriket",
      productPrice: "50000",
      productImage: AppImage.kriket,
    ),
    ProductModel(
      id: "7",
      productName: "Golf",
      productPrice: "60000",
      productImage: AppImage.golf,
    ),
    ProductModel(
      id: "8",
      productName: "American football",
      productPrice: "500000",
      productImage: AppImage.americanfootball,
    ),
    ProductModel(
      id: "9",
      productName: "Handball",
      productPrice: "45000",
      productImage: AppImage.handball,
    ),
    ProductModel(
      id: "10",
      productName: "Gym ball",
      productPrice: "75000",
      productImage: AppImage.gymball,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: "Search products...",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.black54),
          ),
          style: TextStyle(color: Colors.black),
          onChanged: (value) {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Peralatan Olahraga',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: dataProduct.length,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final product = dataProduct[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade50,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          product.productImage ?? AppImage.placeholder,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),

                      // Product Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.productName ?? 'Produk Tanpa Nama',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              product.productPrice ?? 'Rp -',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              product.productDescription ?? '-',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
