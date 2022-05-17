import 'package:healthy/models/antrhopometri_model.dart';

class Utils {
  static double countData(HistoryAntrhopoModel historyAntrhopoModel) {
    final height = (double.parse(
                  historyAntrhopoModel.antrhopoModel.last.antrhopoHeight) /
              100) *
          (double.parse(
                  historyAntrhopoModel.antrhopoModel.last.antrhopoHeight) /
              100);
      final weight =
          double.parse(historyAntrhopoModel.antrhopoModel.last.antrhopoWeight);

      final imt = weight / height;

      final double x = double.parse('$imt');

      final String d = x.toStringAsFixed(1);

      final double result = double.parse(d);

      return result;
  }

  static String converToDesc(double result) {
    String desc = '-';
    if (result <= 17.0) {
      desc = 'Sangat Kurus';
    } else if (result > 17.0 && result <= 18.4) {
      desc = 'Kurus';
    } else if (result > 18.4 && result <= 25.0) {
      desc = 'Normal';
    } else if (result > 25.0 && result <= 27.0) {
      desc = 'Kelebihan Berat Badan (Grade 1)';
    } else if (result >= 27.0) {
      desc = 'Kelebihan Berat Badan (Grade 2)';
    } else {
      desc = 'Keterangan Tidak Ditemukan';
    }

    return desc;
  }
}
