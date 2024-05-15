import 'package:fluttertoast/fluttertoast.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

void customToast({bool? isError, required String msg}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor:
          isError ?? false ? ColorManager.redColor : ColorManager.greenColor,
      textColor: ColorManager.whiteColor,
      fontSize: 16.0);
}
