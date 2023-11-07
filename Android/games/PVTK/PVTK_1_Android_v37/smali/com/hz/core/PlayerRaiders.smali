.class public Lcom/hz/core/PlayerRaiders;
.super Ljava/lang/Object;
.source "PlayerRaiders.java"


# instance fields
.field jobSortIDTable:[B

.field public pcommentcount:I

.field public pdesc:Ljava/lang/String;

.field public picon1:I

.field public pid:I

.field public pjob:B

.field public pjobindex:B

.field public playerraiders:Lcom/hz/core/PlayerRaiders;

.field public plevel:B

.field public plevel2:B

.field public pname:Ljava/lang/String;

.field public vPraidersList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 195
    iput-object v0, p0, Lcom/hz/core/PlayerRaiders;->jobSortIDTable:[B

    .line 25
    return-void

    .line 187
    nop

    :array_0
    .array-data 1
        -0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0xat
    .end array-data
.end method

.method public static doApplyPlayerRaiders()V
    .locals 11

    .prologue
    .line 44
    const/16 v0, 0x41

    const-string v1, "Y\u00eau c\u1ea7u c\u00f4ng l\u01b0\u1ee3c ngh\u1ec1"

    .line 45
    const-string v2, "Nh\u1eadp h\u01b0\u1edbng tu luy\u1ec7n c\u1ee7a nh\u00e2n v\u1eadt, vd: B\u1ea1o L\u1ef1c Xu\u1ea5t Th\u1ee7 (Kh\u00f4ng qu\u00e1 7 t\u1eeb)."

    const-string v3, ""

    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 47
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    const-string v0, "B\u1ea5t lu\u1eadn l\u00e0 m\u00f4n ph\u00e1i n\u00e0o, ch\u1ec9 c\u1ea7n \u0111\u1ee7 m\u1ea1nh v\u00e0 t\u1ef1 nguy\u1ec7n \u0111\u1ec1 c\u1eed, s\u1ebd c\u00f3 c\u01a1 h\u1ed9i tr\u1edf th\u00e0nh \"Ng\u00f4i Sao \u0110\u1ec1 C\u1eed\", \u0111\u01b0\u1ee3c v\u1ea1n ng\u01b0\u1eddi y\u00eau m\u1ebfn.\nCh\u00fa \u00fd: sau khi GM \u0111\u1ec1 c\u1eed, ng\u01b0\u1eddi ch\u01a1i kh\u00e1c c\u00f3 th\u1ec3 xem t\u00ecnh h\u00ecnh h\u1ecdc skill v\u00e0 \u0111i\u1ec3m c\u1ee7a b\u1ea1n.Gi\u1edbi h\u1ea1n TOP50 ng\u01b0\u1eddi ch\u01a1i t\u1ef1 \u0111\u1ec1 c\u1eed trong BXH l\u1ecbch s\u1eed thu\u1ed9c t\u00ednh chi\u1ebfn \u0111\u1ea5u."

    invoke-static {v6, v0}, Lcom/hz/main/GameForm;->appendString(Lcom/hz/main/GameForm;Ljava/lang/String;)V

    .line 49
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 50
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "str":Ljava/lang/String;
    new-instance v8, Lcom/hz/net/Message;

    const/16 v0, 0x3e8c

    invoke-direct {v8, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 62
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 64
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 69
    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 78
    .local v9, "rs":B
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doGetPlayerRaidersData(Lcom/hz/core/PlayerRaiders;II)[Ljava/lang/Object;
    .locals 8
    .param p0, "playerraiders"    # Lcom/hz/core/PlayerRaiders;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v5

    .line 89
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x3e8b

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 91
    .local v2, "msg":Lcom/hz/net/Message;
    iget-byte v6, p0, Lcom/hz/core/PlayerRaiders;->pjobindex:B

    invoke-virtual {p0, v6}, Lcom/hz/core/PlayerRaiders;->getJobEvent(I)B

    move-result v6

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 92
    int-to-short v6, p1

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 93
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 98
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 112
    .local v0, "allsize":I
    if-gez v0, :cond_2

    .line 114
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {v2}, Lcom/hz/core/PlayerRaiders;->getPlayerRaidersfromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerRaiders;

    move-result-object v5

    iput-object v5, p0, Lcom/hz/core/PlayerRaiders;->playerraiders:Lcom/hz/core/PlayerRaiders;

    .line 120
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    .line 122
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 127
    .local v4, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 142
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {v2}, Lcom/hz/core/PlayerRaiders;->getPlayerRaidersfromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerRaiders;

    move-result-object v3

    .line 137
    .local v3, "playerraidersdata":Lcom/hz/core/PlayerRaiders;
    if-eqz v3, :cond_4

    .line 138
    iget-object v5, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doPlayerraidersKeyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/PlayerRaiders;Lcom/hz/gui/GWidget;)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "playerraiders"    # Lcom/hz/core/PlayerRaiders;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 403
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 404
    .local v14, "menuList":Ljava/util/Vector;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 405
    .local v8, "eventList":Ljava/util/Vector;
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 406
    .local v13, "keyList":Ljava/util/Vector;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0110i\u1ec3m"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "Thu\u1ed9c t\u00ednh"

    aput-object v4, v0, v3

    .line 412
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v8}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v1

    .line 413
    .local v1, "KEY_MAIN_EVENT":[I
    invoke-static {v13}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v2

    .line 415
    .local v2, "KEY_MAIN_HOT":[I
    if-eqz p2, :cond_0

    .line 416
    const-string v3, "\u0110i\u1ec3m"

    const/16 v4, 0x30eb

    invoke-static {v14, v3, v8, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 417
    const-string v3, "Thu\u1ed9c t\u00ednh"

    const/16 v4, 0x30ec

    invoke-static {v14, v3, v8, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getW()I

    move-result v4

    add-int/2addr v3, v4

    .line 421
    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v4

    .line 422
    const/16 v5, 0x36

    .line 423
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v7

    move-object v6, p0

    .line 419
    invoke-static/range {v0 .. v8}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    .line 433
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v14, v3, v8, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 426
    const-string v3, "\u0110i\u1ec3m"

    const/16 v4, 0x30dd

    invoke-static {v14, v3, v8, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 427
    const-string v3, "Thu\u1ed9c t\u00ednh"

    const/16 v4, 0x30de

    invoke-static {v14, v3, v8, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 429
    invoke-static {v14}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    .line 430
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v10

    .line 431
    const/16 v11, 0x35

    move-object v12, p0

    .line 429
    invoke-static/range {v7 .. v12}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doPlayerraidersSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/core/PlayerRaiders;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "playerraiders"    # Lcom/hz/core/PlayerRaiders;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 243
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/hz/core/PlayerRaiders;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v1

    .line 250
    .local v1, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 251
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 252
    .local v11, "keyList":Ljava/util/Vector;
    invoke-static {v1}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v2, p1, Lcom/hz/core/PlayerRaiders;->jobSortIDTable:[B

    array-length v2, v2

    if-lt v10, v2, :cond_2

    .line 261
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v9

    .line 263
    .local v9, "getWidth":I
    const/4 v6, -0x1

    .line 273
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v9, 0x28

    .line 274
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x34

    move-object v5, p0

    .line 273
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 278
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_0

    .line 279
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 280
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 281
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v8, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    goto :goto_0

    .line 255
    .end local v6    # "maxWinHeight":I
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v9    # "getWidth":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hz/core/PlayerRaiders;->jobSortIDTable:[B

    aget-byte v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 256
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static doSeePlayerInfo(BI)V
    .locals 7
    .param p0, "job"    # B
    .param p1, "actorid"    # I

    .prologue
    .line 302
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x3e8f

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 303
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 304
    invoke-virtual {v2, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 306
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 319
    .local v4, "rs":I
    if-gez v4, :cond_2

    .line 320
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 323
    :cond_2
    new-instance v3, Lcom/hz/actor/Player;

    invoke-direct {v3}, Lcom/hz/actor/Player;-><init>()V

    .line 324
    .local v3, "p":Lcom/hz/actor/Player;
    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->processDataPlayerDetail(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V

    .line 325
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->processDataPlayerItemMsg(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v0

    .line 327
    .local v0, "bagItemList":Ljava/util/Vector;
    iget-object v6, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v6, :cond_3

    .line 328
    new-instance v6, Lcom/hz/core/PlayerBag;

    invoke-direct {v6, v3}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    iput-object v6, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 329
    iget-object v6, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v6, v0}, Lcom/hz/core/PlayerBag;->initBagItem(Ljava/util/Vector;)I

    .line 335
    :goto_1
    invoke-virtual {v3}, Lcom/hz/actor/Player;->getBagAllEquip()Ljava/util/Vector;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    .line 337
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/hz/main/MsgHandler;->processDataPlayerSkillMsg(Lcom/hz/net/Message;Z)Ljava/util/Vector;

    move-result-object v6

    iput-object v6, v3, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    .line 342
    const/4 v6, -0x1

    invoke-static {v3, v6}, Lcom/hz/ui/UIHandler;->createRaidersPlayerInfoUI(Lcom/hz/actor/Player;I)Lcom/hz/ui/UIHandler;

    move-result-object v5

    .line 346
    .local v5, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v5, :cond_0

    .line 347
    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 348
    .local v1, "gw":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 349
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0

    .line 331
    .end local v1    # "gw":Lcom/hz/gui/GWidget;
    .end local v5    # "ui":Lcom/hz/ui/UIHandler;
    :cond_3
    iget-object v6, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v6, v0}, Lcom/hz/core/PlayerBag;->initBagItem(Ljava/util/Vector;)I

    goto :goto_1
.end method

.method public static doSeePlayerRaidersPet(Lcom/hz/actor/Player;Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "p"    # Lcom/hz/actor/Player;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 360
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x3e90

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 365
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getJob()B

    move-result v3

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 366
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 368
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 381
    .local v2, "rs":I
    if-gez v2, :cond_2

    .line 382
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 386
    :cond_2
    new-instance v1, Lcom/hz/actor/MyPet;

    invoke-direct {v1, p0}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 387
    .local v1, "pet":Lcom/hz/actor/MyPet;
    invoke-static {v0, v1}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 389
    invoke-virtual {v1}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V

    .line 391
    const/4 v3, 0x6

    invoke-static {v1, p1, v3}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static getPlayerRaidersfromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerRaiders;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lcom/hz/core/PlayerRaiders;

    invoke-direct {v0}, Lcom/hz/core/PlayerRaiders;-><init>()V

    .line 154
    .local v0, "playerraiders":Lcom/hz/core/PlayerRaiders;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/PlayerRaiders;->plevel:B

    .line 155
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PlayerRaiders;->pcommentcount:I

    .line 156
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/PlayerRaiders;->pdesc:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/PlayerRaiders;->pjob:B

    .line 158
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PlayerRaiders;->picon1:I

    .line 159
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/PlayerRaiders;->plevel2:B

    .line 160
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PlayerRaiders;->pid:I

    .line 161
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/PlayerRaiders;->pname:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public doGetMountRaidersfromV(I)Lcom/hz/core/PlayerRaiders;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/hz/core/PlayerRaiders;->vPraidersList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PlayerRaiders;

    goto :goto_0
.end method

.method public getJobEvent(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/hz/core/PlayerRaiders;->jobSortIDTable:[B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, -0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/PlayerRaiders;->jobSortIDTable:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method public getJobStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/hz/core/PlayerRaiders;->getSortJobMenuList()Ljava/util/Vector;

    move-result-object v0

    .line 223
    .local v0, "menu":Ljava/util/Vector;
    iget-byte v1, p0, Lcom/hz/core/PlayerRaiders;->pjobindex:B

    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, ""

    .line 226
    :goto_0
    return-object v1

    :cond_0
    iget-byte v1, p0, Lcom/hz/core/PlayerRaiders;->pjobindex:B

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSortJobMenuList()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 203
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 204
    .local v2, "menu":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/PlayerRaiders;->jobSortIDTable:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 214
    return-object v2

    .line 206
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hz/core/PlayerRaiders;->getJobEvent(I)B

    move-result v1

    .line 207
    .local v1, "jobID":B
    if-gez v1, :cond_1

    .line 208
    const-string v3, "T\u1ea5t c\u1ea3"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {v1}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method
