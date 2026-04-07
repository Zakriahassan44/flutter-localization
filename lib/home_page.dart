import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/locale_provider.dart';
import 'l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(lang.appTitle),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// ======================
            /// WELCOME TEXT
            /// ======================
            Text(
              lang.welcome,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            /// ======================
            /// LOGIN BUTTON
            /// ======================
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(lang.login),
              ),
            ),

            const SizedBox(height: 40),

            /// ======================
            /// LANGUAGE SWITCH
            /// ======================
            const Text(
              "Change Language",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                /// ENGLISH BUTTON
                ElevatedButton(
                  onPressed: () {
                    context.read<LocaleProvider>()
                        .setLocale(const Locale('en'));
                  },
                  child: const Text("English"),
                ),

                const SizedBox(width: 20),

                /// URDU BUTTON
                ElevatedButton(
                  onPressed: () {
                    context.read<LocaleProvider>()
                        .setLocale(const Locale('ur'));
                  },
                  child: const Text("اردو"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}