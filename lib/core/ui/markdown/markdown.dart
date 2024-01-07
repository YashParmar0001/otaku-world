import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart' as md2;
import 'package:url_launcher/url_launcher.dart';
import '../image.dart';
import 'custom_node.dart';
import 'generators/br.dart';
import 'generators/i.dart';
import 'generators/img.dart';
import 'generators/spolier.dart';
import 'generators/video.dart';

var removeRegex = RegExp(r'~{3}([\s\S]*?)~{3}|(<br>)(?:<br>)?', dotAll: true);

class Markdown extends StatelessWidget {
  const Markdown({
    super.key,
    required this.data,
    this.selectable = true,
  });

  final String data;
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    // print(data);
    var markdown = data.replaceAllMapped(removeRegex, (match) {
      // logger.i(match.groups([1, 2]));
      return match.group(1) ?? '';
    });

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: md2.MarkdownWidget(
        data: markdown,
        shrinkWrap: true,
        selectable: selectable,
        markdownGenerator: md2.MarkdownGenerator(
          generators: [iWithTag, spoilerWithTag, imgWithTag, videoWithTag],
          inlineSyntaxList: [
            ISyntax(),
            ImgSyntax(),
            SpoilerSyntax(),
            BrSyntax(),
            VideoSyntax(),
            md.AutolinkExtensionSyntax(),
          ],
          textGenerator: (node, config, visitor) =>
              CustomTextNode(node.textContent, config, visitor),
        ),
        config: md2.MarkdownConfig(
          configs: [
            const md2.PConfig(
              textStyle: TextStyle(color: Colors.white),
            ),
            md2.LinkConfig(
              style: const TextStyle(color: Colors.blue),
              onTap: (value) {
                var uri = Uri.tryParse(value);
                // print(uri?.host);
                if (uri?.host == 'anilist.co') {
                  if (['anime', 'manga'].contains(uri!.pathSegments.first)) {
                    context.push('/media/${uri.pathSegments[1]}/overview');
                    return;
                  } else if (['character', 'staff']
                      .contains(uri.pathSegments.first)) {
                    context.push(
                        '/${uri.pathSegments.take(2).join('/')}/overview');
                    return;
                  } else if (uri.pathSegments.first == 'forum' &&
                      uri.pathSegments[1] == 'thread') {
                    context.push('/thread/${uri.pathSegments[2]}');
                    return;
                  } else if (uri.pathSegments.first == 'activity') {
                    context.push('/activity/${uri.pathSegments[1]}');
                    return;
                  }
                }
                if (uri != null) {
                  launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
            ),
            md2.ImgConfig(
              builder: (url, attributes) {
                double? width;
                double? height;
                if (attributes['width'] != null) {
                  width = double.tryParse(attributes['width']!);
                }
                if (attributes['height'] != null) {
                  height = double.tryParse(attributes['height']!);
                }

                return SizedBox(
                  height: height,
                  width: width,
                  child: CImage(
                    imageUrl: url,
                    viewer: true,
                  ),
                );
              },
              errorBuilder: (_, __, ___) => const SizedBox(),
            ),
            const md2.CodeConfig(style: TextStyle(color: Colors.white)),
            md2.PreConfig(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
            )

          ],
        ),
      ),
    );
  }
}
