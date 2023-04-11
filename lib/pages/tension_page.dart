import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_monitor/chart/summary.dart';
import 'package:health_monitor/components/tension_tile.dart';
import 'package:health_monitor/data/parameter_data.dart';
import 'package:health_monitor/helper/datetime_helper.dart';
import 'package:health_monitor/models/parameter.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../helper/textdate_helper.dart';

class TensionPage extends StatefulWidget {
  const TensionPage({super.key});

  @override
  State<TensionPage> createState() => _TensionPageState();
}

class _TensionPageState extends State<TensionPage> {
  final date = TextEditingController();
  final value = TextEditingController();
  String parameterName = "Давление";

  void addNewParameter() {
    showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              title: Text('Добавить показания'),
              content: Column(mainAxisSize: MainAxisSize.min, children: [
                TextField(
                  controller: date,
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today_rounded),
                      labelText: "Выберите дату"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [DateTextFormatter()],
                  onChanged: (String value) {},
                ),
                TextFormField(
                  controller: value,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                  ],
                ),
              ]),
              actions: [
                MaterialButton(
                  onPressed: save,
                  child: Text('Добавить'),
                ),
                MaterialButton(
                  onPressed: cancel,
                  child: Text('Отмена'),
                ),
              ],
            )));
  }

  void pickDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        date.text = convertDataToStringDots(value!);
      });
    });
  }

  void save() {
    DateFormat format = DateFormat("dd.MM.yyyy");
    double val = double.parse(value.text);
    if (value.text != "" && val > 0 && val < 250) {
      Parameter newParameter = Parameter(
          name: parameterName,
          value: value.text,
          date: format.parse(date.text));

      Provider.of<ParameterData>(context, listen: false)
          .addNewParametet(newParameter);

      Navigator.pop(context);
      clearControllers();
    }
  }

  void cancel() {
    Navigator.pop(context);
    clearControllers();
  }

  void clearControllers() {
    value.clear();
    date.text = convertDataToString(DateTime.now());
  }

  void back() {}

  @override
  Widget build(BuildContext context) {
    date.text = convertDataToStringDots(DateTime.now());

    return Consumer<ParameterData>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: Text(parameterName),
            centerTitle: true,
            leading: GestureDetector(
              onTap: back,
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          backgroundColor: Colors.grey[200],
          floatingActionButton: FloatingActionButton(
            onPressed: addNewParameter,
            child: Icon(Icons.add),
          ),
          body: ListView(
            children: [
              //chart
              //Summary(startOfWeek: value.startOfWeekDay()),
              //parameters
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.getParametersList().length,
                  itemBuilder: (context, index) => TensionTile(
                        date: value.getParametersList()[index].date,
                        value: value.getParametersList()[index].value,
                      ))
            ],
          )),
    );
  }
}
