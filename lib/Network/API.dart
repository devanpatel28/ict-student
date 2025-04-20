String host = "https://trivially-active-bream.ngrok-free.app";
String serverPath = "/ict-server/api/index.php";

String currentVersion = "1.0";
String validApiKey = "ictmu";
String updateURL = 'https://devanpatel28.blogspot.com/';

String updatePasswordAPI = '$host$serverPath/Password/updatePassword';

String validateVersionAPI = '$host$serverPath/AppVersion/check';
String validateLoginAPI = '$host$serverPath/Student/login';
String validateLogoutAPI = '$host$serverPath/Student/logout';

String totalAttendanceAPI = '$host$serverPath/Attendance/TotalAttendance';
String attendanceByDateAPI = '$host$serverPath/Attendance/AttendanceByDate';

String facultyContactAPI = '$host$serverPath/Parent/getFacultyContact';
String timetableAPI = '$host$serverPath/Parent/getStudentTimetable';

String examListAPI = '$host$serverPath/Exam/getExamList';

String holidayListAPI = '$host$serverPath/Holiday/getAllHolidays';
String upcomingHolidayAPI = '$host$serverPath/Holiday/getNextUpcomingHoliday';

String recentlyPlacedAPI = '$host$serverPath/Placement/recentlyPlaced';
String companyListAPI = '$host$serverPath/Placement/companyList';
String campusDriveListAPI = '$host$serverPath/Placement/campusDriveByStudentList';
String statusUpdateCampusDriveAPI = '$host$serverPath/Placement/statusUpdateCampusDrive';
String campusDriveStudentRoundsAPI = '$host$serverPath/Placement/campusDriveStudentRoundList';

String leaveRequestAPI = '$host$serverPath/Leave/leaveRequest';
String leaveHistoryAPI = '$host$serverPath/Leave/getLeaveHistory';

String interviewBankListAPI = '$host$serverPath/InterviewBank/list';

String eventListAPI = '$host$serverPath/Event/list';
String upcomingEventAPI = '$host$serverPath/Event/getUpcomingEvent';

String feedbackHistory = '$host$serverPath/Feedback/by-student';
String feedbackAdd = '$host$serverPath/Feedback/add';
String facultyListAPI = '$host$serverPath/Faculty/getFacultyListByStudent';

String studentImageAPI(gr) {
  String api =
      "https://student.marwadiuniversity.ac.in:553/handler/getImage.ashx?SID=$gr";
  return api;
}

String facultyImageAPI(fId) {
  String api =
      "https://marwadieducation.edu.in/MEFOnline/handler/getImage.ashx?Id=$fId";
  return api;
}
