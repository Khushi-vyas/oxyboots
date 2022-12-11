import 'package:flutter/material.dart';
import 'package:oxyboots/components/custom_back_button.dart';

import 'const.dart';

class Account {
  late IconData icon;
  late String title;
  Account({required this.icon, required this.title});
}

class AccountAndSettings extends StatelessWidget {
  const AccountAndSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Account> accounts = [
      Account(
          icon: Icons.notifications_active_outlined,
          title: "Notification Settings"),
      Account(icon: Icons.shopping_cart_outlined, title: "Shopping Address"),
      Account(icon: Icons.wallet_outlined, title: "Payment info"),
      Account(icon: Icons.delete_outline, title: "Delete Account")
    ];

    List<String> appSettings = [
      "Enable face ID for Login",
      "Enable push notifications",
      "Enable locations services",
      "Dark mode"
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: CustomBackButton(),
          centerTitle: true,
          title: Text(
            "Account & Settings",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: accounts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        leading: Icon(accounts[index].icon),
                        title: Text(accounts[index].title),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      Divider(
                        color: Colors.grey,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "App Settings",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: appSettings.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text(appSettings[index]),
                        trailing: Switch(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
