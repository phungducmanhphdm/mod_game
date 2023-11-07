.class public Lcom/hz/core/NewArenaRank;
.super Ljava/lang/Object;
.source "NewArenaRank.java"


# instance fields
.field public actorId:I

.field public actorValue:I

.field public actorname:Ljava/lang/String;

.field public fightValue:I

.field public rank:I

.field public rankName:Ljava/lang/String;

.field public ranktype:B

.field public searchIndex:I

.field public vNewArenaRank:Ljava/util/Vector;

.field public vNewArenaRankSearch:Ljava/util/Vector;

.field public valueName:Ljava/lang/String;

.field public vipLv:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetRankSearchType()V
    .locals 7

    .prologue
    .line 47
    new-instance v1, Lcom/hz/net/Message;

    const/16 v6, 0x30f2

    invoke-direct {v1, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 48
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 63
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 65
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 74
    .local v5, "size":B
    new-instance v2, Lcom/hz/core/NewArenaRank;

    invoke-direct {v2}, Lcom/hz/core/NewArenaRank;-><init>()V

    .line 75
    .local v2, "newArenaRank":Lcom/hz/core/NewArenaRank;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, v2, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    .line 76
    const/4 v6, 0x0

    iput v6, v2, Lcom/hz/core/NewArenaRank;->searchIndex:I

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_3

    .line 92
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createNewArenaRankUI(Lcom/hz/core/NewArenaRank;)V

    goto :goto_0

    .line 80
    :cond_3
    new-instance v3, Lcom/hz/core/NewArenaRank;

    invoke-direct {v3}, Lcom/hz/core/NewArenaRank;-><init>()V

    .line 81
    .local v3, "newArenaRankdata":Lcom/hz/core/NewArenaRank;
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v3, Lcom/hz/core/NewArenaRank;->ranktype:B

    .line 82
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/hz/core/NewArenaRank;->rankName:Ljava/lang/String;

    .line 89
    iget-object v6, v2, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static doNewArenaRankActorList(Lcom/hz/ui/UIHandler;Lcom/hz/core/NewArenaRank;III)[Ljava/lang/Object;
    .locals 9
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "newArenarank"    # Lcom/hz/core/NewArenaRank;
    .param p2, "updatetype"    # I
    .param p3, "pageSize"    # I
    .param p4, "pageNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 106
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v6

    .line 110
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v7, 0x30e8

    invoke-direct {v2, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 117
    .local v2, "msg":Lcom/hz/net/Message;
    int-to-byte v7, p2

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 118
    int-to-short v7, p3

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putShort(S)V

    .line 119
    invoke-virtual {v2, p4}, Lcom/hz/net/Message;->putInt(I)V

    .line 123
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 138
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 139
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 145
    .local v0, "allSize":I
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/hz/core/NewArenaRank;->valueName:Ljava/lang/String;

    .line 147
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 154
    .local v5, "size":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p1, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 165
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {v2}, Lcom/hz/core/NewArenaRank;->getNewArenaRankFromByte(Lcom/hz/net/Message;)Lcom/hz/core/NewArenaRank;

    move-result-object v3

    .line 159
    .local v3, "newArenaRankData":Lcom/hz/core/NewArenaRank;
    if-eqz v3, :cond_4

    .line 161
    iget-object v6, p1, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 156
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doNewArenaSelectType(Lcom/hz/ui/UIHandler;Lcom/hz/core/NewArenaRank;Lcom/hz/gui/GWidget;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "newArenaRank"    # Lcom/hz/core/NewArenaRank;
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 285
    .local v11, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 286
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 288
    .local v10, "keyList":Ljava/util/Vector;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v2, p1, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v9, v2, :cond_2

    .line 300
    invoke-static {v11}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v8

    .line 306
    .local v8, "getWidth":I
    const/4 v6, -0x1

    .line 315
    .local v6, "maxWinHeight":I
    add-int/lit8 v2, v8, 0x28

    .line 316
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x39

    move-object v5, p0

    .line 315
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v13

    .line 320
    .local v13, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v13, :cond_0

    .line 321
    invoke-virtual {v13}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    .line 322
    .local v7, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    .line 323
    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v7, v2, v3}, Lcom/hz/gui/GContainer;->setPos(II)V

    goto :goto_0

    .line 290
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v6    # "maxWinHeight":I
    .end local v7    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v8    # "getWidth":I
    .end local v13    # "ui":Lcom/hz/ui/UIHandler;
    :cond_2
    iget-object v2, p1, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hz/core/NewArenaRank;

    .line 291
    .local v12, "newArenaRankdata":Lcom/hz/core/NewArenaRank;
    if-eqz v12, :cond_3

    .line 293
    iget-object v2, v12, Lcom/hz/core/NewArenaRank;->rankName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 294
    new-instance v2, Ljava/lang/Integer;

    iget-byte v3, v12, Lcom/hz/core/NewArenaRank;->ranktype:B

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 288
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static doSeeMyRank()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x30ef

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 250
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 265
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 267
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static getNewArenaRankFromByte(Lcom/hz/net/Message;)Lcom/hz/core/NewArenaRank;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v0, Lcom/hz/core/NewArenaRank;

    invoke-direct {v0}, Lcom/hz/core/NewArenaRank;-><init>()V

    .line 180
    .local v0, "newArenaRank":Lcom/hz/core/NewArenaRank;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/NewArenaRank;->vipLv:B

    .line 181
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArenaRank;->rank:I

    .line 182
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArenaRank;->actorId:I

    .line 183
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/NewArenaRank;->actorname:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/NewArenaRank;->actorValue:I

    goto :goto_0
.end method


# virtual methods
.method public getNewArenaActorByIndex(I)Lcom/hz/core/NewArenaRank;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRank:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/NewArenaRank;

    goto :goto_0
.end method

.method public getNewArenaSearchByIndex(I)Lcom/hz/core/NewArenaRank;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/NewArenaRank;

    goto :goto_0
.end method

.method public getSearchName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    const-string v1, ""

    .line 349
    .local v1, "tempSearchName":Ljava/lang/String;
    iget-object v2, p0, Lcom/hz/core/NewArenaRank;->vNewArenaRankSearch:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 351
    iget v2, p0, Lcom/hz/core/NewArenaRank;->searchIndex:I

    invoke-virtual {p0, v2}, Lcom/hz/core/NewArenaRank;->getNewArenaSearchByIndex(I)Lcom/hz/core/NewArenaRank;

    move-result-object v0

    .line 352
    .local v0, "newArenaRank":Lcom/hz/core/NewArenaRank;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, v0, Lcom/hz/core/NewArenaRank;->rankName:Ljava/lang/String;

    .line 357
    .end local v0    # "newArenaRank":Lcom/hz/core/NewArenaRank;
    :cond_0
    return-object v1
.end method
