class FcmTokenRequestDto {
  final String fcmId;

  FcmTokenRequestDto({required this.fcmId});

  Map<String, dynamic> toJson() => {
    'fcm_id': fcmId,
  };
}