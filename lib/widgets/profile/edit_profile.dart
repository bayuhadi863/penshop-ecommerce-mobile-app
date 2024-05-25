import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeigth = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return AlertDialog(
      insetPadding: const EdgeInsets.all(20),
      titlePadding: const EdgeInsets.all(20),
      contentPadding: EdgeInsets.zero,
      surfaceTintColor: Colors.white,
      backgroundColor: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: SizedBox(
        width: mediaQueryWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.list_alt_outlined,
                  color: Color(0xFF64DF70),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Color(0xFF424242),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF64DF70).withOpacity(0.3),
                          blurRadius: 16,
                          offset: const Offset(1, 1),
                        ),
                      ]),
                  child: Image.asset(
                    'assets/icons/close_fill.png',
                    height: 24,
                    width: 24,
                    color: const Color(
                      0xFF64DF70,
                    ),
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      content: const EditProfileForm(),
    );
  }
}

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({super.key});

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {},
                child: SizedBox(
                  width: mediaQueryWidth * 0.8,
                  height: 127,
                  child: DottedBorder(
                    padding: const EdgeInsets.all(20),
                    color: const Color(0xFF64DF70),
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    dashPattern: const [7, 7],
                    strokeCap: StrokeCap.butt,
                    radius: const Radius.circular(12),
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Gambar Produk",
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const Text(
                            'Seret atau pilih gambar',
                            style: TextStyle(
                              color: Color(0xFF757B7B),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Image.asset(
                            'assets/icons/Plus.png',
                            width: 24,
                            height: 24,
                            color: const Color(0xFF64DF70),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: mediaQueryWidth * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 54,
                      width: 54,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/icons/user_outline.png',
                        color: const Color(0xFF64DF70),
                        height: 24,
                        width: 24,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    hintText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username tidak boleh kosong";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: mediaQueryWidth * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 54,
                      width: 54,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/icons/phone.png',
                        color: const Color(0xFF64DF70),
                        height: 24,
                        width: 24,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    hintText: 'No Telepon',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "No Telepon tidak boleh kosong";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: mediaQueryWidth * 0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 54,
                      width: 54,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/icons/email.png',
                        color: const Color(0xFF64DF70),
                        height: 24,
                        width: 24,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF64DF70),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF64DF70),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF64DF70).withOpacity(0.3),
                      blurRadius: 16,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 54,
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () async {},
                  child: const Center(
                    child: Text(
                      'Tambah Produk',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}