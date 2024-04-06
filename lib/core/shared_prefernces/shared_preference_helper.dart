/*
 * Webkul Software.
 * @package Mobikul Application Code.
 * @Category Mobikul
 * @author Webkul <support@webkul.com>
 * @Copyright (c) Webkul Software Private Limited (https://webkul.com)
 * @license https://store.webkul.com/license.html
 * @link https://store.webkul.com/license.html
 */


import 'package:ecommerce_app/core/shared_prefernces/shared_preference_key.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

final appStoragePref = SharedPreferenceHelper();

class SharedPreferenceHelper {
  var configurationStorage = GetStorage(
      "configurationStorage"); //-----Use only for user app configuration data

  static Future<String> getDate() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? dateNew = sharedPreferences.getString(SharedPreferencesKey.date);

    return dateNew ?? "";
  }

  static setDate(String setDate) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.date, setDate);
  }

  static setLanguageName(String customerLanguage) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("Language", customerLanguage);
  }

  static getLanguageName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? customerLanguage = sharedPreferences.getString("Language");
    return customerLanguage ?? "English";
  }

  static setSortName(String sort) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("sort", sort);
  }

  static getSortName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? sort = sharedPreferences.getString("sort");
    return sort ?? "";
  }

  static setCurrencyCode(String currencyCode) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.configCurrencyCode, currencyCode);
  }

  static getCurrencyCode() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String ?  currencyCode = sharedPreferences.getString(SharedPreferencesKey.configCurrencyCode);
    return currencyCode ?? "USD" ;
  }

  static setCurrencyLabel(String currencyLabel) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.configCurrencyLabel, currencyLabel);
  }

  static getCurrencyLabel() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? currencyLabel = sharedPreferences.getString(SharedPreferencesKey.configCurrencyLabel);
    return currencyLabel;
  }

  static setCustomerLoggedIn(bool isLoggedIn) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(SharedPreferencesKey.customerLoggedIn, isLoggedIn);
  }

  static onUserLogout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(SharedPreferencesKey.customerLoggedIn, false);
    sharedPreferences.setInt(SharedPreferencesKey.customerCartCount, 0);
    sharedPreferences.setString(SharedPreferencesKey.customerName, 'Welcome Guest');
    sharedPreferences.setString(SharedPreferencesKey.customerEmail, '');
    sharedPreferences.setString(SharedPreferencesKey.customerProfilePicUrl, '');
    sharedPreferences.setString(SharedPreferencesKey.customerBannerPicUrl, '');
    sharedPreferences.setString(SharedPreferencesKey.customerToken, '0');
    sharedPreferences.setBool(SharedPreferencesKey.isApproved, false);
    await sharedPreferences.clear();
  }

  static getCustomerLoggedIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? isLoggedIn = sharedPreferences.getBool(SharedPreferencesKey.customerLoggedIn);
    return isLoggedIn ?? false;
  }

  static setAddressData(bool isAddressData) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(SharedPreferencesKey.addressData, isAddressData);
  }

  static getAddressData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? isAddressData = sharedPreferences.getBool(SharedPreferencesKey.addressData);
    return isAddressData ?? false;
  }

  static setQuoteId(int quoteId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(SharedPreferencesKey.customerQuoteId, quoteId);
  }

  static getQuoteId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? quoteId = sharedPreferences.getInt(SharedPreferencesKey.customerQuoteId);
    return quoteId ?? 0;
  }

  static setCartCount(int cartCount) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(SharedPreferencesKey.customerCartCount, cartCount);
  }

  static getCartCount() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? quoteId = sharedPreferences.getInt(SharedPreferencesKey.customerCartCount);
    return quoteId ?? 0;
  }

  static setCustomerToken(String customerTokenValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(SharedPreferencesKey.customerToken, customerTokenValue);
  }

  static Future<String> getCustomerToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? customerTokenNew = sharedPreferences.getString(SharedPreferencesKey.customerToken);

    return customerTokenNew ?? "0";
  }

  static setCustomerName(String customerNameValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.customerName, customerNameValue);
  }

  static getCustomerName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? customerNameNew = sharedPreferences.getString(SharedPreferencesKey.customerName);
    return customerNameNew ?? "";
  }

  static setCustomerImage(String customerImageValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.customerImage, customerImageValue);
  }

  static getCustomerImage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? customerImageNew = sharedPreferences.getString(SharedPreferencesKey.customerImage);
    return customerImageNew ?? "";
  }

  static setCustomerEmail(String customerEmailNew) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.customerEmail, customerEmailNew);
  }

  static getCustomerEmail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? customerEmailNew = sharedPreferences.getString(SharedPreferencesKey.customerEmail);
    return customerEmailNew ?? "";
  }

  static setCustomerId(int customerIdNew) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(SharedPreferencesKey.customerId, customerIdNew);
  }

  static getCustomerId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? customerIdNew = sharedPreferences.getInt(SharedPreferencesKey.customerId);
    return customerIdNew ?? 0;
  }

  static setCookie(String cookieData) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.cookie, cookieData);
  }

  static getCookie() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? cookieNew = sharedPreferences.getString(SharedPreferencesKey.cookie);
    return cookieNew ?? "";
  }

  static setCustomerLanguage(String languageCode) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(SharedPreferencesKey.customerLanguage, languageCode);
  }

  static getCustomerLanguage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.get(SharedPreferencesKey.customerLanguage) ?? 'en';
  }

  setFingerPrintUser(String savedKey) {
    configurationStorage.write(SharedPreferencesKey.fingerPrintUSer, savedKey);
  }

  String? getFingerPrintUser() {
    return configurationStorage.read(SharedPreferencesKey.fingerPrintUSer) ?? "";
  }

  setFingerPrintPassword(String savedKey) {
    configurationStorage.write(SharedPreferencesKey.fingerPrintPassword, savedKey);
  }

  String? getFingerPrintPassword() {
    return configurationStorage.read(SharedPreferencesKey.fingerPrintPassword) ?? "";
  }

  setTheme(String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferencesKey.themeKey, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(SharedPreferencesKey.themeKey) ?? "";
  }
}