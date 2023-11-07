.class public Lcom/hz/core/Vitality;
.super Ljava/lang/Object;
.source "Vitality.java"


# static fields
.field public static final ANSWER_DAILY_QU:B = 0x13t

.field public static final BUY_GOODS:B = 0xdt

.field public static final COMPLETE_INSTANCE:B = 0x4t

.field public static final DAILY_LOGIN:B = 0x1t

.field public static final DUEL_PLAYER:B = 0xct

.field public static final ENCHANT_EQUIPMENT:B = 0x7t

.field public static final ENTER_ARENA:B = 0xet

.field public static final ENTER_MOBPLACE:B = 0xft

.field public static final GET_ONLINE_REWARD:B = 0x2t

.field public static final JION_CITY_LUCKY:B = 0x15t

.field public static final JION_DAILY_LUCKY:B = 0x14t

.field public static final JION_ESCORT:B = 0x10t

.field public static final LEARN_ACTOR_SPELL:B = 0x8t

.field public static final LEARN_PET_SPELL:B = 0xat

.field public static final RECHARGE_MONEY:B = 0x11t

.field public static final REFINE_EQUIPMENT:B = 0x12t

.field public static final RESOLVE_EQUIPMENT:B = 0x6t

.field public static final STRONG_EQUIPMENT:B = 0x5t

.field public static final SUBMIT_DAILY_QUEST:B = 0x3t

.field public static final UP_ACTOR_SPELL:B = 0x9t

.field public static final UP_PET_SPELL:B = 0xbt

.field public static final VITALITY_AUTO_RUN_MISSION:B = 0x2t

.field public static final VITALITY_AUTO_RUN_NPC:B = 0x1t

.field public static final VITALITY_REWARD_ITEM_TYPE0:B = 0x0t

.field public static final VITALITY_REWARD_ITEM_TYPE1:B = 0x1t

.field public static final VITALITY_REWARD_ITEM_TYPE2:B = 0x2t


# instance fields
.field public activeCount:I

.field public activeValue:S

.field public allvalue:S

.field public conid:B

.field public content:Ljava/lang/String;

.field public directs:B

.field public isPathFinding:Z

.field public mapId:S

.field public npcId:S

.field public npcName:Ljava/lang/String;

.field public progress:I

.field public rewardid:S

.field public status:B

.field public vConVitality:Ljava/util/Vector;

.field public vItemVitality:Ljava/util/Vector;

