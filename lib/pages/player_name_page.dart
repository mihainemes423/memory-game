import 'package:flutter/material.dart';
import 'game_page.dart';

class PlayerNamePage extends StatefulWidget {
  const PlayerNamePage({super.key});

  @override
  State<PlayerNamePage> createState() => _PlayerNamePageState();
}

class _PlayerNamePageState extends State<PlayerNamePage> {
  final TextEditingController _player1Controller = TextEditingController();
  final TextEditingController _player2Controller = TextEditingController();

  @override
  void dispose() {
    _player1Controller.dispose();
    _player2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Enter Player Names',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // Player 1 Input
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: _player1Controller,
                  decoration: const InputDecoration(
                    labelText: 'Player 1 Name',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Player 2 Input
              SizedBox(
                width: 250,
                child: TextField(
                  controller: _player2Controller,
                  decoration: const InputDecoration(
                    labelText: 'Player 2 Name',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12)
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Start Game Button
              ElevatedButton(
                onPressed: () {
                  if (_player1Controller.text.isEmpty ||
                      _player2Controller.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please enter both names!')),
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GamePage(
                          player1Name: _player1Controller.text,
                          player2Name: _player2Controller.text,
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Start Game'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
