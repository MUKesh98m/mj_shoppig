import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousel extends StatefulWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  final List<String> imgList = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Fashion/Gateway/BAU/Jun22/RTB/Deals-PC-1500-FDFO._CB633437452_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2020/img21/apparelGW/U599/jun22/eoss/sbi/WA_3000._CB633631146_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/IMG20/Home/2022/BAU/ATFGW/3000x1200_best_find_SBI_C._CB633906837_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img19/AmazonPay/Avatar/PC_Hero_3000x1200._CB643589305_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/prime/Gateway/2021/desktop-2x._CB658860139_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Gateway/CEPC/Hero/OP/under_299/D43539063_IN_OP_Back_to_school_Apr22_3000x1200._CB633497295_.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("carousel"),),
      body:CarouselSlider.builder(itemCount: imgList.length, itemBuilder:
      (context,index,realIdx){
        return Container(
          child:Center(
            child: Image.network(imgList[index]),
          ),
        );
      }, options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 2.0

      ))
      // CarouselSlider.builder(itemCount: imgList.length,
      //     itemBuilder:(context,index,realIdx){
      //   return Container(
      //     child: Center(
      //       child: Image.network(imgList[index],fit: BoxFit.cover,),
      //     ),
      //   );
      //     },
      //     options: CarouselOptions(
      //       viewportFraction: 1.3,
      //
      //       // height: 200,
      //       autoPlay: true,aspectRatio: 2.0,
      //       enlargeCenterPage: true,
      //     )
      // )
    );
  }
}
