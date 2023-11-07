.class public Lcom/hz/main/MsgHandler;
.super Ljava/lang/Object;
.source "MsgHandler.java"


# static fields
.field public static final ACTOR_LOGIN_NEED_IMAGE_CHECK:B = -0xdt

.field public static final ACTOR_LOGIN_VERSIONOLD:B = -0xct

.field public static final CHECK_VERSION_LOW:B = 0x1t

.field public static final CHECK_VERSION_NONE:B = 0x0t

.field public static final CREATE_ERR_NEED_IMAGE_CHECK:B = -0xdt

.field public static final CREATE_ERR_REGISTER:B = -0x10t

.field public static GAME_IP:Ljava/lang/String; = null

.field public static final HEART_BEAT_TIME:J = 0x3a98L

.field public static final HTTP:I = 0x2

.field private static HTTP_SERVER:Ljava/lang/String; = null

.field public static final HTTP_SYNC_INTERVAL:J = 0x2710L

.field public static final IP:Ljava/lang/String; = "123.30.142.219"

.field public static final IP_TEST:Ljava/lang/String; = "123.30.133.164"

.field public static final LOGIN_PROT_HTTP:Ljava/lang/String; = ":8079"

.field public static final LOGIN_PROT_SOCKET:Ljava/lang/String; = ":30000"

.field private static final MAP_IMAGE_MAX:I = 0x6d60

.field private static final MAX_OTHER_MOVE_TO:I = 0x5

.field public static MSG_RECEIVE_HTTP:B = 0x0t

.field public static MSG_RECEIVE_NONE:B = 0x0t

.field public static MSG_RECEIVE_SOCKET:B = 0x0t

.field public static final PET_INFO_CHAT:I = 0x5

.field public static final PET_INFO_GOODS:I = 0x2

.field public static final PET_INFO_MAIL:I = 0x3

.field public static final PET_INFO_PLAYER_SHOP:I = 0x1

.field public static final PET_INFO_SEE_PLAYER:I = 0x4

.field public static PHOTO_IP:Ljava/lang/String; = null

.field public static final PHOTO_PROT_HTTP:Ljava/lang/String; = ":28080"

.field public static final SOCKET:I = 0x1

.field public static final SYNC_HTTP_INTERVAL:J = 0x2710L

.field public static final SYNC_SOCKET_INTERVAL:J = 0x1388L

.field public static final TYPE_AUTO_CREATE_ERR_NEED_IMAGE_CHECK:B = 0x3t

.field public static final TYPE_CREATE_ERR_NEED_IMAGE_CHECK:B = 0x2t

.field public static final TYPE_LOGIN_ERR_NEED_IMAGE_CHECK:B = 0x1t

.field public static final WAR_UNION_TYPE_ALL:B = 0x3t

.field public static final WAR_UNION_TYPE_OTHER:B = 0x2t

.field public static final WAR_UNION_TYPE_UNION:B = 0x1t

.field public static WORLD_REFLASH_ALL:B

.field public static WORLD_REFLASH_BASE:B

.field public static WORLD_REFLASH_NONE:B

.field public static allMessages:Ljava/util/Vector;

.field public static connMode:I

.field public static httpConn:Lcom/hz/net/HttpConnector;

.field private static httpRequestSerial:B

.field public static isRequestWaiting:Z

.field private static isShowMapImageTag:Z

.field public static jumpMapMsg:Lcom/hz/net/Message;

.field public static lastMoveTOGx:B

.field public static lastMoveTOGy:B

.field public static loadingText:Ljava/lang/String;

.field private static loginOrRegister:Z

.field public static msgReceiveTag:B

.field static nextHeartBeat:J

.field public static nextSyncTime:J

.field private static receiveMsg:Lcom/hz/net/Message;

.field private static sendMsgType:I

.field public static socketConn:Lcom/hz/net/SocketServer;

.field private static syncList:Ljava/util/Vector;

.field public static timeStamp:I

.field public static waitTimeOutCount:B

.field public static waitingStartTime:J

.field public static worldReflashType:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    sput-boolean v1, Lcom/hz/main/MsgHandler;->loginOrRegister:Z

    .line 148
    const-string v0, "123.30.142.219"

    sput-object v0, Lcom/hz/main/MsgHandler;->GAME_IP:Ljava/lang/String;

    .line 152
    sput-byte v1, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_NONE:B

    .line 153
    sput-byte v3, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_ALL:B

    .line 154
    sput-byte v4, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_BASE:B

    .line 156
    sget-byte v0, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_NONE:B

    sput-byte v0, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 162
    sput-byte v1, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    .line 163
    sput-byte v3, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_HTTP:B

    .line 164
    sput-byte v4, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_SOCKET:B

    .line 165
    sget-byte v0, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    sput-byte v0, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    .line 171
    sput-boolean v1, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 188
    const-string v0, "H\u00e3y \u0111\u1ee3i..."

    sput-object v0, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 237
    sput v3, Lcom/hz/main/MsgHandler;->connMode:I

    .line 256
    sput v1, Lcom/hz/main/MsgHandler;->timeStamp:I

    .line 268
    sput-object v2, Lcom/hz/main/MsgHandler;->jumpMapMsg:Lcom/hz/net/Message;

    .line 270
    const/4 v0, -0x1

    sput v0, Lcom/hz/main/MsgHandler;->sendMsgType:I

    .line 271
    sput-object v2, Lcom/hz/main/MsgHandler;->receiveMsg:Lcom/hz/net/Message;

    .line 296
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    .line 485
    sput-object v2, Lcom/hz/main/MsgHandler;->HTTP_SERVER:Ljava/lang/String;

    .line 495
    sput-object v2, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    .line 559
    sput-object v2, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    .line 1063
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    .line 5015
    sput-boolean v3, Lcom/hz/main/MsgHandler;->isShowMapImageTag:Z

    .line 12983
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1065
    if-nez p0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1073
    :cond_0
    sget-byte v0, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_SOCKET:B

    sput-byte v0, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    .line 1075
    sget-object v0, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addSyncMessage(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v0, :cond_1

    .line 305
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static allClear()V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 261
    invoke-static {}, Lcom/hz/main/MsgHandler;->cleanMsgTag()V

    .line 262
    const/4 v0, 0x0

    sput-byte v0, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    .line 263
    return-void
.end method

.method public static checkNetWaitTimeOut()Z
    .locals 2

    .prologue
    .line 179
    sget-byte v0, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeConnect()V

    .line 184
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->toNetWorkError(I)V

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cleanMsgTag()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, -0x1

    sput v0, Lcom/hz/main/MsgHandler;->sendMsgType:I

    .line 274
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/MsgHandler;->receiveMsg:Lcom/hz/net/Message;

    .line 275
    return-void
.end method

.method public static closeConnect()V
    .locals 0

    .prologue
    .line 815
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeHttpConnection()V

    .line 816
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeSocketConnection()V

    .line 817
    return-void
.end method

.method public static closeHttpConnection()V
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/hz/net/HttpConnector;->isRunning:Z

    .line 506
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v0}, Lcom/hz/net/HttpConnector;->notifyMe()V

    .line 508
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    .line 509
    return-void
.end method

