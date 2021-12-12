import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/speaker/speaker.dart';
import 'package:flutter_devfest/misc/dev_scaffold.dart';
import 'package:flutter_devfest/misc/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_devfest/team/team.dart';

List<Team> teams = [
  Team(
    name: "Rajesh Ojha",
    desc: "Organizer",
    contribution: "Founder",
    image:
        "https://srisriuniversity.edu.in/wp-content/uploads/2020/12/rajesh.jpg",
    fbUrl: "https://www.facebook.com/rajesh.ojha.7777019",
    twitterUrl: "https://twitter.com/ojhaarajesh",
    linkedinUrl: "https://twitter.com/ojhaarajesh",
    githubUrl: "https://www.linkedin.com/in/rajesh-ojha-0a275757",
  ),
  
  Team(
    name: "Mrutyunjaya Pallai",
    desc: "Co-Organizer",
    contribution: "Logistics and travels",
    image: "https://static.wixstatic.com/media/9a7d16_bf67fc886a164c8193aa2b7e4d56e08c~mv2.jpg/v1/crop/x_0,y_75,w_1768,h_1776/fill/w_300,h_302,al_c,q_80,usm_0.66_1.00_0.01/_DSC2222-01_edited.webp",
    fbUrl: "https://www.instagram.com/mrutyunjayapallai/?hl=en",
    twitterUrl: "https://twitter.com/ojhaarajesh",
    linkedinUrl: "https://twitter.com/ojhaarajesh",
    githubUrl: "https://www.linkedin.com/in/rajesh-ojha-0a275757",
  ),
  Team(
    name: "Chinmay Agarwal",
    desc: "Creator",
    contribution: "App",
    image: "https://chinmayaswami.github.io/indigo//assets/images/profile.jpg",
    fbUrl: "https://www.instagram.com/chinmay._.agarwal_/",
    twitterUrl: "https://twitter.com/Chinmayaswami_",
    linkedinUrl: "https://www.linkedin.com/in/chinmayaswami/",
    githubUrl: "https://chinmayaswami.github.io/indigo/",
  ),
  
  Team(
    name: "Shashwat Raj",
    desc: "Co-Organizer",
    contribution: "Developed the app",
    image:
        "https://cdn.hashnode.com/res/hashnode/image/upload/v1611317831633/zfCwLnzuG.jpeg?w=500&h=500&fit=crop&crop=entropy&auto=compress",
        fbUrl: "https://www.facebook.com/rajesh.ojha.7777019",
    twitterUrl: "https://twitter.com/ojhaarajesh",
    linkedinUrl: "https://twitter.com/ojhaarajesh",
    githubUrl: "https://www.linkedin.com/in/rajesh-ojha-0a275757",
  ),
  Team(
    name: "Vishvesh Vaidya",
    desc: "Organizer",
    contribution: "Non Support Staff",
    image:
        "https://i.pinimg.com/280x280_RS/c4/80/e5/c480e532af2bd6240febe7660a99d2c2.jpg",
        fbUrl: "https://www.facebook.com/rajesh.ojha.7777019",
    twitterUrl: "https://twitter.com/ojhaarajesh",
    linkedinUrl: "https://twitter.com/ojhaarajesh",
    githubUrl: "https://www.linkedin.com/in/rajesh-ojha-0a275757",
  ),
];

class TeamPage extends StatelessWidget {
  static const String routeName = "/team";
  //List<String> teams = ["Chinmay Agarwal", "Mrutyunjaya Pallai", "Tritam Mohanty"];
  // Create list of objects called teams, with each having image, name, etc, etc 

  Widget socialActions(context, Team) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(Team.fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(Team.twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(Team.linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(Team.githubUrl);
              },
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    // var state = _homeBloc.currentState as InHomeState;
    // var teams = state.teamsData.teams;
    return DevScaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (c, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: teams[i].image,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                teams[i].name,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: 5,
                                color: Tools.multiColors[Random().nextInt(4)],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            teams[i].desc,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            teams[i].contribution,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          socialActions(context, teams[i]),
                        ],
                      ),
                    )
                  ],
                )),
          );
        },
        itemCount: teams.length,
      ),
      title: "Team",
    );
  }
}
