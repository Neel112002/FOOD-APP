import 'package:foodapp/data/api_client.dart';
import 'package:foodapp/utils/app_constants.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
class PopularProductRepo extends GetxService{
 final ApiClient apiClient;
 PopularProductRepo({required this.apiClient});

 Future<Response> getPopularProductList() async{
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
 }
}