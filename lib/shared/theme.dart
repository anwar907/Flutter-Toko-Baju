part of 'shared.dart';

const double defaultMargin = 24;

Color greyColor = Color(0xFF8D92A3);
Color mainColor = Color(0xFFFFC700);

// class _OurKey {
//   final Object ProviderCacheKey;
//   const _OurKey(this.ProviderCacheKey);

//   @override
//   bool operator ==(Object other) {
//     if (other.runtimeType != runtimeType) return false;
//     return other is _OurKey && other.ProviderCacheKey == ProviderCacheKey;
//   }

//   @override
//   // TODO: implement hashCode
//   int get hashCode => ProviderCacheKey.hashCode;
// }

// class OurImageProvider extends ImageProvider<_OurKey> {
//   final ImageProvider imageProvider;
//   const OurImageProvider(this.imageProvider);

//   @override
//   ImageStreamCompleter load( _OurKey key, decode) {
//     final ourDecoder = (
//       Uint8List bytes, {
//       required bool allowUpscaling,
//       required int cacheWidth,
//       required int cacheHeight,
//     }) async {
//       return decode(await whiteToAlpha(bytes),
//           cacheWidth: cacheWidth, cacheHeight: cacheHeight);
//     };
//     return imageProvider.load( key.ProviderCacheKey, ourDecoder!);
//   }

//   @override
//   Future<_OurKey> obtainKey(ImageConfiguration configuration) {
//     Completer<_OurKey> completer;
//     SynchronousFuture<_OurKey> result;
//     imageProvider.obtainKey(configuration).then((Object key) {
//       result = SynchronousFuture<_OurKey>(_OurKey(key));
//       completer.complete(_OurKey(key));
//       return result;
//     });

//     completer = Completer<_OurKey>();
//     return completer.future;
//   }

//   Future<Unit8List> whiteToAlpha(Uint8List bytes) async {
//     final image = decodeImage(bytes);

//     final pixels = image.getBytes(format: Format.rgba);
//     final length = pixels.lengthInBytes;
//     for (var i = 0; i < length; i += 4) {
//       if (pixels[i] == 255 && pixels[i + 1] == 255 && pixels[i + 2] == 255) {
//         pixels[i + 3] = 0;
//       }
//     }
//     return encodePng(image);
//   }
// }
