import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokedexv2/services/base.dart';

class ItemService extends PokemonServiceBase {
  Future getItems(int offSet) async {
    Response response = await Dio().get(
      PokemonServiceBase().apiUrl + "/item/",
      queryParameters: {
        "offset": offSet,
      },
    );

    Map jsonResponse = json.decode(response.toString());

    return jsonResponse;
  }

  Future getItemInfo(String url) async {
    Response response = await Dio().get(url);

    Map jsonResponse = json.decode(response.toString());

    return jsonResponse;
  }
}
