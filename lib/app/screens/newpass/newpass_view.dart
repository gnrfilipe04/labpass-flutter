import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/repositories/PassRepository.dart';
import 'package:labpass/app/screens/newpass/newpass_view_model.dart';
import 'package:labpass/app/theme/colors.dart';
import 'package:labpass/app/widgets/my_button.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  NewPassViewModel _newPassViewModel = provider<NewPassViewModel>();

  @override
  Widget build(BuildContext context) {
    print(_newPassViewModel.listOfPass);

    return Scaffold(
      body: Column(
        children: [
          Observer(
              builder: (context) => (ListView.builder(
                    shrinkWrap: true,
                    itemCount: _newPassViewModel.listOfPass.length,
                    itemBuilder: (context, int index) => (Text(
                      _newPassViewModel.listOfPass[index].title,
                      style: TextStyle(color: CustomColors.secondary50),
                    )),
                  ))),
          MyButton(
              onPressed: () => _newPassViewModel.addPass(
                  pass: Pass(
                      id: '2',
                      title: 'google',
                      password: '54321',
                      icon: 'google')),
              title: 'Nova senha',
              bgColor: CustomColors.secondary600)
        ],
      ),
    );
  }
}
