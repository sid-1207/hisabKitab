import 'package:flutter/material.dart';

class SalesForm extends StatefulWidget {
  @override
  _SalesFormState createState() => _SalesFormState();
  static const routeName='sales-form';
}

class _SalesFormState extends State<SalesForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController;
  static List<String> friendsList = [null];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Sales Info'),),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // name textfield
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your name'
                  ),
                  validator: (v){
                    if(v.trim().isEmpty) return 'Please enter something';
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20,),
              Text('Add Friends', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
              ..._getFriends(),
              SizedBox(height: 40,),
              FlatButton(
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    _formKey.currentState.save();
                  }
                },
                child: Text('Submit'),
                color: Colors.green,
              ),

            ],
          ),
        ),
      ),
      
    );
  }

  /// get firends text-fields
  List<Widget> _getFriends(){
    List<Widget> friendsTextFields = [];
    for(int i=0; i<friendsList.length; i++){
      friendsTextFields.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Expanded(child: FriendTextFields(i)),
              SizedBox(width: 16,),
              // we need add button at last friends row
              _addRemoveButton(i == friendsList.length-1, i),
            ],
          ),
        )
      );
    }
    return friendsTextFields;
  }

  /// add / remove button
  Widget _addRemoveButton(bool add, int index){
    return InkWell(
      onTap: (){
        if(add){
          // add new text-fields at the top of all friends textfields
          friendsList.insert(0, null);
        }
        else friendsList.removeAt(index);
        setState((){});
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: (add) ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon((add) ? Icons.add : Icons.remove, color: Colors.white,),
      ),
    );
  }


}

class FriendTextFields extends StatefulWidget {
  final int index;
  FriendTextFields(this.index);
  @override
  _FriendTextFieldsState createState() => _FriendTextFieldsState();
}

class _FriendTextFieldsState extends State<FriendTextFields> {
  TextEditingController _nameController;
  
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _nameController.text = _SalesFormState.friendsList[widget.index] ?? '';
    });

    return Column(
      children: [
         TextFormField(
          controller: _nameController,
          onChanged: (v) => _SalesFormState.friendsList[widget.index] = v,
          decoration: InputDecoration(
            hintText: 'Enter Receipient Companys name'
          ),
          validator: (v){
            if(v.trim().isEmpty) return 'Please enter something';
            return null;
          },
        ),
      ],
    );
  }
}