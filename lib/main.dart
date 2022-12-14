import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //runApp() is the root of a widget tree.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        title: 'Learning!',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dakshatha is learning dart!!!"),
        centerTitle: true,
      ),
      body: Column(
          children: [
          Progress(),
            TaskList(),
      ],
    ),
    );
  }
}
class Progress extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text("My Check List"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        TaskItem(label: "Practise basic flutter"),
        TaskItem(label: "Research more about ChatGPT"),
        TaskItem(label: "Read a book"),
        TaskItem(label: "Practise mindfulness"),
      ],
    );
  }
}
class TaskItem extends StatefulWidget {
  final String label;

  const TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  _TaskItemState createState() => _TaskItemState();
}
class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => _value = newValue),
        value:_value,
        ),
        Text(widget.label),
      ],
    );
  }
}
