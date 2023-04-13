import 'package:flutter/material.dart';
import 'package:photogram/core/bloc/theme/theme_bloc.dart';

import 'package:photogram/import/core.dart';
import 'package:photogram/import/data.dart';

import 'package:photogram/theme/photogram/include/pg_utils.dart';
import 'package:photogram/theme/photogram/include/widgets/settings/pg_settings_item.dart';

class PgNotificationPostsLikesAndCommentsPage extends StatefulWidget {
  const PgNotificationPostsLikesAndCommentsPage({Key? key}) : super(key: key);

  @override
  State<PgNotificationPostsLikesAndCommentsPage> createState() => _PgNotificationPostsLikesAndCommentsPageState();
}

class _PgNotificationPostsLikesAndCommentsPageState extends State<PgNotificationPostsLikesAndCommentsPage>
    with AppActiveContentMixin, AppUserMixin, AppUtilsMixin {
  late final UserModel _userModel;

  @override
  void onLoadEvent() {
    _userModel = activeContent.authBloc.getCurrentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.postsLikesAndComments)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._buildLikesSettings(),
                ThemeBloc.widgetInterface.divider(),
                ..._buildCommentsSettings(),
                ThemeBloc.widgetInterface.divider(),
                ..._buildCommentLikesAndPinsSettings(),
                PgUtils.sizedBoxH(10)
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildOptions({required String currentSettingValue, required List<SettingOption> options}) {
    var listTiles = <Widget>[];

    for (var option in options) {
      listTiles.add(
        ListTile(
          onTap: option.onTap,
          dense: true,
          title: ThemeBloc.textInterface.normalBlackH4Text(text: option.title),
          trailing: (currentSettingValue == option.activatingValue)
              ? Icon(
                  Icons.check_circle,
                  color: ThemeBloc.colorScheme.primary,
                )
              : const Icon(Icons.circle_outlined),
        ),
      );
    }

    return listTiles;
  }

  void save(VoidCallback callback) {
    utilMixinSetState(() {
      callback();
      activeContent.apiRepository.userUpdateMetaPushSettings(userPushSettingsDTO: _userModel.metaPushSettings);
    });
  }

  List<Widget> _buildLikesSettings() {
    return [
      PgUtils.sizedBoxH(15),
      PgSettingsItemHeader(context: context, headerTitle: AppLocalizations.of(context)!.likes).build(),
      ..._buildOptions(
        currentSettingValue: _userModel.metaPushSettings.likes,
        options: [
          SettingOption(
            title: AppLocalizations.of(context)!.valueOff,
            activatingValue: UserMetaPushSettingsDTO.valueOff,
            onTap: () => save(() {
              _userModel.metaPushSettings.likes = UserMetaPushSettingsDTO.valueOff;
            }),
          ),
          SettingOption(
            title: AppLocalizations.of(context)!.fromPeopleIFollow,
            activatingValue: UserMetaPushSettingsDTO.valueFromPeopleIFollow,
            onTap: () => save(() {
              _userModel.metaPushSettings.likes = UserMetaPushSettingsDTO.valueFromPeopleIFollow;
            }),
          ),
          SettingOption(
            title: AppLocalizations.of(context)!.fromEveryone,
            activatingValue: UserMetaPushSettingsDTO.valueFromEveryone,
            onTap: () => save(() {
              _userModel.metaPushSettings.likes = UserMetaPushSettingsDTO.valueFromEveryone;
            }),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ThemeBloc.textInterface.normalGreyH5Text(text: AppLocalizations.of(context)!.johnLikedYourPhoto),
      ),
      PgUtils.sizedBoxH(15),
    ];
  }

  List<Widget> _buildCommentsSettings() {
    return [
      PgUtils.sizedBoxH(10),
      PgSettingsItemHeader(context: context, headerTitle: AppLocalizations.of(context)!.comments).build(),
      ..._buildOptions(
        currentSettingValue: _userModel.metaPushSettings.comments,
        options: [
          SettingOption(
            title: AppLocalizations.of(context)!.valueOff,
            activatingValue: UserMetaPushSettingsDTO.valueOff,
            onTap: () => save(() {
              _userModel.metaPushSettings.comments = UserMetaPushSettingsDTO.valueOff;
            }),
          ),
          SettingOption(
            title: AppLocalizations.of(context)!.fromPeopleIFollow,
            activatingValue: UserMetaPushSettingsDTO.valueFromPeopleIFollow,
            onTap: () => save(() {
              _userModel.metaPushSettings.comments = UserMetaPushSettingsDTO.valueFromPeopleIFollow;
            }),
          ),
          SettingOption(
            title: AppLocalizations.of(context)!.fromEveryone,
            activatingValue: UserMetaPushSettingsDTO.valueFromEveryone,
            onTap: () => save(() {
              _userModel.metaPushSettings.comments = UserMetaPushSettingsDTO.valueFromEveryone;
            }),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ThemeBloc.textInterface.normalGreyH5Text(text: AppLocalizations.of(context)!.johnCommentedNiceShot),
      ),
      PgUtils.sizedBoxH(15),
    ];
  }

  List<Widget> _buildCommentLikesAndPinsSettings() {
    return [
      PgUtils.sizedBoxH(10),
      PgSettingsItemHeader(context: context, headerTitle: AppLocalizations.of(context)!.commentLikesAndPins).build(),
      ..._buildOptions(
        currentSettingValue: _userModel.metaPushSettings.commentLikesAndPins,
        options: [
          SettingOption(
            title: AppLocalizations.of(context)!.valueOff,
            activatingValue: UserMetaPushSettingsDTO.valueOff,
            onTap: () => save(() {
              _userModel.metaPushSettings.commentLikesAndPins = UserMetaPushSettingsDTO.valueOff;
            }),
          ),
          SettingOption(
            title: AppLocalizations.of(context)!.valueOn,
            activatingValue: UserMetaPushSettingsDTO.valueOn,
            onTap: () => save(() {
              _userModel.metaPushSettings.commentLikesAndPins = UserMetaPushSettingsDTO.valueOn;
            }),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ThemeBloc.textInterface.normalGreyH5Text(text: AppLocalizations.of(context)!.johnLikedYourComment),
      ),
      PgUtils.sizedBoxH(15),
    ];
  }
}

class SettingOption {
  String title;
  String activatingValue;
  VoidCallback onTap;

  SettingOption({
    required this.title,
    required this.activatingValue,
    required this.onTap,
  });
}
