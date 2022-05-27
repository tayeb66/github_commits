// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    @required this.sha,
    @required this.nodeId,
    @required this.commit,
    @required this.url,
    @required this.htmlUrl,
    @required this.commentsUrl,
    @required this.author,
    @required this.committer,
    @required this.parents,
  });

  String sha;
  String nodeId;
  Commit commit;
  String url;
  String htmlUrl;
  String commentsUrl;
  WelcomeAuthor author;
  WelcomeAuthor committer;
  List<Parent> parents;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    sha: json["sha"] == null ? null : json["sha"],
    nodeId: json["node_id"] == null ? null : json["node_id"],
    commit: json["commit"] == null ? null : Commit.fromJson(json["commit"]),
    url: json["url"] == null ? null : json["url"],
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
    commentsUrl: json["comments_url"] == null ? null : json["comments_url"],
    author: json["author"] == null ? null : WelcomeAuthor.fromJson(json["author"]),
    committer: json["committer"] == null ? null : WelcomeAuthor.fromJson(json["committer"]),
    parents: json["parents"] == null ? null : List<Parent>.from(json["parents"].map((x) => Parent.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sha": sha == null ? null : sha,
    "node_id": nodeId == null ? null : nodeId,
    "commit": commit == null ? null : commit.toJson(),
    "url": url == null ? null : url,
    "html_url": htmlUrl == null ? null : htmlUrl,
    "comments_url": commentsUrl == null ? null : commentsUrl,
    "author": author == null ? null : author.toJson(),
    "committer": committer == null ? null : committer.toJson(),
    "parents": parents == null ? null : List<dynamic>.from(parents.map((x) => x.toJson())),
  };
}

class WelcomeAuthor {
  WelcomeAuthor({
    @required this.login,
    @required this.id,
    @required this.nodeId,
    @required this.avatarUrl,
    @required this.gravatarId,
    @required this.url,
    @required this.htmlUrl,
    @required this.followersUrl,
    @required this.followingUrl,
    @required this.gistsUrl,
    @required this.starredUrl,
    @required this.subscriptionsUrl,
    @required this.organizationsUrl,
    @required this.reposUrl,
    @required this.eventsUrl,
    @required this.receivedEventsUrl,
    @required this.type,
    @required this.siteAdmin,
  });

  String login;
  int id;
  String nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  String eventsUrl;
  String receivedEventsUrl;
  Type type;
  bool siteAdmin;

  factory WelcomeAuthor.fromJson(Map<String, dynamic> json) => WelcomeAuthor(
    login: json["login"] == null ? null : json["login"],
    id: json["id"] == null ? null : json["id"],
    nodeId: json["node_id"] == null ? null : json["node_id"],
    avatarUrl: json["avatar_url"] == null ? null : json["avatar_url"],
    gravatarId: json["gravatar_id"] == null ? null : json["gravatar_id"],
    url: json["url"] == null ? null : json["url"],
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
    followersUrl: json["followers_url"] == null ? null : json["followers_url"],
    followingUrl: json["following_url"] == null ? null : json["following_url"],
    gistsUrl: json["gists_url"] == null ? null : json["gists_url"],
    starredUrl: json["starred_url"] == null ? null : json["starred_url"],
    subscriptionsUrl: json["subscriptions_url"] == null ? null : json["subscriptions_url"],
    organizationsUrl: json["organizations_url"] == null ? null : json["organizations_url"],
    reposUrl: json["repos_url"] == null ? null : json["repos_url"],
    eventsUrl: json["events_url"] == null ? null : json["events_url"],
    receivedEventsUrl: json["received_events_url"] == null ? null : json["received_events_url"],
    type: json["type"] == null ? null : typeValues.map[json["type"]],
    siteAdmin: json["site_admin"] == null ? null : json["site_admin"],
  );

