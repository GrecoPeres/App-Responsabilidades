import 'package:flutter/material.dart';
import 'package:projeto_alura/components/task.dart';

class InitialScreen extends StatefulWidget{
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  bool opacidade = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              // Icon(Icons.remove_red_eye, color: opacidade ? Colors.green : Colors.red),
              SizedBox(width: 8),
              Text('Tarefas'),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.visibility, color: opacidade ? Colors.white : Colors.red),
              onPressed: () {
                // Toggle the visibility of the content
                setState(() {
                  opacidade = !opacidade;
                });
              },
            ),
          ],
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Task('Aprender Flutter', 'assets/img/dash.png', 5),
              Task('Estudar Inglês', 'assets/img/ingles-capa.webp', 4),
              Task('Cuidar do Gato', 'assets/img/gatos.jpg', 3),
              Task('Arrumar a Cama', 'assets/img/cama-arrumada.jpg', 2),

              SizedBox(height: 40,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},
          child: const Icon(Icons.add),
        ),
      );
  }
}