.method public static closeSocketConnection()V
    .locals 3

    .prologue
    .line 564
    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v0, :cond_0

    .line 571
    :try_start_0
    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/hz/net/SocketServer;->setSetting(ZB)V

    .line 572
    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    invoke-virtual {v0}, Lcom/hz/net/SocketServer;->stopNetwork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    .line 579
    :cond_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static create91Pay(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 12444
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b19

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12445
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12446
    return-object v0
.end method

.method public static createAchieveGainReward(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I
    .param p1, "type"    # I

    .prologue
    .line 11205
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b11

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11206
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11207
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11208
    return-object v0
.end method

.method public static createAchieveGetInfo()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11135
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b0f

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11136
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createAchieveList(IIII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I
    .param p1, "tabType"    # I
    .param p2, "pageNum"    # I
    .param p3, "pageSize"    # I

    .prologue
    .line 11171
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b10

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11172
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11173
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11174
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 11175
    int-to-short v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11176
    return-object v0
.end method

.method public static createAchieveTitleList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11294
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b12

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11295
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createAchieveUseTitle(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 11309
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b13

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11310
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11311
    return-object v0
.end method

.method public static createAddPlayerMsg(Lcom/hz/actor/ListPlayer;)Lcom/hz/net/Message;
    .locals 10
    .param p0, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    .line 5777
    if-nez p0, :cond_0

    .line 5778
    const/4 v5, 0x0

    .line 5816
    :goto_0
    return-object v5

    .line 5787
    :cond_0
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getSex()B

    move-result v8

    .line 5788
    .local v8, "sex":B
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getRace()B

    move-result v7

    .line 5789
    .local v7, "race":B
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getJob()B

    move-result v4

    .line 5790
    .local v4, "job":B
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getIcon1()I

    move-result v1

    .line 5791
    .local v1, "icon1":I
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getIcon2()I

    move-result v2

    .line 5792
    .local v2, "icon2":I
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getIcon3()I

    move-result v3

    .line 5793
    .local v3, "icon3":I
    invoke-virtual {p0}, Lcom/hz/actor/ListPlayer;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5802
    .local v6, "name":Ljava/lang/String;
    const-string v0, ""

    .line 5804
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/lori/common/Tool;->getgetDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 5807
    new-instance v5, Lcom/hz/net/Message;

    const/16 v9, 0x2712

    invoke-direct {v5, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 5808
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-virtual {v5, v8}, Lcom/hz/net/Message;->putByte(B)V

    .line 5809
    invoke-virtual {v5, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 5810
    invoke-virtual {v5, v4}, Lcom/hz/net/Message;->putByte(B)V

    .line 5811
    invoke-virtual {v5, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 5812
    invoke-virtual {v5, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 5813
    invoke-virtual {v5, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 5814
    invoke-virtual {v5, v6}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5815
    invoke-virtual {v5, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createAndroidQQPay()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12022
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b51

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12023
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createAreaLineListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 5728
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x138f

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5729
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createArenaEnter(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 13475
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38bd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13476
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13477
    return-object v0
.end method

.method public static createArenaExit()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13520
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38c0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13521
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createArenaFight(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "gridID"    # I

    .prologue
    .line 13505
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38bf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13506
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13507
    return-object v0
.end method

.method public static createArenaRefresh()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13490
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38be

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13491
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createAttrAddMessage(Ljava/util/Vector;)Lcom/hz/net/Message;
    .locals 4
    .param p0, "dataV"    # Ljava/util/Vector;

    .prologue
    .line 6244
    if-nez p0, :cond_1

    .line 6245
    const/4 v2, 0x0

    .line 6261
    :cond_0
    return-object v2

    .line 6248
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v3, 0x2afb

    invoke-direct {v2, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 6250
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 6251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 6252
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 6253
    .local v0, "att":[S
    if-nez v0, :cond_2

    .line 6251
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6257
    :cond_2
    const/4 v3, 0x0

    aget-short v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putShort(S)V

    .line 6258
    const/4 v3, 0x1

    aget-short v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_1
.end method

.method public static createAutoCreateActor(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "sex"    # I
    .param p1, "style"    # I

    .prologue
    .line 12246
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2715

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12247
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12248
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12249
    return-object v0
.end method

.method public static createAutoCreatePlayer()Lcom/hz/net/Message;
    .locals 3

    .prologue
    .line 12221
    const-string v0, ""

    .line 12223
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/lori/common/Tool;->getgetDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 12226
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x138b

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 12227
    .local v1, "msg":Lcom/hz/net/Message;
    sget-object v2, Lcom/hz/main/GameWorld;->handset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12228
    sget-object v2, Lcom/hz/main/GameWorld;->strImgAutoCheck:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12229
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12231
    return-object v1
.end method

.method public static createAutoMoveMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "missionID"    # I

    .prologue
    .line 11380
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2916

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11381
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11382
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11383
    return-object v0
.end method

.method public static createAutoMoveMsg(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mapID"    # I
    .param p1, "npcID"    # I

    .prologue
    .line 11368
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2916

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11369
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11370
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11371
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11372
    return-object v0
.end method

.method public static createAutoSkillMsg(Lcom/hz/actor/Player;IZ)Lcom/hz/net/Message;
    .locals 4
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "skillID"    # I
    .param p2, "isActive"    # Z

    .prologue
    .line 6625
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x36b4

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 6626
    .local v0, "msg":Lcom/hz/net/Message;
    if-nez p2, :cond_0

    .line 6627
    const/16 v2, 0x36b5

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->setType(S)V

    .line 6631
    :cond_0
    const/4 v1, 0x0

    .line 6632
    .local v1, "skillType":B
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 6633
    const/4 v1, 0x1

    .line 6635
    :cond_1
    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6636
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 6637
    return-object v0
.end method

.method public static createBagRefreshMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 7277
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ee3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7278
    .local v0, "msg":Lcom/hz/net/Message;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 7279
    return-object v0
.end method

.method public static createBattlePlan(B[B[B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "round"    # B
    .param p1, "playerPlanData"    # [B
    .param p2, "petPlanData"    # [B

    .prologue
    .line 6422
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30d9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6423
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 6424
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBytes([B)V

    .line 6426
    if-nez p2, :cond_0

    .line 6427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6433
    :goto_0
    return-object v0

    .line 6430
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6431
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putBytes([B)V

    goto :goto_0
.end method

.method public static createBattleUpdate(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "round"    # B

    .prologue
    .line 6449
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30da

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6450
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 6451
    return-object v0
.end method

.method public static createBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/net/Message;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "telephone"    # Ljava/lang/String;
    .param p3, "isTelePhoto"    # Z

    .prologue
    .line 12320
    const/16 v0, 0x2718

    .line 12322
    .local v0, "messageType":S
    if-nez p3, :cond_0

    .line 12323
    const/16 v0, 0x271a

    .line 12326
    :cond_0
    new-instance v1, Lcom/hz/net/Message;

    invoke-direct {v1, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 12327
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12328
    invoke-virtual {v1, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12329
    invoke-virtual {v1, p2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12330
    return-object v1
.end method

.method public static createBrowseCityInfoMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I

    .prologue
    .line 6105
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x290f

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6106
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6107
    return-object v0
.end method

.method public static createBrowseCountryInfoMsg(IB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "type"    # B

    .prologue
    .line 9909
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3a9a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9910
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9911
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9913
    return-object v0
.end method

.method public static createBrowseSkillShop(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "skillShopID"    # S

    .prologue
    .line 6565
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x36b1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6566
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 6567
    return-object v0
.end method

.method public static createCGAMEBilling(I)Lcom/hz/net/Message;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 11967
    move v0, p0

    .line 11969
    .local v0, "idchang":I
    if-lez v0, :cond_0

    .line 11970
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x4269

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 11972
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 11973
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 11979
    .end local v1    # "msg":Lcom/hz/net/Message;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createCGAMEInGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 9
    .param p0, "cardNumber"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "defineId"    # Ljava/lang/String;
    .param p3, "payType"    # Ljava/lang/String;
    .param p4, "openType"    # Ljava/lang/String;

    .prologue
    .line 11912
    const-string v5, ""

    .line 11913
    .local v5, "os":Ljava/lang/String;
    const-string v0, ""

    .line 11915
    .local v0, "clientIP":Ljava/lang/String;
    const-string v5, "Android"

    .line 11916
    sget-object v7, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v7}, Lcom/lori/app/PipActivity;->getClientIP()Ljava/lang/String;

    move-result-object v0

    .line 11933
    new-instance v4, Lcom/hz/net/Message;

    const/16 v7, 0x426a

    invoke-direct {v4, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 11935
    .local v4, "msg":Lcom/hz/net/Message;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 11936
    .local v2, "hm":Ljava/util/Hashtable;
    const-string v7, "cardNumber"

    invoke-virtual {v2, v7, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11937
    const-string v7, "cardPassword"

    invoke-virtual {v2, v7, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11938
    const-string v7, "clientIP"

    const-string v8, "123.30.142.219"

    invoke-virtual {v2, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11939
    const-string v7, "clientOS"

    invoke-virtual {v2, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11940
    const-string v7, "telco"

    invoke-virtual {v2, v7, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11942
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/net/Message;->putInt(I)V

    .line 11944
    const-string v7, "defineId"

    invoke-virtual {v2, v7, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11945
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/hz/net/Message;->putInt(I)V

    .line 11947
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 11948
    .local v1, "e2":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_0

    .line 11957
    return-object v4

    .line 11949
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11950
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 11953
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 11954
    invoke-virtual {v4, v6}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createCampInfo()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12879
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12880
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCancelBind(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 12379
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x1393

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12380
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12381
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12382
    return-object v0
.end method

.method public static createCancelDelPlayerMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerID"    # I

    .prologue
    .line 5836
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2714

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5837
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 5838
    return-object v0
.end method

.method public static createChangeSettingMessgae(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "setting"    # I

    .prologue
    .line 6550
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2afe

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6551
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6552
    return-object v0
.end method

.method public static createChatMsg(ILjava/lang/String;I)Lcom/hz/net/Message;
    .locals 1
    .param p0, "channel"    # I
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "targetID"    # I

    .prologue
    .line 7428
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/hz/main/MsgHandler;->createChatMsg(ILjava/lang/String;II)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createChatMsg(ILjava/lang/String;II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "channel"    # I
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "targetID"    # I
    .param p3, "type"    # I

    .prologue
    .line 7436
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34c5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7437
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 7438
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 7439
    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 7441
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 7442
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 7444
    :cond_0
    return-object v0
.end method

.method public static createChatSeeItem(I[S)Lcom/hz/net/Message;
    .locals 3
    .param p0, "playerID"    # I
    .param p1, "itemIDList"    # [S

    .prologue
    .line 12127
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x34de

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 12128
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12129
    if-nez p1, :cond_1

    .line 12130
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 12138
    :cond_0
    return-object v1

    .line 12133
    :cond_1
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 12134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 12135
    aget-short v2, p1, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 12134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createChatSeeMission(I[S)Lcom/hz/net/Message;
    .locals 3
    .param p0, "playerID"    # I
    .param p1, "MissionIDList"    # [S

    .prologue
    .line 12153
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x34df

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 12154
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12155
    if-nez p1, :cond_1

    .line 12156
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 12164
    :cond_0
    return-object v1

    .line 12159
    :cond_1
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 12160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 12161
    aget-short v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 12160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createCheckEditionMsg(B)Lcom/hz/net/Message;
    .locals 3
    .param p0, "flag"    # B

    .prologue
    .line 5557
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 5558
    .local v0, "msg":Lcom/hz/net/Message;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 5559
    const v2, 0x5593c

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 5560
    sget-short v2, Lcom/hz/main/GameWorld;->CP_ID:S

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 5561
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 5562
    sget-object v2, Lcom/hz/main/GameWorld;->handset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5563
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 5567
    const/4 v1, 0x2

    .line 5571
    .local v1, "type":B
    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 5573
    return-object v0
.end method

.method public static createCheckHttpMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11664
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x1390

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11665
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCombinConfirm(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B

    .prologue
    .line 13231
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2cf1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13232
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 13233
    return-object v0
.end method

.method public static createCombinItem(SLcom/hz/core/ShopItem;SI)Lcom/hz/net/Message;
    .locals 4
    .param p0, "shopID"    # S
    .param p1, "item"    # Lcom/hz/core/ShopItem;
    .param p2, "bagSlotPos"    # S
    .param p3, "bagItemID"    # I

    .prologue
    .line 13196
    if-nez p1, :cond_0

    .line 13197
    const/4 v2, 0x0

    .line 13218
    :goto_0
    return-object v2

    .line 13200
    :cond_0
    invoke-virtual {p1}, Lcom/hz/core/ShopItem;->getPrice()I

    move-result v0

    .line 13201
    .local v0, "money":I
    invoke-virtual {p1}, Lcom/hz/core/ShopItem;->getMoneyType()I

    move-result v1

    .line 13208
    .local v1, "moneyType":I
    new-instance v2, Lcom/hz/net/Message;

    const/16 v3, 0x2cf0

    invoke-direct {v2, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 13209
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 13210
    iget v3, p1, Lcom/hz/core/ShopItem;->id:I

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 13211
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putShort(S)V

    .line 13212
    invoke-virtual {v2, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 13215
    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 13216
    invoke-virtual {v2, v0}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0
.end method

.method public static createCombinShop(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "shopID"    # S

    .prologue
    .line 13183
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2cef

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13184
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 13185
    return-object v0
.end method

.method public static createCommandCreateWarDeclareList(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "searchType"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 12669
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ae4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12670
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12671
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12672
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12673
    return-object v0
.end method

.method public static createCountryActiveMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I

    .prologue
    .line 9794
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3a9b

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9795
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9796
    return-object v0
.end method

.method public static createCountryAdjustJobMessage(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "actorID"    # I
    .param p1, "grade"    # I

    .prologue
    .line 11691
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aaa

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11692
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 11693
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11694
    return-object v0
.end method

.method public static createCountryAfficheModifyMsg(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "affiche"    # Ljava/lang/String;

    .prologue
    .line 9926
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aba

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9927
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 9928
    return-object v0
.end method

.method public static createCountryApply(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I

    .prologue
    .line 9808
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9809
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9810
    return-object v0
.end method

.method public static createCountryApplyDealMsg(IZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "aid"    # I
    .param p1, "isOk"    # Z

    .prologue
    .line 10002
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10003
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10004
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 10005
    return-object v0
.end method

.method public static createCountryAssignMem(IIIZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I
    .param p2, "missionID"    # I
    .param p3, "isFirst"    # Z

    .prologue
    .line 11781
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11782
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11783
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11784
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 11785
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 11786
    return-object v0
.end method

.method public static createCountryAssignMission(ILjava/util/Vector;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "missionID"    # I
    .param p1, "ids"    # Ljava/util/Vector;

    .prologue
    .line 11797
    if-nez p1, :cond_1

    .line 11798
    const/4 v1, 0x0

    .line 11811
    :cond_0
    return-object v1

    .line 11805
    :cond_1
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x3ab8

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 11806
    .local v1, "msg":Lcom/hz/net/Message;
    int-to-short v2, p0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 11807
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11808
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 11809
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 11808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createCountryAssingMission()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11739
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11740
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryBecomeKingMessage(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "actorID"    # I

    .prologue
    .line 11708
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aab

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11709
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 11710
    return-object v0
.end method

.method public static createCountryBookMsg(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B

    .prologue
    .line 10124
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aae

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10125
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 10126
    return-object v0
.end method

.method public static createCountryBookMsg(BI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "id"    # I

    .prologue
    .line 10134
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aae

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10135
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 10136
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10137
    return-object v0
.end method

.method public static createCountryBossFight(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 13400
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38cf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13401
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13402
    return-object v0
.end method

.method public static createCountryBossNotFight()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13415
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38d2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13416
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryBossQuit()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13385
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38d0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13386
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryBossRefresh()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13312
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38ce

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13313
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryBuildingRemoveMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "buildId"    # I

    .prologue
    .line 9956
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aad

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9957
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9958
    return-object v0
.end method

.method public static createCountryBuildingUpgradeMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "buildId"    # I

    .prologue
    .line 9941
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aac

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9942
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9943
    return-object v0
.end method

.method public static createCountryChangeName(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "newName"    # Ljava/lang/String;

    .prologue
    .line 10074
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBookMsg(B)Lcom/hz/net/Message;

    move-result-object v0

    .line 10075
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10076
    return-object v0
.end method

.method public static createCountryChangeResource(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "fromId"    # I
    .param p1, "toId"    # I
    .param p2, "changeNum"    # I

    .prologue
    .line 10107
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBookMsg(B)Lcom/hz/net/Message;

    move-result-object v0

    .line 10108
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10109
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 10110
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10111
    return-object v0
.end method

.method public static createCountryCreateMsg(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryName"    # Ljava/lang/String;

    .prologue
    .line 9778
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3a99

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9779
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 9780
    return-object v0
.end method

.method public static createCountryCreateWarCommand(IIIZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I
    .param p1, "money1"    # I
    .param p2, "money3"    # I
    .param p3, "istest"    # Z

    .prologue
    .line 10094
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBookMsg(B)Lcom/hz/net/Message;

    move-result-object v0

    .line 10095
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10096
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 10097
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 10098
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 10099
    return-object v0
.end method

.method public static createCountryDelMemMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "aid"    # I

    .prologue
    .line 10014
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10015
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10016
    return-object v0
.end method

.method public static createCountryEnterRate(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "money1"    # I
    .param p2, "money3"    # I

    .prologue
    .line 9877
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9878
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9879
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9880
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 9881
    return-object v0
.end method

.method public static createCountryExchargeData()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12415
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3abe

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12416
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryGetAllMission()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12062
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3abc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12063
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryGetMission(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "missionType"    # I

    .prologue
    .line 11724
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11725
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11726
    return-object v0
.end method

.method public static createCountryInvite(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I

    .prologue
    .line 9893
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9894
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9895
    return-object v0
.end method

.method public static createCountryKingCommand(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "num"    # B

    .prologue
    .line 10084
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBookMsg(B)Lcom/hz/net/Message;

    move-result-object v0

    .line 10085
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 10086
    return-object v0
.end method

.method public static createCountryLeaveMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 9764
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9765
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryListMsg(BSILjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "buildingID"    # B
    .param p1, "curPage"    # S
    .param p2, "pageNum"    # I
    .param p3, "countryName"    # Ljava/lang/String;

    .prologue
    .line 10061
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3a9c

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10062
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 10063
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10064
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 10065
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10066
    return-object v0
.end method

.method public static createCountryMainMenu()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12176
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3abd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12177
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryMemberAppleListMsg(SI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # S
    .param p1, "pageNum"    # I

    .prologue
    .line 9990
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9991
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 9992
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9993
    return-object v0
.end method

.method public static createCountryMemberListMsg(IBSIB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "rank"    # B
    .param p2, "curPage"    # S
    .param p3, "pageNum"    # I
    .param p4, "searchType"    # B

    .prologue
    .line 9975
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9976
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9977
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9978
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putShort(S)V

    .line 9979
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 9980
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putByte(B)V

    .line 9981
    return-object v0
.end method

.method public static createCountryPeopleDonate(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    .line 12078
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aaf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12079
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12080
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 12081
    return-object v0
.end method

.method public static createCountryPublishMission(ILjava/util/Vector;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "missionType"    # I
    .param p1, "ids"    # Ljava/util/Vector;

    .prologue
    .line 11750
    if-nez p1, :cond_1

    .line 11751
    const/4 v1, 0x0

    .line 11764
    :cond_0
    return-object v1

    .line 11758
    :cond_1
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x3ab5

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 11759
    .local v1, "msg":Lcom/hz/net/Message;
    int-to-byte v2, p0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11760
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 11762
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 11761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createCountryRecruitMsg(IZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "isOpen"    # Z

    .prologue
    .line 9824
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3a9e

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9825
    .local v0, "msg":Lcom/hz/net/Message;
    if-eqz p1, :cond_0

    .line 9826
    const/16 v1, 0x3a9d

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->setType(S)V

    .line 9828
    :cond_0
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9829
    return-object v0
.end method

.method public static createCountrySetOnlineNotify(IZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "onlineNotify"    # Z

    .prologue
    .line 9843
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ae5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9845
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 9846
    return-object v0
.end method

.method public static createCountryStorageDel(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "itemUID"    # J

    .prologue
    .line 11592
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11593
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 11594
    return-object v0
.end method

.method public static createCountryStorageGet(ZJ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "isSystem"    # Z
    .param p1, "itemUID"    # J

    .prologue
    .line 11625
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11626
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 11627
    invoke-virtual {v0, p1, p2}, Lcom/hz/net/Message;->putLong(J)V

    .line 11628
    return-object v0
.end method

.method public static createCountryStorageList(Z)Lcom/hz/net/Message;
    .locals 2
    .param p0, "isSystem"    # Z

    .prologue
    .line 11608
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11609
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 11610
    return-object v0
.end method

.method public static createCountryStoragePut(IIII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "slotPos"    # I
    .param p1, "count"    # I
    .param p2, "itemID"    # I
    .param p3, "contribution"    # I

    .prologue
    .line 11573
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11574
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11575
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11576
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 11577
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 11578
    return-object v0
.end method

.method public static createCountryTaxRate(IS)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "taxRate"    # S

    .prologue
    .line 9859
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3a9f

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9860
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9861
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 9862
    return-object v0
.end method

.method public static createCountryValidMission()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12429
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ab9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12430
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryWarArmyList(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "buildPos"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 12575
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12576
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12577
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12578
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12579
    return-object v0
.end method

.method public static createCountryWarCommandList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12616
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12617
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryWarEnter(Z)Lcom/hz/net/Message;
    .locals 2
    .param p0, "isNotView"    # Z

    .prologue
    .line 12516
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3abf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12517
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 12518
    return-object v0
.end method

.method public static createCountryWarOperArmy(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "buildPos"    # I
    .param p1, "actorId"    # I

    .prologue
    .line 12600
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12601
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12602
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 12603
    return-object v0
.end method

.method public static createCountryWarUpdate()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12556
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12557
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createCountryWarUseCommand(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 12631
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12632
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12633
    return-object v0
.end method

.method public static createDelPlayerMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerID"    # I

    .prologue
    .line 5824
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2713

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5825
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 5826
    return-object v0
.end method

.method public static createDeleteSoldier(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "actorID"    # I

    .prologue
    .line 12894
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12895
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12896
    return-object v0
.end method

.method public static createDropSkill(IB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "skillID"    # I
    .param p1, "skillType"    # B

    .prologue
    .line 6579
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x36b3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6580
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6581
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6582
    return-object v0
.end method

.method public static createDropSkillOneLevel(IB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "skillID"    # I
    .param p1, "skillType"    # B

    .prologue
    .line 6594
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x36b6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6595
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6596
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6597
    return-object v0
.end method

.method public static createEnterLocalBattle()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 6366
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30d5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6367
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createEnterRemoteBattle(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "groupID"    # I

    .prologue
    .line 6379
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30d7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6380
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6381
    return-object v0
.end method

.method public static createEscortEventMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "eventID"    # I

    .prologue
    .line 10954
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10955
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10956
    return-object v0
.end method

.method public static createEscortListPlayer()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11337
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11338
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createEscortMoveMsg(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "row"    # I
    .param p1, "col"    # I

    .prologue
    .line 10890
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38ae

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10891
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10892
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10893
    return-object v0
.end method

.method public static createEscortPostQuit()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 10979
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38ad

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10980
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createEscortRefreshMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "round"    # I

    .prologue
    .line 10921
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38af

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10922
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10923
    return-object v0
.end method

.method public static createEscortRob(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 11106
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11107
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 11108
    return-object v0
.end method

.method public static createEscortRobList(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 11007
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11008
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11009
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11010
    return-object v0
.end method

.method public static createFightSeeInterMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I

    .prologue
    .line 6393
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30dc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6394
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6395
    return-object v0
.end method

.method public static createFightSeeQuitMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 6406
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30dd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6407
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createFindPassword(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "bindPhone"    # Ljava/lang/String;

    .prologue
    .line 12362
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x1392

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12363
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12364
    return-object v0
.end method

.method public static createFirstGameServerMsg()Lcom/hz/net/Message;
    .locals 4

    .prologue
    .line 5747
    new-instance v0, Lcom/hz/net/Message;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 5748
    .local v0, "msg":Lcom/hz/net/Message;
    sget-wide v2, Lcom/hz/main/GameWorld;->ukey:J

    invoke-virtual {v0, v2, v3}, Lcom/hz/net/Message;->putLong(J)V

    .line 5749
    sget v2, Lcom/hz/main/GameWorld;->sessionID:I

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 5750
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 5751
    const v2, 0x5593c

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 5755
    const/4 v1, 0x2

    .line 5759
    .local v1, "type":B
    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 5761
    return-object v0
.end method

.method public static createGameLineMsg(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "lineID"    # J

    .prologue
    .line 5738
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x138e

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5739
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 5740
    return-object v0
.end method

.method public static createGetAlbumsListMsg(ILjava/lang/String;IIB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "searchtype"    # I
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I
    .param p4, "tag"    # B

    .prologue
    .line 10504
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b0c

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10505
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10506
    if-eqz p0, :cond_0

    .line 10507
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10509
    :cond_0
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 10510
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10511
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putByte(B)V

    .line 10512
    return-object v0
.end method

.method public static createGetCityMoneyMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "cityMasterId"    # I

    .prologue
    .line 6176
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2910

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6177
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6178
    return-object v0
.end method

.method public static createGetMissionDataMsg(S)Lcom/hz/net/Message;
    .locals 7
    .param p0, "npcID"    # S

    .prologue
    .line 6694
    new-instance v5, Lcom/hz/net/Message;

    const/16 v6, 0x38a5

    invoke-direct {v5, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 6695
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-virtual {v5, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 6698
    sget-object v6, Lcom/hz/main/GameWorld;->monsterGroupList:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v1, v6, [S

    .line 6699
    .local v1, "groupList":[S
    const/4 v3, 0x0

    .line 6700
    .local v3, "k":I
    sget-object v6, Lcom/hz/main/GameWorld;->monsterGroupList:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_0

    .line 6704
    array-length v6, v1

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 6705
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 6710
    sget-object v6, Lcom/hz/main/GameWorld;->monsterList:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v4, v6, [S

    .line 6711
    .local v4, "monsterList":[S
    const/4 v3, 0x0

    .line 6712
    sget-object v6, Lcom/hz/main/GameWorld;->monsterList:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6716
    array-length v6, v4

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 6717
    const/4 v2, 0x0

    :goto_3
    array-length v6, v4

    if-lt v2, v6, :cond_3

    .line 6724
    return-object v5

    .line 6702
    .end local v2    # "i":I
    .end local v4    # "monsterList":[S
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    aput-short v6, v1, v3

    .line 6700
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6706
    .restart local v2    # "i":I
    :cond_1
    aget-short v6, v1, v2

    invoke-virtual {v5, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 6705
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6714
    .restart local v4    # "monsterList":[S
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    aput-short v6, v4, v3

    .line 6712
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6718
    :cond_3
    aget-short v6, v4, v2

    invoke-virtual {v5, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 6717
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static createGetNPCData([B)Lcom/hz/net/Message;
    .locals 3
    .param p0, "npcList"    # [B

    .prologue
    .line 11392
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x2917

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 11393
    .local v1, "msg":Lcom/hz/net/Message;
    if-nez p0, :cond_1

    .line 11394
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11402
    :cond_0
    return-object v1

    .line 11397
    :cond_1
    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 11399
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createGetSpriteMessage([S[S)Lcom/hz/net/Message;
    .locals 4
    .param p0, "sprIDList"    # [S
    .param p1, "skipFrIDList"    # [S

    .prologue
    const/4 v3, 0x0

    .line 11411
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x2918

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 11412
    .local v1, "msg":Lcom/hz/net/Message;
    if-nez p0, :cond_2

    .line 11413
    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 11421
    :cond_0
    if-nez p1, :cond_3

    .line 11422
    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 11430
    :cond_1
    return-object v1

    .line 11416
    :cond_2
    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 11418
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 11417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11425
    .end local v0    # "i":I
    :cond_3
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 11426
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 11427
    aget-short v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 11426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createGetSuitInfoMsg([B)Lcom/hz/net/Message;
    .locals 3
    .param p0, "suitIDList"    # [B

    .prologue
    .line 10701
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x2ced

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 10703
    .local v1, "msg":Lcom/hz/net/Message;
    if-nez p0, :cond_1

    .line 10704
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 10712
    :cond_0
    return-object v1

    .line 10707
    :cond_1
    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 10708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 10709
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 10708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createGoodsAutoProvide(Lcom/hz/core/Item;I[I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "num"    # I
    .param p2, "money"    # [I

    .prologue
    .line 9218
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 9219
    :cond_0
    const/4 v0, 0x0

    .line 9232
    :goto_0
    return-object v0

    .line 9226
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9227
    .local v0, "msg":Lcom/hz/net/Message;
    iget-short v1, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 9228
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9229
    iget v1, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9230
    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9231
    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0
.end method

.method public static createGoodsProvideMsg(JI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "goodId"    # J
    .param p2, "num"    # I

    .prologue
    .line 9267
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9268
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 9269
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 9270
    return-object v0
.end method

.method public static createGoodsPurchaseCancel(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "goodId"    # J

    .prologue
    .line 9500
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9501
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 9502
    return-object v0
.end method

.method public static createGoodsPurchaseGet(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "goodId"    # J

    .prologue
    .line 9419
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9420
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 9421
    return-object v0
.end method

.method public static createGoodsPurchaseList(BIBBSI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "_type"    # B
    .param p1, "_itemid"    # I
    .param p2, "_sortObj"    # B
    .param p3, "_sortType"    # B
    .param p4, "pageSize"    # S
    .param p5, "pageNum"    # I

    .prologue
    .line 9351
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9352
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 9353
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9354
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 9355
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putByte(B)V

    .line 9356
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putShort(S)V

    .line 9357
    invoke-virtual {v0, p5}, Lcom/hz/net/Message;->putInt(I)V

    .line 9358
    return-object v0
.end method

.method public static createGoodsPurchaseMyList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 9391
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9392
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createGoodsPurchaseSubmit(ISII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I
    .param p1, "num"    # S
    .param p2, "money1"    # I
    .param p3, "money3"    # I

    .prologue
    .line 9462
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9463
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9464
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 9465
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 9466
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 9467
    return-object v0
.end method

.method public static createGoodsPurchaseTypeList(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 9535
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9536
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9537
    return-object v0
.end method

.method public static createGoodsSellBuy(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "goodId"    # J

    .prologue
    .line 9173
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34cd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9174
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 9175
    return-object v0
.end method

.method public static createGoodsSellFind(BBBBBLjava/lang/String;SI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "grade"    # B
    .param p2, "level"    # B
    .param p3, "sortObj"    # B
    .param p4, "sortType"    # B
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "pageSize"    # S
    .param p7, "pageNum"    # I

    .prologue
    .line 9129
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34cc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9130
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 9131
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9132
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 9133
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putByte(B)V

    .line 9134
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putByte(B)V

    .line 9135
    invoke-virtual {v0, p5}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 9136
    invoke-virtual {v0, p6}, Lcom/hz/net/Message;->putShort(S)V

    .line 9137
    invoke-virtual {v0, p7}, Lcom/hz/net/Message;->putInt(I)V

    .line 9138
    return-object v0
.end method

.method public static createGoodsSellList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 9092
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9093
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createGoodsSellRetrieve(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "goodId"    # J

    .prologue
    .line 9055
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34cf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9056
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 9057
    return-object v0
.end method

.method public static createGoodsSellSubmit(Lcom/hz/core/Item;BII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "num"    # B
    .param p2, "money1"    # I
    .param p3, "money3"    # I

    .prologue
    .line 9008
    if-nez p0, :cond_0

    .line 9009
    const/4 v0, 0x0

    .line 9022
    :goto_0
    return-object v0

    .line 9016
    :cond_0
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34ce

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9017
    .local v0, "msg":Lcom/hz/net/Message;
    iget-short v1, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 9018
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9019
    iget v1, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9020
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 9021
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0
.end method

.method public static createGoogleCheck(IIIIIILjava/lang/String;)Lcom/hz/net/Message;
    .locals 8
    .param p0, "datatype"    # I
    .param p1, "transtype"    # I
    .param p2, "key"    # I
    .param p3, "splitNum"    # I
    .param p4, "seqNum"    # I
    .param p5, "totleLength"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x38

    .line 13568
    new-instance v4, Lcom/hz/net/Message;

    const/16 v5, 0x426a

    invoke-direct {v4, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 13570
    .local v4, "msg":Lcom/hz/net/Message;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 13571
    .local v3, "hm":Ljava/util/Hashtable;
    const-string v5, "datatype"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13572
    const-string v5, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13573
    const-string v5, "key"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13574
    const-string v5, "splitNum"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13575
    const-string v5, "seqNum"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13576
    const-string v5, "totleLength"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13577
    const-string v5, "data"

    invoke-virtual {v3, v5, p6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13578
    const-string v5, "chargeType"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13580
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 13581
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 13583
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 13584
    .local v0, "e2":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    .line 13594
    const/4 v3, 0x0

    .line 13595
    return-object v4

    .line 13585
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13586
    .local v1, "e2key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13587
    .local v2, "e2value":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13588
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "value="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13589
    invoke-virtual {v4, v1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 13590
    invoke-virtual {v4, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 13592
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static createHightVIPStorageListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11505
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2f12

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11506
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createHightVIPStorageOperateMsg(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "opeType"    # I
    .param p1, "slotPos"    # I

    .prologue
    .line 11521
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2f13

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11522
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11523
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11524
    return-object v0
.end method

.method public static createHttpConnection()V
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Lcom/hz/net/HttpConnector;

    invoke-direct {v0}, Lcom/hz/net/HttpConnector;-><init>()V

    sput-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    goto :goto_0
.end method

.method public static createIdentifyAsk(BSIZZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "rsIype"    # B
    .param p1, "soltPos"    # S
    .param p2, "itemId"    # I
    .param p3, "askResult"    # Z
    .param p4, "isIdentifyGrade"    # Z

    .prologue
    .line 6333
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2eef

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6335
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 6336
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6337
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 6338
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6340
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6342
    return-object v0
.end method

.method public static createIntegralBuy(SII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "shopID"    # S
    .param p1, "itemID"    # I
    .param p2, "count"    # I

    .prologue
    .line 13265
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13266
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 13267
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 13268
    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13269
    return-object v0
.end method

.method public static createIntegralShop(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "shopID"    # S

    .prologue
    .line 13247
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13248
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 13249
    return-object v0
.end method

.method public static createInviteTeamMsg(BI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "memberID"    # I

    .prologue
    .line 6464
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34bd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6465
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 6466
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 6467
    return-object v0
.end method

.method public static createItemInfoMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "itemID"    # I

    .prologue
    .line 10671
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10672
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10673
    return-object v0
.end method

.method public static createItemShopBuy(SLcom/hz/core/ShopItem;I)Lcom/hz/net/Message;
    .locals 3
    .param p0, "shopID"    # S
    .param p1, "shopItem"    # Lcom/hz/core/ShopItem;
    .param p2, "count"    # I

    .prologue
    .line 7347
    invoke-static {p0}, Lcom/hz/core/Define;->isCountryShop(S)Z

    move-result v0

    .line 7353
    .local v0, "isCountryBuy":Z
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x2ee5

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 7354
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 7355
    iget v2, p1, Lcom/hz/core/ShopItem;->id:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 7356
    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 7359
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 7360
    if-eqz v0, :cond_0

    .line 7361
    iget v2, p1, Lcom/hz/core/ShopItem;->money1:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 7362
    iget v2, p1, Lcom/hz/core/ShopItem;->money2:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 7363
    iget v2, p1, Lcom/hz/core/ShopItem;->money3:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 7365
    :cond_0
    return-object v1
.end method

.method public static createItemShopListMsg(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "shopID"    # S

    .prologue
    .line 7313
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ee4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7314
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 7315
    return-object v0
.end method

.method public static createItemShopSell(SISB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "shopID"    # S
    .param p1, "itemID"    # I
    .param p2, "slotPos"    # S
    .param p3, "count"    # B

    .prologue
    .line 7382
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ee6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7383
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 7384
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 7385
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putShort(S)V

    .line 7386
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putByte(B)V

    .line 7387
    return-object v0
.end method

.method public static createJumpCityMessage(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I
    .param p1, "blockFlag"    # I

    .prologue
    .line 6089
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x290e

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6090
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6091
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 6092
    return-object v0
.end method

.method public static createJumpCountryMessage(IIII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryId"    # I
    .param p1, "blockFlag"    # I
    .param p2, "money1"    # I
    .param p3, "money3"    # I

    .prologue
    .line 9745
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aa1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9746
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9747
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9748
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 9749
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 9750
    return-object v0
.end method

.method public static createJumpMapMessage(IBBI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mapID"    # I
    .param p1, "gx"    # B
    .param p2, "gy"    # B
    .param p3, "blockFlag"    # I

    .prologue
    .line 6072
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x290a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6073
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6074
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6075
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 6076
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putInt(I)V

    .line 6077
    return-object v0
.end method

.method public static createLearnSkill(SLcom/hz/core/Skill;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "shopID"    # S
    .param p1, "learnSkill"    # Lcom/hz/core/Skill;

    .prologue
    .line 6660
    if-nez p1, :cond_1

    .line 6661
    const/4 v1, 0x0

    .line 6684
    :cond_0
    :goto_0
    return-object v1

    .line 6664
    :cond_1
    invoke-static {p0}, Lcom/hz/core/Define;->isCountrySkillShop(S)Z

    move-result v0

    .line 6672
    .local v0, "isCountryLearn":Z
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x36b2

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 6673
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 6674
    iget v2, p1, Lcom/hz/core/Skill;->id:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 6675
    iget-byte v2, p1, Lcom/hz/core/Skill;->level:B

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 6678
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6679
    if-eqz v0, :cond_0

    .line 6680
    iget v2, p1, Lcom/hz/core/Skill;->money1:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 6681
    iget v2, p1, Lcom/hz/core/Skill;->money2:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 6682
    iget v2, p1, Lcom/hz/core/Skill;->money3:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0
.end method

.method public static createLockPlayer(ZLjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "isLock"    # Z
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "bindPhone"    # Ljava/lang/String;

    .prologue
    .line 12398
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x1394

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12399
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 12400
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12401
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12402
    return-object v0
.end method

.method public static createMailAttachMsg(Lcom/hz/core/Mail;I)Lcom/hz/net/Message;
    .locals 3
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "selectItemID"    # I

    .prologue
    .line 7942
    if-nez p0, :cond_0

    .line 7943
    const/4 v0, 0x0

    .line 7955
    :goto_0
    return-object v0

    .line 7950
    :cond_0
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b03

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7951
    .local v0, "msg":Lcom/hz/net/Message;
    iget-wide v1, p0, Lcom/hz/core/Mail;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/hz/net/Message;->putLong(J)V

    .line 7952
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/hz/core/Mail;->isTypeBit(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 7953
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 7954
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0
.end method

.method public static createMailBackMsg(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mailID"    # J

    .prologue
    .line 8004
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b04

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8005
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 8006
    return-object v0
.end method

.method public static createMailDeleteMsg(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mailID"    # J

    .prologue
    .line 8039
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b05

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8040
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 8041
    return-object v0
.end method

.method public static createMailDetailMsg(J)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 7747
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b00

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7748
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 7749
    return-object v0
.end method

.method public static createMailListMsg(IBS)Lcom/hz/net/Message;
    .locals 2
    .param p0, "listType"    # I
    .param p1, "pageSize"    # B
    .param p2, "pageNum"    # S

    .prologue
    .line 7710
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2aff

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7711
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 7712
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 7713
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putShort(S)V

    .line 7714
    return-object v0
.end method

.method public static createMailNewNotice()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12094
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b17

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12095
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createMailSeeItem(JB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mailID"    # J
    .param p2, "slotPos"    # B

    .prologue
    .line 13166
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b1a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13167
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0, p1}, Lcom/hz/net/Message;->putLong(J)V

    .line 13168
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 13169
    return-object v0
.end method

.method public static createMailSendByID(Lcom/hz/core/Mail;I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "toID"    # I

    .prologue
    const/4 v1, 0x0

    .line 7777
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/hz/main/MsgHandler;->createMailSendMsg(Lcom/hz/core/Mail;BILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMailSendByName(Lcom/hz/core/Mail;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "toName"    # Ljava/lang/String;

    .prologue
    .line 7780
    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/hz/main/MsgHandler;->createMailSendMsg(Lcom/hz/core/Mail;BILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMailSendByUID(Lcom/hz/core/Mail;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "toUID"    # Ljava/lang/String;

    .prologue
    .line 7783
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/hz/main/MsgHandler;->createMailSendMsg(Lcom/hz/core/Mail;BILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMailSendGMMsg(ILjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "tabMail"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 7909
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b02

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7910
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 7911
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 7912
    return-object v0
.end method

.method public static createMailSendMsg(Lcom/hz/core/Mail;BILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 6
    .param p0, "mail"    # Lcom/hz/core/Mail;
    .param p1, "sendType"    # B
    .param p2, "toID"    # I
    .param p3, "toName"    # Ljava/lang/String;
    .param p4, "toUID"    # Ljava/lang/String;

    .prologue
    .line 7787
    if-nez p0, :cond_0

    .line 7791
    const/4 v4, 0x0

    .line 7852
    :goto_0
    return-object v4

    .line 7798
    :cond_0
    new-instance v4, Lcom/hz/net/Message;

    const/16 v5, 0x2b01

    invoke-direct {v4, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 7799
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Lcom/hz/core/Mail;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 7800
    iget v5, p0, Lcom/hz/core/Mail;->money1:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7801
    iget v5, p0, Lcom/hz/core/Mail;->money2:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7802
    iget v5, p0, Lcom/hz/core/Mail;->money3:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7803
    iget v5, p0, Lcom/hz/core/Mail;->reqMoney1:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7804
    iget v5, p0, Lcom/hz/core/Mail;->reqMoney2:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7805
    iget v5, p0, Lcom/hz/core/Mail;->reqMoney3:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7808
    const/4 v3, 0x0

    .line 7809
    .local v3, "itemCount":B
    iget-object v0, p0, Lcom/hz/core/Mail;->attachItem:[Lcom/hz/core/Item;

    .line 7810
    .local v0, "attachItem":[Lcom/hz/core/Item;
    if-eqz v0, :cond_1

    array-length v5, v0

    if-lez v5, :cond_1

    .line 7811
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-lt v1, v5, :cond_4

    .line 7818
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v4, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 7819
    if-lez v3, :cond_2

    .line 7820
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v0

    if-lt v1, v5, :cond_6

    .line 7836
    .end local v1    # "i":I
    :cond_2
    const/4 v5, 0x3

    if-ne p1, v5, :cond_3

    .line 7837
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v5

    invoke-static {p4, v5}, Lcom/hz/core/Define;->getIdByAreaID(Ljava/lang/String;I)I

    move-result p2

    .line 7838
    const/4 p1, 0x1

    .line 7842
    :cond_3
    invoke-virtual {v4, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 7843
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 7845
    :pswitch_0
    invoke-virtual {v4, p2}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 7812
    .restart local v1    # "i":I
    :cond_4
    aget-object v5, v0, v1

    if-eqz v5, :cond_5

    .line 7813
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    .line 7811
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7821
    :cond_6
    aget-object v2, v0, v1

    .line 7822
    .local v2, "item":Lcom/hz/core/Item;
    if-nez v2, :cond_7

    .line 7820
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7825
    :cond_7
    iget-short v5, v2, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putShort(S)V

    .line 7826
    iget v5, v2, Lcom/hz/core/Item;->id:I

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 7827
    iget-short v5, v2, Lcom/hz/core/Item;->quantity:S

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/hz/net/Message;->putByte(B)V

    goto :goto_3

    .line 7848
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/hz/core/Item;
    :pswitch_1
    invoke-virtual {v4, p3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0

    .line 7843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createMarryWishList(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 11023
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34f3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11024
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11025
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11026
    return-object v0
.end method

.method public static createMercenaryBuyMsg(SLcom/hz/actor/Mercenary;Z)Lcom/hz/net/Message;
    .locals 3
    .param p0, "shopID"    # S
    .param p1, "mer"    # Lcom/hz/actor/Mercenary;
    .param p2, "isNeed"    # Z

    .prologue
    .line 8206
    invoke-static {p0}, Lcom/hz/core/Define;->isCountrySoldierShop(S)Z

    move-result v0

    .line 8213
    .local v0, "isCountryBuy":Z
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x3c91

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 8214
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 8215
    iget-short v2, p1, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 8216
    invoke-virtual {v1, p2}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 8218
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 8219
    if-eqz v0, :cond_0

    .line 8220
    iget v2, p1, Lcom/hz/actor/Mercenary;->money1:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 8221
    iget v2, p1, Lcom/hz/actor/Mercenary;->money2:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 8222
    iget v2, p1, Lcom/hz/actor/Mercenary;->money3:I

    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 8224
    :cond_0
    return-object v1
.end method

.method public static createMercenaryDelMsg(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "groupId"    # S

    .prologue
    .line 8380
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c96

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8381
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 8382
    return-object v0
.end method

.method public static createMercenaryInfoMsg(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "groupId"    # S

    .prologue
    .line 8137
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c90

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8138
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 8139
    return-object v0
.end method

.method public static createMercenaryListMsg(SBS)Lcom/hz/net/Message;
    .locals 2
    .param p0, "shopID"    # S
    .param p1, "pageNum"    # B
    .param p2, "page"    # S

    .prologue
    .line 8110
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c8f

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8111
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 8112
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 8113
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putShort(S)V

    .line 8114
    return-object v0
.end method

.method public static createMercenaryMyInfoMsg(IS)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerId"    # I
    .param p1, "groupId"    # S

    .prologue
    .line 8174
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c93

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8175
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 8176
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 8177
    return-object v0
.end method

.method public static createMercenaryMyListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 8283
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c92

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8284
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createMercenarySetStatusMsg(SZB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "groupId"    # S
    .param p1, "isNeed"    # Z
    .param p2, "status"    # B

    .prologue
    .line 8343
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c94

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8344
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 8345
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 8346
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 8347
    return-object v0
.end method

.method public static createModifyActorName(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "newName"    # Ljava/lang/String;

    .prologue
    .line 12263
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2717

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12264
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12265
    return-object v0
.end method

.method public static createModifyActorNameByItem(Ljava/lang/String;I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "newName"    # Ljava/lang/String;
    .param p1, "soltPos"    # I

    .prologue
    .line 12278
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b1e

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12279
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12280
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12281
    return-object v0
.end method

.method public static createModifyCityNameMsg(ILjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "cityMasterId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6145
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2911

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6146
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6147
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 6148
    return-object v0
.end method

.method public static createModifyCitySignMsg(ILjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "cityMasterId"    # I
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 6161
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2912

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6162
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6163
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 6164
    return-object v0
.end method

.method public static createModifyPlayerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "oldPass"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newPass"    # Ljava/lang/String;

    .prologue
    .line 12299
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2716

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12300
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12301
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12302
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12303
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12304
    return-object v0
.end method

.method public static createMonsterBookDetail(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "monsterID"    # S

    .prologue
    .line 10382
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x32ca

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10383
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 10384
    return-object v0
.end method

.method public static createMonsterBookList(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 10364
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x32c9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10365
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10366
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10367
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 10368
    return-object v0
.end method

.method public static createMoveMessage(BB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "gx"    # B
    .param p1, "gy"    # B

    .prologue
    .line 5964
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2908

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5965
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 5966
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 5967
    return-object v0
.end method

.method public static createNewEscortRobList(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 11039
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38c7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11040
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11041
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11042
    return-object v0
.end method

.method public static createOtherMoveMessage()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 5976
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2909

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5977
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPKAskMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I

    .prologue
    .line 6479
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30db

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6480
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6481
    return-object v0
.end method

.method public static createPLayerListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 5768
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5769
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPartnerAdd()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13357
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34e3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13358
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPartnerDel()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13371
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34e4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13372
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPartnerFly()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13326
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34e2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13327
    .local v0, "msg":Lcom/hz/net/Message;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 13328
    return-object v0
.end method

.method public static createPayDescribe()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13631
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b46

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13632
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPayInfoBill(ILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "cardPassword"    # Ljava/lang/String;

    .prologue
    .line 11886
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b15

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11887
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 11888
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 11889
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 11890
    return-object v0
.end method

.method public static createPayInfoList()Lcom/hz/net/Message;
    .locals 11

    .prologue
    .line 11824
    new-instance v5, Lcom/hz/net/Message;

    const/16 v8, 0x4269

    invoke-direct {v5, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 11825
    .local v5, "msg":Lcom/hz/net/Message;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/hz/net/Message;->putInt(I)V

    .line 11827
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 11829
    .local v4, "maps":Ljava/util/Hashtable;
    sget-object v1, Lcom/hz/main/GameWorld;->buildVersion:Ljava/lang/String;

    .line 11830
    .local v1, "getVersion":Ljava/lang/String;
    const-string v8, "edition"

    invoke-virtual {v4, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11832
    const-string v2, ""

    .line 11835
    .local v2, "ipAddress":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "************ipAddress="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11837
    const-string v8, "ip"

    invoke-virtual {v4, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11838
    const-string v8, "os"

    const-string v9, "0"

    invoke-virtual {v4, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11839
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v6

    .line 11840
    .local v6, "size":I
    invoke-virtual {v5, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 11842
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 11843
    .local v0, "e2":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_0

    .line 11851
    return-object v5

    .line 11844
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11845
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 11848
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 11849
    invoke-virtual {v5, v7}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createPayInfoZhiFuBao(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 11994
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b16

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11995
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 11996
    return-object v0
.end method

.method public static createPetChangeName(SLjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "slotPos"    # S
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 10183
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c97

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10184
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 10185
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10186
    return-object v0
.end method

.method public static createPetInfoMsg(I[Ljava/lang/Object;)Lcom/hz/net/Message;
    .locals 8
    .param p0, "type"    # I
    .param p1, "objectList"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10221
    if-nez p1, :cond_0

    .line 10222
    const/4 v3, 0x0

    .line 10258
    :goto_0
    return-object v3

    .line 10225
    :cond_0
    new-instance v3, Lcom/hz/net/Message;

    const/16 v5, 0x3c98

    invoke-direct {v3, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 10226
    .local v3, "msg":Lcom/hz/net/Message;
    int-to-byte v5, p0

    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putByte(B)V

    .line 10227
    const/4 v0, 0x0

    .line 10228
    .local v0, "int0":I
    const/4 v4, 0x0

    .line 10229
    .local v4, "short0":S
    const-wide/16 v1, 0x0

    .line 10230
    .local v1, "long0":J
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 10233
    :pswitch_0
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10234
    invoke-virtual {v3, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10235
    aget-object v5, p1, v7

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 10236
    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putShort(S)V

    goto :goto_0

    .line 10239
    :pswitch_1
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10240
    invoke-virtual {v3, v1, v2}, Lcom/hz/net/Message;->putLong(J)V

    goto :goto_0

    .line 10243
    :pswitch_2
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 10244
    invoke-virtual {v3, v1, v2}, Lcom/hz/net/Message;->putLong(J)V

    .line 10245
    aget-object v5, p1, v7

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 10246
    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putShort(S)V

    goto :goto_0

    .line 10249
    :pswitch_3
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10250
    invoke-virtual {v3, v0}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 10230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static createPetSeeMsg(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "slotPos"    # S

    .prologue
    .line 8074
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3c8e

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8075
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 8076
    return-object v0
.end method

.method public static createPhotoAlbumsMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I

    .prologue
    .line 10636
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b0b

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10637
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10638
    return-object v0
.end method

.method public static createPhotoCommentListMsg(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 10482
    new-instance v0, Lcom/hz/net/Message;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10483
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10484
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 10485
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10486
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 10487
    const v1, 0x5593c

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 10488
    return-object v0
.end method

.method public static createPhotoContentMsg(ILjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 10602
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b09

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10603
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10604
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10605
    return-object v0
.end method

.method public static createPhotoDel(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "photoID"    # I

    .prologue
    .line 10569
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b07

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10570
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10571
    return-object v0
.end method

.method public static createPhotoLoveMsg(IZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I
    .param p1, "isTel"    # Z

    .prologue
    .line 10619
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b0a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10620
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10621
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 10622
    return-object v0
.end method

.method public static createPhotoUpDownMsg(IB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I
    .param p1, "comment"    # B

    .prologue
    .line 10585
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b08

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10586
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10587
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10588
    return-object v0
.end method

.method public static createPhotoUpLoad(BI)Lcom/hz/net/Message;
    .locals 3
    .param p0, "imgType"    # B
    .param p1, "length"    # I

    .prologue
    .line 10417
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 10418
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_0

    .line 10419
    const/4 v0, 0x0

    .line 10433
    :goto_0
    return-object v0

    .line 10426
    :cond_0
    new-instance v0, Lcom/hz/net/Message;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 10427
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 10428
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10429
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getSex()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 10430
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 10431
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 10432
    sget-short v2, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    invoke-virtual {v0, v2}, Lcom/hz/net/Message;->putShort(S)V

    goto :goto_0
.end method

.method public static createPhotoView(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "photoID"    # I

    .prologue
    .line 10464
    new-instance v0, Lcom/hz/net/Message;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10465
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10466
    return-object v0
.end method

.method public static createPhotoViewList(IZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerID"    # I
    .param p1, "isGetFirst"    # Z

    .prologue
    .line 10447
    new-instance v0, Lcom/hz/net/Message;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10448
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10449
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 10450
    return-object v0
.end method

.method public static createPlayerBagMessage(BBLcom/hz/core/Item;S)Lcom/hz/net/Message;
    .locals 1
    .param p0, "waitType"    # B
    .param p1, "type"    # B
    .param p2, "item"    # Lcom/hz/core/Item;
    .param p3, "equipPos"    # S

    .prologue
    .line 6265
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hz/main/MsgHandler;->createPlayerBagMessage(BBLcom/hz/core/Item;SZ)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createPlayerBagMessage(BBLcom/hz/core/Item;SZ)Lcom/hz/net/Message;
    .locals 6
    .param p0, "waitType"    # B
    .param p1, "type"    # B
    .param p2, "item"    # Lcom/hz/core/Item;
    .param p3, "equipPos"    # S
    .param p4, "isIdentifyUpgrade"    # Z

    .prologue
    .line 6275
    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/hz/main/MsgHandler;->createPlayerBagMessage(BBLcom/hz/core/Item;SZI)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createPlayerBagMessage(BBLcom/hz/core/Item;SZI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "waitType"    # B
    .param p1, "type"    # B
    .param p2, "item"    # Lcom/hz/core/Item;
    .param p3, "equipPos"    # S
    .param p4, "isIdentifyUpgrade"    # Z
    .param p5, "num"    # I

    .prologue
    .line 6287
    if-nez p2, :cond_1

    .line 6288
    const/4 v0, 0x0

    .line 6321
    :cond_0
    :goto_0
    return-object v0

    .line 6296
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ee1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6298
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 6299
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6300
    iget-short v1, p2, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6301
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 6302
    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6314
    :cond_2
    :goto_1
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6316
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 6318
    invoke-virtual {v0, p5}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 6304
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 6305
    iget v1, p2, Lcom/hz/core/Item;->id:I

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_1

    .line 6307
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 6308
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putShort(S)V

    goto :goto_1

    .line 6310
    :cond_5
    invoke-virtual {p2}, Lcom/hz/core/Item;->isPetCanUseItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6311
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putShort(S)V

    goto :goto_1
.end method

.method public static createPlayerCardGenerateMsg(SBBLjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "titleID"    # S
    .param p1, "background"    # B
    .param p2, "style"    # B
    .param p3, "sign"    # Ljava/lang/String;

    .prologue
    .line 10533
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b0d

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10534
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 10535
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 10536
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 10537
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 10538
    return-object v0
.end method

.method public static createPlayerCardViewMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "targetID"    # I

    .prologue
    .line 10553
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b0e

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10554
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 10555
    return-object v0
.end method

.method public static createPlayerEnchantShopEndMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 8564
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2d03

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8565
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPlayerEnchantShopItemListMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerId"    # I

    .prologue
    .line 8759
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2d05

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8760
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 8761
    return-object v0
.end method

.method public static createPlayerEnchantShopRecordMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 8638
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2d06

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8639
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPlayerEnchantShopStartMsg(Ljava/lang/String;Ljava/util/Vector;)Lcom/hz/net/Message;
    .locals 11
    .param p0, "shopName"    # Ljava/lang/String;
    .param p1, "itemList"    # Ljava/util/Vector;

    .prologue
    const/4 v8, 0x0

    .line 8436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    if-gez v9, :cond_2

    :cond_0
    move-object v2, v8

    .line 8492
    :cond_1
    :goto_0
    return-object v2

    .line 8440
    :cond_2
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 8441
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_3

    move-object v2, v8

    .line 8443
    goto :goto_0

    .line 8446
    :cond_3
    const/4 v3, 0x0

    .line 8447
    .local v3, "needenchantnum":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v1, v9, :cond_4

    .line 8460
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getEnchantValue()I

    move-result v9

    if-le v3, v9, :cond_7

    .line 8462
    const-string v9, "B\u00e0y s\u1ea1p th\u1ea5t b\u1ea1i! \u0110i\u1ec3m Ph\u1ee5 Ma kh\u00f4ng \u0111\u1ee7."

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move-object v2, v8

    .line 8463
    goto :goto_0

    .line 8448
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/core/Item;

    .line 8449
    .local v7, "tempitem":Lcom/hz/core/Item;
    instance-of v9, v7, Lcom/hz/core/ShopItem;

    if-nez v9, :cond_5

    move-object v2, v8

    .line 8451
    goto :goto_0

    :cond_5
    move-object v5, v7

    .line 8453
    check-cast v5, Lcom/hz/core/ShopItem;

    .line 8454
    .local v5, "shopItem":Lcom/hz/core/ShopItem;
    if-nez v5, :cond_6

    .line 8447
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8457
    :cond_6
    iget-short v9, v5, Lcom/hz/core/ShopItem;->powerValue1:S

    iget-short v10, v5, Lcom/hz/core/ShopItem;->quantity:S

    mul-int/2addr v9, v10

    add-int/2addr v3, v9

    goto :goto_2

    .line 8470
    .end local v5    # "shopItem":Lcom/hz/core/ShopItem;
    .end local v7    # "tempitem":Lcom/hz/core/Item;
    :cond_7
    new-instance v2, Lcom/hz/net/Message;

    const/16 v9, 0x2d02

    invoke-direct {v2, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 8471
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 8472
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getEnchantValue()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v2, v9}, Lcom/hz/net/Message;->putInt(I)V

    .line 8473
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    int-to-byte v6, v9

    .line 8474
    .local v6, "size":B
    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 8475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v6, :cond_1

    .line 8476
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/ShopItem;

    .line 8477
    .restart local v5    # "shopItem":Lcom/hz/core/ShopItem;
    if-nez v5, :cond_8

    move-object v2, v8

    .line 8481
    goto :goto_0

    .line 8483
    :cond_8
    iget v9, v5, Lcom/hz/core/ShopItem;->id:I

    invoke-virtual {v2, v9}, Lcom/hz/net/Message;->putInt(I)V

    .line 8484
    iget-short v9, v5, Lcom/hz/core/ShopItem;->quantity:S

    int-to-byte v9, v9

    invoke-virtual {v2, v9}, Lcom/hz/net/Message;->putByte(B)V

    .line 8485
    iget-short v9, v5, Lcom/hz/core/ShopItem;->slotPos:S

    invoke-virtual {v2, v9}, Lcom/hz/net/Message;->putShort(S)V

    .line 8486
    iget v9, v5, Lcom/hz/core/ShopItem;->money1:I

    invoke-virtual {v2, v9}, Lcom/hz/net/Message;->putInt(I)V

    .line 8487
    iget v9, v5, Lcom/hz/core/ShopItem;->money3:I

    invoke-virtual {v2, v9}, Lcom/hz/net/Message;->putInt(I)V

    .line 8475
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static createPlayerEnterMsg(ILjava/lang/String;)Lcom/hz/net/Message;
    .locals 6
    .param p0, "playerID"    # I
    .param p1, "strImg"    # Ljava/lang/String;

    .prologue
    .line 5863
    invoke-static {}, Lcom/hz/main/GameStore;->getLoginSetting()I

    move-result v0

    .line 5868
    .local v0, "loginSetting":I
    new-instance v1, Lcom/hz/net/Message;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 5869
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 5870
    const v5, 0x51003e

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 5871
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 5872
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5876
    const/4 v4, 0x2

    .line 5880
    .local v4, "type":B
    invoke-virtual {v1, v4}, Lcom/hz/net/Message;->putByte(B)V

    .line 5883
    invoke-virtual {v1, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5887
    const-string v2, ""

    .line 5889
    .local v2, "strcode":Ljava/lang/String;
    const-string v3, ""

    .line 5892
    .local v3, "strphone":Ljava/lang/String;
    invoke-static {}, Lcom/lori/common/Tool;->getgetDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 5893
    invoke-static {}, Lcom/lori/common/Tool;->getPhone()Ljava/lang/String;

    move-result-object v3

    .line 5905
    invoke-virtual {v1, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5906
    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5908
    return-object v1
.end method

.method public static createPlayerEvent(IB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "eventID"    # I
    .param p1, "choose"    # B

    .prologue
    .line 6537
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x290c

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6538
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6539
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 6540
    return-object v0
.end method

.method public static createPlayerLoginOutMsg(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "loginOutType"    # B

    .prologue
    .line 5918
    new-instance v0, Lcom/hz/net/Message;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5919
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 5920
    return-object v0
.end method

.method public static createPlayerMaxVIPMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11491
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2f14

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11492
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPlayerSee(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 9717
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34dc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9718
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 9719
    return-object v0
.end method

.method public static createPlayerShopBuyMsg(ILcom/hz/core/Item;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerId"    # I
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 8801
    if-nez p1, :cond_0

    .line 8802
    const/4 v0, 0x0

    .line 8814
    :goto_0
    return-object v0

    .line 8809
    :cond_0
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2eeb

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8810
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 8811
    iget-short v1, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 8812
    iget-short v1, p1, Lcom/hz/core/Item;->quantity:S

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 8813
    iget v1, p1, Lcom/hz/core/Item;->id:I

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0
.end method

.method public static createPlayerShopEndMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 8679
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ee8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8680
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPlayerShopItemListMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerId"    # I

    .prologue
    .line 8775
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2eea

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8776
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 8777
    return-object v0
.end method

.method public static createPlayerShopRecordMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 8921
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2eec

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 8922
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createPlayerShopStartMsg(Ljava/lang/String;Ljava/util/Vector;)Lcom/hz/net/Message;
    .locals 6
    .param p0, "shopName"    # Ljava/lang/String;
    .param p1, "itemList"    # Ljava/util/Vector;

    .prologue
    const/4 v4, 0x0

    .line 8503
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-gez v5, :cond_2

    :cond_0
    move-object v1, v4

    .line 8532
    :cond_1
    :goto_0
    return-object v1

    .line 8511
    :cond_2
    new-instance v1, Lcom/hz/net/Message;

    const/16 v5, 0x2ee7

    invoke-direct {v1, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 8512
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 8513
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    int-to-byte v3, v5

    .line 8514
    .local v3, "size":B
    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 8515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 8516
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/ShopItem;

    .line 8517
    .local v2, "shopItem":Lcom/hz/core/ShopItem;
    if-nez v2, :cond_3

    move-object v1, v4

    .line 8521
    goto :goto_0

    .line 8523
    :cond_3
    iget v5, v2, Lcom/hz/core/ShopItem;->id:I

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 8524
    iget-short v5, v2, Lcom/hz/core/ShopItem;->quantity:S

    int-to-byte v5, v5

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putByte(B)V

    .line 8525
    iget-short v5, v2, Lcom/hz/core/ShopItem;->slotPos:S

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putShort(S)V

    .line 8526
    iget v5, v2, Lcom/hz/core/ShopItem;->money1:I

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 8527
    iget v5, v2, Lcom/hz/core/ShopItem;->money3:I

    invoke-virtual {v1, v5}, Lcom/hz/net/Message;->putInt(I)V

    .line 8515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createQQPay(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 12010
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b18

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12011
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12012
    return-object v0
.end method

.method public static createQiHooPay(I)Lcom/hz/net/Message;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 12037
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x2b52

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 12039
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12042
    const/4 v0, 0x0

    .line 12047
    .local v0, "isHD":B
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 12049
    return-object v1
.end method

.method public static createRelationAdd(BBILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "sendType"    # B
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 9633
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34da

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9634
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 9635
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9636
    packed-switch p1, :pswitch_data_0

    .line 9647
    :goto_0
    return-object v0

    .line 9638
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 9641
    :pswitch_1
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0

    .line 9644
    :pswitch_2
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_0

    .line 9636
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRelationAddById(BI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 9618
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/hz/main/MsgHandler;->createRelationAdd(BBILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRelationAddByName(BLjava/lang/String;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "type"    # B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 9621
    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/hz/main/MsgHandler;->createRelationAdd(BBILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRelationAddByUid(BLjava/lang/String;)Lcom/hz/net/Message;
    .locals 3
    .param p0, "type"    # B
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 9624
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/hz/main/MsgHandler;->createRelationAdd(BBILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRelationAddMaster(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerID"    # I

    .prologue
    .line 12191
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34e0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12192
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12193
    return-object v0
.end method

.method public static createRelationDel(BI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "id"    # I

    .prologue
    .line 9681
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34db

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9682
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 9683
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 9684
    return-object v0
.end method

.method public static createRelationDelMaster(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerID"    # I

    .prologue
    .line 12207
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34e1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12208
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12209
    return-object v0
.end method

.method public static createRelationFly(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "playerID"    # I

    .prologue
    .line 12109
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34dd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12110
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12111
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 12112
    return-object v0
.end method

.method public static createRelationList(BBS)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # B
    .param p1, "pageSize"    # B
    .param p2, "pageNum"    # S

    .prologue
    .line 9566
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34d9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9567
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 9568
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putByte(B)V

    .line 9569
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putShort(S)V

    .line 9570
    return-object v0
.end method

.method public static createRelationTutorList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 9586
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b9b

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 9590
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createResetPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "bindPhone"    # Ljava/lang/String;

    .prologue
    .line 12345
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x1391

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12346
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12347
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12348
    return-object v0
.end method

.method public static createSelectPayType(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # B

    .prologue
    .line 11900
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x426a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11901
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 11902
    return-object v0
.end method

.method public static createSelfLeaveTeamMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 6494
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34c3

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6495
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createSendLuckMoney(IIIILjava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "luckMoney"    # I
    .param p1, "luckMoneyCount"    # I
    .param p2, "chatChannelType"    # I
    .param p3, "luckMoneyType"    # I
    .param p4, "StrRkl"    # Ljava/lang/String;

    .prologue
    .line 13337
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34f6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13339
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13340
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 13341
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13342
    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13343
    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13344
    invoke-virtual {v0, p4}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 13345
    return-object v0
.end method

.method public static createSetRebornMapMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mapID"    # I

    .prologue
    .line 6047
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2915

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6048
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6049
    return-object v0
.end method

.method public static createSetTeamMsg(BI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "sendType"    # B
    .param p1, "data"    # I

    .prologue
    .line 6508
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x34c2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6509
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 6510
    packed-switch p0, :pswitch_data_0

    .line 6526
    :goto_0
    :pswitch_0
    return-object v0

    .line 6512
    :pswitch_1
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    goto :goto_0

    .line 6516
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 6523
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    goto :goto_0

    .line 6510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static createSkyArenaRefresh()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13535
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x30e4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13536
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createSoldierApply()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12823
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ace

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12824
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createSoldierDealApply(IZB)Lcom/hz/net/Message;
    .locals 2
    .param p0, "actorID"    # I
    .param p1, "isYes"    # Z
    .param p2, "type"    # B

    .prologue
    .line 12862
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12863
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12864
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 12865
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putByte(B)V

    .line 12866
    return-object v0
.end method

.method public static createSoldierList(IIII)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I
    .param p1, "rank"    # I
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    .line 12841
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3acf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12842
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12843
    int-to-short v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12844
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12845
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12846
    return-object v0
.end method

.method public static createSpecialCodeMsg(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 5852
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3e86

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5853
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5854
    return-object v0
.end method

.method public static createStorageListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11537
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11538
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createStorageOperateMsg(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "opeType"    # I
    .param p1, "slotPos"    # I

    .prologue
    .line 11553
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11554
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11555
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11556
    return-object v0
.end method

.method public static createSystemHeartMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 5542
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3e81

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 5543
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 5544
    return-object v0
.end method

.method public static createTaskAbandonMsg(S)Lcom/hz/net/Message;
    .locals 2
    .param p0, "missionID"    # S

    .prologue
    .line 7241
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38a8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 7242
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 7243
    return-object v0
.end method

.method public static createTaskDeliverMsg(SSI)Lcom/hz/net/Message;
    .locals 2
    .param p0, "npcID"    # S
    .param p1, "missionID"    # S
    .param p2, "selectItemID"    # I

    .prologue
    .line 6796
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38a7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6797
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 6798
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6799
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 6800
    return-object v0
.end method

.method public static createTaskOffLineActivateMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "missionID"    # I

    .prologue
    .line 10770
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10771
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 10772
    return-object v0
.end method

.method public static createTaskOffLineListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 10748
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 10749
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createTastAcceptMsg(SS)Lcom/hz/net/Message;
    .locals 2
    .param p0, "npcID"    # S
    .param p1, "missionID"    # S

    .prologue
    .line 6757
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38a6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 6758
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 6759
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 6760
    return-object v0
.end method

.method public static createTeamBossFight(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 13445
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13446
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13447
    return-object v0
.end method

.method public static createTeamBossNotFight()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13460
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38bc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13461
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createTeamBossQuit()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13430
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38ba

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13431
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createTeamBossRefresh()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13297
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13298
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createTeamBossStart()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13283
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x38b6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13284
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createUCPayInfoList()Lcom/hz/net/Message;
    .locals 3

    .prologue
    .line 11863
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x2b3b

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 11867
    .local v0, "msg":Lcom/hz/net/Message;
    const/4 v1, 0x4

    .line 11869
    .local v1, "type":B
    const/4 v1, 0x2

    .line 11871
    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11872
    return-object v0
.end method

.method public static createUCPay_Android(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 12475
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b40

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12476
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12477
    return-object v0
.end method

.method public static createUCPay_Android(ILjava/lang/String;I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "orderAmount"    # I
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "getPayType"    # I

    .prologue
    .line 12490
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b3a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12491
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12492
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12493
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 12494
    return-object v0
.end method

.method public static createUCPay_Java(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 12460
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2b49

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12461
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12462
    return-object v0
.end method

.method public static createUserLoginMsg(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 6
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 5639
    new-instance v3, Lcom/hz/net/Message;

    const/16 v5, 0x138a

    invoke-direct {v3, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 5641
    .local v3, "msg":Lcom/hz/net/Message;
    move-object v2, p0

    .line 5642
    .local v2, "_username":Ljava/lang/String;
    move-object v0, p1

    .line 5643
    .local v0, "_password":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5694
    .local v1, "_secret":Ljava/lang/String;
    const-string v4, ""

    .line 5696
    .local v4, "os":Ljava/lang/String;
    const-string v4, "Android"

    .line 5701
    invoke-virtual {v3, v2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5702
    invoke-virtual {v3, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5703
    const-string v5, "123.30.133.164"

    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5704
    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5711
    sget-object v5, Lcom/hz/main/GameWorld;->handset:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5720
    return-object v3
.end method

.method public static createUserRegisterMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/hz/net/Message;
    .locals 4
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "realname"    # Ljava/lang/String;
    .param p4, "idcard"    # Ljava/lang/String;
    .param p5, "invite"    # I

    .prologue
    .line 5933
    const-string v0, ""

    .line 5935
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/lori/common/Tool;->getgetDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 5937
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x1389

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 5939
    .local v1, "msg":Lcom/hz/net/Message;
    const-string v2, ""

    .line 5941
    .local v2, "os":Ljava/lang/String;
    const-string v2, "Android"

    .line 5945
    invoke-virtual {v1, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5946
    invoke-virtual {v1, p1}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5947
    invoke-virtual {v1, p2}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5948
    sget-object v3, Lcom/hz/main/GameWorld;->strImgCreate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5949
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5950
    invoke-virtual {v1, p3}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5951
    invoke-virtual {v1, p4}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 5952
    invoke-virtual {v1, p5}, Lcom/hz/net/Message;->putInt(I)V

    .line 5953
    return-object v1
.end method

.method public static createVIPStorageListMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 11464
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11465
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createVIPStorageOperateMsg(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "opeType"    # I
    .param p1, "slotPos"    # I

    .prologue
    .line 11480
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2ef9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 11481
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 11482
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 11483
    return-object v0
.end method

.method public static createWarAnswerInfo()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12708
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3acb

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12709
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWarBattleList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12738
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3acc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12739
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWarBuildLevel(B)Lcom/hz/net/Message;
    .locals 2
    .param p0, "buildID"    # B

    .prologue
    .line 12767
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3aca

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12768
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 12769
    return-object v0
.end method

.method public static createWarBuildList()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12752
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12753
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWarDeclare(IIIZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryID"    # I
    .param p1, "money1"    # I
    .param p2, "money3"    # I
    .param p3, "isTest"    # Z

    .prologue
    .line 12690
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12691
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12692
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 12693
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 12694
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 12695
    return-object v0
.end method

.method public static createWarDeclareAsk(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 12723
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12724
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12725
    return-object v0
.end method

.method public static createWarDeclareList(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "searchType"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 12649
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ac6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12650
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12651
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12652
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12653
    return-object v0
.end method

.method public static createWarTextInfo(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "round"    # I

    .prologue
    .line 12808
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3acd

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12809
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12810
    return-object v0
.end method

.method public static createWarTopCountry(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 13148
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ae0

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13149
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13150
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 13151
    return-object v0
.end method

.method public static createWarTopCountryPlayer(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 13130
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ae1

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13131
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13132
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 13133
    return-object v0
.end method

.method public static createWarTopPlayer(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 13112
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3adf

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13113
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13114
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 13115
    return-object v0
.end method

.method public static createWarUnionApply(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "unionID"    # I

    .prologue
    .line 13015
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad9

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13016
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 13017
    return-object v0
.end method

.method public static createWarUnionApplyHelp(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryID"    # I

    .prologue
    .line 13095
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad2

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13096
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 13097
    return-object v0
.end method

.method public static createWarUnionChange(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryID"    # I

    .prologue
    .line 13079
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ade

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13080
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 13081
    return-object v0
.end method

.method public static createWarUnionCreate(Ljava/lang/String;)Lcom/hz/net/Message;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12944
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad6

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12945
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 12946
    return-object v0
.end method

.method public static createWarUnionDealApply(IZ)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryID"    # I
    .param p1, "isPass"    # Z

    .prologue
    .line 13032
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3adb

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13033
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 13034
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 13035
    return-object v0
.end method

.method public static createWarUnionDelMember(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryID"    # I

    .prologue
    .line 13049
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3adc

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13050
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 13051
    return-object v0
.end method

.method public static createWarUnionList(II)Lcom/hz/net/Message;
    .locals 2
    .param p0, "pageSize"    # I
    .param p1, "pageNum"    # I

    .prologue
    .line 12961
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad7

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12962
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12963
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 12964
    return-object v0
.end method

.method public static createWarUnionMy()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12977
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad8

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12978
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWarUnionQuit()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 13064
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3add

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 13065
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWarUnionWarList(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "type"    # I
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 12997
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ada

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12998
    .local v0, "msg":Lcom/hz/net/Message;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12999
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 13000
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putShort(S)V

    .line 13001
    return-object v0
.end method

.method public static createWinActionDo(III)Lcom/hz/net/Message;
    .locals 2
    .param p0, "countryID"    # I
    .param p1, "buildID"    # I
    .param p2, "warnID"    # I

    .prologue
    .line 12926
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad5

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12927
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12928
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12929
    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putByte(B)V

    .line 12930
    return-object v0
.end method

.method public static createWinActionInfo()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12909
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x3ad4

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12910
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWorldDataMessage(IZ)Lcom/hz/net/Message;
    .locals 6
    .param p0, "dataFlag"    # I
    .param p1, "isCheckBattle"    # Z

    .prologue
    const/4 v5, 0x0

    .line 6006
    new-instance v3, Lcom/hz/net/Message;

    const/16 v4, 0x2907

    invoke-direct {v3, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 6009
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v0

    .line 6010
    .local v0, "curMapID":I
    int-to-short v4, v0

    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putShort(S)V

    .line 6011
    invoke-virtual {v3, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 6014
    invoke-virtual {v3, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 6017
    const/4 v2, 0x0

    .line 6018
    .local v2, "imgList":[S
    and-int/lit16 v4, p0, 0x2000

    if-eqz v4, :cond_0

    .line 6019
    invoke-static {}, Lcom/hz/main/ResourceHandler;->getRequireMapImageAndPlList()[S

    move-result-object v2

    .line 6022
    :cond_0
    if-nez v2, :cond_2

    .line 6023
    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putByte(B)V

    .line 6033
    :cond_1
    invoke-virtual {v3, v5}, Lcom/hz/net/Message;->putByte(B)V

    .line 6034
    return-object v3

    .line 6026
    :cond_2
    array-length v4, v2

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putByte(B)V

    .line 6027
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 6028
    aget-short v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/hz/net/Message;->putShort(S)V

    .line 6027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static createWorldDataReflashMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 5987
    const v0, 0x50007e

    .line 5988
    .local v0, "blockFlag":I
    invoke-static {}, Lcom/hz/main/GameWorld;->getNPCList()[Lcom/hz/actor/NPC;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5989
    or-int/lit16 v0, v0, 0x400

    .line 5991
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->createWorldDataMessage(IZ)Lcom/hz/net/Message;

    move-result-object v1

    return-object v1
.end method

.method public static createWorldMapEnterMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "childMapID"    # I

    .prologue
    .line 12783
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x291b

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12784
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12785
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 12786
    return-object v0
.end method

.method public static createWorldMapListMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "mapAreaID"    # I

    .prologue
    .line 12777
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x291a

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12778
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12779
    return-object v0
.end method

.method public static createWorldMapMsg()Lcom/hz/net/Message;
    .locals 2

    .prologue
    .line 12773
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x2919

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12774
    .local v0, "msg":Lcom/hz/net/Message;
    return-object v0
.end method

.method public static createWroldMapVIPEnterMsg(I)Lcom/hz/net/Message;
    .locals 2
    .param p0, "activityID"    # I

    .prologue
    .line 12791
    new-instance v0, Lcom/hz/net/Message;

    const/16 v1, 0x291c

    invoke-direct {v0, v1}, Lcom/hz/net/Message;-><init>(I)V

    .line 12792
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 12793
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/hz/net/Message;->putInt(I)V

    .line 12794
    return-object v0
.end method

.method public static doSocketHeart()V
    .locals 5

    .prologue
    .line 538
    sget-object v1, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-nez v1, :cond_1

    .line 557
    .local v0, "msg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 543
    .end local v0    # "msg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/hz/main/MsgHandler;->nextHeartBeat:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 552
    invoke-static {}, Lcom/hz/main/MsgHandler;->createSystemHeartMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 553
    .restart local v0    # "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    sput-wide v1, Lcom/hz/main/MsgHandler;->nextHeartBeat:J

    goto :goto_0
.end method

.method public static doSoftSync()V
    .locals 4

    .prologue
    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/hz/main/MsgHandler;->nextSyncTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v0, :cond_2

    .line 378
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v0}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Lcom/hz/main/MsgHandler;->syncMoveTo()V

    .line 386
    invoke-static {}, Lcom/hz/main/MsgHandler;->synOtherMoveTo()V

    .line 391
    invoke-static {}, Lcom/hz/main/MsgHandler;->createSystemHeartMsg()Lcom/hz/net/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/hz/main/MsgHandler;->nextSyncTime:J

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->syncMoveTo()V

    .line 403
    invoke-static {}, Lcom/hz/main/MsgHandler;->synOtherMoveTo()V

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lcom/hz/main/MsgHandler;->nextSyncTime:J

    goto :goto_0
.end method

.method public static drawWaiting(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 191
    sget-object v0, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/hz/main/MsgHandler;->drawWaiting(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static drawWaiting(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 22
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "drawText"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    sub-long v20, v7, v9

    .line 196
    .local v20, "waitTime":J
    const-wide/16 v7, 0x3e8

    div-long v7, v20, v7

    long-to-int v0, v7

    move/from16 v19, v0

    .line 197
    .local v19, "waitSecond":I
    const/16 v2, 0xa

    move/from16 v0, v19

    if-le v0, v2, :cond_4

    const/16 v17, 0x1

    .line 198
    .local v17, "isDrawSecond":Z
    :goto_0
    if-eqz v17, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 203
    sget-object v2, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    .line 204
    .local v5, "width":I
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    if-ge v5, v2, :cond_1

    .line 205
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 207
    :cond_1
    sget v2, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    add-int/lit8 v6, v2, 0xa

    .line 209
    .local v6, "height":I
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sub-int/2addr v2, v5

    div-int/lit8 v3, v2, 0x2

    .line 210
    .local v3, "x":I
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sub-int/2addr v2, v6

    div-int/lit8 v4, v2, 0x2

    .line 211
    .local v4, "y":I
    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v12}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 213
    const v2, 0x553322

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 214
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    sget v8, Lcom/hz/common/Utilities;->FONT_HEIGHT_HALF:I

    sub-int/2addr v7, v8

    const/16 v8, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 217
    if-nez v17, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v2, v20, v7

    if-lez v2, :cond_3

    .line 219
    const/16 v18, 0x1

    .line 220
    .local v18, "pieWidth":I
    const-wide/16 v7, 0x64

    div-long v7, v20, v7

    move/from16 v0, v18

    int-to-long v9, v0

    mul-long/2addr v7, v9

    long-to-int v13, v7

    .line 221
    .local v13, "countWidth":I
    if-lt v13, v5, :cond_2

    .line 222
    move v13, v5

    .line 224
    :cond_2
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    sget v7, Lcom/hz/common/Utilities;->FONT_HEIGHT_HALF:I

    add-int v16, v2, v7

    .line 225
    .local v16, "drawY":I
    const/4 v14, 0x2

    .line 226
    .local v14, "drawH":I
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    div-int/lit8 v7, v13, 0x2

    sub-int v15, v2, v7

    .line 227
    .local v15, "drawX":I
    const v2, 0x553322

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v13, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 230
    .end local v13    # "countWidth":I
    .end local v14    # "drawH":I
    .end local v15    # "drawX":I
    .end local v16    # "drawY":I
    .end local v18    # "pieWidth":I
    :cond_3
    return-void

    .line 197
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v17    # "isDrawSecond":Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 211
    :array_0
    .array-data 4
        0xffe7a5
        0x553322
    .end array-data
.end method

.method public static getConnModeStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    sget v1, Lcom/hz/main/MsgHandler;->connMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v0, "[Http]"

    .line 242
    .local v0, "connStr":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_0
    sget-object v1, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_1
    return-object v0

    .line 241
    .end local v0    # "connStr":Ljava/lang/String;
    :cond_2
    const-string v0, "[Socket]"

    goto :goto_0
.end method

.method public static getHttpSendURL(Ljava/lang/String;Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;
    .locals 10
    .param p0, "adds"    # Ljava/lang/String;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v9, 0x1

    .line 863
    move-object v4, p0

    .line 865
    .local v4, "url":Ljava/lang/String;
    sget-byte v6, Lcom/hz/main/MsgHandler;->httpRequestSerial:B

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    sput-byte v6, Lcom/hz/main/MsgHandler;->httpRequestSerial:B

    .line 866
    sget-byte v6, Lcom/hz/main/MsgHandler;->httpRequestSerial:B

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    .line 867
    sput-byte v9, Lcom/hz/main/MsgHandler;->httpRequestSerial:B

    .line 871
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "S="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/hz/main/GameWorld;->sessionID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&T="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/hz/main/MsgHandler;->timeStamp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&Q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-byte v7, Lcom/hz/main/MsgHandler;->httpRequestSerial:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 875
    const/4 v0, -0x1

    .line 876
    .local v0, "msgType":I
    if-eqz p1, :cond_1

    .line 877
    invoke-virtual {p1}, Lcom/hz/net/Message;->getType()S

    move-result v0

    .line 880
    :cond_1
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v1

    .line 881
    .local v1, "playerID":I
    if-lez v1, :cond_7

    .line 884
    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    .line 885
    const/16 v6, 0x2711

    if-ne v0, v6, :cond_6

    .line 887
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&P="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/hz/main/GameWorld;->ukey:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 915
    :cond_3
    :goto_0
    sget-object v6, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&M=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 920
    :cond_4
    invoke-static {p1, v9}, Lcom/hz/main/MsgHandler;->getSyncMessageData(Lcom/hz/net/Message;Z)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, "urlData":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&D="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 924
    :cond_5
    new-instance v2, Lcom/hz/net/HttpRequest;

    invoke-direct {v2, v4}, Lcom/hz/net/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 925
    .local v2, "request":Lcom/hz/net/HttpRequest;
    return-object v2

    .line 890
    .end local v2    # "request":Lcom/hz/net/HttpRequest;
    .end local v5    # "urlData":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&A="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 892
    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&P="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/hz/main/GameWorld;->ukey:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 896
    goto :goto_0

    .line 899
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&P="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/hz/main/GameWorld;->ukey:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&L=5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&G=1000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 902
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&C="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/hz/main/GameWorld;->CP_ID:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&E=350524"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 907
    const/4 v3, 0x2

    .line 911
    .local v3, "type":B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&N="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getLoginRewardInfo(Lcom/hz/net/Message;)Ljava/lang/String;
    .locals 10
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10308
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 10309
    .local v5, "sb":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 10310
    const-string v7, ""

    .line 10347
    :goto_0
    return-object v7

    .line 10313
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 10314
    .local v6, "size":B
    if-lez v6, :cond_4

    .line 10315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v6, :cond_2

    .line 10347
    .end local v0    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 10316
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 10317
    .local v1, "ishasitem":Z
    if-eqz v1, :cond_3

    .line 10318
    new-instance v2, Lcom/hz/core/Item;

    invoke-direct {v2}, Lcom/hz/core/Item;-><init>()V

    .line 10319
    .local v2, "item":Lcom/hz/core/Item;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 10320
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-short v7, v2, Lcom/hz/core/Item;->bagIcon:S

    .line 10321
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v2, Lcom/hz/core/Item;->grade:B

    .line 10322
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    iput-short v7, v2, Lcom/hz/core/Item;->quantity:S

    .line 10328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10315
    .end local v2    # "item":Lcom/hz/core/Item;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10333
    .end local v0    # "i":I
    .end local v1    # "ishasitem":Z
    :cond_4
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 10334
    .local v3, "money2":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 10339
    .local v4, "money3":I
    if-lez v3, :cond_5

    .line 10340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "L\u00e1"

    const v9, 0x9acaff

    invoke-static {v8, v9}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10342
    :cond_5
    if-lez v4, :cond_1

    .line 10343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "B\u1ea1c"

    const v9, 0xc45712

    invoke-static {v8, v9}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method private static getMessagePlayer(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const v8, 0xea60

    const/16 v7, 0x200

    const/4 v6, 0x1

    .line 5465
    new-instance v1, Lcom/hz/actor/ListPlayer;

    invoke-direct {v1}, Lcom/hz/actor/ListPlayer;-><init>()V

    .line 5467
    .local v1, "listPlayer":Lcom/hz/actor/ListPlayer;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setId(I)V

    .line 5468
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setName(Ljava/lang/String;)V

    .line 5469
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setSex(B)V

    .line 5470
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setRace(B)V

    .line 5471
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setJob(B)V

    .line 5472
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setLevel(B)V

    .line 5473
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setVipLevel2(B)V

    .line 5474
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setMapName(Ljava/lang/String;)V

    .line 5475
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setIcon1(I)V

    .line 5476
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setIcon2(I)V

    .line 5477
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setIcon3(I)V

    .line 5478
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setStatus(I)V

    .line 5487
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    mul-int/2addr v4, v8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/hz/actor/ListPlayer;->setTimes(J)V

    .line 5492
    :cond_0
    invoke-virtual {v1, v7}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5493
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 5494
    .local v0, "isOffLineMissionFinish":Z
    if-nez v0, :cond_1

    .line 5495
    invoke-virtual {v1, v6, v7}, Lcom/hz/actor/ListPlayer;->setTabStatus(ZI)V

    .line 5496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    mul-int/2addr v4, v8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/hz/actor/ListPlayer;->setTimes(J)V

    .line 5497
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->setInfo(Ljava/lang/String;)V

    .line 5502
    .end local v0    # "isOffLineMissionFinish":Z
    :cond_1
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5503
    invoke-virtual {v1, v6}, Lcom/hz/actor/ListPlayer;->setVipLevel(B)V

    .line 5507
    :cond_2
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5508
    invoke-virtual {v1, v6}, Lcom/hz/actor/ListPlayer;->setSuperQqLevel(B)V

    .line 5511
    :cond_3
    return-object v1
.end method

.method public static getReceiveMsg()Lcom/hz/net/Message;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/hz/main/MsgHandler;->receiveMsg:Lcom/hz/net/Message;

    return-object v0
.end method

.method public static getSendMsgType()I
    .locals 1

    .prologue
    .line 281
    sget v0, Lcom/hz/main/MsgHandler;->sendMsgType:I

    return v0
.end method

.method public static getSocketLoginUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 639
    sget-object v0, Lcom/hz/main/MsgHandler;->GAME_IP:Ljava/lang/String;

    .line 640
    .local v0, "ip":Ljava/lang/String;
    sget-object v1, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    sget-object v0, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    .line 646
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socket://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":30000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSyncMessageData(Lcom/hz/net/Message;Z)Ljava/lang/String;
    .locals 8
    .param p0, "sendMessgae"    # Lcom/hz/net/Message;
    .param p1, "isSendSync"    # Z

    .prologue
    .line 315
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 320
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 322
    .local v1, "data":[B
    if-eqz p1, :cond_0

    .line 325
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    sget-object v7, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    .line 339
    sget-object v7, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->removeAllElements()V

    .line 343
    .end local v5    # "i":I
    :cond_0
    if-eqz p0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/hz/net/Message;->getDataBytes()[B

    move-result-object v1

    .line 346
    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 351
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 354
    .local v2, "datas":[B
    invoke-static {v2}, Lcom/hz/common/Tool;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 363
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 364
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 361
    .end local v2    # "datas":[B
    :goto_1
    return-object v7

    .line 327
    .restart local v5    # "i":I
    :cond_2
    :try_start_1
    sget-object v7, Lcom/hz/main/MsgHandler;->syncList:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/net/Message;

    .line 328
    .local v6, "msg":Lcom/hz/net/Message;
    if-nez v6, :cond_4

    .line 325
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 331
    :cond_4
    invoke-virtual {v6}, Lcom/hz/net/Message;->getDataBytes()[B

    move-result-object v1

    .line 332
    if-eqz v1, :cond_3

    .line 335
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 356
    .end local v5    # "i":I
    .end local v6    # "msg":Lcom/hz/net/Message;
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 364
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 361
    const/4 v7, 0x0

    goto :goto_1

    .line 362
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 363
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 364
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 365
    throw v7
.end method

.method private static final handleMessage(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1193
    if-nez p0, :cond_0

    .line 2356
    :goto_0
    :sswitch_0
    return-void

    .line 1212
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1804
    :sswitch_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processFirstGameServerMsg(Lcom/hz/net/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2348
    :catch_0
    move-exception v0

    .line 2352
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Xin ki\u1ec3m tra xem phi\u00ean b\u1ea3n s\u1eed d\u1ee5ng \u0111\u00e3 l\u00e0 m\u1edbi nh\u1ea5t ch\u01b0a ho\u1eb7c li\u00ean h\u1ec7 CS!\nHotline\uff1a1900 6837\nEmail: hotro@cgame.vn"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1222
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCheckHttpMsg(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1226
    :sswitch_3
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCountryWarEnter(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1230
    :sswitch_4
    invoke-static {p0}, Lcom/hz/actor/Mercenary;->doClearMyActivityMercenary(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1235
    :sswitch_5
    invoke-static {p0}, Lcom/hz/core/TeamBoss;->processTeamBoss(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1239
    :sswitch_6
    invoke-static {p0}, Lcom/hz/core/TeamBoss;->doRefresh(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1243
    :sswitch_7
    invoke-static {p0}, Lcom/hz/core/TeamBoss;->doOverNotice(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1251
    :sswitch_8
    invoke-static {p0}, Lcom/hz/core/Arena;->doArenaRefresh(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1255
    :sswitch_9
    invoke-static {p0}, Lcom/hz/core/Arena;->doprocessEnteryArena(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1260
    :sswitch_a
    invoke-static {p0}, Lcom/hz/core/SkyArena;->doSkyArenaRefresh(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1264
    :sswitch_b
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/hz/core/SkyArena;->doEnterSkyArena(Lcom/hz/net/Message;Z)V

    goto :goto_0

    .line 1267
    :sswitch_c
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hz/core/SkyArena;->doclearSkyArena(Z)V

    goto :goto_0

    .line 1272
    :sswitch_d
    invoke-static {p0}, Lcom/hz/core/CountryBoss;->doRefresh(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1276
    :sswitch_e
    invoke-static {p0}, Lcom/hz/core/CountryBoss;->doCountryBossEnd(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1280
    :sswitch_f
    invoke-static {p0}, Lcom/hz/core/CountryBoss;->doCountryBossGetScore(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1284
    :sswitch_10
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/hz/core/CountryBoss;->processCountryBoss(ZLcom/hz/net/Message;)V

    goto :goto_0

    .line 1318
    :sswitch_11
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processNoHandlerMesssgae(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1323
    :sswitch_12
    invoke-static {p0}, Lcom/hz/core/Arena;->doOverNotice(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1393
    :sswitch_13
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMessage(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1397
    :sswitch_14
    invoke-static {p0}, Lcom/hz/core/CountryWar;->doRefresh(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1401
    :sswitch_15
    invoke-static {p0}, Lcom/hz/core/CountryWar;->doRoundNotice(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1477
    :sswitch_16
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMessage(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1481
    :sswitch_17
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processBattleSeeExit(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1642
    :sswitch_18
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processNoHandlerMesssgae(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1646
    :sswitch_19
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGetSpriteMessage(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1657
    :sswitch_1a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPhotoHandler(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1661
    :sswitch_1b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGetAlbumsListMsg(Lcom/hz/net/Message;)V

    goto :goto_0

    .line 1666
    :sswitch_1c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAdvertisement(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1670
    :sswitch_1d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCountryStorageGet(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1674
    :sswitch_1e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAchieveGetInfo(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1678
    :sswitch_1f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAchieveList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1682
    :sswitch_20
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAchieveGainReward(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1686
    :sswitch_21
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAchieveTitleList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1690
    :sswitch_22
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAchieveUseTitle(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1694
    :sswitch_23
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processBagRepaitByTeam(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1698
    :sswitch_24
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortStartMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1702
    :sswitch_25
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortPostQuit(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1706
    :sswitch_26
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortMoveMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1710
    :sswitch_27
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortRefreshMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1714
    :sswitch_28
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortEventMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1718
    :sswitch_29
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortRobList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1722
    :sswitch_2a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMarryWishList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1726
    :sswitch_2b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRedPacket(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1730
    :sswitch_2c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processWishList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1733
    :sswitch_2d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMarryList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1736
    :sswitch_2e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processNewEscortRobList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1740
    :sswitch_2f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortRob(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1744
    :sswitch_30
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEscortListPlayer(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1748
    :sswitch_31
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTaskOffLineListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1752
    :sswitch_32
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTaskOffLineActivateMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1756
    :sswitch_33
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGetSuitInfoMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1760
    :sswitch_34
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processItemInfoMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1764
    :sswitch_35
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCountryNotify(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1768
    :sswitch_36
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processSetRebornMapMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1772
    :sswitch_37
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerEventMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1776
    :sswitch_38
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processShowTextMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1780
    :sswitch_39
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCheckEditionMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1784
    :sswitch_3a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processUserRegisterMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1788
    :sswitch_3b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processUserLoginMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1792
    :sswitch_3c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAreaLineListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1800
    :sswitch_3d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGameServerErrorNotify(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1808
    :sswitch_3e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processListPlayerMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1812
    :sswitch_3f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAddPlayerMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1816
    :sswitch_40
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDelPlayerMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1820
    :sswitch_41
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCancelDelPlayerMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1824
    :sswitch_42
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerEnterMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1828
    :sswitch_43
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerLogoutMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1832
    :sswitch_44
    invoke-static {p0}, Lcom/hz/main/GameWorld;->doAutoMove(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1836
    :sswitch_45
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processSendEnterMap(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1840
    :sswitch_46
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processSendLeaveMap(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1844
    :sswitch_47
    invoke-static {p0}, Lcom/hz/core/Skill;->doUpdateFormation(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1848
    :sswitch_48
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processIconChangeMessage(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1852
    :sswitch_49
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTaskGetPetMessage(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1856
    :sswitch_4a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processVipChangeMessage(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1860
    :sswitch_4b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processModeChangeMessage(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1864
    :sswitch_4c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processSettingChangeMessage(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1868
    :sswitch_4d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processOtherMoveTo(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1872
    :sswitch_4e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processWorldDataMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1876
    :sswitch_4f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processJumpMapMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1880
    :sswitch_50
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processJumpCityMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1884
    :sswitch_51
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAttributeUpdateMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1888
    :sswitch_52
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCombatPointMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1892
    :sswitch_53
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAttributeUpdateMsg2(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1896
    :sswitch_54
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAttributeAddMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1900
    :sswitch_55
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerBagMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1904
    :sswitch_56
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processLocalBattleReward(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1909
    :sswitch_57
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processEnterRemoteBattle(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1913
    :sswitch_58
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRemoteBattleNotify(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1917
    :sswitch_59
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processBattleUpdate(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1923
    :sswitch_5a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processReqAskMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1927
    :sswitch_5b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processJoinTeamMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1931
    :sswitch_5c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processLeaveTeamMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1935
    :sswitch_5d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processChangeLeaderMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1939
    :sswitch_5e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDismissTeamMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1943
    :sswitch_5f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTeamSetMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1947
    :sswitch_60
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processSelfLeaveTeamMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1951
    :sswitch_61
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataTeamMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1956
    :sswitch_62
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDropSkill(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1960
    :sswitch_63
    invoke-static {p0}, Lcom/hz/core/Skill;->updatePlayerSkill(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1964
    :sswitch_64
    invoke-static {p0}, Lcom/hz/core/NewArena;->doPushRefresh(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1969
    :sswitch_65
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAutoSkill(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1973
    :sswitch_66
    invoke-static {p0}, Lcom/hz/core/Vitality;->doGetPush(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1984
    :sswitch_67
    invoke-static {p0}, Lcom/hz/core/PlayerTurnMonster;->doChangeTurnMonsterPush(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1988
    :sswitch_68
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerTrunMonsterNotifyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1992
    :sswitch_69
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGetMissionDataMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 1996
    :sswitch_6a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTastAcceptMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2000
    :sswitch_6b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTaskDeliverMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2004
    :sswitch_6c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processTaskAbandonMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2008
    :sswitch_6d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2012
    :sswitch_6e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionTeamMemberAccept(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2016
    :sswitch_6f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionTeamDeliver(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2020
    :sswitch_70
    invoke-static {p0}, Lcom/hz/main/GameWorld;->updatePlayerMoney(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2030
    :sswitch_71
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processChatMessageReceive(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2034
    :sswitch_72
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processServerChatMessageReceive(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2038
    :sswitch_73
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processChatSubmit(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2042
    :sswitch_74
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processBagRefreshMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2046
    :sswitch_75
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processItemShopListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2050
    :sswitch_76
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processItemShopSell(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2054
    :sswitch_77
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPetChangeNotifyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2058
    :sswitch_78
    invoke-static {p0}, Lcom/hz/main/GameWorld;->doAutoEquipUpdatedata(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2062
    :sswitch_79
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2066
    :sswitch_7a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailDetailMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2070
    :sswitch_7b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailSendMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2074
    :sswitch_7c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailNotifyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2078
    :sswitch_7d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailSendGMMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2082
    :sswitch_7e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailAttachMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2086
    :sswitch_7f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailBackMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2090
    :sswitch_80
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMailDeleteMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2094
    :sswitch_81
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPetSeeMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2098
    :sswitch_82
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processBrowseCityInfoMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2104
    :sswitch_83
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCityHandlerMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2109
    :sswitch_84
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCityCountryReflashMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2113
    :sswitch_85
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMapUpdateMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2117
    :sswitch_86
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenaryListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2121
    :sswitch_87
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenaryInfoMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2125
    :sswitch_88
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenaryNotifyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2129
    :sswitch_89
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenaryMyListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2133
    :sswitch_8a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenarySetStatusMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2137
    :sswitch_8b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenaryDelMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2141
    :sswitch_8c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMercenaryMyInfoMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2145
    :sswitch_8d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerEnchantShopStartMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2149
    :sswitch_8e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerEnchantShopItemListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2153
    :sswitch_8f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerEnchantShopEndMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2157
    :sswitch_90
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerEnchantShopRecordMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2161
    :sswitch_91
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopStartMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2165
    :sswitch_92
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopEndMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2169
    :sswitch_93
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopItemListMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2173
    :sswitch_94
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopBuyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2177
    :sswitch_95
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopNotifyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2181
    :sswitch_96
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopRecordMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2185
    :sswitch_97
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerShopHasNotifyMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2189
    :sswitch_98
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsSellFind(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2193
    :sswitch_99
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsSellBuy(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2197
    :sswitch_9a
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsSellSubmit(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2201
    :sswitch_9b
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsSellRetrieve(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2205
    :sswitch_9c
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsSellList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2209
    :sswitch_9d
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsAutoProvide(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2213
    :sswitch_9e
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsProvideMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2217
    :sswitch_9f
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsPurchaseList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2221
    :sswitch_a0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsPurchaseSubmit(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2225
    :sswitch_a1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsPurchaseCancel(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2229
    :sswitch_a2
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsPurchaseGet(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2233
    :sswitch_a3
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsPurchaseMyList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2237
    :sswitch_a4
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processGoodsPurchaseTypeList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2241
    :sswitch_a5
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRelationList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2245
    :sswitch_a6
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRelationTutorList(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2248
    :sswitch_a7
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRelationAdd(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2252
    :sswitch_a8
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRelationDel(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2256
    :sswitch_a9
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPlayerSee(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2260
    :sswitch_aa
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processIdentifyAsk(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2279
    :sswitch_ab
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCountryHandler(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2283
    :sswitch_ac
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processCountryListHandler(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2287
    :sswitch_ad
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPetChangeName(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2291
    :sswitch_ae
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processPetInfoMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2295
    :sswitch_af
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processLoginRewardMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2300
    :sswitch_b0
    invoke-static {p0}, Lcom/hz/core/ChatUp;->doChatUpRefresh(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2304
    :sswitch_b1
    invoke-static {p0}, Lcom/hz/core/LoginLotteryDraw;->doPushIsOpen(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2308
    :sswitch_b2
    invoke-static {p0}, Lcom/hz/core/OnLineReWard;->doPushOnLineReWardInfo(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2312
    :sswitch_b3
    invoke-static {p0}, Lcom/hz/main/GameWorld;->doGetIsOpen(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2317
    :sswitch_b4
    invoke-static {p0}, Lcom/hz/core/GuideManager;->doGuidePush(Lcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2328
    :sswitch_b5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 2333
    :sswitch_b6
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMonsterBookDetailMsg(Lcom/hz/net/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1212
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_42
        0x3 -> :sswitch_43
        0x5 -> :sswitch_3d
        0x1388 -> :sswitch_39
        0x1389 -> :sswitch_3a
        0x138a -> :sswitch_3b
        0x138b -> :sswitch_18
        0x138f -> :sswitch_3c
        0x1390 -> :sswitch_2
        0x1391 -> :sswitch_16
        0x1392 -> :sswitch_16
        0x1393 -> :sswitch_16
        0x1394 -> :sswitch_16
        0x1397 -> :sswitch_18
        0x1399 -> :sswitch_18
        0x2711 -> :sswitch_3e
        0x2712 -> :sswitch_3f
        0x2713 -> :sswitch_40
        0x2714 -> :sswitch_41
        0x2715 -> :sswitch_16
        0x2716 -> :sswitch_18
        0x2717 -> :sswitch_18
        0x2718 -> :sswitch_16
        0x2719 -> :sswitch_13
        0x271a -> :sswitch_16
        0x271b -> :sswitch_18
        0x271c -> :sswitch_1c
        0x271e -> :sswitch_16
        0x2905 -> :sswitch_45
        0x2906 -> :sswitch_46
        0x2907 -> :sswitch_4e
        0x2909 -> :sswitch_4d
        0x290a -> :sswitch_4f
        0x290b -> :sswitch_48
        0x290c -> :sswitch_37
        0x290d -> :sswitch_38
        0x290e -> :sswitch_50
        0x290f -> :sswitch_82
        0x2910 -> :sswitch_83
        0x2911 -> :sswitch_83
        0x2912 -> :sswitch_83
        0x2913 -> :sswitch_84
        0x2914 -> :sswitch_85
        0x2915 -> :sswitch_36
        0x2916 -> :sswitch_11
        0x2917 -> :sswitch_18
        0x2918 -> :sswitch_19
        0x2919 -> :sswitch_18
        0x291a -> :sswitch_13
        0x291b -> :sswitch_13
        0x291c -> :sswitch_13
        0x291d -> :sswitch_11
        0x291f -> :sswitch_44
        0x2926 -> :sswitch_18
        0x2927 -> :sswitch_18
        0x2928 -> :sswitch_11
        0x2afb -> :sswitch_54
        0x2afc -> :sswitch_51
        0x2afd -> :sswitch_4b
        0x2afe -> :sswitch_4c
        0x2aff -> :sswitch_79
        0x2b00 -> :sswitch_7a
        0x2b01 -> :sswitch_7b
        0x2b02 -> :sswitch_7d
        0x2b03 -> :sswitch_7e
        0x2b04 -> :sswitch_7f
        0x2b05 -> :sswitch_80
        0x2b06 -> :sswitch_7c
        0x2b07 -> :sswitch_1a
        0x2b08 -> :sswitch_1a
        0x2b09 -> :sswitch_1a
        0x2b0a -> :sswitch_1a
        0x2b0b -> :sswitch_1a
        0x2b0c -> :sswitch_1b
        0x2b0d -> :sswitch_1a
        0x2b0e -> :sswitch_1a
        0x2b0f -> :sswitch_1e
        0x2b10 -> :sswitch_1f
        0x2b11 -> :sswitch_20
        0x2b12 -> :sswitch_21
        0x2b13 -> :sswitch_22
        0x2b14 -> :sswitch_18
        0x2b15 -> :sswitch_16
        0x2b16 -> :sswitch_16
        0x2b17 -> :sswitch_16
        0x2b19 -> :sswitch_16
        0x2b1a -> :sswitch_13
        0x2b1d -> :sswitch_53
        0x2b1e -> :sswitch_18
        0x2b1f -> :sswitch_18
        0x2b20 -> :sswitch_13
        0x2b21 -> :sswitch_13
        0x2b22 -> :sswitch_18
        0x2b23 -> :sswitch_18
        0x2b24 -> :sswitch_13
        0x2b25 -> :sswitch_13
        0x2b27 -> :sswitch_b5
        0x2b28 -> :sswitch_13
        0x2b29 -> :sswitch_13
        0x2b2a -> :sswitch_18
        0x2b2b -> :sswitch_13
        0x2b2c -> :sswitch_13
        0x2b2d -> :sswitch_18
        0x2b2e -> :sswitch_13
        0x2b2f -> :sswitch_18
        0x2b30 -> :sswitch_13
        0x2b31 -> :sswitch_13
        0x2b32 -> :sswitch_4a
        0x2b33 -> :sswitch_16
        0x2b34 -> :sswitch_13
        0x2b36 -> :sswitch_18
        0x2b37 -> :sswitch_18
        0x2b38 -> :sswitch_18
        0x2b39 -> :sswitch_18
        0x2b3a -> :sswitch_16
        0x2b3b -> :sswitch_18
        0x2b3c -> :sswitch_16
        0x2b3d -> :sswitch_16
        0x2b3f -> :sswitch_18
        0x2b40 -> :sswitch_16
        0x2b41 -> :sswitch_18
        0x2b43 -> :sswitch_af
        0x2b45 -> :sswitch_18
        0x2b46 -> :sswitch_13
        0x2b48 -> :sswitch_18
        0x2b49 -> :sswitch_16
        0x2b4b -> :sswitch_18
        0x2b52 -> :sswitch_16
        0x2b59 -> :sswitch_18
        0x2b62 -> :sswitch_18
        0x2b63 -> :sswitch_18
        0x2b64 -> :sswitch_b2
        0x2b65 -> :sswitch_18
        0x2b66 -> :sswitch_b0
        0x2b67 -> :sswitch_18
        0x2b68 -> :sswitch_b0
        0x2b69 -> :sswitch_18
        0x2b6a -> :sswitch_b4
        0x2b6b -> :sswitch_b1
        0x2b6c -> :sswitch_b3
        0x2b70 -> :sswitch_18
        0x2b71 -> :sswitch_18
        0x2b75 -> :sswitch_18
        0x2b76 -> :sswitch_18
        0x2b7a -> :sswitch_18
        0x2b86 -> :sswitch_67
        0x2b8a -> :sswitch_18
        0x2b8b -> :sswitch_18
        0x2b8c -> :sswitch_18
        0x2b8d -> :sswitch_18
        0x2b8e -> :sswitch_18
        0x2b8f -> :sswitch_18
        0x2b98 -> :sswitch_18
        0x2b99 -> :sswitch_18
        0x2b9b -> :sswitch_a6
        0x2ced -> :sswitch_33
        0x2cee -> :sswitch_13
        0x2cef -> :sswitch_13
        0x2cf0 -> :sswitch_11
        0x2cf1 -> :sswitch_13
        0x2cf2 -> :sswitch_18
        0x2cf3 -> :sswitch_13
        0x2cf4 -> :sswitch_18
        0x2cf5 -> :sswitch_18
        0x2cf6 -> :sswitch_16
        0x2cf7 -> :sswitch_16
        0x2cf8 -> :sswitch_16
        0x2cf9 -> :sswitch_16
        0x2cfa -> :sswitch_16
        0x2cfb -> :sswitch_16
        0x2cfc -> :sswitch_16
        0x2cfd -> :sswitch_16
        0x2cfe -> :sswitch_16
        0x2cff -> :sswitch_18
        0x2d00 -> :sswitch_18
        0x2d01 -> :sswitch_18
        0x2d02 -> :sswitch_8d
        0x2d03 -> :sswitch_8f
        0x2d04 -> :sswitch_18
        0x2d05 -> :sswitch_8e
        0x2d06 -> :sswitch_90
        0x2d07 -> :sswitch_18
        0x2d08 -> :sswitch_18
        0x2d09 -> :sswitch_11
        0x2ee1 -> :sswitch_55
        0x2ee3 -> :sswitch_74
        0x2ee4 -> :sswitch_75
        0x2ee5 -> :sswitch_18
        0x2ee6 -> :sswitch_76
        0x2ee7 -> :sswitch_91
        0x2ee8 -> :sswitch_92
        0x2eea -> :sswitch_93
        0x2eeb -> :sswitch_94
        0x2eec -> :sswitch_96
        0x2eed -> :sswitch_95
        0x2eee -> :sswitch_97
        0x2eef -> :sswitch_aa
        0x2ef0 -> :sswitch_34
        0x2ef1 -> :sswitch_16
        0x2ef2 -> :sswitch_16
        0x2ef3 -> :sswitch_16
        0x2ef4 -> :sswitch_13
        0x2ef5 -> :sswitch_11
        0x2ef6 -> :sswitch_13
        0x2ef7 -> :sswitch_23
        0x2ef8 -> :sswitch_16
        0x2ef9 -> :sswitch_16
        0x2efa -> :sswitch_18
        0x2efb -> :sswitch_78
        0x2efd -> :sswitch_16
        0x2efe -> :sswitch_16
        0x2eff -> :sswitch_49
        0x2f00 -> :sswitch_18
        0x2f01 -> :sswitch_18
        0x2f02 -> :sswitch_18
        0x2f03 -> :sswitch_18
        0x2f04 -> :sswitch_18
        0x2f05 -> :sswitch_18
        0x2f07 -> :sswitch_18
        0x2f08 -> :sswitch_18
        0x2f09 -> :sswitch_18
        0x2f0a -> :sswitch_18
        0x2f0b -> :sswitch_68
        0x2f0c -> :sswitch_18
        0x2f11 -> :sswitch_52
        0x2f12 -> :sswitch_16
        0x2f13 -> :sswitch_16
        0x2f14 -> :sswitch_18
        0x30d6 -> :sswitch_56
        0x30d7 -> :sswitch_57
        0x30d8 -> :sswitch_58
        0x30da -> :sswitch_59
        0x30db -> :sswitch_5a
        0x30dc -> :sswitch_57
        0x30dd -> :sswitch_17
        0x30de -> :sswitch_18
        0x30df -> :sswitch_18
        0x30e0 -> :sswitch_b
        0x30e1 -> :sswitch_18
        0x30e2 -> :sswitch_18
        0x30e3 -> :sswitch_c
        0x30e4 -> :sswitch_a
        0x30e5 -> :sswitch_18
        0x30e6 -> :sswitch_18
        0x30e7 -> :sswitch_18
        0x30e8 -> :sswitch_18
        0x30e9 -> :sswitch_18
        0x30ea -> :sswitch_18
        0x30eb -> :sswitch_18
        0x30ec -> :sswitch_18
        0x30ed -> :sswitch_18
        0x30ef -> :sswitch_18
        0x30f0 -> :sswitch_18
        0x30f1 -> :sswitch_18
        0x30f2 -> :sswitch_18
        0x30f3 -> :sswitch_64
        0x30f4 -> :sswitch_18
        0x32c9 -> :sswitch_18
        0x32ca -> :sswitch_b6
        0x34bd -> :sswitch_5a
        0x34be -> :sswitch_5b
        0x34bf -> :sswitch_5c
        0x34c0 -> :sswitch_5d
        0x34c1 -> :sswitch_5e
        0x34c2 -> :sswitch_5f
        0x34c3 -> :sswitch_60
        0x34c4 -> :sswitch_61
        0x34c5 -> :sswitch_73
        0x34c6 -> :sswitch_71
        0x34c7 -> :sswitch_71
        0x34c8 -> :sswitch_71
        0x34c9 -> :sswitch_71
        0x34ca -> :sswitch_71
        0x34cb -> :sswitch_71
        0x34cc -> :sswitch_98
        0x34cd -> :sswitch_99
        0x34ce -> :sswitch_9a
        0x34cf -> :sswitch_9b
        0x34d0 -> :sswitch_9c
        0x34d1 -> :sswitch_a0
        0x34d2 -> :sswitch_a1
        0x34d3 -> :sswitch_a2
        0x34d4 -> :sswitch_a3
        0x34d5 -> :sswitch_9f
        0x34d6 -> :sswitch_9e
        0x34d7 -> :sswitch_9d
        0x34d8 -> :sswitch_a4
        0x34d9 -> :sswitch_a5
        0x34da -> :sswitch_a7
        0x34db -> :sswitch_a8
        0x34dc -> :sswitch_a9
        0x34dd -> :sswitch_18
        0x34de -> :sswitch_16
        0x34df -> :sswitch_16
        0x34e0 -> :sswitch_16
        0x34e1 -> :sswitch_18
        0x34e2 -> :sswitch_13
        0x34e3 -> :sswitch_13
        0x34e4 -> :sswitch_13
        0x34e5 -> :sswitch_b5
        0x34e6 -> :sswitch_b5
        0x34e7 -> :sswitch_b5
        0x34e8 -> :sswitch_16
        0x34e9 -> :sswitch_16
        0x34ea -> :sswitch_16
        0x34eb -> :sswitch_16
        0x34ec -> :sswitch_18
        0x34ee -> :sswitch_71
        0x34ef -> :sswitch_18
        0x34f0 -> :sswitch_18
        0x34f2 -> :sswitch_72
        0x34f3 -> :sswitch_2a
        0x34f4 -> :sswitch_2c
        0x34f5 -> :sswitch_2d
        0x34f6 -> :sswitch_2b
        0x36b1 -> :sswitch_18
        0x36b2 -> :sswitch_18
        0x36b3 -> :sswitch_62
        0x36b4 -> :sswitch_65
        0x36b5 -> :sswitch_65
        0x36b6 -> :sswitch_62
        0x36b7 -> :sswitch_16
        0x36b8 -> :sswitch_16
        0x36b9 -> :sswitch_16
        0x36ba -> :sswitch_16
        0x36bb -> :sswitch_63
        0x36bc -> :sswitch_18
        0x36bd -> :sswitch_18
        0x36be -> :sswitch_47
        0x36bf -> :sswitch_18
        0x36c0 -> :sswitch_16
        0x36c1 -> :sswitch_16
        0x38a5 -> :sswitch_69
        0x38a6 -> :sswitch_6a
        0x38a7 -> :sswitch_6b
        0x38a8 -> :sswitch_6c
        0x38a9 -> :sswitch_6d
        0x38aa -> :sswitch_6e
        0x38ab -> :sswitch_6f
        0x38ac -> :sswitch_24
        0x38ad -> :sswitch_25
        0x38ae -> :sswitch_26
        0x38af -> :sswitch_27
        0x38b0 -> :sswitch_31
        0x38b1 -> :sswitch_32
        0x38b2 -> :sswitch_28
        0x38b3 -> :sswitch_29
        0x38b4 -> :sswitch_2f
        0x38b5 -> :sswitch_30
        0x38b6 -> :sswitch_5
        0x38b7 -> :sswitch_6
        0x38b8 -> :sswitch_13
        0x38ba -> :sswitch_13
        0x38bb -> :sswitch_7
        0x38bc -> :sswitch_13
        0x38bd -> :sswitch_0
        0x38be -> :sswitch_8
        0x38bf -> :sswitch_11
        0x38c0 -> :sswitch_13
        0x38c1 -> :sswitch_12
        0x38c3 -> :sswitch_13
        0x38c4 -> :sswitch_13
        0x38c5 -> :sswitch_13
        0x38c6 -> :sswitch_18
        0x38c7 -> :sswitch_2e
        0x38c8 -> :sswitch_11
        0x38c9 -> :sswitch_11
        0x38ca -> :sswitch_11
        0x38cb -> :sswitch_11
        0x38cc -> :sswitch_9
        0x38cd -> :sswitch_11
        0x38ce -> :sswitch_d
        0x38cf -> :sswitch_13
        0x38d0 -> :sswitch_13
        0x38d1 -> :sswitch_e
        0x38d2 -> :sswitch_13
        0x38d3 -> :sswitch_10
        0x38d4 -> :sswitch_f
        0x38d5 -> :sswitch_11
        0x38d6 -> :sswitch_11
        0x38d7 -> :sswitch_18
        0x38d9 -> :sswitch_18
        0x38da -> :sswitch_18
        0x38db -> :sswitch_66
        0x38dc -> :sswitch_18
        0x38dd -> :sswitch_18
        0x38de -> :sswitch_18
        0x38df -> :sswitch_18
        0x38e0 -> :sswitch_0
        0x38e1 -> :sswitch_0
        0x38e5 -> :sswitch_18
        0x38e6 -> :sswitch_18
        0x38e7 -> :sswitch_18
        0x38e8 -> :sswitch_18
        0x38e9 -> :sswitch_18
        0x38ea -> :sswitch_18
        0x38eb -> :sswitch_18
        0x38ec -> :sswitch_18
        0x38ed -> :sswitch_18
        0x38ee -> :sswitch_18
        0x38f0 -> :sswitch_18
        0x38f1 -> :sswitch_18
        0x38f2 -> :sswitch_18
        0x38f6 -> :sswitch_18
        0x38f7 -> :sswitch_18
        0x38fa -> :sswitch_18
        0x3a99 -> :sswitch_ab
        0x3a9a -> :sswitch_ab
        0x3a9b -> :sswitch_ab
        0x3a9c -> :sswitch_ac
        0x3a9d -> :sswitch_ab
        0x3a9e -> :sswitch_ab
        0x3a9f -> :sswitch_ab
        0x3aa0 -> :sswitch_ab
        0x3aa1 -> :sswitch_18
        0x3aa2 -> :sswitch_5a
        0x3aa3 -> :sswitch_ab
        0x3aa4 -> :sswitch_18
        0x3aa5 -> :sswitch_ab
        0x3aa6 -> :sswitch_ab
        0x3aa7 -> :sswitch_ab
        0x3aa8 -> :sswitch_18
        0x3aa9 -> :sswitch_84
        0x3aaa -> :sswitch_16
        0x3aab -> :sswitch_16
        0x3aac -> :sswitch_ab
        0x3aad -> :sswitch_ab
        0x3aae -> :sswitch_ab
        0x3aaf -> :sswitch_16
        0x3ab0 -> :sswitch_16
        0x3ab1 -> :sswitch_16
        0x3ab2 -> :sswitch_16
        0x3ab3 -> :sswitch_1d
        0x3ab4 -> :sswitch_16
        0x3ab5 -> :sswitch_16
        0x3ab6 -> :sswitch_16
        0x3ab7 -> :sswitch_18
        0x3ab8 -> :sswitch_16
        0x3ab9 -> :sswitch_16
        0x3aba -> :sswitch_ab
        0x3abb -> :sswitch_35
        0x3abc -> :sswitch_16
        0x3abd -> :sswitch_16
        0x3abe -> :sswitch_18
        0x3abf -> :sswitch_3
        0x3ac0 -> :sswitch_14
        0x3ac1 -> :sswitch_11
        0x3ac2 -> :sswitch_13
        0x3ac3 -> :sswitch_15
        0x3ac4 -> :sswitch_11
        0x3ac5 -> :sswitch_11
        0x3ac6 -> :sswitch_11
        0x3ac7 -> :sswitch_13
        0x3ac8 -> :sswitch_13
        0x3ac9 -> :sswitch_13
        0x3aca -> :sswitch_13
        0x3acb -> :sswitch_13
        0x3acc -> :sswitch_13
        0x3acd -> :sswitch_13
        0x3ace -> :sswitch_13
        0x3acf -> :sswitch_11
        0x3ad0 -> :sswitch_13
        0x3ad1 -> :sswitch_13
        0x3ad2 -> :sswitch_13
        0x3ad3 -> :sswitch_13
        0x3ad4 -> :sswitch_13
        0x3ad5 -> :sswitch_13
        0x3ad6 -> :sswitch_13
        0x3ad7 -> :sswitch_11
        0x3ad8 -> :sswitch_11
        0x3ad9 -> :sswitch_13
        0x3ada -> :sswitch_11
        0x3adb -> :sswitch_13
        0x3adc -> :sswitch_13
        0x3add -> :sswitch_13
        0x3ade -> :sswitch_13
        0x3adf -> :sswitch_11
        0x3ae0 -> :sswitch_11
        0x3ae1 -> :sswitch_11
        0x3ae2 -> :sswitch_11
        0x3ae3 -> :sswitch_11
        0x3ae4 -> :sswitch_11
        0x3ae5 -> :sswitch_ab
        0x3c8d -> :sswitch_77
        0x3c8e -> :sswitch_81
        0x3c8f -> :sswitch_86
        0x3c90 -> :sswitch_87
        0x3c91 -> :sswitch_18
        0x3c92 -> :sswitch_89
        0x3c93 -> :sswitch_8c
        0x3c94 -> :sswitch_8a
        0x3c95 -> :sswitch_88
        0x3c96 -> :sswitch_8b
        0x3c97 -> :sswitch_ad
        0x3c98 -> :sswitch_ae
        0x3c99 -> :sswitch_4
        0x3c9a -> :sswitch_18
        0x3c9b -> :sswitch_18
        0x3c9c -> :sswitch_18
        0x3c9d -> :sswitch_18
        0x3e84 -> :sswitch_b5
        0x3e85 -> :sswitch_b5
        0x3e86 -> :sswitch_16
        0x3e87 -> :sswitch_16
        0x3e88 -> :sswitch_18
        0x3e89 -> :sswitch_18
        0x3e8a -> :sswitch_18
        0x3e8b -> :sswitch_18
        0x3e8c -> :sswitch_18
        0x3e8d -> :sswitch_18
        0x3e8e -> :sswitch_18
        0x3e8f -> :sswitch_18
        0x3e90 -> :sswitch_18
        0x3e92 -> :sswitch_16
        0x3e93 -> :sswitch_70
        0x4269 -> :sswitch_18
        0x426a -> :sswitch_18
        0x445d -> :sswitch_18
        0x445e -> :sswitch_18
        0x445f -> :sswitch_18
        0x4460 -> :sswitch_18
        0x4461 -> :sswitch_18
    .end sparse-switch
.end method

.method public static handleMessages()V
    .locals 4

    .prologue
    .line 1082
    const/4 v1, 0x0

    .line 1085
    .local v1, "msgList":[Lcom/hz/net/Message;
    sget-object v2, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v2, :cond_4

    .line 1086
    sget-object v3, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    monitor-enter v3

    .line 1088
    :try_start_0
    sget-object v2, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    sget-object v2, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/hz/net/Message;

    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 1093
    sget-object v2, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 1086
    .end local v0    # "i":I
    :cond_0
    monitor-exit v3

    .line 1102
    :cond_1
    :goto_1
    if-nez v1, :cond_5

    .line 1108
    :cond_2
    return-void

    .line 1091
    .restart local v0    # "i":I
    :cond_3
    sget-object v2, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/net/Message;

    aput-object v2, v1, v0

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1098
    :cond_4
    sget-object v2, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v2, :cond_1

    .line 1099
    sget-object v2, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v2}, Lcom/hz/net/HttpConnector;->getResponses()[Lcom/hz/net/Message;

    move-result-object v1

    goto :goto_1

    .line 1105
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1106
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/hz/main/MsgHandler;->handleMessage(Lcom/hz/net/Message;)V

    .line 1105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static handlePlayerListBase([Lcom/hz/actor/Model;)V
    .locals 7
    .param p0, "newModelList"    # [Lcom/hz/actor/Model;

    .prologue
    .line 5251
    if-nez p0, :cond_1

    .line 5305
    :cond_0
    return-void

    .line 5257
    :cond_1
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 5258
    .local v2, "newAllModelHashtable":Ljava/util/Hashtable;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_3

    .line 5286
    sput-object v2, Lcom/hz/main/GameWorld;->otherModels:Ljava/util/Hashtable;

    .line 5288
    const/4 v0, 0x0

    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 5289
    aget-object v1, p0, v0

    .line 5290
    .local v1, "model":Lcom/hz/actor/Model;
    if-nez v1, :cond_6

    .line 5288
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5259
    .end local v1    # "model":Lcom/hz/actor/Model;
    :cond_3
    aget-object v1, p0, v0

    .line 5260
    .restart local v1    # "model":Lcom/hz/actor/Model;
    if-nez v1, :cond_4

    .line 5258
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5266
    :cond_4
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v3

    .line 5267
    .local v3, "oldModel":Lcom/hz/actor/Model;
    if-eqz v3, :cond_5

    .line 5269
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 5272
    const/4 v4, 0x0

    .line 5273
    .local v4, "oldPetSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 5274
    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v4

    .line 5275
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hz/actor/Model;->getIcon1()I

    move-result v5

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hz/actor/Model;->getIcon1()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 5276
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 5277
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hz/actor/Model;->setSpriteRotateByDir()V

    .line 5282
    .end local v4    # "oldPetSprite":Lcom/hz/sprite/GameSprite;
    :cond_5
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 5295
    .end local v3    # "oldModel":Lcom/hz/actor/Model;
    :cond_6
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v5

    if-nez v5, :cond_7

    .line 5296
    const/16 v5, 0x40

    invoke-static {v5, v1}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 5300
    :cond_7
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v5

    if-nez v5, :cond_2

    .line 5301
    const/16 v5, 0x20

    invoke-static {v5, v1}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public static initMyPlayerSyncPosition()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 415
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getGx()I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/hz/main/MsgHandler;->lastMoveTOGx:B

    .line 419
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getGy()I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/hz/main/MsgHandler;->lastMoveTOGy:B

    goto :goto_0
.end method

.method private static final isMessageInResult(SZ)Z
    .locals 5
    .param p0, "msgType"    # S
    .param p1, "isErrorNotify"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 1148
    const/4 v3, 0x0

    :cond_0
    :goto_1
    return v3

    .line 1118
    :cond_1
    sget-object v4, Lcom/hz/main/MsgHandler;->allMessages:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/net/Message;

    .line 1119
    .local v2, "msg":Lcom/hz/net/Message;
    if-nez v2, :cond_3

    .line 1117
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    :cond_3
    invoke-virtual {v2}, Lcom/hz/net/Message;->getType()S

    move-result v0

    .line 1126
    .local v0, "getType":I
    if-eq v0, p0, :cond_0

    .line 1127
    const/16 v4, 0x30d8

    if-eq v0, v4, :cond_0

    .line 1128
    const/16 v4, 0x38ac

    if-eq v0, v4, :cond_0

    .line 1129
    const/16 v4, 0x3abf

    if-eq v0, v4, :cond_0

    .line 1131
    const/16 v4, 0x38b6

    if-eq v0, v4, :cond_0

    .line 1132
    const/16 v4, 0x38bd

    if-eq v0, v4, :cond_0

    .line 1133
    const/16 v4, 0x38cc

    if-eq v0, v4, :cond_0

    .line 1135
    const/16 v4, 0x38d3

    if-eq v0, v4, :cond_0

    .line 1136
    const/16 v4, 0x30e0

    if-eq v0, v4, :cond_0

    .line 1137
    const/16 v4, 0x2907

    if-eq v0, v4, :cond_0

    .line 1141
    if-eqz p1, :cond_2

    .line 1143
    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    goto :goto_1
.end method

.method public static isOpenLoginConn()Z
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    iget-object v0, v0, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    iget-object v0, v0, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    invoke-static {}, Lcom/hz/main/MsgHandler;->getSocketLoginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "socketUrl"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x2ee0

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 656
    sget v7, Lcom/hz/main/MsgHandler;->connMode:I

    if-ne v7, v11, :cond_1

    sget-object v7, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v7, :cond_1

    move v0, v5

    .line 657
    .local v0, "isHttpConnMode":Z
    :goto_0
    sget v7, Lcom/hz/main/MsgHandler;->connMode:I

    if-ne v7, v5, :cond_2

    sget-object v7, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v7, :cond_2

    move v2, v5

    .line 660
    .local v2, "isSocketConnMode":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 666
    sget-object v6, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v6, :cond_0

    .line 667
    const-string v6, "Socket \u0111ang k\u1ebft n\u1ed1i, http t\u1ea1i sao v\u1eabn m\u1edf??"

    invoke-static {v6}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 670
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeSocketConnection()V

    .line 671
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->setHttpUrl(Ljava/lang/String;)V

    .line 809
    :goto_2
    return v5

    .end local v0    # "isHttpConnMode":Z
    .end local v2    # "isSocketConnMode":Z
    :cond_1
    move v0, v6

    .line 656
    goto :goto_0

    .restart local v0    # "isHttpConnMode":Z
    :cond_2
    move v2, v6

    .line 657
    goto :goto_1

    .line 677
    .restart local v2    # "isSocketConnMode":Z
    :cond_3
    if-eqz v2, :cond_5

    .line 679
    sget-object v7, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    iget-object v7, v7, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    if-eqz v7, :cond_5

    if-eqz p1, :cond_5

    sget-object v7, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    iget-object v7, v7, Lcom/hz/net/SocketServer;->url:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 681
    invoke-static {}, Lcom/hz/main/MsgHandler;->getSocketLoginUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 686
    sget-object v6, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v6, :cond_4

    .line 687
    const-string v6, "Socket \u0111ang k\u1ebft n\u1ed1i, http t\u1ea1i sao v\u1eabn m\u1edf??"

    invoke-static {v6}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 690
    :cond_4
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeHttpConnection()V

    goto :goto_2

    .line 707
    :cond_5
    invoke-static {p0, p1}, Lcom/hz/main/ServerInfo;->createConnectInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/ServerInfo;

    move-result-object v3

    .line 709
    .local v3, "serverInfo":Lcom/hz/main/ServerInfo;
    sput-boolean v5, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 710
    const-string v7, "\u0110ang k\u1ebft n\u1ed1i......"

    sput-object v7, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    .line 738
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeHttpConnection()V

    .line 739
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeSocketConnection()V

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/hz/main/ServerInfo;->httpConnStartTime:J

    .line 743
    if-eqz v2, :cond_6

    .line 744
    iget-wide v7, v3, Lcom/hz/main/ServerInfo;->httpConnStartTime:J

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/hz/main/ServerInfo;->httpConnStartTime:J

    .line 751
    :cond_6
    iget-object v7, v3, Lcom/hz/main/ServerInfo;->sockUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/hz/net/SocketServer;->getSocketServer(Ljava/lang/String;)Lcom/hz/net/SocketServer;

    move-result-object v4

    .line 753
    .local v4, "socketServer":Lcom/hz/net/SocketServer;
    const/4 v1, 0x0

    .line 757
    .local v1, "isOpenHttp":Z
    :goto_3
    invoke-virtual {v4}, Lcom/hz/net/SocketServer;->isConnectEnd()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 758
    invoke-virtual {v4}, Lcom/hz/net/SocketServer;->isNetOk()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 780
    :cond_7
    sput-boolean v6, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 781
    const-string v7, "H\u00e3y \u0111\u1ee3i..."

    sput-object v7, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 784
    invoke-virtual {v4}, Lcom/hz/net/SocketServer;->isNetOk()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 786
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeHttpConnection()V

    .line 788
    sput v5, Lcom/hz/main/MsgHandler;->connMode:I

    .line 789
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/hz/net/SocketServer;->thread:Ljava/lang/Thread;

    .line 790
    sput-object v4, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    goto :goto_2

    .line 764
    :cond_8
    iget-byte v7, v3, Lcom/hz/main/ServerInfo;->connResult:B

    if-nez v7, :cond_7

    .line 769
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v3, Lcom/hz/main/ServerInfo;->httpConnStartTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_9

    .line 772
    invoke-static {v3}, Lcom/hz/net/HttpThread;->addOpenConnect(Lcom/hz/main/ServerInfo;)V

    .line 773
    const/4 v1, 0x1

    .line 777
    :cond_9
    sget-object v7, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v7}, Lcom/hz/main/GameCanvas;->doRepaint()V

    .line 778
    const-wide/16 v7, 0x32

    invoke-static {v7, v8}, Lcom/hz/common/Tool;->sleep(J)V

    goto :goto_3

    .line 794
    :cond_a
    iget-byte v7, v3, Lcom/hz/main/ServerInfo;->connResult:B

    if-ne v7, v5, :cond_b

    .line 796
    invoke-static {}, Lcom/hz/main/MsgHandler;->closeSocketConnection()V

    .line 797
    invoke-virtual {v4}, Lcom/hz/net/SocketServer;->safeCloseThread()V

    .line 799
    sput v11, Lcom/hz/main/MsgHandler;->connMode:I

    .line 800
    invoke-static {}, Lcom/hz/net/HttpConnector;->setConnSucess()V

    .line 801
    iget-object v6, v3, Lcom/hz/main/ServerInfo;->httpUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/hz/main/MsgHandler;->setHttpUrl(Ljava/lang/String;)V

    .line 802
    invoke-static {}, Lcom/hz/main/MsgHandler;->createHttpConnection()V

    goto/16 :goto_2

    .line 807
    :cond_b
    invoke-virtual {v4}, Lcom/hz/net/SocketServer;->safeCloseThread()V

    move v5, v6

    .line 809
    goto/16 :goto_2
.end method

.method public static openLoginServer()Z
    .locals 3

    .prologue
    .line 623
    sget-object v0, Lcom/hz/main/MsgHandler;->GAME_IP:Ljava/lang/String;

    .line 624
    .local v0, "ip":Ljava/lang/String;
    sget-object v1, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    sget-object v0, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    .line 634
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":8079"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/A?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {}, Lcom/hz/main/MsgHandler;->getSocketLoginUrl()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-static {v1, v2}, Lcom/hz/main/MsgHandler;->openConnect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final parseBattleModel(Lcom/hz/net/Message;)Lcom/hz/actor/Player;
    .locals 27
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3888
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 3889
    .local v10, "id":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v25

    .line 3890
    .local v25, "type":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v19

    .line 3891
    .local v19, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 3892
    .local v21, "position":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 3893
    .local v5, "hp":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 3894
    .local v6, "hpMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 3895
    .local v15, "mp":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 3896
    .local v16, "mpMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 3898
    .local v3, "bStatus":I
    const/4 v7, 0x0

    .line 3899
    .local v7, "icon1":I
    const/4 v8, 0x0

    .line 3900
    .local v8, "icon2":I
    const/4 v9, 0x0

    .line 3901
    .local v9, "icon3":I
    packed-switch v25, :pswitch_data_0

    .line 3908
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 3909
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 3910
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 3915
    :goto_0
    const/4 v4, -0x1

    .line 3916
    .local v4, "groudID":I
    const/4 v11, 0x0

    .line 3917
    .local v11, "isMain":Z
    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 3918
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 3919
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v11

    .line 3923
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v22

    .line 3926
    .local v22, "status":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 3929
    .local v13, "keep_atk_time":I
    const/16 v23, 0x0

    .line 3930
    .local v23, "tempformationSkill":Lcom/hz/core/Skill;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v12

    .line 3931
    .local v12, "ishasformation":Z
    if-eqz v12, :cond_1

    .line 3933
    invoke-static/range {p0 .. p0}, Lcom/hz/core/Skill;->fromByteFormationSkill(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v23

    .line 3936
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v24

    .line 3949
    .local v24, "tempiconpet1":S
    sget-object v18, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3950
    .local v18, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v18, :cond_7

    .line 3952
    invoke-virtual/range {v18 .. v18}, Lcom/hz/actor/Player;->getId()I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v10, :cond_7

    .line 3955
    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 3957
    invoke-virtual/range {v18 .. v18}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v17

    check-cast v17, Lcom/hz/actor/Player;

    .line 3958
    .local v17, "myPet":Lcom/hz/actor/Player;
    if-nez v17, :cond_2

    .line 3962
    const/16 v17, 0x0

    .line 4047
    .end local v17    # "myPet":Lcom/hz/actor/Player;
    :goto_1
    return-object v17

    .line 3905
    .end local v4    # "groudID":I
    .end local v11    # "isMain":Z
    .end local v12    # "ishasformation":Z
    .end local v13    # "keep_atk_time":I
    .end local v18    # "myPlayer":Lcom/hz/actor/Player;
    .end local v22    # "status":I
    .end local v23    # "tempformationSkill":Lcom/hz/core/Skill;
    .end local v24    # "tempiconpet1":S
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 3906
    goto :goto_0

    .line 3968
    .restart local v4    # "groudID":I
    .restart local v11    # "isMain":Z
    .restart local v12    # "ishasformation":Z
    .restart local v13    # "keep_atk_time":I
    .restart local v17    # "myPet":Lcom/hz/actor/Player;
    .restart local v18    # "myPlayer":Lcom/hz/actor/Player;
    .restart local v22    # "status":I
    .restart local v23    # "tempformationSkill":Lcom/hz/core/Skill;
    .restart local v24    # "tempiconpet1":S
    :cond_2
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/hz/actor/Player;->position:B

    .line 3969
    move-object/from16 v0, v17

    iput v3, v0, Lcom/hz/actor/Player;->bStatus:I

    .line 3970
    move-object/from16 v0, v17

    iput v5, v0, Lcom/hz/actor/Player;->hp:I

    .line 3971
    move-object/from16 v0, v17

    iput v15, v0, Lcom/hz/actor/Player;->mp:I

    goto :goto_1

    .line 3977
    .end local v17    # "myPet":Lcom/hz/actor/Player;
    :cond_3
    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 3979
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v14

    check-cast v14, Lcom/hz/actor/Mercenary;

    .line 3981
    .local v14, "merPlayer":Lcom/hz/actor/Mercenary;
    if-nez v14, :cond_4

    .line 3985
    const/16 v17, 0x0

    goto :goto_1

    .line 3988
    :cond_4
    if-nez v11, :cond_5

    .line 3989
    invoke-virtual {v14}, Lcom/hz/actor/Mercenary;->getPet()Lcom/hz/actor/Model;

    move-result-object v14

    .end local v14    # "merPlayer":Lcom/hz/actor/Mercenary;
    check-cast v14, Lcom/hz/actor/Mercenary;

    .line 3990
    .restart local v14    # "merPlayer":Lcom/hz/actor/Mercenary;
    if-nez v14, :cond_5

    .line 3994
    const/16 v17, 0x0

    goto :goto_1

    .line 3998
    :cond_5
    invoke-virtual {v14}, Lcom/hz/actor/Mercenary;->getClone()Lcom/hz/actor/Monster;

    move-result-object v2

    check-cast v2, Lcom/hz/actor/Mercenary;

    .line 3999
    .local v2, "addMerPlayer":Lcom/hz/actor/Mercenary;
    iput-object v14, v2, Lcom/hz/actor/Mercenary;->worldMer:Lcom/hz/actor/Mercenary;

    .line 4005
    move/from16 v0, v21

    iput-byte v0, v2, Lcom/hz/actor/Mercenary;->position:B

    .line 4006
    iput v3, v2, Lcom/hz/actor/Mercenary;->bStatus:I

    .line 4007
    iput v5, v2, Lcom/hz/actor/Mercenary;->hp:I

    .line 4008
    iput v15, v2, Lcom/hz/actor/Mercenary;->mp:I

    move-object/from16 v17, v2

    .line 4011
    goto :goto_1

    .line 4019
    .end local v2    # "addMerPlayer":Lcom/hz/actor/Mercenary;
    .end local v14    # "merPlayer":Lcom/hz/actor/Mercenary;
    :cond_6
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput-byte v0, v1, Lcom/hz/actor/Player;->position:B

    .line 4020
    move-object/from16 v0, v18

    iput v3, v0, Lcom/hz/actor/Player;->bStatus:I

    .line 4021
    move-object/from16 v0, v18

    iput v5, v0, Lcom/hz/actor/Player;->hp:I

    .line 4022
    move-object/from16 v0, v18

    iput v15, v0, Lcom/hz/actor/Player;->mp:I

    move-object/from16 v17, v18

    .line 4025
    goto :goto_1

    .line 4030
    :cond_7
    new-instance v20, Lcom/hz/actor/Monster;

    invoke-direct/range {v20 .. v20}, Lcom/hz/actor/Monster;-><init>()V

    .line 4031
    .local v20, "p":Lcom/hz/actor/Monster;
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/hz/actor/Monster;->setType(B)V

    .line 4032
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/hz/actor/Monster;->setId(I)V

    .line 4033
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/hz/actor/Monster;->setName(Ljava/lang/String;)V

    .line 4034
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-byte v0, v1, Lcom/hz/actor/Monster;->position:B

    .line 4035
    move-object/from16 v0, v20

    iput v5, v0, Lcom/hz/actor/Monster;->hp:I

    .line 4036
    move-object/from16 v0, v20

    iput v6, v0, Lcom/hz/actor/Monster;->hpMax:I

    .line 4037
    move-object/from16 v0, v20

    iput v15, v0, Lcom/hz/actor/Monster;->mp:I

    .line 4038
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/hz/actor/Monster;->mpMax:I

    .line 4039
    move-object/from16 v0, v20

    iput v3, v0, Lcom/hz/actor/Monster;->bStatus:I

    .line 4040
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/hz/actor/Monster;->setIcon1(I)V

    .line 4041
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/hz/actor/Monster;->setIcon2(I)V

    .line 4042
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/hz/actor/Monster;->setIcon3(I)V

    .line 4043
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/hz/actor/Monster;->bornStatus:I

    .line 4044
    move-object/from16 v0, v20

    iput v13, v0, Lcom/hz/actor/Monster;->keepout_atk_time:I

    .line 4045
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/hz/actor/Monster;->formationSkill:Lcom/hz/core/Skill;

    .line 4046
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/hz/actor/Monster;->setIconpet1(I)V

    move-object/from16 v17, v20

    .line 4047
    goto/16 :goto_1

    .line 3901
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final parseBattleNormalReward(Lcom/hz/net/Message;)V
    .locals 18
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3567
    sget-object v13, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3568
    .local v13, "player":Lcom/hz/actor/Player;
    if-nez v13, :cond_0

    .line 3639
    :goto_0
    return-void

    .line 3572
    :cond_0
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 3574
    .local v14, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 3575
    .local v3, "gainMoney":I
    if-lez v3, :cond_1

    .line 3576
    const/16 v15, 0xd

    invoke-virtual {v13, v15, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3577
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u0110\u1ed3ng "

    const v17, 0xffff00

    invoke-static/range {v16 .. v17}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3586
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/hz/main/MsgHandler;->processUpLevelMsg(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V

    .line 3588
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v5

    .line 3591
    .local v5, "isBagFull":Z
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 3592
    .local v7, "isHavePet":Z
    if-eqz v7, :cond_2

    .line 3593
    sget-object v15, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v15}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v15

    check-cast v15, Lcom/hz/actor/Player;

    move-object/from16 v0, p0

    invoke-static {v0, v15, v14}, Lcom/hz/main/MsgHandler;->parsePetReward(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V

    .line 3596
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 3597
    .local v9, "killMosterIDs":B
    if-lez v9, :cond_4

    .line 3599
    const/4 v8, 0x0

    .line 3601
    .local v8, "killMonsterNum":B
    new-array v11, v9, [I

    .line 3602
    .local v11, "monsterIDs":[I
    new-array v12, v9, [I

    .line 3603
    .local v12, "monsterNums":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v9, :cond_7

    .line 3609
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 3610
    .local v10, "missionInfo":Ljava/lang/StringBuffer;
    invoke-virtual {v13, v11, v12, v10}, Lcom/hz/actor/Player;->updateAllKillMission([I[ILjava/lang/StringBuffer;)V

    .line 3611
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 3612
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3615
    :cond_3
    if-lez v8, :cond_4

    .line 3616
    const/16 v15, 0x12

    invoke-virtual {v13, v15, v8}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3621
    .end local v4    # "i":I
    .end local v8    # "killMonsterNum":B
    .end local v10    # "missionInfo":Ljava/lang/StringBuffer;
    .end local v11    # "monsterIDs":[I
    .end local v12    # "monsterNums":[I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    .line 3622
    .local v6, "isEscortReward":Z
    if-eqz v6, :cond_6

    .line 3623
    invoke-static {}, Lcom/hz/main/GameCanvas;->getEscort()Lcom/hz/core/Escort;

    move-result-object v1

    .line 3624
    .local v1, "escort":Lcom/hz/core/Escort;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 3625
    .local v2, "escorttype":B
    const/4 v15, 0x1

    if-ne v2, v15, :cond_8

    .line 3626
    check-cast v1, Lcom/hz/core/NewEscort;

    .end local v1    # "escort":Lcom/hz/core/Escort;
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/hz/core/NewEscort;->processEscrotRefreshPosMsg(Lcom/hz/net/Message;Lcom/hz/core/NewEscort;)V

    .line 3630
    :cond_5
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processEscortEventReword(Lcom/hz/net/Message;)V

    .line 3633
    .end local v2    # "escorttype":B
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    .line 3634
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getMsgInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3636
    invoke-static {v13, v14, v5}, Lcom/hz/main/MsgHandler;->processAfterBattlePoint(Lcom/hz/actor/Player;Ljava/lang/StringBuffer;Z)V

    .line 3638
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/hz/main/GameCanvas;->battleRewardMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 3604
    .end local v6    # "isEscortReward":Z
    .restart local v4    # "i":I
    .restart local v8    # "killMonsterNum":B
    .restart local v11    # "monsterIDs":[I
    .restart local v12    # "monsterNums":[I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v15

    aput v15, v11, v4

    .line 3605
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    aput v15, v12, v4

    .line 3606
    aget v15, v12, v4

    add-int/2addr v15, v8

    int-to-byte v8, v15

    .line 3603
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3627
    .end local v4    # "i":I
    .end local v8    # "killMonsterNum":B
    .end local v11    # "monsterIDs":[I
    .end local v12    # "monsterNums":[I
    .restart local v1    # "escort":Lcom/hz/core/Escort;
    .restart local v2    # "escorttype":B
    .restart local v6    # "isEscortReward":Z
    :cond_8
    if-nez v2, :cond_5

    .line 3628
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/hz/core/Escort;->processEscrotRefreshPosMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V

    goto :goto_2
.end method

.method private static final parseMapData([BLjava/lang/String;Ljava/lang/String;I)Lcom/hz/map/GameMap;
    .locals 5
    .param p0, "datas"    # [B
    .param p1, "mapName"    # Ljava/lang/String;
    .param p2, "jumpMapTip"    # Ljava/lang/String;
    .param p3, "_mapID"    # I

    .prologue
    .line 4964
    invoke-static {p2}, Lcom/hz/main/GameText;->setTip(Ljava/lang/String;)V

    .line 4966
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 4968
    :cond_0
    new-instance v3, Lcom/hz/map/GameMap;

    invoke-direct {v3}, Lcom/hz/map/GameMap;-><init>()V

    .line 4969
    .local v3, "map":Lcom/hz/map/GameMap;
    invoke-virtual {v3, p3}, Lcom/hz/map/GameMap;->setMapID(I)V

    .line 4970
    iput-object p1, v3, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    .line 5005
    .end local v3    # "map":Lcom/hz/map/GameMap;
    :goto_0
    return-object v3

    .line 4979
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/hz/net/GZIP;->inflate([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 4987
    :goto_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4988
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4993
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/hz/map/GameMap;->loadMap(Ljava/io/DataInputStream;)Lcom/hz/map/GameMap;

    move-result-object v3

    .line 4994
    .restart local v3    # "map":Lcom/hz/map/GameMap;
    if-eqz v3, :cond_2

    .line 4995
    invoke-virtual {v3, p3}, Lcom/hz/map/GameMap;->setMapID(I)V

    .line 4996
    iput-object p1, v3, Lcom/hz/map/GameMap;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5009
    :cond_2
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 5010
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 5000
    .end local v3    # "map":Lcom/hz/map/GameMap;
    :catch_0
    move-exception v2

    .line 5009
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 5010
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 5005
    const/4 v3, 0x0

    goto :goto_0

    .line 5008
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 5009
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 5010
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 5011
    throw v4

    .line 4981
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static final parsePetReward(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V
    .locals 21
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "pet"    # Lcom/hz/actor/Player;
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 3460
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 3461
    .local v6, "gainExp":I
    if-eqz p2, :cond_0

    if-lez v6, :cond_0

    .line 3462
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Exp tr\u00e2n th\u00fa+"

    const v20, 0xffff00

    invoke-static/range {v19 .. v20}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3464
    :cond_0
    if-eqz p1, :cond_1

    .line 3465
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3468
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 3469
    .local v9, "gainLevel":B
    if-lez v9, :cond_4

    .line 3472
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 3473
    .local v10, "gainSP":S
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 3474
    .local v7, "gainGrowLevel":B
    if-eqz p2, :cond_2

    if-lez v7, :cond_2

    .line 3475
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "C\u1ea5p tr\u01b0\u1edfng th\u00e0nh tr\u00e2n th\u00fa+"

    const v20, 0xffff00

    invoke-static/range {v19 .. v20}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3478
    :cond_2
    const/4 v11, 0x0

    .line 3479
    .local v11, "gainStr":S
    const/4 v5, 0x0

    .line 3480
    .local v5, "gainCon":S
    const/4 v4, 0x0

    .line 3481
    .local v4, "gainAgi":S
    const/4 v8, 0x0

    .line 3482
    .local v8, "gainIlt":S
    const/4 v12, 0x0

    .line 3483
    .local v12, "gainWis":S
    if-lez v7, :cond_3

    .line 3484
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 3485
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    .line 3486
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 3487
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 3488
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v12

    .line 3491
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 3492
    .local v14, "newExp":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 3493
    .local v3, "expMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 3497
    .local v2, "cp":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    .line 3498
    .local v17, "skillSize":B
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 3499
    .local v16, "skillList":Ljava/util/Vector;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v17

    if-lt v13, v0, :cond_5

    .line 3506
    if-eqz p1, :cond_4

    .line 3508
    const/16 v18, 0x6a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3509
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3510
    const/16 v18, 0x53

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3511
    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3512
    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3513
    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3514
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3515
    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3517
    const/16 v18, 0x1389

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3518
    const/16 v18, 0x138a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3519
    move-object/from16 v0, p1

    iput-short v2, v0, Lcom/hz/actor/Player;->cp:S

    .line 3521
    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v13, v0, :cond_6

    .line 3533
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->resumeHPMP()V

    .line 3558
    .end local v2    # "cp":B
    .end local v3    # "expMax":I
    .end local v4    # "gainAgi":S
    .end local v5    # "gainCon":S
    .end local v7    # "gainGrowLevel":B
    .end local v8    # "gainIlt":S
    .end local v10    # "gainSP":S
    .end local v11    # "gainStr":S
    .end local v12    # "gainWis":S
    .end local v13    # "i":I
    .end local v14    # "newExp":I
    .end local v16    # "skillList":Ljava/util/Vector;
    .end local v17    # "skillSize":B
    :cond_4
    return-void

    .line 3500
    .restart local v2    # "cp":B
    .restart local v3    # "expMax":I
    .restart local v4    # "gainAgi":S
    .restart local v5    # "gainCon":S
    .restart local v7    # "gainGrowLevel":B
    .restart local v8    # "gainIlt":S
    .restart local v10    # "gainSP":S
    .restart local v11    # "gainStr":S
    .restart local v12    # "gainWis":S
    .restart local v13    # "i":I
    .restart local v14    # "newExp":I
    .restart local v16    # "skillList":Ljava/util/Vector;
    .restart local v17    # "skillSize":B
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3499
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3522
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/hz/core/Skill;

    .line 3523
    .local v15, "skill":Lcom/hz/core/Skill;
    if-nez v15, :cond_7

    .line 3521
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3526
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/hz/actor/Player;->learnSkill(Lcom/hz/core/Skill;)I

    goto :goto_2
.end method

.method public static processAchieveGainReward(Lcom/hz/net/Message;)V
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11212
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 11217
    .local v7, "result":B
    if-gez v7, :cond_1

    .line 11218
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11282
    :cond_0
    :goto_0
    return-void

    .line 11224
    :cond_1
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 11225
    .local v5, "player":Lcom/hz/actor/Player;
    if-eqz v5, :cond_0

    .line 11229
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 11231
    .local v8, "sb":Ljava/lang/StringBuffer;
    move v9, v7

    .line 11232
    .local v9, "size":B
    const-string v11, "Mi t\u1ed5ng c\u1ed9ng nh\u1eadn \u0111\u01b0\u1ee3c %U ph\u1ea7n th\u01b0\u1edfng th\u00e0nh t\u1ef1u!\n"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11234
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 11235
    .local v2, "money1":I
    if-lez v2, :cond_2

    .line 11236
    const/16 v11, 0xb

    invoke-virtual {v5, v11, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 11237
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0xb

    invoke-static {v12}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11240
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 11241
    .local v3, "money2":I
    if-lez v3, :cond_3

    .line 11242
    const/16 v11, 0xc

    invoke-virtual {v5, v11, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 11243
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0xc

    invoke-static {v12}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11246
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 11247
    .local v4, "money3":I
    if-lez v4, :cond_4

    .line 11248
    const/16 v11, 0xd

    invoke-virtual {v5, v11, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 11249
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0xd

    invoke-static {v12}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11253
    :cond_4
    invoke-static {p0, v5, v8}, Lcom/hz/main/MsgHandler;->processUpLevelMsg(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V

    .line 11256
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 11257
    .local v6, "point":I
    if-lez v6, :cond_5

    .line 11258
    const-string v11, "Nh\u1eadn \u0111\u01b0\u1ee3c \u0111i\u1ec3m th\u00e0nh t\u1ef1u /cFFFF00%U/p\n"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11262
    :cond_5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 11263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v9, :cond_7

    .line 11269
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 11270
    .local v1, "isBagFull":Z
    if-eqz v1, :cond_6

    .line 11271
    const-string v11, "T\u00fai \u0111\u00e3 \u0111\u1ea7y, m\u1ed9t ph\u1ea7n ph\u1ea7n th\u01b0\u1edfng kh\u00f4ng th\u1ec3 nh\u1eadn, h\u00e3y s\u1eafp x\u1ebfp l\u1ea1i t\u00fai r\u1ed3i nh\u1eadn!"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11274
    :cond_6
    const/4 v11, 0x0

    invoke-static {p0, v11}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    .line 11275
    invoke-virtual {p0}, Lcom/hz/net/Message;->getMsgInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11277
    const-string v11, "Ph\u1ea7n th\u01b0\u1edfng th\u00e0nh t\u1ef1u "

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11279
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 11281
    const/16 v11, 0x2b11

    invoke-static {v11, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 11264
    .end local v1    # "isBagFull":Z
    :cond_7
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    .line 11265
    .local v10, "title":Ljava/lang/String;
    const-string v11, "Nh\u1eadn \u0111\u01b0\u1ee3c danh hi\u1ec7u th\u00e0nh t\u1ef1u: /c00FF00%U/p\n"

    invoke-static {v11, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static processAchieveGetInfo(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11144
    const/16 v0, 0x2b0f

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11145
    return-void
.end method

.method public static processAchieveList(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11180
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 11185
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 11186
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11192
    :goto_0
    return-void

    .line 11190
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 11191
    const/16 v1, 0x2b10

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static processAchieveTitleList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11299
    const/16 v0, 0x2b12

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11300
    return-void
.end method

.method public static processAchieveUseTitle(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11315
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 11320
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 11321
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11326
    :goto_0
    return-void

    .line 11325
    :cond_0
    const/16 v1, 0x2b13

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;
    .locals 13
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "type"    # I

    .prologue
    .line 3341
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3342
    .local v8, "p":Lcom/hz/actor/Player;
    if-nez v8, :cond_0

    .line 3343
    const-string v11, ""

    .line 3455
    :goto_0
    return-object v11

    .line 3346
    :cond_0
    iget-object v0, v8, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 3347
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-nez v0, :cond_1

    .line 3348
    const-string v11, ""

    goto :goto_0

    .line 3351
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 3358
    .local v2, "gainItemNum":B
    const/4 v6, 0x0

    .line 3359
    .local v6, "item":Lcom/hz/core/Item;
    const/4 v3, 0x0

    .line 3360
    .local v3, "gainNum":B
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 3361
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v2, :cond_2

    .line 3453
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/hz/net/Message;->addMsgInfo(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 3363
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 3364
    .local v1, "flag":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 3368
    const/4 v11, 0x1

    if-ne v1, v11, :cond_8

    .line 3373
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    and-int/lit16 v10, v11, 0xff

    .line 3376
    .local v10, "soltPos":I
    invoke-static {p0}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v6

    .line 3386
    iget-object v11, v8, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v11, v6, v3}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;S)I

    .line 3427
    .end local v10    # "soltPos":I
    :cond_3
    :goto_2
    if-lez v3, :cond_7

    if-eqz v6, :cond_7

    if-eqz v9, :cond_7

    .line 3431
    const/4 v5, 0x1

    .line 3432
    .local v5, "isHasIcon":Z
    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    const/16 v12, 0x140

    if-gt v11, v12, :cond_4

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v12, 0x140

    if-gt v11, v12, :cond_4

    .line 3433
    const/4 v5, 0x0

    .line 3437
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Lcom/hz/core/Item;->getNameInfo(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x40

    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3440
    if-nez p1, :cond_5

    .line 3441
    iget v11, v6, Lcom/hz/core/Item;->id:I

    invoke-virtual {v8, v11, v9}, Lcom/hz/actor/Player;->getMissionHaveItemDesc(ILjava/lang/StringBuffer;)V

    .line 3445
    :cond_5
    const/4 v11, 0x2

    if-ne p1, v11, :cond_6

    invoke-virtual {v6}, Lcom/hz/core/Item;->isPetType()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3446
    const-string v11, "\nCh\u00fac m\u1eebng mi nh\u1eadn \u0111\u01b0\u1ee3c tr\u00e2n th\u00fa m\u1edbi"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3449
    :cond_6
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3361
    .end local v5    # "isHasIcon":Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3397
    :cond_8
    const/4 v11, 0x2

    if-ne v1, v11, :cond_3

    .line 3401
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 3404
    .local v7, "itemID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    and-int/lit16 v10, v11, 0xff

    .line 3405
    .restart local v10    # "soltPos":I
    invoke-virtual {v0, v10}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v6

    .line 3406
    if-eqz v6, :cond_3

    .line 3407
    iget-short v11, v6, Lcom/hz/core/Item;->quantity:S

    add-int/2addr v11, v3

    int-to-short v11, v11

    iput-short v11, v6, Lcom/hz/core/Item;->quantity:S

    goto :goto_2
.end method

.method public static processAddItemMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3333
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    .line 3334
    return-void
.end method

.method private static final processAddPlayerMsg(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x1

    .line 2841
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 2846
    .local v2, "result":B
    if-eqz v2, :cond_1

    .line 2847
    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 2848
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2847
    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 2850
    .local v0, "alertUI":Lcom/hz/ui/UIHandler;
    const/16 v3, 0x12c

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 2851
    .local v1, "createPlayerUI":Lcom/hz/ui/UIHandler;
    if-eqz v1, :cond_0

    .line 2852
    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 2871
    .end local v0    # "alertUI":Lcom/hz/ui/UIHandler;
    .end local v1    # "createPlayerUI":Lcom/hz/ui/UIHandler;
    :cond_0
    :goto_0
    return-void

    .line 2864
    :cond_1
    sget v3, Lcom/hz/main/GameCanvas;->gAction:I

    if-gez v3, :cond_2

    sget v3, Lcom/hz/main/GameCanvas;->gAction:I

    sget-object v4, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 2865
    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "T\u1ea1o th\u1ea5t b\u1ea1i, d\u1eef li\u1ec7u v\u01b0\u1ee3t ranh gi\u1edbi"

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2868
    :cond_2
    sget-object v3, Lcom/hz/main/GameCanvas;->playerlist:[Lcom/hz/actor/ListPlayer;

    sget v4, Lcom/hz/main/GameCanvas;->gAction:I

    invoke-static {p0}, Lcom/hz/main/MsgHandler;->getMessagePlayer(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2870
    const/16 v3, 0x2712

    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static processAdvertisement(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 12501
    invoke-static {p0}, Lcom/hz/core/Advertisement;->doAdvertisementGetData(Lcom/hz/net/Message;)Z

    .line 12502
    const/16 v0, 0x271c

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 12503
    return-void
.end method

.method public static processAfterBattlePoint(Lcom/hz/actor/Player;Ljava/lang/StringBuffer;Z)V
    .locals 4
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "isBagFull"    # Z

    .prologue
    const/high16 v3, 0xff0000

    .line 3647
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3673
    :cond_0
    :goto_0
    return-void

    .line 3651
    :cond_1
    if-eqz p2, :cond_4

    .line 3652
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T\u00fai \u0111\u1ea7y"

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3669
    :cond_2
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 3670
    .local v0, "curHP":I
    if-lez v0, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    div-int/2addr v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 3671
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HP th\u1ea5p h\u01a1n 25%"

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3655
    .end local v0    # "curHP":I
    :cond_4
    iget-object v1, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v1}, Lcom/hz/core/PlayerBag;->countFreePos()S

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 3656
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T\u00fai s\u1eafp \u0111\u1ea7y"

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static final processAreaLineListMsg(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2735
    .local v1, "areaSize":B
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    sput-object v5, Lcom/hz/main/ServerInfo;->gameAreaList:Ljava/util/Vector;

    .line 2737
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 2752
    const/16 v5, 0x138f

    invoke-static {v5, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 2753
    return-void

    .line 2739
    :cond_0
    invoke-static {p0}, Lcom/hz/main/ServerInfo;->fromAreaBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;

    move-result-object v0

    .line 2741
    .local v0, "areaServer":Lcom/hz/main/ServerInfo;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 2742
    .local v4, "lineSize":B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 2749
    sget-object v5, Lcom/hz/main/ServerInfo;->gameAreaList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2743
    :cond_1
    invoke-static {p0}, Lcom/hz/main/ServerInfo;->fromLineBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/hz/main/ServerInfo;->addLine(Lcom/hz/main/ServerInfo;)V

    .line 2742
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static final processAttributeAddMsg(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3272
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 3277
    .local v1, "result":B
    if-eqz v1, :cond_1

    .line 3278
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 3305
    :cond_0
    :goto_0
    return-void

    .line 3282
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3284
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 3291
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/actor/Player;->cp:S

    .line 3292
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Player;->hp:I

    .line 3293
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Player;->mp:I

    .line 3294
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/actor/Player;->str:S

    .line 3295
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/actor/Player;->con:S

    .line 3296
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/actor/Player;->agi:S

    .line 3297
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/actor/Player;->ilt:S

    .line 3298
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/hz/actor/Player;->wis:S

    .line 3299
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Player;->money1:I

    .line 3300
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Player;->money2:I

    .line 3301
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Player;->money3:I

    .line 3302
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/actor/Player;->combatPoint:I

    .line 3303
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 3304
    const/16 v2, 0x2afb

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processAttributeUpdateMsg(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3230
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 3235
    .local v4, "size":B
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3236
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 3246
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3247
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 3248
    return-void

    .line 3237
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 3238
    .local v0, "attType":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 3242
    .local v1, "attValue":I
    if-eqz v3, :cond_1

    .line 3243
    invoke-virtual {v3, v0, v1}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3236
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final processAttributeUpdateMsg2(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3206
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 3211
    .local v4, "size":B
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3212
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 3222
    return-void

    .line 3213
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 3214
    .local v0, "attType":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 3218
    .local v1, "attValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3219
    invoke-virtual {v3, v0, v1}, Lcom/hz/actor/Player;->addValue(ILjava/lang/String;)V

    .line 3212
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final processAutoSkill(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6642
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6646
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 6647
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 6652
    :goto_0
    return-void

    .line 6651
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processBagRefreshMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7288
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 7293
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 7294
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7301
    :goto_0
    return-void

    .line 7298
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 7300
    const/16 v1, 0x2ee3

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processBagRepaitByTeam(Lcom/hz/net/Message;)V
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10792
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 10793
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_0

    .line 10820
    :goto_0
    return-void

    .line 10797
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 10799
    .local v1, "money3":I
    iget v5, v2, Lcom/hz/actor/Player;->money3:I

    sub-int v0, v5, v1

    .line 10801
    .local v0, "costmoney":I
    iput v1, v2, Lcom/hz/actor/Player;->money3:I

    .line 10805
    const/16 v5, 0xd

    invoke-virtual {v2, v5, v1}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 10807
    const/4 v3, -0x1

    .line 10809
    .local v3, "repaitPos":S
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/hz/core/PlayerBag;->repairEquip(Lcom/hz/actor/Player;SZ)I

    .line 10812
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 10814
    const-string v4, "S\u1eeda m\u1ecdi trang b\u1ecb tr\u00ean ng\u01b0\u1eddi th\u00e0nh c\u00f4ng!"

    .line 10816
    .local v4, "strInfo":Ljava/lang/String;
    if-ltz v0, :cond_1

    .line 10817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "T\u1ed5ng c\u1ed9ng ti\u00eau %U \u0110\u1ed3ng"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10819
    :cond_1
    invoke-static {v4}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static processBattleSeeExit(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 13544
    if-nez p0, :cond_1

    .line 13554
    :cond_0
    :goto_0
    return-void

    .line 13548
    :cond_1
    sget-object v0, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    .line 13549
    .local v0, "battleAni":Lcom/hz/battle/BattleAniEngine;
    if-eqz v0, :cond_0

    .line 13553
    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->doExit()V

    goto :goto_0
.end method

.method private static final processBattleUpdate(Lcom/hz/net/Message;)V
    .locals 32
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4140
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v22

    .line 4146
    .local v22, "result":B
    sget-object v2, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    .line 4147
    .local v2, "battle":Lcom/hz/battle/Battle;
    if-nez v2, :cond_1

    .line 4286
    :cond_0
    :goto_0
    return-void

    .line 4153
    :cond_1
    sget-object v3, Lcom/hz/main/GameCanvas;->battleAni:Lcom/hz/battle/BattleAniEngine;

    .line 4154
    .local v3, "battleAni":Lcom/hz/battle/BattleAniEngine;
    if-eqz v3, :cond_0

    .line 4160
    const/16 v28, 0x40

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 4163
    if-gez v22, :cond_2

    .line 4164
    const/16 v28, 0xe

    invoke-static/range {v28 .. v28}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4169
    :cond_2
    if-nez v22, :cond_3

    .line 4171
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v25

    .line 4173
    .local v25, "roundState":B
    const/16 v28, 0x4

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    .line 4175
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v26

    .line 4176
    .local v26, "waitStatus":I
    move/from16 v0, v26

    iput v0, v2, Lcom/hz/battle/Battle;->waitStatus:I

    goto :goto_0

    .line 4186
    .end local v25    # "roundState":B
    .end local v26    # "waitStatus":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 4190
    .local v4, "battleResult":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v24

    .line 4191
    .local v24, "round":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v19

    .line 4192
    .local v19, "planTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v26

    .line 4194
    .restart local v26    # "waitStatus":I
    invoke-virtual {v2, v4}, Lcom/hz/battle/Battle;->setBattleResult(B)V

    .line 4195
    move/from16 v0, v24

    iput-byte v0, v2, Lcom/hz/battle/Battle;->round:B

    .line 4196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    iput-wide v0, v2, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 4197
    move/from16 v0, v26

    iput v0, v2, Lcom/hz/battle/Battle;->waitStatus:I

    .line 4198
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    .line 4200
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    .line 4201
    .local v17, "num":B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v17

    if-lt v9, v0, :cond_7

    .line 4221
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 4222
    .local v7, "controlNum":B
    const/4 v9, 0x0

    :goto_2
    if-lt v9, v7, :cond_9

    .line 4226
    invoke-virtual {v3}, Lcom/hz/battle/BattleAniEngine;->makeBattleAni()V

    .line 4229
    if-eqz v4, :cond_0

    .line 4234
    invoke-virtual {v3}, Lcom/hz/battle/BattleAniEngine;->updateMercenaryHpMP()V

    .line 4237
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v13

    .line 4238
    .local v13, "isHaveReward":Z
    if-eqz v13, :cond_4

    .line 4240
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v23

    .line 4241
    .local v23, "rewardType":B
    const/16 v28, 0x4

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 4242
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v27

    .line 4243
    .local v27, "win":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 4244
    .local v15, "lost":I
    sget-object v20, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 4246
    .local v20, "player":Lcom/hz/actor/Player;
    if-eqz v20, :cond_4

    .line 4247
    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/hz/actor/Player;->Pkwincount:I

    .line 4248
    move-object/from16 v0, v20

    iput v15, v0, Lcom/hz/actor/Player;->Pklosecount:I

    .line 4257
    .end local v15    # "lost":I
    .end local v20    # "player":Lcom/hz/actor/Player;
    .end local v23    # "rewardType":B
    .end local v27    # "win":I
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v12

    .line 4258
    .local v12, "isHaveBuffState":Z
    if-nez v12, :cond_5

    .line 4259
    sget-object v20, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 4261
    .restart local v20    # "player":Lcom/hz/actor/Player;
    if-eqz v20, :cond_5

    .line 4262
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput-short v0, v1, Lcom/hz/actor/Player;->power:S

    .line 4267
    .end local v20    # "player":Lcom/hz/actor/Player;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v11

    .line 4268
    .local v11, "isCountryBuffState":Z
    if-nez v11, :cond_6

    .line 4269
    sget-object v20, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 4271
    .restart local v20    # "player":Lcom/hz/actor/Player;
    if-eqz v20, :cond_6

    .line 4272
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput-byte v0, v1, Lcom/hz/actor/Player;->countrypowerValue:B

    .line 4276
    .end local v20    # "player":Lcom/hz/actor/Player;
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processMyMercenaryCheck(Lcom/hz/net/Message;)V

    .line 4279
    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/hz/main/GameWorld;->handleMyPlayerDurability(ZZ)V

    .line 4282
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 4284
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto/16 :goto_0

    .line 4202
    .end local v7    # "controlNum":B
    .end local v11    # "isCountryBuffState":Z
    .end local v12    # "isHaveBuffState":Z
    .end local v13    # "isHaveReward":Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 4203
    .local v21, "pos":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 4204
    .local v8, "hp":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 4205
    .local v16, "mp":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 4206
    .local v5, "bstatus":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 4207
    .local v10, "intvalue1":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 4209
    .local v14, "keepout_atk_time":I
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v18

    .line 4210
    .local v18, "p":Lcom/hz/actor/Player;
    if-nez v18, :cond_8

    .line 4201
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 4214
    :cond_8
    move-object/from16 v0, v18

    iput v8, v0, Lcom/hz/actor/Player;->hp:I

    .line 4215
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/hz/actor/Player;->mp:I

    .line 4216
    move-object/from16 v0, v18

    iput v5, v0, Lcom/hz/actor/Player;->bStatus:I

    .line 4217
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/hz/actor/Player;->setBattleIntValue(I)V

    .line 4218
    move-object/from16 v0, v18

    iput v14, v0, Lcom/hz/actor/Player;->keepout_atk_time:I

    goto :goto_4

    .line 4223
    .end local v5    # "bstatus":I
    .end local v8    # "hp":I
    .end local v10    # "intvalue1":I
    .end local v14    # "keepout_atk_time":I
    .end local v16    # "mp":I
    .end local v18    # "p":Lcom/hz/actor/Player;
    .end local v21    # "pos":B
    .restart local v7    # "controlNum":B
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/hz/main/Control;->fromBytes([B)Lcom/hz/main/Control;

    move-result-object v6

    .line 4224
    .local v6, "c":Lcom/hz/main/Control;
    invoke-virtual {v2, v6}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 4222
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 4251
    .end local v6    # "c":Lcom/hz/main/Control;
    .restart local v13    # "isHaveReward":Z
    .restart local v23    # "rewardType":B
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->parseBattleNormalReward(Lcom/hz/net/Message;)V

    .line 4252
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    goto/16 :goto_3
.end method

.method private static final processBrowseCityInfoMsg(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6117
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 6121
    .local v1, "result":B
    if-gez v1, :cond_0

    .line 6122
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 6128
    .local v0, "errorStr":Ljava/lang/String;
    const/high16 v2, 0xff0000

    invoke-static {v0, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 6133
    .end local v0    # "errorStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 6132
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v2

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processCancelDelPlayerMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5444
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 5449
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 5451
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 5456
    :goto_0
    return-void

    .line 5455
    :cond_0
    const/16 v1, 0x2714

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processChangeLeaderMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4420
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 4426
    .local v0, "oldLeaderID":I
    invoke-static {v0}, Lcom/hz/main/GameWorld;->dismissTeam(I)V

    .line 4429
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataTeamMsg(Lcom/hz/net/Message;)V

    .line 4430
    return-void
.end method

.method private static final processChatMessageReceive(Lcom/hz/net/Message;)V
    .locals 18
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7482
    const-string v15, "\u63a5\u6536\u804a\u5929\u4fe1\u606f"

    invoke-static {v15}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 7483
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    and-int/lit16 v13, v15, 0xff

    .line 7488
    .local v13, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v13, :cond_0

    .line 7618
    return-void

    .line 7490
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 7492
    .local v2, "playerID":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 7494
    .local v3, "playerName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 7497
    .local v5, "vipLevel":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    .line 7498
    .local v6, "flag":S
    const/16 v15, 0x100

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-nez v15, :cond_1

    const/16 v15, 0x1000

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 7499
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 7502
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 7504
    .local v4, "message":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 7506
    .local v14, "viplevel2":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    .line 7508
    .local v12, "remark":Ljava/lang/String;
    const/4 v1, 0x1

    .line 7509
    .local v1, "channel":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getType()S

    move-result v11

    .line 7510
    .local v11, "msgType":S
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u63a5\u6536\u804a\u5929\u4fe1\u606f msgType="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 7511
    const/4 v9, 0x0

    .line 7512
    .local v9, "m":Lcom/hz/actor/Model;
    sparse-switch v11, :sswitch_data_0

    .line 7568
    :cond_3
    :goto_1
    new-instance v0, Lcom/hz/main/ChatMsg;

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    .line 7569
    .local v0, "chatMsg":Lcom/hz/main/ChatMsg;
    iput-short v6, v0, Lcom/hz/main/ChatMsg;->flag:S

    .line 7570
    iput-byte v14, v0, Lcom/hz/main/ChatMsg;->VIPLevel2:B

    .line 7571
    invoke-virtual {v0, v12}, Lcom/hz/main/ChatMsg;->setRemark(Ljava/lang/String;)V

    .line 7573
    const/4 v15, 0x4

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 7574
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    new-array v15, v15, [S

    iput-object v15, v0, Lcom/hz/main/ChatMsg;->itemIDList:[S

    .line 7575
    const/4 v8, 0x0

    .local v8, "id":I
    :goto_2
    iget-object v15, v0, Lcom/hz/main/ChatMsg;->itemIDList:[S

    array-length v15, v15

    if-lt v8, v15, :cond_9

    .line 7582
    .end local v8    # "id":I
    :cond_4
    const v15, 0x8000

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 7584
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v15

    iput-wide v15, v0, Lcom/hz/main/ChatMsg;->luckMoneyID:J

    .line 7588
    :cond_5
    const/16 v15, 0x8

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 7589
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    new-array v15, v15, [S

    iput-object v15, v0, Lcom/hz/main/ChatMsg;->missionIDList:[S

    .line 7590
    const/4 v8, 0x0

    .restart local v8    # "id":I
    :goto_3
    iget-object v15, v0, Lcom/hz/main/ChatMsg;->missionIDList:[S

    array-length v15, v15

    if-lt v8, v15, :cond_a

    .line 7597
    .end local v8    # "id":I
    :cond_6
    const/16 v15, 0x80

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 7598
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    iput v15, v0, Lcom/hz/main/ChatMsg;->countryID:I

    .line 7602
    :cond_7
    const/16 v15, 0x40

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 7603
    invoke-virtual {v0}, Lcom/hz/main/ChatMsg;->getFullText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/hz/main/WorldMessage;->addNoticeMsg(Ljava/lang/String;)V

    .line 7604
    const/4 v15, 0x0

    invoke-static {v0, v15}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    .line 7488
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 7514
    .end local v0    # "chatMsg":Lcom/hz/main/ChatMsg;
    :sswitch_0
    const/16 v15, 0x2000

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 7515
    const/16 v1, 0xb

    .line 7516
    const-string v3, ""

    .line 7517
    goto :goto_1

    .line 7518
    :cond_8
    const/4 v1, 0x1

    .line 7520
    goto :goto_1

    .line 7522
    :sswitch_1
    const/4 v1, 0x2

    .line 7523
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v9

    .line 7524
    if-eqz v9, :cond_3

    .line 7525
    invoke-virtual {v9}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7527
    goto/16 :goto_1

    .line 7529
    :sswitch_2
    const/4 v1, 0x3

    .line 7530
    goto/16 :goto_1

    .line 7532
    :sswitch_3
    const/16 v1, 0x8

    .line 7533
    goto/16 :goto_1

    .line 7535
    :sswitch_4
    const/4 v1, 0x4

    .line 7536
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v9

    .line 7537
    if-eqz v9, :cond_3

    .line 7538
    invoke-virtual {v9}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7540
    goto/16 :goto_1

    .line 7542
    :sswitch_5
    const/4 v1, 0x5

    .line 7544
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v15

    if-eq v2, v15, :cond_3

    .line 7545
    new-instance v10, Lcom/hz/actor/Model;

    invoke-direct {v10, v2, v3}, Lcom/hz/actor/Model;-><init>(ILjava/lang/String;)V

    .line 7546
    .local v10, "modeltemp":Lcom/hz/actor/Model;
    invoke-virtual {v10, v5}, Lcom/hz/actor/Model;->setVipLevel(B)V

    .line 7547
    invoke-virtual {v10, v14}, Lcom/hz/actor/Model;->setVipLevel2(B)V

    .line 7548
    invoke-virtual {v10, v12}, Lcom/hz/actor/Model;->setRemark(Ljava/lang/String;)V

    .line 7549
    invoke-static {v10}, Lcom/hz/main/ChatMsg;->addTempTalkModel(Lcom/hz/actor/Model;)V

    .line 7550
    const/4 v15, 0x2

    invoke-static {v15, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v15

    if-nez v15, :cond_3

    .line 7551
    sget-object v15, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const v16, 0x8000

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/hz/main/GameWorld;->setModelSetting(Lcom/hz/actor/Model;IZ)V

    goto/16 :goto_1

    .line 7556
    .end local v10    # "modeltemp":Lcom/hz/actor/Model;
    :sswitch_6
    const/4 v1, 0x6

    .line 7557
    goto/16 :goto_1

    .line 7559
    :sswitch_7
    const/4 v1, 0x7

    goto/16 :goto_1

    .line 7576
    .restart local v0    # "chatMsg":Lcom/hz/main/ChatMsg;
    .restart local v8    # "id":I
    :cond_9
    iget-object v15, v0, Lcom/hz/main/ChatMsg;->itemIDList:[S

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v16

    aput-short v16, v15, v8

    .line 7575
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 7591
    :cond_a
    iget-object v15, v0, Lcom/hz/main/ChatMsg;->missionIDList:[S

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v16

    aput-short v16, v15, v8

    .line 7590
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 7607
    .end local v8    # "id":I
    :cond_b
    const/16 v15, 0x34c9

    if-eq v11, v15, :cond_c

    .line 7608
    const/16 v15, 0x34ca

    if-ne v11, v15, :cond_d

    .line 7609
    :cond_c
    invoke-virtual {v0}, Lcom/hz/main/ChatMsg;->getFullText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 7610
    const/4 v15, 0x0

    invoke-static {v0, v15}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    goto/16 :goto_4

    .line 7614
    :cond_d
    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;)V

    goto/16 :goto_4

    .line 7512
    nop

    :sswitch_data_0
    .sparse-switch
        0x34c6 -> :sswitch_0
        0x34c7 -> :sswitch_1
        0x34c8 -> :sswitch_2
        0x34c9 -> :sswitch_4
        0x34ca -> :sswitch_5
        0x34cb -> :sswitch_6
        0x34ee -> :sswitch_7
        0x34f2 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final processChatSubmit(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7453
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 7454
    .local v2, "pos":S
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-nez v3, :cond_1

    .line 7476
    :cond_0
    :goto_0
    return-void

    .line 7457
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-object v0, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 7458
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 7461
    invoke-virtual {v0, v2}, Lcom/hz/core/PlayerBag;->isValidBagPos(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7467
    invoke-virtual {v0, v2}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 7468
    .local v1, "item":Lcom/hz/core/Item;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/hz/core/Item;->id:I

    const v4, 0x9c51

    if-eq v3, v4, :cond_2

    iget v3, v1, Lcom/hz/core/Item;->id:I

    const v4, 0xa420

    if-ne v3, v4, :cond_0

    .line 7471
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    goto :goto_0
.end method

.method private static final processCheckEditionMsg(Lcom/hz/net/Message;)V
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 2513
    .local v6, "isPass":B
    const/4 v12, 0x1

    if-ne v6, v12, :cond_1

    .line 2514
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2515
    .local v4, "info":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    .line 2517
    .local v11, "url":Ljava/lang/String;
    const/16 v12, 0xf

    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v12

    .line 2518
    const/4 v13, 0x3

    .line 2517
    invoke-static {v12, v4, v13}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2519
    .local v0, "askResult":I
    const/16 v12, 0xa

    if-ne v0, v12, :cond_0

    .line 2520
    invoke-static {v11}, Lcom/hz/main/GameCanvas;->quitGameAndGoUrl(Ljava/lang/String;)V

    .line 2594
    .end local v0    # "askResult":I
    .end local v4    # "info":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2524
    :cond_1
    const/4 v12, 0x2

    if-ne v6, v12, :cond_2

    .line 2525
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2529
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 2532
    .local v2, "flag":B
    const/4 v12, 0x1

    if-ne v2, v12, :cond_3

    .line 2534
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v5

    .line 2535
    .local v5, "isNeedUpdate":Z
    if-eqz v5, :cond_5

    .line 2536
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    .line 2537
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 2538
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    .line 2540
    .restart local v11    # "url":Ljava/lang/String;
    const/4 v12, 0x3

    .line 2539
    invoke-static {v10, v1, v12}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 2541
    .restart local v0    # "askResult":I
    const/16 v12, 0xa

    if-ne v0, v12, :cond_3

    .line 2542
    invoke-static {v11}, Lcom/hz/main/GameCanvas;->quitGameAndGoUrl(Ljava/lang/String;)V

    .line 2551
    .end local v0    # "askResult":I
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "isNeedUpdate":Z
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 2553
    .local v9, "size":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 2555
    .local v8, "noticeList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v9, :cond_6

    .line 2566
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    .line 2576
    .local v7, "newGameIP":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 2582
    sput-object v7, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    .line 2583
    invoke-static {}, Lcom/hz/main/GameStore;->saveSystem()V

    .line 2586
    :cond_4
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 2587
    sput-object v8, Lcom/hz/main/GameWorld;->loginNoticeList:Ljava/util/Vector;

    .line 2593
    :goto_3
    const/16 v12, 0x1388

    invoke-static {v12, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0

    .line 2546
    .end local v3    # "i":I
    .end local v7    # "newGameIP":Ljava/lang/String;
    .end local v8    # "noticeList":Ljava/util/Vector;
    .end local v9    # "size":B
    .restart local v5    # "isNeedUpdate":Z
    :cond_5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2547
    .restart local v4    # "info":Ljava/lang/String;
    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_1

    .line 2556
    .end local v4    # "info":Ljava/lang/String;
    .end local v5    # "isNeedUpdate":Z
    .restart local v3    # "i":I
    .restart local v8    # "noticeList":Ljava/util/Vector;
    .restart local v9    # "size":B
    :cond_6
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    .line 2557
    .restart local v10    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 2558
    .restart local v1    # "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    .line 2563
    .restart local v11    # "url":Ljava/lang/String;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v13, 0x2

    aput-object v11, v12, v13

    invoke-virtual {v8, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2555
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2590
    .end local v1    # "content":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    .restart local v7    # "newGameIP":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    sput-object v12, Lcom/hz/main/GameWorld;->loginNoticeList:Ljava/util/Vector;

    goto :goto_3
.end method

.method private static final processCheckHttpMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11670
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 11676
    .local v0, "result":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11677
    return-void
.end method

.method private static final processCityCountryReflashMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6201
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 6207
    .local v0, "cityCountryMapID":I
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 6208
    sget-byte v1, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_BASE:B

    sput-byte v1, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 6210
    :cond_0
    return-void
.end method

.method private static final processCityHandlerMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6190
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6191
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 6192
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 6197
    :goto_0
    return-void

    .line 6196
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processCombatPointMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3255
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3256
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->combatPoint:I

    .line 3257
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->ignore_back:I

    .line 3258
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->ignore_magic_back:I

    .line 3259
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->ignore_block:I

    .line 3260
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->ignore_insight:I

    .line 3261
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->ignore_wil:I

    .line 3262
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->ignore_touch:I

    .line 3263
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 3264
    return-void
.end method

.method public static final processCountryHandler(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10146
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10150
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 10151
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10156
    :goto_0
    return-void

    .line 10155
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processCountryListHandler(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10163
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 10164
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 10165
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10170
    :goto_0
    return-void

    .line 10169
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processCountryNotify(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10021
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 10022
    .local v0, "countryID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 10023
    .local v1, "countryName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 10029
    .local v4, "rank":B
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 10036
    .local v3, "player":Lcom/hz/actor/Player;
    invoke-virtual {v3, v0}, Lcom/hz/actor/Player;->setCountryId(I)V

    .line 10037
    invoke-virtual {v3, v1}, Lcom/hz/actor/Player;->setCountryName(Ljava/lang/String;)V

    .line 10038
    invoke-virtual {v3, v4}, Lcom/hz/actor/Player;->setCountryRank(B)V

    .line 10040
    const-string v2, ""

    .line 10041
    .local v2, "msgStr":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 10042
    const-string v5, "Mi v\u00e0o qu\u1ed1c gia %U th\u00e0nh c\u00f4ng!"

    invoke-static {v5, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0xff00

    invoke-static {v5, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 10046
    :goto_0
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;Z)V

    .line 10047
    return-void

    .line 10044
    :cond_0
    const-string v5, "Mi b\u1ecb k\u00edch kh\u1ecfi qu\u1ed1c gia!"

    const/high16 v6, 0xff0000

    invoke-static {v5, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static processCountryStorageGet(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11632
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 11637
    .local v2, "result":B
    if-gez v2, :cond_0

    .line 11638
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11652
    :goto_0
    return-void

    .line 11642
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;)V

    .line 11644
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 11646
    .local v0, "honor":I
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 11647
    .local v1, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v1, :cond_1

    .line 11648
    iput v0, v1, Lcom/hz/actor/Player;->countryHonor:I

    .line 11651
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v3

    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static processCountryWarEnter(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 12527
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 12531
    .local v1, "result":B
    if-gez v1, :cond_0

    .line 12532
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 12544
    :goto_0
    return-void

    .line 12536
    :cond_0
    new-instance v0, Lcom/hz/core/CountryWar;

    invoke-direct {v0}, Lcom/hz/core/CountryWar;-><init>()V

    .line 12537
    .local v0, "countryWar":Lcom/hz/core/CountryWar;
    invoke-virtual {v0, p0}, Lcom/hz/core/CountryWar;->fromMsg(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12538
    const-string v2, "Kh\u1edfi t\u1ea1o v\u00e0o qu\u1ed1c gia th\u1ea5t b\u1ea1i!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 12542
    :cond_1
    sput-object v0, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    .line 12543
    const/16 v2, 0x32

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method public static processDataBlockFlagMsg(Lcom/hz/net/Message;)V
    .locals 38
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4542
    sget-object v30, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 4543
    .local v30, "player":Lcom/hz/actor/Player;
    if-nez v30, :cond_1

    .line 4951
    :cond_0
    return-void

    .line 4550
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v24

    .line 4552
    .local v24, "newMapID":I
    move/from16 v28, v24

    .line 4553
    .local v28, "orgMapID":I
    invoke-static/range {v24 .. v24}, Lcom/hz/core/Define;->isAllocateMirrorMap(I)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 4554
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v28

    .line 4556
    :cond_2
    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v35, v0

    sput-short v35, Lcom/hz/main/GameWorld;->orgMapID:S

    .line 4558
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 4559
    .local v21, "newGx":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v22

    .line 4560
    .local v22, "newGy":B
    move-object/from16 v0, v30

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->setPosition(II)V

    .line 4562
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 4567
    .local v5, "blockFlag":I
    and-int/lit8 v35, v5, 0x2

    if-eqz v35, :cond_4

    const/4 v12, 0x1

    .line 4569
    .local v12, "isCheckBattle":Z
    :goto_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v35, 0x20

    move/from16 v0, v35

    if-ge v11, v0, :cond_0

    .line 4571
    const/16 v35, 0x1

    shl-int v35, v35, v11

    and-int v6, v5, v35

    .line 4572
    .local v6, "blockID":I
    if-nez v6, :cond_5

    .line 4569
    :cond_3
    :goto_2
    :sswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 4567
    .end local v6    # "blockID":I
    .end local v11    # "i":I
    .end local v12    # "isCheckBattle":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 4576
    .restart local v6    # "blockID":I
    .restart local v11    # "i":I
    .restart local v12    # "isCheckBattle":Z
    :cond_5
    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    .line 4585
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->processDataPlayerDetail(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V

    goto :goto_2

    .line 4596
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/hz/actor/Player;->missionStatus:[B

    goto :goto_2

    .line 4615
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->processDataPlayerMission(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V

    goto :goto_2

    .line 4625
    :sswitch_4
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processDataPlayerItemMsg(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v15

    .line 4627
    .local v15, "itemList":Ljava/util/Vector;
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 4628
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-nez v4, :cond_6

    .line 4629
    new-instance v4, Lcom/hz/core/PlayerBag;

    .end local v4    # "bag":Lcom/hz/core/PlayerBag;
    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/hz/core/PlayerBag;-><init>(Lcom/hz/actor/Player;)V

    .line 4630
    .restart local v4    # "bag":Lcom/hz/core/PlayerBag;
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->setBag(Lcom/hz/core/PlayerBag;)V

    .line 4635
    :goto_3
    invoke-virtual {v4, v15}, Lcom/hz/core/PlayerBag;->initBagItem(Ljava/util/Vector;)I

    .line 4636
    invoke-static {}, Lcom/hz/main/GameWorld;->updateMyMoveSpeed()V

    goto :goto_2

    .line 4633
    :cond_6
    invoke-virtual {v4}, Lcom/hz/core/PlayerBag;->clearEquipAndBagItem()V

    goto :goto_3

    .line 4646
    .end local v4    # "bag":Lcom/hz/core/PlayerBag;
    .end local v15    # "itemList":Ljava/util/Vector;
    :sswitch_5
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->processDataPlayerSkillMsg(Lcom/hz/net/Message;Z)Ljava/util/Vector;

    move-result-object v32

    .line 4647
    .local v32, "skillList":Ljava/util/Vector;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    goto :goto_2

    .line 4658
    .end local v32    # "skillList":Ljava/util/Vector;
    :sswitch_6
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 4659
    invoke-static {}, Lcom/hz/main/GameWorld;->allClear()V

    .line 4663
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v31

    .line 4664
    .local v31, "size":S
    move/from16 v0, v31

    new-array v0, v0, [Lcom/hz/actor/Model;

    move-object/from16 v17, v0

    .line 4665
    .local v17, "modelList":[Lcom/hz/actor/Model;
    const/16 v20, 0x0

    .local v20, "n":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v31

    if-lt v0, v1, :cond_8

    .line 4668
    invoke-static/range {v17 .. v17}, Lcom/hz/main/MsgHandler;->handlePlayerListBase([Lcom/hz/actor/Model;)V

    .line 4671
    invoke-virtual/range {v30 .. v30}, Lcom/hz/actor/Player;->clearMember()V

    .line 4674
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processDataTeamMsg(Lcom/hz/net/Message;)V

    .line 4676
    invoke-virtual/range {v30 .. v30}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v19

    .line 4678
    .local v19, "myLeaderID":I
    if-lez v19, :cond_a

    .line 4679
    invoke-static/range {v19 .. v19}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v18

    .line 4681
    .local v18, "myLeader":Lcom/hz/actor/Model;
    if-eqz v18, :cond_3

    .line 4682
    invoke-virtual/range {v18 .. v18}, Lcom/hz/actor/Model;->isTwoPeopleHouse()Z

    move-result v35

    if-eqz v35, :cond_3

    .line 4685
    invoke-virtual/range {v18 .. v18}, Lcom/hz/actor/Model;->getId()I

    move-result v35

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 4686
    invoke-virtual/range {v18 .. v18}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    goto/16 :goto_2

    .line 4666
    .end local v18    # "myLeader":Lcom/hz/actor/Model;
    .end local v19    # "myLeaderID":I
    :cond_8
    new-instance v35, Lcom/hz/actor/Model;

    const/16 v36, 0x3

    invoke-direct/range {v35 .. v36}, Lcom/hz/actor/Model;-><init>(B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->processDataPlayerListBase(Lcom/hz/net/Message;Lcom/hz/actor/Model;)Lcom/hz/actor/Model;

    move-result-object v35

    aput-object v35, v17, v20

    .line 4665
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 4690
    .restart local v18    # "myLeader":Lcom/hz/actor/Model;
    .restart local v19    # "myLeaderID":I
    :cond_9
    const/16 v35, 0x20

    move/from16 v0, v35

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 4698
    .end local v18    # "myLeader":Lcom/hz/actor/Model;
    :cond_a
    invoke-virtual/range {v30 .. v30}, Lcom/hz/actor/Player;->isTwoPeopleHouse()Z

    move-result v35

    if-eqz v35, :cond_3

    .line 4699
    invoke-virtual/range {v30 .. v30}, Lcom/hz/actor/Player;->refreshWorldSprite()V

    goto/16 :goto_2

    .line 4721
    .end local v17    # "modelList":[Lcom/hz/actor/Model;
    .end local v19    # "myLeaderID":I
    .end local v20    # "n":I
    .end local v31    # "size":S
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/hz/main/MsgHandler;->parseMapData([BLjava/lang/String;Ljava/lang/String;I)Lcom/hz/map/GameMap;

    move-result-object v23

    .line 4724
    .local v23, "newMap":Lcom/hz/map/GameMap;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v34

    .line 4726
    .local v34, "weather":B
    invoke-static/range {v34 .. v34}, Lcom/hz/main/Weather;->update(B)V

    .line 4730
    if-eqz v23, :cond_b

    .line 4731
    sget-object v35, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/hz/map/GameMap;->copyOldImage(Lcom/hz/map/GameMap;)V

    .line 4734
    :cond_b
    sput-object v23, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 4737
    if-eqz v12, :cond_c

    .line 4738
    const/16 v35, 0x10

    invoke-static/range {v35 .. v35}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_2

    .line 4740
    :cond_c
    const/16 v35, 0xf

    invoke-static/range {v35 .. v35}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_2

    .line 4752
    .end local v23    # "newMap":Lcom/hz/map/GameMap;
    .end local v34    # "weather":B
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v25

    .line 4757
    .local v25, "npcData":[B
    if-eqz v25, :cond_d

    :try_start_0
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_d

    .line 4759
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    .line 4760
    .local v27, "oldLength":I
    invoke-static/range {v25 .. v25}, Lcom/hz/net/GZIP;->inflate([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 4777
    .end local v27    # "oldLength":I
    :cond_d
    :goto_5
    invoke-static/range {v25 .. v25}, Lcom/hz/actor/NPC;->parseNPCData([B)[Lcom/hz/actor/NPC;

    move-result-object v26

    .line 4778
    .local v26, "npcList":[Lcom/hz/actor/NPC;
    invoke-static/range {v26 .. v26}, Lcom/hz/main/GameWorld;->setNPCList([Lcom/hz/actor/NPC;)V

    .line 4780
    invoke-static {}, Lcom/hz/main/GameWorld;->hideMonsterNearMyPlayer()V

    .line 4784
    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Lcom/hz/main/FragmentData;->doMapSpriteRequest(ZZ)V

    goto/16 :goto_2

    .line 4769
    .end local v26    # "npcList":[Lcom/hz/actor/NPC;
    :catch_0
    move-exception v9

    .line 4773
    .local v9, "ex":Ljava/lang/Exception;
    const/16 v25, 0x0

    goto :goto_5

    .line 4794
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v25    # "npcData":[B
    :sswitch_9
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processDataMonsterGroupMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_2

    .line 4804
    :sswitch_a
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processDataMonsterMsg(Lcom/hz/net/Message;)Z

    move-result v10

    .line 4805
    .local v10, "flag":Z
    if-eqz v10, :cond_3

    .line 4806
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processDataMonsterAIMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_2

    .line 4831
    .end local v10    # "flag":Z
    :sswitch_b
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->processDataMapImageMsg(Lcom/hz/net/Message;)V

    goto/16 :goto_2

    .line 4841
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 4842
    .local v8, "countryName":Ljava/lang/String;
    sget-object v16, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 4843
    .local v16, "map":Lcom/hz/map/GameMap;
    if-eqz v16, :cond_e

    if-eqz v8, :cond_e

    .line 4844
    move-object/from16 v0, v16

    iput-object v8, v0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    .line 4847
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v35

    sput v35, Lcom/hz/main/GameWorld;->cityDegree:I

    .line 4848
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v35

    sput v35, Lcom/hz/main/GameWorld;->cityArmy:I

    goto/16 :goto_2

    .line 4858
    .end local v8    # "countryName":Ljava/lang/String;
    .end local v16    # "map":Lcom/hz/map/GameMap;
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v35

    sput v35, Lcom/hz/main/GameWorld;->cityMasterId:I

    .line 4859
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    .line 4860
    .local v7, "cityName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v35

    sput v35, Lcom/hz/main/GameWorld;->cityDegree:I

    .line 4861
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v35

    sput v35, Lcom/hz/main/GameWorld;->cityArmy:I

    .line 4862
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v35

    sput-byte v35, Lcom/hz/main/GameWorld;->cityScale:B

    .line 4863
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v35

    sput-byte v35, Lcom/hz/main/GameWorld;->cityLevel:B

    .line 4874
    sget-object v16, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 4875
    .restart local v16    # "map":Lcom/hz/map/GameMap;
    if-eqz v16, :cond_3

    if-eqz v7, :cond_3

    .line 4876
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/hz/map/GameMap;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 4882
    .end local v7    # "cityName":Ljava/lang/String;
    .end local v16    # "map":Lcom/hz/map/GameMap;
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v35

    sput-object v35, Lcom/hz/main/GameCanvas;->gameNotice:Ljava/lang/String;

    .line 4883
    const-string v35, "Th\u00f4ng b\u00e1o game"

    sget-object v36, Lcom/hz/main/GameCanvas;->gameNotice:Ljava/lang/String;

    invoke-static/range {v35 .. v36}, Lcom/hz/main/GameCanvas;->setWorldShowMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4887
    :sswitch_f
    invoke-static/range {p0 .. p0}, Lcom/hz/core/Skill;->doGetFormation(Lcom/hz/net/Message;)Ljava/util/Vector;

    move-result-object v33

    .line 4904
    .local v33, "vFormation":Ljava/util/Vector;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v14

    .line 4906
    .local v14, "isHasformationSkill":Z
    invoke-virtual/range {v30 .. v30}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v29

    check-cast v29, Lcom/hz/actor/MyPet;

    .line 4907
    .local v29, "pet":Lcom/hz/actor/MyPet;
    if-eqz v14, :cond_10

    .line 4909
    invoke-static/range {p0 .. p0}, Lcom/hz/core/Skill;->fromByteFormationSkill(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    .line 4910
    if-eqz v29, :cond_f

    .line 4912
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/hz/actor/MyPet;->formationSkill:Lcom/hz/core/Skill;

    .line 4924
    :cond_f
    :goto_6
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/hz/actor/Player;->formationList:Ljava/util/Vector;

    goto/16 :goto_2

    .line 4917
    :cond_10
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    .line 4918
    if-eqz v29, :cond_f

    .line 4920
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/hz/actor/MyPet;->formationSkill:Lcom/hz/core/Skill;

    goto :goto_6

    .line 4934
    .end local v14    # "isHasformationSkill":Z
    .end local v29    # "pet":Lcom/hz/actor/MyPet;
    .end local v33    # "vFormation":Ljava/util/Vector;
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v13

    .line 4935
    .local v13, "isHasData":Z
    if-eqz v13, :cond_3

    .line 4937
    invoke-static/range {p0 .. p0}, Lcom/hz/core/PlayerTurnMonster;->doChangeTurnMonsterPush(Lcom/hz/net/Message;)V

    goto/16 :goto_2

    .line 4576
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_0
        0x100 -> :sswitch_7
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x100000 -> :sswitch_f
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_10
    .end sparse-switch
.end method

.method private static final processDataMapImageMsg(Lcom/hz/net/Message;)V
    .locals 13
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5023
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    and-int/lit16 v2, v11, 0xff

    .line 5024
    .local v2, "datasize":I
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 5025
    .local v10, "tempv":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 5031
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    if-lt v4, v11, :cond_2

    .line 5059
    :cond_0
    return-void

    .line 5027
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 5028
    .local v8, "resid":I
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 5025
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5033
    .end local v8    # "resid":I
    .restart local v4    # "j":I
    :cond_2
    invoke-virtual {v10, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 5034
    .local v7, "obj":Ljava/lang/Object;
    if-nez v7, :cond_4

    .line 5031
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5039
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_4
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 5040
    .local v9, "tempresid":I
    new-instance v5, Lcom/hz/net/Message;

    const/16 v11, 0x2928

    invoke-direct {v5, v11}, Lcom/hz/net/Message;-><init>(I)V

    .line 5041
    .local v5, "msgImage":Lcom/hz/net/Message;
    int-to-short v11, v9

    invoke-virtual {v5, v11}, Lcom/hz/net/Message;->putShort(S)V

    .line 5043
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5047
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 5048
    if-eqz v5, :cond_0

    .line 5052
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 5053
    .local v0, "allsize":S
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 5054
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    const v12, 0xffff

    and-int v6, v11, v12

    .line 5055
    .local v6, "name":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v1

    .line 5056
    .local v1, "data":[B
    sget-object v11, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5053
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static processDataMonsterAIMsg(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5093
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 5098
    .local v5, "skillSize":B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 5099
    .local v4, "skillList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 5104
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 5109
    .local v3, "monsterAISize":B
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 5122
    return-void

    .line 5100
    .end local v3    # "monsterAISize":B
    :cond_0
    invoke-static {p0}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 5099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5110
    .restart local v3    # "monsterAISize":B
    :cond_1
    invoke-static {p0, v4}, Lcom/hz/battle/MonsterAI;->fromBytes(Lcom/hz/net/Message;Ljava/util/Vector;)Lcom/hz/battle/MonsterAI;

    move-result-object v0

    .line 5111
    .local v0, "ai":Lcom/hz/battle/MonsterAI;
    if-nez v0, :cond_3

    .line 5109
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5116
    :cond_3
    iget-short v6, v0, Lcom/hz/battle/MonsterAI;->id:S

    invoke-static {v6}, Lcom/hz/main/GameWorld;->getMonster(I)Lcom/hz/actor/Monster;

    move-result-object v2

    .line 5117
    .local v2, "monster":Lcom/hz/actor/Monster;
    if-eqz v2, :cond_2

    .line 5120
    invoke-virtual {v2, v0}, Lcom/hz/actor/Monster;->setAI(Lcom/hz/battle/MonsterAI;)V

    goto :goto_2
.end method

.method public static processDataMonsterGroupMsg(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5130
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 5134
    .local v2, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 5142
    return-void

    .line 5136
    :cond_0
    invoke-static {p0}, Lcom/hz/core/MonsterGroup;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/MonsterGroup;

    move-result-object v0

    .line 5137
    .local v0, "group":Lcom/hz/core/MonsterGroup;
    if-nez v0, :cond_1

    .line 5134
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5140
    :cond_1
    invoke-static {v0}, Lcom/hz/main/GameWorld;->addMonsterGroup(Lcom/hz/core/MonsterGroup;)V

    goto :goto_1
.end method

.method public static processDataMonsterMsg(Lcom/hz/net/Message;)Z
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5071
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 5076
    .local v1, "monsterSize":B
    if-gtz v1, :cond_0

    .line 5077
    const/4 v2, 0x0

    .line 5083
    :goto_0
    return v2

    .line 5080
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 5083
    const/4 v2, 0x1

    goto :goto_0

    .line 5081
    :cond_1
    invoke-static {p0}, Lcom/hz/actor/Monster;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/actor/Monster;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/GameWorld;->addMonster(Lcom/hz/actor/Monster;)V

    .line 5080
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static processDataPlayerDetail(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 5151
    if-nez p1, :cond_0

    .line 5155
    new-instance p1, Lcom/hz/actor/Player;

    .end local p1    # "player":Lcom/hz/actor/Player;
    invoke-direct {p1}, Lcom/hz/actor/Player;-><init>()V

    .line 5159
    .restart local p1    # "player":Lcom/hz/actor/Player;
    :cond_0
    invoke-virtual {p1}, Lcom/hz/actor/Player;->clearData()V

    .line 5162
    invoke-static {p0, p1}, Lcom/hz/actor/Player;->fromBytes(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V

    .line 5165
    invoke-static {p0, p1}, Lcom/hz/actor/MyPet;->fromBytesMyPlayer(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v2

    .line 5166
    .local v2, "pet":Lcom/hz/actor/MyPet;
    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->setPet(Lcom/hz/actor/Model;)V

    .line 5169
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 5173
    .local v3, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 5178
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 5179
    .local v1, "isNewMailNotice":Z
    if-eqz v1, :cond_1

    .line 5180
    const/4 v4, 0x1

    const/16 v5, 0x2000

    invoke-virtual {p1, v4, v5}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 5183
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->refreshPlayerAllSprite()V

    .line 5185
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 5186
    invoke-static {}, Lcom/hz/main/GameWorld;->updateMyMoveSpeed()V

    .line 5187
    return-void

    .line 5174
    .end local v1    # "isNewMailNotice":Z
    :cond_2
    invoke-static {p0}, Lcom/hz/actor/Mercenary;->fromBytesFull(Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->addMercenary(Lcom/hz/actor/Model;)Z

    .line 5173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static processDataPlayerItemMsg(Lcom/hz/net/Message;)Ljava/util/Vector;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5365
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 5370
    .local v3, "size":S
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 5371
    .local v2, "itemList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 5381
    return-object v2

    .line 5372
    :cond_0
    invoke-static {p0}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v1

    .line 5378
    .local v1, "item":Lcom/hz/core/Item;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 5371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final processDataPlayerListBase(Lcom/hz/net/Message;Lcom/hz/actor/Model;)Lcom/hz/actor/Model;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 5224
    if-nez p1, :cond_0

    .line 5225
    const/4 p1, 0x0

    .line 5246
    .end local p1    # "model":Lcom/hz/actor/Model;
    :goto_0
    return-object p1

    .line 5228
    .restart local p1    # "model":Lcom/hz/actor/Model;
    :cond_0
    invoke-static {p0, p1}, Lcom/hz/actor/Model;->fromBytes(Lcom/hz/net/Message;Lcom/hz/actor/Model;)V

    .line 5231
    invoke-static {p0, p1}, Lcom/hz/actor/MyPet;->fromBytesOtherPlayer(Lcom/hz/net/Message;Lcom/hz/actor/Model;)Lcom/hz/actor/Model;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Model;->setPet(Lcom/hz/actor/Model;)V

    .line 5234
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 5235
    .local v1, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 5240
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Model;->setRemark(Ljava/lang/String;)V

    .line 5242
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Model;->setEnchantValue(I)V

    .line 5244
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Model;->setIconpet1(I)V

    goto :goto_0

    .line 5236
    :cond_1
    invoke-static {p0}, Lcom/hz/actor/Mercenary;->fromBytesSimple(Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Model;->addMercenary(Lcom/hz/actor/Model;)Z

    .line 5235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static final processDataPlayerMission(Lcom/hz/net/Message;Lcom/hz/actor/Player;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 5196
    if-nez p1, :cond_1

    .line 5214
    :cond_0
    return-void

    .line 5201
    :cond_1
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/hz/core/Mission;

    iput-object v3, p1, Lcom/hz/actor/Player;->missionList:[Lcom/hz/core/Mission;

    .line 5204
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 5210
    .local v2, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5211
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v1

    .line 5212
    .local v1, "mission":Lcom/hz/core/Mission;
    invoke-virtual {p1, v1}, Lcom/hz/actor/Player;->addMission(Lcom/hz/core/Mission;)Z

    .line 5210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static processDataPlayerSkillMsg(Lcom/hz/net/Message;Z)Ljava/util/Vector;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isPlayer"    # Z

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 5396
    .local v1, "size":S
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 5397
    .local v3, "skillList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 5409
    return-object v3

    .line 5398
    :cond_0
    invoke-static {p0}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v2

    .line 5399
    .local v2, "skill":Lcom/hz/core/Skill;
    if-eqz p1, :cond_1

    .line 5400
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, v2, Lcom/hz/core/Skill;->addLevel:B

    .line 5407
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 5397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final processDataTeamMsg(Lcom/hz/net/Message;)V
    .locals 10
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5313
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 5318
    .local v9, "teamSize":S
    const/4 v0, 0x0

    .line 5320
    .local v0, "isUpdateUI":Z
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v7

    .line 5322
    .local v7, "myPlayerID":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_0
    if-lt v8, v9, :cond_1

    .line 5353
    if-eqz v0, :cond_0

    .line 5354
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 5356
    :cond_0
    return-void

    .line 5324
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 5325
    .local v2, "leaderID":I
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 5327
    .local v1, "leader":Lcom/hz/actor/Model;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 5334
    .local v6, "memberNum":B
    const/4 v3, 0x0

    .local v3, "m":I
    :goto_1
    if-lt v3, v6, :cond_2

    .line 5322
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5336
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 5337
    .local v5, "memberID":I
    invoke-static {v5}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v4

    .line 5339
    .local v4, "member":Lcom/hz/actor/Model;
    if-eqz v1, :cond_4

    .line 5340
    invoke-virtual {v1, v4}, Lcom/hz/actor/Model;->addMember(Lcom/hz/actor/Model;)Z

    .line 5342
    if-eq v2, v7, :cond_3

    if-ne v5, v7, :cond_4

    .line 5343
    :cond_3
    const/4 v0, 0x1

    .line 5334
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static final processDelPlayerMsg(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 5418
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 5424
    .local v2, "result":B
    if-eqz v2, :cond_0

    .line 5425
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 5435
    :goto_0
    return-void

    .line 5429
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 5431
    .local v0, "deleteTime":S
    new-instance v1, Lcom/hz/net/Message;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v3

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 5432
    .local v1, "recieveMsg":Lcom/hz/net/Message;
    invoke-virtual {v1, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 5433
    invoke-virtual {v1}, Lcom/hz/net/Message;->reset()V

    .line 5434
    const/16 v3, 0x2713

    invoke-static {v3, v1}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processDismissTeamMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4438
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 4444
    .local v0, "leaderID":I
    invoke-static {v0}, Lcom/hz/main/GameWorld;->dismissTeam(I)V

    .line 4445
    return-void
.end method

.method private static final processDropSkill(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6602
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6606
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 6607
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 6608
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 6607
    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 6613
    :goto_0
    return-void

    .line 6612
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processEnterRemoteBattle(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3867
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 3868
    .local v0, "result":B
    if-gez v0, :cond_1

    .line 3869
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 3872
    sget v1, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    .line 3873
    invoke-static {}, Lcom/hz/core/Arena;->doUpdateArenaNearActorList()V

    .line 3880
    :cond_0
    :goto_0
    return-void

    .line 3879
    :cond_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processRemoteBattleNotify(Lcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processEscortEventMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10960
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10965
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10966
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10971
    :goto_0
    return-void

    .line 10970
    :cond_0
    const/16 v1, 0x38b2

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processEscortEventReword(Lcom/hz/net/Message;)V
    .locals 17
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3681
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3682
    .local v8, "player":Lcom/hz/actor/Player;
    if-nez v8, :cond_1

    .line 3791
    :cond_0
    :goto_0
    return-void

    .line 3688
    :cond_1
    iget-object v1, v8, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 3689
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 3696
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 3702
    .local v12, "result":B
    if-ltz v12, :cond_0

    .line 3704
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 3706
    .local v13, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 3707
    .local v5, "msgStr":Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 3708
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3713
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v14

    .line 3715
    .local v14, "soltPos":I
    if-ltz v14, :cond_3

    .line 3716
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 3717
    .local v4, "itemID":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 3729
    .local v11, "removeNum":I
    int-to-short v15, v14

    invoke-virtual {v1, v15, v11}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 3732
    .end local v4    # "itemID":I
    .end local v11    # "removeNum":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 3733
    .local v9, "powerID":S
    if-lez v9, :cond_4

    .line 3734
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 3741
    .local v10, "powerValue":S
    invoke-static {v8, v9, v10}, Lcom/hz/core/Define;->processWorldPower(Lcom/hz/actor/Player;IS)Z

    move-result v3

    .line 3744
    .local v3, "isHpOrMp":Z
    if-eqz v3, :cond_6

    .line 3745
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3753
    .end local v3    # "isHpOrMp":Z
    .end local v10    # "powerValue":S
    :cond_4
    :goto_1
    invoke-virtual {v8}, Lcom/hz/actor/Player;->checkHPMP()V

    .line 3755
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 3756
    .local v6, "newHP":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 3768
    .local v7, "newMP":I
    iput v6, v8, Lcom/hz/actor/Player;->hp:I

    .line 3769
    iput v7, v8, Lcom/hz/actor/Player;->mp:I

    .line 3771
    const/16 v15, 0xb

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 3772
    const/16 v15, 0xc

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 3773
    const/16 v15, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 3775
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 3776
    .local v2, "isHasItem":Z
    if-eqz v2, :cond_5

    .line 3777
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    .line 3778
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getMsgInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3781
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 3783
    invoke-static {}, Lcom/hz/main/GameCanvas;->getEscort()Lcom/hz/core/Escort;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 3784
    invoke-static {}, Lcom/hz/main/GameCanvas;->getEscort()Lcom/hz/core/Escort;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/hz/core/Escort;->setBattleMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3749
    .end local v2    # "isHasItem":Z
    .end local v6    # "newHP":I
    .end local v7    # "newMP":I
    .restart local v3    # "isHpOrMp":Z
    .restart local v10    # "powerValue":S
    :cond_6
    invoke-virtual {v8, v9, v10}, Lcom/hz/actor/Player;->addFightPower(II)V

    .line 3750
    const-string v15, "Nh\u1eadn \u0111\u01b0\u1ee3c BUFF %U\n"

    invoke-static {v9, v10}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static processEscortListPlayer(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11342
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 11347
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 11348
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11354
    :goto_0
    return-void

    .line 11352
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 11353
    const/16 v1, 0x38b5

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processEscortMoveMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10897
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10902
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10903
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10909
    :goto_0
    return-void

    .line 10907
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 10908
    const/16 v1, 0x38ae

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processEscortPostQuit(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10984
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10989
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10990
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10995
    :goto_0
    return-void

    .line 10994
    :cond_0
    const/16 v1, 0x38ad

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processEscortRefreshMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10938
    const/16 v0, 0x38af

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 10940
    invoke-static {}, Lcom/hz/main/GameCanvas;->getEscort()Lcom/hz/core/Escort;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hz/core/Escort;->processEscortRefreshMsg(Lcom/hz/net/Message;Lcom/hz/core/Escort;)V

    .line 10941
    return-void
.end method

.method private static processEscortRob(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11112
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 11117
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 11118
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 11123
    :goto_0
    return-void

    .line 11122
    :cond_0
    const/16 v1, 0x38b4

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static processEscortRobList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11051
    const/16 v0, 0x38b3

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11052
    return-void
.end method

.method public static final processEscortStartMsg(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10833
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 10834
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_0

    .line 10876
    :goto_0
    return-void

    .line 10838
    :cond_0
    sget-object v5, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-nez v5, :cond_1

    .line 10839
    new-instance v5, Lcom/hz/map/GameMap;

    invoke-direct {v5}, Lcom/hz/map/GameMap;-><init>()V

    sput-object v5, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 10843
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 10844
    const/16 v5, 0xc

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 10845
    const/16 v5, 0xd

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 10848
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 10849
    .local v1, "escortType":B
    sput-byte v1, Lcom/hz/core/Escort;->escortType:B

    .line 10852
    const/4 v3, 0x0

    .line 10853
    .local v3, "leaderSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isInTeam()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10854
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v5

    invoke-static {v5}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v2

    .line 10855
    .local v2, "leader":Lcom/hz/actor/Model;
    if-eqz v2, :cond_2

    .line 10856
    invoke-virtual {v2}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    .line 10859
    .end local v2    # "leader":Lcom/hz/actor/Model;
    :cond_2
    if-nez v3, :cond_3

    .line 10860
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    .line 10864
    :cond_3
    const/4 v0, 0x0

    .line 10868
    .local v0, "escort":Lcom/hz/core/Escort;
    if-nez v1, :cond_5

    .line 10869
    invoke-static {p0, v3}, Lcom/hz/core/Escort;->fromBytes(Lcom/hz/net/Message;Lcom/hz/sprite/GameSprite;)Lcom/hz/core/Escort;

    move-result-object v0

    .line 10875
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Lcom/hz/main/GameCanvas;->createEscort(Lcom/hz/core/Escort;B)V

    goto :goto_0

    .line 10870
    :cond_5
    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    .line 10871
    invoke-static {p0, v3}, Lcom/hz/core/NewEscort;->fromBytes(Lcom/hz/net/Message;Lcom/hz/sprite/GameSprite;)Lcom/hz/core/Escort;

    move-result-object v0

    goto :goto_1
.end method

.method private static final processFirstGameServerMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v3, 0x1

    .line 2798
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 2804
    .local v0, "rssult":B
    if-eqz v0, :cond_0

    .line 2805
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 2810
    :goto_0
    return-void

    .line 2809
    :cond_0
    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processGameJoinMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2762
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 2767
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 2769
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 2774
    :goto_0
    return-void

    .line 2773
    :cond_0
    const/16 v1, 0x138e

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processGameServerErrorNotify(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2782
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2783
    .local v1, "type":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2789
    .local v0, "error":Ljava/lang/String;
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;BZ)Lcom/hz/ui/UIHandler;

    .line 2790
    return-void
.end method

.method private static final processGetAlbumsListMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10516
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v0

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 10517
    return-void
.end method

.method private static final processGetMissionDataMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6732
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6737
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 6738
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 6744
    :goto_0
    return-void

    .line 6742
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 6743
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processGetSpriteMessage(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11439
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 11445
    .local v0, "isMiniSprite":Z
    if-eqz v0, :cond_0

    .line 11446
    invoke-static {p0}, Lcom/hz/main/FragmentData;->fromSimpleData(Lcom/hz/net/Message;)V

    .line 11452
    :goto_0
    return-void

    .line 11450
    :cond_0
    invoke-static {p0}, Lcom/hz/main/FragmentData;->fromNormalData(Lcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGetSuitInfoMsg(Lcom/hz/net/Message;)V
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10716
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 10717
    .local v6, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 10736
    return-void

    .line 10719
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-static {v8}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    .line 10721
    .local v1, "id":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 10723
    .local v3, "num":B
    mul-int/lit8 v8, v3, 0x5

    new-array v7, v8, [S

    .line 10724
    .local v7, "suitData":[S
    const/4 v4, 0x0

    .line 10725
    .local v4, "offset":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v5, v4

    .end local v4    # "offset":I
    .local v5, "offset":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 10734
    invoke-static {v1, v7}, Lcom/hz/main/GameWorld;->addSuit(I[S)V

    .line 10717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10727
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    aput-short v8, v7, v5

    .line 10728
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    invoke-static {v8}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v8

    aput-short v8, v7, v4

    .line 10729
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    aput-short v8, v7, v5

    .line 10730
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    aput-short v8, v7, v4

    .line 10731
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    aput-short v8, v7, v5

    .line 10725
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1
.end method

.method public static final processGoodsAutoProvide(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9241
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9246
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9247
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9253
    :goto_0
    return-void

    .line 9251
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 9252
    const/16 v1, 0x34d7

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsProvideMsg(Lcom/hz/net/Message;)V
    .locals 19
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9279
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 9284
    .local v10, "result":B
    if-gez v10, :cond_1

    .line 9285
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9334
    :cond_0
    :goto_0
    return-void

    .line 9289
    :cond_1
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 9290
    .local v9, "player":Lcom/hz/actor/Player;
    if-eqz v9, :cond_0

    .line 9294
    iget-object v1, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 9295
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 9299
    const/4 v2, 0x0

    .line 9302
    .local v2, "count":S
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 9303
    .local v11, "size":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v11, :cond_2

    .line 9320
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 9321
    .local v6, "money1":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 9324
    .local v7, "money3":I
    const/16 v13, 0xb

    invoke-virtual {v9, v13, v6}, Lcom/hz/actor/Player;->addValue(II)V

    .line 9325
    const/16 v13, 0xd

    invoke-virtual {v9, v13, v7}, Lcom/hz/actor/Player;->addValue(II)V

    .line 9327
    const-string v14, "Th\u00e0nh c\u00f4ng cung \u1ee9ng v\u1eadt ph\u1ea9m %U c\u00e1i, nh\u1eadn %U"

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    const/16 v16, 0x1

    .line 9328
    new-instance v17, Ljava/lang/StringBuilder;

    if-lez v6, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v18, 0xb

    invoke-static/range {v18 .. v18}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v7, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v18, 0xd

    invoke-static/range {v18 .. v18}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v16

    .line 9327
    invoke-static {v14, v15}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9333
    const/16 v13, 0x34d6

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto/16 :goto_0

    .line 9304
    .end local v6    # "money1":I
    .end local v7    # "money3":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v12

    .line 9305
    .local v12, "slotPos":S
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 9306
    .local v8, "num":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 9308
    .local v4, "id":I
    invoke-virtual {v1, v12}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v5

    .line 9309
    .local v5, "item":Lcom/hz/core/Item;
    if-eqz v5, :cond_3

    iget v13, v5, Lcom/hz/core/Item;->id:I

    .line 9315
    :cond_3
    add-int v13, v2, v8

    int-to-short v2, v13

    .line 9317
    invoke-virtual {v1, v12, v8}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 9303
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 9328
    .end local v4    # "id":I
    .end local v5    # "item":Lcom/hz/core/Item;
    .end local v8    # "num":B
    .end local v12    # "slotPos":S
    .restart local v6    # "money1":I
    .restart local v7    # "money3":I
    :cond_4
    const-string v13, ""

    goto :goto_2

    :cond_5
    const-string v13, ""

    goto :goto_3
.end method

.method public static final processGoodsPurchaseCancel(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9511
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9516
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9517
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9522
    :goto_0
    return-void

    .line 9521
    :cond_0
    const/16 v1, 0x34d2

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsPurchaseGet(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9430
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 9435
    .local v0, "result":S
    if-gez v0, :cond_0

    .line 9436
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9446
    :goto_0
    return-void

    .line 9441
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;)V

    .line 9443
    const-string v1, "Th\u00e0nh c\u00f4ng l\u1ea5y v\u1eadt ph\u1ea9m mua \u0111\u01b0\u1ee3c %U c\u00e1i"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9445
    const/16 v1, 0x34d3

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsPurchaseList(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9367
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 9372
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 9373
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9379
    :goto_0
    return-void

    .line 9377
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 9378
    const/16 v1, 0x34d5

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsPurchaseMyList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9405
    const/16 v0, 0x34d4

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 9406
    return-void
.end method

.method public static final processGoodsPurchaseSubmit(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9476
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9481
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9482
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9487
    :goto_0
    return-void

    .line 9486
    :cond_0
    const/16 v1, 0x34d1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsPurchaseTypeList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9550
    const/16 v0, 0x34d8

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 9551
    return-void
.end method

.method public static final processGoodsSellBuy(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9184
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 9189
    .local v1, "result":B
    if-gez v1, :cond_1

    .line 9190
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9208
    :cond_0
    :goto_0
    return-void

    .line 9194
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 9195
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 9203
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;)V

    .line 9204
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 9205
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 9207
    const/16 v2, 0x34cd

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsSellFind(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9147
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 9152
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 9153
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9159
    :goto_0
    return-void

    .line 9157
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 9158
    const/16 v1, 0x34cc

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsSellList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9106
    const/16 v0, 0x34d0

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 9107
    return-void
.end method

.method public static final processGoodsSellRetrieve(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9066
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9071
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9072
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9080
    :goto_0
    return-void

    .line 9077
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;)V

    .line 9079
    const/16 v1, 0x34cf

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processGoodsSellSubmit(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9031
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9036
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9037
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9042
    :goto_0
    return-void

    .line 9041
    :cond_0
    const/16 v1, 0x34ce

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processIconChangeMessage(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3031
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3032
    .local v0, "id":I
    invoke-static {v0}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v2

    .line 3033
    .local v2, "model":Lcom/hz/actor/Model;
    if-nez v2, :cond_0

    .line 3057
    :goto_0
    return-void

    .line 3046
    :cond_0
    invoke-virtual {v2}, Lcom/hz/actor/Model;->isTwoPeopleHouse()Z

    move-result v1

    .line 3048
    .local v1, "isOldTwoHouse":Z
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hz/actor/Model;->setIcon1(I)V

    .line 3049
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hz/actor/Model;->setIcon2(I)V

    .line 3050
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hz/actor/Model;->setIcon3(I)V

    .line 3053
    invoke-virtual {v2}, Lcom/hz/actor/Model;->isTwoPeopleHouse()Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 3054
    invoke-virtual {v2}, Lcom/hz/actor/Model;->clearMemberHideStatus()V

    .line 3056
    :cond_1
    invoke-virtual {v2}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    goto :goto_0
.end method

.method private static final processIdentifyAsk(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6347
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6348
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 6349
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 6354
    :goto_0
    return-void

    .line 6353
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processItemInfoMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10677
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10682
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10683
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10688
    :goto_0
    return-void

    .line 10687
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processItemShopListMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7324
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 7329
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 7330
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7336
    :goto_0
    return-void

    .line 7335
    :cond_0
    const/16 v1, 0x2ee4

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processItemShopSell(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7396
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 7401
    .local v2, "result":B
    if-gez v2, :cond_1

    .line 7402
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7419
    :cond_0
    :goto_0
    return-void

    .line 7406
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 7408
    .local v0, "money3":I
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 7409
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 7416
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v0}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 7418
    const/16 v3, 0x2ee6

    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processJoinTeamMsg(Lcom/hz/net/Message;)V
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const v10, 0xff00

    const/16 v9, 0xd6

    const/4 v11, 0x1

    .line 4311
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 4312
    .local v5, "memberID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 4321
    .local v2, "leaderID":I
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 4322
    .local v1, "leader":Lcom/hz/actor/Model;
    if-nez v1, :cond_1

    .line 4342
    :cond_0
    :goto_0
    return-void

    .line 4329
    :cond_1
    invoke-static {v5}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v4

    .line 4330
    .local v4, "member":Lcom/hz/actor/Model;
    invoke-virtual {v1, v4}, Lcom/hz/actor/Model;->addMember(Lcom/hz/actor/Model;)Z

    move-result v0

    .line 4333
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v8, v1}, Lcom/hz/actor/Model;->isSameTeam(Lcom/hz/actor/Model;Lcom/hz/actor/Model;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4334
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v7

    .line 4335
    .local v7, "myPlayerID":I
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 4336
    if-eqz v4, :cond_3

    if-ne v5, v7, :cond_2

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 4338
    .local v6, "memberName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_5

    if-ne v2, v7, :cond_4

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 4340
    .local v3, "leaderName":Ljava/lang/String;
    :goto_2
    const-string v8, "%U \u0111\u00e3 v\u00e0o \u0111\u1ed9i %U"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    aput-object v3, v9, v11

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4337
    .end local v3    # "leaderName":Ljava/lang/String;
    .end local v6    # "memberName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, "\u0110\u1ed9i vi\u00ean"

    goto :goto_1

    .line 4339
    .restart local v6    # "memberName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-string v3, "\u0110\u1ed9i tr\u01b0\u1edfng "

    goto :goto_2
.end method

.method private static final processJumpCityMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4521
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 4527
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 4528
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 4534
    :goto_0
    return-void

    .line 4531
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 4533
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processJumpMapMsg(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4497
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 4503
    .local v1, "result":B
    if-eqz v1, :cond_1

    .line 4504
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 4505
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 4506
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 4507
    invoke-virtual {v0}, Lcom/hz/actor/Player;->clearAutoMoveList()V

    .line 4514
    .end local v0    # "player":Lcom/hz/actor/Player;
    :cond_0
    :goto_0
    return-void

    .line 4511
    :cond_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 4513
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v2

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processLeaveTeamMsg(Lcom/hz/net/Message;)V
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const v12, 0xff00

    const/16 v11, 0xd6

    const/4 v13, 0x1

    .line 4350
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 4351
    .local v2, "leaderID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 4354
    .local v5, "memberID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 4355
    .local v8, "posX":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 4357
    .local v9, "posY":B
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 4358
    .local v1, "leader":Lcom/hz/actor/Model;
    invoke-static {v5}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v4

    .line 4364
    .local v4, "member":Lcom/hz/actor/Model;
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v10, v1}, Lcom/hz/actor/Model;->isSameTeam(Lcom/hz/actor/Model;Lcom/hz/actor/Model;)Z

    move-result v0

    .line 4369
    .local v0, "isSameTeam":Z
    if-eqz v1, :cond_0

    .line 4370
    invoke-virtual {v1, v5}, Lcom/hz/actor/Model;->removeMember(I)Z

    .line 4379
    :cond_0
    if-eqz v4, :cond_1

    .line 4380
    invoke-virtual {v4, v8, v9}, Lcom/hz/actor/Model;->setPosition(II)V

    .line 4384
    :cond_1
    if-eqz v0, :cond_2

    .line 4385
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v7

    .line 4386
    .local v7, "myPlayerID":I
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 4387
    if-eqz v4, :cond_4

    if-ne v5, v7, :cond_3

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 4389
    .local v6, "memberName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_6

    if-ne v2, v7, :cond_5

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 4391
    .local v3, "leaderName":Ljava/lang/String;
    :goto_1
    const-string v10, "%U \u0111\u00e3 r\u1eddi \u0111\u1ed9i %U "

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    aput-object v3, v11, v13

    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;Z)V

    .line 4393
    .end local v3    # "leaderName":Ljava/lang/String;
    .end local v6    # "memberName":Ljava/lang/String;
    .end local v7    # "myPlayerID":I
    :cond_2
    return-void

    .line 4388
    .restart local v7    # "myPlayerID":I
    :cond_3
    invoke-virtual {v4}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-string v6, "\u0110\u1ed9i vi\u00ean"

    goto :goto_0

    .line 4390
    .restart local v6    # "memberName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    const-string v3, "\u0110\u1ed9i tr\u01b0\u1edfng "

    goto :goto_1
.end method

.method private static final processListPlayerMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 2826
    .local v2, "size":B
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    .line 2827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 2832
    const/16 v3, 0x2711

    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 2833
    return-void

    .line 2828
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->getMessagePlayer(Lcom/hz/net/Message;)Lcom/hz/actor/ListPlayer;

    move-result-object v1

    .line 2829
    .local v1, "listPlayer":Lcom/hz/actor/ListPlayer;
    sget-object v3, Lcom/hz/main/GameCanvas;->allPlayerList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final processLocalBattleReward(Lcom/hz/net/Message;)V
    .locals 11
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 3795
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 3800
    .local v5, "result":B
    if-gez v5, :cond_0

    .line 3802
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 3810
    .local v0, "error":Ljava/lang/String;
    const-string v6, "%U, l\u1ed7i m\u00e3 %U"

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 3812
    sget-byte v6, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_ALL:B

    sput-byte v6, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 3856
    .end local v0    # "error":Ljava/lang/String;
    :goto_0
    return-void

    .line 3817
    :cond_0
    if-ne v5, v7, :cond_1

    .line 3818
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->parseBattleNormalReward(Lcom/hz/net/Message;)V

    .line 3819
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    .line 3823
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 3824
    .local v3, "isHaveBuffState":Z
    if-nez v3, :cond_2

    .line 3825
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3827
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_2

    .line 3828
    const/4 v6, -0x1

    iput-short v6, v4, Lcom/hz/actor/Player;->power:S

    .line 3832
    .end local v4    # "player":Lcom/hz/actor/Player;
    :cond_2
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMyMercenaryCheck(Lcom/hz/net/Message;)V

    .line 3834
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 3835
    .local v1, "isChangeMap":Z
    if-eqz v1, :cond_3

    .line 3836
    sget-byte v6, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_BASE:B

    sput-byte v6, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 3840
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 3841
    .local v2, "isCountryBuffState":Z
    if-nez v2, :cond_4

    .line 3842
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 3844
    .restart local v4    # "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_4

    .line 3845
    iput-byte v8, v4, Lcom/hz/actor/Player;->countrypowerValue:B

    .line 3850
    .end local v4    # "player":Lcom/hz/actor/Player;
    :cond_4
    invoke-static {v8, v8}, Lcom/hz/main/GameWorld;->handleMyPlayerDurability(ZZ)V

    .line 3853
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 3855
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto :goto_0
.end method

.method public static final processLoginRewardMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10289
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 10293
    .local v0, "ishasLoginRewards":Z
    if-eqz v0, :cond_0

    .line 10294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10296
    .local v1, "strloginrewards":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hz/main/MsgHandler;->getLoginRewardInfo(Lcom/hz/net/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\nC\u00f3 nh\u1eadn b\u00e2y gi\u1edd kh\u00f4ng? \n(Th\u00f4ng qua danh s\u00e1ch nhi\u1ec7m v\u1ee5 c\u00f3 th\u1ec3 nh\u1eadn th\u01b0\u1edfng)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10298
    invoke-static {v1}, Lcom/hz/main/GameCanvas;->setWorldShowLoginRewardMsg(Ljava/lang/String;)V

    .line 10302
    .end local v1    # "strloginrewards":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static final processMailAttachMsg(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7964
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 7969
    .local v1, "result":B
    if-gez v1, :cond_1

    .line 7970
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7991
    :cond_0
    :goto_0
    return-void

    .line 7976
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 7977
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 7981
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 7982
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/hz/actor/Player;->setMoneyByType(IILjava/lang/StringBuffer;)V

    .line 7983
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/hz/actor/Player;->setMoneyByType(IILjava/lang/StringBuffer;)V

    .line 7984
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/hz/actor/Player;->setMoneyByType(IILjava/lang/StringBuffer;)V

    .line 7985
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hz/net/Message;->addTempSb(Ljava/lang/String;)V

    .line 7988
    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    .line 7990
    const/16 v3, 0x2b03

    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMailBackMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8015
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8020
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8021
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 8026
    :goto_0
    return-void

    .line 8025
    :cond_0
    const/16 v1, 0x2b04

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMailDeleteMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8050
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8055
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8056
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 8061
    :goto_0
    return-void

    .line 8060
    :cond_0
    const/16 v1, 0x2b05

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMailDetailMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7758
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 7763
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 7764
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7769
    :goto_0
    return-void

    .line 7768
    :cond_0
    const/16 v1, 0x2b00

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMailListMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7723
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 7728
    .local v0, "result":S
    if-gez v0, :cond_0

    .line 7729
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7735
    :goto_0
    return-void

    .line 7733
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 7734
    const/16 v1, 0x2aff

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMailNotifyMsg(Lcom/hz/net/Message;)V
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7880
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v9

    .line 7881
    .local v9, "mailId":J
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    .line 7884
    .local v6, "mailName":Ljava/lang/String;
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v1, 0x2000

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hz/main/GameWorld;->setModelSetting(Lcom/hz/actor/Model;IZ)V

    .line 7888
    long-to-int v0, v9

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0x1d4c0

    add-long/2addr v3, v7

    const/16 v5, 0x56

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    const-string v8, ""

    .line 7887
    invoke-static/range {v0 .. v8}, Lcom/hz/core/ObjectData;->fromPlayerEventBytes(IIBJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/core/ObjectData;

    move-result-object v11

    .line 7889
    .local v11, "playerEvent":Lcom/hz/core/ObjectData;
    invoke-static {v11}, Lcom/hz/main/GameWorld;->addPlayerEvent(Lcom/hz/core/ObjectData;)V

    .line 7895
    return-void
.end method

.method public static final processMailSendGMMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7921
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 7926
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 7927
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7932
    :goto_0
    return-void

    .line 7931
    :cond_0
    const/16 v1, 0x2b02

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMailSendMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7861
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 7866
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 7867
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7872
    :goto_0
    return-void

    .line 7871
    :cond_0
    const/16 v1, 0x2b01

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processMapUpdateMsg(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6218
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 6219
    .local v2, "mapID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6220
    .local v0, "gx":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 6226
    .local v1, "gy":I
    invoke-static {}, Lcom/hz/main/GameWorld;->getCurMapID()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 6227
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 6228
    .local v3, "p":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 6229
    invoke-virtual {v3, v0, v1}, Lcom/hz/actor/Player;->setPosition(II)V

    .line 6235
    .end local v3    # "p":Lcom/hz/actor/Player;
    :cond_0
    :goto_0
    return-void

    .line 6233
    :cond_1
    sget-byte v4, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_BASE:B

    sput-byte v4, Lcom/hz/main/MsgHandler;->worldReflashType:B

    goto :goto_0
.end method

.method private static processMarryList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11151
    const-string v0, "MsgHandler.processMarryList() !!!"

    invoke-static {v0}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 11154
    const/16 v0, 0x34f5

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11155
    return-void
.end method

.method private static processMarryWishList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11060
    const/16 v0, 0x34f3

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11061
    return-void
.end method

.method public static final processMercenaryDelMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8391
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8396
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8397
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8402
    :goto_0
    return-void

    .line 8401
    :cond_0
    const/16 v1, 0x3c96

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMercenaryInfoMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8148
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 8153
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 8154
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8160
    :goto_0
    return-void

    .line 8158
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 8159
    const/16 v1, 0x3c90

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMercenaryListMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8123
    const/16 v0, 0x3c8f

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 8124
    return-void
.end method

.method public static final processMercenaryMyInfoMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8186
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8191
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8192
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8197
    :goto_0
    return-void

    .line 8196
    :cond_0
    const/16 v1, 0x3c93

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMercenaryMyListMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8293
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMyMercenaryCheck(Lcom/hz/net/Message;)V

    .line 8295
    const/16 v0, 0x3c92

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 8296
    return-void
.end method

.method public static final processMercenaryNotifyMsg(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8233
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 8238
    .local v3, "playerId":I
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 8275
    :cond_0
    :goto_0
    return-void

    .line 8245
    :cond_1
    invoke-static {v3}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v2

    .line 8246
    .local v2, "player":Lcom/hz/actor/Model;
    if-eqz v2, :cond_0

    .line 8253
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 8254
    .local v0, "groupId":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 8260
    .local v4, "status":B
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 8261
    new-instance v1, Lcom/hz/actor/Mercenary;

    invoke-direct {v1}, Lcom/hz/actor/Mercenary;-><init>()V

    .line 8262
    .local v1, "model":Lcom/hz/actor/Mercenary;
    int-to-short v5, v0

    iput-short v5, v1, Lcom/hz/actor/Mercenary;->groupId:S

    .line 8263
    invoke-static {p0, v1}, Lcom/hz/actor/Mercenary;->fromBytesSimpleData(Lcom/hz/net/Message;Lcom/hz/actor/Mercenary;)Lcom/hz/actor/Mercenary;

    .line 8264
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/hz/actor/Mercenary;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/hz/actor/Mercenary;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 8265
    invoke-virtual {v2, v1}, Lcom/hz/actor/Model;->addMercenary(Lcom/hz/actor/Model;)Z

    goto :goto_0

    .line 8267
    .end local v1    # "model":Lcom/hz/actor/Mercenary;
    :cond_2
    invoke-virtual {v2, v0}, Lcom/hz/actor/Model;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 8273
    .local v1, "model":Lcom/hz/actor/Model;
    invoke-virtual {v2, v1}, Lcom/hz/actor/Model;->removeMercenary(Lcom/hz/actor/Model;)Z

    goto :goto_0
.end method

.method public static final processMercenarySetStatusMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8356
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8361
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8362
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8367
    :goto_0
    return-void

    .line 8366
    :cond_0
    const/16 v1, 0x3c94

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processMessage(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 1180
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1186
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processMissionNPCStatus(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6909
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 6914
    .local v4, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 6928
    return-void

    .line 6915
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 6916
    .local v2, "npcId":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 6917
    .local v3, "sign":B
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/hz/main/GameWorld;->getNpcByID(IZ)Lcom/hz/actor/NPC;

    move-result-object v1

    .line 6918
    .local v1, "npc":Lcom/hz/actor/NPC;
    if-nez v1, :cond_1

    .line 6914
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6926
    :cond_1
    invoke-virtual {v1, v3}, Lcom/hz/actor/NPC;->setSign(B)V

    goto :goto_1
.end method

.method public static final processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "missionId"    # I
    .param p2, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7060
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;Z)Ljava/lang/String;
    .locals 34
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "missionId"    # I
    .param p2, "msg"    # Lcom/hz/net/Message;
    .param p3, "isShowMessage"    # Z

    .prologue
    .line 7068
    if-nez p0, :cond_0

    .line 7069
    const-string v26, ""

    .line 7228
    :goto_0
    return-object v26

    .line 7072
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v20

    .line 7073
    .local v20, "isSetMissionState":Z
    if-eqz v20, :cond_1

    .line 7074
    move/from16 v0, p1

    int-to-short v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/hz/core/Mission;->finishMission(Lcom/hz/actor/Player;S)V

    .line 7077
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 7078
    .local v3, "bag":Lcom/hz/core/PlayerBag;
    if-nez v3, :cond_2

    .line 7079
    const-string v26, ""

    goto :goto_0

    .line 7082
    :cond_2
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    .line 7083
    .local v27, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    .line 7084
    .local v6, "costMoney1":S
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 7085
    .local v7, "costMoney2":I
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 7093
    .local v8, "costMoney3":I
    if-lez v6, :cond_3

    .line 7094
    const/16 v31, 0xb

    neg-int v0, v6

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7097
    :cond_3
    if-lez v7, :cond_4

    .line 7098
    const/16 v31, 0xc

    neg-int v0, v7

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7101
    :cond_4
    if-lez v8, :cond_5

    .line 7102
    const/16 v31, 0xd

    neg-int v0, v8

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7106
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getInt()I

    move-result v22

    .line 7107
    .local v22, "money2":I
    if-lez v22, :cond_6

    .line 7108
    const/16 v31, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7109
    new-instance v31, Ljava/lang/StringBuilder;

    const/16 v32, 0xc

    invoke-static/range {v32 .. v32}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const v32, 0xffff00

    invoke-static/range {v31 .. v32}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7113
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getInt()I

    move-result v23

    .line 7114
    .local v23, "money3":I
    if-lez v23, :cond_7

    .line 7115
    const/16 v31, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7116
    new-instance v31, Ljava/lang/StringBuilder;

    const/16 v32, 0xd

    invoke-static/range {v32 .. v32}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const v32, 0xffff00

    invoke-static/range {v31 .. v32}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7126
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/hz/main/MsgHandler;->processUpLevelMsg(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V

    .line 7129
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v19

    .line 7130
    .local v19, "isHavePet":Z
    if-eqz v19, :cond_8

    .line 7131
    sget-object v31, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual/range {v31 .. v31}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v31

    check-cast v31, Lcom/hz/actor/Player;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/hz/main/MsgHandler;->parsePetReward(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V

    .line 7135
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getByte()B

    move-result v28

    .line 7136
    .local v28, "size":B
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 7162
    const/16 v31, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    .line 7163
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getMsgInfo()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7166
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v18

    .line 7167
    .local v18, "isCityUpgrade":Z
    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getId()I

    move-result v31

    sget v32, Lcom/hz/main/GameWorld;->cityMasterId:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 7168
    sget-byte v31, Lcom/hz/main/MsgHandler;->WORLD_REFLASH_BASE:B

    sput-byte v31, Lcom/hz/main/MsgHandler;->worldReflashType:B

    .line 7172
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v31

    if-eqz v31, :cond_14

    .line 7173
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 7174
    .local v16, "honor":I
    if-lez v16, :cond_a

    .line 7175
    const-string v31, "\u0110\u1ed9 C\u1ed1ng Hi\u1ebfn %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7177
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    .line 7178
    .local v5, "cityProsperity":S
    if-lez v5, :cond_b

    .line 7179
    const-string v31, "\u0110\u1ed9 ph\u1ed3n vinh c\u1ee7a th\u00e0nh %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7181
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    .line 7182
    .local v4, "cityArmy":S
    if-lez v4, :cond_c

    .line 7183
    const-string v31, "Qu\u00e2n l\u1ef1c c\u1ee7a th\u00e0nh %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7185
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 7186
    .local v11, "countryLand":S
    if-lez v11, :cond_d

    .line 7187
    const-string v31, "\u0110\u1ea5t qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7189
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v13

    .line 7190
    .local v13, "countryProsperity":S
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v24

    .line 7191
    .local v24, "promoteProsperity":S
    if-lez v13, :cond_f

    .line 7192
    const-string v30, ""

    .line 7193
    .local v30, "strpromote":Ljava/lang/String;
    if-lez v24, :cond_e

    .line 7194
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "+"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const v32, 0xff00

    invoke-static/range {v31 .. v32}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .line 7196
    :cond_e
    const-string v31, "\u0110\u1ed9 ph\u1ed3n vinh qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7198
    .end local v30    # "strpromote":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v12

    .line 7199
    .local v12, "countryPeople":S
    if-lez v12, :cond_10

    .line 7200
    const-string v31, "S\u1ed1 d\u00e2n qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7202
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v15

    .line 7203
    .local v15, "countryWood":S
    if-lez v15, :cond_11

    .line 7204
    const-string v31, "G\u1ed7 qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7206
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v14

    .line 7207
    .local v14, "countryStone":S
    if-lez v14, :cond_12

    .line 7208
    const-string v31, "\u0110\u00e1 qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7210
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 7211
    .local v10, "countryIron":S
    if-lez v10, :cond_13

    .line 7212
    const-string v31, "S\u1eaft qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7214
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 7215
    .local v9, "countryArmy":S
    if-lez v9, :cond_14

    .line 7216
    const-string v31, "Qu\u00e2n l\u1ef1c qu\u1ed1c gia %U\n"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7220
    .end local v4    # "cityArmy":S
    .end local v5    # "cityProsperity":S
    .end local v9    # "countryArmy":S
    .end local v10    # "countryIron":S
    .end local v11    # "countryLand":S
    .end local v12    # "countryPeople":S
    .end local v13    # "countryProsperity":S
    .end local v14    # "countryStone":S
    .end local v15    # "countryWood":S
    .end local v16    # "honor":I
    .end local v24    # "promoteProsperity":S
    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 7222
    .local v26, "result":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 7223
    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/hz/main/WorldMessage;->addPointMsg(Ljava/lang/String;I)V

    .line 7226
    :cond_15
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto/16 :goto_0

    .line 7141
    .end local v18    # "isCityUpgrade":Z
    .end local v26    # "result":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getInt()I

    move-result v21

    .line 7144
    .local v21, "itemID":I
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getByte()B

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v29

    .line 7145
    .local v29, "soltPos":I
    invoke-virtual/range {p2 .. p2}, Lcom/hz/net/Message;->getByte()B

    move-result v25

    .line 7159
    .local v25, "removeNum":I
    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 7136
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1
.end method

.method private static final processMissionTeamDeliver(Lcom/hz/net/Message;)V
    .locals 10
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v5, 0x0

    .line 6832
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 6833
    .local v9, "player":Lcom/hz/actor/Player;
    if-nez v9, :cond_1

    .line 6864
    :cond_0
    :goto_0
    return-void

    .line 6837
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 6838
    .local v8, "missionId":S
    if-ltz v8, :cond_0

    .line 6841
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    .line 6842
    invoke-static {v9, v8, p0}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;

    .line 6845
    invoke-virtual {v9, v8}, Lcom/hz/actor/Player;->getMissionById(S)Lcom/hz/core/Mission;

    move-result-object v7

    .line 6846
    .local v7, "mission":Lcom/hz/core/Mission;
    if-eqz v7, :cond_3

    .line 6849
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v1, Lcom/hz/common/Utilities;->FONT_WIDTH:I

    div-int v6, v0, v1

    .line 6850
    .local v6, "fontLength":I
    const-string v0, "[Ho\u00e0n th\u00e0nh nhi\u1ec7m v\u1ee5 /c00ff00%U/p]%U"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v7, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, v7, Lcom/hz/core/Mission;->dialogStartFinish:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6851
    .local v4, "msgString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v6, 0x2

    if-le v0, v1, :cond_2

    .line 6852
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v6, 0x2

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 6854
    :cond_2
    new-instance v0, Lcom/hz/main/ChatMsg;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    invoke-static {v0, v5}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    .line 6856
    invoke-virtual {v9, v7}, Lcom/hz/actor/Player;->deleteMission(Lcom/hz/core/Mission;)Z

    .line 6859
    .end local v4    # "msgString":Ljava/lang/String;
    .end local v6    # "fontLength":I
    :cond_3
    invoke-static {v5}, Lcom/hz/main/GameWorld;->checkNPCRelaMissions(Z)V

    .line 6861
    invoke-virtual {v9}, Lcom/hz/actor/Player;->isMember()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6862
    const-string v0, "C\u00e1c ph\u1ea7n th\u01b0\u1edfng \u0111\u00e3 g\u1eedi v\u00e0o th\u01b0 nhi\u1ec7m v\u1ee5!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method private static final processMissionTeamMemberAccept(Lcom/hz/net/Message;)V
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v5, 0x0

    .line 6872
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 6873
    .local v11, "player":Lcom/hz/actor/Player;
    if-nez v11, :cond_1

    .line 6905
    :cond_0
    :goto_0
    return-void

    .line 6877
    :cond_1
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    .line 6879
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    .line 6882
    .local v8, "isAcceptDone":Z
    if-eqz v8, :cond_2

    .line 6883
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 6884
    .local v10, "missionId":I
    if-ltz v10, :cond_0

    .line 6887
    invoke-static {v11, v10, p0}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;

    .line 6904
    .end local v10    # "missionId":I
    :goto_1
    invoke-static {v5}, Lcom/hz/main/GameWorld;->checkNPCRelaMissions(Z)V

    goto :goto_0

    .line 6891
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v6

    .line 6892
    .local v6, "datas":[B
    invoke-static {v6}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v9

    .line 6893
    .local v9, "mission":Lcom/hz/core/Mission;
    invoke-virtual {v11, v9}, Lcom/hz/actor/Player;->addMission(Lcom/hz/core/Mission;)Z

    .line 6896
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v1, Lcom/hz/common/Utilities;->FONT_WIDTH:I

    div-int v7, v0, v1

    .line 6897
    .local v7, "fontLength":I
    const-string v0, "[Nh\u1eadn nhi\u1ec7m v\u1ee5 /c00ff00%U/p]%U"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v9, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, v9, Lcom/hz/core/Mission;->desc:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6898
    .local v4, "msgString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v7, 0x2

    if-le v0, v1, :cond_3

    .line 6899
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v7, 0x2

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 6901
    :cond_3
    new-instance v0, Lcom/hz/main/ChatMsg;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    invoke-static {v0, v5}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    goto :goto_1
.end method

.method private static final processModeChangeMessage(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2975
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 2981
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2982
    .local v1, "mode":B
    invoke-static {v0}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v2

    .line 2983
    .local v2, "model":Lcom/hz/actor/Model;
    if-nez v2, :cond_0

    .line 2996
    :goto_0
    return-void

    .line 2995
    :cond_0
    invoke-virtual {v2, v1}, Lcom/hz/actor/Model;->setMode(B)V

    goto :goto_0
.end method

.method public static final processMonsterBookDetailMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10393
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10398
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10399
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10404
    :goto_0
    return-void

    .line 10403
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processMyMercenaryCheck(Lcom/hz/net/Message;)V
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8307
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 8310
    .local v6, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 8311
    .local v1, "fightNum":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 8328
    return-void

    .line 8313
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 8315
    .local v0, "askBuy":Z
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 8316
    .local v2, "groupId":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 8318
    .local v4, "mainMerName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 8319
    invoke-virtual {v6, v2}, Lcom/hz/actor/Player;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v5

    .line 8320
    .local v5, "model":Lcom/hz/actor/Model;
    if-nez v5, :cond_2

    .line 8311
    .end local v5    # "model":Lcom/hz/actor/Model;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8323
    .restart local v5    # "model":Lcom/hz/actor/Model;
    :cond_2
    invoke-virtual {v6, v5}, Lcom/hz/actor/Player;->removeMercenary(Lcom/hz/actor/Model;)Z

    .line 8325
    const-string v7, "Th\u1eddi gian thu\u00ea dung binh <%U> \u0111\u00e3 h\u1ebft!"

    invoke-static {v7, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static processNewEscortRobList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11092
    const/16 v0, 0x38c7

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11093
    return-void
.end method

.method private static final processNoHandlerMesssgae(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v0

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 1166
    return-void
.end method

.method private static final processOtherMoveTo(Lcom/hz/net/Message;)V
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v13, 0x6

    .line 3130
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    .line 3135
    .local v10, "size":S
    sget v11, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_0

    const/4 v5, 0x1

    .line 3137
    .local v5, "isBattle":Z
    :goto_0
    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v8

    .line 3139
    .local v8, "myPlayerID":I
    const/4 v1, 0x0

    .line 3140
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v10, :cond_1

    .line 3198
    return-void

    .line 3135
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "isBattle":Z
    .end local v8    # "myPlayerID":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 3142
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "isBattle":Z
    .restart local v8    # "myPlayerID":I
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 3143
    .local v9, "playerID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 3144
    .local v2, "gx":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 3146
    .local v3, "gy":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 3148
    .local v6, "mode":B
    if-ne v9, v8, :cond_3

    .line 3140
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3160
    :cond_3
    invoke-static {v9}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v7

    .line 3161
    .local v7, "model":Lcom/hz/actor/Model;
    if-eqz v7, :cond_2

    .line 3165
    invoke-virtual {v7, v6}, Lcom/hz/actor/Model;->setMode(B)V

    .line 3168
    invoke-virtual {v7}, Lcom/hz/actor/Model;->isMember()Z

    move-result v11

    if-nez v11, :cond_2

    .line 3173
    const/4 v11, 0x5

    if-lt v1, v11, :cond_4

    .line 3174
    invoke-virtual {v7, v2, v3}, Lcom/hz/actor/Model;->setPosition(II)V

    goto :goto_2

    .line 3179
    :cond_4
    if-eqz v5, :cond_5

    .line 3181
    invoke-virtual {v7, v2, v3}, Lcom/hz/actor/Model;->setPosition(II)V

    goto :goto_2

    .line 3187
    :cond_5
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v11, v7}, Lcom/hz/actor/Model;->isSameTeam(Lcom/hz/actor/Model;Lcom/hz/actor/Model;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 3188
    invoke-virtual {v7}, Lcom/hz/actor/Model;->getGx()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v13, :cond_6

    invoke-virtual {v7}, Lcom/hz/actor/Model;->getGy()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v13, :cond_7

    .line 3189
    :cond_6
    invoke-virtual {v7, v2, v3}, Lcom/hz/actor/Model;->setPosition(II)V

    goto :goto_2

    .line 3194
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 3195
    invoke-static {v9, v2, v3}, Lcom/hz/main/Control;->createMoveTo(III)Lcom/hz/main/Control;

    move-result-object v0

    .line 3196
    .local v0, "c":Lcom/hz/main/Control;
    invoke-virtual {v7, v0}, Lcom/hz/actor/Model;->addControl(Lcom/hz/main/Control;)V

    goto :goto_2
.end method

.method public static final processPetChangeName(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10195
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10200
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10201
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10206
    :goto_0
    return-void

    .line 10205
    :cond_0
    const/16 v1, 0x3c97

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processPetChangeNotifyMsg(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7669
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 7674
    .local v2, "playerID":I
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 7675
    .local v0, "model":Lcom/hz/actor/Model;
    if-nez v0, :cond_1

    .line 7695
    :cond_0
    :goto_0
    return-void

    .line 7682
    :cond_1
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 7689
    invoke-static {p0, v0}, Lcom/hz/actor/MyPet;->fromBytesOtherPlayer(Lcom/hz/net/Message;Lcom/hz/actor/Model;)Lcom/hz/actor/Model;

    move-result-object v1

    .line 7690
    .local v1, "pet":Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    .line 7691
    invoke-virtual {v1}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    .line 7694
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hz/actor/Model;->setPet(Lcom/hz/actor/Model;)V

    goto :goto_0
.end method

.method public static final processPetInfoMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10267
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10272
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10273
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10278
    :goto_0
    return-void

    .line 10277
    :cond_0
    const/16 v1, 0x3c98

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static processPetSeeMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8085
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8090
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8091
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 8096
    :goto_0
    return-void

    .line 8095
    :cond_0
    const/16 v1, 0x3c8e

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processPhotoHandler(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10647
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10651
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 10652
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10657
    :goto_0
    return-void

    .line 10656
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processPlayerBagMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3313
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 3318
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 3319
    invoke-static {p0, v0}, Lcom/hz/main/GameWorld;->doErrorJumpShop(Lcom/hz/net/Message;I)V

    .line 3326
    :goto_0
    return-void

    .line 3324
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->reset()V

    .line 3325
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processPlayerEnchantShopEndMsg(Lcom/hz/net/Message;)V
    .locals 9
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v8, 0x0

    .line 8574
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 8579
    .local v2, "result":B
    if-gez v2, :cond_1

    .line 8580
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8626
    :cond_0
    :goto_0
    return-void

    .line 8584
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 8585
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 8590
    const/16 v5, 0xb

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 8591
    const/16 v5, 0xd

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 8593
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 8594
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->showPlayerShopRecordMsg(Lcom/hz/net/Message;)Ljava/lang/String;

    move-result-object v1

    .line 8596
    .local v1, "record":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 8598
    .local v4, "tempEnchant":I
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8599
    const-string v5, "Th\u1eddi gian b\u00e0y h\u00e0ng kh\u00f4ng b\u00e1n \u0111\u01b0\u1ee3c v\u1eadt ph\u1ea9m!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8604
    :goto_1
    if-lez v4, :cond_2

    .line 8606
    const-string v5, "Ph\u1ee5 Ma t\u1ed1n: %U"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8612
    :cond_2
    invoke-virtual {v0, v8}, Lcom/hz/actor/Player;->setShopMode(Z)V

    .line 8615
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    .line 8616
    invoke-static {v0, v8}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    .line 8619
    const/4 v5, 0x0

    sput-object v5, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    .line 8621
    const-string v5, "K\u1ebft th\u00fac b\u00e0y b\u00e1n"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8623
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 8625
    const/16 v5, 0x2d03

    invoke-static {v5, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0

    .line 8601
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static final processPlayerEnchantShopItemListMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8745
    const/16 v0, 0x2d05

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 8746
    return-void
.end method

.method public static final processPlayerEnchantShopRecordMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8647
    const/16 v0, 0x2d06

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 8648
    return-void
.end method

.method public static final processPlayerEnchantShopStartMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8541
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8546
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8547
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8552
    :goto_0
    return-void

    .line 8551
    :cond_0
    const/16 v1, 0x2d02

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processPlayerEnterMsg(Lcom/hz/net/Message;)V
    .locals 15
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v14, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2881
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    .line 2886
    .local v13, "result":B
    if-eqz v13, :cond_1

    .line 2887
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hz/main/GameCanvas;->gString:Ljava/lang/String;

    .line 2889
    const/16 v0, -0xd

    if-ne v13, v0, :cond_0

    .line 2890
    const/16 v0, 0x41

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 2892
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hz/main/GameWorld;->doImgCheckLogin([BB)V

    .line 2943
    :goto_0
    return-void

    .line 2894
    :cond_0
    const/16 v0, 0x7f

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0

    .line 2899
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    sput v0, Lcom/hz/main/GameWorld;->loginSetting:I

    .line 2906
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2907
    .local v10, "moneyType":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 2908
    .local v11, "moneyValue":I
    new-array v0, v14, [I

    aput v10, v0, v1

    aput v11, v0, v2

    sput-object v0, Lcom/hz/core/Skill;->DELETE_SKILL_MONEY:[I

    .line 2910
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2911
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 2912
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 2913
    .local v9, "moneyMax":I
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v10, v0, v1

    aput v11, v0, v2

    aput v9, v0, v14

    sput-object v0, Lcom/hz/ui/PlayerInfoUIAction;->DEL_ARRTIBUTE:[I

    .line 2915
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2916
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 2917
    new-array v0, v14, [I

    aput v10, v0, v1

    aput v11, v0, v2

    sput-object v0, Lcom/hz/core/Country;->ACTIVATE_MONEY:[I

    .line 2919
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2920
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 2921
    new-array v0, v14, [I

    aput v10, v0, v1

    aput v11, v0, v2

    sput-object v0, Lcom/hz/actor/MyPet;->PET_CHANGE_NAME_MONEY:[I

    .line 2923
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 2924
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 2925
    new-array v0, v14, [I

    aput v10, v0, v1

    aput v11, v0, v2

    sput-object v0, Lcom/hz/main/GameWorld;->PARTNER_ADD_MONEY:[I

    .line 2927
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 2930
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v2, 0x6a

    invoke-virtual {v0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 2932
    const/4 v0, -0x2

    const/16 v2, 0x66

    .line 2933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    const-string v5, "Th\u01b0\u1eddng ng\u00e0y"

    const-string v6, "Danh s\u00e1ch nhi\u1ec7m v\u1ee5"

    const-string v7, ""

    const-string v8, ""

    .line 2932
    invoke-static/range {v0 .. v8}, Lcom/hz/core/ObjectData;->fromPlayerEventBytes(IIBJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/core/ObjectData;

    move-result-object v12

    .line 2934
    .local v12, "playerEvent":Lcom/hz/core/ObjectData;
    invoke-static {v12}, Lcom/hz/main/GameWorld;->addPlayerEvent(Lcom/hz/core/ObjectData;)V

    .line 2937
    .end local v12    # "playerEvent":Lcom/hz/core/ObjectData;
    :cond_2
    invoke-static {}, Lcom/hz/core/GuideManager;->doClearGuideManager()V

    .line 2938
    invoke-static {v14, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto/16 :goto_0
.end method

.method private static final processPlayerEventMsg(Lcom/hz/net/Message;)V
    .locals 17
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2366
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 2368
    .local v0, "eventID":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 2369
    .local v2, "type":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 2371
    .local v1, "sendId":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    .line 2372
    .local v6, "info":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    .line 2373
    .local v7, "leftStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 2375
    .local v8, "rightStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    int-to-long v15, v11

    add-long v3, v9, v15

    .line 2377
    .local v3, "time":J
    const-string v5, "Ti\u00eau \u0111\u1ec1"

    .line 2380
    .local v5, "title":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v12

    .line 2381
    .local v12, "m":Lcom/hz/actor/Model;
    packed-switch v2, :pswitch_data_0

    .line 2423
    :cond_0
    :goto_0
    const/4 v9, 0x5

    if-eq v2, v9, :cond_1

    .line 2425
    invoke-static/range {v0 .. v8}, Lcom/hz/core/ObjectData;->fromPlayerEventBytes(IIBJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/core/ObjectData;

    move-result-object v13

    .line 2426
    .local v13, "playerEvent":Lcom/hz/core/ObjectData;
    invoke-static {v13}, Lcom/hz/main/GameWorld;->addPlayerEvent(Lcom/hz/core/ObjectData;)V

    .line 2431
    .end local v13    # "playerEvent":Lcom/hz/core/ObjectData;
    :cond_1
    const/4 v9, 0x7

    if-eq v2, v9, :cond_2

    .line 2432
    const/4 v14, 0x0

    .line 2442
    .local v14, "uiHandler":Lcom/hz/ui/UIHandler;
    const/16 v9, 0xe

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/hz/ui/UIHandler;->closeUIByType(II)V

    .line 2443
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v0}, Ljava/lang/Integer;-><init>(I)V

    move-wide v9, v3

    invoke-static/range {v5 .. v11}, Lcom/hz/ui/UIHandler;->createTwiceSureUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Lcom/hz/ui/UIHandler;

    move-result-object v14

    .line 2445
    if-nez v14, :cond_3

    .line 2469
    .end local v14    # "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_2
    :goto_1
    return-void

    .line 2383
    :pswitch_0
    const/16 v9, 0x12

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 2384
    if-nez v12, :cond_0

    goto :goto_1

    .line 2389
    :pswitch_1
    const/16 v9, 0x10

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 2390
    if-nez v12, :cond_0

    goto :goto_1

    .line 2395
    :pswitch_2
    const/16 v9, 0x16

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 2396
    if-nez v12, :cond_0

    goto :goto_1

    .line 2401
    :pswitch_3
    const/16 v9, 0x86

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 2402
    goto :goto_0

    .line 2404
    :pswitch_4
    const-string v5, "Nhi\u1ec7m v\u1ee5 \u00e1p ti\u00eau"

    .line 2405
    goto :goto_0

    .line 2407
    :pswitch_5
    const/16 v9, 0xcf

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 2408
    goto :goto_0

    .line 2410
    :pswitch_6
    const-string v5, "Y\u00eau c\u1ea7u v\u00e0o n\u01b0\u1edbc"

    .line 2411
    goto :goto_0

    .line 2413
    :pswitch_7
    const-string v5, "K\u1ebft h\u00f4n"

    goto :goto_0

    .line 2449
    .restart local v14    # "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_3
    const/4 v9, 0x5

    if-ne v2, v9, :cond_4

    .line 2450
    const/4 v9, 0x3

    invoke-virtual {v14, v9}, Lcom/hz/ui/UIHandler;->setSubType(S)V

    .line 2453
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v14, v9, v10}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 2465
    :goto_2
    invoke-static {v2}, Lcom/hz/core/Define;->isNeedLockVerify(B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2466
    const/4 v9, 0x1

    const/16 v10, 0x200

    invoke-virtual {v14, v9, v10}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_1

    .line 2455
    :cond_4
    const/16 v9, 0x8

    if-ne v2, v9, :cond_5

    .line 2456
    const/4 v9, 0x4

    invoke-virtual {v14, v9}, Lcom/hz/ui/UIHandler;->setSubType(S)V

    goto :goto_2

    .line 2458
    :cond_5
    const/4 v9, 0x6

    if-ne v2, v9, :cond_6

    .line 2459
    const/4 v9, 0x5

    invoke-virtual {v14, v9}, Lcom/hz/ui/UIHandler;->setSubType(S)V

    goto :goto_2

    .line 2462
    :cond_6
    const/4 v9, 0x2

    invoke-virtual {v14, v9}, Lcom/hz/ui/UIHandler;->setSubType(S)V

    goto :goto_2

    .line 2381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static final processPlayerLogoutMsg(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2951
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 2953
    .local v0, "logoutType":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 2958
    .local v1, "result":B
    if-eqz v1, :cond_0

    .line 2959
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;BZ)Lcom/hz/ui/UIHandler;

    .line 2967
    :goto_0
    return-void

    .line 2963
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 2966
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/hz/main/GameWorld;->doLogOutMsg(BZ)V

    goto :goto_0
.end method

.method public static final processPlayerSee(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9732
    const/16 v0, 0x34dc

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 9733
    return-void
.end method

.method public static final processPlayerShopBuyMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8823
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 8828
    .local v1, "result":B
    if-gez v1, :cond_1

    .line 8829
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8843
    :cond_0
    :goto_0
    return-void

    .line 8833
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 8834
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 8839
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 8840
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 8842
    const/16 v2, 0x2eeb

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processPlayerShopEndMsg(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v6, 0x0

    .line 8689
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 8694
    .local v2, "result":B
    if-gez v2, :cond_1

    .line 8695
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8732
    :cond_0
    :goto_0
    return-void

    .line 8699
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 8700
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 8705
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 8706
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/hz/actor/Player;->setMoneyByType(II)V

    .line 8708
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 8709
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->showPlayerShopRecordMsg(Lcom/hz/net/Message;)Ljava/lang/String;

    move-result-object v1

    .line 8711
    .local v1, "record":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8712
    const-string v4, "Th\u1eddi gian b\u00e0y h\u00e0ng kh\u00f4ng b\u00e1n \u0111\u01b0\u1ee3c v\u1eadt ph\u1ea9m!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8718
    :goto_1
    invoke-virtual {v0, v6}, Lcom/hz/actor/Player;->setShopMode(Z)V

    .line 8721
    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    .line 8722
    invoke-static {v0, v6}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    .line 8725
    const/4 v4, 0x0

    sput-object v4, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    .line 8727
    const-string v4, "K\u1ebft th\u00fac b\u00e0y b\u00e1n"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8729
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 8731
    const/16 v4, 0x2ee8

    invoke-static {v4, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0

    .line 8714
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static final processPlayerShopHasNotifyMsg(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8977
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 8978
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 8979
    .local v2, "shopName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 8984
    .local v3, "shoptype":B
    invoke-static {v0}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 8985
    .local v1, "model":Lcom/hz/actor/Model;
    if-nez v1, :cond_0

    .line 8996
    :goto_0
    return-void

    .line 8992
    :cond_0
    iput-object v2, v1, Lcom/hz/actor/Model;->shopName:Ljava/lang/String;

    .line 8993
    invoke-virtual {v1, v3}, Lcom/hz/actor/Model;->setShoptype(B)V

    .line 8995
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/hz/actor/Model;->setShopMode(Z)V

    goto :goto_0
.end method

.method public static final processPlayerShopItemListMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8790
    const/16 v0, 0x2eea

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 8791
    return-void
.end method

.method public static final processPlayerShopNotifyMsg(Lcom/hz/net/Message;)V
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8855
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 8856
    .local v9, "slotPos":S
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 8857
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 8858
    .local v6, "num":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 8859
    .local v4, "money1":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 8861
    .local v5, "money3":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 8862
    .local v2, "isEnchantShop":Z
    const/4 v10, 0x0

    .line 8863
    .local v10, "tempEnchant":I
    if-eqz v2, :cond_0

    .line 8865
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 8868
    :cond_0
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 8869
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_2

    .line 8909
    :cond_1
    :goto_0
    return-void

    .line 8873
    :cond_2
    iget-object v0, v7, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 8874
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_1

    .line 8886
    invoke-virtual {v0, v9, v6}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    move-result v8

    .line 8893
    .local v8, "result":I
    sget-object v11, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-static {v11, v9, v6}, Lcom/hz/main/GameWorld;->removeShopListItem(Ljava/util/Vector;II)Z

    move-result v3

    .line 8900
    .local v3, "isSuccess":Z
    const/16 v11, 0xb

    invoke-virtual {v7, v11, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 8901
    const/16 v11, 0xd

    invoke-virtual {v7, v11, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 8903
    if-eqz v2, :cond_3

    .line 8905
    invoke-virtual {v7}, Lcom/hz/actor/Player;->getEnchantValue()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-virtual {v7, v11}, Lcom/hz/actor/Player;->setEnchantValue(I)V

    .line 8908
    :cond_3
    const-string v11, "V\u1eadt ph\u1ea9m ti\u1ec7m \u0111\u01b0\u1ee3c mua!"

    invoke-static {v11}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final processPlayerShopRecordMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8930
    const/16 v0, 0x2eec

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 8931
    return-void
.end method

.method public static final processPlayerShopStartMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8656
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 8661
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 8662
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 8667
    :goto_0
    return-void

    .line 8666
    :cond_0
    const/16 v1, 0x2ee7

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processPlayerTrunMonsterNotifyMsg(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8410
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 8411
    .local v2, "tempid":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 8416
    .local v1, "tempicon":S
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 8417
    .local v0, "model":Lcom/hz/actor/Model;
    if-nez v0, :cond_0

    .line 8426
    :goto_0
    return-void

    .line 8424
    :cond_0
    invoke-virtual {v0, v1}, Lcom/hz/actor/Model;->setIconpet1(I)V

    .line 8425
    invoke-virtual {v0}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    goto :goto_0
.end method

.method private static processRedPacket(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11074
    const/16 v0, 0x34f6

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11075
    return-void
.end method

.method public static final processRelationAdd(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9656
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9661
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9662
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9667
    :goto_0
    return-void

    .line 9666
    :cond_0
    const/16 v1, 0x34da

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processRelationDel(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9693
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 9698
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 9699
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 9704
    :goto_0
    return-void

    .line 9703
    :cond_0
    const/16 v1, 0x34db

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static final processRelationList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9599
    const/16 v0, 0x34d9

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 9600
    return-void
.end method

.method public static final processRelationTutorList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 9608
    const/16 v0, 0x2b9b

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 9609
    return-void
.end method

.method public static final processRemoteBattleNotify(Lcom/hz/net/Message;)V
    .locals 16
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4085
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 4086
    .local v1, "battleSeq":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 4087
    .local v10, "type":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 4088
    .local v8, "result":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 4089
    .local v9, "round":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 4090
    .local v6, "planTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 4092
    .local v11, "waitStatus":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 4100
    .local v3, "nextBattleGroupID":I
    const/16 v12, 0x22

    new-array v7, v12, [Lcom/hz/actor/Player;

    .line 4102
    .local v7, "playerList":[Lcom/hz/actor/Player;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 4106
    .local v4, "num":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 4115
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v7, v14}, Lcom/hz/battle/Battle;->createRemoteBattle(J[Lcom/hz/actor/Player;Lcom/hz/core/MonsterGroup;)Lcom/hz/battle/Battle;

    move-result-object v0

    .line 4116
    .local v0, "battle":Lcom/hz/battle/Battle;
    invoke-virtual {v0, v10}, Lcom/hz/battle/Battle;->setType(I)V

    .line 4117
    invoke-virtual {v0, v8}, Lcom/hz/battle/Battle;->setBattleResult(B)V

    .line 4118
    iput-byte v9, v0, Lcom/hz/battle/Battle;->round:B

    .line 4119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    int-to-long v14, v6

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 4120
    iput v11, v0, Lcom/hz/battle/Battle;->waitStatus:I

    .line 4121
    iput v3, v0, Lcom/hz/battle/Battle;->nextBattleGroupID:I

    .line 4125
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    .line 4127
    sput-object v0, Lcom/hz/main/GameCanvas;->battle:Lcom/hz/battle/Battle;

    .line 4128
    const/16 v12, 0x1e

    invoke-static {v12}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 4129
    return-void

    .line 4107
    .end local v0    # "battle":Lcom/hz/battle/Battle;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/hz/main/MsgHandler;->parseBattleModel(Lcom/hz/net/Message;)Lcom/hz/actor/Player;

    move-result-object v5

    .line 4109
    .local v5, "p":Lcom/hz/actor/Player;
    if-nez v5, :cond_1

    .line 4106
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4112
    :cond_1
    iget-byte v12, v5, Lcom/hz/actor/Player;->position:B

    aput-object v5, v7, v12

    goto :goto_1
.end method

.method private static final processReqAskMsg(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 4298
    .local v1, "result":B
    if-eqz v1, :cond_0

    .line 4299
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 4300
    .local v0, "msgString":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;Z)V

    .line 4303
    .end local v0    # "msgString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final processSelfLeaveTeamMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4401
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 4406
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 4407
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 4412
    :goto_0
    return-void

    .line 4411
    :cond_0
    const/16 v1, 0x34c3

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processSendEnterMap(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3073
    new-instance v1, Lcom/hz/actor/Model;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/hz/actor/Model;-><init>(B)V

    invoke-static {p0, v1}, Lcom/hz/main/MsgHandler;->processDataPlayerListBase(Lcom/hz/net/Message;Lcom/hz/actor/Model;)Lcom/hz/actor/Model;

    move-result-object v0

    .line 3083
    .local v0, "model":Lcom/hz/actor/Model;
    invoke-static {v0}, Lcom/hz/main/GameWorld;->addModel(Lcom/hz/actor/Model;)V

    .line 3086
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3087
    const/16 v1, 0x40

    invoke-static {v1, v0}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 3091
    :cond_0
    const/16 v1, 0x20

    invoke-static {v1, v0}, Lcom/hz/main/Worker;->addWork(ILjava/lang/Object;)V

    .line 3092
    return-void
.end method

.method private static final processSendLeaveMap(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3100
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 3106
    .local v1, "playerID":I
    invoke-static {v1}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 3107
    .local v0, "model":Lcom/hz/actor/Model;
    if-nez v0, :cond_0

    .line 3121
    :goto_0
    return-void

    .line 3120
    :cond_0
    invoke-static {v1}, Lcom/hz/main/GameWorld;->removeModel(I)V

    goto :goto_0
.end method

.method private static final processServerChatMessageReceive(Lcom/hz/net/Message;)V
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7625
    const-string v1, "\u63a5\u6536\u8de8\u670d\u804a\u5929\u4fe1\u606f"

    invoke-static {v1}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 7626
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    and-int/lit16 v10, v1, 0xff

    .line 7631
    .local v10, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v10, :cond_0

    .line 7661
    return-void

    .line 7632
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 7634
    .local v9, "serverName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 7637
    .local v2, "playerID":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 7639
    .local v3, "playerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 7641
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 7643
    .local v11, "viplevel2":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 7645
    .local v8, "remark":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    .line 7647
    .local v6, "flag":S
    const/4 v5, 0x0

    .line 7648
    .local v5, "vipLevel":B
    const/16 v1, 0x100

    invoke-static {v1, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x1000

    invoke-static {v1, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7649
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 7653
    :cond_2
    new-instance v0, Lcom/hz/main/ChatMsg;

    const/16 v1, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    .line 7654
    .local v0, "chatMsg":Lcom/hz/main/ChatMsg;
    iput-short v6, v0, Lcom/hz/main/ChatMsg;->flag:S

    .line 7655
    invoke-virtual {v0, v8}, Lcom/hz/main/ChatMsg;->setRemark(Ljava/lang/String;)V

    .line 7656
    iput-object v9, v0, Lcom/hz/main/ChatMsg;->serverName:Ljava/lang/String;

    .line 7657
    iput-byte v11, v0, Lcom/hz/main/ChatMsg;->VIPLevel2:B

    .line 7659
    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;)V

    .line 7631
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private static final processSetRebornMapMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6054
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6055
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 6056
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 6059
    :cond_0
    return-void
.end method

.method private static final processSettingChangeMessage(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3001
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 3007
    .local v0, "result":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 3008
    return-void
.end method

.method private static final processShowTextMsg(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2477
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 2478
    .local v0, "result":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 2485
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2486
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 2500
    :goto_0
    return-void

    .line 2489
    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 2490
    invoke-static {v1}, Lcom/hz/main/WorldMessage;->addNoticeMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 2493
    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 2494
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2498
    :cond_2
    invoke-static {v1}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final processTaskAbandonMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 7252
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 7257
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 7258
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 7265
    :goto_0
    return-void

    .line 7262
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    .line 7264
    const/16 v1, 0x38a8

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processTaskDeliverMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6809
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6814
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 6815
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 6824
    :goto_0
    return-void

    .line 6819
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    .line 6821
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    sget v2, Lcom/hz/core/Mission;->doingMissionID:I

    invoke-static {v1, v2, p0}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;

    .line 6823
    const/16 v1, 0x38a7

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processTaskGetPetMessage(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 3064
    .local v0, "slotPos":S
    invoke-static {v0}, Lcom/hz/main/GameWorld;->doTaskGetPet(S)V

    .line 3065
    return-void
.end method

.method public static final processTaskOffLineActivateMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10776
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 10781
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 10782
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 10785
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 10786
    return-void
.end method

.method public static final processTaskOffLineListMsg(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 10757
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v0

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 10758
    return-void
.end method

.method private static final processTastAcceptMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 6769
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 6774
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 6775
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 6783
    :goto_0
    return-void

    .line 6779
    :cond_0
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processMissionNPCStatus(Lcom/hz/net/Message;)V

    .line 6782
    const/16 v1, 0x38a6

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processTeamSetMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4453
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 4458
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 4459
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 4464
    :goto_0
    return-void

    .line 4463
    :cond_0
    const/16 v1, 0x34c2

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static processUpLevelMsg(Lcom/hz/net/Message;Lcom/hz/actor/Player;Ljava/lang/StringBuffer;)V
    .locals 13
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 6937
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7056
    :cond_0
    :goto_0
    return-void

    .line 6942
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 6943
    .local v3, "exp":I
    if-lez v3, :cond_2

    .line 6944
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 6945
    const-string v10, "/cFFFF00Exp %U/p\n"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6948
    :cond_2
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 6950
    .local v7, "gainLevel":I
    if-lez v7, :cond_5

    .line 6952
    const-string v10, "/c00FF00Ch\u00fac m\u1eebng b\u1ea1n th\u0103ng l\u00ean c\u1ea5p %U/p"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6957
    const/16 v10, 0x6a

    invoke-virtual {p1, v10, v7}, Lcom/hz/actor/Player;->addValue(II)V

    .line 6959
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 6960
    .local v1, "curExp":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 6961
    .local v4, "expMax":I
    const/16 v10, 0x1389

    invoke-virtual {p1, v10, v1}, Lcom/hz/actor/Player;->addValue(II)V

    .line 6962
    const/16 v10, 0x138a

    invoke-virtual {p1, v10, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 6964
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 6965
    .local v8, "gainSP":S
    if-lez v8, :cond_3

    .line 6966
    const/4 v10, 0x5

    invoke-virtual {p1, v10, v8}, Lcom/hz/actor/Player;->addValue(II)V

    .line 6967
    if-eqz p2, :cond_3

    .line 6968
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u0110i\u1ec3m k\u0129 n\u0103ng"

    const v12, 0xffff00

    invoke-static {v11, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6972
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 6973
    .local v6, "gainCP":B
    if-lez v6, :cond_5

    .line 6974
    const/4 v10, 0x4

    invoke-virtual {p1, v10, v6}, Lcom/hz/actor/Player;->addValue(II)V

    .line 6975
    if-eqz p2, :cond_4

    .line 6976
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u0110i\u1ec3m thu\u1ed9c t\u00ednh"

    const v12, 0xffff00

    invoke-static {v11, v12}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6979
    :cond_4
    const/4 v10, 0x1

    const/16 v11, 0x4000

    invoke-virtual {p1, v10, v11}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 7009
    .end local v1    # "curExp":I
    .end local v4    # "expMax":I
    .end local v6    # "gainCP":B
    .end local v8    # "gainSP":S
    :cond_5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 7010
    .local v0, "allExp2":I
    if-lez v0, :cond_6

    .line 7011
    const/16 v10, 0x77

    invoke-virtual {p1, v10, v0}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7012
    const-string v10, "/cFFFF00EXP Th\u1ea7n K\u00ec%U/p\n"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7014
    :cond_6
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 7017
    .local v9, "gainlevel2":B
    if-lez v9, :cond_7

    .line 7018
    const-string v10, "/c00FF00Ch\u00fac m\u1eebng b\u1ea1n th\u0103ng C\u1ea5p Th\u1ea7n K\u00ec c\u1ea5p %U/p"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7019
    const/16 v10, 0x76

    invoke-virtual {p1, v10, v9}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7021
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 7022
    .local v2, "curExp2":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 7023
    .local v5, "expMax2":I
    const/16 v10, 0x138b

    invoke-virtual {p1, v10, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7024
    const/16 v10, 0x138c

    invoke-virtual {p1, v10, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 7027
    .end local v2    # "curExp2":I
    .end local v5    # "expMax2":I
    :cond_7
    if-gtz v7, :cond_8

    if-lez v9, :cond_0

    .line 7029
    :cond_8
    invoke-static {}, Lcom/hz/main/GameView;->setLevelUPEffect()V

    .line 7033
    invoke-virtual {p1}, Lcom/hz/actor/Player;->resumeHPMP()V

    .line 7035
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 7036
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    .line 7040
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getType()B

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    const/16 v10, 0x6a

    invoke-virtual {p1, v10}, Lcom/hz/actor/Player;->get(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 7041
    const/high16 v10, 0x10000

    invoke-static {v10}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7042
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/hz/main/GameWorld;->isLoginSetting(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 7043
    const/16 v10, 0x14

    invoke-static {v10}, Lcom/hz/main/GameWorld;->setGuide(I)V

    goto/16 :goto_0

    .line 7049
    :cond_9
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/hz/main/GameCanvas;->setWorldEventFlag(IZ)V

    .line 7051
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_a

    .line 7052
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 7053
    :cond_a
    sget-object v10, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_0
.end method

.method private static final processUserLoginMsg(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2623
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 2628
    .local v0, "result":B
    if-eqz v0, :cond_0

    .line 2630
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    .line 2669
    :goto_0
    return-void

    .line 2635
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v1

    sput-wide v1, Lcom/hz/main/GameWorld;->ukey:J

    .line 2636
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    sput v1, Lcom/hz/main/GameWorld;->sessionID:I

    .line 2646
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hz/main/MsgHandler;->PHOTO_IP:Ljava/lang/String;

    .line 2650
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    sput v1, Lcom/hz/main/GameWorld;->loginSetting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2668
    :goto_1
    const/16 v1, 0x138a

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0

    .line 2657
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static final processUserRegisterMsg(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 2696
    .local v2, "result":B
    if-eqz v2, :cond_3

    .line 2697
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 2700
    .local v0, "alertUI":Lcom/hz/ui/UIHandler;
    const/16 v3, -0xd

    if-ne v2, v3, :cond_1

    .line 2701
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/hz/main/GameWorld;->doImgCheckLogin([BB)V

    .line 2722
    .end local v0    # "alertUI":Lcom/hz/ui/UIHandler;
    :cond_0
    :goto_0
    return-void

    .line 2705
    .restart local v0    # "alertUI":Lcom/hz/ui/UIHandler;
    :cond_1
    const/16 v3, -0x10

    if-ne v2, v3, :cond_2

    .line 2707
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/hz/main/GameWorld;->tempRegisterInfo:Ljava/lang/String;

    .line 2713
    :cond_2
    if-eqz v0, :cond_0

    .line 2714
    const/16 v3, 0xd5

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 2715
    .local v1, "parentUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 2721
    .end local v0    # "alertUI":Lcom/hz/ui/UIHandler;
    .end local v1    # "parentUI":Lcom/hz/ui/UIHandler;
    :cond_3
    const/16 v3, 0x1389

    invoke-static {v3, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method private static final processVipChangeMessage(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 3013
    .local v0, "id":I
    invoke-static {v0}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 3014
    .local v1, "model":Lcom/hz/actor/Model;
    if-nez v1, :cond_0

    .line 3023
    :goto_0
    return-void

    .line 3020
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 3021
    .local v2, "vipLevel":B
    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setVipLevel(B)V

    .line 3022
    invoke-virtual {v1}, Lcom/hz/actor/Model;->refreshWorldSprite()V

    goto :goto_0
.end method

.method private static processWishList(Lcom/hz/net/Message;)V
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 11083
    const/16 v0, 0x34f4

    invoke-static {v0, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    .line 11084
    return-void
.end method

.method private static final processWorldDataMsg(Lcom/hz/net/Message;)V
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 4477
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 4478
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;)V

    .line 4489
    :goto_0
    return-void

    .line 4484
    :cond_0
    if-nez v0, :cond_1

    .line 4485
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->processDataBlockFlagMsg(Lcom/hz/net/Message;)V

    .line 4488
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v1

    invoke-static {v1, p0}, Lcom/hz/main/MsgHandler;->setMsgTag(ILcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v1, 0x0

    .line 826
    invoke-static {}, Lcom/hz/main/MsgHandler;->cleanMsgTag()V

    .line 829
    sget-object v2, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v2, :cond_2

    .line 831
    if-nez p0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-object v1

    .line 835
    :cond_1
    sget-object v2, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    invoke-virtual {v2, p0}, Lcom/hz/net/SocketServer;->sendMessage(Lcom/hz/net/Message;)Z

    move-result v0

    .line 836
    .local v0, "isSend":Z
    if-nez v0, :cond_0

    .line 837
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->toNetWorkError(I)V

    goto :goto_0

    .line 842
    .end local v0    # "isSend":Z
    :cond_2
    sget-object v2, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v2, :cond_0

    .line 844
    sget-object v2, Lcom/hz/main/MsgHandler;->HTTP_SERVER:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/hz/main/MsgHandler;->getHttpSendURL(Ljava/lang/String;Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    move-result-object v1

    .line 854
    .local v1, "request":Lcom/hz/net/HttpRequest;
    sget-object v2, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v2, v1}, Lcom/hz/net/HttpConnector;->doSend(Lcom/hz/net/HttpRequest;)V

    goto :goto_0
.end method

.method public static setHttpUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 487
    sput-object p0, Lcom/hz/main/MsgHandler;->HTTP_SERVER:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public static setMsgTag(ILcom/hz/net/Message;)V
    .locals 0
    .param p0, "type"    # I
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 277
    sput p0, Lcom/hz/main/MsgHandler;->sendMsgType:I

    .line 278
    sput-object p1, Lcom/hz/main/MsgHandler;->receiveMsg:Lcom/hz/net/Message;

    .line 279
    return-void
.end method

.method public static showPlayerShopRecordMsg(Lcom/hz/net/Message;)Ljava/lang/String;
    .locals 18
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 8935
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 8940
    .local v11, "size":S
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 8942
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 8943
    .local v1, "count1":I
    const/4 v2, 0x0

    .line 8944
    .local v2, "count3":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v11, :cond_2

    .line 8962
    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    .line 8963
    :cond_0
    const-string v13, "T\u1ed5ng: %U"

    .line 8964
    new-instance v14, Ljava/lang/StringBuilder;

    if-lez v1, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "KNB"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const v16, 0xffff00

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8965
    if-lez v2, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "B\u1ea1c"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const v16, 0xc45712

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 8964
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 8963
    invoke-static {v13, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8968
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 8945
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 8946
    .local v5, "itemname":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 8947
    .local v10, "sellnum":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 8948
    .local v6, "money1":I
    add-int/2addr v1, v6

    .line 8949
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 8950
    .local v7, "money3":I
    add-int/2addr v2, v7

    .line 8951
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 8952
    .local v3, "date":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 8953
    .local v8, "playername":Ljava/lang/String;
    const-string v13, "[%U] %U t\u1ed5ng c\u1ed9ng chi %U mua %U\n c\u1ee7a mi"

    const/4 v12, 0x4

    new-array v14, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v12, 0x1

    aput-object v8, v14, v12

    const/4 v15, 0x2

    .line 8954
    new-instance v16, Ljava/lang/StringBuilder;

    if-lez v6, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v17, "KNB"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v17, 0xffff00

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8955
    if-lez v7, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v17, "B\u1ea1c"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v17, 0xc45712

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 8954
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v15

    const/4 v12, 0x3

    .line 8955
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v12

    .line 8953
    invoke-static {v13, v14}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8944
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 8954
    :cond_3
    const-string v12, ""

    goto :goto_3

    .line 8955
    :cond_4
    const-string v12, ""

    goto :goto_4

    .line 8964
    .end local v3    # "date":Ljava/lang/String;
    .end local v5    # "itemname":Ljava/lang/String;
    .end local v6    # "money1":I
    .end local v7    # "money3":I
    .end local v8    # "playername":Ljava/lang/String;
    .end local v10    # "sellnum":B
    :cond_5
    const-string v12, ""

    goto/16 :goto_1

    .line 8965
    :cond_6
    const-string v12, ""

    goto/16 :goto_2
.end method

.method public static synOtherMoveTo()V
    .locals 2

    .prologue
    .line 468
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->createOtherMoveMessage()Lcom/hz/net/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->addSyncMessage(Lcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static syncMoveTo()V
    .locals 5

    .prologue
    .line 427
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 428
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    sget v3, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_0

    .line 438
    invoke-virtual {v2}, Lcom/hz/actor/Player;->isMember()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getGx()I

    move-result v3

    int-to-byte v0, v3

    .line 443
    .local v0, "gx":B
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getGy()I

    move-result v3

    int-to-byte v1, v3

    .line 446
    .local v1, "gy":B
    sget-byte v3, Lcom/hz/main/MsgHandler;->lastMoveTOGx:B

    if-ne v0, v3, :cond_2

    sget-byte v3, Lcom/hz/main/MsgHandler;->lastMoveTOGy:B

    if-eq v1, v3, :cond_0

    .line 455
    :cond_2
    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->createMoveMessage(BB)Lcom/hz/net/Message;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->addSyncMessage(Lcom/hz/net/Message;)V

    .line 458
    sput-byte v0, Lcom/hz/main/MsgHandler;->lastMoveTOGx:B

    .line 459
    sput-byte v1, Lcom/hz/main/MsgHandler;->lastMoveTOGy:B

    goto :goto_0
.end method

.method public static waitForRequest(Lcom/hz/net/Message;)Z
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/16 v0, 0x5a

    .line 929
    invoke-static {p0, v0, v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    move-result v0

    return v0
.end method

.method public static waitForRequest(Lcom/hz/net/Message;II)Z
    .locals 13
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "socketTimeOut"    # I
    .param p2, "httpTimeOut"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 943
    if-nez p0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return v7

    .line 947
    :cond_1
    sput-boolean v8, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    .line 949
    sget-wide v9, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    mul-int/lit16 v11, p1, 0x3e8

    int-to-long v11, v11

    add-long v5, v9, v11

    .line 950
    .local v5, "socketEndTime":J
    sget-wide v9, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    mul-int/lit16 v11, p2, 0x3e8

    int-to-long v11, v11

    add-long v1, v9, v11

    .line 954
    .local v1, "httpEndTime":J
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    move-result-object v4

    .line 956
    .local v4, "request":Lcom/hz/net/HttpRequest;
    sget-object v3, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 957
    .local v3, "oldText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 958
    .local v0, "count":I
    sget-byte v9, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    sput-byte v9, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    .line 965
    :goto_1
    sget-object v9, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v9, :cond_8

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_3

    .line 968
    sget-byte v9, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    sput-byte v9, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    .line 969
    const-string v9, "K\u1ebft n\u1ed1i qu\u00e1 l\u00e2u %U"

    new-instance v10, Ljava/lang/StringBuilder;

    sget-byte v11, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 1043
    :cond_2
    :goto_2
    sput-boolean v7, Lcom/hz/main/MsgHandler;->isRequestWaiting:Z

    .line 1044
    const-string v9, "H\u00e3y \u0111\u1ee3i..."

    sput-object v9, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 1047
    invoke-static {}, Lcom/hz/main/MsgHandler;->handleMessages()V

    .line 1050
    invoke-static {}, Lcom/hz/main/MsgHandler;->checkNetWaitTimeOut()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1054
    invoke-static {}, Lcom/hz/main/MsgHandler;->getSendMsgType()I

    move-result v9

    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v10

    if-ne v9, v10, :cond_0

    move v7, v8

    .line 1057
    goto :goto_0

    .line 973
    :cond_3
    sget-object v9, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v9}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v9

    if-nez v9, :cond_4

    .line 974
    sput-byte v7, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    goto :goto_2

    .line 978
    :cond_4
    sget-object v9, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v9, v4}, Lcom/hz/net/HttpConnector;->isInResult(Lcom/hz/net/HttpRequest;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 979
    sput-byte v7, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    goto :goto_2

    .line 984
    :cond_5
    sget-byte v9, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    sget-byte v10, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    if-eq v9, v10, :cond_6

    .line 985
    const/4 v0, 0x5

    .line 986
    const-string v9, "Nh\u1eadn d\u1eef li\u1ec7u"

    sput-object v9, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 987
    sget-byte v9, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    sput-byte v9, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    .line 1038
    :goto_3
    sget-object v9, Lcom/hz/main/GameCanvas;->instance:Lcom/hz/main/GameCanvas;

    invoke-virtual {v9}, Lcom/hz/main/GameCanvas;->doRepaint()V

    .line 1040
    const-wide/16 v9, 0x32

    invoke-static {v9, v10}, Lcom/hz/common/Tool;->sleep(J)V

    goto :goto_1

    .line 991
    :cond_6
    if-lez v0, :cond_7

    .line 992
    add-int/lit8 v0, v0, -0x1

    .line 993
    goto :goto_3

    .line 995
    :cond_7
    sput-object v3, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    goto :goto_3

    .line 1002
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-ltz v9, :cond_9

    .line 1003
    sget-byte v9, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    sput-byte v9, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    .line 1004
    const-string v9, "K\u1ebft n\u1ed1i qu\u00e1 l\u00e2u %U"

    new-instance v10, Ljava/lang/StringBuilder;

    sget-byte v11, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    goto :goto_2

    .line 1008
    :cond_9
    sget-object v9, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    if-eqz v9, :cond_2

    .line 1012
    sget-object v9, Lcom/hz/main/MsgHandler;->socketConn:Lcom/hz/net/SocketServer;

    invoke-virtual {v9}, Lcom/hz/net/SocketServer;->isNetOk()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1016
    invoke-virtual {p0}, Lcom/hz/net/Message;->getType()S

    move-result v9

    invoke-static {v9, v8}, Lcom/hz/main/MsgHandler;->isMessageInResult(SZ)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1017
    sput-byte v7, Lcom/hz/main/MsgHandler;->waitTimeOutCount:B

    goto/16 :goto_2

    .line 1022
    :cond_a
    sget-byte v9, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    sget-byte v10, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    if-eq v9, v10, :cond_b

    .line 1023
    const/4 v0, 0x5

    .line 1024
    const-string v9, "Nh\u1eadn d\u1eef li\u1ec7u"

    sput-object v9, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    .line 1025
    sget-byte v9, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_NONE:B

    sput-byte v9, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    .line 1026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/hz/main/MsgHandler;->waitingStartTime:J

    goto :goto_3

    .line 1029
    :cond_b
    if-lez v0, :cond_c

    .line 1030
    add-int/lit8 v0, v0, -0x1

    .line 1031
    goto :goto_3

    .line 1033
    :cond_c
    sput-object v3, Lcom/hz/main/MsgHandler;->loadingText:Ljava/lang/String;

    goto :goto_3
.end method
