%hook BLTBulletinDistributor

  //  ------- Send Notifications to watch even when iPhone is unlocked & in use -------
  //Older versions
  - (void)_notifyGizmoOfBulletin:(id)arg1 forFeed:(NSUInteger)arg2 updateType:(NSUInteger)arg3 playLightsAndSirens:(BOOL)arg4 shouldSendReplyIfNeeded:(BOOL)arg5
  {
      %orig(arg1, arg2, arg3, YES, arg5);
  }

  -(BOOL)_notifyGizmoOfBulletin:(id)arg1 forFeed:(unsigned long long)arg2 updateType:(unsigned long long)arg3 playLightsAndSirens:(BOOL)arg4 shouldSendReplyIfNeeded:(BOOL)arg5 attachment:(id)arg6 attachmentType:(long long)arg7 replyToken:(id)arg8
  {
    arg4 = YES;
    return %orig;
  }

  //  ------- Send Notifications to iPhone even when they have been delivered to watch & iPhone is Locked -------
  - (void)_handleDidPlayLightsAndSirens:(BOOL)didPlayLightsAndSirens forBulletin:(id)bulletin inPhoneSection:(id)phoneSecton transmissionDate:(id)transmissionDate receptionDate:(id)receptionDate fromGizmo:(BOOL)fromGizmo finalReply:(BOOL)finalReply replyToken:(id)replyToken
  {
    didPlayLightsAndSirens = NO;
    %orig;
  }

%end