  Map<String, dynamic> toJson() => {
    "login": login == null ? null : login,
    "id": id == null ? null : id,
    "node_id": nodeId == null ? null : nodeId,
    "avatar_url": avatarUrl == null ? null : avatarUrl,
    "gravatar_id": gravatarId == null ? null : gravatarId,
    "url": url == null ? null : url,
    "html_url": htmlUrl == null ? null : htmlUrl,
    "followers_url": followersUrl == null ? null : followersUrl,
    "following_url": followingUrl == null ? null : followingUrl,
    "gists_url": gistsUrl == null ? null : gistsUrl,
    "starred_url": starredUrl == null ? null : starredUrl,
    "subscriptions_url": subscriptionsUrl == null ? null : subscriptionsUrl,
    "organizations_url": organizationsUrl == null ? null : organizationsUrl,
    "repos_url": reposUrl == null ? null : reposUrl,
    "events_url": eventsUrl == null ? null : eventsUrl,
    "received_events_url": receivedEventsUrl == null ? null : receivedEventsUrl,
    "type": type == null ? null : typeValues.reverse[type],
    "site_admin": siteAdmin == null ? null : siteAdmin,
  };
}

enum Type { USER }

final typeValues = EnumValues({
  "User": Type.USER
});

class Commit {
  Commit({
    @required this.author,
    @required this.committer,
    @required this.message,
    @required this.tree,
    @required this.url,
    @required this.commentCount,
    @required this.verification,
  });

  CommitAuthor author;
  CommitAuthor committer;
  String message;
  Tree tree;
  String url;
  int commentCount;
  Verification verification;

  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
    author: json["author"] == null ? null : CommitAuthor.fromJson(json["author"]),
    committer: json["committer"] == null ? null : CommitAuthor.fromJson(json["committer"]),
    message: json["message"] == null ? null : json["message"],
    tree: json["tree"] == null ? null : Tree.fromJson(json["tree"]),
    url: json["url"] == null ? null : json["url"],
    commentCount: json["comment_count"] == null ? null : json["comment_count"],
    verification: json["verification"] == null ? null : Verification.fromJson(json["verification"]),
  );

  Map<String, dynamic> toJson() => {
    "author": author == null ? null : author.toJson(),
    "committer": committer == null ? null : committer.toJson(),
    "message": message == null ? null : message,
    "tree": tree == null ? null : tree.toJson(),
    "url": url == null ? null : url,
    "comment_count": commentCount == null ? null : commentCount,
    "verification": verification == null ? null : verification.toJson(),
  };
}

class CommitAuthor {
  CommitAuthor({
    @required this.name,
    @required this.email,
    @required this.date,
  });

  String name;
  String email;
  DateTime date;

  factory CommitAuthor.fromJson(Map<String, dynamic> json) => CommitAuthor(
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "date": date == null ? null : date.toIso8601String(),
  };
}

class Tree {
  Tree({
    @required this.sha,
    @required this.url,
  });

  String sha;
  String url;

  factory Tree.fromJson(Map<String, dynamic> json) => Tree(
    sha: json["sha"] == null ? null : json["sha"],
    url: json["url"] == null ? null : json["url"],
  );

  Map<String, dynamic> toJson() => {
    "sha": sha == null ? null : sha,
    "url": url == null ? null : url,
  };
}

class Verification {
  Verification({
    @required this.verified,
    @required this.reason,
    @required this.signature,
    @required this.payload,
  });

  bool verified;
  Reason reason;
  String signature;
  String payload;

  factory Verification.fromJson(Map<String, dynamic> json) => Verification(
    verified: json["verified"] == null ? null : json["verified"],
    reason: json["reason"] == null ? null : reasonValues.map[json["reason"]],
    signature: json["signature"] == null ? null : json["signature"],
    payload: json["payload"] == null ? null : json["payload"],
  );

  Map<String, dynamic> toJson() => {
    "verified": verified == null ? null : verified,
    "reason": reason == null ? null : reasonValues.reverse[reason],
    "signature": signature == null ? null : signature,
    "payload": payload == null ? null : payload,
  };
}

enum Reason { VALID }

final reasonValues = EnumValues({
  "valid": Reason.VALID
});

class Parent {
  Parent({
    @required this.sha,
    @required this.url,
    @required this.htmlUrl,
  });

  String sha;
  String url;
  String htmlUrl;

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
    sha: json["sha"] == null ? null : json["sha"],
    url: json["url"] == null ? null : json["url"],
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
  );

  Map<String, dynamic> toJson() => {
    "sha": sha == null ? null : sha,
    "url": url == null ? null : url,
    "html_url": htmlUrl == null ? null : htmlUrl,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
