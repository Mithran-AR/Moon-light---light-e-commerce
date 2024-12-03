import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class SighnupViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  gotohome() {
    _navigationService.navigateTo("/home-view");
  }
  gotobottom(){
    _navigationService.navigateTo('/bottom-view');
  }

  gotologin() {
    _navigationService.navigateTo('/login-view');
  }
}
