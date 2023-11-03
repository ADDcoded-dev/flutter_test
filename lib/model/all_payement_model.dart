class AllPaiementModel {
  String? paiementNumber;
  int? paiementMontant;
  String? dateDeparture;
  String? dateReturn;
  String? paiementMeansPaie;
  String? date;

  AllPaiementModel(
      {this.paiementNumber,
      this.paiementMontant,
      this.dateDeparture,
      this.dateReturn,
      this.paiementMeansPaie,
      this.date});

  AllPaiementModel.fromJson(Map<String, dynamic> json) {
    paiementNumber = json['paiement_number'];
    paiementMontant = json['paiement_montant'];
    dateDeparture = json['date_departure'];
    dateReturn = json['date_return'];
    paiementMeansPaie = json['paiement_means_paie'];
    date = json['date'];
  }
}
