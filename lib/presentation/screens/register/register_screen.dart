import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController ocupationController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear Perfil", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: "Nombre",
                      ),
                      style: const TextStyle(fontSize: 18,),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ageController,
                      decoration: const InputDecoration(
                        labelText: "Edad",
                      ),
                      style: const TextStyle(fontSize: 18,),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ocupationController,
                      decoration: const InputDecoration(
                        labelText: "Ocupación",
                      ),
                      style: const TextStyle(fontSize: 18,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: (){
                      context.push("/profile/${nameController.text}/${ageController.text}/${ocupationController.text}");
                    }, child: const Text("Guardar y Ver Perfil", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}