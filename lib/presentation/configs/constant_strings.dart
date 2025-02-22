import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/data/model/activity.dart';
import 'package:portfolio/data/model/experience.dart';
import 'package:portfolio/data/model/project_info.dart';
import 'package:portfolio/data/model/quote.dart';
import 'package:portfolio/data/model/route_model.dart';
import 'package:portfolio/data/model/showcase_project.dart';
import 'package:portfolio/data/model/social_media.dart';
import 'package:portfolio/presentation/configs/configs.dart';
import 'package:portfolio/presentation/route/routes.dart';

/// constant strings are prefixed with [ks]
const String ksFontFamily = "ShantellSans";

const String ksFlutterDeveloperAnd = "Flutter Developer";
const String ksAiMlEnthusiast = "AI/ML Enthusiast";
const String ksAiEnthusiast = "ai enthusiast";
const String ksTechNerd = "a  tech  nerd";
const String ksFlutterDev = "flutter  dev";
const String coffeeAddict = "coffee addict";
const String ksIntrovert = "an introvert";
const String ksIm = "I'm";
const String ksIntro = """
  Hi, I'm Mohamed Abdel Halim
    - a passionate mobile developer
    - a CS student from Tanta University
    - a tech enthusiast
  """;
const String ksSeeMyWork = "See my work";
const String ksBrowseProjects = "Browse My Projects";
const String ksWhatElse =
    "What else? I have freelanced on several side projects.";
const String ksSayHello = "Just say Hello to collaborate!";
const String ksHome = "Home";
const String ksAbout = "About";
const String ksExperience = "My Experience";
const String ksCertificates = "Certificates";
const String ksProject = "My Projects";
const String ksViewProject = "View Project";
const String ksBuiltWithPassion = "Built with Passion";
const String ksRecentProjects = "Here are a selection of my recent projects";
const String ksCraftedProjects =
    'Here are some of my carefully crafted projects';
const String ksContact = "Contact Me";
const String ksAboutMe = "About Me";
const String ksBgStory = "Background Story";
const String ksTools = "Tools & Technology";
const String ksAllAboutMe = "All About Me";
const String ksGithub = "Github";
const String ksLinkedIn = "LinkedIn";
const String ksDiscord = "Discord";
const String ksSendMessage = 'Send Message';

const String ksSlash = "/";
const String ksLetsWork = "Let's work together!";
const String ksFreelanceAvailability = "I'm available for Freelancing";
const String ksContactInfo = "- Contact Info";
const String ksWorkEmail = "mohamedhalem909@gmail.com";
const String ksWorkPhone = "+20 1018429247";
const String ksCreditTo = "- Big Thanks";
const String ksDavidCobbina = "David Cobbina";
const String ksDavidCobbinaWebsite = "https://davidcobbina.com/";
const String ksYeLwinOo = "Ye Lwin Oo";
const String ksYeLwinOoWebsite = "https://www.linkedin.com/in/ye-lwin-oo-ucsm/";
const String ksJuliusG = "Design by Julius G";
const String ksJuliusGWebsite =
    "https://www.behance.net/gallery/63574251/Personal-Portfolio-Website-Design";
const String ksBuildUsing = "Build using ";
const String ksWithMuch = " with much ";
const String ksCC = "©️ 2023 Ye Lwin Oo";
const String ksYoung = "When I was young, I was a kid!";
const String ksNobody = "I'm NOBODY";
const String ksSpecialization =
    "I specialize in Mobile Technologies and highly passionate about developing quality applications, open-source works and AI.";
const String ksWhoAmI = 'Who Am I?';
const String ksWhatILove = "What I Love To Do";
const String ksBriefAboutMe =
    "Hi! I'm a Front-end Software Engineer who is passionate about emerging Technologies and AI. I have fairly extensive amount of experience in developing high quality applications. I often work on freelance projects.";
const String ksMyLife =
    "I was a third year student from the University of Computer Studies, Mandalay, Myanmar. But I dropped out in 2020 because of Military Coup & COVID-19.";
const String ksProfession =
    "I started working as a Flutter Developer since 2019. Later, I fell in love with it. I'm eager to contribute in Flutter community. Recently, I've published my first state management package: Pulse-X and animated button library: Pretty Animated Buttons.";

const String ksMyTools =
    "I use a bunch of tools and technologies to make design and implementation process easier. ";
const String ksWeapon = "My favorite choice of weapon is ";
const String ksFlutter = "Flutter & Dart";

const String ksMobile = 'Mobile Technologies';
const String ksWebAndOther = 'Web & Other Technologies';
final List<String> ksMobileTech = ['Flutter', 'Dart'];
// final List<String> ksWebTech = [
//   'HTML',
//   'CSS',
//   'Three Js',
//   'C',
//   'Java',
// ];
// final List<String> ksOtherTech = [
//   'Firebase',
//   'GraphQL',
//   'Appwrite',
//   'MongoDB',
//   'SQL',
//   'Python',
// ];

