import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  // Add these variables to store the new todo data
  String newTodoTitle = '';
  String newTodoDescription = '';
  String newTodoDeadline = '';
  bool isAddingImage = false;

  void _showAddTodoModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFFFF8C94),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 150.0,
            left: 16.0,
            right: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.translate(
                offset: Offset(0, -120.0), 
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Title',
                    contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFFFF8C94),
                        width: 2.0,
                      ),
                    ),
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                  onChanged: (value) {
                    setState(() {
                      newTodoTitle = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Description',
                ),
                onChanged: (value) {
                  setState(() {
                    newTodoDescription = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Deadline (Optional)',
                ),
                onChanged: (value) {
                  setState(() {
                    newTodoDeadline = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add the new todo item here
                        print('New Todo: $newTodoTitle, $newTodoDescription, $newTodoDeadline');
                        Navigator.of(context).pop(); // Close the modal
                      },
                      child: Text('Add Todo'),
                    ),
                  ),
                ],
              )
          ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'List of Todo',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                TodoItem(
                  title: 'Design Logo',
                  description: 'Make logo for the mini project',
                  createdAt: '1 Sept 2021',
                ),
                TodoItem(
                  title: 'Make UI Design',
                  description: 'Make UI design for the mini project, post figma link to the trello using ...',
                  createdAt: '1 Sept 2021',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTodoModal,
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  final String title;
  final String description;
  final String createdAt;

  TodoItem({
    required this.title,
    required this.description,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(description),
            SizedBox(height: 8.0),
            Text(
              'Created at: $createdAt',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}