class TCoinModel {
  TCoinModel(this.CoinCollection);

  final Map<String, dynamic> CoinCollection;

  late String _name;
  late double _buy;
  late double _sell;

  // late double _variation;

  String getname() {
    return _name;
  }

  double getsellprice() {
    return _sell;
  }

  double getbuyprice() {
    return _buy;
  }

  String getNameThis(String Coin) {
    return _name = (CoinCollection['${Coin.toUpperCase()}BRL']['name']);
  }

  double getSellPriceThis(String Coin) {
    return _sell =
        double.parse(CoinCollection['${Coin.toUpperCase()}BRL']['low']);
  }
  
  double getBuyPriceThis(String Coin) {
    return _buy =
        double.parse(CoinCollection['${Coin.toUpperCase()}BRL']['high']);
  }
  // double getvariation() {
  //   return _variation;
  // }

  void setUSBCoin() {
    _name = CoinCollection['USDBRL']['name'];
    _buy = double.parse(CoinCollection['USDBRL']['high']);
    _sell = double.parse(CoinCollection['USDBRL']['low']);
  }

  void setEURCoin() {
    _name = CoinCollection['EURBRL']['name'];
    _buy = double.parse(CoinCollection['EURBRL']['high']);
    _sell = double.parse(CoinCollection['EURBRL']['low']);
  }

  void setBTCCoin() {
    _name = CoinCollection['BTCBRL']['name'];
    _buy = double.parse(CoinCollection['BTCBRL']['high']);
    _sell = double.parse(CoinCollection['BTCBRL']['low']);
  }
}
