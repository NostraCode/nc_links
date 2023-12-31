part of '../_index.dart';

const messages = [
  'Hey! What’s up?',
  'Do you want some chips with your sandwich?',
  'Do you want to see a movie?',
  'Do you like "OverlaySupport" library',
  'if you like it, please go to github give him a star',
  'https://github.com/boyan01/overlay_support',
];

class MessageNotification extends StatelessWidget {
  final VoidCallback onReply;

  final String message;

  const MessageNotification({
    Key? key,
    required this.onReply,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: SafeArea(
        child: ListTile(
          leading: SizedBox.fromSize(
            size: const Size(40, 40),
            // child: ClipOval(child: Image.asset('assets/avatar.png')),
            child: const FlutterLogo(),
          ),
          title: const Text('Boyan'),
          subtitle: Text(message),
          trailing: IconButton(
            icon: const Icon(Icons.reply),
            onPressed: () => onReply(),
          ),
        ),
      ),
    );
  }
}
