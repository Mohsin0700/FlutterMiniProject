class CartItems {
  static List<Map<String, dynamic>> cartItems = [
    {
      'itemName': 'Rolax',
      'itemCategory': 'Watch',
      'itemPrice': '1200',
      'itemPic': 'assets/images/offer1.png',
      'isRecommended': true,
      'cartItemCount': 1
    },
    {
      'itemName': 'New Jogger',
      'itemCategory': 'Shoes',
      'itemPrice': '5000',
      'itemPic': 'assets/images/offer2.png',
      'isRecommended': true,
      'cartItemCount': 1
    },
  ];

  static String cartLength = cartItems.length.toString();
}
