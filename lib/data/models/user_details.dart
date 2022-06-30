import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserDetails {
  final int? Id;
  final String? UserType;
  final String? Username;
  final String? Name;
  final String? Surname;
  final String? Gsm;
  final String? NationalID;
  final String? Email;
  final String? Birthday;
  final String? Password;
  final String? CurrentToken;
  final String? SessionToken;
  final String? TokenID;
  final String? IEToken;
  final int? FirmTypeId;
  final String? FirmTypeName;
  final String? IPAddress;
  final bool? EMailCampaign;
  final String? PasswordExpireDate;
  final String? ProfilePicture;
  final bool? DesktopUser;
  final bool? SmsCampaign;
  final String? TokenExpires;
  final int? FirmID;
  final int? BranchID;
  final String? IETokenExpires;
  final int? SystemID;
  final String? RegisterToMain;
  final String? AgreementDate;
  final bool? SmsApproved;
  final String? SmsActivationCode;
  final String? SmsApproveDate;
  final String? LastSmsSent;
  final String? CityCode;
  final String? County;
  final String? Latitude;
  final String? Longitude;
  final String? CountyCode;
  final String? IsGuest;
  final String? PrivacyAgreement;
  final bool? TemporaryActiveUser;
  final bool? IsTemporaryActive;
  final String? TemporaryReleaseTime;
  final List<dynamic>? UserAuthorizations;
  final bool? CanUseReferenceScreen;
  final bool? Success;
  final int? TotalCredits;
  final int? CreditsLeft;
  final String? CanSeeLocations;
  final String? CurrentIPAddress;
  final bool? CanManageDijipol;
  final bool? CanEnterPortal;
  final bool? CanCreatePoll;
  final String? ProfessionCode;
  final String? mailgun_access_token;
  final bool? CanUseApi;
  final bool? IsDesktop;
  final String? Source;
  final List<BranchAuthentication>? BranchAuthentications;
  UserDetails({
    required this.Id,
    required this.UserType,
    required this.Username,
    required this.Name,
    required this.Surname,
    required this.Gsm,
    required this.NationalID,
    required this.Email,
    required this.Birthday,
    required this.Password,
    required this.CurrentToken,
    required this.SessionToken,
    required this.TokenID,
    required this.IEToken,
    required this.FirmTypeId,
    required this.FirmTypeName,
    required this.IPAddress,
    required this.EMailCampaign,
    required this.PasswordExpireDate,
    required this.ProfilePicture,
    required this.DesktopUser,
    required this.SmsCampaign,
    required this.TokenExpires,
    required this.FirmID,
    required this.BranchID,
    required this.IETokenExpires,
    required this.SystemID,
    required this.RegisterToMain,
    required this.AgreementDate,
    required this.SmsApproved,
    required this.SmsActivationCode,
    required this.SmsApproveDate,
    required this.LastSmsSent,
    required this.CityCode,
    required this.County,
    required this.Latitude,
    required this.Longitude,
    required this.CountyCode,
    required this.IsGuest,
    required this.PrivacyAgreement,
    required this.TemporaryActiveUser,
    required this.IsTemporaryActive,
    required this.TemporaryReleaseTime,
    required this.UserAuthorizations,
    required this.CanUseReferenceScreen,
    required this.Success,
    required this.TotalCredits,
    required this.CreditsLeft,
    required this.CanSeeLocations,
    required this.CurrentIPAddress,
    required this.CanManageDijipol,
    required this.CanEnterPortal,
    required this.CanCreatePoll,
    required this.ProfessionCode,
    required this.mailgun_access_token,
    required this.CanUseApi,
    required this.IsDesktop,
    required this.Source,
    required this.BranchAuthentications,
  });

  UserDetails copyWith({
    int? Id,
    String? UserType,
    String? Username,
    String? Name,
    String? Surname,
    String? Gsm,
    String? NationalID,
    String? Email,
    String? Birthday,
    String? Password,
    String? CurrentToken,
    String? SessionToken,
    String? TokenID,
    String? IEToken,
    int? FirmTypeId,
    String? FirmTypeName,
    String? IPAddress,
    bool? EMailCampaign,
    String? PasswordExpireDate,
    String? ProfilePicture,
    bool? DesktopUser,
    bool? SmsCampaign,
    String? TokenExpires,
    int? FirmID,
    int? BranchID,
    String? IETokenExpires,
    int? SystemID,
    String? RegisterToMain,
    String? AgreementDate,
    bool? SmsApproved,
    String? SmsActivationCode,
    String? SmsApproveDate,
    String? LastSmsSent,
    String? CityCode,
    String? County,
    String? Latitude,
    String? Longitude,
    String? CountyCode,
    String? IsGuest,
    String? PrivacyAgreement,
    bool? TemporaryActiveUser,
    bool? IsTemporaryActive,
    String? TemporaryReleaseTime,
    List<dynamic>? UserAuthorizations,
    bool? CanUseReferenceScreen,
    bool? Success,
    int? TotalCredits,
    int? CreditsLeft,
    String? CanSeeLocations,
    String? CurrentIPAddress,
    bool? CanManageDijipol,
    bool? CanEnterPortal,
    bool? CanCreatePoll,
    String? ProfessionCode,
    String? mailgun_access_token,
    bool? CanUseApi,
    bool? IsDesktop,
    String? Source,
    List<BranchAuthentication>? BranchAuthentications,
  }) {
    return UserDetails(
      Id: Id ?? this.Id,
      UserType: UserType ?? this.UserType,
      Username: Username ?? this.Username,
      Name: Name ?? this.Name,
      Surname: Surname ?? this.Surname,
      Gsm: Gsm ?? this.Gsm,
      NationalID: NationalID ?? this.NationalID,
      Email: Email ?? this.Email,
      Birthday: Birthday ?? this.Birthday,
      Password: Password ?? this.Password,
      CurrentToken: CurrentToken ?? this.CurrentToken,
      SessionToken: SessionToken ?? this.SessionToken,
      TokenID: TokenID ?? this.TokenID,
      IEToken: IEToken ?? this.IEToken,
      FirmTypeId: FirmTypeId ?? this.FirmTypeId,
      FirmTypeName: FirmTypeName ?? this.FirmTypeName,
      IPAddress: IPAddress ?? this.IPAddress,
      EMailCampaign: EMailCampaign ?? this.EMailCampaign,
      PasswordExpireDate: PasswordExpireDate ?? this.PasswordExpireDate,
      ProfilePicture: ProfilePicture ?? this.ProfilePicture,
      DesktopUser: DesktopUser ?? this.DesktopUser,
      SmsCampaign: SmsCampaign ?? this.SmsCampaign,
      TokenExpires: TokenExpires ?? this.TokenExpires,
      FirmID: FirmID ?? this.FirmID,
      BranchID: BranchID ?? this.BranchID,
      IETokenExpires: IETokenExpires ?? this.IETokenExpires,
      SystemID: SystemID ?? this.SystemID,
      RegisterToMain: RegisterToMain ?? this.RegisterToMain,
      AgreementDate: AgreementDate ?? this.AgreementDate,
      SmsApproved: SmsApproved ?? this.SmsApproved,
      SmsActivationCode: SmsActivationCode ?? this.SmsActivationCode,
      SmsApproveDate: SmsApproveDate ?? this.SmsApproveDate,
      LastSmsSent: LastSmsSent ?? this.LastSmsSent,
      CityCode: CityCode ?? this.CityCode,
      County: County ?? this.County,
      Latitude: Latitude ?? this.Latitude,
      Longitude: Longitude ?? this.Longitude,
      CountyCode: CountyCode ?? this.CountyCode,
      IsGuest: IsGuest ?? this.IsGuest,
      PrivacyAgreement: PrivacyAgreement ?? this.PrivacyAgreement,
      TemporaryActiveUser: TemporaryActiveUser ?? this.TemporaryActiveUser,
      IsTemporaryActive: IsTemporaryActive ?? this.IsTemporaryActive,
      TemporaryReleaseTime: TemporaryReleaseTime ?? this.TemporaryReleaseTime,
      UserAuthorizations: UserAuthorizations ?? this.UserAuthorizations,
      CanUseReferenceScreen: CanUseReferenceScreen ?? this.CanUseReferenceScreen,
      Success: Success ?? this.Success,
      TotalCredits: TotalCredits ?? this.TotalCredits,
      CreditsLeft: CreditsLeft ?? this.CreditsLeft,
      CanSeeLocations: CanSeeLocations ?? this.CanSeeLocations,
      CurrentIPAddress: CurrentIPAddress ?? this.CurrentIPAddress,
      CanManageDijipol: CanManageDijipol ?? this.CanManageDijipol,
      CanEnterPortal: CanEnterPortal ?? this.CanEnterPortal,
      CanCreatePoll: CanCreatePoll ?? this.CanCreatePoll,
      ProfessionCode: ProfessionCode ?? this.ProfessionCode,
      mailgun_access_token: mailgun_access_token ?? this.mailgun_access_token,
      CanUseApi: CanUseApi ?? this.CanUseApi,
      IsDesktop: IsDesktop ?? this.IsDesktop,
      Source: Source ?? this.Source,
      BranchAuthentications: BranchAuthentications ?? this.BranchAuthentications,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'UserType': UserType,
      'Username': Username,
      'Name': Name,
      'Surname': Surname,
      'Gsm': Gsm,
      'NationalID': NationalID,
      'Email': Email,
      'Birthday': Birthday,
      'Password': Password,
      'CurrentToken': CurrentToken,
      'SessionToken': SessionToken,
      'TokenID': TokenID,
      'IEToken': IEToken,
      'FirmTypeId': FirmTypeId,
      'FirmTypeName': FirmTypeName,
      'IPAddress': IPAddress,
      'EMailCampaign': EMailCampaign,
      'PasswordExpireDate': PasswordExpireDate,
      'ProfilePicture': ProfilePicture,
      'DesktopUser': DesktopUser,
      'SmsCampaign': SmsCampaign,
      'TokenExpires': TokenExpires,
      'FirmID': FirmID,
      'BranchID': BranchID,
      'IETokenExpires': IETokenExpires,
      'SystemID': SystemID,
      'RegisterToMain': RegisterToMain,
      'AgreementDate': AgreementDate,
      'SmsApproved': SmsApproved,
      'SmsActivationCode': SmsActivationCode,
      'SmsApproveDate': SmsApproveDate,
      'LastSmsSent': LastSmsSent,
      'CityCode': CityCode,
      'County': County,
      'Latitude': Latitude,
      'Longitude': Longitude,
      'CountyCode': CountyCode,
      'IsGuest': IsGuest,
      'PrivacyAgreement': PrivacyAgreement,
      'TemporaryActiveUser': TemporaryActiveUser,
      'IsTemporaryActive': IsTemporaryActive,
      'TemporaryReleaseTime': TemporaryReleaseTime,
      'UserAuthorizations': UserAuthorizations,
      'CanUseReferenceScreen': CanUseReferenceScreen,
      'Success': Success,
      'TotalCredits': TotalCredits,
      'CreditsLeft': CreditsLeft,
      'CanSeeLocations': CanSeeLocations,
      'CurrentIPAddress': CurrentIPAddress,
      'CanManageDijipol': CanManageDijipol,
      'CanEnterPortal': CanEnterPortal,
      'CanCreatePoll': CanCreatePoll,
      'ProfessionCode': ProfessionCode,
      'mailgun_access_token': mailgun_access_token,
      'CanUseApi': CanUseApi,
      'IsDesktop': IsDesktop,
      'Source': Source,
      'BranchAuthentications': BranchAuthentications?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      Id: map['Id']?.toInt(),
      UserType: map['UserType'],
      Username: map['Username'],
      Name: map['Name'],
      Surname: map['Surname'],
      Gsm: map['Gsm'],
      NationalID: map['NationalID'],
      Email: map['Email'],
      Birthday: map['Birthday'],
      Password: map['Password'],
      CurrentToken: map['CurrentToken'],
      SessionToken: map['SessionToken'],
      TokenID: map['TokenID'],
      IEToken: map['IEToken'],
      FirmTypeId: map['FirmTypeId']?.toInt(),
      FirmTypeName: map['FirmTypeName'],
      IPAddress: map['IPAddress'],
      EMailCampaign: map['EMailCampaign'],
      PasswordExpireDate: map['PasswordExpireDate'],
      ProfilePicture: map['ProfilePicture'],
      DesktopUser: map['DesktopUser'],
      SmsCampaign: map['SmsCampaign'],
      TokenExpires: map['TokenExpires'],
      FirmID: map['FirmID']?.toInt(),
      BranchID: map['BranchID']?.toInt(),
      IETokenExpires: map['IETokenExpires'],
      SystemID: map['SystemID']?.toInt(),
      RegisterToMain: map['RegisterToMain'],
      AgreementDate: map['AgreementDate'],
      SmsApproved: map['SmsApproved'],
      SmsActivationCode: map['SmsActivationCode'],
      SmsApproveDate: map['SmsApproveDate'],
      LastSmsSent: map['LastSmsSent'],
      CityCode: map['CityCode'],
      County: map['County'],
      Latitude: map['Latitude'],
      Longitude: map['Longitude'],
      CountyCode: map['CountyCode'],
      IsGuest: map['IsGuest'],
      PrivacyAgreement: map['PrivacyAgreement'],
      TemporaryActiveUser: map['TemporaryActiveUser'],
      IsTemporaryActive: map['IsTemporaryActive'],
      TemporaryReleaseTime: map['TemporaryReleaseTime'],
      UserAuthorizations: List<dynamic>.from(map['UserAuthorizations']),
      CanUseReferenceScreen: map['CanUseReferenceScreen'],
      Success: map['Success'],
      TotalCredits: map['TotalCredits']?.toInt(),
      CreditsLeft: map['CreditsLeft']?.toInt(),
      CanSeeLocations: map['CanSeeLocations'],
      CurrentIPAddress: map['CurrentIPAddress'],
      CanManageDijipol: map['CanManageDijipol'],
      CanEnterPortal: map['CanEnterPortal'],
      CanCreatePoll: map['CanCreatePoll'],
      ProfessionCode: map['ProfessionCode'],
      mailgun_access_token: map['mailgun_access_token'],
      CanUseApi: map['CanUseApi'],
      IsDesktop: map['IsDesktop'],
      Source: map['Source'],
      BranchAuthentications: List<BranchAuthentication>.from(map['BranchAuthentications']?.map((x) => BranchAuthentication.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetails.fromJson(String source) => UserDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserDetails(Id: $Id, UserType: $UserType, Username: $Username, Name: $Name, Surname: $Surname, Gsm: $Gsm, NationalID: $NationalID, Email: $Email, Birthday: $Birthday, Password: $Password, CurrentToken: $CurrentToken, SessionToken: $SessionToken, TokenID: $TokenID, IEToken: $IEToken, FirmTypeId: $FirmTypeId, FirmTypeName: $FirmTypeName, IPAddress: $IPAddress, EMailCampaign: $EMailCampaign, PasswordExpireDate: $PasswordExpireDate, ProfilePicture: $ProfilePicture, DesktopUser: $DesktopUser, SmsCampaign: $SmsCampaign, TokenExpires: $TokenExpires, FirmID: $FirmID, BranchID: $BranchID, IETokenExpires: $IETokenExpires, SystemID: $SystemID, RegisterToMain: $RegisterToMain, AgreementDate: $AgreementDate, SmsApproved: $SmsApproved, SmsActivationCode: $SmsActivationCode, SmsApproveDate: $SmsApproveDate, LastSmsSent: $LastSmsSent, CityCode: $CityCode, County: $County, Latitude: $Latitude, Longitude: $Longitude, CountyCode: $CountyCode, IsGuest: $IsGuest, PrivacyAgreement: $PrivacyAgreement, TemporaryActiveUser: $TemporaryActiveUser, IsTemporaryActive: $IsTemporaryActive, TemporaryReleaseTime: $TemporaryReleaseTime, UserAuthorizations: $UserAuthorizations, CanUseReferenceScreen: $CanUseReferenceScreen, Success: $Success, TotalCredits: $TotalCredits, CreditsLeft: $CreditsLeft, CanSeeLocations: $CanSeeLocations, CurrentIPAddress: $CurrentIPAddress, CanManageDijipol: $CanManageDijipol, CanEnterPortal: $CanEnterPortal, CanCreatePoll: $CanCreatePoll, ProfessionCode: $ProfessionCode, mailgun_access_token: $mailgun_access_token, CanUseApi: $CanUseApi, IsDesktop: $IsDesktop, Source: $Source, BranchAuthentications: $BranchAuthentications)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserDetails &&
      other.Id == Id &&
      other.UserType == UserType &&
      other.Username == Username &&
      other.Name == Name &&
      other.Surname == Surname &&
      other.Gsm == Gsm &&
      other.NationalID == NationalID &&
      other.Email == Email &&
      other.Birthday == Birthday &&
      other.Password == Password &&
      other.CurrentToken == CurrentToken &&
      other.SessionToken == SessionToken &&
      other.TokenID == TokenID &&
      other.IEToken == IEToken &&
      other.FirmTypeId == FirmTypeId &&
      other.FirmTypeName == FirmTypeName &&
      other.IPAddress == IPAddress &&
      other.EMailCampaign == EMailCampaign &&
      other.PasswordExpireDate == PasswordExpireDate &&
      other.ProfilePicture == ProfilePicture &&
      other.DesktopUser == DesktopUser &&
      other.SmsCampaign == SmsCampaign &&
      other.TokenExpires == TokenExpires &&
      other.FirmID == FirmID &&
      other.BranchID == BranchID &&
      other.IETokenExpires == IETokenExpires &&
      other.SystemID == SystemID &&
      other.RegisterToMain == RegisterToMain &&
      other.AgreementDate == AgreementDate &&
      other.SmsApproved == SmsApproved &&
      other.SmsActivationCode == SmsActivationCode &&
      other.SmsApproveDate == SmsApproveDate &&
      other.LastSmsSent == LastSmsSent &&
      other.CityCode == CityCode &&
      other.County == County &&
      other.Latitude == Latitude &&
      other.Longitude == Longitude &&
      other.CountyCode == CountyCode &&
      other.IsGuest == IsGuest &&
      other.PrivacyAgreement == PrivacyAgreement &&
      other.TemporaryActiveUser == TemporaryActiveUser &&
      other.IsTemporaryActive == IsTemporaryActive &&
      other.TemporaryReleaseTime == TemporaryReleaseTime &&
      listEquals(other.UserAuthorizations, UserAuthorizations) &&
      other.CanUseReferenceScreen == CanUseReferenceScreen &&
      other.Success == Success &&
      other.TotalCredits == TotalCredits &&
      other.CreditsLeft == CreditsLeft &&
      other.CanSeeLocations == CanSeeLocations &&
      other.CurrentIPAddress == CurrentIPAddress &&
      other.CanManageDijipol == CanManageDijipol &&
      other.CanEnterPortal == CanEnterPortal &&
      other.CanCreatePoll == CanCreatePoll &&
      other.ProfessionCode == ProfessionCode &&
      other.mailgun_access_token == mailgun_access_token &&
      other.CanUseApi == CanUseApi &&
      other.IsDesktop == IsDesktop &&
      other.Source == Source &&
      listEquals(other.BranchAuthentications, BranchAuthentications);
  }

  @override
  int get hashCode {
    return Id.hashCode ^
      UserType.hashCode ^
      Username.hashCode ^
      Name.hashCode ^
      Surname.hashCode ^
      Gsm.hashCode ^
      NationalID.hashCode ^
      Email.hashCode ^
      Birthday.hashCode ^
      Password.hashCode ^
      CurrentToken.hashCode ^
      SessionToken.hashCode ^
      TokenID.hashCode ^
      IEToken.hashCode ^
      FirmTypeId.hashCode ^
      FirmTypeName.hashCode ^
      IPAddress.hashCode ^
      EMailCampaign.hashCode ^
      PasswordExpireDate.hashCode ^
      ProfilePicture.hashCode ^
      DesktopUser.hashCode ^
      SmsCampaign.hashCode ^
      TokenExpires.hashCode ^
      FirmID.hashCode ^
      BranchID.hashCode ^
      IETokenExpires.hashCode ^
      SystemID.hashCode ^
      RegisterToMain.hashCode ^
      AgreementDate.hashCode ^
      SmsApproved.hashCode ^
      SmsActivationCode.hashCode ^
      SmsApproveDate.hashCode ^
      LastSmsSent.hashCode ^
      CityCode.hashCode ^
      County.hashCode ^
      Latitude.hashCode ^
      Longitude.hashCode ^
      CountyCode.hashCode ^
      IsGuest.hashCode ^
      PrivacyAgreement.hashCode ^
      TemporaryActiveUser.hashCode ^
      IsTemporaryActive.hashCode ^
      TemporaryReleaseTime.hashCode ^
      UserAuthorizations.hashCode ^
      CanUseReferenceScreen.hashCode ^
      Success.hashCode ^
      TotalCredits.hashCode ^
      CreditsLeft.hashCode ^
      CanSeeLocations.hashCode ^
      CurrentIPAddress.hashCode ^
      CanManageDijipol.hashCode ^
      CanEnterPortal.hashCode ^
      CanCreatePoll.hashCode ^
      ProfessionCode.hashCode ^
      mailgun_access_token.hashCode ^
      CanUseApi.hashCode ^
      IsDesktop.hashCode ^
      Source.hashCode ^
      BranchAuthentications.hashCode;
  }
}

class BranchAuthentication {
  final int? BranchId;
  final int? QueryTypeId;
  final bool? IsAuth;
  final String? CreateDate;
  final String? QueryType;
  BranchAuthentication({
    required this.BranchId,
    required this.QueryTypeId,
    required this.IsAuth,
    required this.CreateDate,
    required this.QueryType,
  });

  BranchAuthentication copyWith({
    int? BranchId,
    int? QueryTypeId,
    bool? IsAuth,
    String? CreateDate,
    String? QueryType,
  }) {
    return BranchAuthentication(
      BranchId: BranchId ?? this.BranchId,
      QueryTypeId: QueryTypeId ?? this.QueryTypeId,
      IsAuth: IsAuth ?? this.IsAuth,
      CreateDate: CreateDate ?? this.CreateDate,
      QueryType: QueryType ?? this.QueryType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'BranchId': BranchId,
      'QueryTypeId': QueryTypeId,
      'IsAuth': IsAuth,
      'CreateDate': CreateDate,
      'QueryType': QueryType,
    };
  }

  factory BranchAuthentication.fromMap(Map<String, dynamic> map) {
    return BranchAuthentication(
      BranchId: map['BranchId']?.toInt(),
      QueryTypeId: map['QueryTypeId']?.toInt(),
      IsAuth: map['IsAuth'],
      CreateDate: map['CreateDate'],
      QueryType: map['QueryType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BranchAuthentication.fromJson(String source) => BranchAuthentication.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BranchAuthentication(BranchId: $BranchId, QueryTypeId: $QueryTypeId, IsAuth: $IsAuth, CreateDate: $CreateDate, QueryType: $QueryType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BranchAuthentication &&
      other.BranchId == BranchId &&
      other.QueryTypeId == QueryTypeId &&
      other.IsAuth == IsAuth &&
      other.CreateDate == CreateDate &&
      other.QueryType == QueryType;
  }

  @override
  int get hashCode {
    return BranchId.hashCode ^
      QueryTypeId.hashCode ^
      IsAuth.hashCode ^
      CreateDate.hashCode ^
      QueryType.hashCode;
  }
}