const String ksCoding = "Software Engineering";
const String ksCodingMobile = "Software\nEngineering";
const String ksCoffee = "Coffee";
const String ksReading = "Reading";
const String ksMusic = "80's,90's Music";
const String ksMusicMobile = "80's,90's\nMusic";
const String ksMovie = "Movies";
const String ksExplore = "Exploring more...";
const String ksExploreMobile = "Exploring\nmore...";

final List<RouteModel> ksMenu = [
  RouteModel(label: ksHome, route: Routes.home),
  RouteModel(label: ksProject, route: Routes.projects),
  RouteModel(label: ksExperience, route: Routes.experience),
  // RouteModel(label: ksCertificates, route: Routes.certificates),
  // RouteModel(label: ksAbout, route: Routes.about),
  // RouteModel(label: ksContact, route: Routes.contact),
  RouteModel(label: ksContact, route: Routes.home),
];

const String ksAwardsAndActivities = "Awards & Activities";
const String ksAward = "Award I've won";
const String ksAwardName = "Design Award by WIT (Web Innovative Talent Award)";
const String ksAwardLink = "https://witaward.com/result/2020";
const String ksAwardDetails = """
- The biggest web development contest in Myanmar ( collaboration with Japan )
- This project aims for foreigners and Myanmar citizens who are enthusiastic about Myanmar culture, cuisine, handicrafts and who want to pay a visit to famous places in Myanmar and who want to enhance their knowledge about various ethnic groups in Myanmar.
""";
const String ksActivities = "Activities I've joined";
final List<Activity> ksActivityList = [
  Activity(
    title: ksAward,
    name: ksAwardName,
    icon: kiTrophy,
    details: ksAwardDetails,
    link: ksAwardLink,
  ),
  Activity(
    title: ksActivities,
    name:
        "TFI SCALE Program (Temasek Foundation International Specialists' Community Action andLeadership Exchange Program - Singapore)",
    icon: kiActivity,
    details:
        "This is a five-week Exchange Program with Singapore Polytechnic ( 3-weeks in Singapore and 2-weeks in Myanmar Learnt data analytics, design thinking and co-operation skills and applied them on the Coffee Farm Project",
  ),
  Activity(
    name:
        "JST Japan-Asia Youth Program (Sakura Science Exchange Program - Japan)",
    icon: kiActivity,
    details:
        "This is a 9-days Exchange Program at Miyakonojo College, Miyazaki, Japan\nLearnt basic IOT and made the POINT Traffic Control System ( Traffic lights control system with extended functionalities such as alerts when driver recklessly drive while red light is on )",
  ),
];

final List<Experience> ksExperiences = [
  Experience(
    company: "Deolang",
    position: "Flutter Developer (Intern)",
    responsibilities: [
      "Developed and maintained mobile applications using Flutter",
      "Worked on the development of ReBuy App",
      "Using supabase for backend services",
      "Make app responsive in different screens"
    ],
    startDate: DateTime(2025, 1),
    endDate: DateTime.now(),
  ),
];

// final List<Certificate> ksCertificateList = [
//   Certificate(
//     name: "GraphQL Associate Certificate",
//     image: kaGraphQLCerti,
//     link: "",
//   ),
//   Certificate(
//     name: "Deep Learning Specialization (Coursera)",
//     image: kaDeepLearningCerti,
//     link: "",
//   ),
//   Certificate(
//     name: "Intermediate Python (DataCamp)",
//     image: kaPythonCerti,
//     link: "",
//   ),
//   Certificate(
//     name: "JST Japan-Asia Youth Exchange Program",
//     image: kaJSTCerti,
//     link: "",
//   ),
//   Certificate(
//     name: "TF SCALE Leadership Exchange Program",
//     image: kaTMESEKCerti,
//     link: "",
//   ),
// ];

