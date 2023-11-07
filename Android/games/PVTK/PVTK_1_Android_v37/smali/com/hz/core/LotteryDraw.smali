.class public Lcom/hz/core/LotteryDraw;
.super Ljava/lang/Object;
.source "LotteryDraw.java"


# static fields
.field public static final ACTOR_LOTTERY_DRAW_DF:B = 0x1t

.field public static final ACTOR_LOTTERY_DRAW_MONEY2:B = 0x2t

.field public static final ACTOR_LOTTERY_DRAW_MONEY3:B = 0x3t

.field public static final LOTTERY_DRAW_CLOSE:B = -0x3t


# instance fields
.field public allCount:B

.field public costMoney2:I

.field public costMoney3:I

.field public freeCount:B

.field public historyItem:Lcom/hz/core/Item;

.field public historyMoney2:I

.field public historyMoney3:I

.field public historyluckyNum:I

.field public item:Lcom/hz/core/Item;

.field lotteryDrawList:Ljava/util/Vector;

.field lotteryDrawListHistory:Ljava/util/Vector;

.field public myCount:B

.field public myResult:I

.field public openStatus:B

.field public premiumsNum:B

.field public rewardMoney2:I

.field public rewardMoney3:I

.field public strluckyNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    .line 29
    return-void
.end method

