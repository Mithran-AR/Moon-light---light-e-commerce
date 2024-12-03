import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class AddressViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  gotoadresschange() {
    _navigationService.navigateTo("/adresschange-view");
  }
  gotoordersummery(){
    _navigationService.navigateTo("/ordersummary-view");
  }
}
