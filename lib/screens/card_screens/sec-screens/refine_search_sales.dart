import 'package:flutter/material.dart';

class RefineSearchSales extends StatefulWidget {
  const RefineSearchSales({super.key});

  @override
  State<RefineSearchSales> createState() => _RefineSearchSalesState();
}

class _RefineSearchSalesState extends State<RefineSearchSales> {
  //dropdown's
  String? _selectedItem;
  final List<String> _items = [
    'Cash',
    'Debit',
    'Cash And Debit Both'
  ];

  //drop down 2
  String? _selectedItem2;

  final List<String> _items2=[
    'Ascending(Date)',
    'Descending(Date)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Refine Search',
          style: TextStyle(
              fontSize: 20
          ),),
        centerTitle: true,
      ),

      body: SizedBox(
        height:MediaQuery.sizeOf(context).height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),

              const Text('Product Name'),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Product Name',
                  prefixIcon: Icon(Icons.pin_invoke_sharp),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text('Vendor Name'),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Vendor Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //from date
              const Text('From Date',
                style: TextStyle(

                ),),
              const SizedBox(height: 10,),
              TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'From Date',
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  prefixIcon: Icon(Icons.shopping_bag_outlined,
                    color: Colors.green,),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter Sales Date';
                  }else{
                    return null;
                  }
                },

                onTap: () async{
                  DateTime? pickddate=await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2102)
                  );
                  if(pickddate!=null){
                    setState((){
                      // salesDateController.text=DateFormat('yyyy-MM-dd').format(pickddate);
                    });
                  }
                },


              ),
              const SizedBox(height: 20,),


              const Text('To Date',
                style: TextStyle(

                ),),
              const SizedBox(height: 5,),
              TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'To Date',
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  prefixIcon: Icon(Icons.shopping_bag_outlined,
                    color: Colors.green,),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter Sales Date';
                  }else{
                    return null;
                  }
                },

                onTap: () async{
                  DateTime? pickddate=await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2102)
                  );
                  if(pickddate!=null){
                    setState((){
                      // salesDateController.text=DateFormat('yyyy-MM-dd').format(pickddate);
                    });
                  }
                },
              ),

              const SizedBox(
                height: 20,
              ),

              const Text('Transaction Type',
                style: TextStyle(

                ),),
              const SizedBox(height: 10,),
              DropdownButtonFormField<String>(
                icon: const Icon(Icons.arrow_drop_down_outlined, color: Colors.green,),
                value: _selectedItem,
                onChanged: (String? value) {
                  setState(() {
                    _selectedItem = value;
                  });
                },
                items: _items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,
                      style: const TextStyle(color: Colors.green),),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select an option',
                  labelStyle: const TextStyle(color: Colors.green),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),

                ),
                // dropdownColor: Colors.grey.shade200,
              ),

              const SizedBox(
                height: 20,
              ),
              const Text('Sorting Type',
                style: TextStyle(

                ),),
              const SizedBox(height: 10,),
              DropdownButtonFormField<String>(
                icon: const Icon(Icons.arrow_drop_down_outlined, color: Colors.green,),
                value: _selectedItem2,
                onChanged: (String? value) {
                  setState(() {
                    _selectedItem2 = value;
                  });
                },
                items: _items2.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,
                      style: const TextStyle(color: Colors.green),),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select an option',
                  labelStyle: const TextStyle(color: Colors.green),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),

                ),
                // dropdownColor: Colors.grey.shade200,
              ),



            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: const Icon(Icons.check,
          color: Colors.green,

        ),
      ),


    );
  }
}
