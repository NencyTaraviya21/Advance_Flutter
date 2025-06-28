import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/mvc/controller/lab6/obx_obs_controller.dart';

class ObxObsView extends StatelessWidget {
  ObxObsView({super.key});
  final ObxObsController obxObsController = Get.put(ObxObsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(APPBAR_OBX_OBS_DEMO,style: TextStyle(fontSize: 30, color: Colors.blue.shade900))),
      ),
      body: Center(
          child: Obx(() => Text(
                "${obxObsController.userlist}",
                style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          obxObsController.adduser();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
