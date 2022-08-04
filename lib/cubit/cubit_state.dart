

import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit() : super(CounterIncrementBstate());

  int teamAPoints = 0;

  int teamBPoints = 0;

   void TeamIncrement({required String team, required int buttomnumber})
  {
    if(team =='A')
    {
      teamAPoints+=buttomnumber;
      emit(CounterIncrementAstate());
    }
    else{
      teamBPoints+=buttomnumber;
      emit(CounterIncrementBstate());
    }



  }

}