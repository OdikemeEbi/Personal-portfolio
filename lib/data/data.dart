import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Color.fromARGB(255, 81, 90, 97);
Color kGradient2 = Color.fromARGB(255, 45, 56, 74);

String imagePath = "assets/images/profile.jpeg";
String imagePath1 = "images/linkedin1.png";
String imagePath2 = "images/github1.png";

//String data to modify
String name = "Odikeme Ebiarede";
String username = "Software Developer";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1wa1uYiqkIth5GtkDOTHBrzbDNAj13zKx/view?usp=sharing";

//Contact Email
String contactEmail = "odikemeebiarede@gmail.com";

String linkedInLink = 'https://www.linkedin.com/in/odikeme-ebiarede-840754109/';
String gitHubLink = 'https://github.com/OdikemeEbi';

String aboutMeSummary = '''
Experience in mobile UI/UX design principles and working with RESTful web services and APIs. I am also familiar with version control systems like Git. I understand the differences between mobile platforms and know how to optimize apps for various devices. I have experience in testing and debugging mobile apps. Additionally, I have knowledge of Agile development methodologies, particularly Scrum.

''';

String aboutWorkExperience = '''

Flutter developer with a strong passion for developing mobile apps for both Android and iOS platforms. Strong programming skills and experience in developing a mobile app using Flutter Framework as a capstone project. Seeking an opportunity to continue to develop and improve my skills while contributing to the success of a dynamic organization.

''';

String location = "Asaba, Nigeria";

String portfolio = "linkedin.com/in/odikeme-ebiarede-840754109";
String email = "odikemeebiarede@gmail.com";
String contact = "+2347054117567, +2347012977752";

List<Project> projectList = [
  Project(
    name: "E-commerce App",
    description: "An E-commerce app design with stripe payment method",
    link: "https://github.com/OdikemeEbi/E_commerce_App",
    // imagePath: 'assets/images/profile.jpeg'
  ),
  Project(
    name: "Comfily",
    description:
        "Comfily is one stop solution to help people easily find accommodation!",
    link: "https://github.com/OdikemeEbi/Comfily",
  ),
  Project(
      name: "AirPlane booking",
      description:
          "An airplane ticket booking app design with user-friendly mobile application that allows users to effortlessly search, compare, and book flights from various airlines.",
      link: "https://github.com/OdikemeEbi/Airplane-Ticket-Booking-App"),
  Project(
      name: "App-Freezer",
      description:
          "App-Freezer  is a solution that allows one to manage installed apps",
      link: "https://github.com/adityathakurxd/flutter-portfolio"),
];
