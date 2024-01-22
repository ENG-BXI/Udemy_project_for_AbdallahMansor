import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

String messagerScreen_router = 'messagerScreen';

class messagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Expanded(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Chats',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        titleSpacing: 20.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(
                Icons.edit,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //for story
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              maxRadius: 25,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 3,
                              ),
                              child: CircleAvatar(
                                maxRadius: 10,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  maxRadius: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          child: Expanded(
                            child: Text(
                              'Abdalrhman Muneer',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 3,
                            ),
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                maxRadius: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Expanded(
                          child: Text(
                            'Abdalrhman Muneer',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // for chats
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdalrhman Muneer Aljaeedi',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'hellworldgddsfsfffsfdfdgfggdhello world',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('02:00 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
