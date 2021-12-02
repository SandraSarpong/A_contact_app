import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactDetailsView extends StatelessWidget {
  //final List<Map<String, String>>
  Map<String, dynamic> contactDetails;

 // const ContactDetailsView({Key? key}) : super(key: key);
ContactDetailsView({Key? key, required this.contactDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Contacts',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [Icon(Icons.more_vert)],
        bottom: PreferredSize(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1570694660599-9dcdbfff8f55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
                ),
              ),
              Text ('${this.contactDetails['name']}'),
              SizedBox(
                height: 10,
              ),
              Text('Vercelli, Italy'),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          preferredSize: Size.fromHeight(150),
        ),
      ),
      body: ListView(children: [
        Container(
          color: Colors.grey[100],
          child: Column(children: [
            ListTile(
              title: Text('Mobile'),
              subtitle: Text('+233240227223'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Icon(Icons.message),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white, shape: CircleBorder()),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Icon(Icons.call),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white, shape: CircleBorder()),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('helenayeboah@gmail.com'),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                TextButton(
                  onPressed: null,
                  child: Icon(Icons.email),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white, shape: CircleBorder()),
                ),
              ]),
            ),
            ListTile(
              title: Text('Group'),
              subtitle: Text('Ui friends'),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Account Linked', style: TextStyle(fontSize: 15)),
        ),
        Container(
          color: Colors.grey[100],
          child: Column(children: [
            ListTile(
              title: Text('Telegram'), 
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                TextButton(
                  onPressed: null,
                  child: CircleAvatar(
                  radius: 13,
                  backgroundImage: NetworkImage('https://media.istockphoto.com/vectors/white-paper-plane-on-blue-background-vector-illustration-vector-id951164518?k=20&m=951164518&s=612x612&w=0&h=3UdkhpEUQJJjUnWlRwSOtmgmR_B7NT5Ex_i8NSdCX_Q=')
                  ,
                  ),
                ),
              ]),
                
            ),
          
          ListTile(
              title: Text('WhatsApp'),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                TextButton(
                  onPressed: null,
                  child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage('https://thumbs.dreamstime.com/b/whatsapp-icon-isolated-white-vector-file-included-whatsapp-flat-icon-164609425.jpg')
                  ,
                  ),
                ),
              ]),

            ),
          ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('More Options', style: TextStyle(fontSize: 15)),
        ),
        Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              ListTile(
                title: Text('Share Contact'),
              ),
              ListTile(
                title: Text('QR Code'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
