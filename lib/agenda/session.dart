class SessionsData {
  List<Session> sessions;

  SessionsData({this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      sessions = new List<Session>();
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Session {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String track;

  Session({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerInfo,
    this.speakerId,
    this.track,
  });

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['track'] = this.track;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be mobile, web and cloud (Make it web by default or if the track type is not clear.)

List<Session> takshak = [
  Session(
    sessionId: "1",
    sessionStartTime: "31st-4th",
    sessionTotalTime: "All Day",
    sessionTitle: "Mystic Minds 3.0",
    sessionDesc: """ 

P.O.C.S.
Debraj Dawn: 8145444454

PRIZES
Prize Worth: 10000 INR

REGISTRATION FEE
Individual: 150
Group: 200 
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/62f0fae5d3664613b1ad0874c395a7ca.jpg/v1/fill/w_1354,h_373,al_c,q_85,usm_0.66_1.00_0.01/62f0fae5d3664613b1ad0874c395a7ca.webp",
    speakerName: "Turning Ideas into Quality",
    speakerDesc: "Can you think like an Entrepreneur? ",
    track: "cloud",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "31st-4th",
    sessionTotalTime: "All Day",
    sessionTitle: "Best Manager",
    sessionDesc: """ 

P.O.C.S.
MEHOOL SINGH  7840010988
CHARMI BAROT  7046768554 

PRIZES
Prize Worth: 4000 INR

REGISTRATION FEE
Individual: 150
              
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_54efbadf47ae4d4d920caeaa467a045c~mv2.jpg/v1/fill/w_1018,h_394,al_c,q_85/9a7d16_54efbadf47ae4d4d920caeaa467a045c~mv2.webp",
    speakerName: "Exploring the Skills of Future Manager",
    speakerDesc: "Are you the best? ",
    track: "cloud",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "30th-4th",
    sessionTotalTime: "All Day",
    sessionTitle: "HR Inratta 4.0",
    sessionDesc: """ 

P.O.C.S.
Ramakrishna-7978362199
Madhavi- 8424003812

PRIZES
Prize Worth: 9000 INR

REGISTRATION FEE
Individual: 150
Team(2): 200
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_0506a788e2194145bb77c3271912b283~mv2.jpg/v1/fill/w_1078,h_457,al_c,q_85/9a7d16_0506a788e2194145bb77c3271912b283~mv2.webp",
    speakerName: "Beware when you are on the chair",
    speakerDesc: "Are you handle the heat? ",
    track: "cloud",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "31st-3rd",
    sessionTotalTime: "All Day",
    sessionTitle: "Agrovision 3.0",
    sessionDesc: """ 

P.O.C.S.
Adheeraj: 6370490216
Maneesha: 7735509132

PRIZES
Prize Worth: 3000 INR

REGISTRATION FEE
Individual: 150
                    
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/nsplsh_4d366557764c6232455959~mv2_d_9600_7200_s_4_2.jpg/v1/fill/w_1354,h_530,al_c,q_85,usm_0.66_1.00_0.01/nsplsh_4d366557764c6232455959~mv2_d_9600_7200_s_4_2.webp",
    speakerName: "Cultivating ideas for growth",
    speakerDesc: "Can you make humanity sustainable? ",
    track: "cloud",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "31st-4th",
    sessionTotalTime: "All Day",
    sessionTitle: "Storm the Norm 4.0",
    sessionDesc: """ 

P.O.C.S.
Pooja Sarode: 8625048071
Chaitanya Vijayvargiya: 7550170409 

PRIZES
Prize Worth: 7000 INR

REGISTRATION FEE
Individual: 200
                    
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/nsplsh_5359544f33787330366655~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_1354,h_540,al_c,q_85,usm_0.66_1.00_0.01/nsplsh_5359544f33787330366655~mv2_d_6000_4000_s_4_2.webp",
    speakerName: "Gain the market",
    speakerDesc: "Can you handle the market? ",
    track: "cloud",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "30th-1st",
    sessionTotalTime: "All Day",
    sessionTitle: "Modus Operandi",
    sessionDesc: """ 

P.O.C.S.
Harish Gupta 973086263
Aayushi Gupta 7895421013 

PRIZES
Prize Worth: 6000 INR

REGISTRATION FEE
Individual: 200
                    
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_158cdee3cc0b4cf4b20b1ad2b69c0cb4~mv2.jpg/v1/fill/w_1006,h_380,al_c,q_85/9a7d16_158cdee3cc0b4cf4b20b1ad2b69c0cb4~mv2.webp",
    speakerName: "Handle the Operations",
    speakerDesc: "Can you do it all on the field? ",
    track: "cloud",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "31st-3rd",
    sessionTotalTime: "All Day",
    sessionTitle: "Arthyudh",
    sessionDesc: """ 

P.O.C.S.
Vinita Asrani 8866003183
Vipul Patil 9970883127

PRIZES
Prize Worth: 5000 INR

REGISTRATION FEE
Team(2): 200
Team(3): 300
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/nsplsh_356747636e325052727463~mv2_d_5760_3840_s_4_2.jpg/v1/fill/w_1354,h_494,al_c,q_85,usm_0.66_1.00_0.01/nsplsh_356747636e325052727463~mv2_d_5760_3840_s_4_2.webp",
    speakerName: "Quick with money",
    speakerDesc: "Can you manage the risk? ",
    track: "cloud",
  ),
];




List<Session> umang = [
  Session(
    sessionId: "1",
    sessionStartTime: "4th",
    sessionTotalTime: "10 am",
    sessionTitle: "Hues",
    sessionDesc: """ 

P.O.C.S.
Simran Sinha: 9668520806

PRIZES
Prize Worth: 2500 INR

REGISTRATION FEE
Per Photo: 100
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_b7d491c18814481c9156c72c5259d1e9~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_b7d491c18814481c9156c72c5259d1e9~mv2_d_4005_2333_s_2.webp",
    speakerName: "Online Photography Competition",
    speakerDesc: "Capture a moment to last forever ",
    track: "cloud",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "3rd",
    sessionTotalTime: "All Day",
    sessionTitle: "Spandan",
    sessionDesc: """ 

P.O.C.S.
Subhangi Das: 7735976570

PRIZES
Prize Worth: 5000 INR

REGISTRATION FEE
Solo: 150
Duet: 450              
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_2192466dfb534275979dfa7c8d5615ba~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_640,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_2192466dfb534275979dfa7c8d5615ba~mv2_d_4005_2333_s_2.webp",
    speakerName: "Dance is the joy of the moment",
    speakerDesc: "Express yourself ",
    track: "cloud",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "1st",
    sessionTotalTime: "All Day",
    sessionTitle: "Drishyam",
    sessionDesc: """ 

P.O.C.S.
Saloni Mali: 9182473983

PRIZES
Prize Worth: 3000 INR

REGISTRATION FEE
Individual: 150
Team(3): 300
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_45787b202bc1407f9f46e5761f37945c~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_45787b202bc1407f9f46e5761f37945c~mv2_d_4005_2333_s_2.webp",
    speakerName: "Short Video Competition",
    speakerDesc: "Show the world",
    track: "cloud",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "5th",
    sessionTotalTime: "All Day",
    sessionTitle: "Avalon",
    sessionDesc: """ 

P.O.C.S.
Satakhi Pattnaik: 8249206208
Abhishek: 8758067587

PRIZES
Prize Worth: 3500 INR

REGISTRATION FEE
Individual: 400
                    
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_d865e0da6924482d9dce3228cd9f832a~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_d865e0da6924482d9dce3228cd9f832a~mv2_d_4005_2333_s_2.webp",
    speakerName: "War of the DJs",
    speakerDesc: "The most celebrated war ",
    track: "cloud",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "4th",
    sessionTotalTime: "All Day",
    sessionTitle: "Alfaaz",
    sessionDesc: """ 

P.O.C.S.
Anushka Nayak: 70649 24000

PRIZES
Prize Worth: 1500 INR

REGISTRATION FEE
Individual: 100
                    
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_52dfe959fcec4f87820fad0c27274489~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_52dfe959fcec4f87820fad0c27274489~mv2_d_4005_2333_s_2.webp",
    speakerName: "The Slam Poetry Competition",
    speakerDesc: "Invoke the emotions ",
    track: "cloud",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "31st",
    sessionTotalTime: "All Day",
    sessionTitle: "Yugkriti",
    sessionDesc: """ 

P.O.C.S.
Nishant Kumar: 79032 18966

PRIZES
Prize Worth: 2500 INR

REGISTRATION FEE
Individual: 100
Duet: 200
                    
                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_577b0764060247fc8792f2014532cc23~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_577b0764060247fc8792f2014532cc23~mv2_d_4005_2333_s_2.webp",
    speakerName: "Yoga Dance Competition",
    speakerDesc: "Yoga se he hoga",
    track: "cloud",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "30th",
    sessionTotalTime: "All Day",
    sessionTitle: "Celestia",
    sessionDesc: """ 

P.O.C.S.
Sneha Bhattacharya: 83270-41003
Riya Varma: 9022241974

PRIZES
Prize Worth: 2500 INR

REGISTRATION FEE
Individual: 200

                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_8d172d5e77ab40c4a5b358d52fb669bd~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_8d172d5e77ab40c4a5b358d52fb669bd~mv2_d_4005_2333_s_2.webp",
    speakerName: "The Fashion Show",
    speakerDesc: "Theme - Netflix",
    track: "cloud",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "2nd",
    sessionTotalTime: "All Day",
    sessionTitle: "Konnextion",
    sessionDesc: """ 

P.O.C.S.
Sristhi Srivastava: 7735806930
Aadyasha Thakur: 8280223223

PRIZES
Prize Worth: 3000 INR

REGISTRATION FEE
Individual: 200

                    """,
    speakerImage:
        "https://static.wixstatic.com/media/9a7d16_a88199c3aebb4d48be4c55c368a5a7ab~mv2_d_4005_2333_s_2.jpg/v1/fill/w_1354,h_546,al_c,q_85,usm_0.66_1.00_0.01/9a7d16_a88199c3aebb4d48be4c55c368a5a7ab~mv2_d_4005_2333_s_2.webp",
    speakerName: "The Singing Competition",
    speakerDesc: "Vibrations make the universe",
    track: "cloud",
  ),
];
