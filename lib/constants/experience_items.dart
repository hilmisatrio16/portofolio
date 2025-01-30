class Experience {
  final String imgAsset;
  final String title;
  final String date;
  final List<String> details;

  Experience(
      {required this.imgAsset,
      required this.title,
      required this.date,
      required this.details});
}

List<Experience> listExperience = [
  Experience(
      imgAsset: "assets/bangkit.png",
      title:
          "Mobile Development - Bangkit Academy led by Google, Tokopedia, Gojek, & Traveloka",
      date: "August 2023 – December 2023",
      details: [
        "Attend all Bangkit Team Meeting and Instructor Led-Training sessions, which have 3 types (soft skills, english, and tech/hard skills).",
        "Understand some soft skills useful for entering the workforce, such as Growth Mindset, Adaptation Skills, Problem Solving, Communication Skill, Personal Branding, Time Management, and Teamwork.",
        "Finished learning English by completing the English exam organized by TBI (The British Institute).",
        "Finished every assignment for each week within the deadline.",
        "Completed all mandatory courses in the Android Learning Path on the Dicoding platform by submitting an Android project implementation each learning. These courses include Learn Basic UX Design, Getting Started with Basic Programming to Become a Software Developer, Introduction to Programming Logic (Programming Logic 101), Learn Basic Git with GitHub, Learn Basic Programming with Kotlin, Learn Android App Basics, Learn Fundamental Android, Learn Intermediate Android App Development, Learn SOLID Programming Principles, Learn to Become an Expert Android Developer, Learn to Build Android Apps with Jetpack Compose and Android Developer Associate Exam Simulation",
        "Collaborated with Cloud Computing and Machine Learning teams to create the C-Vision App (Cataract Eye Detection Application)."
      ]),
  Experience(
      imgAsset: "assets/binar_icon.png",
      title: "Android Engineering - Binar Academy",
      date: "February 2023 – June 2023",
      details: [
        "Understand the SDLC (Software Development Life Cycle) concept in application development.",
        "Understand the basic programming and logic in Kotlin programming language and be able to implement data structure, control flow, class, object, and function.",
        "Implementation of the OOP (Object Oriented Programming) paradigm and SOLID principles to develop applications that are structured and easy to maintain.",
        "Able to design UI (User Interface) using Activity and fragments to create responsive and interactive applications.",
        "Build Android Application using some Android Jetpack components (ViewModel, ViewBinding, DataBinding, LiveData, Navigation Component, etc.).",
        "Integrating the Android app with the server to retrieve and display data using Retrofit and Okhttp for http requests while managing local data storage with ROOM.",
        "Running background processes using coroutines for running tasks asynchronously.",
        "Implement clean code architecture, MVVM design pattern, and dependency injection using the Hilt Digger component to reduce application dependency.",
        "Able to perform application testing with unit testing using Mockito and UI testing using Espresso.",
        "Collaborated with Full Stack Developer teams to create the FlyId App (Booking Flight App)."
      ]),
];
