import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class CartViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  goto() {
    _navigationService.navigateTo("/productdetail-view");
  }
}