.method public static doActorLotteryDrawList(Lcom/hz/ui/UIHandler;Lcom/hz/core/LotteryDraw;II)[Ljava/lang/Object;
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    const/16 v2, 0x51a5

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 63
    .local v0, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v0, :cond_0

    .line 66
    iget-object v2, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/hz/core/LotteryDraw;->doActorLotteryDrawListNow(Lcom/hz/core/LotteryDraw;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/hz/core/LotteryDraw;->doActorLotteryDrawWinningList(Lcom/hz/core/LotteryDraw;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x51a6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doActorLotteryDrawListNow(Lcom/hz/core/LotteryDraw;II)[Ljava/lang/Object;
    .locals 18
    .param p0, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 82
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 83
    .local v10, "player":Lcom/hz/actor/Player;
    if-nez v10, :cond_0

    .line 84
    const/4 v15, 0x0

    .line 196
    :goto_0
    return-object v15

    .line 87
    :cond_0
    new-instance v9, Lcom/hz/net/Message;

    const/16 v15, 0x2b38

    invoke-direct {v9, v15}, Lcom/hz/net/Message;-><init>(I)V

    .line 89
    .local v9, "msg":Lcom/hz/net/Message;
    move/from16 v0, p1

    int-to-byte v15, v0

    invoke-virtual {v9, v15}, Lcom/hz/net/Message;->putByte(B)V

    .line 90
    move/from16 v0, p2

    int-to-short v15, v0

    invoke-virtual {v9, v15}, Lcom/hz/net/Message;->putShort(S)V

    .line 92
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 93
    const/4 v15, 0x0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 98
    if-nez v9, :cond_2

    .line 99
    const/4 v15, 0x0

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 104
    .local v1, "allSize":S
    if-gez v1, :cond_3

    .line 105
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 106
    const/4 v15, 0x0

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 114
    .local v12, "resultSize":I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v14, "strInfo":Ljava/lang/StringBuffer;
    if-gtz v12, :cond_4

    .line 116
    const/4 v15, 0x0

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->myResult:I

    .line 120
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    move-object/from16 v0, p0

    iput-byte v15, v0, Lcom/hz/core/LotteryDraw;->myCount:B

    .line 121
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->costMoney2:I

    .line 122
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->costMoney3:I

    .line 123
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    move-object/from16 v0, p0

    iput-byte v15, v0, Lcom/hz/core/LotteryDraw;->freeCount:B

    .line 124
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    move-object/from16 v0, p0

    iput-byte v15, v0, Lcom/hz/core/LotteryDraw;->allCount:B

    .line 125
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->rewardMoney2:I

    .line 126
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->rewardMoney3:I

    .line 127
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 128
    .local v6, "money1":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 129
    .local v7, "money2":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 130
    .local v8, "money3":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    move-object/from16 v0, p0

    iput-byte v15, v0, Lcom/hz/core/LotteryDraw;->openStatus:B

    .line 132
    iput v6, v10, Lcom/hz/actor/Player;->money1:I

    .line 133
    iput v7, v10, Lcom/hz/actor/Player;->money2:I

    .line 134
    iput v8, v10, Lcom/hz/actor/Player;->money3:I

    .line 136
    invoke-virtual {v9}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 137
    .local v4, "isHasItem":Z
    if-eqz v4, :cond_5

    .line 139
    :try_start_0
    new-instance v15, Lcom/hz/core/Item;

    invoke-direct {v15}, Lcom/hz/core/Item;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/core/LotteryDraw;->item:Lcom/hz/core/Item;

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/core/LotteryDraw;->item:Lcom/hz/core/Item;

    invoke-static {v15, v9}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_5
    :goto_1
    invoke-virtual {v9}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v5

    .line 149
    .local v5, "ishasHistoryInfo":Z
    if-eqz v5, :cond_6

    .line 150
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->historyMoney2:I

    .line 151
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->historyMoney3:I

    .line 152
    new-instance v15, Lcom/hz/core/Item;

    invoke-direct {v15}, Lcom/hz/core/Item;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/core/LotteryDraw;->historyItem:Lcom/hz/core/Item;

    .line 153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/core/LotteryDraw;->historyItem:Lcom/hz/core/Item;

    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 154
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 155
    .local v2, "bagIcon":B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/core/LotteryDraw;->historyItem:Lcom/hz/core/Item;

    int-to-short v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    iput-short v0, v15, Lcom/hz/core/Item;->bagIcon:S

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/core/LotteryDraw;->historyItem:Lcom/hz/core/Item;

    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    move/from16 v0, v16

    iput-byte v0, v15, Lcom/hz/core/Item;->grade:B

    .line 157
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/hz/core/LotteryDraw;->historyluckyNum:I

    .line 169
    .end local v2    # "bagIcon":B
    :cond_6
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 174
    .local v13, "sizeUrs":I
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    .line 176
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v13, :cond_7

    .line 185
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    move-object/from16 v0, p0

    iput-byte v15, v0, Lcom/hz/core/LotteryDraw;->premiumsNum:B

    .line 191
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/hz/core/LotteryDraw;->strluckyNumber:Ljava/lang/String;

    .line 196
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    goto/16 :goto_0

    .line 177
    :cond_7
    invoke-static {v9}, Lcom/hz/core/LotteryDraw;->fromByteToLotteryDraw(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v11

    .line 178
    .local v11, "playerdata":Lcom/hz/actor/ListPlayer;
    if-nez v11, :cond_8

    .line 176
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 181
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    invoke-virtual {v15, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 141
    .end local v3    # "i":I
    .end local v5    # "ishasHistoryInfo":Z
    .end local v11    # "playerdata":Lcom/hz/actor/ListPlayer;
    .end local v13    # "sizeUrs":I
    :catch_0
    move-exception v15

    goto/16 :goto_1
.end method

.method public static doActorLotteryDrawWinningList(Lcom/hz/core/LotteryDraw;II)[Ljava/lang/Object;
    .locals 8
    .param p0, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 463
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x2b39

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 465
    .local v2, "msg":Lcom/hz/net/Message;
    int-to-byte v6, p1

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 466
    int-to-short v6, p2

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 468
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-object v5

    .line 471
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 477
    .local v0, "allSize":S
    if-gez v0, :cond_2

    .line 478
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 482
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 486
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    .line 487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 494
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0

    .line 488
    :cond_3
    invoke-static {v2}, Lcom/hz/core/LotteryDraw;->fromByteToLotteryDrawHistory(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v3

    .line 489
    .local v3, "playerdata":Lcom/hz/actor/ListPlayer;
    if-nez v3, :cond_4

    .line 487
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 492
    :cond_4
    iget-object v5, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doLotteryDraw(Lcom/hz/ui/UIHandler;I)V
    .locals 26
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventID"    # I

    .prologue
    .line 327
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v20

    if-nez v20, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 333
    .local v12, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz v12, :cond_0

    .line 337
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v19

    .line 338
    .local v19, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v19, :cond_0

    .line 341
    invoke-virtual/range {v19 .. v19}, Lcom/hz/ui/UIObject;->getLotteryDraw()Lcom/hz/core/LotteryDraw;

    move-result-object v5

    .line 342
    .local v5, "lotteryDraw":Lcom/hz/core/LotteryDraw;
    if-eqz v5, :cond_0

    .line 346
    packed-switch p1, :pswitch_data_0

    .line 375
    :cond_2
    new-instance v7, Lcom/hz/net/Message;

    const/16 v20, 0x2b37

    move/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 376
    .local v7, "msg":Lcom/hz/net/Message;
    move/from16 v0, p1

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 377
    invoke-static {v7}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 381
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v7

    .line 382
    if-eqz v7, :cond_0

    .line 386
    invoke-virtual {v7}, Lcom/hz/net/Message;->getShort()S

    move-result v15

    .line 388
    .local v15, "size":S
    if-gez v15, :cond_3

    .line 389
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 348
    .end local v7    # "msg":Lcom/hz/net/Message;
    .end local v15    # "size":S
    :pswitch_0
    const/16 v20, 0xf

    invoke-static/range {v20 .. v20}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 349
    const-string v21, "Ti\u1ebfp t\u1ee5c thao t\u00e1c b\u1ea1n c\u1ea7n chi %U, \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    .line 350
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/hz/core/LotteryDraw;->costMoney2:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/high16 v23, 0xff0000

    invoke-static/range {v22 .. v23}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 349
    invoke-static/range {v21 .. v22}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 351
    const/16 v22, 0x3

    .line 348
    invoke-static/range {v20 .. v22}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v2

    .line 352
    .local v2, "askResult":I
    const/16 v20, 0x14

    move/from16 v0, v20

    if-eq v2, v0, :cond_0

    .line 356
    const/16 v20, 0x0

    iget v0, v5, Lcom/hz/core/LotteryDraw;->costMoney2:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v20

    if-nez v20, :cond_2

    goto/16 :goto_0

    .line 361
    .end local v2    # "askResult":I
    :pswitch_1
    const/16 v20, 0xf

    invoke-static/range {v20 .. v20}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v20

    .line 362
    const-string v21, "Ti\u1ebfp t\u1ee5c thao t\u00e1c b\u1ea1n c\u1ea7n chi %U, \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    .line 363
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0xd

    invoke-static/range {v23 .. v23}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/hz/core/LotteryDraw;->costMoney3:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/high16 v23, 0xff0000

    invoke-static/range {v22 .. v23}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 362
    invoke-static/range {v21 .. v22}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 364
    const/16 v22, 0x3

    .line 361
    invoke-static/range {v20 .. v22}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v3

    .line 365
    .local v3, "askResult2":I
    const/16 v20, 0x14

    move/from16 v0, v20

    if-eq v3, v0, :cond_0

    .line 369
    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v0, v5, Lcom/hz/core/LotteryDraw;->costMoney3:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v20

    if-nez v20, :cond_2

    goto/16 :goto_0

    .line 393
    .end local v3    # "askResult2":I
    .restart local v7    # "msg":Lcom/hz/net/Message;
    .restart local v15    # "size":S
    :cond_3
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 394
    .local v14, "result":I
    if-lez v14, :cond_0

    .line 397
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 398
    .local v10, "myoldNum":I
    invoke-virtual {v7}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 399
    .local v9, "mynewNum":I
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 401
    .local v8, "myCount":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    .line 403
    .local v13, "remainCount":B
    invoke-virtual {v7}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 405
    .local v4, "isHasItem":Z
    const-string v16, ""

    .line 406
    .local v16, "strGainItem":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 410
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v16

    .line 412
    const-string v20, "\nPh\u1ea7n th\u01b0\u1edfng th\u1ea7n b\u00ed nh\u1eadn \u0111\u01b0\u1ee3c: %U"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 416
    :cond_4
    const-string v18, ""

    .line 417
    .local v18, "strPremiums":Ljava/lang/String;
    if-lez v13, :cond_5

    .line 418
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\n"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " Ti\u1ebfp t\u1ee5c th\u1eed /c00ff00%U/p l\u1ea7n s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c ph\u1ea7n th\u01b0\u1edfng th\u1ea7n b\u00ed "

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 421
    :cond_5
    const-string v17, "Kh\u00f4ng"

    .line 422
    .local v17, "strOldNum":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 423
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 426
    :cond_6
    const v11, 0xff00

    .line 427
    .local v11, "numColor":I
    if-le v10, v9, :cond_7

    .line 428
    const/high16 v11, 0xff0000

    .line 431
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "S\u1ed1 c\u0169: %U \n S\u1ed1 m\u1edbi:  %U\n  H\u00f4m nay mi \u0111\u00e3 th\u1eed v\u1eadn may %U l\u1ea7n"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v17, v22, v23

    const/16 v23, 0x1

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 434
    invoke-virtual/range {v19 .. v19}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 435
    invoke-static {v12}, Lcom/hz/ui/UIHandler;->updateDataToLotteryDrawNowUI(Lcom/hz/ui/UIHandler;)V

    .line 438
    invoke-virtual/range {v19 .. v19}, Lcom/hz/ui/UIObject;->getLotteryDraw()Lcom/hz/core/LotteryDraw;

    move-result-object v6

    .line 439
    .local v6, "lotteryDrawdata":Lcom/hz/core/LotteryDraw;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/hz/core/LotteryDraw;->doLotteryDrawView(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doSeeLotteryDrawHistoryPlayerInfo(Lcom/hz/ui/UIHandler;Lcom/hz/core/LotteryDraw;I)V
    .locals 10
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;
    .param p2, "curIndex"    # I

    .prologue
    .line 548
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 553
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_0

    .line 556
    invoke-virtual {p1, p2}, Lcom/hz/core/LotteryDraw;->getLotteryDrawHistoryPlayer(I)Lcom/hz/actor/ListPlayer;

    move-result-object v6

    .line 557
    .local v6, "curListPlayer":Lcom/hz/actor/ListPlayer;
    if-eqz v6, :cond_0

    .line 563
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 564
    .local v8, "sb":Ljava/lang/StringBuffer;
    iget-object v0, v6, Lcom/hz/actor/ListPlayer;->rewarditem:Lcom/hz/core/Item;

    if-eqz v0, :cond_2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/hz/actor/ListPlayer;->rewarditem:Lcom/hz/core/Item;

    invoke-virtual {v1}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    :cond_2
    iget v0, v6, Lcom/hz/actor/ListPlayer;->rewardMoney2:I

    if-lez v0, :cond_3

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L\u00e1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/hz/actor/ListPlayer;->rewardMoney2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    :cond_3
    iget v0, v6, Lcom/hz/actor/ListPlayer;->rewardMoney3:I

    if-lez v0, :cond_4

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "B\u1ea1c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/hz/actor/ListPlayer;->rewardMoney3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    :cond_4
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 575
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 584
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v7, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 586
    const-string v0, "%U\nPh\u1ea7n th\u01b0\u1edfng: \n%U\nNg\u01b0\u1eddi tr\u00fang th\u01b0\u1edfng: %U"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/hz/actor/ListPlayer;->rewardDate:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, v6, Lcom/hz/actor/ListPlayer;->winnerList:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x25

    move-object v5, p0

    .line 586
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doSeeLotteryDrawNowPlayerInfo(Lcom/hz/ui/UIHandler;Lcom/hz/core/LotteryDraw;I)V
    .locals 2
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;
    .param p2, "curIndex"    # I

    .prologue
    .line 444
    if-nez p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p1, p2}, Lcom/hz/core/LotteryDraw;->getLotteryDrawPlayer(I)Lcom/hz/actor/ListPlayer;

    move-result-object v0

    .line 448
    .local v0, "curListPlayer":Lcom/hz/actor/ListPlayer;
    if-eqz v0, :cond_0

    .line 455
    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;I)V

    goto :goto_0
.end method

.method public static fromByteToLotteryDraw(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lcom/hz/actor/ListPlayer;

    invoke-direct {v0}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 208
    .local v0, "player":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 209
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/ListPlayer;->flag:B

    .line 211
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 212
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/ListPlayer;->luckNum:I

    goto :goto_0
.end method

.method public static fromByteToLotteryDrawHistory(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 501
    if-nez p0, :cond_0

    .line 502
    const/4 v1, 0x0

    .line 529
    :goto_0
    return-object v1

    .line 504
    :cond_0
    new-instance v1, Lcom/hz/actor/ListPlayer;

    invoke-direct {v1}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 506
    .local v1, "player":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/actor/ListPlayer;->winnerList:Ljava/lang/String;

    .line 507
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/actor/ListPlayer;->rewardDate:Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->rewardMoney2:I

    .line 510
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/actor/ListPlayer;->rewardMoney3:I

    .line 511
    new-instance v2, Lcom/hz/core/Item;

    invoke-direct {v2}, Lcom/hz/core/Item;-><init>()V

    iput-object v2, v1, Lcom/hz/actor/ListPlayer;->rewarditem:Lcom/hz/core/Item;

    .line 512
    iget-object v2, v1, Lcom/hz/actor/ListPlayer;->rewarditem:Lcom/hz/core/Item;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 513
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 514
    .local v0, "bagIcon":B
    iget-object v2, v1, Lcom/hz/actor/ListPlayer;->rewarditem:Lcom/hz/core/Item;

    int-to-short v3, v0

    iput-short v3, v2, Lcom/hz/core/Item;->bagIcon:S

    .line 515
    iget-object v2, v1, Lcom/hz/actor/ListPlayer;->rewarditem:Lcom/hz/core/Item;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/Item;->grade:B

    goto :goto_0
.end method


# virtual methods
.method public doLotteryDrawView(Lcom/hz/ui/UIHandler;Z)V
    .locals 12
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 271
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 273
    .local v7, "player":Lcom/hz/actor/Player;
    if-eqz p1, :cond_0

    if-nez v7, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 277
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 278
    .local v2, "eventList":Ljava/util/Vector;
    const-string v0, ""

    .line 280
    .local v0, "strInfo":Ljava/lang/String;
    const-string v9, ""

    .line 281
    .local v9, "strPremiumsnum":Ljava/lang/String;
    iget-byte v1, p0, Lcom/hz/core/LotteryDraw;->premiumsNum:B

    if-lez v1, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " Ti\u1ebfp t\u1ee5c th\u1eed /c00ff00%U/p l\u1ea7n s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c ph\u1ea7n th\u01b0\u1edfng th\u1ea7n b\u00ed "

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/LotteryDraw;->premiumsNum:B

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 285
    :cond_2
    iget-byte v1, p0, Lcom/hz/core/LotteryDraw;->myCount:B

    iget-byte v3, p0, Lcom/hz/core/LotteryDraw;->freeCount:B

    if-lt v1, v3, :cond_7

    iget-byte v1, p0, Lcom/hz/core/LotteryDraw;->myCount:B

    iget-byte v3, p0, Lcom/hz/core/LotteryDraw;->allCount:B

    if-ge v1, v3, :cond_7

    .line 286
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v10, "strmoney":Ljava/lang/StringBuffer;
    const-string v8, ""

    .line 289
    .local v8, "strOr":Ljava/lang/String;
    iget v1, p0, Lcom/hz/core/LotteryDraw;->costMoney2:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/hz/core/LotteryDraw;->costMoney3:I

    if-lez v1, :cond_3

    .line 290
    const-string v8, " ho\u1eb7c "

    .line 293
    :cond_3
    iget v1, p0, Lcom/hz/core/LotteryDraw;->costMoney2:I

    if-lez v1, :cond_4

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hz/core/LotteryDraw;->costMoney2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "L\u00e1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x9acaff

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v1, "Th\u1eed v\u1eadn may(D\u00f9ng Kim Di\u1ec7p)"

    const/4 v3, 0x2

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 297
    :cond_4
    iget v1, p0, Lcom/hz/core/LotteryDraw;->costMoney3:I

    if-lez v1, :cond_5

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hz/core/LotteryDraw;->costMoney3:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "B\u1ea1c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0xc45712

    invoke-static {v1, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-string v1, "Th\u1eed v\u1eadn may(D\u00f9ng \u0110\u1ed3ng)"

    const/4 v3, 0x3

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 301
    :cond_5
    const-string v1, " S\u1ed1 c\u1ee7a t\u00f4i: /c00ff00%U/p\n%U %U %U\n(H\u1ec7 th\u1ed1ng t\u1ef1 l\u01b0u s\u1ed1 tr\u00fang th\u01b0\u1edfng, th\u1eed nhi\u1ec1u l\u1ea7n, c\u01a1 h\u1ed9i tr\u00fang th\u01b0\u1edfng c\u00e0ng l\u1edbn)\n Trong ng\u00e0y, ng\u01b0\u1eddi ch\u01a1i s\u1ed1 l\u1edbn nh\u1ea5t v\u00e0 s\u1ed1 may m\u1eafn \u0111\u1ec1u \u0111\u01b0\u1ee3c nh\u1eadn 1 ph\u1ea7n th\u01b0\u1edfng trong ng\u00e0y, ti\u1ec1n th\u01b0\u1edfng chia \u0111\u1ec1u.\n\nHi\u1ec7n c\u00f3:  /cFFFF00 V\u00e0ng%U/p  /c9acaffKim Di\u1ec7p%U/p  /cc45712\u0110\u1ed3ng%U/p"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/hz/core/LotteryDraw;->myResult:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/hz/core/LotteryDraw;->strluckyNumber:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v9, v3, v4

    const/4 v4, 0x3

    const-string v5, " Th\u1eed ti\u1ebfp c\u1ea7n: %U"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money1:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money2:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money3:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .end local v8    # "strOr":Ljava/lang/String;
    .end local v10    # "strmoney":Ljava/lang/StringBuffer;
    :cond_6
    :goto_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 315
    if-eqz p2, :cond_9

    .line 316
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/hz/ui/UIHandler;->updateAreaMessageWindowInfo(Lcom/hz/ui/UIHandler;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 303
    :cond_7
    iget-byte v1, p0, Lcom/hz/core/LotteryDraw;->myCount:B

    iget-byte v3, p0, Lcom/hz/core/LotteryDraw;->freeCount:B

    if-ge v1, v3, :cond_8

    .line 304
    const-string v1, "Th\u1eed v\u1eadn may "

    const/4 v3, 0x1

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 305
    const-string v1, " S\u1ed1 c\u1ee7a t\u00f4i: /c00ff00%U/p\n%U %U %U\n(H\u1ec7 th\u1ed1ng t\u1ef1 l\u01b0u s\u1ed1 tr\u00fang th\u01b0\u1edfng, th\u1eed nhi\u1ec1u l\u1ea7n, c\u01a1 h\u1ed9i tr\u00fang th\u01b0\u1edfng c\u00e0ng l\u1edbn)\n Trong ng\u00e0y, ng\u01b0\u1eddi ch\u01a1i s\u1ed1 l\u1edbn nh\u1ea5t v\u00e0 s\u1ed1 may m\u1eafn \u0111\u1ec1u \u0111\u01b0\u1ee3c nh\u1eadn 1 ph\u1ea7n th\u01b0\u1edfng trong ng\u00e0y, ti\u1ec1n th\u01b0\u1edfng chia \u0111\u1ec1u.\n\nHi\u1ec7n c\u00f3:  /cFFFF00 V\u00e0ng%U/p  /c9acaffKim Di\u1ec7p%U/p  /cc45712\u0110\u1ed3ng%U/p"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/hz/core/LotteryDraw;->myResult:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/hz/core/LotteryDraw;->strluckyNumber:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v9, v3, v4

    const/4 v4, 0x3

    const-string v5, " Mi c\u00f3 th\u1ec3 th\u1eed l\u1ea1i "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money1:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money2:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money3:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-byte v1, p0, Lcom/hz/core/LotteryDraw;->myCount:B

    const/4 v3, 0x1

    if-ge v1, v3, :cond_6

    .line 307
    const-string v1, "Mi c\u00f3 th\u1ec3 th\u1eed v\u1eadn may mi\u1ec5n ph\u00ed\n%U%U(H\u1ec7 th\u1ed1ng t\u1ef1 l\u01b0u s\u1ed1 tr\u00fang th\u01b0\u1edfng, th\u1eed nhi\u1ec1u l\u1ea7n, c\u01a1 h\u1ed9i tr\u00fang th\u01b0\u1edfng c\u00e0ng l\u1edbn)\n Trong ng\u00e0y, ng\u01b0\u1eddi ch\u01a1i s\u1ed1 l\u1edbn nh\u1ea5t v\u00e0 s\u1ed1 may m\u1eafn \u0111\u1ec1u \u0111\u01b0\u1ee3c nh\u1eadn 1 ph\u1ea7n th\u01b0\u1edfng trong ng\u00e0y, ti\u1ec1n th\u01b0\u1edfng chia \u0111\u1ec1u.n\nHi\u1ec7n c\u00f3:  /cFFFF00 V\u00e0ng%U/p  /c9acaffKim Di\u1ec7p%U/p  /cc45712\u0110\u1ed3ng%U/p"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/hz/core/LotteryDraw;->strluckyNumber:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money1:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money2:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/hz/actor/Player;->money3:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    goto/16 :goto_1

    :cond_8
    iget-byte v1, p0, Lcom/hz/core/LotteryDraw;->myCount:B

    iget-byte v3, p0, Lcom/hz/core/LotteryDraw;->allCount:B

    if-lt v1, v3, :cond_6

    .line 310
    const-string v0, " S\u1ed1 l\u1ea7n th\u1eed c\u1ee7a b\u1ea1n h\u00f4m nay \u0111\u00e3 h\u1ebft."

    goto/16 :goto_1

    .line 318
    :cond_9
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x24

    move-object v5, p1

    .line 318
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public doSeeHistoryReward(Lcom/hz/core/LotteryDraw;I)Ljava/lang/String;
    .locals 5
    .param p1, "lotteryDraw"    # Lcom/hz/core/LotteryDraw;
    .param p2, "curIndex"    # I

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string v2, ""

    .line 262
    :goto_0
    return-object v2

    .line 241
    :cond_0
    invoke-virtual {p1, p2}, Lcom/hz/core/LotteryDraw;->getLotteryDrawPlayer(I)Lcom/hz/actor/ListPlayer;

    move-result-object v0

    .line 242
    .local v0, "curListPlayer":Lcom/hz/actor/ListPlayer;
    if-nez v0, :cond_1

    .line 246
    const-string v2, ""

    goto :goto_0

    .line 249
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "S\u1ed1 tr\u00fang th\u01b0\u1edfng: %U\nPh\u1ea7n th\u01b0\u1edfng: \n"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/hz/actor/ListPlayer;->luckNum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    iget-object v2, p0, Lcom/hz/core/LotteryDraw;->historyItem:Lcom/hz/core/Item;

    if-eqz v2, :cond_2

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hz/core/LotteryDraw;->historyItem:Lcom/hz/core/Item;

    invoke-virtual {v3}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_2
    iget v2, p0, Lcom/hz/core/LotteryDraw;->historyMoney2:I

    if-lez v2, :cond_3

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hz/core/LotteryDraw;->historyMoney2:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "L\u00e1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_3
    iget v2, p0, Lcom/hz/core/LotteryDraw;->historyMoney3:I

    if-lez v2, :cond_4

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hz/core/LotteryDraw;->historyMoney3:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "B\u1ea1c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getLotteryDrawHistoryPlayer(I)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 534
    iget-object v1, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawListHistory:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/ListPlayer;

    goto :goto_0
.end method

.method public getLotteryDrawPlayer(I)Lcom/hz/actor/ListPlayer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/hz/core/LotteryDraw;->lotteryDrawList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/ListPlayer;

    goto :goto_0
.end method
