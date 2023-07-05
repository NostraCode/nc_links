import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.chat_message.data.dart';
part 'b.chat_message.ctrl.dart';
part 'c.chat_message.view.dart';
part 'widgets/a.chat_message.appbar.dart';
part 'widgets/b.chat_message.fab.dart';
part 'widgets/c.chat_message.item.dart';
part 'widgets/d.chat_message.date.dart';
part 'widgets/e.chat_message.balloon.dart';
part 'widgets/g.chat_message.nip.dart';
part 'widgets/h.chat_message.input.dart';
part 'widgets/k.chat_message.text_field.dart';
part 'widgets/n.chat_message.btn.dart';

ChatMessageData get _dt => Data.chatMessage.st;
ChatMessageCtrl get _ct => Ctrl.chatMessage;
