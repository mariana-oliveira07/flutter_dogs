import 'package:flutter/material.dart';

class DogPageForm extends StatefulWidget {
  const DogPageForm({super.key});

  @override
  State<DogPageForm> createState() => _DogPageFormState();
}

class _DogPageFormState extends State<DogPageForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Dogs"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 30.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
