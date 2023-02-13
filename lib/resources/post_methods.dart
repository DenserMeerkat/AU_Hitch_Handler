import 'dart:io';

class DomainList {
  static List<String> domainsList = [
    "Administration",
    "Examination",
    "Cleanliness & Sanitation",
    "Department Issues",
    "Hostel or Mess",
    "Wifi Connection",
    "Placement/Internship Issues",
    "Student Exchange Program",
    "Infrastructural/Logistics",
    "Faculty’s Issues",
    "Project/ Startup Issues",
    "Admission Issues",
    "Sports Issues",
    "Affiliated College Issues",
    "Research related Issues",
    "Common student Issues",
    "Amenities ",
  ];
  static List<String> getSuggestions(String query) {
    List<String> matchList = [];
    domainsList.forEach((element) =>
        matchList.contains(element) ? null : matchList.add(element));
    matchList.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matchList;
  }
}

class LocationList {
  static List<String> locationsList = [
    "Main Gallery",
    "Mini Gallery",
    "Sports Ground",
    "Student Amenicities Centre",
    "Co-operative Society",
    "University Library",
    "Ramanujam Computing Centre",
    "Red Building",
    "Knowledge Park",
    "Manufacturing Dept.",
    "EEE Dept.",
    "CSE Dept.",
    "Manufacturing Dept.",
    "ECE Dept.",
    "Printing Dept.",
    "IT Dept.",
    "Coffee Hut",
    "CEG Canteen",
    "ACTech Canteen",
  ];
  static List<String> getSuggestions(String query) {
    List<String> matchList = [];
    locationsList.forEach((element) =>
        matchList.contains(element) ? null : matchList.add(element));
    matchList.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matchList;
  }
}

// class UploadFile {
//   late File imageFile;
//   late int index;

//   UploadFile({required File imageFile, required int index}) {
//     this.imageFile;
//     this.index;
//   }
// }

class UploadFileList {
  static int _lenth = 0;
  static List<File> _uploadFileList = [];

  static String appendFile(File image) {
    if (_lenth < 5) {
      _uploadFileList.add(image);
      _lenth += 1;
      return "success";
    } else {
      return "Error : Overflow";
    }
  }

  static int currLength() {
    return _lenth;
  }

  static File retrieveFile(int index) {
    return _uploadFileList[index];
  }

  static List<File> retrieveFileList() {
    return _uploadFileList;
  }

  static String deleteFile(int index) {
    if (index >= 0 && index <= 5) {
      _uploadFileList.removeAt(index);
      _lenth -= 1;
      return "success";
    } else {
      return "Error in removing";
    }
  }

  static String clearFileList() {
    try {
      _uploadFileList.clear();
      _lenth = 0;
      return "success";
    } on Exception catch (e) {
      return "Error: ran into exception - $e";
    }
  }

  static int searchFileList(File file) {
    return _uploadFileList.indexOf(file);
  }
}
