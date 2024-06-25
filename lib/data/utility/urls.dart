class Urls {
  static const String _basUrls = "http://ecom-api.teamrabbil.com/api";

  static String emailOtp(String email) => '$_basUrls/UserLogin/$email';

  static String sentOtp(String email, String otp) =>
      '$_basUrls/VerifyLogin/$email/$otp';
  static String readProfile = '$_basUrls/ReadProfile';
  static String creatProfile = '$_basUrls/CreateProfile';
  static String bannerList = "$_basUrls/ListProductSlider";
  static String categoryList = "$_basUrls/CategoryList";
  static String popularProduct = "$_basUrls/ListProductByRemark/popular";
  static String NewProduct = "$_basUrls/ListProductByRemark/new";
  static String SpecialProduct = "$_basUrls/ListProductByRemark/special";

  static String CategoryProductId(int productId) =>
      "$_basUrls/ListProductByCategory/$productId";

  static String ProductDetais(int productId) =>
      "$_basUrls/ProductDetailsById/$productId";
  static String addTocart = '$_basUrls/CreateCartList';
  static String showCart = '$_basUrls/CartList';
  static String invoice = '$_basUrls/InvoiceCreate';
  static String DeletCart(int cartId) => "$_basUrls/DeleteCartList/$cartId";

}
