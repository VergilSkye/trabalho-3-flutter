import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class ManipulaArquivo{
  Future<File> _getArquivo() async {
    final directory =await getApplicationDocumentsDirectory();
    return File("${directory.path}/emprestimos.json");
  }
  Future<String> readEmprestimo() async {
    try {
      final file = await _getArquivo();
      file.readAsString();
    } catch (e) {
      return null;
    }
  }
  Future<File> saveEmprestimo(List emprestimoList) async {
    print(emprestimoList);
    String data = json.encode(emprestimoList);
    final file = await _getArquivo();
    return file.writeAsString(data);
  }

}