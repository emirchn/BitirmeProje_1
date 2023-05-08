import 'dart:convert';

import 'package:bitirme_projesi/modeller/haberler.dart';
import 'package:bitirme_projesi/modeller/nesneler.dart';
import 'package:http/http.dart' as http;
/*
class Services{
  Future<List<Articles>?> haberGetir(String kategori) async {
    String url='https://newsdata.io/api/1/news?country=tr&category=$kategori&apikey=pub_21774f649be10f77893810f1d0520d500d566';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    if(response.statusCode==200){
      final result = json.decode(response.body);
      Haberler haber = Haberler.fromJson(result);
      return  haber.articles;
    }
    throw Exception('Hata');
  }
}//https://newsapi.org/v2/top-headlines?country=tr&category=$kategori&apiKey=c5954f73150b4210ad6c4b9b0443c8e0 */
//ESKİ KOD

class Services {

  Future<List<Articles>?> haberGetir() async {
    String url =
        'https://newsdata.io/api/1/news?country=tr&category=top&apikey=pub_21774f649be10f77893810f1d0520d500d566';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    try {
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        Haberler haber = Haberler.fromJson(result);
        return haber.articles;
      } else {
        throw Exception('API bağlantı hatası: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('hata');
    }
  }
}
