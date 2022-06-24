part of '_index.dart';

class ChatDetailView extends StatelessWidget {
  const ChatDetailView({Key? key}) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatDetailAppbar(),
      ),
      // floatingActionButton: const ChatDetailFab(),
      body: Column(
        children: [
          Expanded(
            child: OnReactive(
              () => ListView.builder(
                itemCount: dt.rxChatList.st.length,
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                reverse: true,
                itemBuilder: (context, i) {
                  return ChatDetailItem(index: i);
                },
              ),
            ),
          ),
          const ChatDetailInput(),
        ],
      ),
    );
  }
}
