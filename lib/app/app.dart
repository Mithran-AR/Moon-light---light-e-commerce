import 'package:moonlight/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:moonlight/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:moonlight/ui/views/home/home_view.dart';
import 'package:moonlight/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:moonlight/ui/views/login/login_view.dart';
import 'package:moonlight/ui/views/sighnup/sighnup_view.dart';
import 'package:moonlight/ui/views/category/category_view.dart';
import 'package:moonlight/ui/views/cart/cart_view.dart';
import 'package:moonlight/ui/views/profile/profile_view.dart';
import 'package:moonlight/ui/views/productdetails/productdetails_view.dart';
import 'package:moonlight/ui/views/ordersummery/ordersummery_view.dart';
import 'package:moonlight/ui/views/address/address_view.dart';
import 'package:moonlight/ui/views/adresschange/adresschange_view.dart';
import 'package:moonlight/ui/views/bottom/bottom_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SighnupView),
    MaterialRoute(page: Category),
    MaterialRoute(page: CartView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: ProductdetailsView),
    MaterialRoute(page: OrdersummaryView),
    MaterialRoute(page: AddressView),
    MaterialRoute(page: AdresschangeView),
    MaterialRoute(page: BottomView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
