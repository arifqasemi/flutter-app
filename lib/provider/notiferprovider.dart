import 'package:flutter_riverpod/flutter_riverpod.dart';



class DataNotifier extends StateNotifier<bool>{
  DataNotifier() :super(false);



  void toggelButton (){
    state = !state;
    

  }
  
}


final toggleProvider = StateNotifierProvider<DataNotifier,bool>((ref){
  return DataNotifier();
});