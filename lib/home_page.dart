import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFF5F3E),
              Color(0xff006BFF),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                const SizedBox(height: 40),

                // ⭐ TÍTULO PRINCIPAL
                const Text(
                  "QUE POKÉMON\nÉ ESSE!?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 40),

                // ⭐ BARRA AZUL (1/10, tempo, gen, etc)
                Container(
                  width: 260,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff0A3A87),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("1/10", style: TextStyle(color: Colors.white)),
                        Text("00:27", style: TextStyle(color: Colors.white)),
                        Text("Gen.1", style: TextStyle(color: Colors.white)),
                        Text("G②", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // ⭐ QUADRADO AMARELO COM SILHUETA
                Container(
                  width: 260,
                  height: 260,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xffFAD947), Color(0xffFFB000)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png",
                        width: 200,
                        color: Colors.black,
                        colorBlendMode: BlendMode.srcATop,
                      ),
                      const Text(
                        "?",
                        style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ⭐ BOTÃO DE DICA (com IconButton)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff0A3A87),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 28,
                        icon: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/5/53/Poké_Ball_icon.svg",
                        ),
                      ),

                      const SizedBox(width: 4),

                      const Text(
                        "DICA",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ⭐ CAMPO DE TEXTO
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Digite o nome do Pokémon...",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ⭐ BOTÕES INFERIORES
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botão PULAR
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "PULAR",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Botão CONFIRMAR
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "CONFIRMAR",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
