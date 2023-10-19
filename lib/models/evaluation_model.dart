// ignore_for_file: non_constant_identifier_names

class EvalModel {
  String CriminalLawJurisprudenceEval;
  String LEAEval;
  String ForensicCriminalisticEval;
  String CDIEval;
  String SocioCrimEthicsEval;
  String CorrectionalAdminEval;

  EvalModel(
      {required this.CriminalLawJurisprudenceEval,
      required this.LEAEval,
      required this.ForensicCriminalisticEval,
      required this.CDIEval,
      required this.SocioCrimEthicsEval,
      required this.CorrectionalAdminEval});

  Map<String, dynamic> toMap() {
    return {
      'CriminalLawJurisprudenceEval': CriminalLawJurisprudenceEval,
      'LEAEval': LEAEval,
      'ForensicCriminalisticEval': ForensicCriminalisticEval,
      'CDIEval': CDIEval,
      'SocioCrimEthicsEval': SocioCrimEthicsEval,
      'CorrectionalAdminEval': CorrectionalAdminEval
    };
  }

  @override
  String toString() {
    return 'EvalModel{CriminalLawJurisprudenceEval : $CriminalLawJurisprudenceEval, LEAEval : $LEAEval, ForensicCriminalisticEval : $ForensicCriminalisticEval, CDIEval : $CDIEval, SocioCrimEthicsEval : $SocioCrimEthicsEval, CorrectionalAdminEval : $CorrectionalAdminEval}';
  }
}
