import 'package:arch/app/models/apiadvisor_model.dart';
import 'package:flutter/foundation.dart';


class ApiadvisorViewModel {

  final IApiadvisor repository;

  final apiadvisorModel = ValueNotifier<ApiadvisorModel>(null);

  ApiadvisorViewModel(this.repository)

  fill() async {

    apiadvisorModel.value= value = await repository.getTime();
     


  }
}