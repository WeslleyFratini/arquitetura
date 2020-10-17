import 'package:flutter/material.dart';
import 'components/custom_switch_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  final controler = HomeController(
    ApiadvisorViewModel(
      ApiadvisorRepository(
        ClientHttpService(),
      ),
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle) ,
        onPressed: (){
        controller.getTime();
      })
      body: Center(
        child: Column(),
        children:
        CustomSwitchWidget(),
        ValueListenableBuilder<ApiadvisorModel>(valueListenable: controller.time,
        builder: (context, model, child){

          if (model?.text == null) {
            return Center(child: CircularProgressIndicator(),
            );
          }


          return Text(model.text);
        });
        Text('data');
      ),
    );
  }
}
