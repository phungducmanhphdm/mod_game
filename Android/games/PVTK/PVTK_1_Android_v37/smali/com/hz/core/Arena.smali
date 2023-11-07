.class public Lcom/hz/core/Arena;
.super Ljava/lang/Object;
.source "Arena.java"


# static fields
.field public static final ARENA_TYPE_SINGLE:B = 0x1t

.field public static final ARENA_TYPE_TEAM:B = 0x2t

.field public static final STAGE_BATTLE_FAIL:B = 0x1t

.field public static final STAGE_BATTLE_VIEW_EXIT:B = 0x2t

.field public static final STAGE_BATTLE_WIN:B = 0x4t

.field public static STATUS_ALL:B = 0x0t

.field public static STATUS_EXIT:B = 0x0t

.field public static STATUS_NONE:B = 0x0t

.field public static STATUS_OB:B = 0x0t

.field public static STATUS_PK:B = 0x0t

.field private static final SYSN_TIME:I = 0x1388

.field private static final SYSN_UPDATE_TIME:I = 0x493e0


# instance fields
.field public arenaUI:Lcom/hz/ui/UIHandler;

.field battleStatusCount:I

.field public drawXY:[[I

.field private endTime:J

.field private fightCount:B

.field public info:Ljava/lang/String;

.field isfirstLogin:Z

.field private nextSysnTime:J

.field private nextupdateListTime:J

.field public numSet:Lcom/hz/image/ImageSet;

.field playerList:Ljava/util/Vector;

.field private scoreSum:S

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, -0x1

    sput-byte v0, Lcom/hz/core/Arena;->STATUS_ALL:B

    .line 98
    const/4 v0, 0x0

    sput-byte v0, Lcom/hz/core/Arena;->STATUS_NONE:B

    .line 99
    const/4 v0, 0x1

    sput-byte v0, Lcom/hz/core/Arena;->STATUS_PK:B

    .line 100
    const/4 v0, 0x2

    sput-byte v0, Lcom/hz/core/Arena;->STATUS_OB:B

    .line 101
    const/4 v0, 0x3

    sput-byte v0, Lcom/hz/core/Arena;->STATUS_EXIT:B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    .line 40
    iput-boolean v2, p0, Lcom/hz/core/Arena;->isfirstLogin:Z

    .line 53
    iput-object v3, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    .line 55
    iput-object v3, p0, Lcom/hz/core/Arena;->numSet:Lcom/hz/image/ImageSet;

    .line 85
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/Arena;->drawXY:[[I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/Arena;->info:Ljava/lang/String;

    .line 367
    iput v2, p0, Lcom/hz/core/Arena;->battleStatusCount:I

    .line 36
    return-void
.end method

.method public static clearArena(Z)V
    .locals 2
    .param p0, "isCheckBattle"    # Z

    .prologue
    .line 657
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    .line 665
    if-eqz p0, :cond_0

    .line 666
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 667
    const-string v0, "Thi \u0111\u1ea5u \u0111\u00e3 k\u1ebft th\u00fac!"

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method public static doArenaEntryRequest(B)Z
    .locals 4
    .param p0, "type"    # B

    .prologue
    const/4 v2, 0x0

    .line 208
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x38c8

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 210
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 216
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 220
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 230
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 231
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {v0}, Lcom/hz/core/Arena;->doArenaRefurbish(Lcom/hz/net/Message;)V

    .line 235
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doArenaExit()V
    .locals 7

    .prologue
    .line 627
    const-string v4, "R\u1eddi tr\u01b0\u1eddng \u0111\u1ea5u "

    const-string v5, "Mi \u0111\u1ed3ng \u00fd r\u1eddi \u0111\u1ea5u tr\u01b0\u1eddng kh\u00f4ng?"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 628
    .local v0, "askResult":I
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createArenaExit()Lcom/hz/net/Message;

    move-result-object v1

    .line 633
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 643
    .local v3, "nowPoint":I
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 644
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_2

    .line 645
    iput v3, v2, Lcom/hz/actor/Player;->arenaPoint:I

    .line 648
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/hz/core/Arena;->clearArena(Z)V

    goto :goto_0
.end method

.method public static doArenaNearActorList(Lcom/hz/ui/UIHandler;Lcom/hz/core/Arena;III)[Ljava/lang/Object;
    .locals 9
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "arena"    # Lcom/hz/core/Arena;
    .param p2, "updatetype"    # I
    .param p3, "pageSize"    # I
    .param p4, "pageNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v6

    .line 247
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v7, 0x38c9

    invoke-direct {v2, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 253
    .local v2, "msg":Lcom/hz/net/Message;
    int-to-byte v7, p2

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 254
    int-to-byte v7, p3

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putByte(B)V

    .line 255
    int-to-short v7, p4

    invoke-virtual {v2, v7}, Lcom/hz/net/Message;->putShort(S)V

    .line 257
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 272
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 280
    .local v0, "allSize":I
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 286
    .local v5, "size":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p1, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    .line 288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 296
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {v2}, Lcom/hz/core/Arena;->getPlayerFromMsg(Lcom/hz/net/Message;)Lcom/hz/actor/Player;

    move-result-object v3

    .line 290
    .local v3, "playerlistdata":Lcom/hz/actor/Player;
    if-nez v3, :cond_4

    .line 288
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_4
    iget-object v6, p1, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doArenaPK(Lcom/hz/actor/Player;I)V
    .locals 4
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "actorID"    # I

    .prologue
    .line 680
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x38ca

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 681
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 687
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 697
    .local v1, "rs":B
    if-gez v1, :cond_0

    .line 698
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 699
    if-lez p1, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 701
    .local v2, "status":B
    if-eqz p0, :cond_0

    .line 702
    iput-byte v2, p0, Lcom/hz/actor/Player;->arenaStutas:B

    .line 703
    invoke-static {}, Lcom/hz/core/Arena;->doUpdateArenaNearActorList()V

    goto :goto_0
.end method

.method public static doArenaRefresh(Lcom/hz/net/Message;)V
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 374
    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    .line 382
    .local v0, "arena":Lcom/hz/core/Arena;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 391
    .local v2, "result":B
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 392
    invoke-static {v4}, Lcom/hz/core/Arena;->clearArena(Z)V

    goto :goto_0

    .line 396
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 397
    invoke-static {v4}, Lcom/hz/core/Arena;->clearArena(Z)V

    goto :goto_0

    .line 402
    :cond_3
    if-ne v2, v5, :cond_4

    .line 403
    iget v3, v0, Lcom/hz/core/Arena;->battleStatusCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/hz/core/Arena;->battleStatusCount:I

    .line 407
    iget v3, v0, Lcom/hz/core/Arena;->battleStatusCount:I

    if-le v3, v5, :cond_0

    .line 408
    iput v4, v0, Lcom/hz/core/Arena;->battleStatusCount:I

    .line 409
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWorldDataReflashMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 410
    .local v1, "reflashMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    goto :goto_0

    .line 414
    .end local v1    # "reflashMsg":Lcom/hz/net/Message;
    :cond_4
    iput v4, v0, Lcom/hz/core/Arena;->battleStatusCount:I

    .line 416
    if-nez v2, :cond_0

    .line 417
    invoke-static {p0}, Lcom/hz/core/Arena;->doArenaRefurbish(Lcom/hz/net/Message;)V

    goto :goto_0
.end method

.method public static doArenaRefurbish(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 425
    if-nez p0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    .line 433
    .local v0, "arena":Lcom/hz/core/Arena;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/hz/core/Arena;->endTime:J

    .line 440
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Arena;->scoreSum:S

    .line 441
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Arena;->fightCount:B

    goto :goto_0
.end method

.method public static doArenaWatch()V
    .locals 3

    .prologue
    .line 714
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x38cb

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 716
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 731
    .local v1, "rs":B
    if-gez v1, :cond_0

    .line 732
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doEnterArena(BZ)V
    .locals 7
    .param p0, "type"    # B
    .param p1, "isactive"    # Z

    .prologue
    const/4 v6, 0x1

    .line 138
    if-eqz p1, :cond_1

    .line 139
    invoke-static {p0}, Lcom/hz/core/Arena;->doArenaEntryRequest(B)Z

    move-result v1

    .line 141
    .local v1, "isSuccess":Z
    if-nez v1, :cond_1

    .line 181
    .end local v1    # "isSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v0, Lcom/hz/core/Arena;

    invoke-direct {v0}, Lcom/hz/core/Arena;-><init>()V

    .line 151
    .local v0, "arena":Lcom/hz/core/Arena;
    const/16 v4, 0xcd

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v4

    iput-object v4, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    .line 154
    iget-object v4, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v4}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v3

    .line 155
    .local v3, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v3, v0}, Lcom/hz/ui/UIObject;->setArena(Lcom/hz/core/Arena;)V

    .line 156
    sget-byte v4, Lcom/hz/core/Arena;->STATUS_NONE:B

    iput v4, v3, Lcom/hz/ui/UIObject;->intValue1:I

    .line 159
    iget-object v4, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    const/16 v5, 0x5015

    invoke-virtual {v4, v5}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 160
    .local v2, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hz/ui/UIObject;->setPageDisplayNum(I)V

    .line 165
    iget-object v4, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 167
    invoke-virtual {v0}, Lcom/hz/core/Arena;->init()V

    .line 169
    sput-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    .line 170
    const/16 v4, 0x36

    invoke-static {v4}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 174
    iget-object v4, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->show()V

    .line 176
    iget-object v4, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v4, v6}, Lcom/hz/ui/UIHandler;->updateArenaUI(Lcom/hz/ui/UIHandler;Z)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iput-boolean v6, v0, Lcom/hz/core/Arena;->isfirstLogin:Z

    goto :goto_0
.end method

.method public static doOverNotice(Lcom/hz/net/Message;)V
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 593
    if-nez p0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 600
    .local v0, "arenaPoint":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 602
    .local v4, "nowPoint":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 604
    .local v2, "isOver":Z
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 605
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_2

    .line 606
    iput v4, v3, Lcom/hz/actor/Player;->arenaPoint:I

    .line 609
    :cond_2
    if-eqz v2, :cond_0

    .line 613
    const-string v5, "Th\u1eddi gian m\u1edf \u0111\u1ea5u tr\u01b0\u1eddng h\u00f4m nay \u0111\u00e3 k\u1ebft th\u00fac; m\u1ecdi ng\u01b0\u1eddi ch\u01a1i c\u00f3 th\u1ec3 tham gia v\u00e0o ng\u00e0y mai.\nT\u00edch \u0111i\u1ec3m \u0111\u1ea5u tr\u01b0\u1eddng nh\u1eadn \u0111\u01b0\u1ee3c c\u00f3 th\u1ec3 t\u1edbi ti\u1ec7m \u0111\u1ed5i ph\u1ea7n th\u01b0\u1edfng.\n\u0110\u1ea5u tr\u01b0\u1eddng l\u1ea7n n\u00e0y nh\u1eadn \u0111\u01b0\u1ee3c /cFFFF00%U \u0111i\u1ec3m!/p"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "info":Ljava/lang/String;
    const/16 v5, 0xf

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/hz/main/GameCanvas;->setWorldShowMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doPointMenu(Lcom/hz/core/Arena;)V
    .locals 10
    .param p0, "arena"    # Lcom/hz/core/Arena;

    .prologue
    .line 743
    if-nez p0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 748
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 752
    iget-short v3, p0, Lcom/hz/core/Arena;->scoreSum:S

    .line 753
    .local v3, "nowScore":I
    iget v4, v2, Lcom/hz/actor/Player;->arenaPoint:I

    iget-short v5, p0, Lcom/hz/core/Arena;->scoreSum:S

    add-int v0, v4, v5

    .line 755
    .local v0, "allScore":I
    const-string v1, ""

    .line 763
    .local v1, "info":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "T\u00edch \u0111i\u1ec3m nh\u1eadn \u0111\u01b0\u1ee3c trong tr\u1eadn n\u00e0y l\u00e0 /cFFFF00%U \u0111i\u1ec3m/p\nMi c\u00f2n c\u00f3 /cFFFF00%U l\u1ea7n /p khi\u00eau chi\u1ebfn "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    iget-byte v9, p0, Lcom/hz/core/Arena;->fightCount:B

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doUpdateArenaNearActorList()V
    .locals 3

    .prologue
    .line 348
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    .line 349
    .local v0, "arena":Lcom/hz/core/Arena;
    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v2, v0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 356
    .local v1, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 359
    iget-boolean v2, v0, Lcom/hz/core/Arena;->isfirstLogin:Z

    if-eqz v2, :cond_0

    .line 360
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/hz/core/Arena;->isfirstLogin:Z

    .line 361
    const-string v2, "Ch\u00e0o m\u1eebng t\u1edbi \u0111\u1ea5u tr\u01b0\u1eddng, m\u00ed c\u00f3 th\u1ec3 /cFFFF00khi\u00eau chi\u1ebfn \u0111\u1ed1i th\u1ee7 trong \u0111\u1ea5u tr\u01b0\u1eddng /p, th\u1eafng s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c t\u00edch \u0111i\u1ec3m \u0111\u1ec3 \u0111\u1ed5i ph\u1ea7n th\u01b0\u1edfng phong ph\u00fa!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doprocessEnteryArena(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 196
    .local v1, "type":B
    invoke-static {p0}, Lcom/hz/core/Arena;->doArenaRefurbish(Lcom/hz/net/Message;)V

    .line 198
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 200
    .local v0, "stutas":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hz/core/Arena;->doEnterArena(BZ)V

    goto :goto_0
.end method

.method public static getPlayerFromMsg(Lcom/hz/net/Message;)Lcom/hz/actor/Player;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    .line 308
    :cond_0
    new-instance v0, Lcom/hz/actor/Player;

    invoke-direct {v0}, Lcom/hz/actor/Player;-><init>()V

    .line 310
    .local v0, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setId(I)V

    .line 311
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setName(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setIcon1(I)V

    .line 313
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setJob(B)V

    .line 314
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->setLevel(B)V

    .line 315
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->arenaPoint:I

    .line 316
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Player;->Pkwincount:I

    .line 317
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/Player;->arenaStutas:B

    goto :goto_0
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isStatus(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/hz/core/Arena;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBattleFailStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 773
    const-string v0, ""

    .line 777
    .local v0, "info":Ljava/lang/String;
    const-string v1, "Mi chi\u1ebfn b\u1ea1i\nL\u1ea7n th\u00ec \u0111\u1ea5u n\u00e0y nh\u1eadn \u0111\u01b0\u1ee3c s\u1ed1 \u0111i\u1ec3m chi\u1ebfn \u0111\u1ea5u l\u00e0 /cff0000%U \u0111i\u1ec3m/p\nMi c\u00f2n /c00FF00%U l\u1ea7n/p khi\u00eau chi\u1ebfn"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p0, Lcom/hz/core/Arena;->scoreSum:S

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/hz/core/Arena;->fightCount:B

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    return-object v0
.end method

.method public getBattleWinStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    const-string v0, ""

    .line 790
    .local v0, "info":Ljava/lang/String;
    const-string v0, "Ch\u00fac m\u1eebng mi chi\u1ebfn th\u1eafng! \nMi c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c ch\u1ecdn \u0111\u1ed1i th\u1ee7, ho\u1eb7c b\u1ecb ng\u01b0\u1eddi ch\u01a1i kh\u00e1c khi\u00eau chi\u1ebfn, \nh\u00e3y lu\u00f4n chu\u1ea9n b\u1ecb chi\u1ebfn \u0111\u1ea5u!"

    .line 791
    return-object v0
.end method

.method public getPlayerfromIndex(I)Lcom/hz/actor/Player;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/hz/core/Arena;->playerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Player;

    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 497
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 455
    iget-object v6, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v4

    .line 459
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 460
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 461
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 465
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 467
    iget-object v6, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 468
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 473
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 476
    iget-object v6, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 478
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 480
    iget-object v6, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 482
    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x7d1

    invoke-static {v0}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/Arena;->numSet:Lcom/hz/image/ImageSet;

    .line 109
    invoke-direct {p0}, Lcom/hz/core/Arena;->initUI()V

    .line 110
    return-void
.end method

.method public isTimeOut()Z
    .locals 4

    .prologue
    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/core/Arena;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logic(I)V
    .locals 5
    .param p1, "key"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 508
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    invoke-direct {p0, v3}, Lcom/hz/core/Arena;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/hz/core/Arena;->getBattleFailStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 510
    invoke-virtual {p0, v2, v3}, Lcom/hz/core/Arena;->setStatus(ZI)V

    .line 514
    :cond_0
    invoke-direct {p0, v4}, Lcom/hz/core/Arena;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/hz/core/Arena;->getBattleWinStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 516
    invoke-virtual {p0, v2, v4}, Lcom/hz/core/Arena;->setStatus(ZI)V

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Arena;->handleMouse()Z

    .line 527
    invoke-virtual {p0, p1}, Lcom/hz/core/Arena;->handleKey(I)Z

    .line 530
    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v1}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    :cond_2
    :goto_0
    return-void

    .line 533
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hz/core/Arena;->nextSysnTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 536
    invoke-static {}, Lcom/hz/main/MsgHandler;->createArenaRefresh()Lcom/hz/net/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/core/Arena;->nextSysnTime:J

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hz/core/Arena;->nextupdateListTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/core/Arena;->nextupdateListTime:J

    .line 543
    invoke-static {}, Lcom/hz/core/Arena;->doUpdateArenaNearActorList()V

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/hz/core/Arena;->arenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 557
    :cond_0
    const/4 v4, 0x0

    .line 558
    .local v4, "drawX":I
    const/4 v5, 0x0

    .line 565
    .local v5, "drawY":I
    iget-object v0, p0, Lcom/hz/core/Arena;->drawXY:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v4, v0, v1

    .line 566
    iget-object v0, p0, Lcom/hz/core/Arena;->drawXY:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 567
    invoke-virtual {p0}, Lcom/hz/core/Arena;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const/4 v1, 0x0

    const v2, 0xffffff

    const-string v3, "K\u1ebft th\u00fac"

    const/16 v6, 0x14

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/hz/core/Arena;->drawXY:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v4, v0, v1

    .line 575
    iget-object v0, p0, Lcom/hz/core/Arena;->drawXY:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 576
    iget-object v1, p0, Lcom/hz/core/Arena;->numSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/hz/core/Arena;->scoreSum:S

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 577
    return-void

    .line 570
    :cond_1
    iget-wide v2, p0, Lcom/hz/core/Arena;->endTime:J

    const/16 v6, 0x14

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIIIZ)V

    goto :goto_0
.end method

.method public setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "index"    # I

    .prologue
    .line 78
    iget v0, p0, Lcom/hz/core/Arena;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/Arena;->status:I

    .line 79
    return-void
.end method
