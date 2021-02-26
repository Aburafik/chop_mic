class Users {
  String contentantName;
  String contestantImage;
  var contestantVotes;
  String contestantDetails;

  Users(
      {this.contentantName,
      this.contestantImage,
      this.contestantVotes,
      this.contestantDetails});
}

List<Users> user = [
  Users(
      contentantName: "Atta",
      contestantImage: "img",
      contestantVotes: 2,
      contestantDetails: 'jsbfkjbdfbdfhjadfhjabvfafjaf'),
  Users(
      contentantName: "Atta",
      contestantImage: "image here",
      contestantVotes: 2,
      contestantDetails: 'jsbfkjbdfbdfhjadfhjabvfafjaf'),
  Users(
      contentantName: "Atta",
      contestantImage: "image here",
      contestantVotes: 2,
      contestantDetails: 'jsbfkjbdfbdfhjadfhjabvfafjaf')
];
