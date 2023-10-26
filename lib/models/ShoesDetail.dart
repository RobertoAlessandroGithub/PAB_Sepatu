class ShoesDetail {
  String name;
  String header;
  String description;
  String price;
  String imageAsset;
  String sizeHeader;
  List<String> imageUrls;

  ShoesDetail(
      {required this.name,
      required this.description,
      required this.header,
      required this.price,
      required this.imageAsset,
      required this.sizeHeader,
      required this.imageUrls});
}

var shoesDetailList = [
  ShoesDetail(
      name: 'Sepatu hebat',
      description:
          'Elegantly designed to make you look more Stylish, also made from the best material of its class as well as the technology embedded in these shoes',
      header: 'Description',
      price: 'Rp 950000',
      imageAsset: 'images/naiki.jpg',
      sizeHeader: 'Size',
      imageUrls: [
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9d3fb63f-5493-47bd-afd6-487d87b2faaa/air-jordan-1-retro-high-og-craft-shoes-5mGWrz.png',
      ])
];
