import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int multipleImages = 1;
  static const List<String> carouselImages = [
    'https://images.unsplash.com/photo-1512354739413-60f30ea4e0ab?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1614730321146-b6fa6a46bcb4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1614732414444-096e5f1122d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1614728423169-3f65fd722b7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTN8fHxlbnwwfHx8fHw%3D',
    'https://images.unsplash.com/photo-1614727187331-285522b20eaf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTd8fHxlbnwwfHx8fHw%3D',
    'https://images.unsplash.com/photo-1614726365723-498aa67c5f7b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTh8fHxlbnwwfHx8fHw%3D'
  ];

  List<String> staggeredImages = [
    'https://images.unsplash.com/photo-1541675154750-0444c7d51e8e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1603064752734-4c48eff53d05?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1544653221-81df644ed75f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1519638831568-d9897f54ed69?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1614288532696-203f89dc0db4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1621477745813-31bc173c691d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1557401622-cfc0aa5d146c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1463428537233-c84b754b2c84?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1523626797181-8c5ae80d40c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1675720869138-0bc85ab78f0c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1506443432602-ac2fcd6f54e0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1674530449865-71d68cad7303?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1518352724948-729151797553?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1503198515498-d0bd9ed16902?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1546182208-1e70985e2bf3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjN8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1611262588024-d12430b98920?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1617074064882-3ca2e8f96bbd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    double width = MediaQuery.of(context).size.width; //424
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: SafeArea(
                    child: SizedBox(
                      height: 926 / 10,
                      width: double.infinity,
                      child: Text(
                        'Discover',
                        style: GoogleFonts.comfortaa(
                            fontSize: 63, fontWeight: FontWeight.bold),
                      ),
                      //color: Colors.black,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 926 / 20,
                    width: double.infinity,
                    child: Text(
                      'WHAT’S NEW TODAY',
                      style: GoogleFonts.comfortaa(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    //color: Colors.black,
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(height: 500.0, autoPlay: true),
                items: carouselImages.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          Container(
                              //width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                              child: Image.network(i)),
                          Align(
                              alignment: Alignment.topLeft,
                              child: currentUserStatus(height, width)),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0, top: 48),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Browse all',
                    style: GoogleFonts.comfortaa(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  itemCount: (staggeredImages.length * multipleImages),
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    return Image.network(
                        staggeredImages[index % (staggeredImages.length - 1)]);
                  },
                ),
              ),
            ],
          ),
          seeMore(height, width)
        ],
      ),
    );
  }

  Widget currentUserStatus(double height, double width) {
    return Stack(
      children: [
        SizedBox(
          height: height / 20,
          width: (135 / 375) * width,
          //  color: Colors.black,
          child: Row(
            children: [
              Container(
                height: (28 / 812) * height,
                width: (28 / 812) * height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Ellipse.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pawel Czerwinski',
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      //color: Colors.white
                    ),
                  ),
                  Text(
                    '@pawel_czerwinski',
                    style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      //color: Colors.white
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget seeMore(double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () {
          setState(() {
            multipleImages++;
          });
        },
        child: Container(
          height: height / 15,
          width: width / 2.25,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    multipleImages++;
                  });
                },
                child: Text(
                  'Show More',
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                )),
          ),
        ),
      ),
    );
  }
}
