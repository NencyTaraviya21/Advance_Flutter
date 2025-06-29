import 'package:adv_flutter/import_export/import_export.dart';
import 'package:adv_flutter/mvc/controller/lab6/getx_timer_countdown_controller.dart';

class TimerCountdownView extends StatelessWidget {
  TimerCountdownView({super.key});
  TimerCountdownController tcc = Get.put(TimerCountdownController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Countdown', style: TextStyle(fontSize: 30, color: Colors.red.shade900))),
      ),
      body: Center(child: Obx(()=>Text(tcc.time.toString(), style: TextStyle(fontSize: 50, color: Colors.red.shade900)))),
      floatingActionButton: FloatingActionButton(onPressed: (){
        tcc.startTime();
      },child: Text('Start',style: TextStyle(color: Colors.red[400]),),),
    );
  }
}
