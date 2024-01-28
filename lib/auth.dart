import 'package:appwrite/appwrite.dart';

Client client = Client()

    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('65b6843137928d08e7f3')
    .setSelfSigned(status: true); // For self signed certificates, only use for development