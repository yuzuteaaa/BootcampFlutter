import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sanberappflutter/auth/page/register_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RegisterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  counter--;
                  setState(() {});
                },
                child: const Icon(Icons.remove)),
            const SizedBox(width: 20),
            Text('Nilai Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}

//ANALISI TERHADAP SETSTATE
//APA KEGUNAAN

// Pertama setelah saya analisi setState ada ketika code counter ++/-- dijalankan , kenapa demikian ? karena setState sebagai marking/Penanda
// bahwasannaya scope coode / code sebelumnya merupakan statefulwidget
// Dan kegunaan dari setState tersebut untuk membuil ulang variable counter ketika mendapatkan perintah --/++
