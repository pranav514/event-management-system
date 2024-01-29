import 'package:appwrite/appwrite.dart';
import 'package:ems/auth.dart';
import 'package:ems/saved_data.dart';

String databaseId = "65b746e28ea4d94567d0";

final Databases databases = Databases(client);

// save the user data to appwrite database
Future<void> saveUserData(String name, String email, String userId) async {
  return await databases
      .createDocument(databaseId: databaseId, collectionId: "65b74711884f99b6a05b", documentId: ID.unique(), data: {
        "name": name,
        "email": email,
        "userId": userId,
      })
      .then((value) => print("Document Created"))
      .catchError((e) => print(e));
}

// get user data from the database

Future getUserData() async {
  final id = SavedData.getUserId();
  try {
    final data = await databases.listDocuments(databaseId: databaseId, collectionId: "65b74711884f99b6a05b", queries: [
      Query.equal("userId", id),
    ]);
    SavedData.saveUserName(data.documents[0].data['name']);
    SavedData.saveUserEmail(data.documents[0].data['email']);

    SavedData.saveUserName(data.documents[0].data['name']);
    SavedData.saveUserEmail(data.documents[0].data['email']);
    print(data);
  } catch (e) {
    print(e);
  }
}
