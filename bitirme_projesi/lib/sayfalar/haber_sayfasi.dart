import 'package:bitirme_projesi/gorunum/listView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}


class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ListViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('AnaSayfa') ,
      ),
      body: ListView.builder(
          itemCount: vm.viewModel.nesneler.length ,
          itemBuilder: (context, index){
        return Card(
          child: Column(
            children: [
              Image.network(vm.viewModel.nesneler[index].imageUrl??
                  'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930'),
              ListTile(
                title: Text(vm.viewModel.nesneler[index].title??'',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black), ),
                subtitle: Text(vm.viewModel.nesneler[index].description??'İçerik yok.'),
              ),
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(vm.viewModel.nesneler[index].title??'',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black), ),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                child: Text(vm.viewModel.nesneler[index].description??'İçerik yok.'),
              )*/
            ],
          ),
        );
      }),
    );
  }
}
