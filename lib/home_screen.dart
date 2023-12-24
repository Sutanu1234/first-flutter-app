import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product_Screen.dart';

class HomeScreen extends StatelessWidget {

   List<String> categories = [
     "All",
     "Indoor",
     "Outdoor",
     "Popular",
     "Newest",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 24),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text('Find your \n favorit plant',
                  style: TextStyle(
                    fontFamily: 'pop-Sm',
                    fontSize: 32,
                  ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12,),
                    ),
                    child: const Icon(Icons.search,
                    color: Colors.black54,
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 32),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
               child: Stack(
                 children: <Widget>[
                   Container(
                     height: 96,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.lightGreen[200],
                     ),
                   ),
                   Container(
                     height: 96,
                     width: MediaQuery.of(context).size.width,
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         const Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('30% Off',
                               style: TextStyle(
                                 fontFamily: 'pop-Sm',
                                 fontSize: 24,
                               ),
                             ),
                             Text('03 - 15 July',
                               style: TextStyle(
                                 fontFamily: 'pop-M',
                                 fontSize: 16,
                                 color: Colors.black38
                               ),
                             ),
                           ],
                         ),
                         Image.asset("assets/Plant.png",
                         height: 200,
                           width: 100,
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categories.length,
                    itemBuilder: (context, index){
                       return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: index == 1 ? Colors.black : Colors.black26,
                            ),
                          ),
                          child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontFamily: 'Pop-M',
                            fontSize: 14,
                            color: index == 1 ? Colors.black : Colors.black26,
                      ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  height: 360,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index){
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 280,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder:
                                          (context) => const ProductScreen(),
                                          ));
                                        },
                                          child: Image.asset("assets/Plant${index+1}.png")),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 130.0),
                                      child: Text("\$40",
                                      style: TextStyle(
                                        fontFamily: 'Pop-Sm',
                                        fontSize: 24,
                                        color: Colors.black87,
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white,
                                  ),
                                  child: const Text('add to cart',
                                  style: TextStyle(
                                    fontFamily: 'Pop-Sm',
                                    fontSize: 16,
                                  ),
                                  ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(14),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: const Icon(Icons.favorite_outline,
                                    color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 96,
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16)
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(CupertinoIcons.home,
            color: Colors.black54,
            ),
            const Icon(Icons.favorite_outline,
              color: Colors.black54,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black26,
                     blurRadius: 2,
                     spreadRadius: 4,
                   ),
                 ],
              ),
              child: const Icon(CupertinoIcons.qrcode,
              color: Colors.white70,
            ),
            ),
            const Icon(CupertinoIcons.shopping_cart,
              color: Colors.black54,
            ),
            const Icon(CupertinoIcons.person_alt_circle_fill,
              color: Colors.black54,
            ),
          ],
        ),
       ),
      ),
    );
  }
}
