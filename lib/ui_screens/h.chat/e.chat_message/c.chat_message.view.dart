part of '_index.dart';

class ChatMessageView extends StatelessWidget {
  const ChatMessageView({Key? key}) : super(key: key);

  ChatMessageCtrl get ct => x1ChatMessageCtrl;
  ChatMessageData get dt => x1ChatMessageData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatMessageAppbar(),
      ),
      // floatingActionButton: const ChatMessageFab(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            children: [
              Expanded(
                child: OnBuilder<List<ChatMessage>>.all(
                  listenTo: dt.rxChatMessages,
                  onWaiting: () => const Text('waiting...'),
                  onError: (_, __) => const Text('error...'),
                  onData: (data) => data.isEmpty
                      ? const Center(
                          child: Text('empty'),
                        )
                      : ListView.builder(
                          itemCount: data.length,
                          padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                          reverse: true,
                          itemBuilder: (context, i) {
                            return ChatMessageItem(index: i);
                          },
                        ),
                ),
              ),
              const ChatMessageInput(),
            ],
          ),
        ),
      ),
    );
  }
}
