class HistoryActivityModel {
  final String date;
  final List<ActivityModel> activityModel;

  HistoryActivityModel({required this.date, required this.activityModel});
}

class ActivityModel {
  final String activityName;
  final String activityTime;
  final String descriptionActivity;

  ActivityModel(
      {required this.activityName,
      required this.activityTime,
      required this.descriptionActivity});
}

final List<HistoryActivityModel> mockHistoryActivityModel = [
  HistoryActivityModel(
    date: "29/04/2022",
    activityModel: [
      ActivityModel(
        descriptionActivity: "Bangun Tidur - Jam 12 Siang",
        activityName: "Berlari",
        activityTime: "30",
      ),
      ActivityModel(
        descriptionActivity: "Jam 12 Siang - Jam 6 Sore",
        activityName: "Tidur",
        activityTime: "120",
      ),
      ActivityModel(
        descriptionActivity: "Jam 6 Sore - Jam 10 Malam",
        activityName: "Berlari",
        activityTime: "30",
      ),
      ActivityModel(
        descriptionActivity: "Jam 10 Malam - Bangun Tidur",
        activityName: "Tidur",
        activityTime: "120",
      ),
    ],
  ),
  HistoryActivityModel(
    date: "30/04/2022",
    activityModel: [
      ActivityModel(
        descriptionActivity: "Bangun Tidur - Jam 12 Siang",
        activityName: "Test1",
        activityTime: "3",
      ),
      ActivityModel(
        descriptionActivity: "Jam 12 Siang - Jam 6 Sore",
        activityName: "Test2",
        activityTime: "121",
      ),
      ActivityModel(
        descriptionActivity: "Jam 6 Sore - Jam 10 Malam",
        activityName: "Test3",
        activityTime: "31",
      ),
      ActivityModel(
        descriptionActivity: "Jam 10 Malam - Bangun Tidur",
        activityName: "Test4",
        activityTime: "122",
      ),
    ],
  ),
];
