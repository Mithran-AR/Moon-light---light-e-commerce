import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  gotobottom(){
    _navigationService.navigateTo('/bottom-view');
  }
  gotohome() {
    _navigationService.navigateTo('/home-view');
  }

  gotosignup() {
    _navigationService.navigateTo("/sighnup-view");
  }

  List<String> tittles = [];
}
