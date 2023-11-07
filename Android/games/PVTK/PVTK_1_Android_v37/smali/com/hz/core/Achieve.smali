.class public Lcom/hz/core/Achieve;
.super Ljava/lang/Object;
.source "Achieve.java"


# static fields
.field public static final ACHIEVE_ALL_REWARD:I = -0x1

.field public static final ACHIEVE_CANCEL_TITLE:I = -0x1

.field public static final ACHIEVE_GET_REWARD:I = 0x1

.field public static final ACHIEVE_NO_GET_REWARD:I = 0x0

.field public static final ACHIEVE_TAB_TYPE_1:I = 0x1

.field public static final ACHIEVE_TAB_TYPE_2:I = 0x2

.field public static final ACHIEVE_TAB_TYPE_3:I = 0x3

.field public static final ACHIEVE_TYPE:[I

.field public static final ACHIEVE_TYPE_1:I = 0x1

.field public static final ACHIEVE_TYPE_2:I = 0x2

.field public static final ACHIEVE_TYPE_3:I = 0x3

.field public static final ACHIEVE_TYPE_4:I = 0x4

.field public static final ACHIEVE_TYPE_TEXT:[Ljava/lang/String;

.field public static final PLAYER_TYPE_NORMAL:B = 0x1t

.field public static final PLAYER_TYPE_SHOP:B = 0x2t

.field public static final SEARCH_ALL:B = 0x1t

.field public static final SEARCH_COMPOSE:B = 0x2t


# instance fields
.field private bigType:I

.field public checkType:B

.field private desc:Ljava/lang/String;

.field private exp:I

.field private id:I

.field public isCanGet:Z

.field private isGetReward:Z

.field public isHasItem:Z

.field public isHasPaypet:Z

.field public isOtherAchieveFirstRequest:Z

.field private item:Lcom/hz/core/Item;

.field private money1:I

.field private money2:I

.field private money3:I

.field private name:Ljava/lang/String;

.field private nowCount:I

.field private nowPoint:I

.field private nowRank:I

.field private nowTitle:Ljava/lang/String;

.field public payPet:Lcom/hz/actor/MyPet;

.field payVectorList:Ljava/util/Vector;

.field public playType:B

.field private point:I

.field public power1:S

.field seechieveList:Ljava/util/Vector;

.field private simpleDesc:Ljava/lang/String;

.field public strGet:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleObj:[[Ljava/lang/Object;

.field private typeObj:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/core/Achieve;->ACHIEVE_TYPE:[I

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 48
    const-string v2, "Tr\u01b0\u1edfng th\u00e0nh c\u00e1 nh\u00e2n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 49
    const-string v2, "Th\u00e0nh t\u1ef1u nhi\u1ec7m v\u1ee5 "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 50
    const-string v2, "Vinh D\u1ef1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 51
    const-string v2, "Chung"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lcom/hz/core/Achieve;->ACHIEVE_TYPE_TEXT:[Ljava/lang/String;

    .line 666
    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x4

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    .line 640
    iput-byte v2, p0, Lcom/hz/core/Achieve;->playType:B

    .line 641
    iput-byte v2, p0, Lcom/hz/core/Achieve;->checkType:B

    .line 643
    iput-boolean v2, p0, Lcom/hz/core/Achieve;->isOtherAchieveFirstRequest:Z

    .line 668
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    .line 761
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    .line 26
    return-void
.end method

.method public static createSeeAchieveList(IIIII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "actorId"    # I
    .param p1, "playType"    # I
    .param p2, "checkType"    # I
    .param p3, "pageSize"    # I
    .param p4, "pageNum"    # I

    .prologue
    .line 720
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b2a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 721
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 722
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 723
    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 724
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putInt(I)V

    .line 725
    int-to-short v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 726
    return-object v0
.end method

.method public static doAchieveGainRewardMsg(II)Z
    .locals 3
    .param p0, "id"    # I
    .param p1, "bigType"    # I

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-static {p0, p1}, Lcom/hz/main/MsgHandler;->createAchieveGainReward(II)Lcom/hz/net/Message;

    move-result-object v0

    .line 316
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 325
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doAchieveGainRewardMsg(Lcom/hz/core/Achieve;I)Z
    .locals 2
    .param p0, "libAchieve"    # Lcom/hz/core/Achieve;
    .param p1, "bigType"    # I

    .prologue
    const/4 v0, 0x0

    .line 300
    if-nez p0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    iget-boolean v1, p0, Lcom/hz/core/Achieve;->isGetReward:Z

    if-eqz v1, :cond_2

    .line 304
    const-string v1, "Th\u00e0nh t\u1ef1u n\u00e0y \u0111\u00e3 nh\u1eadn th\u01b0\u1edfng r\u1ed3i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Achieve;->getId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/hz/core/Achieve;->doAchieveGainRewardMsg(II)Z

    move-result v0

    .line 308
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hz/core/Achieve;->isGetReward:Z

    goto :goto_0
.end method

.method public static doAchieveListMsg(Lcom/hz/core/Achieve;III)[Ljava/lang/Object;
    .locals 11
    .param p0, "achieve"    # Lcom/hz/core/Achieve;
    .param p1, "tabType"    # I
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 242
    if-nez p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v8

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Achieve;->getBigType()I

    move-result v9

    invoke-static {v9, p1, p3, p2}, Lcom/hz/main/MsgHandler;->createAchieveList(IIII)Lcom/hz/net/Message;

    move-result-object v4

    .line 247
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 252
    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 257
    .local v0, "allSize":I
    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    .line 263
    .local v6, "size":S
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 264
    .local v5, "objList":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_2

    .line 290
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    goto :goto_0

    .line 265
    :cond_2
    new-instance v7, Lcom/hz/core/Achieve;

    invoke-direct {v7}, Lcom/hz/core/Achieve;-><init>()V

    .line 266
    .local v7, "tempAchieve":Lcom/hz/core/Achieve;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput v8, v7, Lcom/hz/core/Achieve;->id:I

    .line 267
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    .line 268
    invoke-virtual {v4}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 269
    .local v3, "isSimpleDesc":Z
    if-eqz v3, :cond_3

    .line 270
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hz/core/Achieve;->simpleDesc:Ljava/lang/String;

    .line 272
    :cond_3
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v7, Lcom/hz/core/Achieve;->point:I

    .line 273
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hz/core/Achieve;->title:Ljava/lang/String;

    .line 274
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hz/core/Achieve;->desc:Ljava/lang/String;

    .line 275
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v7, Lcom/hz/core/Achieve;->exp:I

    .line 276
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v7, Lcom/hz/core/Achieve;->money1:I

    .line 277
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v7, Lcom/hz/core/Achieve;->money2:I

    .line 278
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v7, Lcom/hz/core/Achieve;->money3:I

    .line 279
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 280
    .local v1, "count":B
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    .line 281
    new-instance v8, Lcom/hz/core/Item;

    invoke-direct {v8}, Lcom/hz/core/Item;-><init>()V

    iput-object v8, v7, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    .line 282
    iget-object v8, v7, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 283
    iget-object v8, v7, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput-short v9, v8, Lcom/hz/core/Item;->bagIcon:S

    .line 284
    iget-object v8, v7, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v8, Lcom/hz/core/Item;->grade:B

    .line 285
    iget-object v8, v7, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    iput-short v1, v8, Lcom/hz/core/Item;->quantity:S

    .line 287
    :cond_4
    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static doAchieveManageMsg()Lcom/hz/core/Achieve;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hz/core/Achieve;->doAchieveManageMsg(Lcom/hz/core/Achieve;)Lcom/hz/core/Achieve;

    move-result-object v0

    return-object v0
.end method

.method public static doAchieveManageMsg(Lcom/hz/core/Achieve;)Lcom/hz/core/Achieve;
    .locals 6
    .param p0, "achieve"    # Lcom/hz/core/Achieve;

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-static {}, Lcom/hz/main/MsgHandler;->createAchieveGetInfo()Lcom/hz/net/Message;

    move-result-object v2

    .line 200
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p0, v3

    .line 229
    .end local p0    # "achieve":Lcom/hz/core/Achieve;
    :goto_0
    return-object p0

    .line 204
    .restart local p0    # "achieve":Lcom/hz/core/Achieve;
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 205
    if-nez v2, :cond_1

    move-object p0, v3

    .line 206
    goto :goto_0

    .line 210
    :cond_1
    if-nez p0, :cond_2

    .line 211
    new-instance p0, Lcom/hz/core/Achieve;

    .end local p0    # "achieve":Lcom/hz/core/Achieve;
    invoke-direct {p0}, Lcom/hz/core/Achieve;-><init>()V

    .line 213
    .restart local p0    # "achieve":Lcom/hz/core/Achieve;
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hz/core/Achieve;->nowTitle:Ljava/lang/String;

    .line 214
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/Achieve;->nowPoint:I

    .line 215
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, p0, Lcom/hz/core/Achieve;->nowRank:I

    .line 216
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    iput v4, p0, Lcom/hz/core/Achieve;->nowCount:I

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    array-length v4, v4

    if-lt v0, v4, :cond_3

    .line 228
    iput-object v3, p0, Lcom/hz/core/Achieve;->titleObj:[[Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v4, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-lt v1, v4, :cond_4

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_4
    iget-object v4, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    aget-object v4, v4, v0

    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    aput v5, v4, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static doAchieveTitleListMsg(Lcom/hz/ui/UIHandler;)[[Ljava/lang/Object;
    .locals 8
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-static {}, Lcom/hz/main/MsgHandler;->createAchieveTitleList()Lcom/hz/net/Message;

    move-result-object v1

    .line 371
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    :cond_0
    return-object v3

    .line 375
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 384
    .local v2, "size":B
    const/4 v4, 0x6

    filled-new-array {v2, v4}, [I

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    .line 385
    .local v3, "titleObj":[[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 386
    aget-object v4, v3, v0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 387
    aget-object v4, v3, v0

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 388
    aget-object v4, v3, v0

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-static {v7}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 389
    aget-object v4, v3, v0

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 390
    aget-object v4, v3, v0

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    invoke-static {v7}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 391
    aget-object v4, v3, v0

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static doAchieveUseTitleMsg([Ljava/lang/Object;)Z
    .locals 20
    .param p0, "titleData"    # [Ljava/lang/Object;

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const/16 v17, 0x0

    .line 473
    :goto_0
    return v17

    .line 407
    :cond_0
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 408
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_1

    .line 409
    const/16 v17, 0x0

    goto :goto_0

    .line 413
    :cond_1
    const/16 v17, 0x0

    aget-object v17, p0, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 414
    .local v3, "id":I
    const-string v4, ""

    .line 416
    .local v4, "info":Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    .line 417
    const-string v4, "Mi \u0111\u1ed3ng \u00fd h\u1ee7y danh hi\u1ec7u sao?"

    .line 437
    :goto_1
    const-string v17, "D\u00f9ng danh hi\u1ec7u"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v2

    .line 438
    .local v2, "askResult":I
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ne v2, v0, :cond_5

    .line 439
    const/16 v17, 0x0

    goto :goto_0

    .line 421
    .end local v2    # "askResult":I
    :cond_2
    const/16 v17, 0x1

    aget-object v6, p0, v17

    check-cast v6, Ljava/lang/String;

    .line 422
    .local v6, "name":Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v17, p0, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 423
    .local v8, "power1ID":I
    const/16 v17, 0x3

    aget-object v17, p0, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 424
    .local v9, "power1Value":I
    const/16 v17, 0x4

    aget-object v17, p0, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 425
    .local v10, "power2ID":I
    const/16 v17, 0x5

    aget-object v17, p0, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 427
    .local v11, "power2Value":I
    if-lez v8, :cond_3

    .line 428
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v8, v0}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v18

    .line 429
    const v19, 0xff00

    .line 428
    invoke-static/range {v18 .. v19}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 429
    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 428
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    :cond_3
    if-lez v10, :cond_4

    .line 432
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v18

    .line 433
    const v19, 0xff00

    .line 432
    invoke-static/range {v18 .. v19}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 433
    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 432
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "Mi \u0111\u1ed3ng \u00fd d\u00f9ng danh hi\u1ec7u %U nh\u00e9?"

    const v19, 0xffff00

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 442
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "power1ID":I
    .end local v9    # "power1Value":I
    .end local v10    # "power2ID":I
    .end local v11    # "power2Value":I
    .restart local v2    # "askResult":I
    :cond_5
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createAchieveUseTitle(I)Lcom/hz/net/Message;

    move-result-object v5

    .line 443
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 444
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 447
    :cond_6
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 448
    if-nez v5, :cond_7

    .line 449
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 453
    :cond_7
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    .line 454
    .local v12, "title":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v13

    .line 455
    .local v13, "titlePower1":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v15

    .line 456
    .local v15, "titlePowerValue1":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v14

    .line 457
    .local v14, "titlePower2":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v16

    .line 466
    .local v16, "titlePowerValue2":S
    invoke-virtual {v7, v12}, Lcom/hz/actor/Player;->setTitle(Ljava/lang/String;)V

    .line 467
    iput-short v13, v7, Lcom/hz/actor/Player;->titlePower1:S

    .line 468
    iput-short v15, v7, Lcom/hz/actor/Player;->titlePowerValue1:S

    .line 469
    iput-short v14, v7, Lcom/hz/actor/Player;->titlePower2:S

    .line 470
    move/from16 v0, v16

    iput-short v0, v7, Lcom/hz/actor/Player;->titlePowerValue2:S

    .line 472
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 473
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public static doEventAchieveList(ILcom/hz/core/Achieve;Lcom/hz/ui/UIHandler;)V
    .locals 5
    .param p0, "eventType"    # I
    .param p1, "libAchieve"    # Lcom/hz/core/Achieve;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 484
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/ui/UIObject;

    .line 489
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    packed-switch p0, :pswitch_data_0

    .line 518
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {p2, p0, v1}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto :goto_0

    .line 492
    :pswitch_1
    if-eqz p1, :cond_0

    .line 493
    const-string v1, "Th\u00f4ng tin th\u00e0nh t\u1ef1u"

    invoke-virtual {p1}, Lcom/hz/core/Achieve;->getAchieveDesc()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 498
    :pswitch_2
    iget v1, v0, Lcom/hz/ui/UIObject;->intValue1:I

    if-ne v1, v4, :cond_0

    if-eqz p1, :cond_0

    .line 499
    iget v1, v0, Lcom/hz/ui/UIObject;->intValue3:I

    invoke-static {p1, v1}, Lcom/hz/core/Achieve;->doAchieveGainRewardMsg(Lcom/hz/core/Achieve;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iput v4, v0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 501
    invoke-virtual {v0, v3}, Lcom/hz/ui/UIObject;->setMultpleNoLoad(I)V

    .line 502
    invoke-virtual {v0}, Lcom/hz/ui/UIObject;->doRequestPageUpdate()V

    goto :goto_0

    .line 508
    :pswitch_3
    iget v1, v0, Lcom/hz/ui/UIObject;->intValue1:I

    if-ne v1, v4, :cond_0

    .line 509
    const/4 v1, -0x1

    iget v2, v0, Lcom/hz/ui/UIObject;->intValue3:I

    invoke-static {v1, v2}, Lcom/hz/core/Achieve;->doAchieveGainRewardMsg(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iput v4, v0, Lcom/hz/ui/UIObject;->intValue2:I

    .line 511
    invoke-virtual {v0, v3}, Lcom/hz/ui/UIObject;->setMultpleNoLoad(I)V

    .line 512
    invoke-virtual {v0}, Lcom/hz/ui/UIObject;->doResetPageData()V

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x23f2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static doOpenTitleListUI(Lcom/hz/ui/UIHandler;[[Ljava/lang/Object;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "titleObj"    # [[Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 344
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 345
    :cond_0
    const-string v0, "Mi kh\u00f4ng c\u00f3 danh hi\u1ec7u kh\u00e1c \u0111\u1ec3 \u0111\u1ed5i!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 351
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 352
    .local v1, "idList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 354
    const-string v0, "Title"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 355
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 356
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p1

    if-lt v6, v0, :cond_2

    .line 360
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x15

    move-object v5, p0

    .line 360
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 357
    :cond_2
    aget-object v0, p1, v6

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 358
    aget-object v0, p1, v6

    aget-object v0, v0, v5

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static doPayAchieveList(Lcom/hz/core/Achieve;II)[Ljava/lang/Object;
    .locals 8
    .param p0, "achieve"    # Lcom/hz/core/Achieve;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 773
    if-nez p0, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-object v5

    .line 783
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x2b4b

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 784
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 785
    int-to-short v6, p1

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 787
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 791
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 792
    if-eqz v2, :cond_0

    .line 796
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 801
    .local v3, "rs":I
    if-gez v3, :cond_2

    .line 802
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 811
    .local v4, "size":S
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    .line 812
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 820
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0

    .line 813
    :cond_3
    invoke-static {v2}, Lcom/hz/core/Achieve;->fromBytesToPayAchieveList(Lcom/hz/net/Message;)Lcom/hz/core/Achieve;

    move-result-object v0

    .line 814
    .local v0, "achievedata":Lcom/hz/core/Achieve;
    if-nez v0, :cond_4

    .line 812
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 817
    :cond_4
    iget-object v5, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doSeeAchieveListMsg(Lcom/hz/core/Achieve;II)[Ljava/lang/Object;
    .locals 9
    .param p0, "achieve"    # Lcom/hz/core/Achieve;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 672
    if-nez p0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-object v5

    .line 684
    :cond_1
    iget v6, p0, Lcom/hz/core/Achieve;->id:I

    iget-byte v7, p0, Lcom/hz/core/Achieve;->playType:B

    iget-byte v8, p0, Lcom/hz/core/Achieve;->checkType:B

    invoke-static {v6, v7, v8, p1, p2}, Lcom/hz/core/Achieve;->createSeeAchieveList(IIIII)Lcom/hz/net/Message;

    move-result-object v2

    .line 686
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 689
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 690
    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 697
    .local v3, "rs":I
    if-gez v3, :cond_2

    .line 698
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 704
    .local v4, "size":S
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    .line 706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 714
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0

    .line 707
    :cond_3
    invoke-static {v2}, Lcom/hz/core/Achieve;->fromBytesToSeeAchieveList(Lcom/hz/net/Message;)Lcom/hz/core/Achieve;

    move-result-object v0

    .line 708
    .local v0, "achievedata":Lcom/hz/core/Achieve;
    if-nez v0, :cond_4

    .line 706
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 711
    :cond_4
    iget-object v5, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doSeePayAchieveItemSelect(Lcom/hz/ui/UIHandler;Lcom/hz/core/Achieve;)V
    .locals 3
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "achieve"    # Lcom/hz/core/Achieve;

    .prologue
    .line 941
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget v1, p1, Lcom/hz/core/Achieve;->id:I

    iget v2, p1, Lcom/hz/core/Achieve;->bigType:I

    invoke-static {v1, v2}, Lcom/hz/core/Achieve;->doAchieveGainRewardMsg(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 946
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Lcom/hz/ui/UIObject;->getPageData()Z

    goto :goto_0
.end method

.method public static fromBytesToPayAchieveList(Lcom/hz/net/Message;)Lcom/hz/core/Achieve;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 827
    if-nez p0, :cond_0

    .line 828
    const/4 v0, 0x0

    .line 879
    :goto_0
    return-object v0

    .line 830
    :cond_0
    new-instance v0, Lcom/hz/core/Achieve;

    invoke-direct {v0}, Lcom/hz/core/Achieve;-><init>()V

    .line 831
    .local v0, "achieve":Lcom/hz/core/Achieve;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lcom/hz/core/Achieve;->isHasItem:Z

    .line 836
    iget-boolean v2, v0, Lcom/hz/core/Achieve;->isHasItem:Z

    if-eqz v2, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/core/Achieve;->power1:S

    .line 843
    :try_start_0
    new-instance v2, Lcom/hz/core/Item;

    invoke-direct {v2}, Lcom/hz/core/Item;-><init>()V

    iput-object v2, v0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    .line 844
    iget-object v2, v0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    invoke-static {v2, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 845
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 846
    .local v1, "num":S
    iget-object v2, v0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    iput-short v1, v2, Lcom/hz/core/Item;->quantity:S

    .line 847
    iget-object v2, v0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    iget-object v3, v0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    iget-short v3, v3, Lcom/hz/core/Item;->durMax:S

    iput-short v3, v2, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v1    # "num":S
    :goto_1
    iget-short v2, v0, Lcom/hz/core/Achieve;->power1:S

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lcom/hz/core/Achieve;->isHasPaypet:Z

    .line 859
    iget-boolean v2, v0, Lcom/hz/core/Achieve;->isHasPaypet:Z

    if-eqz v2, :cond_1

    .line 860
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {p0, v2}, Lcom/hz/actor/MyPet;->fromBytesInfo(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Achieve;->payPet:Lcom/hz/actor/MyPet;

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Achieve;->strGet:Ljava/lang/String;

    .line 867
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->id:I

    .line 868
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->bigType:I

    .line 869
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    .line 870
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->point:I

    .line 871
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Achieve;->title:Ljava/lang/String;

    .line 872
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hz/core/Achieve;->desc:Ljava/lang/String;

    .line 873
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->exp:I

    .line 874
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->money1:I

    .line 875
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->money2:I

    .line 876
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/Achieve;->money3:I

    .line 877
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lcom/hz/core/Achieve;->isCanGet:Z

    goto/16 :goto_0

    .line 848
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static fromBytesToSeeAchieveList(Lcom/hz/net/Message;)Lcom/hz/core/Achieve;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 732
    if-nez p0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    .line 735
    :cond_0
    new-instance v0, Lcom/hz/core/Achieve;

    invoke-direct {v0}, Lcom/hz/core/Achieve;-><init>()V

    .line 737
    .local v0, "achieve":Lcom/hz/core/Achieve;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    .line 738
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Achieve;->point:I

    .line 739
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Achieve;->simpleDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAchieveType(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 41
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hz/core/Achieve;->ACHIEVE_TYPE:[I

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 42
    :cond_0
    const/4 v0, -0x1

    .line 44
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/hz/core/Achieve;->ACHIEVE_TYPE:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getAchieveTypeText(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 54
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hz/core/Achieve;->ACHIEVE_TYPE_TEXT:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 55
    :cond_0
    const-string v0, "null"

    .line 57
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/core/Achieve;->ACHIEVE_TYPE_TEXT:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getTabTypeByTabEvent(I)I
    .locals 1
    .param p0, "tabEvent"    # I

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    .line 79
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x23f7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doAchieveChangeTitle(Lcom/hz/ui/UIHandler;)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/hz/core/Achieve;->titleObj:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 335
    invoke-static {p1}, Lcom/hz/core/Achieve;->doAchieveTitleListMsg(Lcom/hz/ui/UIHandler;)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Achieve;->titleObj:[[Ljava/lang/Object;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/hz/core/Achieve;->titleObj:[[Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/hz/core/Achieve;->doOpenTitleListUI(Lcom/hz/ui/UIHandler;[[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public doGetPayAchieve(I)Lcom/hz/core/Achieve;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 886
    iget-object v1, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-object v0

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    iget-object v0, p0, Lcom/hz/core/Achieve;->payVectorList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Achieve;

    goto :goto_0
.end method

.method public doSeePayAchieveItem(Lcom/hz/ui/UIHandler;Z)V
    .locals 8
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p2, "isonlyshow"    # Z

    .prologue
    .line 900
    if-nez p1, :cond_0

    .line 935
    :goto_0
    return-void

    .line 903
    :cond_0
    const-string v0, ""

    .line 905
    .local v0, "strInfo":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/hz/core/Achieve;->isHasPaypet:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hz/core/Achieve;->payPet:Lcom/hz/actor/MyPet;

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/hz/core/Achieve;->payPet:Lcom/hz/actor/MyPet;

    invoke-virtual {v1}, Lcom/hz/actor/MyPet;->getDescribe()Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_1
    :goto_1
    if-eqz p2, :cond_3

    .line 912
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 907
    :cond_2
    iget-boolean v1, p0, Lcom/hz/core/Achieve;->isHasItem:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 915
    :cond_3
    invoke-virtual {p0}, Lcom/hz/core/Achieve;->getAchieveDesc()Ljava/lang/String;

    move-result-object v0

    .line 918
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 919
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 921
    .local v6, "eventList":Ljava/util/Vector;
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 923
    iget-boolean v1, p0, Lcom/hz/core/Achieve;->isCanGet:Z

    if-eqz v1, :cond_4

    .line 924
    const/16 v1, 0x43

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 933
    :goto_2
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x33

    move-object v2, p0

    move-object v5, p1

    .line 933
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 926
    :cond_4
    const-string v1, "N\u1ea1p th\u1ebb "

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getAchieveDesc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T\u00ean th\u00e0nh t\u1ef1u: %U"

    iget-object v3, p0, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mi\u00eau t\u1ea3: %U"

    iget-object v3, p0, Lcom/hz/core/Achieve;->desc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lcom/hz/core/Achieve;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nh\u1eadn danh hi\u1ec7u th\u00e0nh t\u1ef1u: %U"

    iget-object v3, p0, Lcom/hz/core/Achieve;->title:Ljava/lang/String;

    const v4, 0xff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    iget v1, p0, Lcom/hz/core/Achieve;->exp:I

    if-lez v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EXP: %U"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hz/core/Achieve;->exp:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_1
    iget v1, p0, Lcom/hz/core/Achieve;->money1:I

    if-lez v1, :cond_2

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KNB:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/Achieve;->money1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_2
    iget v1, p0, Lcom/hz/core/Achieve;->money2:I

    if-lez v1, :cond_3

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Achieve;->money2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_3
    iget v1, p0, Lcom/hz/core/Achieve;->money3:I

    if-lez v1, :cond_4

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Achieve;->money3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    if-eqz v1, :cond_5

    .line 184
    iget-object v1, p0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    invoke-virtual {v1}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBigType()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/hz/core/Achieve;->bigType:I

    return v0
.end method

.method public getCheckType()B
    .locals 1

    .prologue
    .line 655
    iget-byte v0, p0, Lcom/hz/core/Achieve;->checkType:B

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/hz/core/Achieve;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/hz/core/Achieve;->exp:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/hz/core/Achieve;->id:I

    return v0
.end method

.method public getItem()Lcom/hz/core/Item;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    return-object v0
.end method

.method public getMoney1()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/hz/core/Achieve;->money1:I

    return v0
.end method

.method public getMoney2()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/hz/core/Achieve;->money2:I

    return v0
.end method

.method public getMoney3()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/hz/core/Achieve;->money3:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/hz/core/Achieve;->isGetReward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0110\u00e3 \u0111\u1ea1t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNewAchieveNum(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hz/core/Achieve;->getTypeObjData(II)I

    move-result v0

    return v0
.end method

.method public getNowCount()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/hz/core/Achieve;->nowCount:I

    return v0
.end method

.method public getNowPoint()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/hz/core/Achieve;->nowPoint:I

    return v0
.end method

.method public getNowRankStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/hz/core/Achieve;->nowRank:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 612
    const-string v0, "Ngo\u00e0i 200"

    .line 614
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hz/core/Achieve;->nowRank:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/hz/core/Achieve;->nowTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "<Ch\u1ecdn danh hi\u1ec7u>"

    .line 599
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Achieve;->nowTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayType()B
    .locals 1

    .prologue
    .line 646
    iget-byte v0, p0, Lcom/hz/core/Achieve;->playType:B

    return v0
.end method

.method public getPoint()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/hz/core/Achieve;->point:I

    return v0
.end method

.method public getSeeAchieveInfoData(I)Lcom/hz/core/Achieve;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 751
    iget-object v1, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-object v0

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/hz/core/Achieve;->seechieveList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Achieve;

    goto :goto_0
.end method

.method public getSimpleDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/hz/core/Achieve;->simpleDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/hz/core/Achieve;->desc:Ljava/lang/String;

    .line 542
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/Achieve;->simpleDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/hz/core/Achieve;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\u0110\u1ea1t: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/hz/core/Achieve;->getTypeObjData(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/hz/core/Achieve;->getTypeObjData(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTypeObjData(II)I
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v0, -0x1

    .line 130
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/hz/core/Achieve;->typeObj:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    goto :goto_0
.end method

.method public isGetReward()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/hz/core/Achieve;->isGetReward:Z

    return v0
.end method

.method public setBigType(I)V
    .locals 0
    .param p1, "bigType"    # I

    .prologue
    .line 629
    iput p1, p0, Lcom/hz/core/Achieve;->bigType:I

    .line 630
    return-void
.end method

.method public setCheckType(B)V
    .locals 0
    .param p1, "checkType"    # B

    .prologue
    .line 659
    iput-byte p1, p0, Lcom/hz/core/Achieve;->checkType:B

    .line 660
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/hz/core/Achieve;->desc:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setExp(I)V
    .locals 0
    .param p1, "exp"    # I

    .prologue
    .line 569
    iput p1, p0, Lcom/hz/core/Achieve;->exp:I

    .line 570
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 527
    iput p1, p0, Lcom/hz/core/Achieve;->id:I

    .line 528
    return-void
.end method

.method public setItem(Lcom/hz/core/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/hz/core/Achieve;->item:Lcom/hz/core/Item;

    .line 594
    return-void
.end method

.method public setMoney1(I)V
    .locals 0
    .param p1, "money1"    # I

    .prologue
    .line 575
    iput p1, p0, Lcom/hz/core/Achieve;->money1:I

    .line 576
    return-void
.end method

.method public setMoney2(I)V
    .locals 0
    .param p1, "money2"    # I

    .prologue
    .line 581
    iput p1, p0, Lcom/hz/core/Achieve;->money2:I

    .line 582
    return-void
.end method

.method public setMoney3(I)V
    .locals 0
    .param p1, "money3"    # I

    .prologue
    .line 587
    iput p1, p0, Lcom/hz/core/Achieve;->money3:I

    .line 588
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/hz/core/Achieve;->name:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setNowCount(I)V
    .locals 0
    .param p1, "nowCount"    # I

    .prologue
    .line 623
    iput p1, p0, Lcom/hz/core/Achieve;->nowCount:I

    .line 624
    return-void
.end method

.method public setNowPoint(I)V
    .locals 0
    .param p1, "nowPoint"    # I

    .prologue
    .line 608
    iput p1, p0, Lcom/hz/core/Achieve;->nowPoint:I

    .line 609
    return-void
.end method

.method public setNowRank(I)V
    .locals 0
    .param p1, "nowRank"    # I

    .prologue
    .line 617
    iput p1, p0, Lcom/hz/core/Achieve;->nowRank:I

    .line 618
    return-void
.end method

.method public setNowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "nowTitle"    # Ljava/lang/String;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/hz/core/Achieve;->nowTitle:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setPlayType(B)V
    .locals 0
    .param p1, "playType"    # B

    .prologue
    .line 650
    iput-byte p1, p0, Lcom/hz/core/Achieve;->playType:B

    .line 651
    return-void
.end method

.method public setPoint(I)V
    .locals 0
    .param p1, "point"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/hz/core/Achieve;->point:I

    .line 552
    return-void
.end method

.method public setSimpleDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "simpleDesc"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/hz/core/Achieve;->simpleDesc:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/hz/core/Achieve;->title:Ljava/lang/String;

    .line 558
    return-void
.end method
