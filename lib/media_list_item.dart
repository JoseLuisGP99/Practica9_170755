import 'package:flutter/material.dart';
import 'package:movieapp_170755/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;
  MediaListItem(this.media);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          new Container(
            child: new Stack(
              children: <Widget>[
                FadeInImage.assetNetwork(
                  placeholder: "assets/images/placeholder.png",
                  image: media.getBackDroprUrl(),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200.0,
                  fadeInDuration: Duration(milliseconds: 40),
                ),
                new Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(33, 33, 33, 0.5),
                      ),
                      constraints: BoxConstraints.expand(height: 55.00),
                    )),
                new Positioned(
                    left: 10.0,
                    bottom: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            media.title,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    const Color.fromARGB(255, 230, 244, 255)),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
