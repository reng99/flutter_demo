import 'package:flutter/material.dart';
import '../constants/dimension.dart';

class ContainerTestPage extends StatelessWidget {
  final title;
  const ContainerTestPage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: Dimension.ELEVATION_TITLE,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black26,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _buildImageWidget('images/ct_pic1.jpg'),
                  _buildImageWidget('images/ct_pic2.jpg'),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildImageWidget('images/ct_pic3.jpg'),
                  _buildImageWidget('images/ct_pic4.jpg'),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildImageWidget('images/ct_pic1.jpg'),
                  _buildImageWidget('images/ct_pic2.jpg'),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildImageWidget('images/ct_pic3.jpg'),
                  _buildImageWidget('images/ct_pic4.jpg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWidget(String imageUrl) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 10.0,
            color: Colors.black38,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        margin: EdgeInsets.all(4.0),
        child: Image.asset(imageUrl),
      ),
    );
  }
}
