import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:project/repository/coinmodel.dart';

const request =
    'https://economia.awesomeapi.com.br/json/last/USD-BRL,EUR-BRL,BTC-BRL,XRP-BRL';

// trash API, limit access  30 requisitions on day
// const request =
// 'https://api.hgbrasil.com/finance?array_limit=1&fields=&key=675f9a75';

class FinanceHttpRepository {
  late Map<String, dynamic> responseMap = {};
  late TCoinModel coin;

  FinanceHttpRepository() {}

  Future findFinanceInfo() async {
    http.Response response = await http.get(Uri.parse(request));

    responseMap = json.decode(response.body);
    coin = TCoinModel(responseMap);
    return responseMap;
  }

  TCoinModel getCoinRepo() {
    return coin;
  }
}
