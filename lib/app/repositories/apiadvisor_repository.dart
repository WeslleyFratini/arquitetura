import 'package:arch/app/models/apiadvisor_model.dart';
import 'package:arch/app/models/apiadvisor_model.dart';

import 'apiadvisor_repository_interface.dart';

class ApiadvisorRepository implements IApiAdvisor{

  final IClientHttp client;

  ApiadvisorRepository(this.client);

  @override
  Future<ApiadvisorModel> getTime() async {    
    var json = await client.get("url")
    

    ApiadvisorModel model = ApiadvisorModel.formJson(json);
    return model;
  }

}