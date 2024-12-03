import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class AdresschangeViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  gotoadress() {
    _navigationService.navigateTo("/address-view");
  }
}
