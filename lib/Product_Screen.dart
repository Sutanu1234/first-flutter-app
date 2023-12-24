import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black26),
                    ),
                    child: const Icon(Icons.arrow_back_ios_new,
                    color: Colors.black54,
                    ),
                  ),
                ),
                const Text('Details',
                style: TextStyle(
                  fontFamily: 'Pop-Sm',
                  fontSize: 32,
                  color: Colors.black87
                ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black26),
                  ),
                  child: const Icon(Icons.favorite_outline,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            ),
            Image.asset("assets/Plant1.png",
            height: MediaQuery.of(context).size.height / 2.5,
            ),
            const SizedBox(height: 16),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text('Plant Name:',
                        style: TextStyle(
                            fontFamily: 'Pop-M',
                            fontSize: 16,
                            color: Colors.black54,
                        ),
                      ),
                    ),
                    const Text('Lucky bamboo',
                      style: TextStyle(
                        fontFamily: 'Pop-Sm',
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                    ),
                    const Text('\$ 40.00',
                      style: TextStyle(
                        fontFamily: 'Pop-Sm',
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,
                        color: Colors.green[700],
                        ),
                        Text('4.2',
                          style: TextStyle(
                              fontFamily: 'Pop-Sm',
                              fontSize: 18,
                              color: Colors.lightGreen[900],
                          ),
                        ),
                      ],
                    ),
                    const Text('Reviews : 963',
                    style: TextStyle(
                      fontFamily: 'Pop-Sm',
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    ),
                  ],
                ),
              ],
            ),
            ),
            const SizedBox(height: 16),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Lorem Ipsum has been the leap into the  the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like  PageMaker including versio.',
              style: TextStyle(
                fontFamily: 'Pop-Sm',
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            ),
            const SizedBox(height: 16),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('size:',
                     style: TextStyle(
                      fontFamily: 'Pop-M',
                     fontSize: 14,
                     color: Colors.black54,
                      ),
                    ),
                    Text('Medium',
                      style: TextStyle(
                        fontFamily: 'Pop-Sm',
                        fontSize: 18,
                        color: Colors.black87,
                    ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('height:',
                      style: TextStyle(
                        fontFamily: 'Pop-M',
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text('12.5"',
                      style: TextStyle(
                        fontFamily: 'Pop-Sm',
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Humidity:',
                      style: TextStyle(
                        fontFamily: 'Pop-M',
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text('82%',
                      style: TextStyle(
                        fontFamily: 'Pop-Sm',
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 96,
        child: Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black,
                ),
                child: const Text('Buy Now',
                  style: TextStyle(
                    fontFamily: 'Pop-Sm',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.shopping_cart,
                    size: 32,
                    ),
                    Text('add to cart',
                      style: TextStyle(
                        fontFamily: 'Pop-Sm',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
