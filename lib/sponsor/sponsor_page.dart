import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/misc/dev_scaffold.dart';

class SponsorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl: "https://cdn.shopify.com/s/files/1/0264/9980/9339/articles/SST_Logo.001-min_400x.jpg?v=1636785770",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "https://cdn.shopify.com/s/files/1/0471/3693/2002/files/logo_nutri.png?height=628&pad_color=fff&v=1598597625&width=1200",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://static.wixstatic.com/media/9a7d16_875854f1a80444829efa67ae83a9d974~mv2.png/v1/fill/w_280,h_280,al_c,q_85,usm_0.66_1.00_0.01/sreepriya.webp",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://play-lh.googleusercontent.com/dEKnUsrp2UYPuHHAd7v7wZnea2bXk0nJXn_4x1YoWa0Uua5mCAp82fG8BMuxxs2pTjB8",
          )
        ],
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
      child:Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
      ),)
    );
  }
}
