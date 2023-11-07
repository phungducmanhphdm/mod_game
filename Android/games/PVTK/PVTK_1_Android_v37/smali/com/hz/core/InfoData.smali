.class public Lcom/hz/core/InfoData;
.super Ljava/lang/Object;
.source "InfoData.java"


# static fields
.field public static final FAG_IS_PHOTO:S = 0x1s

.field public static final FAG_IS_VIP:S = 0x2s

.field public static final FAG_IS_VIP_CQ:S = 0x4s

.field public static final START_INDEX:B = -0x1t

.field public static final TYPE_CONTENT:B = 0x1t

.field public static final TYPE_MENU:B


# instance fields
.field public actorId:I

.field public actorName:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public flag:B

.field public id:I

.field public isTeacherGM:B

.field public menu:Ljava/lang/String;

.field public rankList:Ljava/util/Vector;

.field public rankStr:[Ljava/lang/String;

.field public rankSubTypeIDList:[B

.field public rankSubTypeNameList:[Ljava/lang/String;

.field rankTypeList:Ljava/util/Vector;

.field public subTitle:[Ljava/lang/String;

.field public subTypeIndex:B

.field public topIndex:S

.field public type:B

.field public typeIndex:B

.field public vipLevel:B

.field public vipLevel2:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/InfoData;->menu:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/InfoData;->content:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    .line 31
    return-void
.end method

.method public static doBrowseGameHelpList(I)[Ljava/lang/Object;
    .locals 10
    .param p0, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 83
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x3e85

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 84
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-virtual {v3, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 85
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v7

    .line 89
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 95
    .local v5, "prePageID":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 103
    .local v4, "num":B
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 104
    .local v0, "helpList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 114
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v6, v7, v8

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v3}, Lcom/hz/core/InfoData;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;

    move-result-object v2

    .line 107
    .local v2, "infoData":Lcom/hz/core/InfoData;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doGetRankList()Lcom/hz/core/InfoData;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v3, Lcom/hz/net/Message;

    const/16 v5, 0x34e5

    invoke-direct {v3, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 217
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v2

    .line 221
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 227
    .local v4, "num":B
    if-gtz v4, :cond_2

    .line 228
    const-string v5, "B\u1ea3ng x\u1ebfp h\u1ea1ng t\u1ea1m \u0111\u00f3ng!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 232
    :cond_2
    new-instance v2, Lcom/hz/core/InfoData;

    invoke-direct {v2}, Lcom/hz/core/InfoData;-><init>()V

    .line 233
    .local v2, "infoData":Lcom/hz/core/InfoData;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v2, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 240
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/hz/core/InfoData;->setTypeIndex(B)V

    goto :goto_0

    .line 235
    :cond_3
    invoke-static {v3}, Lcom/hz/core/InfoData;->fromRankListBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;

    move-result-object v0

    .line 236
    .local v0, "data":Lcom/hz/core/InfoData;
    iget-object v5, v2, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doRankSelectSubType(Lcom/hz/ui/UIHandler;Lcom/hz/core/InfoData;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "infoData"    # Lcom/hz/core/InfoData;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 459
    if-nez p1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-byte v3, p1, Lcom/hz/core/InfoData;->typeIndex:B

    invoke-virtual {p1, v3}, Lcom/hz/core/InfoData;->getRankTypeInfoData(I)Lcom/hz/core/InfoData;

    move-result-object v7

    .line 464
    .local v7, "data":Lcom/hz/core/InfoData;
    iget-object v3, v7, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    if-eqz v3, :cond_2

    iget-object v3, v7, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    array-length v3, v3

    if-gtz v3, :cond_3

    .line 465
    :cond_2
    const-string v3, "B\u1ea3ng x\u1ebfp h\u1ea1ng n\u00e0y kh\u00f4ng c\u00f3 lo\u1ea1i h\u00ecnh \u0111\u1ec3 ch\u1ecdn!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 469
    :cond_3
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 470
    .local v11, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 471
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 473
    .local v10, "keyList":Ljava/util/Vector;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v3, v7, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    array-length v3, v3

    if-lt v9, v3, :cond_4

    .line 479
    invoke-static {v11}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 483
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 484
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 493
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x24

    move-object v5, p0

    .line 492
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 496
    if-eqz v12, :cond_0

    .line 497
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 498
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 499
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v8, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    goto :goto_0

    .line 474
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_4
    iget-object v3, v7, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 475
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, v7, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    aget-byte v4, v4, v9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 476
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 473
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static doRankSelectType(Lcom/hz/ui/UIHandler;Lcom/hz/core/InfoData;Lcom/hz/gui/GWidget;)V
    .locals 12
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "infoData"    # Lcom/hz/core/InfoData;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 390
    .local v10, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 391
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 393
    .local v9, "keyList":Ljava/util/Vector;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v3, p1, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v8, v3, :cond_2

    .line 399
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 403
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 414
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x23

    move-object v5, p0

    .line 413
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 416
    if-eqz v11, :cond_0

    .line 417
    invoke-virtual {v11}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    .line 418
    .local v7, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    .line 419
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v7, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    goto :goto_0

    .line 394
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v7    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v11    # "ui":Lcom/hz/ui/UIHandler;
    :cond_2
    invoke-virtual {p1, v8}, Lcom/hz/core/InfoData;->getRankTypeStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 395
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1, v8}, Lcom/hz/core/InfoData;->getRankTypeID(I)B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 396
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 393
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static doSeeMyRank(Lcom/hz/core/InfoData;)V
    .locals 3
    .param p0, "infoData"    # Lcom/hz/core/InfoData;

    .prologue
    .line 550
    if-nez p0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x34e7

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 556
    .local v0, "msg":Lcom/hz/net/Message;
    iget-byte v2, p0, Lcom/hz/core/InfoData;->typeIndex:B

    invoke-virtual {p0, v2}, Lcom/hz/core/InfoData;->getRankTypeID(I)B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 558
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "myInfo":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSeeRankPlayer(Lcom/hz/ui/UIHandler;Lcom/hz/core/InfoData;I)V
    .locals 3
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "infoData"    # Lcom/hz/core/InfoData;
    .param p2, "curIndex"    # I

    .prologue
    .line 524
    if-nez p1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-virtual {p1, p2}, Lcom/hz/core/InfoData;->getRankListInfoData(I)Lcom/hz/core/InfoData;

    move-result-object v0

    .line 530
    .local v0, "curInfoData":Lcom/hz/core/InfoData;
    if-eqz v0, :cond_0

    .line 537
    new-instance v1, Lcom/hz/actor/Player;

    invoke-direct {v1}, Lcom/hz/actor/Player;-><init>()V

    .line 538
    .local v1, "player":Lcom/hz/actor/Player;
    iget-object v2, v0, Lcom/hz/core/InfoData;->actorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hz/actor/Player;->setName(Ljava/lang/String;)V

    .line 539
    iget v2, v0, Lcom/hz/core/InfoData;->actorId:I

    invoke-virtual {v1, v2}, Lcom/hz/actor/Player;->setId(I)V

    .line 541
    const/16 v2, 0xe

    invoke-static {p0, v1, v2}, Lcom/hz/actor/ListPlayer;->doShowPlayerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;I)V

    goto :goto_0
.end method

.method public static doViewRankInfo(Lcom/hz/core/InfoData;II)[Ljava/lang/Object;
    .locals 11
    .param p0, "infoData"    # Lcom/hz/core/InfoData;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 258
    iget-byte v9, p0, Lcom/hz/core/InfoData;->typeIndex:B

    invoke-virtual {p0, v9}, Lcom/hz/core/InfoData;->getRankTypeID(I)B

    move-result v7

    .line 259
    .local v7, "typeID":B
    iget-byte v9, p0, Lcom/hz/core/InfoData;->subTypeIndex:B

    invoke-virtual {p0, v9}, Lcom/hz/core/InfoData;->getRankSubTypeID(I)B

    move-result v5

    .line 261
    .local v5, "subTypeID":B
    new-instance v3, Lcom/hz/net/Message;

    const/16 v9, 0x34e6

    invoke-direct {v3, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 262
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-virtual {v3, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 263
    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putByte(B)V

    .line 264
    int-to-byte v9, p1

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putByte(B)V

    .line 265
    int-to-short v9, p2

    invoke-virtual {v3, v9}, Lcom/hz/net/Message;->putShort(S)V

    .line 272
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v8

    .line 276
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 282
    .local v0, "allSize":S
    if-ltz v0, :cond_0

    .line 289
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 290
    .local v6, "tileSize":B
    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, p0, Lcom/hz/core/InfoData;->subTitle:[Ljava/lang/String;

    .line 291
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_2

    .line 296
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 300
    .local v4, "size":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    .line 301
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_3

    .line 306
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    goto :goto_0

    .line 292
    .end local v4    # "size":B
    :cond_2
    iget-object v8, p0, Lcom/hz/core/InfoData;->subTitle:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .restart local v4    # "size":B
    :cond_3
    invoke-static {v3}, Lcom/hz/core/InfoData;->fromRandDataBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;

    move-result-object v1

    .line 303
    .local v1, "data":Lcom/hz/core/InfoData;
    iget-object v8, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 46
    new-instance v0, Lcom/hz/core/InfoData;

    invoke-direct {v0}, Lcom/hz/core/InfoData;-><init>()V

    .line 48
    .local v0, "infoData":Lcom/hz/core/InfoData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/InfoData;->id:I

    .line 49
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/InfoData;->type:B

    .line 51
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/InfoData;->menu:Ljava/lang/String;

    .line 53
    iget-byte v1, v0, Lcom/hz/core/InfoData;->type:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/InfoData;->content:Ljava/lang/String;

    .line 57
    :cond_0
    return-object v0
.end method

.method public static fromRandDataBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 343
    new-instance v1, Lcom/hz/core/InfoData;

    invoke-direct {v1}, Lcom/hz/core/InfoData;-><init>()V

    .line 344
    .local v1, "infoData":Lcom/hz/core/InfoData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/core/InfoData;->vipLevel2:B

    .line 346
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, v1, Lcom/hz/core/InfoData;->actorId:I

    .line 347
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hz/core/InfoData;->actorName:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/core/InfoData;->flag:B

    .line 349
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v1, Lcom/hz/core/InfoData;->topIndex:S

    .line 355
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 356
    .local v2, "tileSize":I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Lcom/hz/core/InfoData;->rankStr:[Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 364
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/hz/core/InfoData;->isFlag(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/hz/core/InfoData;->isFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/core/InfoData;->vipLevel:B

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/core/InfoData;->isTeacherGM:B

    .line 372
    return-object v1

    .line 358
    :cond_2
    iget-object v3, v1, Lcom/hz/core/InfoData;->rankStr:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fromRankListBytes(Lcom/hz/net/Message;)Lcom/hz/core/InfoData;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 312
    new-instance v1, Lcom/hz/core/InfoData;

    invoke-direct {v1}, Lcom/hz/core/InfoData;-><init>()V

    .line 314
    .local v1, "infoData":Lcom/hz/core/InfoData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v1, Lcom/hz/core/InfoData;->type:B

    .line 315
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hz/core/InfoData;->content:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 323
    .local v2, "subSize":B
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    .line 324
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 337
    return-object v1

    .line 326
    :cond_0
    iget-object v3, v1, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    aput-byte v4, v3, v0

    .line 327
    iget-object v3, v1, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doViewGameHelp()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    iget-byte v0, p0, Lcom/hz/core/InfoData;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hz/core/InfoData;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/hz/core/InfoData;->id:I

    invoke-static {v0}, Lcom/hz/core/InfoData;->doBrowseGameHelpList(I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRankListInfoData(I)Lcom/hz/core/InfoData;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 641
    iget-object v1, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-object v0

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/hz/core/InfoData;->rankList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/InfoData;

    goto :goto_0
.end method

.method public getRankStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hz/core/InfoData;->rankStr:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 158
    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/hz/core/InfoData;->rankStr:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, ""

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/hz/core/InfoData;->rankStr:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getRankSubTypeID(I)B
    .locals 3
    .param p1, "subTypeIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 626
    invoke-virtual {p0, p1}, Lcom/hz/core/InfoData;->getRankTypeInfoData(I)Lcom/hz/core/InfoData;

    move-result-object v0

    .line 627
    .local v0, "infoData":Lcom/hz/core/InfoData;
    iget-object v2, v0, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v1

    .line 630
    :cond_1
    iget-object v2, v0, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    invoke-static {p1, v2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 633
    iget-object v1, v0, Lcom/hz/core/InfoData;->rankSubTypeIDList:[B

    aget-byte v1, v1, p1

    goto :goto_0
.end method

.method public getRankSubTypeStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "subTypeIndex"    # I

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/hz/core/InfoData;->getRankTypeInfoData(I)Lcom/hz/core/InfoData;

    move-result-object v0

    .line 613
    .local v0, "infoData":Lcom/hz/core/InfoData;
    iget-object v1, v0, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_1

    .line 614
    :cond_0
    const-string v1, "Kh\u00f4ng"

    .line 619
    :goto_0
    return-object v1

    .line 616
    :cond_1
    iget-object v1, v0, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    const-string v1, "Kh\u00f4ng"

    goto :goto_0

    .line 619
    :cond_2
    iget-object v1, v0, Lcom/hz/core/InfoData;->rankSubTypeNameList:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method public getRankTypeID(I)B
    .locals 2
    .param p1, "typeIndex"    # I

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/hz/core/InfoData;->getRankTypeInfoData(I)Lcom/hz/core/InfoData;

    move-result-object v0

    .line 605
    .local v0, "infoData":Lcom/hz/core/InfoData;
    if-eqz v0, :cond_0

    iget-byte v1, v0, Lcom/hz/core/InfoData;->type:B

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRankTypeInfoData(I)Lcom/hz/core/InfoData;
    .locals 2
    .param p1, "typeIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 583
    iget-object v1, p0, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-object v0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/hz/core/InfoData;->rankTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/InfoData;

    goto :goto_0
.end method

.method public getRankTypeStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "typeIndex"    # I

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/hz/core/InfoData;->getRankTypeInfoData(I)Lcom/hz/core/InfoData;

    move-result-object v0

    .line 597
    .local v0, "infoData":Lcom/hz/core/InfoData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/hz/core/InfoData;->content:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Kh\u00f4ng"

    goto :goto_0
.end method

.method public getSubTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hz/core/InfoData;->subTitle:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    const-string v0, ""

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/hz/core/InfoData;->subTitle:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, ""

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/hz/core/InfoData;->subTitle:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public isFlag(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 171
    iget-byte v0, p0, Lcom/hz/core/InfoData;->flag:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasPhoto()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/core/InfoData;->isFlag(I)Z

    move-result v0

    return v0
.end method

.method public setTypeIndex(B)V
    .locals 1
    .param p1, "index"    # B

    .prologue
    .line 187
    iput-byte p1, p0, Lcom/hz/core/InfoData;->typeIndex:B

    .line 204
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/core/InfoData;->subTypeIndex:B

    .line 205
    return-void
.end method
