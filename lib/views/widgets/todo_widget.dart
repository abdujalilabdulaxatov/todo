import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/todo_models.dart';

class TodoWidget extends StatefulWidget {
  final TodoModels todoModels;
  final Function() onDelete;
  final Function() onEdit;
  final Function() onPress;
  final Function() onTapp;
  TodoWidget(
      {super.key,
      required this.todoModels,
      required this.onDelete,
      required this.onEdit,
      required this.onPress,
      required this.onTapp});

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
          onPressed: widget.onTapp,
          icon: Icon(
            widget.todoModels.isDone
                ? Icons.check_circle_outlined
                : Icons.circle_outlined,
            color: widget.todoModels.isDone ? Colors.green : null,
          )),
      title: Text(
        widget.todoModels.name,
        style: TextStyle(
            decorationColor: Colors.red,
            color: widget.todoModels.isDone ? Colors.black54 : null,
            decorationThickness: 1.5,
            decoration:
                widget.todoModels.isDone ? TextDecoration.lineThrough : null,
            fontWeight: FontWeight.w600,
            fontSize: 17),
      ),
      subtitle: Text(widget.todoModels.date),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: widget.onEdit,
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: widget.onDelete,
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
