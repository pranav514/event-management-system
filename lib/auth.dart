import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:ems/saved_data.dart';
import 'package:ems/views/database.dart';

Client client = Client().setEndpoint('https://cloud.appwrite.io/v1').setProject('65b6843137928d08e7f3').setSelfSigned(status: true); // For self signed certificates, only use for development

Account account = Account(client);
Future<String> createUser(String name, String email, String password) async {
  try {
    final user = await account.create(userId: ID.unique(), email: email, password: password, name: name);
    saveUserData(name, email, user.$id);
    return "success";
  } on AppwriteException catch (e) {
    return e.message.toString();
  }
}

// Login User

Future loginUser(String email, String password) async {
  try {
    final user = await account.createEmailSession(email: email, password: password);
    getUserData();
    SavedData.saveUserId(user.userId);
    return true;
  } on AppwriteException catch (e) {
    return false;
  }
}

//logout the user
Future logoutUser() async {
  await account.deleteSession(sessionId: 'current');
}

//check if user have an active session or not

Future checkSessions() async {
  try {
    await account.getSession(sessionId: 'current');
    return true;
  } catch (e) {
    return false;
  }
}