.field public vipAddValue:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doEnter()Lcom/hz/core/Vitality;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 91
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 92
    .local v6, "player":Lcom/hz/actor/Player;
    if-nez v6, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v9

    .line 97
    :cond_1
    new-instance v5, Lcom/hz/net/Message;

    const/16 v10, 0x38d7

    invoke-direct {v5, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 98
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 101
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 102
    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 107
    .local v1, "isOpen":Z
    if-nez v1, :cond_2

    .line 109
    const-string v10, "T\u00ednh n\u0103ng S\u00f4i N\u1ed5i ch\u01b0a m\u1edf!"

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 114
    :cond_2
    new-instance v9, Lcom/hz/core/Vitality;

    invoke-direct {v9}, Lcom/hz/core/Vitality;-><init>()V

    .line 115
    .local v9, "vty":Lcom/hz/core/Vitality;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v9, Lcom/hz/core/Vitality;->allvalue:S

    .line 116
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v9, Lcom/hz/core/Vitality;->vipAddValue:S

    .line 118
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 123
    .local v2, "itemsize":S
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, v9, Lcom/hz/core/Vitality;->vItemVitality:Ljava/util/Vector;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 135
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 140
    .local v4, "listsize":S
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, v9, Lcom/hz/core/Vitality;->vConVitality:Ljava/util/Vector;

    .line 142
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 143
    new-instance v7, Lcom/hz/core/Vitality;

    invoke-direct {v7}, Lcom/hz/core/Vitality;-><init>()V

    .line 144
    .local v7, "tempconvty":Lcom/hz/core/Vitality;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v7, Lcom/hz/core/Vitality;->conid:B

    .line 145
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/hz/core/Vitality;->content:Ljava/lang/String;

    .line 146
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v7, Lcom/hz/core/Vitality;->progress:I

    .line 147
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    iput v10, v7, Lcom/hz/core/Vitality;->activeCount:I

    .line 148
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v7, Lcom/hz/core/Vitality;->activeValue:S

    .line 149
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v10

    iput-boolean v10, v7, Lcom/hz/core/Vitality;->isPathFinding:Z

    .line 159
    iget-boolean v10, v7, Lcom/hz/core/Vitality;->isPathFinding:Z

    if-eqz v10, :cond_3

    .line 162
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v7, Lcom/hz/core/Vitality;->directs:B

    .line 163
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v7, Lcom/hz/core/Vitality;->mapId:S

    .line 164
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v7, Lcom/hz/core/Vitality;->npcId:S

    .line 165
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/hz/core/Vitality;->npcName:Ljava/lang/String;

    .line 174
    :cond_3
    iget-object v10, v9, Lcom/hz/core/Vitality;->vConVitality:Ljava/util/Vector;

    invoke-virtual {v10, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    .end local v3    # "j":I
    .end local v4    # "listsize":S
    .end local v7    # "tempconvty":Lcom/hz/core/Vitality;
    :cond_4
    new-instance v8, Lcom/hz/core/Vitality;

    invoke-direct {v8}, Lcom/hz/core/Vitality;-><init>()V

    .line 127
    .local v8, "tempitemvty":Lcom/hz/core/Vitality;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v8, Lcom/hz/core/Vitality;->rewardid:S

    .line 128
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    iput-byte v10, v8, Lcom/hz/core/Vitality;->status:B

    .line 132
    iget-object v10, v9, Lcom/hz/core/Vitality;->vItemVitality:Ljava/util/Vector;

    invoke-virtual {v10, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static doGetPush(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public static doGetReward(Lcom/hz/core/Vitality;Lcom/hz/ui/UIHandler;I)V
    .locals 12
    .param p0, "vitality"    # Lcom/hz/core/Vitality;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "index"    # I

    .prologue
    const/4 v11, 0x2

    .line 322
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 335
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 341
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 345
    new-instance v1, Lcom/hz/net/Message;

    const/16 v9, 0x38da

    invoke-direct {v1, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 346
    .local v1, "msg":Lcom/hz/net/Message;
    iget-short v9, p0, Lcom/hz/core/Vitality;->rewardid:S

    invoke-virtual {v1, v9}, Lcom/hz/net/Message;->putInt(I)V

    .line 348
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 351
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 360
    .local v3, "rs":B
    if-gez v3, :cond_2

    .line 361
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 369
    .local v4, "size":B
    if-lez v4, :cond_0

    .line 371
    const-string v5, ""

    .line 373
    .local v5, "strinfo":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 377
    .local v0, "itemnum":B
    if-lez v0, :cond_3

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v11}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 382
    :cond_3
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v2, Lcom/hz/actor/Player;->money1:I

    .line 383
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v2, Lcom/hz/actor/Player;->money2:I

    .line 384
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v2, Lcom/hz/actor/Player;->money3:I

    .line 402
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v8

    .line 403
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v8, :cond_4

    .line 405
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getVitality()Lcom/hz/core/Vitality;

    move-result-object v6

    .line 406
    .local v6, "tempvitality":Lcom/hz/core/Vitality;
    if-eqz v6, :cond_4

    .line 408
    iget-object v9, v6, Lcom/hz/core/Vitality;->vItemVitality:Ljava/util/Vector;

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/hz/core/Vitality;->vItemVitality:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge p2, v9, :cond_4

    .line 410
    iget-object v9, v6, Lcom/hz/core/Vitality;->vItemVitality:Ljava/util/Vector;

    invoke-virtual {v9, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/core/Vitality;

    .line 411
    .local v7, "tempvitality2":Lcom/hz/core/Vitality;
    if-eqz v7, :cond_4

    .line 413
    iput-byte v11, v7, Lcom/hz/core/Vitality;->status:B

    .line 414
    invoke-virtual {v8, v6}, Lcom/hz/ui/UIObject;->setVitality(Lcom/hz/core/Vitality;)V

    .line 415
    invoke-static {p1}, Lcom/hz/ui/UIHandler;->updteDataToVitality(Lcom/hz/ui/UIHandler;)V

    .line 420
    .end local v6    # "tempvitality":Lcom/hz/core/Vitality;
    .end local v7    # "tempvitality2":Lcom/hz/core/Vitality;
    :cond_4
    const-string v9, "Nh\u1eadn th\u01b0\u1edfng th\u00e0nh c\u00f4ng!"

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doSeeCon(Lcom/hz/core/Vitality;Lcom/hz/ui/UIHandler;)V
    .locals 11
    .param p0, "vitality"    # Lcom/hz/core/Vitality;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 429
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 661
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 440
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 441
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 445
    iget v6, p0, Lcom/hz/core/Vitality;->progress:I

    iget v7, p0, Lcom/hz/core/Vitality;->activeCount:I

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 446
    .local v1, "isHasReach":Z
    :goto_1
    if-nez v1, :cond_0

    .line 448
    const-string v3, ""

    .line 456
    .local v3, "strinfo":Ljava/lang/String;
    iget-byte v6, p0, Lcom/hz/core/Vitality;->conid:B

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 459
    :pswitch_1
    const-string v3, ""

    .line 460
    goto :goto_0

    .end local v1    # "isHasReach":Z
    .end local v3    # "strinfo":Ljava/lang/String;
    :cond_2
    move v1, v5

    .line 445
    goto :goto_1

    .line 462
    .restart local v1    # "isHasReach":Z
    .restart local v3    # "strinfo":Ljava/lang/String;
    :pswitch_2
    const-string v3, "M\u1edf khung th\u01b0\u1edfng online?"

    .line 519
    :goto_2
    :pswitch_3
    const/16 v6, 0xf

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v9}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 521
    .local v0, "askResult":I
    const/16 v6, 0x14

    if-eq v0, v6, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 526
    iget-boolean v6, p0, Lcom/hz/core/Vitality;->isPathFinding:Z

    if-eqz v6, :cond_6

    .line 531
    iget v5, v2, Lcom/hz/actor/Player;->cityId:I

    if-gtz v5, :cond_4

    iget-byte v5, p0, Lcom/hz/core/Vitality;->conid:B

    if-eq v5, v9, :cond_3

    .line 532
    iget-byte v5, p0, Lcom/hz/core/Vitality;->conid:B

    const/16 v6, 0x13

    if-eq v5, v6, :cond_3

    .line 533
    iget-byte v5, p0, Lcom/hz/core/Vitality;->conid:B

    const/16 v6, 0x15

    if-ne v5, v6, :cond_4

    .line 536
    :cond_3
    const-string v4, "Ch\u01b0a t\u1ea1o th\u00e0nh cho b\u1ea3n th\u00e2n"

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 465
    .end local v0    # "askResult":I
    :pswitch_4
    const-string v3, "T\u00ecm \u0111\u01b0\u1eddng nh\u1eadn Nhi\u1ec7m V\u1ee5 Ng\u00e0y?"

    .line 466
    goto :goto_2

    .line 470
    :pswitch_5
    const-string v3, "C\u00f3 th\u1ec3 ch\u1ecdn c\u01b0\u1eddng h\u00f3a trang b\u1ecb b\u1ea5t k\u1ef3 tr\u00ean giao di\u1ec7n c\u01b0\u1eddng h\u00f3a, g\u1ed3m: Gi\u00e1m \u0111\u1ecbnh, Kh\u1ea3m, T\u0103ng sao. M\u1edf giao di\u1ec7n c\u01b0\u1eddng h\u00f3a?"

    .line 471
    goto :goto_2

    .line 473
    :pswitch_6
    const-string v3, "Trong giao di\u1ec7n \u0111\u1ea1o c\u1ee5 ch\u1ecdn v\u1eadt ph\u1ea9m \u0111\u1ec3 t\u00e1ch. M\u1edf giao d\u1ecbch t\u00e1ch?"

    .line 474
    goto :goto_2

    .line 481
    :pswitch_7
    const-string v3, "T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn Hu\u1ea5n Luy\u1ec7n K\u1ef9 N\u0103ng?"

    .line 482
    goto :goto_2

    .line 484
    :pswitch_8
    const-string v3, "Chi\u1ebfn \u0111\u1ea5u v\u1edbi ng\u01b0\u1eddi ch\u01a1i kh\u00e1c?"

    .line 485
    goto :goto_0

    .line 487
    :pswitch_9
    const-string v3, "M\u1edf giao di\u1ec7n Shop?"

    .line 488
    goto :goto_2

    .line 490
    :pswitch_a
    const-string v3, "V\u00e0o \u0110\u1ea5u Tr\u01b0\u1eddng v\u00e0 ho\u00e0n th\u00e0nh 1 l\u1ea7n chi\u1ebfn \u0111\u1ea5u. T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn \u0111\u00f3?"

    .line 491
    goto :goto_2

    .line 493
    :pswitch_b
    const-string v3, "V\u00e0o PB C\u00f4ng Th\u00e0nh v\u00e0 ti\u00eau di\u1ec7t 1 \u0111\u1ee3t qu\u00e1i. T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn \u0111\u00f3?"

    .line 494
    goto :goto_2

    .line 496
    :pswitch_c
    const-string v3, "T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn ch\u1ed7 v\u1eadn ti\u00eau?"

    .line 497
    goto :goto_2

    .line 499
    :pswitch_d
    const-string v3, "M\u1edf giao di\u1ec7n n\u1ea1p?"

    .line 500
    goto :goto_2

    .line 502
    :pswitch_e
    const-string v3, "Th\u01b0\u01a1ng Nh\u00e2n L\u00f2 Luy\u1ec7n ti\u1ebfn h\u00e0nh luy\u1ec7n 1 l\u1ea7n. T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn \u0111\u00f3?"

    .line 503
    goto :goto_2

    .line 505
    :pswitch_f
    const-string v3, "T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn Th\u01b0\u01a1ng Nh\u00e2n Th\u00e0nh T\u1ef1u?"

    .line 506
    goto :goto_2

    .line 508
    :pswitch_10
    const-string v3, "M\u1edf giao di\u1ec7n \u0111\u0103ng nh\u1eadp r\u00fat th\u01b0\u1edfng?"

    .line 509
    goto :goto_2

    .line 511
    :pswitch_11
    const-string v3, "T\u00ecm \u0111\u01b0\u1eddng \u0111\u1ebfn D\u1ecbch Tr\u1ea1m phi h\u00e0nh?"

    .line 512
    goto :goto_2

    .line 541
    .restart local v0    # "askResult":I
    :cond_4
    iget-byte v5, p0, Lcom/hz/core/Vitality;->directs:B

    if-ne v5, v4, :cond_5

    .line 543
    iget-short v4, p0, Lcom/hz/core/Vitality;->mapId:S

    iget-short v5, p0, Lcom/hz/core/Vitality;->npcId:S

    invoke-static {v4, v5, v2}, Lcom/hz/core/SpriteGuide;->doSpriteGuideAutoMove(IILcom/hz/actor/Player;)V

    goto/16 :goto_0

    .line 545
    :cond_5
    iget-byte v4, p0, Lcom/hz/core/Vitality;->directs:B

    if-ne v4, v8, :cond_0

    .line 547
    iget-short v4, p0, Lcom/hz/core/Vitality;->npcId:S

    invoke-static {v4}, Lcom/hz/core/Mission;->doMissionAutoPathMsg(I)Z

    goto/16 :goto_0

    .line 579
    :cond_6
    iget-byte v4, p0, Lcom/hz/core/Vitality;->conid:B

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 582
    :pswitch_12
    const-string v3, ""

    .line 583
    goto/16 :goto_0

    .line 586
    :pswitch_13
    invoke-static {}, Lcom/hz/ui/UIHandler;->createOnLineRewardUI()V

    goto/16 :goto_0

    .line 595
    :pswitch_14
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v4, v5}, Lcom/hz/ui/UIHandler;->createWorldEquipUI(Lcom/hz/actor/Player;I)V

    goto/16 :goto_0

    .line 599
    :pswitch_15
    invoke-static {}, Lcom/hz/main/GameWorld;->isShowResolveMenu()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 606
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v4, v8}, Lcom/hz/ui/UIHandler;->createWorldEquipUI(Lcom/hz/actor/Player;I)V

    goto/16 :goto_0

    .line 611
    :cond_7
    const-string v4, "Ch\u01b0a \u0111\u1ea1t c\u1ea5p t\u00e1ch trang b\u1ecb."

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 627
    :pswitch_16
    const/4 v4, 0x4

    invoke-static {v4, v10}, Lcom/hz/main/GameWorld;->doBrowseShop(SLcom/hz/actor/NPC;)V

    goto/16 :goto_0

    .line 640
    :pswitch_17
    invoke-static {v10}, Lcom/hz/core/PayDescribe;->doPayDesList(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_0

    .line 650
    :pswitch_18
    const/16 v4, 0x2c50

    invoke-static {v4}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 579
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
    .end packed-switch
.end method

.method public static doSeeInfoMenu(Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 666
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 667
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_0

    .line 701
    :goto_0
    return-void

    .line 672
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 673
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 675
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 677
    const-string v8, "M\u1edf VIP"

    .line 683
    .local v8, "strvip":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    const-string v8, "chi ti\u1ebft"

    .line 692
    :cond_1
    const/16 v0, 0x420c

    invoke-static {v6, v8, v2, v0}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 694
    const-string v9, "VIP"

    .line 699
    .local v9, "strvipinfo":Ljava/lang/String;
    const-string v0, "1. M\u1ed7i ng\u00e0y ch\u1ec9 nh\u1eadn r\u01b0\u01a1ng s\u00f4i n\u1ed5i 1 l\u1ea7n.\n2. \u0110\u1ed9 s\u00f4i n\u1ed5i x\u00f3a c\u00e1ch ng\u00e0y, h\u00e3y nh\u1eadn k\u1ecbp th\u1eddi.\n3.\u0110\u1ed9 s\u00f4i n\u1ed5i %U c\u1ed9ng th\u00eam 100."

    invoke-static {v0, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x42

    move-object v5, p0

    .line 699
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSeeInfoSelect(ILcom/hz/ui/UIHandler;)V
    .locals 6
    .param p0, "eventID"    # I
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, 0x0

    .line 706
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 707
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 713
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 715
    .local v0, "eventList":Ljava/util/Vector;
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v1, v3, v0, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 717
    const/16 v3, 0x420c

    if-ne p0, v3, :cond_0

    .line 719
    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 724
    :cond_2
    invoke-static {v2}, Lcom/hz/main/GameWorld;->isVip(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 726
    invoke-static {}, Lcom/hz/actor/ListPlayer;->getVipInfo()V

    goto :goto_0

    .line 730
    :cond_3
    invoke-static {v5, v5}, Lcom/hz/actor/ListPlayer;->doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method public static doSeeReward(Lcom/hz/core/Vitality;Lcom/hz/ui/UIHandler;)V
    .locals 18
    .param p0, "vitality"    # Lcom/hz/core/Vitality;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 208
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 220
    .local v14, "player":Lcom/hz/actor/Player;
    if-eqz v14, :cond_0

    .line 225
    new-instance v13, Lcom/hz/net/Message;

    const/16 v2, 0x38d9

    invoke-direct {v13, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 226
    .local v13, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/hz/core/Vitality;->rewardid:S

    invoke-virtual {v13, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 228
    invoke-static {v13}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v13

    .line 233
    if-eqz v13, :cond_0

    .line 237
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 241
    .local v15, "rs":B
    if-gez v15, :cond_2

    .line 242
    invoke-virtual {v13}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 246
    :cond_2
    const-string v1, ""

    .line 248
    .local v1, "strinfo":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    .line 252
    .local v16, "size":B
    if-lez v16, :cond_0

    .line 254
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 258
    .local v8, "itemnum":B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v8, :cond_7

    .line 278
    invoke-virtual {v13}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 279
    .local v10, "money1":S
    invoke-virtual {v13}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 280
    .local v11, "money2":S
    invoke-virtual {v13}, Lcom/hz/net/Message;->getShort()S

    move-result v12

    .line 282
    .local v12, "money3":S
    if-lez v10, :cond_3

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_3
    if-lez v11, :cond_4

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_4
    if-lez v12, :cond_5

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_5
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 298
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 300
    .local v3, "eventList":Ljava/util/Vector;
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v9, v2, v3, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 302
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/core/Vitality;->status:B

    if-ne v2, v4, :cond_6

    .line 304
    const-string v2, "Nh\u1eadn th\u01b0\u1edfng"

    const/16 v4, 0x420d

    invoke-static {v9, v2, v3, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 311
    :cond_6
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v4

    const/16 v5, 0x40

    move-object/from16 v6, p1

    .line 311
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 262
    .end local v3    # "eventList":Ljava/util/Vector;
    .end local v9    # "menuList":Ljava/util/Vector;
    .end local v10    # "money1":S
    .end local v11    # "money2":S
    .end local v12    # "money3":S
    :cond_7
    :try_start_0
    new-instance v17, Lcom/hz/core/Item;

    invoke-direct/range {v17 .. v17}, Lcom/hz/core/Item;-><init>()V

    .line 263
    .local v17, "tempitem":Lcom/hz/core/Item;
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 264
    invoke-virtual {v13}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    move-object/from16 v0, v17

    iput-short v2, v0, Lcom/hz/core/Item;->quantity:S

    .line 269
    move-object/from16 v0, v17

    iget-short v2, v0, Lcom/hz/core/Item;->durMax:S

    move-object/from16 v0, v17

    iput-short v2, v0, Lcom/hz/core/Item;->durability:S

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-byte v5, v0, Lcom/hz/core/Item;->grade:B

    invoke-static {v5}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    .end local v17    # "tempitem":Lcom/hz/core/Item;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 272
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static getStatusText(B)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # B

    .prologue
    .line 185
    const-string v0, ""

    .line 186
    .local v0, "str":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 200
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "Ch\u01b0a \u0111\u1ea1t"

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "\u0110\u01b0\u1ee3c nh\u1eadn"

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    const-string v0, "\u0110\u00e3 nh\u1eadn"

    .line 195
    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
