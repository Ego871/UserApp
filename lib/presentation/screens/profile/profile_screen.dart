import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final int age;
  final String ocupation;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.age,
    required this.ocupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text("Nombre:", style: TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text(name, style: const TextStyle(fontSize: 18,)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text("Edad:", style: TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(age.toString(), style: const TextStyle(fontSize: 18,)),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ocupación:", style: TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ocupation, style: const TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: (){
                      context.push("/");
                    },
                    child: const Text("Regresar a Inicio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ),
                ],
              ),
            ],
          )
        )
      )
    );
  }
}