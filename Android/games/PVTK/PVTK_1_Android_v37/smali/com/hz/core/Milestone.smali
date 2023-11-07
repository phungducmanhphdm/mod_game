.class public Lcom/hz/core/Milestone;
.super Ljava/lang/Object;
.source "Milestone.java"


# static fields
.field public static final MILESTONE_MISSION_STATE_FINISH:B = 0x2t

.field public static final MILESTONE_MISSION_STATE_NOTOPEN:B = 0x0t

.field public static final MILESTONE_MISSION_STATE_OPEN:B = 0x1t

.field public static final MILESTONE_PATH_FIND_MISSION:B = 0x2t

.field public static final MILESTONE_PATH_FIND_NPC:B = 0x1t


# instance fields
.field public chapterCon:Ljava/lang/String;

.field public chapterId:B

.field public chapterOpen:Z

.field public clientdataerror:Ljava/lang/String;

.field public defaultchapterId:B

.field public findpathtype:B

.field public hasgetreward:Z

.field public hasrewardItem:Z

.field public haveReward:Z

.field public isCanGetdate:Z

.field public level:B

.field public mapId:S

.field public milestones:Z

.field public misDescri:Ljava/lang/String;

.field public misMinLevel:Z

.field public misState:B

.field public missionName:Ljava/lang/String;

.field public missionRewardExp:I

.field public missonRewardMoney2:S

.field public missonRewardMoney3:S

.field public npcId:B

.field public partId:S

.field public partName:Ljava/lang/String;

.field public rTime:I

.field public rewardMoney:S

.field public rewardMoney2:S

.field public rewardMoney3:S

.field public rewardTime:I

.field public serverdataerror:Ljava/lang/String;

.field public vChapterMilestone:Ljava/util/Vector;

.field public vMissionItem:Ljava/util/Vector;

.field public vPart:Ljava/util/Vector;