const String _nikolaTesla = "Nikola Tesla";
const String _kentBeck = "Kent Beck";
const String _linusTorvalds = "Linus Torvalds";
const String _donaldKnuth = "Donald Knuth";
const String _albertEinstein = "Albert Einstein";
const String _alanTuring = "Alan Turing";
const String _johnLennon = "John Lennon";
const String _steveJobs = "Steve Jobs";
const String _kurtCobain = "Kurt Cobain";
const String _jamesClear = "James Clear";
final List<Quote> ksQuotes = [
  Quote(
    name:
        "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
    author: _nikolaTesla,
  ),
  Quote(
    name:
        "I’m not a great programmer. I’m just a good programmer with great habits.",
    author: _kentBeck,
  ),
  Quote(
    name: "I'm generally a very pragmatic person: that which works, works.",
    author: _linusTorvalds,
  ),
  Quote(
    name: "Premature optimization is the root of all evil.",
    author: _donaldKnuth,
  ),
  Quote(
    name:
        "Everyday life is like programming, I guess. If you love something you can put beauty into it.",
    author: _donaldKnuth,
  ),
  Quote(
    name: "A person who never made a mistake never tried anything new.",
    author: _albertEinstein,
  ),
  Quote(
    name: "I have no special talent. I am only passionately curious.",
    author: _albertEinstein,
  ),
  Quote(
    name:
        "Sometimes it is the people who no one imagines anything of who do the things that no one can imagine.",
    author: _alanTuring,
  ),
  Quote(
    name: "Life is what happens when you're busy making other plans.",
    author: _johnLennon,
  ),
  Quote(
    name: "The duty of youth is to challenge corruption.",
    author: _kurtCobain,
  ),
  Quote(
    name: "Stay hungry, stay foolish.",
    author: _steveJobs,
  ),
  Quote(
    name: "It's hard to build momentum if you're dividing your attention.",
    author: _jamesClear,
  ),
  Quote(
    name: "Deconstruction creates knowledge. Recombination creates value.",
    author: _jamesClear,
  ),
];

const String ksFacebookLink = 'https://www.facebook.com/M.Halem.124';
const String ksGithubLink = 'https://github.com/xXhalemXx';
const String ksLinkedInLink = 'https://www.linkedin.com/in/mohamed-halim990/';
final List<SocialMedia> ksSocialMedia = [
  SocialMedia(
    link: ksFacebookLink,
    icon: FaIcon(
      FontAwesomeIcons.facebook,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksGithubLink,
    icon: FaIcon(
      FontAwesomeIcons.github,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksLinkedInLink,
    icon: FaIcon(
      FontAwesomeIcons.linkedin,
      color: kSecondary,
      size: s18,
    ),
  ),
  // SocialMedia(
  //   link: ksMediumLink,
  //   icon: FaIcon(
  //     FontAwesomeIcons.medium,
  //     color: kSecondary,
  //     size: s18,
  //   ),
  // ),
  // SocialMedia(
  //   link: ksStackoverflowLink,
  //   icon: FaIcon(
  //     FontAwesomeIcons.stackOverflow,
  //     color: kSecondary,
  //     size: s18,
  //   ),
  // ),
  // SocialMedia(
  //   link: ksDiscordLink,
  //   icon: FaIcon(
  //     FontAwesomeIcons.discord,
  //     color: kSecondary,
  //     size: s18,
  //   ),
  // ),
];

const String _FLUTTER = 'Flutter';
const String _DART = 'Dart';
const String _FIREBASE = 'Firebase';
const String _ME = 'Mohamed Abdel Halim';
const String _ANDROID = 'Android';
const String _IOS = 'Ios';

final List<ShowcaseProject> ksShowcaseProjects = [
  ShowcaseProject(
    title: 'E-Sheet Attendance Management System',
    image: kaESheet,
    shortDescription:
        "E-sheet is an app designed to simplify the process of taking attendance for students.",
    description: """
        E-sheet is an innovative app designed to simplify the process of taking attendance. It offers several key features:
          - Attendance Management.
          - Data Export.
          - Device-to-Device Communication.
          - User-Friendly Interface.
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/xXhalemXx/E-sheet",
      ],
    ),
    heroTag: 'eSheet',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'app',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'state management',
        'responsive design',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
        'Sqlite',
        'HotSpot',
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Task Management App',
    image: kaTaskApp,
    shortDescription:
        "EraaSoft Task Manager App is a powerful and intuitive task management tool",
    description: """
        EraaSoft Task Manager App is a powerful and intuitive task management tool. It includes four main features:
          - Offline Functionality
          - Task Organization by Categories
          - Persistent Login & Secure Sync
          - Account Control
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://github.com/xXhalemXx/EraaSoft-task-app",
        ]),
    heroTag: 'taskApp',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'app',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'tasks',
        'offline_functionality',
        'account_control',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
        'Restful API',
        'Hive',
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'ChitChat App',
    image: kaChitChatApp,
    shortDescription:
        "ChitChat App is a powerful and intuitive chat application",
    description: """
        ChitChat App is a powerful and intuitive chat application. It includes three main features:
          - realtime messaging
          - profile management
          - Persistent Login
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://github.com/xXhalemXx/chitchat",
        ]),
    heroTag: 'chitchat',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'app',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'messaging',
        'account_control',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
        'Firebase',
        'Secure Storage',
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'E-Shop App',
    image: kaShopApp,
    shortDescription:
        "An e-commerce app created to learn API handling and implement animations",
    description: """
        mobile application designed to interact with a shop API. It includes four main features:
          - Product Listings
          - User Interaction
          - API Integration
          - Smooth Animations
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://github.com/xXhalemXx/Shop_app",
        ]),
    heroTag: 'shopApp',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'app',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'e-commerce',
        'account_control',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
        'Restful API',
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
];
