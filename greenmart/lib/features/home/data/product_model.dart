// call api to get list of items
// response => list of map<String,dynamic>
// parsing to list<ProductModel>
// display list of products

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
  });
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: 'https://mana.md/wp-content/uploads/2021/11/banana-1025109_1280.jpg',
  ),
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: 'https://mana.md/wp-content/uploads/2021/11/banana-1025109_1280.jpg',
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '2',
    name: 'Apple',
    price: 24,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '1',
    name: 'Banana',
    price: 22,
    weight: '1kg',
    image: 'https://mana.md/wp-content/uploads/2021/11/banana-1025109_1280.jpg',
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 10.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '4',
    name: 'Carrot',
    price: 5.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '2',
    name: 'Apple Pro',
    price: 24,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '1',
    name: 'Banana2',
    price: 22,
    weight: '1kg',
    image: 'https://mana.md/wp-content/uploads/2021/11/banana-1025109_1280.jpg',
  ),
  ProductModel(
    id: '3',
    name: 'Orange2',
    price: 10.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
  ProductModel(
    id: '4',
    name: 'Carrot2',
    price: 5.5,
    weight: '1kg',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
  ),
];

// data[index]["image"]
// data[index].image

// [
// {
 // "id": "1",
 // "name": "Banana",
 // "price": 20.33,
 // "weight": "1kg",
 // "image": "https://images.unsplash.com/photo-1540189549336-e6e106c10e42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"
//},
// {
 // "id": "1",
 // "name": "Apple",
 // "price": "20",
 // "weight": "1kg",
 // "image": "https://images.unsplash.com/photo-1540189549336-e6e106c10e42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"
//},
// {
 // "id": "1",
 // "name": "Orange",
 // "price": "20",
 // "weight": "1kg",
 // "image": "https://images.unsplash.com/photo-1540189549336-e6e106c10e42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"
//}
//]