.field public vRewardItem:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetPartDetailInfo(BS)V
    .locals 4
    .param p0, "chapterId"    # B
    .param p1, "partId"    # S

    .prologue
    .line 412
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 414
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x38de

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 425
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 426
    invoke-virtual {v1, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 428
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_0

    .line 436
    new-instance v0, Lcom/hz/core/Milestone;

    invoke-direct {v0}, Lcom/hz/core/Milestone;-><init>()V

    .line 438
    .local v0, "ms":Lcom/hz/core/Milestone;
    invoke-static {v1, v0}, Lcom/hz/core/Milestone;->getPartDetailInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V

    goto :goto_0
.end method

.method public static doGetReWard(Lcom/hz/core/Milestone;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "milestone"    # Lcom/hz/core/Milestone;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 686
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 693
    .local v3, "player":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 707
    new-instance v1, Lcom/hz/net/Message;

    const/16 v6, 0x38df

    invoke-direct {v1, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 708
    .local v1, "msg":Lcom/hz/net/Message;
    iget-byte v6, p0, Lcom/hz/core/Milestone;->chapterId:B

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 710
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 713
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 714
    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 723
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 725
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 730
    .local v5, "rsReturn":B
    if-eqz v5, :cond_0

    .line 735
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 741
    .local v0, "itemnum":B
    if-lez v0, :cond_3

    .line 743
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    :cond_3
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v3, Lcom/hz/actor/Player;->money1:I

    .line 747
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v3, Lcom/hz/actor/Player;->money2:I

    .line 748
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v3, Lcom/hz/actor/Player;->money3:I

    .line 751
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    .line 752
    .local v2, "obj":Lcom/hz/ui/UIObject;
    if-eqz v2, :cond_4

    .line 754
    invoke-static {}, Lcom/hz/core/Milestone;->doMilestoneEnter()Lcom/hz/core/Milestone;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/hz/ui/UIObject;->setMilestone(Lcom/hz/core/Milestone;)V

    .line 756
    invoke-static {p1}, Lcom/hz/ui/UIHandler;->updteDataToMilestone(Lcom/hz/ui/UIHandler;)V

    .line 759
    :cond_4
    const-string v6, "Nh\u1eadn th\u01b0\u1edfng th\u00e0nh c\u00f4ng!"

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doMilestAb(Lcom/hz/net/Message;)V
    .locals 0
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    .line 825
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    .line 826
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    .line 827
    return-void
.end method

.method public static doMilestOn(Lcom/hz/net/Message;)V
    .locals 0
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    .line 810
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    .line 811
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    .line 816
    return-void
.end method

.method public static doMilestoneEnter()Lcom/hz/core/Milestone;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 99
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 100
    .local v6, "player":Lcom/hz/actor/Player;
    if-nez v6, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v3

    .line 105
    :cond_1
    new-instance v5, Lcom/hz/net/Message;

    const/16 v8, 0x38dc

    invoke-direct {v5, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 106
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 110
    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 119
    .local v2, "isOpen":Z
    if-nez v2, :cond_2

    .line 120
    const-string v8, "Ch\u1ee9c n\u0103ng n\u00e0y ch\u01b0a m\u1edf!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 124
    :cond_2
    new-instance v3, Lcom/hz/core/Milestone;

    invoke-direct {v3}, Lcom/hz/core/Milestone;-><init>()V

    .line 126
    .local v3, "ms":Lcom/hz/core/Milestone;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 132
    .local v0, "allMSSize":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v3, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 146
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v3, Lcom/hz/core/Milestone;->defaultchapterId:B

    .line 160
    iget-byte v8, v3, Lcom/hz/core/Milestone;->defaultchapterId:B

    invoke-virtual {v3, v8}, Lcom/hz/core/Milestone;->doGetChapterById(I)Lcom/hz/core/Milestone;

    move-result-object v7

    .line 162
    .local v7, "tempmilestone":Lcom/hz/core/Milestone;
    if-eqz v7, :cond_0

    .line 164
    invoke-static {v5, v7}, Lcom/hz/core/Milestone;->getChapterInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V

    goto :goto_0

    .line 134
    .end local v7    # "tempmilestone":Lcom/hz/core/Milestone;
    :cond_3
    new-instance v4, Lcom/hz/core/Milestone;

    invoke-direct {v4}, Lcom/hz/core/Milestone;-><init>()V

    .line 137
    .local v4, "msChapter":Lcom/hz/core/Milestone;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v4, Lcom/hz/core/Milestone;->chapterId:B

    .line 138
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/hz/core/Milestone;->chapterCon:Ljava/lang/String;

    .line 143
    iget-object v8, v3, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doSeeChapter(BLcom/hz/ui/UIHandler;)V
    .locals 6
    .param p0, "chapterid"    # B
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 347
    if-nez p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 354
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v4

    .line 365
    .local v4, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v4, :cond_0

    .line 369
    invoke-virtual {v4}, Lcom/hz/ui/UIObject;->getMilestone()Lcom/hz/core/Milestone;

    move-result-object v0

    .line 370
    .local v0, "milestone":Lcom/hz/core/Milestone;
    if-eqz v0, :cond_0

    .line 375
    iget-byte v5, v0, Lcom/hz/core/Milestone;->defaultchapterId:B

    if-eq v5, p0, :cond_0

    .line 380
    new-instance v1, Lcom/hz/net/Message;

    const/16 v5, 0x38dd

    invoke-direct {v1, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 381
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 386
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 390
    if-eqz v1, :cond_0

    .line 395
    iput-byte p0, v0, Lcom/hz/core/Milestone;->defaultchapterId:B

    .line 397
    invoke-virtual {v0, p0}, Lcom/hz/core/Milestone;->doGetChapterById(I)Lcom/hz/core/Milestone;

    move-result-object v3

    .line 399
    .local v3, "tempmilestone":Lcom/hz/core/Milestone;
    if-eqz v3, :cond_0

    .line 401
    invoke-static {v1, v3}, Lcom/hz/core/Milestone;->getChapterInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V

    .line 403
    invoke-virtual {v4, v0}, Lcom/hz/ui/UIObject;->setMilestone(Lcom/hz/core/Milestone;)V

    .line 406
    invoke-static {p1}, Lcom/hz/ui/UIHandler;->updteDataToMilestone(Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method public static doSeePartDetailsMenu(Lcom/hz/core/Milestone;Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "milestone"    # Lcom/hz/core/Milestone;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 443
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 445
    .local v9, "player":Lcom/hz/actor/Player;
    if-eqz v9, :cond_0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-boolean v0, p0, Lcom/hz/core/Milestone;->isCanGetdate:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v8, Lcom/hz/net/Message;

    const/16 v0, 0x38de

    invoke-direct {v8, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 465
    .local v8, "msg":Lcom/hz/net/Message;
    iget-byte v0, p0, Lcom/hz/core/Milestone;->chapterId:B

    invoke-virtual {v8, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 466
    iget-short v0, p0, Lcom/hz/core/Milestone;->partId:S

    invoke-virtual {v8, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 468
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 472
    if-eqz v8, :cond_0

    .line 476
    new-instance v7, Lcom/hz/core/Milestone;

    invoke-direct {v7}, Lcom/hz/core/Milestone;-><init>()V

    .line 478
    .local v7, "ms":Lcom/hz/core/Milestone;
    invoke-static {v8, v7}, Lcom/hz/core/Milestone;->getPartDetailInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V

    .line 480
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 481
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 483
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 491
    const/4 v0, 0x1

    iget-byte v1, v7, Lcom/hz/core/Milestone;->misState:B

    if-ne v0, v1, :cond_2

    .line 493
    const/16 v0, 0x41

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 494
    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 497
    :cond_2
    iget-boolean v0, v7, Lcom/hz/core/Milestone;->misMinLevel:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v7}, Lcom/hz/core/Milestone;->getPartDetailsInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x45

    move-object v5, p1

    .line 498
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSeePartDetailsMenuSelect(Lcom/hz/core/Milestone;Lcom/hz/ui/UIHandler;)V
    .locals 3
    .param p0, "milestone"    # Lcom/hz/core/Milestone;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 505
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 512
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 524
    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/hz/core/Milestone;->findpathtype:B

    if-ne v1, v2, :cond_2

    .line 526
    iget-short v1, p0, Lcom/hz/core/Milestone;->mapId:S

    iget-byte v2, p0, Lcom/hz/core/Milestone;->npcId:B

    invoke-static {v1, v2, v0}, Lcom/hz/core/SpriteGuide;->doSpriteGuideAutoMove(IILcom/hz/actor/Player;)V

    goto :goto_0

    .line 528
    :cond_2
    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/hz/core/Milestone;->findpathtype:B

    if-ne v1, v2, :cond_0

    .line 530
    iget-short v1, p0, Lcom/hz/core/Milestone;->mapId:S

    invoke-static {v1}, Lcom/hz/core/Mission;->doMissionAutoPathMsg(I)Z

    goto :goto_0
.end method

.method public static doSeeRewardMenu(Lcom/hz/core/Milestone;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "milestone"    # Lcom/hz/core/Milestone;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 646
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 648
    .local v7, "player":Lcom/hz/actor/Player;
    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget v0, p0, Lcom/hz/core/Milestone;->rTime:I

    if-lez v0, :cond_0

    .line 668
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 669
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 671
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 673
    const/16 v0, 0x43

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 674
    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 678
    invoke-virtual {p0}, Lcom/hz/core/Milestone;->getRewardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x46

    move-object v5, p1

    .line 678
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static getChapterInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "ms"    # Lcom/hz/core/Milestone;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 182
    .local v7, "size":B
    if-nez v7, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 187
    :cond_2
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p1, Lcom/hz/core/Milestone;->vPart:Ljava/util/Vector;

    .line 188
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-lt v4, v7, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p1, Lcom/hz/core/Milestone;->level:B

    .line 210
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    iput-boolean v8, p1, Lcom/hz/core/Milestone;->chapterOpen:Z

    .line 215
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p1, Lcom/hz/core/Milestone;->rTime:I

    .line 220
    iget v8, p1, Lcom/hz/core/Milestone;->rTime:I

    if-lez v8, :cond_9

    .line 222
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    iput-boolean v8, p1, Lcom/hz/core/Milestone;->hasgetreward:Z

    .line 226
    iget-boolean v8, p1, Lcom/hz/core/Milestone;->hasgetreward:Z

    if-eqz v8, :cond_4

    .line 227
    invoke-static {p0, p1}, Lcom/hz/core/Milestone;->getPartDetailInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V

    goto :goto_0

    .line 189
    :cond_3
    new-instance v5, Lcom/hz/core/Milestone;

    invoke-direct {v5}, Lcom/hz/core/Milestone;-><init>()V

    .line 190
    .local v5, "msFirstChapterSize":Lcom/hz/core/Milestone;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, v5, Lcom/hz/core/Milestone;->partId:S

    .line 191
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/hz/core/Milestone;->partName:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v5, Lcom/hz/core/Milestone;->misState:B

    .line 195
    iget-byte v8, p1, Lcom/hz/core/Milestone;->chapterId:B

    iput-byte v8, v5, Lcom/hz/core/Milestone;->chapterId:B

    .line 202
    iget-object v8, p1, Lcom/hz/core/Milestone;->vPart:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    .end local v5    # "msFirstChapterSize":Lcom/hz/core/Milestone;
    :cond_4
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    .line 233
    .local v6, "rewardControl":Z
    if-nez v6, :cond_5

    .line 234
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    iput-boolean v8, p1, Lcom/hz/core/Milestone;->haveReward:Z

    .line 243
    iget-boolean v8, p1, Lcom/hz/core/Milestone;->haveReward:Z

    if-eqz v8, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 250
    .local v3, "itemSize":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p1, Lcom/hz/core/Milestone;->vRewardItem:Ljava/util/Vector;

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v3, :cond_7

    .line 279
    .end local v0    # "i":I
    .end local v3    # "itemSize":B
    :cond_6
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p1, Lcom/hz/core/Milestone;->rewardMoney:S

    .line 280
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p1, Lcom/hz/core/Milestone;->rewardMoney2:S

    .line 281
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p1, Lcom/hz/core/Milestone;->rewardMoney3:S

    goto/16 :goto_0

    .line 252
    .restart local v0    # "i":I
    .restart local v3    # "itemSize":B
    :cond_7
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 257
    .local v1, "iserror":Z
    if-nez v1, :cond_8

    .line 251
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 262
    :cond_8
    new-instance v2, Lcom/hz/core/Item;

    invoke-direct {v2}, Lcom/hz/core/Item;-><init>()V

    .line 263
    .local v2, "item":Lcom/hz/core/Item;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput v8, v2, Lcom/hz/core/Item;->id:I

    .line 264
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-short v8, v2, Lcom/hz/core/Item;->quantity:S

    .line 266
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-short v8, v2, Lcom/hz/core/Item;->bagIcon:S

    .line 268
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, v2, Lcom/hz/core/Item;->grade:B

    .line 275
    iget-object v8, p1, Lcom/hz/core/Milestone;->vRewardItem:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 285
    .end local v0    # "i":I
    .end local v1    # "iserror":Z
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v3    # "itemSize":B
    .end local v6    # "rewardControl":Z
    :cond_9
    invoke-static {p0, p1}, Lcom/hz/core/Milestone;->getPartDetailInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V

    goto/16 :goto_0
.end method

.method public static getPartDetailInfo(Lcom/hz/net/Message;Lcom/hz/core/Milestone;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "ms"    # Lcom/hz/core/Milestone;

    .prologue
    .line 292
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 298
    .local v2, "milestones":Z
    if-nez v2, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    iput-boolean v4, p1, Lcom/hz/core/Milestone;->misMinLevel:Z

    .line 304
    iget-boolean v4, p1, Lcom/hz/core/Milestone;->misMinLevel:Z

    if-eqz v4, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/core/Milestone;->misState:B

    .line 310
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/core/Milestone;->findpathtype:B

    .line 312
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/core/Milestone;->mapId:S

    .line 313
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p1, Lcom/hz/core/Milestone;->npcId:B

    .line 319
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/hz/core/Milestone;->misDescri:Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/hz/core/Milestone;->missionName:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/core/Milestone;->missonRewardMoney2:S

    .line 323
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput-short v4, p1, Lcom/hz/core/Milestone;->missonRewardMoney3:S

    .line 325
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p1, Lcom/hz/core/Milestone;->missionRewardExp:I

    .line 327
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    iput-boolean v4, p1, Lcom/hz/core/Milestone;->hasrewardItem:Z

    .line 328
    iget-boolean v4, p1, Lcom/hz/core/Milestone;->hasrewardItem:Z

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 330
    .local v3, "rewardItemLength":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p1, Lcom/hz/core/Milestone;->vMissionItem:Ljava/util/Vector;

    .line 331
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 332
    new-instance v0, Lcom/hz/core/Item;

    invoke-direct {v0}, Lcom/hz/core/Item;-><init>()V

    .line 333
    .local v0, "item":Lcom/hz/core/Item;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, v0, Lcom/hz/core/Item;->id:I

    .line 334
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-short v4, v0, Lcom/hz/core/Item;->quantity:S

    .line 335
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-short v4, v0, Lcom/hz/core/Item;->bagIcon:S

    .line 337
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, v0, Lcom/hz/core/Item;->grade:B

    .line 339
    iget-object v4, p1, Lcom/hz/core/Milestone;->vMissionItem:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public doGetChapterById(I)Lcom/hz/core/Milestone;
    .locals 4
    .param p1, "chapterId"    # I

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-object v3, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 800
    :cond_1
    :goto_0
    return-object v1

    .line 789
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    move-object v1, v2

    .line 800
    goto :goto_0

    .line 791
    :cond_3
    iget-object v3, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Milestone;

    .line 792
    .local v1, "milestone":Lcom/hz/core/Milestone;
    if-eqz v1, :cond_4

    .line 794
    iget-byte v3, v1, Lcom/hz/core/Milestone;->chapterId:B

    if-eq v3, p1, :cond_1

    .line 789
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public doGetChapterFromV(I)Lcom/hz/core/Milestone;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 770
    iget-object v1, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-object v0

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    iget-object v0, p0, Lcom/hz/core/Milestone;->vChapterMilestone:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Milestone;

    goto :goto_0
.end method

.method public getPartDetailsInfo()Ljava/lang/String;
    .locals 12

    .prologue
    .line 545
    const-string v4, ""

    .line 548
    .local v4, "strinfo":Ljava/lang/String;
    const-string v3, ""

    .line 549
    .local v3, "strMissname":Ljava/lang/String;
    const v0, 0xffff00

    .line 552
    .local v0, "color":I
    const-string v6, ""

    .line 554
    .local v6, "time":Ljava/lang/String;
    iget-byte v7, p0, Lcom/hz/core/Milestone;->misState:B

    packed-switch v7, :pswitch_data_0

    .line 566
    :goto_0
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 569
    iget-object v8, p0, Lcom/hz/core/Milestone;->missionName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 572
    const-string v5, ""

    .line 573
    .local v5, "strrewardinfo":Ljava/lang/String;
    iget-short v7, p0, Lcom/hz/core/Milestone;->missonRewardMoney2:S

    if-lez v7, :cond_0

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-static {v8}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/hz/core/Milestone;->missonRewardMoney2:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    :cond_0
    iget-short v7, p0, Lcom/hz/core/Milestone;->missonRewardMoney3:S

    if-lez v7, :cond_1

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xd

    invoke-static {v8}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/hz/core/Milestone;->missonRewardMoney3:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 581
    :cond_1
    iget v7, p0, Lcom/hz/core/Milestone;->missionRewardExp:I

    if-lez v7, :cond_2

    .line 583
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "EXP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/hz/core/Milestone;->missionRewardExp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    :cond_2
    iget-boolean v7, p0, Lcom/hz/core/Milestone;->hasrewardItem:Z

    if-eqz v7, :cond_3

    .line 589
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/hz/core/Milestone;->vMissionItem:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 599
    .end local v1    # "i":I
    :cond_3
    const-string v7, "%U\nNhi\u1ec7m v\u1ee5: %U\nTh\u01b0\u1edfng: %U"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/hz/core/Milestone;->misDescri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    return-object v4

    .line 557
    .end local v5    # "strrewardinfo":Ljava/lang/String;
    :pswitch_1
    const v0, 0xb0a67a

    .line 558
    const-string v3, "[Ch\u01b0a m\u1edf]"

    .line 559
    goto/16 :goto_0

    .line 563
    :pswitch_2
    const-string v3, "[Xong]"

    .line 564
    const v0, 0xff00

    goto/16 :goto_0

    .line 591
    .restart local v1    # "i":I
    .restart local v5    # "strrewardinfo":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/hz/core/Milestone;->vMissionItem:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/Item;

    .line 592
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_5

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRewardInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 607
    const-string v2, ""

    .line 610
    .local v2, "strrewardinfo":Ljava/lang/String;
    iget v3, p0, Lcom/hz/core/Milestone;->rTime:I

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/hz/core/Milestone;->chapterOpen:Z

    if-nez v3, :cond_0

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/c00FF00Trong %U m\u1edf nh\u1eadn th\u00eam th\u01b0\u1edfng~/p\n"

    iget v5, p0, Lcom/hz/core/Milestone;->rTime:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    :cond_0
    iget-short v3, p0, Lcom/hz/core/Milestone;->rewardMoney:S

    if-lez v3, :cond_1

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p0, Lcom/hz/core/Milestone;->rewardMoney:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 619
    :cond_1
    iget-short v3, p0, Lcom/hz/core/Milestone;->rewardMoney2:S

    if-lez v3, :cond_2

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p0, Lcom/hz/core/Milestone;->rewardMoney2:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    :cond_2
    iget-short v3, p0, Lcom/hz/core/Milestone;->rewardMoney3:S

    if-lez v3, :cond_3

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p0, Lcom/hz/core/Milestone;->rewardMoney3:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    :cond_3
    iget-boolean v3, p0, Lcom/hz/core/Milestone;->haveReward:Z

    if-eqz v3, :cond_4

    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/Milestone;->vRewardItem:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 640
    .end local v0    # "i":I
    :cond_4
    return-object v2

    .line 633
    .restart local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/hz/core/Milestone;->vRewardItem:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Item;

    .line 634
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_6

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 631
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isCanGet()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/hz/core/Milestone;->chapterOpen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hz/core/Milestone;->rTime:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
