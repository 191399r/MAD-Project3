import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // for converting JSON
import 'dart:async'; // for async/await
import 'dart:io'; // for http headers


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getBus() async {
    String url =
        'http://datamall2.mytransport.sg/ltaodataservice/BusStops';
    Map map = {
      'data': {'AccountKey': 'ea4cqiK2RvaIbYCvGndqkQ=='},
    };

    print(await apiRequest(url, map));
  }

  Future<String> apiRequest(String url, Map jsonMap) async {
    HttpClient httpClient = new HttpClient();
    HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));
    request.headers.set('content-type', 'application/json');
    request.add(utf8.encode(json.encode(jsonMap)));
    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    //httpClient.close();
    return reply;
  }

  @override
  void initState() {
    super.initState();
    getBus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Text('loading screen'),
    );
  }
}
