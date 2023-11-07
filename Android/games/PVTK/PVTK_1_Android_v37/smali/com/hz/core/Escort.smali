.class public Lcom/hz/core/Escort;
.super Ljava/lang/Object;
.source "Escort.java"


# static fields
.field public static final ESCORT_STATE_FAVOURER_BATTLE:B = 0x1t

.field public static final ESCORT_STATE_FAVOURER_NORMAL:B = 0x0t

.field public static final ESCORT_STATE_FAVOURER_OFFLINE:B = 0x2t

.field public static final ESCORT_STATE_FIGHT_HUN:B = 0x3t

.field public static final ESCORT_STATE_FIGHT_MON:B = 0x2t

.field public static final ESCORT_STATE_FINISH_CANCEL:B = 0x7t

.field public static final ESCORT_STATE_FINISH_FAVOURER:B = 0x5t

.field public static final ESCORT_STATE_FINISH_HUN:B = 0x6t

.field public static final ESCORT_STATE_FINISH_OVER:B = 0x8t

.field public static final ESCORT_STATE_FINISH_SYSTEM:B = 0x4t

.field public static final ESCORT_STATE_READY:B = 0x0t

.field public static final ESCORT_STATE_START:B = 0x1t

.field public static final ESCORT_TURN_FAVOURER:B = 0x1t

.field public static final ESCORT_TURN_HUN:B = 0x2t

.field public static final IMAGE_BAD_BUF:I = 0x5

.field public static final IMAGE_BATTLE:I = 0x1

.field public static final IMAGE_DEFAULT:I = 0x0

.field public static final IMAGE_END:I = 0x8

.field public static final IMAGE_EVENT:I = 0x6

.field public static final IMAGE_GOOD_BUF:I = 0x3

.field public static final IMAGE_ITEM:I = 0x2

.field public static final IMAGE_MONSTER:I = 0x4

.field public static final IMAGE_NO_PASS:I = 0x9

.field public static final IMAGE_SET_ID:S = 0x217s

.field public static final IMAGE_START:I = 0x7

.field public static final NEWESCORT:B = 0x1t

.field public static final OLDESCORT:B = 0x0t

.field public static final POST_UPDATE_TIME:I = 0x1388

.field public static final STATUS_MOVE:I = 0x1

.field public static final STATUS_ROB_MOVE:I = 0x2

.field public static final STATUS_UPDATE_POS:I = 0x8

.field public static final STATUS_VIEW:I = 0x4

.field public static escortType:B


# instance fields
.field public battleMsg:Ljava/lang/String;

.field public escortModel:Lcom/hz/actor/ListPlayer;

