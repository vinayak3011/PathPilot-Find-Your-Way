List<Map<String, dynamic>> places = [
  {
    "name": "Ms. Prajakta Pote",
    "img": "assets/images/user.jpeg",
    "contact": "Contact Details:",
    "contact details": "Phone number: 9167629334\nEmail id: prajakta.pote@sakec.ac.in",
    "location": "4th floor, Lab 403",
    "details": "Assistant Professor",
    "designation": "Teacher",
    "department": "Cyber Security",
  },
  {
    "name": "Dr. Nilakshi Jain",
    "img": "assets/images/user.jpeg",
    "contact": "Contact Details:",
    "contact details": "Phone number: 9967039388\nEmail id: hod.cs@sakec.ac.in",
    "location": "4th floor",
    "details": "HOD of Cyber Security Department",
    "designation": "HOD",
    "department": "Cyber Security",
  },
  {
    "name": "Ms. Mitali Sinha",
    "img": "assets/images/user.jpeg",
    "contact": "Contact Details:",
    "contact details": "Phone number: 9137023478\nEmail id: mitali.17401@sakec.ac.in",
    "location": "SE15",
    "details": "2nd year student\nCyber Security Department\nPermanent Roll no: 22UF17401CS054",
    "designation": "Student",
    "department": "Cyber Security",
  },
  {
    "name": "Ms. Neha Pawar",
    "img": "assets/images/user.jpeg",
    "contact": "Contact Details:",
    "contact details": "Phone number: 9167714424\nEmail id: neha.17030@sakec.ac.in",
    "location": "SE15",
    "details": "2nd year student\nCyber Security Department\nPermanent Roll no: 22UF17030CS042",
    "designation": "Student",
    "department": "Cyber Security",
  },
  // ... other places
];

List<Map<String, dynamic>> search(String query) {
  if (query.isEmpty) {
    return [];
  }
  return places.where((place) => place['name'].toLowerCase().contains(query.toLowerCase())).toList();
}

