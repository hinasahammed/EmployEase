/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/analyst.png
  AssetGenImage get analyst => const AssetGenImage('assets/icons/analyst.png');

  /// File path: assets/icons/designer.png
  AssetGenImage get designer =>
      const AssetGenImage('assets/icons/designer.png');

  /// File path: assets/icons/developer.png
  AssetGenImage get developer =>
      const AssetGenImage('assets/icons/developer.png');

  /// File path: assets/icons/facebook_icon.png
  AssetGenImage get facebookIcon =>
      const AssetGenImage('assets/icons/facebook_icon.png');

  /// File path: assets/icons/filter.png
  AssetGenImage get filter => const AssetGenImage('assets/icons/filter.png');

  /// File path: assets/icons/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/icons/google_icon.png');

  /// File path: assets/icons/phsycologist.png
  AssetGenImage get phsycologist =>
      const AssetGenImage('assets/icons/phsycologist.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        analyst,
        designer,
        developer,
        facebookIcon,
        filter,
        googleIcon,
        phsycologist
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.jpg');

  /// File path: assets/images/getstartedimg1.png
  AssetGenImage get getstartedimg1 =>
      const AssetGenImage('assets/images/getstartedimg1.png');

  /// File path: assets/images/getstartedimg2.png
  AssetGenImage get getstartedimg2 =>
      const AssetGenImage('assets/images/getstartedimg2.png');

  /// File path: assets/images/getstartedimg3.png
  AssetGenImage get getstartedimg3 =>
      const AssetGenImage('assets/images/getstartedimg3.png');

  /// File path: assets/images/jlogo.png
  AssetGenImage get jlogo => const AssetGenImage('assets/images/jlogo.png');

  /// File path: assets/images/profile.jpeg
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [
        background,
        getstartedimg1,
        getstartedimg2,
        getstartedimg3,
        jlogo,
        profile
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