.field private eventButton:[Ljava/lang/String;

.field private eventContent:Ljava/lang/String;

.field private eventID:[I

.field private eventList:[[B

.field public favourerStatus:B

.field public id:I

.field public imgSet:Lcom/hz/image/ImageSet;

.field public money1:I

.field public money2:I

.field public money3:I

.field public moveCount:I

.field public moveDirX:I

.field public moveDirY:I

.field private moveList:[[Z

.field public moveMaxCount:I

.field public moveStartTime:J

.field public moveTime:I

.field public nextMoveTime:J

.field public nextOverTime:J

.field public nextUpdateTime:J

.field public robEscortModel:Lcom/hz/actor/ListPlayer;

.field public round:I

.field public simpleDesc:Ljava/lang/String;

.field public status:I

.field public teamDesc:Ljava/lang/String;

.field public timeX:I

.field public timeY:I

.field public type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    sput-byte v0, Lcom/hz/core/Escort;->escortType:B

    .line 116
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/hz/core/Escort;->type:B

    .line 189
    return-void
.end method

.method public static clearRefreshTime(Lcom/hz/core/Escort;)V
    .locals 2
    .param p0, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1034
    if-nez p0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1037
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hz/core/Escort;->nextUpdateTime:J

    goto :goto_0
.end method

.method public static doEscortEventMsg(Lcom/hz/core/Escort;I)Z
    .locals 6
    .param p0, "escort"    # Lcom/hz/core/Escort;
    .param p1, "eventID"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1007
    invoke-static {p1}, Lcom/hz/main/MsgHandler;->createEscortEventMsg(I)Lcom/hz/net/Message;

    move-result-object v2

    .line 1008
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v3

    .line 1012
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1013
    .local v1, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v1, :cond_0

    .line 1018
    invoke-virtual {v1}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 1019
    .local v0, "battleID":S
    if-lez v0, :cond_2

    .line 1020
    invoke-static {v0}, Lcom/hz/main/GameWorld;->toBattle(I)V

    move v3, v4

    .line 1021
    goto :goto_0

    .line 1024
    :cond_2
    invoke-static {p0}, Lcom/hz/core/Escort;->clearRefreshTime(Lcom/hz/core/Escort;)V

    move v3, v4

    .line 1025
    goto :goto_0
.end method

.method public static doEscortListPlayer(Lcom/hz/core/Escort;)Z
    .locals 10
    .param p0, "escort"    # Lcom/hz/core/Escort;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1369
    if-nez p0, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v6

    .line 1374
    :cond_1
    iget-byte v8, p0, Lcom/hz/core/Escort;->type:B

    if-ne v8, v7, :cond_2

    .line 1377
    const-string v6, "T\u00ednh n\u0103ng quan s\u00e1t \u00e1p ti\u00eau t\u1ea1m kh\u00f4ng m\u1edf!"

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move v6, v7

    .line 1378
    goto :goto_0

    .line 1405
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->createEscortListPlayer()Lcom/hz/net/Message;

    move-result-object v3

    .line 1406
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1410
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 1411
    if-eqz v3, :cond_0

    .line 1415
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 1419
    .local v5, "size":B
    new-array v4, v5, [Lcom/hz/actor/Player;

    .line 1421
    .local v4, "playerList":[Lcom/hz/actor/Player;
    const/4 v2, -0x1

    .local v2, "leaderID":I
    const/4 v0, 0x0

    .line 1424
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v4

    if-lt v1, v8, :cond_5

    .line 1432
    if-le v0, v7, :cond_3

    .line 1433
    aget-object v8, v4, v6

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getId()I

    move-result v2

    .line 1434
    const/4 v1, 0x0

    :goto_2
    array-length v8, v4

    if-lt v1, v8, :cond_7

    .line 1439
    :cond_3
    if-eqz v4, :cond_4

    array-length v8, v4

    if-gtz v8, :cond_8

    .line 1440
    :cond_4
    const-string v7, "\u0110\u1ed9i ng\u0169 nhi\u1ec7m v\u1ee5 kh\u00f4ng c\u00f3 d\u1eef li\u1ec7u!"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1425
    :cond_5
    invoke-static {v3}, Lcom/hz/actor/ListPlayer;->fromBytesToEscortTeam(Lcom/hz/net/Message;)Lcom/hz/actor/Player;

    move-result-object v8

    aput-object v8, v4, v1

    .line 1426
    aget-object v8, v4, v1

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getType()B

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 1427
    add-int/lit8 v0, v0, 0x1

    .line 1424
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1435
    :cond_7
    aget-object v8, v4, v1

    invoke-virtual {v8, v2}, Lcom/hz/actor/Player;->setLeaderID(I)V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1445
    :cond_8
    invoke-static {v4, v6}, Lcom/hz/ui/UIHandler;->createEscortTeamUI([Lcom/hz/actor/Model;B)V

    move v6, v7

    .line 1447
    goto :goto_0
.end method

.method public static doEscortMove(Lcom/hz/core/Escort;I)Z
    .locals 13
    .param p0, "escort"    # Lcom/hz/core/Escort;
    .param p1, "childIndex"    # I

    .prologue
    .line 937
    if-nez p0, :cond_0

    .line 938
    const/4 v0, 0x0

    .line 996
    :goto_0
    return v0

    .line 941
    :cond_0
    invoke-static {p0, p1}, Lcom/hz/core/Escort;->isCanMove(Lcom/hz/core/Escort;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    const/4 v0, 0x0

    goto :goto_0

    .line 945
    :cond_1
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getRowByIndex(I)I

    move-result v10

    .line 946
    .local v10, "row":I
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getColByIndex(I)I

    move-result v6

    .line 947
    .local v6, "col":I
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/Escort;->setStatus(ZI)V

    .line 949
    invoke-static {v10, v6}, Lcom/hz/main/MsgHandler;->createEscortMoveMsg(II)Lcom/hz/net/Message;

    move-result-object v11

    .line 950
    .local v11, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v11}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    const/4 v0, 0x0

    goto :goto_0

    .line 954
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 955
    .local v9, "receiveMsg":Lcom/hz/net/Message;
    if-nez v9, :cond_3

    .line 956
    const/4 v0, 0x0

    goto :goto_0

    .line 959
    :cond_3
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 960
    .local v7, "eventSize":B
    if-gtz v7, :cond_5

    .line 962
    invoke-static {p0}, Lcom/hz/core/Escort;->clearRefreshTime(Lcom/hz/core/Escort;)V

    .line 996
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 966
    :cond_5
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Escort;->eventContent:Ljava/lang/String;

    .line 967
    new-array v0, v7, [I

    iput-object v0, p0, Lcom/hz/core/Escort;->eventID:[I

    .line 968
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hz/core/Escort;->eventButton:[Ljava/lang/String;

    .line 972
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-lt v8, v7, :cond_6

    .line 981
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/Escort;->refreshTime(II)V

    .line 985
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 986
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v8, 0x0

    :goto_3
    iget-object v0, p0, Lcom/hz/core/Escort;->eventID:[I

    array-length v0, v0

    if-lt v8, v0, :cond_7

    .line 989
    iget-object v0, p0, Lcom/hz/core/Escort;->eventContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/hz/core/Escort;->eventButton:[Ljava/lang/String;

    .line 990
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 989
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 991
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v12, :cond_4

    .line 992
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {v12, v0, v1}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_1

    .line 973
    .end local v2    # "eventList":Ljava/util/Vector;
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_6
    iget-object v0, p0, Lcom/hz/core/Escort;->eventID:[I

    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    aput v1, v0, v8

    .line 974
    iget-object v0, p0, Lcom/hz/core/Escort;->eventButton:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 972
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 987
    .restart local v2    # "eventList":Ljava/util/Vector;
    :cond_7
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/hz/core/Escort;->eventID:[I

    aget v1, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 986
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static doEscortPostQuitMsg()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1236
    const-string v3, "Tho\u00e1t nhi\u1ec7m v\u1ee5"

    const-string v4, "Mi \u0111\u1ed3ng \u00fd tho\u00e1t nhi\u1ec7m v\u1ee5, ti\u1ec1n c\u1ecdc kh\u00f4ng tr\u1ea3 l\u1ea1i "

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1237
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return v2

    .line 1241
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createEscortPostQuit()Lcom/hz/net/Message;

    move-result-object v1

    .line 1242
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1247
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1248
    if-eqz v1, :cond_0

    .line 1253
    invoke-static {}, Lcom/hz/main/GameCanvas;->clearEscort()V

    .line 1255
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 1257
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 1259
    const-string v2, "Tho\u00e1t nhi\u1ec7m v\u1ee5"

    const-string v3, "Tho\u00e1t nhi\u1ec7m th\u00e0nh c\u00f4ng, ti\u1ec1n c\u1ecdc kh\u00f4ng tr\u1ea3 l\u1ea1i."

    invoke-static {v2, v3}, Lcom/hz/main/GameCanvas;->setWorldShowMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doEscortRobListMsg(II)[Ljava/lang/Object;
    .locals 16
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 1270
    invoke-static/range {p0 .. p1}, Lcom/hz/main/MsgHandler;->createEscortRobList(II)Lcom/hz/net/Message;

    move-result-object v9

    .line 1271
    .local v9, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1272
    const/4 v11, 0x0

    .line 1316
    :goto_0
    return-object v11

    .line 1275
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 1276
    .local v8, "receiveMsg":Lcom/hz/net/Message;
    if-nez v8, :cond_1

    .line 1277
    const/4 v11, 0x0

    goto :goto_0

    .line 1280
    :cond_1
    invoke-virtual {v8}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 1281
    .local v0, "allSize":S
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 1287
    .local v10, "size":B
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1288
    .local v6, "objList":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v10, :cond_2

    .line 1316
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    goto :goto_0

    .line 1290
    :cond_2
    new-instance v1, Lcom/hz/core/Escort;

    invoke-direct {v1}, Lcom/hz/core/Escort;-><init>()V

    .line 1292
    .local v1, "escort":Lcom/hz/core/Escort;
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/Escort;->setId(I)V

    .line 1293
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/Escort;->setMoney1(I)V

    .line 1294
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/Escort;->setMoney2(I)V

    .line 1295
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/hz/core/Escort;->setMoney3(I)V

    .line 1297
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 1298
    .local v7, "playerSize":B
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1299
    .local v5, "modelList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v7, :cond_3

    .line 1311
    invoke-static {v5}, Lcom/hz/core/Escort;->getModelListDesc(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/hz/core/Escort;->setTeamDesc(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1301
    :cond_3
    new-instance v4, Lcom/hz/actor/Model;

    const/4 v11, 0x3

    invoke-direct {v4, v11}, Lcom/hz/actor/Model;-><init>(B)V

    .line 1302
    .local v4, "model":Lcom/hz/actor/Model;
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setName(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setLevel(B)V

    .line 1304
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setJob(B)V

    .line 1305
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/hz/actor/Model;->setType(B)V

    .line 1306
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1307
    if-nez v3, :cond_4

    .line 1308
    const-string v11, "[%U ng\u01b0\u1eddi]%U"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/hz/core/Escort;->setSimpleDesc(Ljava/lang/String;)V

    .line 1299
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static doEscortRobMsg(Lcom/hz/core/Escort;)Z
    .locals 6
    .param p0, "escort"    # Lcom/hz/core/Escort;

    .prologue
    const/4 v2, 0x0

    .line 1325
    if-nez p0, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return v2

    .line 1329
    :cond_1
    const-string v3, "Nhi\u1ec7m v\u1ee5 t\u1ea5n c\u00f4ng"

    .line 1334
    const-string v4, "Mi \u0111\u1ed3ng \u00fd mu\u1ed1n t\u1ea5n c\u00f4ng ng\u01b0\u1eddi ch\u01a1i n\u00e0y sao? Y \u0111ang th\u1ef1c hi\u1ec7n nhi\u1ec7m v\u1ee5 ph\u00f3 b\u1ea3n.N\u1ebfu th\u00e0nh c\u00f4ng \u0111\u00e1nh b\u1ea1i h\u1ecd, mi s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c m\u1ed9t ph\u1ea7n trong s\u1ed1 th\u01b0\u1edfng nhi\u1ec7m v\u1ee5 c\u1ee7a h\u1ecd.\nN\u1ebfu \u0111\u1ed3ng \u00fd c\u1ea7n giao ti\u1ec1n c\u1ecdc: %UN\u1ebfu th\u1ea5t b\u1ea1i s\u1ebd tr\u1eeb m\u1ecdi ti\u1ec1n c\u1ecdc. N\u1ebfu t\u1ea5n c\u00f4ng th\u00e0nh c\u00f4ng ti\u1ec1n c\u1ecdc s\u1ebd g\u1eedi tr\u1ea3 v\u1ec1 th\u01b0 c\u1ee7a mi."

    invoke-virtual {p0}, Lcom/hz/core/Escort;->getMoneyDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1335
    const/4 v5, 0x6

    .line 1329
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1336
    .local v0, "askResult":I
    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createEscortRob(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 1341
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1345
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doEventEscort(ILcom/hz/core/Escort;I)V
    .locals 0
    .param p0, "eventType"    # I
    .param p1, "escort"    # Lcom/hz/core/Escort;
    .param p2, "childIndex"    # I

    .prologue
    .line 1452
    sparse-switch p0, :sswitch_data_0

    .line 1475
    :goto_0
    return-void

    .line 1459
    :sswitch_0
    invoke-static {p0}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    goto :goto_0

    .line 1462
    :sswitch_1
    invoke-static {}, Lcom/hz/core/Escort;->doEscortPostQuitMsg()Z

    goto :goto_0

    .line 1465
    :sswitch_2
    invoke-static {p1}, Lcom/hz/core/Escort;->doEscortListPlayer(Lcom/hz/core/Escort;)Z

    goto :goto_0

    .line 1468
    :sswitch_3
    invoke-static {p1, p2}, Lcom/hz/core/Escort;->doEscortMove(Lcom/hz/core/Escort;I)Z

    goto :goto_0

    .line 1452
    :sswitch_data_0
    .sparse-switch
        0x232a -> :sswitch_3
        0x232b -> :sswitch_1
        0x232d -> :sswitch_2
        0x2bc3 -> :sswitch_0
        0x2bc4 -> :sswitch_0
        0x2bc5 -> :sswitch_0
        0x2bc6 -> :sswitch_0
        0x2bc8 -> :sswitch_0
        0x2bc9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static doEventEscortRobList(ILcom/hz/core/Escort;)V
    .locals 4
    .param p0, "eventType"    # I
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1478
    packed-switch p0, :pswitch_data_0

    .line 1490
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1480
    :pswitch_1
    invoke-static {p1}, Lcom/hz/core/Escort;->doEscortRobMsg(Lcom/hz/core/Escort;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    goto :goto_0

    .line 1485
    :pswitch_2
    if-eqz p1, :cond_0

    .line 1486
    const-string v0, "\u0110\u1ed9i ng\u0169 nhi\u1ec7m v\u1ee5"

    invoke-virtual {p1}, Lcom/hz/core/Escort;->getTeamDesc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1478
    :pswitch_data_0
    .packed-switch 0x22c6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromBytes(Lcom/hz/net/Message;Lcom/hz/sprite/GameSprite;)Lcom/hz/core/Escort;
    .locals 38
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "leaderSprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 212
    const/16 v32, 0x4

    .line 213
    .local v32, "uiRow":I
    const/16 v31, 0x4

    .line 217
    .local v31, "uiCol":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 218
    .local v5, "allRow":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 219
    .local v4, "allCol":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v33

    .line 220
    .local v33, "waitTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v20

    .line 222
    .local v20, "overTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v34

    move/from16 v0, v34

    invoke-static {v5, v4, v0}, Lcom/hz/core/Escort;->getMoveList(III)[[Z

    move-result-object v17

    .line 223
    .local v17, "moves":[[Z
    const/16 v34, 0x4

    const/16 v35, 0x4

    filled-new-array/range {v34 .. v35}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[Z

    .line 224
    .local v16, "moveList":[[Z
    const/16 v28, 0x0

    .local v28, "row":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v28

    move/from16 v1, v34

    if-lt v0, v1, :cond_1

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v27

    .line 236
    .local v27, "round":S
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 237
    .local v10, "escortRow":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 239
    .local v9, "escortCol":B
    filled-new-array {v5, v4}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    .line 240
    .local v13, "events":[[B
    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    if-lt v0, v5, :cond_4

    .line 245
    const/16 v34, 0x4

    const/16 v35, 0x4

    filled-new-array/range {v34 .. v35}, [I

    move-result-object v34

    sget-object v35, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .line 246
    .local v12, "eventList":[[B
    const/16 v28, 0x0

    :goto_2
    array-length v0, v12

    move/from16 v34, v0

    move/from16 v0, v28

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    .line 257
    const/16 v29, 0x0

    .local v29, "turn":B
    const/16 v26, 0x0

    .local v26, "robRow":B
    const/16 v22, 0x0

    .line 258
    .local v22, "robCol":B
    const/16 v23, 0x0

    .local v23, "robIcon1":I
    const/16 v24, 0x0

    .local v24, "robIcon2":I
    const/16 v25, 0x0

    .line 259
    .local v25, "robIcon3":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v30

    .line 260
    .local v30, "type":B
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v23

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v24

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v25

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v29

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v26

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v22

    .line 296
    :goto_3
    new-instance v8, Lcom/hz/core/Escort;

    invoke-direct {v8}, Lcom/hz/core/Escort;-><init>()V

    .line 299
    .local v8, "escort":Lcom/hz/core/Escort;
    move/from16 v0, v30

    iput-byte v0, v8, Lcom/hz/core/Escort;->type:B

    .line 302
    move/from16 v0, v27

    iput v0, v8, Lcom/hz/core/Escort;->round:I

    .line 305
    move/from16 v19, v10

    .local v19, "nowRow":B
    move/from16 v18, v9

    .line 306
    .local v18, "nowCol":B
    const/16 v34, 0x2

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    .line 307
    move/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/hz/core/Escort;->setRobMove(I)V

    .line 308
    new-instance v34, Lcom/hz/actor/ListPlayer;

    invoke-direct/range {v34 .. v34}, Lcom/hz/actor/ListPlayer;-><init>()V

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    .line 309
    iget-object v0, v8, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/hz/actor/ListPlayer;->setDir(B)V

    .line 310
    iget-object v0, v8, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    invoke-static/range {p1 .. p1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/hz/actor/ListPlayer;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 311
    iget-object v0, v8, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 312
    iget-object v0, v8, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/ListPlayer;->setGridXY(II)V

    .line 314
    move/from16 v19, v22

    move/from16 v18, v22

    .line 315
    const/16 v34, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/hz/sprite/GameSprite;->createSpriteByIcon(IIIZ)Lcom/hz/sprite/GameSprite;

    move-result-object p1

    .line 317
    :cond_0
    new-instance v34, Lcom/hz/actor/ListPlayer;

    invoke-direct/range {v34 .. v34}, Lcom/hz/actor/ListPlayer;-><init>()V

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    .line 318
    iget-object v0, v8, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/hz/actor/ListPlayer;->setDir(B)V

    .line 319
    iget-object v0, v8, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9, v10}, Lcom/hz/actor/ListPlayer;->setGridXY(II)V

    .line 320
    iget-object v0, v8, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    invoke-static/range {p1 .. p1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/hz/actor/ListPlayer;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 321
    iget-object v0, v8, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 324
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/hz/core/Escort;->moveList:[[Z

    .line 325
    iget-object v0, v8, Lcom/hz/core/Escort;->moveList:[[Z

    move-object/from16 v34, v0

    aget-object v34, v34, v19

    const/16 v35, 0x1

    aput-boolean v35, v34, v18

    .line 328
    iput-object v12, v8, Lcom/hz/core/Escort;->eventList:[[B

    .line 329
    iget-object v0, v8, Lcom/hz/core/Escort;->eventList:[[B

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    const/16 v35, 0x0

    const/16 v36, 0x7

    aput-byte v36, v34, v35

    .line 330
    iget-object v0, v8, Lcom/hz/core/Escort;->eventList:[[B

    move-object/from16 v34, v0

    add-int/lit8 v35, v5, -0x1

    aget-object v34, v34, v35

    add-int/lit8 v35, v4, -0x1

    const/16 v36, 0x8

    aput-byte v36, v34, v35

    .line 333
    const-string v34, "/common/"

    const/16 v35, 0x217

    invoke-static/range {v34 .. v35}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/hz/core/Escort;->imgSet:Lcom/hz/image/ImageSet;

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    iput-wide v0, v8, Lcom/hz/core/Escort;->nextMoveTime:J

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    iput-wide v0, v8, Lcom/hz/core/Escort;->nextOverTime:J

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    iput-wide v0, v8, Lcom/hz/core/Escort;->nextUpdateTime:J

    .line 348
    .end local v4    # "allCol":B
    .end local v5    # "allRow":B
    .end local v8    # "escort":Lcom/hz/core/Escort;
    .end local v9    # "escortCol":B
    .end local v10    # "escortRow":B
    .end local v12    # "eventList":[[B
    .end local v13    # "events":[[B
    .end local v16    # "moveList":[[Z
    .end local v17    # "moves":[[Z
    .end local v18    # "nowCol":B
    .end local v19    # "nowRow":B
    .end local v20    # "overTime":I
    .end local v22    # "robCol":B
    .end local v23    # "robIcon1":I
    .end local v24    # "robIcon2":I
    .end local v25    # "robIcon3":I
    .end local v26    # "robRow":B
    .end local v27    # "round":S
    .end local v28    # "row":I
    .end local v29    # "turn":B
    .end local v30    # "type":B
    .end local v33    # "waitTime":I
    :goto_4
    return-object v8

    .line 225
    .restart local v4    # "allCol":B
    .restart local v5    # "allRow":B
    .restart local v16    # "moveList":[[Z
    .restart local v17    # "moves":[[Z
    .restart local v20    # "overTime":I
    .restart local v28    # "row":I
    .restart local v33    # "waitTime":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_5
    aget-object v34, v16, v28

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-lt v6, v0, :cond_2

    .line 224
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 226
    :cond_2
    const/4 v15, 0x0

    .line 227
    .local v15, "move":Z
    if-ltz v28, :cond_3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-gt v0, v1, :cond_3

    .line 228
    if-ltz v6, :cond_3

    aget-object v34, v17, v28

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    if-gt v6, v0, :cond_3

    .line 229
    aget-object v34, v17, v28

    aget-boolean v15, v34, v6

    .line 231
    :cond_3
    aget-object v34, v16, v28

    aput-boolean v15, v34, v6

    .line 225
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 241
    .end local v6    # "col":I
    .end local v15    # "move":Z
    .restart local v9    # "escortCol":B
    .restart local v10    # "escortRow":B
    .restart local v13    # "events":[[B
    .restart local v27    # "round":S
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "col":I
    :goto_6
    if-lt v6, v4, :cond_5

    .line 240
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 242
    :cond_5
    aget-object v34, v13, v28

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v35

    aput-byte v35, v34, v6

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 247
    .end local v6    # "col":I
    .restart local v12    # "eventList":[[B
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "col":I
    :goto_7
    aget-object v34, v12, v28

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-lt v6, v0, :cond_7

    .line 246
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 248
    :cond_7
    const/4 v11, -0x1

    .line 249
    .local v11, "event":B
    if-ltz v28, :cond_8

    array-length v0, v13

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-gt v0, v1, :cond_8

    .line 250
    if-ltz v6, :cond_8

    aget-object v34, v13, v28

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v34

    if-gt v6, v0, :cond_8

    .line 251
    aget-object v34, v13, v28

    aget-byte v11, v34, v6

    .line 253
    :cond_8
    aget-object v34, v12, v28

    aput-byte v11, v34, v6

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 272
    .end local v6    # "col":I
    .end local v11    # "event":B
    .restart local v22    # "robCol":B
    .restart local v23    # "robIcon1":I
    .restart local v24    # "robIcon2":I
    .restart local v25    # "robIcon3":I
    .restart local v26    # "robRow":B
    .restart local v29    # "turn":B
    .restart local v30    # "type":B
    :cond_9
    sget-object v34, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {v34 .. v34}, Lcom/hz/actor/Player;->clearFightPower()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 274
    .local v21, "powerSize":B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    move/from16 v0, v21

    if-lt v14, v0, :cond_a

    .line 277
    sget-object v34, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {v34 .. v34}, Lcom/hz/actor/Player;->checkHPMP()V

    goto/16 :goto_3

    .line 344
    .end local v4    # "allCol":B
    .end local v5    # "allRow":B
    .end local v9    # "escortCol":B
    .end local v10    # "escortRow":B
    .end local v12    # "eventList":[[B
    .end local v13    # "events":[[B
    .end local v14    # "i":I
    .end local v16    # "moveList":[[Z
    .end local v17    # "moves":[[Z
    .end local v20    # "overTime":I
    .end local v21    # "powerSize":B
    .end local v22    # "robCol":B
    .end local v23    # "robIcon1":I
    .end local v24    # "robIcon2":I
    .end local v25    # "robIcon3":I
    .end local v26    # "robRow":B
    .end local v27    # "round":S
    .end local v28    # "row":I
    .end local v29    # "turn":B
    .end local v30    # "type":B
    .end local v33    # "waitTime":I
    :catch_0
    move-exception v7

    .line 348
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 275
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "allCol":B
    .restart local v5    # "allRow":B
    .restart local v9    # "escortCol":B
    .restart local v10    # "escortRow":B
    .restart local v12    # "eventList":[[B
    .restart local v13    # "events":[[B
    .restart local v14    # "i":I
    .restart local v16    # "moveList":[[Z
    .restart local v17    # "moves":[[Z
    .restart local v20    # "overTime":I
    .restart local v21    # "powerSize":B
    .restart local v22    # "robCol":B
    .restart local v23    # "robIcon1":I
    .restart local v24    # "robIcon2":I
    .restart local v25    # "robIcon3":I
    .restart local v26    # "robRow":B
    .restart local v27    # "round":S
    .restart local v28    # "row":I
    .restart local v29    # "turn":B
    .restart local v30    # "type":B
    .restart local v33    # "waitTime":I
    :cond_a
    sget-object v34, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v36

    invoke-virtual/range {v34 .. v36}, Lcom/hz/actor/Player;->addFightPower(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    add-int/lit8 v14, v14, 0x1

    goto :goto_8
.end method

.method private getColByIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getAllCol()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method private getEvent(II)B
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/hz/core/Escort;->eventList:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    return v0
.end method

.method public static getModelListDesc(Ljava/util/Vector;)Ljava/lang/String;
    .locals 6
    .param p0, "modelList"    # Ljava/util/Vector;

    .prologue
    .line 119
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 122
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    if-nez v0, :cond_3

    .line 125
    const-string v3, "(\u0110\u1ed9i tr\u01b0\u1edfng )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_1
    :goto_1
    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const/16 v3, 0xb1

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getLevel()B

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getJob()B

    move-result v3

    invoke-static {v3}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 128
    const-string v3, "(\u0110\u1ed9i vi\u00ean)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getType()B

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x58

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getMoveList(III)[[Z
    .locals 9
    .param p0, "allRow"    # I
    .param p1, "allCol"    # I
    .param p2, "moveBit"    # I

    .prologue
    const/4 v7, 0x1

    .line 806
    filled-new-array {p0, p1}, [I

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 807
    .local v5, "temp":[[Z
    const/4 v2, 0x0

    .line 811
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p0, :cond_0

    .line 826
    return-object v5

    .line 815
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    if-lt v4, p1, :cond_1

    .line 811
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 816
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    shl-int v0, v7, v3

    .line 820
    .local v0, "bit":I
    aget-object v8, v5, v1

    and-int v6, p2, v0

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    aput-boolean v6, v8, v4

    .line 815
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 820
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getRowByIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getAllRow()I

    move-result v0

    div-int v0, p1, v0

    return v0
.end method

.method public static isCanMove(Lcom/hz/core/Escort;I)Z
    .locals 3
    .param p0, "escort"    # Lcom/hz/core/Escort;
    .param p1, "childIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 886
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->isMember()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    const-string v1, "\u0110\u1ed9i vi\u00ean kh\u00f4ng th\u1ec3 thao t\u00e1c chuy\u1ec3n ch\u1ec9 l\u1ec7nh!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 926
    :goto_0
    return v0

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getEscortRobModel()Lcom/hz/actor/ListPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 893
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isRobMove()Z

    move-result v2

    if-nez v2, :cond_3

    .line 894
    const-string v1, "Ch\u01b0a t\u1edbi hi\u1ec7p c\u1ee7a mi, c\u1ea7n \u0111\u1ee3i \u0111\u1ed1i ph\u01b0\u01a1ng d\u1ecbch chuy\u1ec3n m\u1edbi c\u00f3 th\u1ec3 h\u00e0nh \u0111\u1ed9ng!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isMoveTime()Z

    move-result v2

    if-nez v2, :cond_2

    .line 901
    const-string v1, "CD di d\u1ed9ng \u0111ang ch\u1edd, h\u00e3y \u0111\u1ee3i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 905
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isOverTimeMove()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 906
    const-string v1, "Th\u1eddi gian di \u0111\u1ed9ng \u0111\u00e3 h\u1ebft, game s\u1ebd t\u1ef1 \u0111\u1ed9ng gi\u00fap mi di chuy\u1ec3n!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {p0, v1}, Lcom/hz/core/Escort;->isStatus(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 912
    const-string v1, "Mi \u0111\u00e3 truy\u1ec1n ch\u1ec9 l\u1ec7nh, h\u00e3y \u0111\u1ee3i server c\u1eadp nh\u1eadt!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 916
    :cond_4
    invoke-virtual {p0, p1}, Lcom/hz/core/Escort;->isNowGird(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    const-string v1, "Hi\u1ec7n c\u00e1c \u00f4 kh\u00f4ng c\u1ea7n thao t\u00e1c!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 921
    :cond_5
    invoke-virtual {p0, p1}, Lcom/hz/core/Escort;->isNearGird(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 922
    const-string v1, "Kh\u00f4ng th\u1ec3 di chuy\u1ec3n v\u1ecb tr\u00ed v\u01b0\u1ee3t \u00f4, h\u00e3y ch\u1ecdn \u00f4 b\u00ean c\u1ea1nh!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    :cond_6
    move v0, v1

    .line 926
    goto :goto_0
.end method

.method private isMove(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const/4 v0, 0x0

    .line 362
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Escort;->moveList:[[Z

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/hz/core/Escort;->moveList:[[Z

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/hz/core/Escort;->moveList:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    goto :goto_0
.end method

.method public static processEscortRefreshMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    const/4 v7, 0x1

    .line 1042
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1049
    .local v2, "result":B
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 1050
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1051
    invoke-static {}, Lcom/hz/main/GameCanvas;->clearEscort()V

    .line 1052
    sget-byte v5, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_ALL:B

    sput-byte v5, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 1097
    .end local p1    # "escort":Lcom/hz/core/Escort;
    :cond_0
    :goto_0
    return-void

    .line 1057
    .restart local p1    # "escort":Lcom/hz/core/Escort;
    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 1058
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 1059
    .local v0, "battleID":S
    invoke-static {v0}, Lcom/hz/main/GameWorld;->toBattle(I)V

    goto :goto_0

    .line 1064
    .end local v0    # "battleID":S
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1065
    .local v4, "size":B
    if-lez v4, :cond_3

    .line 1066
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1068
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1069
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_5

    .line 1072
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1073
    const/16 v5, 0x20

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1076
    :cond_4
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 1079
    if-ne v2, v7, :cond_6

    .line 1080
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1081
    invoke-static {p0, p1}, Lcom/hz/core/Escort;->processEscostEndMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V

    goto :goto_0

    .line 1070
    :cond_5
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortEventReword(Lcom/hz/net/Message;)V

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1086
    :cond_6
    if-nez v2, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    sput-byte v5, Lcom/hz/core/Escort;->escortType:B

    .line 1088
    sget-byte v5, Lcom/hz/core/Escort;->escortType:B

    if-ne v5, v7, :cond_7

    .line 1089
    check-cast p1, Lcom/hz/core/NewEscort;

    .end local p1    # "escort":Lcom/hz/core/Escort;
    invoke-static {p0, p1}, Lcom/hz/core/NewEscort;->processEscrotRefreshPosMsg(Lcom/hz/net/Message;Lcom/hz/core/NewEscort;)V

    goto :goto_0

    .line 1091
    .restart local p1    # "escort":Lcom/hz/core/Escort;
    :cond_7
    sget-byte v5, Lcom/hz/core/Escort;->escortType:B

    if-nez v5, :cond_0

    .line 1092
    invoke-static {p0, p1}, Lcom/hz/core/Escort;->processEscrotRefreshPosMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V

    goto :goto_0
.end method

.method public static processEscostEndMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V
    .locals 11
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    .line 1168
    if-nez p0, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1172
    :cond_0
    const-string v0, ""

    .line 1174
    .local v0, "FAVOURER_FAIL":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 1175
    .local v4, "isSuccess":Z
    const/4 v3, 0x0

    .line 1176
    .local v3, "failType":B
    if-eqz v4, :cond_4

    .line 1179
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v7, -0x1

    invoke-static {v6, v7, p0}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;

    .line 1187
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1190
    .local v1, "count":B
    invoke-static {}, Lcom/hz/main/GameCanvas;->clearEscort()V

    .line 1193
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 1196
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 1200
    new-instance v7, Ljava/lang/StringBuilder;

    iget-byte v6, p1, Lcom/hz/core/Escort;->type:B

    if-ne v6, v10, :cond_5

    const-string v6, "C\u01b0\u1edbp th\u00e0nh c\u00f4ng"

    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", h\u00e3y l\u01b0u \u00fd th\u01b0 ph\u1ea7n th\u01b0\u1edfng!\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, "success":Ljava/lang/String;
    iget-byte v6, p1, Lcom/hz/core/Escort;->type:B

    if-ne v6, v8, :cond_2

    .line 1202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "L\u01b0u \u00fd lo\u1ea1i v\u1eabn c\u00f2n %U l\u1ea7n!"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1206
    :cond_2
    const-string v2, "Nhi\u1ec7m v\u1ee5 th\u1ea5t b\u1ea1i!"

    .line 1207
    .local v2, "fail":Ljava/lang/String;
    iget-byte v6, p1, Lcom/hz/core/Escort;->type:B

    if-ne v6, v10, :cond_7

    .line 1208
    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    .line 1209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Ng\u01b0\u1eddi th\u1ef1c hi\u1ec7n \u0111\u00e3 ch\u1ebft trong nhi\u1ec7m v\u1ee5!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    :cond_3
    :goto_3
    const-string v6, "Nhi\u1ec7m v\u1ee5 k\u1ebft th\u00fac"

    if-eqz v4, :cond_8

    .end local v5    # "success":Ljava/lang/String;
    :goto_4
    invoke-static {v6, v5}, Lcom/hz/main/GameCanvas;->setWorldShowMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    .end local v1    # "count":B
    .end local v2    # "fail":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 1182
    iget-byte v6, p1, Lcom/hz/core/Escort;->type:B

    if-ne v6, v8, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1200
    .restart local v1    # "count":B
    :cond_5
    const-string v6, "Nhi\u1ec7m v\u1ee5 th\u00e0nh c\u00f4ng"

    goto :goto_2

    .line 1211
    .restart local v2    # "fail":Ljava/lang/String;
    .restart local v5    # "success":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x7

    if-ne v3, v6, :cond_3

    .line 1212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Ng\u01b0\u1eddi th\u1ef1c hi\u1ec7n h\u1ee7y nhi\u1ec7m v\u1ee5!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1219
    goto :goto_3

    .line 1222
    :cond_7
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1223
    move-object v2, v0

    goto :goto_3

    :cond_8
    move-object v5, v2

    .line 1227
    goto :goto_4
.end method

.method public static processEscrotRefreshPosMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V
    .locals 16
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 1111
    .local v2, "escortRow":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 1112
    .local v1, "escortCol":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 1113
    .local v13, "waitTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 1114
    .local v8, "overTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 1116
    .local v11, "round":S
    move v7, v2

    .local v7, "nowRow":B
    move v6, v1

    .line 1118
    .local v6, "nowCol":B
    const/4 v12, 0x0

    .local v12, "turn":B
    const/4 v10, 0x0

    .local v10, "robRow":B
    const/4 v9, 0x0

    .line 1120
    .local v9, "robCol":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 1121
    .local v4, "isTurnHun":Z
    if-eqz v4, :cond_0

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    move-object/from16 v0, p1

    iput-byte v14, v0, Lcom/hz/core/Escort;->favourerStatus:B

    .line 1127
    move v7, v10

    move v6, v9

    .line 1136
    :cond_0
    if-nez p1, :cond_1

    .line 1159
    :goto_0
    return-void

    .line 1140
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Escort;->getNowRow()I

    move-result v14

    if-ne v7, v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Escort;->getNowCol()I

    move-result v14

    if-eq v6, v14, :cond_3

    .line 1141
    :cond_2
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1142
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/hz/core/Escort;->setStatus(ZI)V

    .line 1144
    :cond_3
    move-object/from16 v0, p1

    invoke-direct {v0, v2, v1}, Lcom/hz/core/Escort;->setMove(II)V

    .line 1145
    move-object/from16 v0, p1

    iput v11, v0, Lcom/hz/core/Escort;->round:I

    .line 1147
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Lcom/hz/core/Escort;->refreshTime(II)V

    .line 1149
    sget-object v14, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v14}, Lcom/hz/map/GameMap;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v3

    .line 1150
    .local v3, "escortUI":Lcom/hz/ui/UIHandler;
    const/16 v14, 0x2329

    invoke-virtual {v3, v14}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v5

    .line 1152
    .local v5, "listWindow":Lcom/hz/gui/GWindow;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v14, v5}, Lcom/hz/core/Escort;->setNowGird(IIZLcom/hz/gui/GWindow;)V

    .line 1153
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/Escort;->getEscortRobModel()Lcom/hz/actor/ListPlayer;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1154
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9, v14, v5}, Lcom/hz/core/Escort;->setNowGird(IIZLcom/hz/gui/GWindow;)V

    .line 1155
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/hz/core/Escort;->setRobMove(I)V

    .line 1158
    :cond_4
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/hz/ui/UIHandler;->updateDataToEscortUI(Z)V

    goto :goto_0
.end method

.method private setMove(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 377
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/core/Escort;->moveList:[[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/hz/core/Escort;->moveList:[[Z

    aget-object v0, v0, p1

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/hz/core/Escort;->moveList:[[Z

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    goto :goto_0
.end method


# virtual methods
.method public clearAutoMove()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/core/Escort;->moveMaxCount:I

    iput v0, p0, Lcom/hz/core/Escort;->moveCount:I

    .line 202
    return-void
.end method

.method public getAllCol()I
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/hz/core/Escort;->moveList:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    return v0
.end method

.method public getAllRow()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/hz/core/Escort;->moveList:[[Z

    array-length v0, v0

    return v0
.end method

.method public getBattleMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/hz/core/Escort;->battleMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getEscortModel()Lcom/hz/actor/ListPlayer;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    return-object v0
.end method

.method public getEscortRobModel()Lcom/hz/actor/ListPlayer;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    return-object v0
.end method

.method public getEventImage(I)B
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getRowByIndex(I)I

    move-result v2

    .line 440
    .local v2, "row":I
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getColByIndex(I)I

    move-result v0

    .line 441
    .local v0, "col":I
    iget-object v3, p0, Lcom/hz/core/Escort;->eventList:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v0

    if-gez v3, :cond_1

    .line 442
    const/16 v1, 0x9

    .line 449
    :cond_0
    :goto_0
    return v1

    .line 445
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/hz/core/Escort;->getEvent(II)B

    move-result v1

    .line 446
    .local v1, "event":B
    invoke-direct {p0, v2, v0}, Lcom/hz/core/Escort;->isMove(II)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 447
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventList()[[B
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/hz/core/Escort;->eventList:[[B

    return-object v0
.end method

.method public getHunInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-byte v0, p0, Lcom/hz/core/Escort;->favourerStatus:B

    packed-switch v0, :pswitch_data_0

    .line 692
    const-string v0, ""

    :goto_0
    return-object v0

    .line 686
    :pswitch_0
    const-string v0, "\u0110\u1ed1i ph\u01b0\u01a1ng \u0111ang h\u00e0nh \u0111\u1ed9ng, h\u00e3y \u0111\u1ee3i..."

    goto :goto_0

    .line 688
    :pswitch_1
    const-string v0, "\u0110\u1ed1i ph\u01b0\u01a1ng \u0111ang chi\u1ebfn \u0111\u1ea5u, h\u00e3y \u0111\u1ee3i..."

    goto :goto_0

    .line 690
    :pswitch_2
    const-string v0, "\u0110\u1ed1i ph\u01b0\u01a1ng offline, h\u00e3y \u0111\u1ee3i..."

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/hz/core/Escort;->id:I

    return v0
.end method

.method public getImageSet()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/hz/core/Escort;->imgSet:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getIndexNow(Lcom/hz/actor/ListPlayer;)I
    .locals 2
    .param p1, "model"    # Lcom/hz/actor/ListPlayer;

    .prologue
    .line 519
    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getGridY()B

    move-result v0

    invoke-virtual {p0}, Lcom/hz/core/Escort;->getAllCol()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hz/actor/ListPlayer;->getGridX()B

    move-result v1

    add-int/2addr v0, v1

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMoney1()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/hz/core/Escort;->money1:I

    return v0
.end method

.method public getMoney2()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/hz/core/Escort;->money2:I

    return v0
.end method

.method public getMoney3()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/hz/core/Escort;->money3:I

    return v0
.end method

.method public getMoneyDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1349
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1350
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/hz/core/Escort;->money1:I

    if-lez v1, :cond_0

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KNB"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hz/core/Escort;->money1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffff00

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1353
    :cond_0
    iget v1, p0, Lcom/hz/core/Escort;->money2:I

    if-lez v1, :cond_1

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "L\u00e1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hz/core/Escort;->money2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x9acaff

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    :cond_1
    iget v1, p0, Lcom/hz/core/Escort;->money3:I

    if-lez v1, :cond_2

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "B\u1ea1c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hz/core/Escort;->money3:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xc45712

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNowCol()I
    .locals 2

    .prologue
    .line 544
    iget-byte v0, p0, Lcom/hz/core/Escort;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getGridX()B

    move-result v0

    .line 550
    :goto_0
    return v0

    .line 547
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Escort;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getGridX()B

    move-result v0

    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNowRow()I
    .locals 2

    .prologue
    .line 530
    iget-byte v0, p0, Lcom/hz/core/Escort;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getGridY()B

    move-result v0

    .line 536
    :goto_0
    return v0

    .line 533
    :cond_0
    iget-byte v0, p0, Lcom/hz/core/Escort;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getGridY()B

    move-result v0

    goto :goto_0

    .line 536
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimpleDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/hz/core/Escort;->simpleDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/hz/core/Escort;->teamDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isMove(I)Z
    .locals 2
    .param p1, "childIndex"    # I

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getRowByIndex(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getColByIndex(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hz/core/Escort;->isMove(II)Z

    move-result v0

    return v0
.end method

.method public isMoveTime()Z
    .locals 2

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/hz/core/Escort;->nextMoveTime:J

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->getPlanTime(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNearGird(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 461
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getRowByIndex(I)I

    move-result v1

    .line 462
    .local v1, "row":I
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getColByIndex(I)I

    move-result v0

    .line 463
    .local v0, "col":I
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getNowRow()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/hz/core/Escort;->getNowCol()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v3, v2, :cond_0

    .line 466
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNowGird(I)Z
    .locals 3
    .param p1, "childIndex"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getRowByIndex(I)I

    move-result v1

    .line 476
    .local v1, "row":I
    invoke-direct {p0, p1}, Lcom/hz/core/Escort;->getColByIndex(I)I

    move-result v0

    .line 477
    .local v0, "col":I
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getNowRow()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/hz/core/Escort;->getNowCol()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOverTimeMove()Z
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/hz/core/Escort;->nextOverTime:J

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->getPlanTime(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRobMove()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/core/Escort;->isStatus(I)Z

    move-result v0

    return v0
.end method

.method public isStatus(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 81
    iget v0, p0, Lcom/hz/core/Escort;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public logic()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 745
    iget-object v1, p0, Lcom/hz/core/Escort;->battleMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hz/core/Escort;->battleMsg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hz/core/Escort;->battleMsg:Ljava/lang/String;

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v1, :cond_3

    .line 752
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1}, Lcom/hz/actor/ListPlayer;->logic()V

    .line 755
    iget v1, p0, Lcom/hz/core/Escort;->moveCount:I

    iget v2, p0, Lcom/hz/core/Escort;->moveMaxCount:I

    if-ge v1, v2, :cond_2

    iget-wide v1, p0, Lcom/hz/core/Escort;->moveStartTime:J

    iget v3, p0, Lcom/hz/core/Escort;->moveCount:I

    iget v4, p0, Lcom/hz/core/Escort;->moveTime:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 756
    iget v1, p0, Lcom/hz/core/Escort;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hz/core/Escort;->moveCount:I

    .line 757
    iget v1, p0, Lcom/hz/core/Escort;->moveDirX:I

    iget v2, p0, Lcom/hz/core/Escort;->moveDirY:I

    invoke-static {v1, v2, v5}, Lcom/hz/main/WorldPanel;->getDirByMovePixels(IIZ)B

    move-result v0

    .line 758
    .local v0, "dir":B
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1}, Lcom/hz/actor/ListPlayer;->getDir()B

    move-result v1

    if-eq v1, v0, :cond_1

    .line 759
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1, v0}, Lcom/hz/actor/ListPlayer;->setDir(B)V

    .line 761
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1, v7}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 762
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    iget v2, p0, Lcom/hz/core/Escort;->moveDirX:I

    iget v3, p0, Lcom/hz/core/Escort;->moveDirY:I

    invoke-virtual {v1, v2, v3}, Lcom/hz/actor/ListPlayer;->move(II)V

    .line 764
    iget v1, p0, Lcom/hz/core/Escort;->moveCount:I

    iget v2, p0, Lcom/hz/core/Escort;->moveMaxCount:I

    if-ne v1, v2, :cond_2

    .line 765
    iget-object v1, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1, v5}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 766
    invoke-virtual {p0}, Lcom/hz/core/Escort;->updateGirdPos()V

    .line 771
    .end local v0    # "dir":B
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isMoveTime()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/hz/core/Escort;->isOverTimeMove()Z

    move-result v1

    if-nez v1, :cond_6

    .line 772
    invoke-virtual {p0, v6}, Lcom/hz/core/Escort;->isStatus(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 773
    invoke-virtual {p0, v7, v6}, Lcom/hz/core/Escort;->setStatus(ZI)V

    .line 774
    invoke-virtual {p0}, Lcom/hz/core/Escort;->updateGirdPos()V

    .line 783
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v1, :cond_4

    .line 784
    iget-object v1, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v1}, Lcom/hz/actor/ListPlayer;->logic()V

    .line 788
    :cond_4
    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v1}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 799
    :cond_5
    :goto_1
    return-void

    .line 778
    :cond_6
    invoke-virtual {p0, v5, v6}, Lcom/hz/core/Escort;->setStatus(ZI)V

    goto :goto_0

    .line 792
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hz/core/Escort;->nextUpdateTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    .line 796
    iget v1, p0, Lcom/hz/core/Escort;->round:I

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createEscortRefreshMsg(I)Lcom/hz/net/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/core/Escort;->nextUpdateTime:J

    goto :goto_1
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x14

    .line 702
    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iget-object v2, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v2}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v2

    iget-object v3, p0, Lcom/hz/core/Escort;->escortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v0}, Lcom/hz/actor/ListPlayer;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iget-object v2, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v2}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v2

    iget-object v3, p0, Lcom/hz/core/Escort;->robEscortModel:Lcom/hz/actor/ListPlayer;

    invoke-virtual {v3}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 710
    :cond_1
    iget v7, p0, Lcom/hz/core/Escort;->timeX:I

    .line 711
    .local v7, "drawX":I
    iget v8, p0, Lcom/hz/core/Escort;->timeY:I

    .line 712
    .local v8, "drawY":I
    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 713
    iget-byte v0, p0, Lcom/hz/core/Escort;->type:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 717
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isRobMove()Z

    move-result v0

    if-nez v0, :cond_5

    .line 718
    const v2, 0xffffff

    invoke-virtual {p0}, Lcom/hz/core/Escort;->getHunInfo()Ljava/lang/String;

    move-result-object v3

    .line 719
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    const/16 v6, 0x11

    move-object v0, p1

    .line 718
    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    move v4, v8

    .line 737
    .end local v8    # "drawY":I
    .local v4, "drawY":I
    :goto_0
    return-void

    .line 723
    .end local v4    # "drawY":I
    .restart local v8    # "drawY":I
    :cond_2
    add-int/lit8 v7, v7, 0x5

    .line 724
    add-int/lit8 v4, v8, 0x5

    .line 725
    .end local v8    # "drawY":I
    .restart local v4    # "drawY":I
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isMoveTime()Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    const-string v0, "Ch\u1edd \u0111\u1ee3i:"

    invoke-virtual {p1, v0, v7, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 727
    iget-wide v1, p0, Lcom/hz/core/Escort;->nextMoveTime:J

    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    const-string v3, "Ch\u1edd \u0111\u1ee3i:"

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v3, v0, 0x5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIII)V

    goto :goto_0

    .line 729
    :cond_3
    invoke-virtual {p0}, Lcom/hz/core/Escort;->isOverTimeMove()Z

    move-result v0

    if-nez v0, :cond_4

    .line 730
    const-string v0, "T\u00ednh gi\u1edd:"

    invoke-virtual {p1, v0, v7, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 731
    iget-wide v1, p0, Lcom/hz/core/Escort;->nextOverTime:J

    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    const-string v3, "T\u00ednh gi\u1edd:"

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v3, v0, 0x5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIII)V

    goto :goto_0

    .line 733
    :cond_4
    const-string v0, "Qu\u00e1 gi\u1edd"

    invoke-virtual {p1, v0, v7, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0

    .end local v4    # "drawY":I
    .restart local v8    # "drawY":I
    :cond_5
    move v4, v8

    .end local v8    # "drawY":I
    .restart local v4    # "drawY":I
    goto :goto_0
.end method

.method public refreshTime(II)V
    .locals 4
    .param p1, "waitTime"    # I
    .param p2, "overTime"    # I

    .prologue
    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/Escort;->nextMoveTime:J

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/Escort;->nextOverTime:J

    .line 422
    return-void
.end method

.method public setAbsByGWidget(IIIILcom/hz/actor/ListPlayer;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "model"    # Lcom/hz/actor/ListPlayer;

    .prologue
    .line 394
    if-eqz p5, :cond_0

    .line 395
    div-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p1

    add-int v1, p2, p4

    invoke-virtual {p5, v0, v1}, Lcom/hz/actor/ListPlayer;->setPos(II)V

    .line 397
    :cond_0
    return-void
.end method

.method public setBattleMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "battleMsg"    # Ljava/lang/String;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/hz/core/Escort;->battleMsg:Ljava/lang/String;

    .line 867
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 830
    iput p1, p0, Lcom/hz/core/Escort;->id:I

    .line 831
    return-void
.end method

.method public setMoney1(I)V
    .locals 0
    .param p1, "money1"    # I

    .prologue
    .line 848
    iput p1, p0, Lcom/hz/core/Escort;->money1:I

    .line 849
    return-void
.end method

.method public setMoney2(I)V
    .locals 0
    .param p1, "money2"    # I

    .prologue
    .line 854
    iput p1, p0, Lcom/hz/core/Escort;->money2:I

    .line 855
    return-void
.end method

.method public setMoney3(I)V
    .locals 0
    .param p1, "money3"    # I

    .prologue
    .line 860
    iput p1, p0, Lcom/hz/core/Escort;->money3:I

    .line 861
    return-void
.end method

.method public setNowGird(IIZLcom/hz/gui/GWindow;)V
    .locals 22
    .param p1, "modelRow"    # I
    .param p2, "modelCol"    # I
    .param p3, "isEscortModel"    # Z
    .param p4, "listWindow"    # Lcom/hz/gui/GWindow;

    .prologue
    .line 558
    const/4 v8, 0x0

    .line 559
    .local v8, "model":Lcom/hz/actor/ListPlayer;
    if-eqz p3, :cond_1

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Escort;->getEscortModel()Lcom/hz/actor/ListPlayer;

    move-result-object v8

    .line 564
    :goto_0
    if-nez v8, :cond_2

    .line 643
    :cond_0
    :goto_1
    return-void

    .line 562
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/Escort;->getEscortRobModel()Lcom/hz/actor/ListPlayer;

    move-result-object v8

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getGridX()B

    move-result v15

    .line 569
    .local v15, "nowCol":I
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getGridY()B

    move-result v16

    .line 572
    .local v16, "nowRow":I
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lcom/hz/actor/ListPlayer;->setGridXY(II)V

    .line 575
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/hz/core/Escort;->getIndexNow(Lcom/hz/actor/ListPlayer;)I

    move-result v17

    .line 576
    .local v17, "selfIndex":I
    if-ltz v17, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 584
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v12

    .line 585
    .local v12, "focusWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v12}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v4

    .line 586
    .local v4, "absX":I
    invoke-virtual {v12}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v5

    .line 587
    .local v5, "absY":I
    invoke-virtual {v12}, Lcom/hz/gui/GWidget;->getW()I

    move-result v6

    .line 588
    .local v6, "absW":I
    invoke-virtual {v12}, Lcom/hz/gui/GWidget;->getH()I

    move-result v7

    .line 591
    .local v7, "absH":I
    if-nez p3, :cond_3

    move-object/from16 v3, p0

    .line 592
    invoke-virtual/range {v3 .. v8}, Lcom/hz/core/Escort;->setAbsByGWidget(IIIILcom/hz/actor/ListPlayer;)V

    goto :goto_1

    .line 598
    :cond_3
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getGridX()B

    move-result v3

    if-ne v3, v15, :cond_4

    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getGridY()B

    move-result v3

    move/from16 v0, v16

    if-eq v3, v0, :cond_0

    .line 602
    :cond_4
    div-int/lit8 v3, v6, 0x2

    add-int v9, v4, v3

    .line 603
    .local v9, "absPx":I
    add-int v10, v5, v7

    .line 604
    .local v10, "absPy":I
    const/4 v11, 0x0

    .line 605
    .local v11, "distance":I
    const/4 v13, 0x0

    .local v13, "moveX":I
    const/4 v14, 0x0

    .line 606
    .local v14, "moveY":I
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    if-ne v9, v3, :cond_7

    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    if-ge v10, v3, :cond_7

    .line 607
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 608
    const/4 v14, -0x1

    .line 628
    :cond_5
    :goto_2
    if-nez v13, :cond_6

    if-eqz v14, :cond_a

    :cond_6
    add-int v3, v6, v7

    if-ge v11, v3, :cond_a

    .line 633
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/core/Escort;->moveCount:I

    .line 634
    move-object/from16 v0, p0

    iput v11, v0, Lcom/hz/core/Escort;->moveMaxCount:I

    .line 635
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hz/core/Escort;->nextMoveTime:J

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v18, v18, v20

    int-to-long v0, v11

    move-wide/from16 v20, v0

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/core/Escort;->moveTime:I

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hz/core/Escort;->moveStartTime:J

    .line 637
    move-object/from16 v0, p0

    iput v13, v0, Lcom/hz/core/Escort;->moveDirX:I

    .line 638
    move-object/from16 v0, p0

    iput v14, v0, Lcom/hz/core/Escort;->moveDirY:I

    goto/16 :goto_1

    .line 610
    :cond_7
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    if-ne v9, v3, :cond_8

    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    if-le v10, v3, :cond_8

    .line 611
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    sub-int v3, v10, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 612
    const/4 v14, 0x1

    .line 613
    goto :goto_2

    .line 614
    :cond_8
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    if-ge v9, v3, :cond_9

    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    if-ne v10, v3, :cond_9

    .line 615
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 616
    const/4 v13, -0x1

    .line 617
    goto :goto_2

    .line 618
    :cond_9
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    if-le v9, v3, :cond_5

    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPy()I

    move-result v3

    if-ne v10, v3, :cond_5

    .line 619
    invoke-virtual {v8}, Lcom/hz/actor/ListPlayer;->getPx()I

    move-result v3

    sub-int v3, v9, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 620
    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v3, p0

    .line 640
    invoke-virtual/range {v3 .. v8}, Lcom/hz/core/Escort;->setAbsByGWidget(IIIILcom/hz/actor/ListPlayer;)V

    goto/16 :goto_1
.end method

.method public setRobMove(I)V
    .locals 3
    .param p1, "turn"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 86
    if-ne p1, v0, :cond_0

    .line 87
    invoke-virtual {p0, v2, v0}, Lcom/hz/core/Escort;->setStatus(ZI)V

    .line 88
    invoke-virtual {p0, v1, v2}, Lcom/hz/core/Escort;->setStatus(ZI)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/hz/core/Escort;->setStatus(ZI)V

    goto :goto_0
.end method

.method public setSimpleDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "simpleDesc"    # Ljava/lang/String;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/hz/core/Escort;->simpleDesc:Ljava/lang/String;

    .line 837
    return-void
.end method

.method public setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 78
    iget v0, p0, Lcom/hz/core/Escort;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/Escort;->status:I

    .line 79
    return-void
.end method

.method public setTeamDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "teamDesc"    # Ljava/lang/String;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/hz/core/Escort;->teamDesc:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public setTimeXY(II)V
    .locals 0
    .param p1, "timeX"    # I
    .param p2, "timeY"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/hz/core/Escort;->timeX:I

    .line 101
    iput p2, p0, Lcom/hz/core/Escort;->timeY:I

    .line 102
    return-void
.end method

.method public updateGirdPos()V
    .locals 10

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/hz/core/Escort;->getEscortModel()Lcom/hz/actor/ListPlayer;

    move-result-object v5

    .line 647
    .local v5, "model":Lcom/hz/actor/ListPlayer;
    if-nez v5, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/hz/actor/ListPlayer;->setAnimationByDir(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/hz/core/Escort;->clearAutoMove()V

    .line 654
    invoke-virtual {p0, v5}, Lcom/hz/core/Escort;->getIndexNow(Lcom/hz/actor/ListPlayer;)I

    move-result v9

    .line 656
    .local v9, "selfIndex":I
    sget-object v0, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v0}, Lcom/hz/map/GameMap;->getEscortUI()Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 657
    .local v6, "escortUI":Lcom/hz/ui/UIHandler;
    const/16 v0, 0x2329

    invoke-virtual {v6, v0}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v8

    .line 658
    .local v8, "listWindow":Lcom/hz/gui/GWindow;
    if-ltz v9, :cond_0

    invoke-virtual {v8}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 666
    invoke-virtual {v8, v9}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v7

    .line 667
    .local v7, "focusWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v1

    .line 668
    .local v1, "absX":I
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v2

    .line 669
    .local v2, "absY":I
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getW()I

    move-result v3

    .line 670
    .local v3, "absW":I
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    .local v4, "absH":I
    move-object v0, p0

    .line 672
    invoke-virtual/range {v0 .. v5}, Lcom/hz/core/Escort;->setAbsByGWidget(IIIILcom/hz/actor/ListPlayer;)V

    goto :goto_0
.end method
