import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/auth/auth.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/auth_use_case.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class AuthProvider extends ChangeNotifier{
  final AuthUseCase _authUseCase;

  AuthProvider(this._authUseCase);

  DataState<Auth?> _state = const DataState.initial();
  DataState<Auth?> get state => _state;

  late String _name = '';
  String get name => _name;

  late String _email = '';
  String get email => _email;

  late int _gender = 0;
  int get gender => _gender;

  bool _isShowPassword = false;
  bool _isLoggedIn = false;


  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();


  bool get isShowPassword => _isShowPassword;
  bool get isLoggedIn => _isLoggedIn;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get nameController => _nameController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get addressController => _addressController;

  Future<void> login() async{
    final emailControllerText = _emailController.text;
    final passwordControllerrText = _passwordController.text;

    if(emailControllerText.isEmpty || passwordControllerrText.isEmpty){
      _state = const DataState.failed('Email dan Password tidak boleh kosong');
      notifyListeners();
      return;
    }
    _state = const DataState.loading();
    notifyListeners();

    final result = await _authUseCase.login(emailControllerText, passwordControllerrText);
    _state = result;
    notifyListeners();
  }

  Future<void> checkLogin() async{
    final String? token = await SharedPreferencesHelper.getString(PREF_AUTH);
    _isLoggedIn = token != null && token.isNotEmpty;
    notifyListeners();
  }

  Future<void> logout() async {
    await SharedPreferencesHelper.logout();
    _isLoggedIn = false;
    notifyListeners();
  }

  void setGender(int gender){
    _gender = gender;
    notifyListeners();
  }

  void togglePassword(){
    _isShowPassword = !_isShowPassword;
    notifyListeners();
  }

  String get genderLabel{
    switch(_gender){
      case 1:
        return 'Laki-Laki';
      case 2:
        return 'Perempuan';
      default:
        return '';
    }
  }

  Future<void> register() async {
    final email = _emailController.text;
    final name = _nameController.text;
    final phone = _phoneController.text;
    final password = _passwordController.text;
    final address = _addressController.text;
    final gender = _gender;

    if(email.isEmpty || name.isEmpty || phone.isEmpty || password.isEmpty || address.isEmpty){
      _state = const DataState.failed('Semua file wajib diisi');
      notifyListeners();
      return;
    }
    _state = const DataState.loading();
    notifyListeners();

    final result = await _authUseCase.register(name, email, password, phone, gender);
    _state = result;
    notifyListeners();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }



}