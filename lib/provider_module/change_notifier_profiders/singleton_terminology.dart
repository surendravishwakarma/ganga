class SingletonTerminology{
  static SingletonTerminology obj=SingletonTerminology();
  //static late SingletonTerminology singletonTerminology;
  _SingletonTerminology(){
  }
  static SingletonTerminology getInstance(){
    return obj;
  }


}

//steps
//you have to create static object and instance


class CallCreateOneObj{
  SingletonTerminology obj1=SingletonTerminology.getInstance();
  SingletonTerminology obj2=SingletonTerminology.getInstance();
}

class AbcSingle{
  //instance of the class
  static AbcSingle? _instance;
  //private constructor
  AbcSingle._internal(){
    print("hello private constructor");
  }

  // AbcSingle._(){
  //   print("hello private constructor");
  // }

  static AbcSingle getInstance(){
    _instance??=AbcSingle._internal();
    return _instance!;
  }

  static get getInstance2{
    _instance??=AbcSingle._internal();
    return _instance!;
  }
  factory AbcSingle(){
    _instance??=AbcSingle._internal();
    return _instance!;
  }

}

// class MyConnectivity {
//   MyConnectivity._internal();
//
//   static final MyConnectivity _instance = MyConnectivity._internal();
//
//   static MyConnectivity get instance => _instance;
//
//   Connectivity connectivity = Connectivity();
//
//   StreamController controller = StreamController.broadcast();
//
//   Stream get myStream => controller.stream;
//
//   void initialise() async {
//     ConnectivityResult result = await connectivity.checkConnectivity();
//     _checkStatus(result);
//     connectivity.onConnectivityChanged.listen((result) {
//       _checkStatus(result);
//     });
//   }
//
//   void _checkStatus(ConnectivityResult result) async {
//     bool isOnline = false;
//     try {
//       final result = await InternetAddress.lookup(NetworkUrls.googleLink);
//       if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//         isOnline = true;
//       } else {
//         isOnline = false;
//       }
//     } on SocketException catch (_) {
//       isOnline = false;
//     }
//     controller.sink.add({result: isOnline});
//   }
//
//   void disposeStream() => controller.close();
// }


