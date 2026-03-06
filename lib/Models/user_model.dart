/// User Profile Response from GET /api/user/profile
class UserProfileResponse {
  final bool success;
  final UserProfileData? data;

  UserProfileResponse({required this.success, this.data});

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) {
    return UserProfileResponse(
      success: json['success'] as bool? ?? false,
      data: json['data'] != null
          ? UserProfileData.fromJson(json['data'] as Map<String, dynamic>)
          : null,
    );
  }
}

class UserProfileData {
  final UserProfile user;
  final UserProfileDetail? profile;
  final StreakData? streak;

  UserProfileData({required this.user, this.profile, this.streak});

  factory UserProfileData.fromJson(Map<String, dynamic> json) {
    return UserProfileData(
      user: UserProfile.fromJson(json['user'] as Map<String, dynamic>),
      profile: json['profile'] != null
          ? UserProfileDetail.fromJson(json['profile'] as Map<String, dynamic>)
          : null,
      streak: json['streak'] != null
          ? StreakData.fromJson(json['streak'] as Map<String, dynamic>)
          : null,
    );
  }
}

class UserProfile {
  final int id;
  final String? email;
  final String? fullName;
  final String? authProvider;
  final bool isGuest;
  final bool onboardingCompleted;
  final String preferredLanguage;
  final String? profilePictureUrl;
  final String? invitationCode;
  final DateTime? lastLoginAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserProfile({
    required this.id,
    this.email,
    this.fullName,
    this.authProvider,
    required this.isGuest,
    required this.onboardingCompleted,
    this.preferredLanguage = 'en',
    this.profilePictureUrl,
    this.invitationCode,
    this.lastLoginAt,
    this.createdAt,
    this.updatedAt,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as int? ?? 0,
      email: json['email'] as String?,
      fullName: json['fullName'] as String? ?? json['full_name'] as String?,
      authProvider:
          json['authProvider'] as String? ?? json['auth_provider'] as String?,
      isGuest: _parseBool(json['isGuest'] ?? json['is_guest']),
      onboardingCompleted: _parseBool(
        json['onboardingCompleted'] ?? json['onboarding_completed'],
      ),
      preferredLanguage:
          json['preferredLanguage'] as String? ??
          json['preferred_language'] as String? ??
          'en',
      profilePictureUrl:
          json['profilePictureUrl'] as String? ??
          json['profile_picture_url'] as String?,
      invitationCode:
          json['invitationCode'] as String? ??
          json['invitation_code'] as String?,
      lastLoginAt: _parseDate(json['lastLoginAt'] ?? json['last_login_at']),
      createdAt: _parseDate(json['createdAt'] ?? json['created_at']),
      updatedAt: _parseDate(json['updatedAt'] ?? json['updated_at']),
    );
  }

  UserProfile copyWith({
    int? id,
    String? email,
    String? fullName,
    String? authProvider,
    bool? isGuest,
    bool? onboardingCompleted,
    String? preferredLanguage,
    String? profilePictureUrl,
    String? invitationCode,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProfile(
      id: id ?? this.id,
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      authProvider: authProvider ?? this.authProvider,
      isGuest: isGuest ?? this.isGuest,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
      preferredLanguage: preferredLanguage ?? this.preferredLanguage,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      invitationCode: invitationCode ?? this.invitationCode,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  static bool _parseBool(dynamic value) {
    if (value is bool) return value;
    if (value is int) return value == 1;
    return false;
  }

  static DateTime? _parseDate(dynamic value) {
    if (value == null) return null;
    if (value is String) return DateTime.tryParse(value);
    return null;
  }
}

class UserProfileDetail {
  final List<String> preferredCategories;

  UserProfileDetail({required this.preferredCategories});

  factory UserProfileDetail.fromJson(Map<String, dynamic> json) {
    final categories = json['preferredCategories'] as List?;
    return UserProfileDetail(
      preferredCategories: categories != null
          ? categories.map((e) => e.toString()).toList()
          : [],
    );
  }
}

class StreakData {
  final int currentStreak;
  final List<bool> weekActivity;

  StreakData({required this.currentStreak, required this.weekActivity});

  factory StreakData.fromJson(Map<String, dynamic> json) {
    final activity = json['weekActivity'] as List?;
    return StreakData(
      currentStreak: json['currentStreak'] as int? ?? 0,
      weekActivity: activity != null
          ? activity.map((e) => e as bool? ?? false).toList()
          : List.filled(7, false),
    );
  }
}
