class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.speakerSession,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://www.artofliving.org/sites/www.artofliving.org/files/styles/original_image/public/srisri3.jpg.webp?itok=1hI4E9-F",
    speakerName: "Sri Sri Ravi Shankar",
    speakerDesc: "Global Ambassador of Peace",
    speakerSession: "Talk: AGA",
    fbUrl: "https://www.facebook.com/gurudev/",
    linkedinUrl: "https://www.linkedin.com/in/srisriravishankar/",
    twitterUrl: "https://twitter.com/SriSri",
  ),
  Speaker(
    speakerImage:
        "https://i.pinimg.com/474x/af/5c/c0/af5cc056632a587b839fa429c4eb50bf.jpg",
    speakerName: "Marshmello",
    speakerDesc: "American DJ",
    speakerSession: "Turn on the Speakers",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "New Release Vaaqif",
    speakerImage:
        "https://1.bp.blogspot.com/-ZAurCHcl3L0/XDc-fuXLBZI/AAAAAAAAbPU/VNLvGzmJkd4AJmWeKFfgIVpAo2zkx5UnQCLcBGAs/s1600/1.jpg",
    speakerName: "Local Train",
    speakerDesc: "Indian Rock Band",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Guru Discpiple Relationship",
    speakerImage:
        "https://www.swamipurnachaitanya.com/wp-content/uploads/2020/11/Website-Header_Stitched.jpg",
    speakerName: "Swami Purnachaitanya",
    speakerDesc: "Author and Meditator",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "How to start a startup",
    speakerImage:
        "https://assets.bizjournals.com/sanjose/Ycombinatorslide-0-0-331-300.jpg?v=1",
    speakerName: "Paul Graham",
    speakerDesc: "Founder YCombinator, Investor",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
];
