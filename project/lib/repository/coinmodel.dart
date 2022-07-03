import 'dart:ffi';

class TCoinModel {
  TCoinModel(this.CoinCollection);

  final Map<String, dynamic> CoinCollection;

  late String _name;
  late double _buy;
  late double _sell;
  late double _variation;

  String getname() {
    return _name;
  }

  double getsellprice() {
    return _sell;
  }

  double getbuyprice() {
    return _buy;
  }

  double getvariation() {
    return _variation;
  }

  void setUSBCoin() {
    _name = CoinCollection['USD']['name'];
    _buy = CoinCollection['USD']['buy'];
    _sell = CoinCollection['USD']['sell'];
    _variation = CoinCollection['USD']['variation'];
  }

  void setEURCoin() {}
  void setGPBCoin() {}
  void setARSCoin() {}
  void setCADCoin() {}
  void setAUDCoin() {}
  void setJPYCoin() {}
  void setCNYCoin() {}
  void setBTCCoin() {}
}
