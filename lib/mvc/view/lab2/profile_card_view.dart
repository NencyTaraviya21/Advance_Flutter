import 'package:adv_flutter/import_export/import_export.dart';

class ProfileCardView extends StatefulWidget {
  const ProfileCardView({super.key});

  @override
  State<ProfileCardView> createState() => _ProfileCardViewState();
}

class _ProfileCardViewState extends State<ProfileCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text("Profile",style: GoogleFonts.rubik(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.brown[600],

        ),),
      ),),
    );
  }
}
