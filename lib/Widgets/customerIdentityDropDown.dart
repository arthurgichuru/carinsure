import 'package:flutter/material.dart';

class CustomerIdentityDropDrown extends StatefulWidget{

  _CustomerIdentityDropDrown createState()=>_CustomerIdentityDropDrown();
}

class _CustomerIdentityDropDrown extends State<CustomerIdentityDropDrown>{

  List _documents = [
    "Passport",
    "National ID",
    "Alien ID",
    "Driving License"
  ];

  List<DropdownMenuItem<String>>_dropDownMenutItems;

  String _currentDocument;

  @override
  void initState(){
    _dropDownMenutItems = getDropDownMenuItems();
    _currentDocument = _dropDownMenutItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String documents in _documents) {
      items.add(
          new DropdownMenuItem(
              value: documents, child: new Text(documents)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      //margin: EdgeInsets.all(10),
      width: 100.0,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.grey)
      ),
      child: Padding(padding: const EdgeInsets.all(10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            value: _currentDocument,
            items: _dropDownMenutItems,
            onChanged: changedDropDownItem,
          ),
        ),
      ),
    );
  }
  void changedDropDownItem(String selectedDocument){
    setState(() {
      _currentDocument = selectedDocument;
    });
  }

}