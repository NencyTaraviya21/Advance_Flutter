import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/mvc/controller/lab6/show_hide_controller.dart';

class ShowHideView extends StatelessWidget {
  ShowHideView({super.key});
  ShowHideContentController shc = ShowHideContentController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Show Hide Content', style: TextStyle(fontSize: 30, color: Colors.pink.shade500))),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          shc.showContent();
          Get.to(ThankyouPage());
        }, child: Text(!shc.toShow.value?'Show':'Hide')),
      ) ,
    );
  }
}
