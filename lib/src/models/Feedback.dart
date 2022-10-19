import 'package:flutter/material.dart';

class Feedback {
  final String? name, title, review, userPic, role, rockIn, coolIn, date;
  final int? id;
  final Color? color;

  Feedback({
    this.name,
    this.title,
    this.review,
    this.userPic,
    this.id,
    this.color,
    this.role,
    this.rockIn,
    this.coolIn,
    this.date,
  });
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Jose Alberto Alanya Gomez",
    title: "Exceed Expectations",
    review:
        "He is really very professional and focused on his work. Despite the difficult deadlines for the Code implementation and technical challenges, he maintains a positive attitude.\nHe responds to problems without getting upset or frustrated. His most outstanding value from what I have seen is his attitude and his enthusiasm for continuous learning and sharing new technical stuff to improve the product at technical level.",
    userPic: "assets/images/people_jose.jpeg",
    color: const Color(0xFFFFF3DD),
    role: "Senior app developer",
    rockIn:
        "Collaborative, Inclusive, Clear Thinker, With Integrity, Committed",
    coolIn: "Focused, Fast Learner, Innovative, Flexible",
    date: "01/01/2022 - 08/31/2022",
  ),
  Feedback(
    id: 2,
    name: "Nicolas Dario Manzato",
    title: "Exceed Expectations",
    review:
        "Binni has been showing a lot of potential in his work, always looking for feedback about the tasks that he has been working on in search of improving himself every day, as well as giving his own opinion on solutions that come from other teammates' issues. Also, Binni is remarkable with his knowledge about React Native having a lot of experience with it and because of it he is always providing technical support or ideas of how to improve things in the context of our whole team during ceremonies like refinements and planning sessions.",
    userPic: "assets/images/people_nicolas.jpeg",
    color: const Color(0xFFD9FFFC),
    role: "App Team Leader",
    rockIn: "With Integrity, Focused, Fast Learner, Inclusive, Collaborative",
    coolIn: "Flexible, Clear Thinker, Committed",
    date: "01/01/2022 - 07/31/2022",
  ),
];
