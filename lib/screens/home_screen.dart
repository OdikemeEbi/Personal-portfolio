import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     children: const [
      //       Icon(
      //         Icons.circle_sharp,
      //         size: 12,
      //         color: Colors.black,
      //       ),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Text(
      //         "My Personal Portfolio",
      //         style: TextStyle(color: Colors.black),
      //       )
      //     ],
      //   ),
      //   // foregroundColor: Colors.black,
      //   backgroundColor: Colors.white,
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(134, 173, 173, 173),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      kGradient1,
                      kGradient2,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        imagePath,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                  child: Text(
                name,
                style: kTitleText,
              )),
              Center(
                  child: Text(
                "@$username",
                style: kSubTitleText,
              )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: context.screenConstraint().width > 1200
                      ? Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                  onPressed: () async {
                                    //Code to launch resume
                                    final Uri url = Uri.parse(resumeLink);
                                    await launchUrl(url);
                                  },
                                  child: Text(
                                    "View Resume",
                                    style: kSubTitleText,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    //Call to launch email
                                    final Uri emailLaunchUri = Uri(
                                      scheme: 'mailto',
                                      path: contactEmail,
                                    );
                                    await launchUrl(emailLaunchUri);
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Contact",
                                        style: kSubTitleText.copyWith(
                                            color: Colors.white),
                                      )
                                    ],
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              OutlinedButton(
                                  onPressed: () async {
                                    //Code to launch resume
                                    final Uri url = Uri.parse(linkedInLink);
                                    await launchUrl(url);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Image(
                                        image: AssetImage(
                                          imagePath1,
                                        ),
                                        height: 20,
                                        width: 20,
                                      )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "View LinkedIn",
                                        style: kSubTitleText,
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    //Code to launch resume
                                    final Uri url = Uri.parse(gitHubLink);
                                    await launchUrl(url);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Image(
                                        color: kWhite,
                                        image: AssetImage(
                                          imagePath2,
                                        ),
                                        height: 20,
                                        width: 20,
                                      )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "View Github",
                                        style: kSubTitleText.copyWith(
                                            color: Colors.white),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        )
                      : Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        onPressed: () async {
                                          //Code to launch resume
                                          final Uri url = Uri.parse(resumeLink);
                                          await launchUrl(url);
                                        },
                                        child: Text(
                                          "View Resume",
                                          style: kSubTitleText,
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        onPressed: () async {
                                          //Call to launch email
                                          final Uri emailLaunchUri = Uri(
                                            scheme: 'mailto',
                                            path: contactEmail,
                                          );
                                          await launchUrl(emailLaunchUri);
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.add,
                                              size: 16,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Contact",
                                              style: kSubTitleText.copyWith(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlinedButton(
                                        onPressed: () async {
                                          //Code to launch resume
                                          final Uri url =
                                              Uri.parse(linkedInLink);
                                          await launchUrl(url);
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                                child: Image(
                                              image: AssetImage(
                                                imagePath1,
                                              ),
                                              height: 20,
                                              width: 20,
                                            )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "View LinkedIn",
                                              style: kSubTitleText,
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        onPressed: () async {
                                          //Code to launch resume
                                          final Uri url = Uri.parse(gitHubLink);
                                          await launchUrl(url);
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                                child: Image(
                                              color: kWhite,
                                              image: AssetImage(
                                                imagePath2,
                                              ),
                                              height: 20,
                                              width: 20,
                                            )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "View Github",
                                              style: kSubTitleText.copyWith(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: context.screenConstraint().width > 1200
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "About Me",
                                    style: kSectionTitleText,
                                    textAlign: TextAlign.justify,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(aboutWorkExperience),
                                  const Divider(),
                                  Text("Experience", style: kSectionTitleText),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(aboutMeSummary),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Column(
                                children: [
                                  Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          bottom: 20,
                                          left: 20,
                                          right: 20),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Location",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.circle,
                                                  size: 16,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  location,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Contact",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    contact,
                                                    style: const TextStyle(
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Icon(
                                                  Icons.launch,
                                                  size: 16,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Portfolio",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    portfolio,
                                                    // style: const TextStyle(
                                                    //     fontSize: 10),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Icon(
                                                  Icons.launch,
                                                  size: 16,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Email",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(child: Text(email)),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Icon(
                                                  Icons.launch,
                                                  size: 16,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Me",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutWorkExperience),
                                const Divider(),
                                Text("Experience", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutMeSummary),
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Location",
                                            style: kSubTitleText2,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle,
                                                size: 16,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                location,
                                                style: kSubTitleText1,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Contact",
                                            style: kSubTitleText2,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                contact,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: kSubTitleText1,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Portfolio",
                                            style: kSubTitleText2,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  portfolio,
                                                  style: kSubTitleText1,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Email",
                                            style: kSubTitleText2,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                email,
                                                style: kSubTitleText1,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                ),
              ),
              Center(
                  child: SizedBox(
                      height: context.screenConstraint().height * 1.05,
                      width: context.screenConstraint().width * 0.9,
                      child: context.screenConstraint().width > 1200
                          ? GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio:
                                          context.screenConstraint().width >
                                                  1000
                                              ? 2
                                              : 1),
                              itemCount: projectList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ProjectWidget(
                                  projectData: projectList[index],
                                );
                              })
                          : GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      childAspectRatio:
                                          context.screenConstraint().width >
                                                  1000
                                              ? 2
                                              : 1),
                              itemCount: projectList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ProjectWidget(
                                  projectData: projectList[index],
                                );
                              }))),
            ],
          ),
        ),
      ),
    );
  }
}
