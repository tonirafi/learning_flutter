import 'dart:async';
import 'dart:convert';

import '../model/user.dart';

class UserBloc {
  int _counter = 0;

  int get counter => _counter;
  StreamController _inputController = StreamController();

  StreamSink get input => _inputController.sink;

  StreamController _outputController = StreamController();

  StreamSink get _shikOutput => _outputController.sink;

  Stream get output => _outputController.stream;

  UserBloc() {
    _inputController.stream.listen((event) {
      if (event == 'add') {
        _counter++;
      } else if (event == 'minuss') {
        _counter--;
      } else if(event =='user'){
        getData();
      }
      _shikOutput.add(_counter);
    },
    );
  }

  get http => null;

  void dispose() {
    _inputController.close();
    _outputController.close();
  }

  Future getData() async{
    Uri uri=Uri.parse("https://reqres.in/api/users/2");
    var respone = await http.get(uri);
    if(respone.statusCode ==200){
      Map<String,dynamic> dataJson =(json.decode(respone.body) as Map<String,dynamic>);
      var data= User.fromJson(dataJson);
      _shikOutput.add(data);
    }else{

    }
  }
}
