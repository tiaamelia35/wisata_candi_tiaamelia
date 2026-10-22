
import 'package:flutter/material.dart';
import 'package:wisata_candi_tiaamelia/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // to-do1: deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  // to-do5: Implementasi fungsi signIn
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // to-do6: Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // Fungsi saat ikon edit ditekan
  void editProfile() {
    debugPrint('Ikon edit ditekan');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background persegi panjang
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),

          Column(
            children: [
              // to-do2: buat ProfileHeader (foto profil)
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200 - 50),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'images/placeholder_image.png',
                          ),
                        ),
                      ),
                      if (isSignedIn)
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple.shade50,
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // to-do3: buat ProfileInfo (info pengguna)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    ProfileInfoItem(
                      icon: Icons.lock,
                      label: 'Pengguna',
                      value: userName,
                      iconColor: Colors.amber,
                    ),

                    const SizedBox(height: 4),
                    Divider(color: Colors.deepPurple[100]),
                    const SizedBox(height: 4),

                    ProfileInfoItem(
                      icon: Icons.person,
                      label: 'Nama',
                      value: fullName,
                      showEditIcon: isSignedIn,
                      onEditPressed: editProfile,
                      iconColor: Colors.blue,
                    ),

                    const SizedBox(height: 4),
                    Divider(color: Colors.deepPurple[100]),
                    const SizedBox(height: 4),

                    ProfileInfoItem(
                      icon: Icons.favorite,
                      label: 'Favorit',
                      value: favoriteCandiCount > 0
                          ? '$favoriteCandiCount'
                          : '',
                      iconColor: Colors.red,
                    ),

                    // to-do4: Buat ProfileActions
                    const SizedBox(height: 4),
                    Divider(color: Colors.deepPurple[100]),
                    const SizedBox(height: 20),

                    isSignedIn
                        ? TextButton(
                      onPressed: signOut,
                      child: const Text('Sign Out'),
                    )
                        : TextButton(
                      onPressed: signIn,
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
