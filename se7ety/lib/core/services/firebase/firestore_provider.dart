import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:se7ety/features/auth/data/model/doctor_model.dart';
import 'package:se7ety/features/auth/data/model/patient_model.dart';

class FirebaseProvider {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static final patientCollection = _firestore.collection("patient");
  static final doctorCollection = _firestore.collection("doctor");

  static User? get currentUser => _auth.currentUser;

  static Future<void> addPatient(PatientModel patient) async {
    await patientCollection.doc(patient.uid).set(patient.toJson());
  }

  static Future<void> addDoctor(DoctorModel doctor) async {
    await doctorCollection.doc(doctor.uid).set(doctor.toJson());
  }

  static Future<void> updateDoctor(DoctorModel doctor) async {
    await doctorCollection.doc(doctor.uid).update(doctor.toUpdateData());
  }

  static Future<QuerySnapshot> getDoctors() async {
    return await doctorCollection.get();
  }

  static Future<QuerySnapshot> sortingDoctors() {
    return doctorCollection
        .where("specialization", isNull: false)
        .orderBy("rating", descending: true)
        .get();
  }
}




// Firestore (Main Database) -> Patients, Doctors, Appointments, 

// Structure => Collection => Documents (id, data {key: value})

// SET => Create / Add
// UPDATE => Update (only the fields you provide) , required doc id
// DELETE => Delete => required doc id

// GET 
// 1) Specific Document => required doc id ==> collection.doc(id).get()
// 2) All Documents => collection.get()
// 3) Filtered Documents:
// - Sorting => .orderBy("rating", descending: true)
// - Matching a value / Filter => .where("specialization", isEqualTo: "دكتور قلب")
// - Searching => .startAt(['mo']).endAt(['mo' + ''])
// - Pagination => .limit(10)
// - Range => .where("age", isGreaterThan: 18)



// FutureBuilder => get()
// StreamBuilder => snapshots()



