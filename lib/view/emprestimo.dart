class Emprestimo {
  String _objeto;
  String _descricao;
  String _nomeLocador;
  bool _devolvido;
  DateTime _data;


  Emprestimo(this._descricao, this._objeto,this._nomeLocador,  this._devolvido, this._data);

  String get nomeLocador => _nomeLocador;

  set nomeLocador(String value) {
    _nomeLocador = value;
  }

  DateTime get data => _data;

  set data(DateTime value) {
    _data = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  String get objeto => _objeto;

  set objeto(String value) {
    _objeto = value;
  }


  bool get devolvido => _devolvido;

  set devolvido(bool value) {
    _devolvido = value;
  }

  Map getEmprestimo(){
    Map<String, dynamic> emprestimo = Map();
    emprestimo["objeto"] = _objeto;
    emprestimo["descricao"] = _descricao;
    emprestimo["data"] = _data;
    emprestimo["nomeLocador"] = _nomeLocador;
    emprestimo["devolvido"] = _devolvido;
    return emprestimo;
  }
}
