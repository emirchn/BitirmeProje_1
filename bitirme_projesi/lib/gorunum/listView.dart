import 'package:bitirme_projesi/gorunum/view.dart';
import 'package:bitirme_projesi/servisler/services.dart';
import 'package:flutter/cupertino.dart';

//import '../modeller/nesneler.dart';

//enum Status{initial, loading, loaded}
class ListViewModel extends ChangeNotifier {
  ViewModel viewModel = ViewModel('top', []);
  //Status status = Status.initial;

Future<void> getHaberler() async{
    //status= Status.loading;
    notifyListeners();
    viewModel.nesneler = (await Services().haberGetir())!;
    //status= Status.loaded;
    notifyListeners();
  }
  ListViewModel(){
    getHaberler();
  }//İLK YAZDIĞMIZ KOD

/*
  Future<void> getHaberler(String kategori) async {
    status = Status.loading;
    notifyListeners();
    List<Articles>? articles = await Services().haberGetir(viewModel.kategori);
    if (articles != null) {
      viewModel.nesneler = articles;
    } else {
      throw Exception('Hata');
      // Hata yönetimi: articles null olduğunda ne yapılacağı
    }
    status = Status.loaded;
    notifyListeners();
  }*///İKİNCİ KOD

  /*Future<void> getHaberler(String kategori) async {
    status = Status.loading;
    notifyListeners();
    List<Articles>? articles = await Services().haberGetir(kategori);
    if (articles != null) {
      viewModel = ViewModel(kategori, articles);
    } else {
      throw Exception('Hata');
      // Hata yönetimi: articles null olduğunda ne yapılacağı
    }
    status = Status.loaded;
    notifyListeners();
  }*/
/*
  Future<void> getHaberler(String kategori) async {
    status = Status.loading;
    notifyListeners();
    List<Articles>? articles = await Services().haberGetir(viewModel.kategori);
    if (articles != null) {
      viewModel.nesneler = articles;
      status = Status.loaded;
    } else {
      // articles null ise hata mesajı göster
      status = Status.initial;
      throw Exception('Haberler yüklenirken bir hata oluştu. Lütfen tekrar deneyin.');
    }
    notifyListeners();
  }*/

  /*
  Future<void> getHaberler() async {
    status = Status.loading;
    notifyListeners();
    List<Articles>? articles = await Services().haberGetir();
    if (articles!.isNotEmpty) {
      viewModel.nesneler = articles;
      status = Status.loaded;
    } else {
      // hata durumunda status'u initial olarak güncelle
      status = Status.initial;
    }
    notifyListeners();
  }*/

}

