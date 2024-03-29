import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

const String appName = "SKILLWORTH";

String? font1 = GoogleFonts.manrope().fontFamily;

String? font2 = GoogleFonts.nunitoSans().fontFamily;

String? font3 = GoogleFonts.mulish().fontFamily;

String? font4 = GoogleFonts.nunitoSans().fontFamily;
String? font5 = GoogleFonts.poppins().fontFamily;

const String defalut = 'assets/default/default_profile.jpg';
const String reference = 'assets/default/image_ref.png';

const String googleIcon = "assets/svg_icons/google.svg";
const String facebookIcon = "assets/svg_icons/facebook.svg";

const String chatbotIcon = "assets/svg_icons/chatbot.svg";

const int documentCount = 4;
const List<DropDownValueModel> documentList = [
  DropDownValueModel(name: 'Adhaar Card', value: "1"),
  DropDownValueModel(name: 'Pan Card', value: "2"),
  DropDownValueModel(name: 'Passport', value: "3"),
  DropDownValueModel(name: "Driver's License", value: "4"),
];
const int occupationCount = 6;
const List<DropDownValueModel> occupationList = [
  DropDownValueModel(name: 'Occupation1', value: "1"),
  DropDownValueModel(name: 'Occupation2', value: "2"),
  DropDownValueModel(name: 'Occupation3', value: "3"),
  DropDownValueModel(name: 'Occupation4', value: "4"),
  DropDownValueModel(name: 'Occupation5', value: "5"),
  DropDownValueModel(name: 'Occupation6', value: "6"),
  DropDownValueModel(name: 'Occupation7', value: "7"),
  DropDownValueModel(name: 'Occupation8', value: "8"),
];

const String apiUrl = "http://10.0.2.2:3000/";
const String registerPage1Url = "${apiUrl}register/page1";
const String registerPage2Url = "${apiUrl}register/page2";
const String registerPage3Url = "${apiUrl}register/page3";
