import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Photogram'**
  String get appName;

  /// No description provided for @prefixAgo.
  ///
  /// In en, this message translates to:
  /// **''**
  String get prefixAgo;

  /// No description provided for @prefixFromNow.
  ///
  /// In en, this message translates to:
  /// **''**
  String get prefixFromNow;

  /// No description provided for @suffixAgo.
  ///
  /// In en, this message translates to:
  /// **''**
  String get suffixAgo;

  /// No description provided for @suffixFromNow.
  ///
  /// In en, this message translates to:
  /// **'from now'**
  String get suffixFromNow;

  /// No description provided for @lessThanOneMinute.
  ///
  /// In en, this message translates to:
  /// **'a moment'**
  String get lessThanOneMinute;

  /// No description provided for @aboutAMinute.
  ///
  /// In en, this message translates to:
  /// **'a minute'**
  String get aboutAMinute;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'%s minutes'**
  String get minutes;

  /// No description provided for @aboutAnHour.
  ///
  /// In en, this message translates to:
  /// **'about an hour'**
  String get aboutAnHour;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'%s hours'**
  String get hours;

  /// No description provided for @aDay.
  ///
  /// In en, this message translates to:
  /// **'a day'**
  String get aDay;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'%s days'**
  String get days;

  /// No description provided for @aboutAMonth.
  ///
  /// In en, this message translates to:
  /// **'about a month'**
  String get aboutAMonth;

  /// No description provided for @months.
  ///
  /// In en, this message translates to:
  /// **'%s months'**
  String get months;

  /// No description provided for @aboutAYear.
  ///
  /// In en, this message translates to:
  /// **'about a year'**
  String get aboutAYear;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'%s years'**
  String get years;

  /// No description provided for @wordSeparator.
  ///
  /// In en, this message translates to:
  /// **''**
  String get wordSeparator;

  /// No description provided for @shortPrefixAgo.
  ///
  /// In en, this message translates to:
  /// **''**
  String get shortPrefixAgo;

  /// No description provided for @shortPrefixFromNow.
  ///
  /// In en, this message translates to:
  /// **''**
  String get shortPrefixFromNow;

  /// No description provided for @shortSuffixAgo.
  ///
  /// In en, this message translates to:
  /// **''**
  String get shortSuffixAgo;

  /// No description provided for @shortSuffixFromNow.
  ///
  /// In en, this message translates to:
  /// **''**
  String get shortSuffixFromNow;

  /// No description provided for @shortLessThanOneMinute.
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get shortLessThanOneMinute;

  /// No description provided for @shortAboutAMinute.
  ///
  /// In en, this message translates to:
  /// **'1m'**
  String get shortAboutAMinute;

  /// No description provided for @shortMinutes.
  ///
  /// In en, this message translates to:
  /// **'%s m'**
  String get shortMinutes;

  /// No description provided for @shortAboutAnHour.
  ///
  /// In en, this message translates to:
  /// **'1h'**
  String get shortAboutAnHour;

  /// No description provided for @shortHours.
  ///
  /// In en, this message translates to:
  /// **'%s h'**
  String get shortHours;

  /// No description provided for @shortADay.
  ///
  /// In en, this message translates to:
  /// **'1d'**
  String get shortADay;

  /// No description provided for @shortDays.
  ///
  /// In en, this message translates to:
  /// **'%s d'**
  String get shortDays;

  /// No description provided for @shortAboutAMonth.
  ///
  /// In en, this message translates to:
  /// **'1mo'**
  String get shortAboutAMonth;

  /// No description provided for @shortMonths.
  ///
  /// In en, this message translates to:
  /// **'%s mo'**
  String get shortMonths;

  /// No description provided for @shortAboutAYear.
  ///
  /// In en, this message translates to:
  /// **'1 y'**
  String get shortAboutAYear;

  /// No description provided for @shortYears.
  ///
  /// In en, this message translates to:
  /// **'%s y'**
  String get shortYears;

  /// No description provided for @shortWordSeparator.
  ///
  /// In en, this message translates to:
  /// **' '**
  String get shortWordSeparator;

  /// No description provided for @acceptedFollowRequests.
  ///
  /// In en, this message translates to:
  /// **'Accepted follow requests'**
  String get acceptedFollowRequests;

  /// No description provided for @acceptedYourFollowRequest.
  ///
  /// In en, this message translates to:
  /// **'accepted your follow request'**
  String get acceptedYourFollowRequest;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accountPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Account privacy'**
  String get accountPrivacy;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @activityWillAppearHere.
  ///
  /// In en, this message translates to:
  /// **'When you or people you\'re connected with have some activity then it\'ll appear here.'**
  String get activityWillAppearHere;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addAComment.
  ///
  /// In en, this message translates to:
  /// **'Add a Comment'**
  String get addAComment;

  /// No description provided for @addFrom.
  ///
  /// In en, this message translates to:
  /// **'Add from'**
  String get addFrom;

  /// No description provided for @addLocation.
  ///
  /// In en, this message translates to:
  /// **'Add location'**
  String get addLocation;

  /// No description provided for @addMore.
  ///
  /// In en, this message translates to:
  /// **'Add more'**
  String get addMore;

  /// No description provided for @addPhotos.
  ///
  /// In en, this message translates to:
  /// **'Add photos'**
  String get addPhotos;

  /// No description provided for @adding.
  ///
  /// In en, this message translates to:
  /// **'Adding...'**
  String get adding;

  /// No description provided for @adjust.
  ///
  /// In en, this message translates to:
  /// **'Adjust'**
  String get adjust;

  /// No description provided for @allPosts.
  ///
  /// In en, this message translates to:
  /// **'All posts'**
  String get allPosts;

  /// No description provided for @alreadyHaveAnAccountLine.
  ///
  /// In en, this message translates to:
  /// **'Already have an account ?'**
  String get alreadyHaveAnAccountLine;

  /// No description provided for @andNOthersCommentedOnPhotoOfYou.
  ///
  /// In en, this message translates to:
  /// **' and %s others commented on a post that you\'re tagged in'**
  String get andNOthersCommentedOnPhotoOfYou;

  /// No description provided for @andNOthersCommentedOnYourPost.
  ///
  /// In en, this message translates to:
  /// **' and %s others commented on your post'**
  String get andNOthersCommentedOnYourPost;

  /// No description provided for @andNOthersLikedPhotoOfYou.
  ///
  /// In en, this message translates to:
  /// **' and %s others liked post that you\'re tagged in'**
  String get andNOthersLikedPhotoOfYou;

  /// No description provided for @andNOthersLikedYourComment.
  ///
  /// In en, this message translates to:
  /// **' and %s others liked your comment on a post'**
  String get andNOthersLikedYourComment;

  /// No description provided for @andNOthersLikedYourPost.
  ///
  /// In en, this message translates to:
  /// **' and %s others liked your post'**
  String get andNOthersLikedYourPost;

  /// No description provided for @andNOthersRepliedToYourCommentOnPost.
  ///
  /// In en, this message translates to:
  /// **' and %s others replied to your comment on a post'**
  String get andNOthersRepliedToYourCommentOnPost;

  /// No description provided for @approveOrIgnoreRequests.
  ///
  /// In en, this message translates to:
  /// **'Approve or ignore requests'**
  String get approveOrIgnoreRequests;

  /// No description provided for @block.
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get block;

  /// No description provided for @blockAccount.
  ///
  /// In en, this message translates to:
  /// **'Block account'**
  String get blockAccount;

  /// No description provided for @blockedAccounts.
  ///
  /// In en, this message translates to:
  /// **'Blocked accounts'**
  String get blockedAccounts;

  /// No description provided for @bySigningUp.
  ///
  /// In en, this message translates to:
  /// **'By signing up you agree to'**
  String get bySigningUp;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @tos.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get tos;

  /// No description provided for @ofOurService.
  ///
  /// In en, this message translates to:
  /// **'of our service.'**
  String get ofOurService;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @cantFindYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Cant find your account, please make sure username you typed is correct.'**
  String get cantFindYourAccount;

  /// No description provided for @changeCover.
  ///
  /// In en, this message translates to:
  /// **'Change cover'**
  String get changeCover;

  /// No description provided for @changeDisplayBio.
  ///
  /// In en, this message translates to:
  /// **'Change bio'**
  String get changeDisplayBio;

  /// No description provided for @changeDisplayBioHint.
  ///
  /// In en, this message translates to:
  /// **'Allowed 250 characters.'**
  String get changeDisplayBioHint;

  /// No description provided for @changeDisplayName.
  ///
  /// In en, this message translates to:
  /// **'Change display name'**
  String get changeDisplayName;

  /// No description provided for @changeDisplayNameHint.
  ///
  /// In en, this message translates to:
  /// **'Changes made here might take few minutes to reflect everywhere.'**
  String get changeDisplayNameHint;

  /// No description provided for @changeDisplayWeb.
  ///
  /// In en, this message translates to:
  /// **'Change website'**
  String get changeDisplayWeb;

  /// No description provided for @changeDisplayWebHint.
  ///
  /// In en, this message translates to:
  /// **'Only valid website address are allowed.'**
  String get changeDisplayWebHint;

  /// No description provided for @changeEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Change email address'**
  String get changeEmailAddress;

  /// No description provided for @changeEmailAddressHint.
  ///
  /// In en, this message translates to:
  /// **'You might have to verify your email address if it\'s done already or if your previous verified emails has been changed.'**
  String get changeEmailAddressHint;

  /// No description provided for @changeProfilePicture.
  ///
  /// In en, this message translates to:
  /// **'Change profile photo'**
  String get changeProfilePicture;

  /// No description provided for @changeUsername.
  ///
  /// In en, this message translates to:
  /// **'Change username'**
  String get changeUsername;

  /// No description provided for @changeUsernameHint.
  ///
  /// In en, this message translates to:
  /// **'Please note that your old username will be immediately available once your username is successfully updated.'**
  String get changeUsernameHint;

  /// No description provided for @chooseAPassword.
  ///
  /// In en, this message translates to:
  /// **'Choose a password'**
  String get chooseAPassword;

  /// No description provided for @chooseAUsername.
  ///
  /// In en, this message translates to:
  /// **'Choose a username'**
  String get chooseAUsername;

  /// No description provided for @clickOnImageToTagSomeone.
  ///
  /// In en, this message translates to:
  /// **'Click on image to tag someone'**
  String get clickOnImageToTagSomeone;

  /// No description provided for @collectionName.
  ///
  /// In en, this message translates to:
  /// **'Collection name'**
  String get collectionName;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @commentLike.
  ///
  /// In en, this message translates to:
  /// **'Comment like'**
  String get commentLike;

  /// No description provided for @commentLikes.
  ///
  /// In en, this message translates to:
  /// **'Comment likes'**
  String get commentLikes;

  /// No description provided for @commentLikesAndPins.
  ///
  /// In en, this message translates to:
  /// **'Comment likes and pins'**
  String get commentLikesAndPins;

  /// No description provided for @commentedOnPhotoOfYou.
  ///
  /// In en, this message translates to:
  /// **' commented on a post that you\'re tagged in'**
  String get commentedOnPhotoOfYou;

  /// No description provided for @commentedOnYourPost.
  ///
  /// In en, this message translates to:
  /// **' commented on your post'**
  String get commentedOnYourPost;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @commentsOnPhotosOfYou.
  ///
  /// In en, this message translates to:
  /// **'Comments on photos of you'**
  String get commentsOnPhotosOfYou;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @confirming.
  ///
  /// In en, this message translates to:
  /// **'Confirming...'**
  String get confirming;

  /// No description provided for @connections.
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get connections;

  /// No description provided for @content.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get content;

  /// No description provided for @continueToPhotoEditor.
  ///
  /// In en, this message translates to:
  /// **'Continue to Photo editor'**
  String get continueToPhotoEditor;

  /// No description provided for @createCollection.
  ///
  /// In en, this message translates to:
  /// **'Create collection'**
  String get createCollection;

  /// No description provided for @createPost.
  ///
  /// In en, this message translates to:
  /// **'Create post'**
  String get createPost;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get currentPassword;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get darkMode;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deleteCollection.
  ///
  /// In en, this message translates to:
  /// **'Delete collection'**
  String get deleteCollection;

  /// No description provided for @deletePost.
  ///
  /// In en, this message translates to:
  /// **'Delete post'**
  String get deletePost;

  /// No description provided for @displayBio.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get displayBio;

  /// No description provided for @displayName.
  ///
  /// In en, this message translates to:
  /// **'Display name'**
  String get displayName;

  /// No description provided for @displayWeb.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get displayWeb;

  /// No description provided for @dontHaveAnAccountLine.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account ?'**
  String get dontHaveAnAccountLine;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddress;

  /// No description provided for @emailNotifications.
  ///
  /// In en, this message translates to:
  /// **'Email notifications'**
  String get emailNotifications;

  /// No description provided for @emailVerification.
  ///
  /// In en, this message translates to:
  /// **'Email verification'**
  String get emailVerification;

  /// No description provided for @enterOtpReceived.
  ///
  /// In en, this message translates to:
  /// **'Enter received OTP'**
  String get enterOtpReceived;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @enteredOtpDoesntMatchTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Entered OTP doesn\'t match, please try again.'**
  String get enteredOtpDoesntMatchTryAgain;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @fieldErrorCollectionDisplayTitleMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Title should be less than %s characters.'**
  String get fieldErrorCollectionDisplayTitleMaxLength;

  /// No description provided for @fieldErrorCollectionDisplayTitleMinLength.
  ///
  /// In en, this message translates to:
  /// **'Title should be atleast %s characters long.'**
  String get fieldErrorCollectionDisplayTitleMinLength;

  /// No description provided for @fieldErrorPostCommentDisplayTextMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Comment should be less than %s characters.'**
  String get fieldErrorPostCommentDisplayTextMaxLength;

  /// No description provided for @fieldErrorPostCommentDisplayTextMinLength.
  ///
  /// In en, this message translates to:
  /// **'Comment should be atleast %s characters long.'**
  String get fieldErrorPostCommentDisplayTextMinLength;

  /// No description provided for @fieldErrorPostDisplayCaptionMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Caption should be less than %s characters.'**
  String get fieldErrorPostDisplayCaptionMaxLength;

  /// No description provided for @fieldErrorPostDisplayCaptionMinLength.
  ///
  /// In en, this message translates to:
  /// **'Caption should be atleast %s characters long.'**
  String get fieldErrorPostDisplayCaptionMinLength;

  /// No description provided for @fieldErrorPostDisplayContentItemFormat.
  ///
  /// In en, this message translates to:
  /// **'One of your uploaded photos is either not supported or corrupted. Allowed formats includes %s.'**
  String get fieldErrorPostDisplayContentItemFormat;

  /// No description provided for @fieldErrorPostDisplayContentItemMaxAllowed.
  ///
  /// In en, this message translates to:
  /// **'You can add upto %s photos in your post.'**
  String get fieldErrorPostDisplayContentItemMaxAllowed;

  /// No description provided for @fieldErrorPostDisplayContentItemMinAllowed.
  ///
  /// In en, this message translates to:
  /// **'You\'ve to add atleast %s photos in your post.'**
  String get fieldErrorPostDisplayContentItemMinAllowed;

  /// No description provided for @fieldErrorPostDisplayContentItemSize.
  ///
  /// In en, this message translates to:
  /// **'Maximum allowed size for uploaded file is %s MB. One of your images exceeds that limit.'**
  String get fieldErrorPostDisplayContentItemSize;

  /// No description provided for @fieldErrorPostDisplayLocationMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Location should be less than %s characters.'**
  String get fieldErrorPostDisplayLocationMaxLength;

  /// No description provided for @fieldErrorPostDisplayLocationMinLength.
  ///
  /// In en, this message translates to:
  /// **'Location should be atleast %s characters long.'**
  String get fieldErrorPostDisplayLocationMinLength;

  /// No description provided for @fieldErrorPostHashtagMaxAllowed.
  ///
  /// In en, this message translates to:
  /// **'You can add upto %s hashtags in your post.'**
  String get fieldErrorPostHashtagMaxAllowed;

  /// No description provided for @fieldErrorPostHashtagMaxLength.
  ///
  /// In en, this message translates to:
  /// **'One of your #hashtag is longer than %s characters. Please use small hashtags in your caption.'**
  String get fieldErrorPostHashtagMaxLength;

  /// No description provided for @fieldErrorPostHashtagMinAllowed.
  ///
  /// In en, this message translates to:
  /// **'You\'ve to add atleast %s hashtags in your post.'**
  String get fieldErrorPostHashtagMinAllowed;

  /// No description provided for @fieldErrorPostHashtagMinLength.
  ///
  /// In en, this message translates to:
  /// **'One of your #hashtag is too small. All hashtags in caption should be atleast %s characters long.'**
  String get fieldErrorPostHashtagMinLength;

  /// No description provided for @fieldErrorPostUserTagPerItemMaxAllowed.
  ///
  /// In en, this message translates to:
  /// **'You can tag upto %s people in a single photo.'**
  String get fieldErrorPostUserTagPerItemMaxAllowed;

  /// No description provided for @fieldErrorPostUserTagPerItemMinAllowed.
  ///
  /// In en, this message translates to:
  /// **'You\'ve to tag atleast %s people in all of your photos.'**
  String get fieldErrorPostUserTagPerItemMinAllowed;

  /// No description provided for @fieldErrorPostUserTagTotalMaxAllowed.
  ///
  /// In en, this message translates to:
  /// **'You can tag upto %s people combined in your photos.'**
  String get fieldErrorPostUserTagTotalMaxAllowed;

  /// No description provided for @fieldErrorPostUserTagTotalMinAllowed.
  ///
  /// In en, this message translates to:
  /// **'You\'ve to tag atleast a total of %s people in your photos.'**
  String get fieldErrorPostUserTagTotalMinAllowed;

  /// No description provided for @fieldErrorUserDisplayBioMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Bio should be less than %s characters.'**
  String get fieldErrorUserDisplayBioMaxLength;

  /// No description provided for @fieldErrorUserDisplayBioMinLength.
  ///
  /// In en, this message translates to:
  /// **'Bio should be atleast %s characters long.'**
  String get fieldErrorUserDisplayBioMinLength;

  /// No description provided for @fieldErrorUserDisplayImageFormat.
  ///
  /// In en, this message translates to:
  /// **'Photo you uploaded is either not supported or corrupted. Allowed formats includes %s.'**
  String get fieldErrorUserDisplayImageFormat;

  /// No description provided for @fieldErrorUserDisplayImageSize.
  ///
  /// In en, this message translates to:
  /// **'Maximum allowed size for uploaded file is %s MB.'**
  String get fieldErrorUserDisplayImageSize;

  /// No description provided for @fieldErrorUserDisplayNameMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Display name should be less than %s characters.'**
  String get fieldErrorUserDisplayNameMaxLength;

  /// No description provided for @fieldErrorUserDisplayNameMinLength.
  ///
  /// In en, this message translates to:
  /// **'Display name should be atleast %s characters long.'**
  String get fieldErrorUserDisplayNameMinLength;

  /// No description provided for @fieldErrorUserDisplayWebInvalidFormat.
  ///
  /// In en, this message translates to:
  /// **'Entered website is not a valid URL.'**
  String get fieldErrorUserDisplayWebInvalidFormat;

  /// No description provided for @fieldErrorUserDisplayWebMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Website should be less than %s characters.'**
  String get fieldErrorUserDisplayWebMaxLength;

  /// No description provided for @fieldErrorUserDisplayWebMinLength.
  ///
  /// In en, this message translates to:
  /// **'Website should be atleast %s characters long.'**
  String get fieldErrorUserDisplayWebMinLength;

  /// No description provided for @fieldErrorUserEmailInvalidFormat.
  ///
  /// In en, this message translates to:
  /// **'Entered email is not a valid email address.'**
  String get fieldErrorUserEmailInvalidFormat;

  /// No description provided for @fieldErrorUserEmailMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Email should be less than %s characters.'**
  String get fieldErrorUserEmailMaxLength;

  /// No description provided for @fieldErrorUserEmailMinLength.
  ///
  /// In en, this message translates to:
  /// **'Email should be atleast %s characters long.'**
  String get fieldErrorUserEmailMinLength;

  /// No description provided for @fieldErrorUserEmailNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Email address is already in use.'**
  String get fieldErrorUserEmailNotAvailable;

  /// No description provided for @fieldErrorUserPasswordMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Password should be less than %s characters long.'**
  String get fieldErrorUserPasswordMaxLength;

  /// No description provided for @fieldErrorUserPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password should be atleast %s characters long.'**
  String get fieldErrorUserPasswordMinLength;

  /// No description provided for @fieldErrorUserPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match. Please retype your new password.'**
  String get fieldErrorUserPasswordMismatch;

  /// No description provided for @fieldErrorUserUsernameAllowedCharactersOnly.
  ///
  /// In en, this message translates to:
  /// **'Username can contain letters, number, -(hyphen) and .(dot)'**
  String get fieldErrorUserUsernameAllowedCharactersOnly;

  /// No description provided for @fieldErrorUserUsernameMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Username should be less than %s characters long.'**
  String get fieldErrorUserUsernameMaxLength;

  /// No description provided for @fieldErrorUserUsernameMinLength.
  ///
  /// In en, this message translates to:
  /// **'Username should be atleast %s characters long.'**
  String get fieldErrorUserUsernameMinLength;

  /// No description provided for @fieldErrorUserUsernameMustStartsWithAlphabet.
  ///
  /// In en, this message translates to:
  /// **'Username must starts with a letter.'**
  String get fieldErrorUserUsernameMustStartsWithAlphabet;

  /// No description provided for @fieldErrorUserUsernameNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Username is already taken.'**
  String get fieldErrorUserUsernameNotAvailable;

  /// No description provided for @filterBrave.
  ///
  /// In en, this message translates to:
  /// **'Brave'**
  String get filterBrave;

  /// No description provided for @filterExclusion.
  ///
  /// In en, this message translates to:
  /// **'Exclusion'**
  String get filterExclusion;

  /// No description provided for @filterGrayScale.
  ///
  /// In en, this message translates to:
  /// **'Grayscale'**
  String get filterGrayScale;

  /// No description provided for @filterNight.
  ///
  /// In en, this message translates to:
  /// **'Night'**
  String get filterNight;

  /// No description provided for @filterNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get filterNone;

  /// No description provided for @filterRatio.
  ///
  /// In en, this message translates to:
  /// **'Ratio'**
  String get filterRatio;

  /// No description provided for @filterRetro.
  ///
  /// In en, this message translates to:
  /// **'Retro'**
  String get filterRetro;

  /// No description provided for @filterSepiaScale.
  ///
  /// In en, this message translates to:
  /// **'Sepia scale'**
  String get filterSepiaScale;

  /// No description provided for @findAccount.
  ///
  /// In en, this message translates to:
  /// **'Find account'**
  String get findAccount;

  /// No description provided for @finding.
  ///
  /// In en, this message translates to:
  /// **'Finding...'**
  String get finding;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @followRequests.
  ///
  /// In en, this message translates to:
  /// **'Follow requests'**
  String get followRequests;

  /// No description provided for @followThisAccountToSeeTheirPosts.
  ///
  /// In en, this message translates to:
  /// **'Follow this account to see their photos and other posts.'**
  String get followThisAccountToSeeTheirPosts;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @followingAndFollowers.
  ///
  /// In en, this message translates to:
  /// **'Following and followers'**
  String get followingAndFollowers;

  /// No description provided for @followings.
  ///
  /// In en, this message translates to:
  /// **'Followings'**
  String get followings;

  /// No description provided for @forgetPasswordHelpLine.
  ///
  /// In en, this message translates to:
  /// **'Forgot for login details ?'**
  String get forgetPasswordHelpLine;

  /// No description provided for @fromEveryone.
  ///
  /// In en, this message translates to:
  /// **'From everyone'**
  String get fromEveryone;

  /// No description provided for @fromPeopleIFollow.
  ///
  /// In en, this message translates to:
  /// **'From people I follow'**
  String get fromPeopleIFollow;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @getHelp.
  ///
  /// In en, this message translates to:
  /// **'Get Help'**
  String get getHelp;

  /// No description provided for @hideAllReplies.
  ///
  /// In en, this message translates to:
  /// **'Hide all replies'**
  String get hideAllReplies;

  /// No description provided for @inputPlaceholderPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get inputPlaceholderPassword;

  /// No description provided for @inputPlaceholderUsername.
  ///
  /// In en, this message translates to:
  /// **'Username or Email'**
  String get inputPlaceholderUsername;

  /// No description provided for @isThisYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Is this your account?'**
  String get isThisYourAccount;

  /// No description provided for @johnAcceptedYourFollowRequest.
  ///
  /// In en, this message translates to:
  /// **'John accepted your follow request.'**
  String get johnAcceptedYourFollowRequest;

  /// No description provided for @johnCommentedNiceShot.
  ///
  /// In en, this message translates to:
  /// **'John commented: \"Nice shot!\"'**
  String get johnCommentedNiceShot;

  /// No description provided for @johnCommentedOnPhotoOfYou.
  ///
  /// In en, this message translates to:
  /// **'John commented on post that you\'re tagged in'**
  String get johnCommentedOnPhotoOfYou;

  /// No description provided for @johnLikedPhotoOfYou.
  ///
  /// In en, this message translates to:
  /// **'John liked photo that you\'re tagged in.'**
  String get johnLikedPhotoOfYou;

  /// No description provided for @johnLikedYourComment.
  ///
  /// In en, this message translates to:
  /// **'John liked your comment and other similar notifications.'**
  String get johnLikedYourComment;

  /// No description provided for @johnLikedYourPhoto.
  ///
  /// In en, this message translates to:
  /// **'John liked your photo.'**
  String get johnLikedYourPhoto;

  /// No description provided for @johnTaggedYouInAPhoto.
  ///
  /// In en, this message translates to:
  /// **'John tagged you in a photo.'**
  String get johnTaggedYouInAPhoto;

  /// No description provided for @keepScrollForNewestPosts.
  ///
  /// In en, this message translates to:
  /// **'Scroll to see newest posts from all over the world!'**
  String get keepScrollForNewestPosts;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get lightMode;

  /// No description provided for @like.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get like;

  /// No description provided for @likedPhotoOfYou.
  ///
  /// In en, this message translates to:
  /// **' liked post that you\'re tagged in'**
  String get likedPhotoOfYou;

  /// No description provided for @likedYourComment.
  ///
  /// In en, this message translates to:
  /// **' liked your comment on a post'**
  String get likedYourComment;

  /// No description provided for @likedYourPost.
  ///
  /// In en, this message translates to:
  /// **' liked your post'**
  String get likedYourPost;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get likes;

  /// No description provided for @likesOnPhotosOfYou.
  ///
  /// In en, this message translates to:
  /// **'Likes on photos of you'**
  String get likesOnPhotosOfYou;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @loggingIn.
  ///
  /// In en, this message translates to:
  /// **'Logging in...'**
  String get loggingIn;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @loginErrorMissingFields.
  ///
  /// In en, this message translates to:
  /// **'Please enter your username and passwords. All fields are required to continue'**
  String get loginErrorMissingFields;

  /// No description provided for @loginErrorPasswordNotMatched.
  ///
  /// In en, this message translates to:
  /// **'Password is incorrect, please double check your credentials'**
  String get loginErrorPasswordNotMatched;

  /// No description provided for @loginErrorUserNotFound.
  ///
  /// In en, this message translates to:
  /// **'User doesn\'t exists, please check your credentials'**
  String get loginErrorUserNotFound;

  /// No description provided for @loginErrorUsernameOrPasswordNotMatched.
  ///
  /// In en, this message translates to:
  /// **'Username or Password is incorrect, please double check your credentials'**
  String get loginErrorUsernameOrPasswordNotMatched;

  /// No description provided for @loginSecurity.
  ///
  /// In en, this message translates to:
  /// **'Login security'**
  String get loginSecurity;

  /// No description provided for @loginToContinue.
  ///
  /// In en, this message translates to:
  /// **'Please login to continue'**
  String get loginToContinue;

  /// No description provided for @nLikes.
  ///
  /// In en, this message translates to:
  /// **'%s likes'**
  String get nLikes;

  /// No description provided for @nSelected.
  ///
  /// In en, this message translates to:
  /// **'%s Selected'**
  String get nSelected;

  /// No description provided for @newCollection.
  ///
  /// In en, this message translates to:
  /// **'New collection'**
  String get newCollection;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @noFindAgain.
  ///
  /// In en, this message translates to:
  /// **'No. Find again'**
  String get noFindAgain;

  /// No description provided for @noNetworkMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to connect, make sure you\'re connected to the Network'**
  String get noNetworkMessage;

  /// No description provided for @noPostsToShow.
  ///
  /// In en, this message translates to:
  /// **'No posts to show'**
  String get noPostsToShow;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @oneSelected.
  ///
  /// In en, this message translates to:
  /// **'1 Selected'**
  String get oneSelected;

  /// No description provided for @otherNotifications.
  ///
  /// In en, this message translates to:
  /// **'Other notification types'**
  String get otherNotifications;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @pauseAll.
  ///
  /// In en, this message translates to:
  /// **'Pause all'**
  String get pauseAll;

  /// No description provided for @peopleTagged.
  ///
  /// In en, this message translates to:
  /// **'Tagged people'**
  String get peopleTagged;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal information'**
  String get personalInformation;

  /// No description provided for @personalInformationSettings.
  ///
  /// In en, this message translates to:
  /// **'Personal information settings'**
  String get personalInformationSettings;

  /// No description provided for @personalInformationSettingsHint.
  ///
  /// In en, this message translates to:
  /// **'Provide your personal information, even if the account is used for a business, a pet or something else. This won\'t be part of your public profile.'**
  String get personalInformationSettingsHint;

  /// No description provided for @photosOfYou.
  ///
  /// In en, this message translates to:
  /// **'Photos of you'**
  String get photosOfYou;

  /// No description provided for @pleaseCheckYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Please check your email for one time password. Make sure to check spam as well.'**
  String get pleaseCheckYourEmail;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @posting.
  ///
  /// In en, this message translates to:
  /// **'Posting...'**
  String get posting;

  /// No description provided for @posts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get posts;

  /// No description provided for @postsLikesAndComments.
  ///
  /// In en, this message translates to:
  /// **'Posts, likes and comments'**
  String get postsLikesAndComments;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @privateAccount.
  ///
  /// In en, this message translates to:
  /// **'Private account'**
  String get privateAccount;

  /// No description provided for @privateAccountBulletPointOne.
  ///
  /// In en, this message translates to:
  /// **'Only your followers will be able to see your photos and other posts.'**
  String get privateAccountBulletPointOne;

  /// No description provided for @privateAccountBulletPointTwo.
  ///
  /// In en, this message translates to:
  /// **'This won\'t change who can tag you in their posts.'**
  String get privateAccountBulletPointTwo;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing...'**
  String get processing;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @publicAccountBulletPointOne.
  ///
  /// In en, this message translates to:
  /// **'Anyone will be able to see your photos and other posts.'**
  String get publicAccountBulletPointOne;

  /// No description provided for @publicAccountBulletPointThree.
  ///
  /// In en, this message translates to:
  /// **'All pending requests will be approved unless you delete them.'**
  String get publicAccountBulletPointThree;

  /// No description provided for @publicAccountBulletPointTwo.
  ///
  /// In en, this message translates to:
  /// **'This won\'t change who can tag you in their posts.'**
  String get publicAccountBulletPointTwo;

  /// No description provided for @pushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Content notifications'**
  String get pushNotifications;

  /// No description provided for @recoverAccount.
  ///
  /// In en, this message translates to:
  /// **'Recover account'**
  String get recoverAccount;

  /// No description provided for @registerErrorMissingFields.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email, choose a username and password to conintue.'**
  String get registerErrorMissingFields;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @removeProfilePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove profile photo'**
  String get removeProfilePhoto;

  /// No description provided for @repliedToYourCommentOnPost.
  ///
  /// In en, this message translates to:
  /// **' replied to your comment on a post'**
  String get repliedToYourCommentOnPost;

  /// No description provided for @replies.
  ///
  /// In en, this message translates to:
  /// **'Replies'**
  String get replies;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @replyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to %s'**
  String get replyingTo;

  /// No description provided for @request.
  ///
  /// In en, this message translates to:
  /// **'Request'**
  String get request;

  /// No description provided for @requested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get requested;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @resetting.
  ///
  /// In en, this message translates to:
  /// **'Reseting...'**
  String get resetting;

  /// No description provided for @retypeNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Retype new Password'**
  String get retypeNewPassword;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @saveProfilePicture.
  ///
  /// In en, this message translates to:
  /// **'Save profile photo'**
  String get saveProfilePicture;

  /// No description provided for @saveTo.
  ///
  /// In en, this message translates to:
  /// **'Save to'**
  String get saveTo;

  /// No description provided for @savedPosts.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get savedPosts;

  /// No description provided for @saving.
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get saving;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searching.
  ///
  /// In en, this message translates to:
  /// **'Searching...'**
  String get searching;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @selectCover.
  ///
  /// In en, this message translates to:
  /// **'Select cover'**
  String get selectCover;

  /// No description provided for @selectToAdd.
  ///
  /// In en, this message translates to:
  /// **'Select to Add'**
  String get selectToAdd;

  /// No description provided for @sendCodeToMyEmail.
  ///
  /// In en, this message translates to:
  /// **'Send code to my Email'**
  String get sendCodeToMyEmail;

  /// No description provided for @sending.
  ///
  /// In en, this message translates to:
  /// **'Sending...'**
  String get sending;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @shareYourFirstPhoto.
  ///
  /// In en, this message translates to:
  /// **'Share your first photo'**
  String get shareYourFirstPhoto;

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **' - show less'**
  String get showLess;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'... more'**
  String get showMore;

  /// No description provided for @showingSuggestedPostsDescription.
  ///
  /// In en, this message translates to:
  /// **'Now showing suggested posts from all over the network.'**
  String get showingSuggestedPostsDescription;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @signingUp.
  ///
  /// In en, this message translates to:
  /// **'Signing up...'**
  String get signingUp;

  /// No description provided for @signupForAAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign up for a new account!'**
  String get signupForAAccount;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @somethingWentWrongMessage.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again later.'**
  String get somethingWentWrongMessage;

  /// No description provided for @startedFollowingYou.
  ///
  /// In en, this message translates to:
  /// **'started following you'**
  String get startedFollowingYou;

  /// No description provided for @switchToPrivate.
  ///
  /// In en, this message translates to:
  /// **'Switch to Private'**
  String get switchToPrivate;

  /// No description provided for @switchToPrivateAccountQuestion.
  ///
  /// In en, this message translates to:
  /// **'Switch to private account?'**
  String get switchToPrivateAccountQuestion;

  /// No description provided for @switchToPublic.
  ///
  /// In en, this message translates to:
  /// **'Switch to Public'**
  String get switchToPublic;

  /// No description provided for @switchToPublicAccountQuestion.
  ///
  /// In en, this message translates to:
  /// **'Switch to public account?'**
  String get switchToPublicAccountQuestion;

  /// No description provided for @tagPeople.
  ///
  /// In en, this message translates to:
  /// **'Tag people'**
  String get tagPeople;

  /// No description provided for @taggedInPosts.
  ///
  /// In en, this message translates to:
  /// **'Tagged in posts'**
  String get taggedInPosts;

  /// No description provided for @taggedYouInAPhoto.
  ///
  /// In en, this message translates to:
  /// **' tagged you in a photo'**
  String get taggedYouInAPhoto;

  /// No description provided for @takeAPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a Photo'**
  String get takeAPhoto;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @thisAccountIsPrivate.
  ///
  /// In en, this message translates to:
  /// **'This account is private'**
  String get thisAccountIsPrivate;

  /// No description provided for @toggleDarkMode.
  ///
  /// In en, this message translates to:
  /// **'Toggle Dark Mode'**
  String get toggleDarkMode;

  /// No description provided for @troubleLoggingIn.
  ///
  /// In en, this message translates to:
  /// **'Trouble logging in?'**
  String get troubleLoggingIn;

  /// No description provided for @unableToConnect.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect'**
  String get unableToConnect;

  /// No description provided for @unableToConnectDescription.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect to server. Please try again later.'**
  String get unableToConnectDescription;

  /// No description provided for @unblock.
  ///
  /// In en, this message translates to:
  /// **'Unblock'**
  String get unblock;

  /// No description provided for @unblockAccount.
  ///
  /// In en, this message translates to:
  /// **'UnblockAccount'**
  String get unblockAccount;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @updateYourApp.
  ///
  /// In en, this message translates to:
  /// **'Update your app'**
  String get updateYourApp;

  /// No description provided for @uploadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload Photo'**
  String get uploadPhoto;

  /// No description provided for @uploadPhotos.
  ///
  /// In en, this message translates to:
  /// **'Upload Photos'**
  String get uploadPhotos;

  /// No description provided for @userIsntTaggedInAnyPost.
  ///
  /// In en, this message translates to:
  /// **'User isn\'t tagged by anyone, in any photo, or post.'**
  String get userIsntTaggedInAnyPost;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @usernameOfYouAccount.
  ///
  /// In en, this message translates to:
  /// **'Username of your account'**
  String get usernameOfYouAccount;

  /// No description provided for @valueOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get valueOff;

  /// No description provided for @valueOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get valueOn;

  /// No description provided for @verificationSessionHasBeenExpired.
  ///
  /// In en, this message translates to:
  /// **'Verification Session has been expired. Please go back and start again.'**
  String get verificationSessionHasBeenExpired;

  /// No description provided for @verifyEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify your email'**
  String get verifyEmail;

  /// No description provided for @viewAllNComments.
  ///
  /// In en, this message translates to:
  /// **'View all %s comments'**
  String get viewAllNComments;

  /// No description provided for @viewAllNReplies.
  ///
  /// In en, this message translates to:
  /// **'View all %s replies'**
  String get viewAllNReplies;

  /// No description provided for @viewMorePreviousReplies.
  ///
  /// In en, this message translates to:
  /// **'View more previous replies'**
  String get viewMorePreviousReplies;

  /// No description provided for @viewPreviousNReplies.
  ///
  /// In en, this message translates to:
  /// **'View previous %s replies'**
  String get viewPreviousNReplies;

  /// No description provided for @viewUser.
  ///
  /// In en, this message translates to:
  /// **'View user'**
  String get viewUser;

  /// No description provided for @weCanHelpYouResetYourAccountPassword.
  ///
  /// In en, this message translates to:
  /// **'We can help you recover account be resetting its password.'**
  String get weCanHelpYouResetYourAccountPassword;

  /// No description provided for @weWillSendYouAVerficationCodeOnEmail.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send a verification code to your email address to complete verfication process.'**
  String get weWillSendYouAVerficationCodeOnEmail;

  /// No description provided for @welcomeToYourFeedsDescription.
  ///
  /// In en, this message translates to:
  /// **'Welcome to your feeds section. All activity from people you follow will appear here.'**
  String get welcomeToYourFeedsDescription;

  /// No description provided for @weveSentYouAnOtp.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent you an OTP'**
  String get weveSentYouAnOtp;

  /// No description provided for @whenPeopleTagYouInPhotosTheyIllAppearHere.
  ///
  /// In en, this message translates to:
  /// **'When people tag you in photos and their posts, they\'ll appear here.'**
  String get whenPeopleTagYouInPhotosTheyIllAppearHere;

  /// No description provided for @whenYouSharePhotosTheyIllAppearHere.
  ///
  /// In en, this message translates to:
  /// **'When you share photos and other posts, they\'ll appear on your profile.'**
  String get whenYouSharePhotosTheyIllAppearHere;

  /// No description provided for @whosThis.
  ///
  /// In en, this message translates to:
  /// **'Who\'s this?'**
  String get whosThis;

  /// No description provided for @writeACaption.
  ///
  /// In en, this message translates to:
  /// **'Write a caption'**
  String get writeACaption;

  /// No description provided for @yesRecoverThis.
  ///
  /// In en, this message translates to:
  /// **'Yes. Recover this account'**
  String get yesRecoverThis;

  /// No description provided for @youAreAllCaughtUp.
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up'**
  String get youAreAllCaughtUp;

  /// No description provided for @youHavntBlockedAnyone.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t blocked anyone.'**
  String get youHavntBlockedAnyone;

  /// No description provided for @youMadeIt.
  ///
  /// In en, this message translates to:
  /// **'You made it!'**
  String get youMadeIt;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
