import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Tugas_2/theme_cubit.dart'; // Import ThemeCubit

class SettingPage extends StatefulWidget {
  final String name;

  const SettingPage({
    super.key,
    required this.name,
  });

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final controller = TextEditingController();
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    controller.text = widget.name; // Set nilai awal dari nama
    // Ambil status tema awal dari ThemeCubit
    isDarkMode = context.read<ThemeCubit>().state.brightness == Brightness.dark;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void save() {
    // Kembalikan nama yang diperbarui ke halaman sebelumnya
    Navigator.pop(context, controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: save, // Simpan perubahan
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField untuk mengedit nama
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: widget.name,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear(); // Kosongkan teks di TextField
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Switch untuk mengubah tema
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value; // Perbarui status tema
                    });
                    // Ubah tema menggunakan ThemeCubit
                    context.read<ThemeCubit>().toggleTheme(isDarkMode);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}