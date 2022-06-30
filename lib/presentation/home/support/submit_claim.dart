import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitClaim extends StatelessWidget {
  static const String routeName = '/submit-claim';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.arrow_back, size: 30),
                      const SizedBox(width: 10),
                      Text(
                        'Geri Dön',
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                AppButton(
                  text: 'Giriş Yap',
                  onTap: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  fontSize: 14,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  fontWeight: FontWeight.w500,
                  color: Colors.transparent,
                  textColor: Theme.of(context).primaryColorDark,
                ),
                const SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: AppButton(
                    text: 'Üye Ol',
                    fontSize: 14,
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    fontWeight: FontWeight.w500,
                    onTap: () {
                      Navigator.of(context).pushNamed(Register.routeName);
                    },
                    color: Colors.transparent,
                    textColor: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Hasar Talebi Gönder',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          highlightColor: Colors.transparent,
                          child: Container(
                            padding: const EdgeInsets.all(18),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  'QR İle tanımla',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.qr_code,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppTextInput(
                        displayBorder: true,
                        floatingLabel: 'Kategori',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppTextInput(
                        displayBorder: true,
                        floatingLabel: 'Tc kimlik / Vergi no',
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: AppTextInput(
                              displayBorder: true,
                              floatingLabel: 'Plaka',
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: AppTextInput(
                              displayBorder: true,
                              floatingLabel: 'Belge Seri No (XX111111)',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppTextInput(
                        displayBorder: true,
                        floatingLabel: 'Telefon Numaranız',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppTextInput(
                        displayBorder: true,
                        floatingLabel: 'E-posta Adresi',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppTextInput(
                        displayBorder: true,
                        floatingLabel: 'Poliçe Numarası',
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup<void>(
                          context: context,
                          builder: (_) => CupertinoActionSheet(
                            title: const Text('Kamera özelliği kullanınız ya da bir resim seçiniz.'),
                            actions: <CupertinoActionSheetAction>[
                              CupertinoActionSheetAction(
                                child: const Text('Kamera'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Galeri'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Files'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('İptal'),
                                isDestructiveAction: true,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFe4e7ec),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.attachment,
                                  color: Theme.of(context).primaryColorLight,
                                  size: 30,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Kaza Tutanağı Ekle',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'jpg, pdf, png, xls, xlsx, word, wordx',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: AppButton(
                        text: 'Talep Gönder',
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
