import 'package:flutter/material.dart';

class PageInscription extends StatefulWidget {
  const PageInscription({Key? key}): super(key: key);

  @override
  State<PageInscription> createState() => PageInscriptionState();
}

class PageInscriptionState extends State<PageInscription> {
 final _formKey=GlobalKey<FormState>();
 final PrenomController= TextEditingController();
 final NomController= TextEditingController();
 final MailController= TextEditingController();
 final PhoneController= TextEditingController();
 final PassWordController= TextEditingController();
 final RePassWordController= TextEditingController();

 @override
  void dispose() {
    super.dispose();
    PrenomController.dispose();
    NomController.dispose();
    MailController.dispose();
    PhoneController.dispose();
    PassWordController.dispose();
    RePassWordController.dispose();
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(20),
      child: Form(
        key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                        hintText:'Entrer votre Prénom',
                    border: OutlineInputBorder(),
                  ),
                validator: (value){
                    if (value==null || value.isEmpty){
                      return "Tu dois Remplir  le champ";
                    }
                    return null;
                },
                  controller: PrenomController,
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    hintText:'Entrer votre Nom',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value==null || value.isEmpty){
                      return "Tu dois Remplir  le champ";
                    }
                    return null;
                  },
                  controller: NomController,

                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    hintText:'Entrer votre E-mail',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value==null || value.isEmpty){
                      return "Tu dois Remplir  le champ";
                    }
                    return null;
                  },
                  controller: MailController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Telephone',
                    hintText:'Entrer votre Numéro de Téléphone',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value==null || value.isEmpty){
                      return "Tu dois Remplir  le champ";
                    }
                    return null;
                  },
                  controller: PhoneController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText:'Définir votre mot de passe',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value==null || value.isEmpty){
                      return "Tu dois Remplir  le champ";
                    }
                    return null;
                  },
                  controller: PassWordController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText:'Confirmer le mot de passe',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value==null || value.isEmpty){
                      return "Tu dois Remplir  le champ";
                    }
                    return null;
                  },
                  controller: RePassWordController,
                ),
              ),
              SizedBox(
             width: 50,
             height: 50,
             child: ElevatedButton(
                 onPressed: (){
                   if (_formKey.currentState!.validate()){
                     final Prenom= PrenomController.text;
                     final Nom= NomController.text;
                     final Email =MailController.text;
                     final Phone= PhoneController.text;
                     final Password= PassWordController.text;
                     final repeatPsswd=RePassWordController.text;
                     ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content:Text("Création de compte en cours..."))
                     );
                     FocusScope.of(context).requestFocus(FocusNode());
                   }
                 },
                 child: Text("Créer compte")
             ),
           )
            ],
          )
      ),
    );
  }
}

