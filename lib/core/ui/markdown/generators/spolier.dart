import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

import '../../../../config/router/router.dart';
import '../../../../theme/colors.dart';
import '../markdown.dart';

String _tag = 'spoiler';

class SpoilerNode extends ElementNode {
  SpoilerNode(this.spoiler);

  final String spoiler;

  @override
  InlineSpan build() {
    return TextSpan(
      text: '[Spoiler]',
      style: const TextStyle(
        color: AppColors.linkColor,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () => showSpoiler(
            router.configuration.navigatorKey.currentContext!, spoiler),
    );
  }
}

showSpoiler(BuildContext context, String spoiler) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        width: double.maxFinite,
        child: Markdown(data: spoiler),
      ),
    ),
  );
}

SpanNodeGeneratorWithTag spoilerWithTag = SpanNodeGeneratorWithTag(
  tag: _tag,
  generator: (e, config, visitor) => SpoilerNode(e.attributes['spoiler']!),
);

class SpoilerSyntax extends md.InlineSyntax {
  SpoilerSyntax() : super(r'~!([^]+?)!~');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    md.Element el = md.Element.withTag(_tag)
      ..attributes['spoiler'] = match.group(1)!;
    parser.addNode(el);
    return true;
  }
}
