.class public Lcom/hz/core/SkyArena;
.super Ljava/lang/Object;
.source "SkyArena.java"


# static fields
.field public static final SKYARENA_STAGE_BATTLE_FAIL:B = 0x1t

.field public static final SKYARENA_STAGE_BATTLE_WIN:B = 0x2t

.field public static final SKYARENA_STAGE_BATTLE_WIN_ALL:B = 0x4t

.field public static final SKYARENA_WATCH_TYPE_DEFIER:B = 0x2t

.field public static final SKYARENA_WATCH_TYPE_PLAN:B = 0x1t

.field private static final SYSN_TIME:I = 0x1388

.field public static isfirst:Z


# instance fields
.field battleStatusCount:I

.field public challengeNumber:S

.field public icon1:I

.field public icon2:I

.field public icon3:I

.field public iconpet1:I

.field public isPass:Z

.field public isupdatesprite:Z

.field public job:B

.field public killNumber:I

.field public leadPlayer:Lcom/hz/actor/Player;

.field public level:B

.field public name:Ljava/lang/String;

.field private nextSysnTime:J

.field public skyarenaUI:Lcom/hz/ui/UIHandler;

.field private status:I

.field public tier:S

.field public topNumber:S

.field public topType:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/core/SkyArena;->battleStatusCount:I

    .line 23
    return-void
.end method

.method public static doEnterSkyArena(Lcom/hz/net/Message;Z)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isactive"    # Z

    .prologue
    const/4 v4, 0x1

    .line 95
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 96
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v2, Lcom/hz/core/SkyArena;

    invoke-direct {v2}, Lcom/hz/core/SkyArena;-><init>()V

    .line 101
    .local v2, "skyArena":Lcom/hz/core/SkyArena;
    if-eqz p1, :cond_3

    .line 102
    invoke-static {v2}, Lcom/hz/core/SkyArena;->doSkyArenaEntry(Lcom/hz/core/SkyArena;)Z

    move-result v0

    .line 103
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 120
    .end local v0    # "isSuccess":Z
    :goto_1
    invoke-virtual {v2}, Lcom/hz/core/SkyArena;->createSkyArenaUI()Lcom/hz/ui/UIHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    .line 121
    sput-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    .line 122
    const/16 v3, 0x3a

    invoke-static {v3}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 123
    iget-object v3, v2, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3, v4}, Lcom/hz/ui/UIHandler;->updateDataToSkyArenaUI(Lcom/hz/ui/UIHandler;Z)V

    .line 125
    if-eqz p1, :cond_2

    .line 126
    sput-boolean v4, Lcom/hz/core/SkyArena;->isfirst:Z

    .line 128
    :cond_2
    sget-object v3, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iput-boolean v4, v3, Lcom/hz/core/SkyArena;->isupdatesprite:Z

    goto :goto_0

    .line 110
    :cond_3
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {v2, p0}, Lcom/hz/core/SkyArena;->doGetSkyArenaDatafrombyte(Lcom/hz/net/Message;)V

    goto :goto_1
.end method

.method public static doSkyArenaEntry(Lcom/hz/core/SkyArena;)Z
    .locals 4
    .param p0, "skyArena"    # Lcom/hz/core/SkyArena;

    .prologue
    const/4 v2, 0x0

    .line 136
    if-nez p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x30df

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 145
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 158
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hz/core/SkyArena;->doGetSkyArenaDatafrombyte(Lcom/hz/net/Message;)V

    .line 164
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doSkyArenaExit()V
    .locals 6

    .prologue
    .line 429
    const-string v3, "R\u1eddi \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng"

    const-string v4, "Mi \u0111\u1ed3ng \u00fd r\u1eddi \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng kh\u00f4ng?"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 430
    .local v0, "askResult":I
    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    new-instance v1, Lcom/hz/net/Message;

    const/16 v3, 0x30e2

    invoke-direct {v1, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 436
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 449
    .local v2, "rs":B
    if-gez v2, :cond_2

    .line 450
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 454
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/hz/core/SkyArena;->doclearSkyArena(Z)V

    goto :goto_0
.end method

.method public static doSkyArenaPK()V
    .locals 3

    .prologue
    .line 461
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x30de

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 463
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 476
    .local v1, "rs":B
    if-gez v1, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doSkyArenaRefresh(Lcom/hz/net/Message;)V
    .locals 11
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 346
    if-nez p0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-object v3, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    .line 354
    .local v3, "skyArena":Lcom/hz/core/SkyArena;
    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 367
    .local v2, "rs":B
    if-ne v2, v8, :cond_2

    .line 368
    invoke-static {v7}, Lcom/hz/core/SkyArena;->doclearSkyArena(Z)V

    goto :goto_0

    .line 373
    :cond_2
    if-ne v2, v10, :cond_3

    .line 374
    invoke-static {v7}, Lcom/hz/core/SkyArena;->doclearSkyArena(Z)V

    goto :goto_0

    .line 379
    :cond_3
    if-ne v2, v9, :cond_4

    .line 380
    iget v8, v3, Lcom/hz/core/SkyArena;->battleStatusCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/hz/core/SkyArena;->battleStatusCount:I

    .line 384
    iget v8, v3, Lcom/hz/core/SkyArena;->battleStatusCount:I

    if-le v8, v9, :cond_0

    .line 385
    iput v7, v3, Lcom/hz/core/SkyArena;->battleStatusCount:I

    .line 386
    invoke-static {}, Lcom/hz/main/MsgHandler;->createWorldDataReflashMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 387
    .local v1, "reflashMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    goto :goto_0

    .line 393
    .end local v1    # "reflashMsg":Lcom/hz/net/Message;
    :cond_4
    if-nez v2, :cond_0

    .line 395
    iget-short v5, v3, Lcom/hz/core/SkyArena;->tier:S

    .line 396
    .local v5, "temtier":I
    iget-boolean v4, v3, Lcom/hz/core/SkyArena;->isupdatesprite:Z

    .line 398
    .local v4, "temisupdate":Z
    invoke-virtual {v3, p0}, Lcom/hz/core/SkyArena;->doGetSkyArenaDatafrombyte(Lcom/hz/net/Message;)V

    .line 401
    invoke-direct {v3, v10}, Lcom/hz/core/SkyArena;->isStatus(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 402
    invoke-virtual {v3}, Lcom/hz/core/SkyArena;->getBattleWinStr()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 403
    invoke-virtual {v3, v7, v10}, Lcom/hz/core/SkyArena;->setStatus(ZI)V

    .line 406
    :cond_5
    sget-object v9, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-short v9, v9, Lcom/hz/core/SkyArena;->tier:S

    if-ne v5, v9, :cond_7

    if-nez v4, :cond_7

    move v0, v7

    .line 407
    .local v0, "isupdateSprite":Z
    :goto_1
    if-eqz v4, :cond_6

    .line 408
    iput-boolean v7, v3, Lcom/hz/core/SkyArena;->isupdatesprite:Z

    .line 411
    :cond_6
    iget-object v7, v3, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    if-nez v7, :cond_8

    .line 412
    invoke-virtual {v3}, Lcom/hz/core/SkyArena;->createSkyArenaUI()Lcom/hz/ui/UIHandler;

    move-result-object v7

    iput-object v7, v3, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    .line 413
    iget-object v7, v3, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v7, v8}, Lcom/hz/ui/UIHandler;->updateDataToSkyArenaUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .end local v0    # "isupdateSprite":Z
    :cond_7
    move v0, v8

    .line 406
    goto :goto_1

    .line 415
    .restart local v0    # "isupdateSprite":Z
    :cond_8
    iget-object v7, v3, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v7}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v6

    .line 416
    .local v6, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v6, :cond_0

    .line 417
    invoke-virtual {v6, v3}, Lcom/hz/ui/UIObject;->setSkyarena(Lcom/hz/core/SkyArena;)V

    .line 418
    iget-object v7, v3, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-static {v7, v0}, Lcom/hz/ui/UIHandler;->updateDataToSkyArenaUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0
.end method

.method public static doSkyArenaWatchInfo(B)V
    .locals 7
    .param p0, "type"    # B

    .prologue
    .line 488
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-nez v5, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v5, 0x30e1

    invoke-direct {v0, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 493
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 494
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-short v5, v5, Lcom/hz/core/SkyArena;->tier:S

    invoke-virtual {v0, v5}, Lcom/hz/net/Message;->putShort(S)V

    .line 500
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 503
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 513
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 514
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "strinfo":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 521
    .local v3, "temnum":I
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 523
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iput v3, v5, Lcom/hz/core/SkyArena;->killNumber:I

    .line 530
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-object v5, v5, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    if-eqz v5, :cond_0

    .line 531
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-object v5, v5, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v5}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v4

    .line 532
    .local v4, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v4, :cond_0

    .line 533
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    invoke-virtual {v4, v5}, Lcom/hz/ui/UIObject;->setSkyarena(Lcom/hz/core/SkyArena;)V

    .line 534
    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-object v5, v5, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/hz/ui/UIHandler;->updateDataToSkyArenaUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0
.end method

.method public static doclearSkyArena(Z)V
    .locals 2
    .param p0, "isCheckBattle"    # Z

    .prologue
    .line 543
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    .line 547
    if-eqz p0, :cond_0

    .line 548
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 549
    const-string v0, "\u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng \u0111\u00e3 k\u1ebft th\u00fac!"

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method private isStatus(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/hz/core/SkyArena;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createSkyArenaUI()Lcom/hz/ui/UIHandler;
    .locals 3

    .prologue
    .line 78
    const/16 v2, 0x75

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 79
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 87
    .end local v1    # "xmlUI":Lcom/hz/ui/UIHandler;
    :goto_0
    return-object v1

    .line 82
    .restart local v1    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_0
    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 83
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setSkyarena(Lcom/hz/core/SkyArena;)V

    .line 85
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 86
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    goto :goto_0
.end method

.method public doGetSkyArenaDatafrombyte(Lcom/hz/net/Message;)V
    .locals 11
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 172
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 177
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput-short v9, p0, Lcom/hz/core/SkyArena;->challengeNumber:S

    .line 183
    new-instance v9, Lcom/hz/actor/Player;

    invoke-direct {v9}, Lcom/hz/actor/Player;-><init>()V

    iput-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    .line 184
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "strname":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 186
    .local v3, "temicon1":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 187
    .local v4, "temicon2":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 188
    .local v5, "temicon3":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 189
    .local v6, "temjob":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 190
    .local v7, "temlevel":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 191
    .local v8, "temskyarenaPoint":I
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 193
    .local v0, "myskyarenaPoint":I
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9, v2}, Lcom/hz/actor/Player;->setName(Ljava/lang/String;)V

    .line 194
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9, v3}, Lcom/hz/actor/Player;->setIcon1(I)V

    .line 195
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9, v4}, Lcom/hz/actor/Player;->setIcon2(I)V

    .line 196
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9, v5}, Lcom/hz/actor/Player;->setIcon3(I)V

    .line 197
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9, v6}, Lcom/hz/actor/Player;->setJob(B)V

    .line 198
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9, v7}, Lcom/hz/actor/Player;->setLevel(B)V

    .line 199
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    iput v8, v9, Lcom/hz/actor/Player;->skyarenaPoint:I

    .line 200
    iput v0, v1, Lcom/hz/actor/Player;->skyarenaPoint:I

    .line 203
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, p0, Lcom/hz/core/SkyArena;->icon1:I

    .line 204
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, p0, Lcom/hz/core/SkyArena;->icon2:I

    .line 205
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, p0, Lcom/hz/core/SkyArena;->icon3:I

    .line 206
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hz/core/SkyArena;->name:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, p0, Lcom/hz/core/SkyArena;->job:B

    .line 208
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, p0, Lcom/hz/core/SkyArena;->level:B

    .line 209
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput-short v9, p0, Lcom/hz/core/SkyArena;->tier:S

    .line 210
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, p0, Lcom/hz/core/SkyArena;->killNumber:I

    .line 211
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput-short v9, p0, Lcom/hz/core/SkyArena;->topType:S

    .line 212
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput-short v9, p0, Lcom/hz/core/SkyArena;->topNumber:S

    .line 213
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v9

    iput-boolean v9, p0, Lcom/hz/core/SkyArena;->isPass:Z

    .line 215
    iget-object v9, p0, Lcom/hz/core/SkyArena;->leadPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    invoke-virtual {v9, v10}, Lcom/hz/actor/Player;->setIconpet1(I)V

    goto/16 :goto_0
.end method

.method public getBattleFailStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const-string v0, ""

    .line 576
    .local v0, "info":Ljava/lang/String;
    const-string v0, "Khi\u00eau chi\u1ebfn th\u1ea5t b\u1ea1i. Khi\u00eau chi\u1ebfn Th\u1ee7 H\u1ed9 Gi\u1ea3 th\u1ea5t b\u1ea1i kh\u00f4ng c\u00f3 b\u1ea5t c\u1ee9 t\u1ed5n th\u1ea5t n\u00e0o, mi c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c khi\u00eau chi\u1ebfn."

    .line 577
    return-object v0
.end method

.method public getBattleWinStr()Ljava/lang/String;
    .locals 7

    .prologue
    .line 585
    const-string v0, ""

    .line 586
    .local v0, "info":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 594
    .end local v0    # "info":Ljava/lang/String;
    .local v1, "info":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 589
    .end local v1    # "info":Ljava/lang/String;
    .restart local v0    # "info":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-boolean v2, v2, Lcom/hz/core/SkyArena;->isPass:Z

    if-eqz v2, :cond_1

    .line 590
    const-string v0, "Ch\u00fac m\u1eebng mi \u0111\u00e1nh b\u1ea1i m\u1ecdi k\u1ebb khi\u00eau chi\u1ebfn \u1edf \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng! \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng h\u00f4m nay \u0111\u00e3 k\u1ebft th\u00fac, mai h\u00e3y t\u1edbi "

    :goto_1
    move-object v1, v0

    .line 594
    .end local v0    # "info":Ljava/lang/String;
    .restart local v1    # "info":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v1    # "info":Ljava/lang/String;
    .restart local v0    # "info":Ljava/lang/String;
    :cond_1
    const-string v2, "Ch\u00fac m\u1eebng mi \u0111\u00e1nh b\u1ea1i Th\u1ee7 H\u1ed9 Gi\u1ea3, gi\u1edd mi v\u00e0o /cFFFF00t\u1ea7ng %U /p \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng\uff0c/cFFFF00%U/p ch\u1eb7n tr\u01b0\u1edbc m\u1eb7t, \u0111\u00e1nh b\u1ea1i y m\u1edbi c\u00f3 th\u1ec3 \u0111i ti\u1ebfp!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-short v6, v6, Lcom/hz/core/SkyArena;->tier:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-object v5, v5, Lcom/hz/core/SkyArena;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextSysnTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/hz/core/SkyArena;->nextSysnTime:J

    return-wide v0
.end method

.method public getSkyArenaFirstEnterStr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 562
    const-string v0, ""

    .line 563
    .local v0, "info":Ljava/lang/String;
    sget-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 567
    .end local v0    # "info":Ljava/lang/String;
    .local v1, "info":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 566
    .end local v1    # "info":Ljava/lang/String;
    .restart local v0    # "info":Ljava/lang/String;
    :cond_0
    const-string v2, "Ch\u00e0o m\u1eebng t\u1edbi \u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng, mi \u0111ang \u1edf /cFFFF00t\u1ea7ng %U/p, \u0111\u00e1nh b\u1ea1i Th\u1ee7 H\u1ed9 Gi\u1ea3 c\u1ee7a t\u1ea7ng n\u00e0y m\u1edbi c\u00f3 t\u01b0 c\u00e1ch khi\u00eau chi\u1ebfn t\u1ea7ng ti\u1ebfp theo.\n\n\u0110\u1ea5u Tr\u01b0\u1eddng Thi\u00ean Kh\u00f4ng m\u1ed7i l\u1ea7n gi\u00e0nh chi\u1ebfn th\u1eafng 1 tr\u1eadn s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c /cFFFF001 \u0110i\u1ec3m Khi\u00eau Chi\u1ebfn/p, d\u00f9ng \u0110i\u1ec3m Khi\u00eau Chi\u1ebfn c\u00f3 th\u1ec3 \u0111\u1ed5i th\u01b0\u1edfng."

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    iget-short v4, v4, Lcom/hz/core/SkyArena;->tier:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 567
    .end local v0    # "info":Ljava/lang/String;
    .restart local v1    # "info":Ljava/lang/String;
    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 291
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 249
    iget-object v6, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v4

    .line 253
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 254
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 255
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 259
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 261
    iget-object v6, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 262
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 267
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 270
    iget-object v6, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 272
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 274
    iget-object v6, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 276
    goto :goto_0
.end method

.method public logic(I)V
    .locals 5
    .param p1, "key"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 301
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    invoke-direct {p0, v3}, Lcom/hz/core/SkyArena;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/hz/core/SkyArena;->getBattleFailStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 303
    invoke-virtual {p0, v2, v3}, Lcom/hz/core/SkyArena;->setStatus(ZI)V

    .line 306
    :cond_0
    sget-boolean v1, Lcom/hz/core/SkyArena;->isfirst:Z

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/hz/core/SkyArena;->getSkyArenaFirstEnterStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 308
    sput-boolean v2, Lcom/hz/core/SkyArena;->isfirst:Z

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/SkyArena;->handleMouse()Z

    .line 313
    invoke-virtual {p0, p1}, Lcom/hz/core/SkyArena;->handleKey(I)Z

    .line 316
    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v1}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    :cond_2
    :goto_0
    return-void

    .line 320
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hz/core/SkyArena;->nextSysnTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 323
    invoke-static {}, Lcom/hz/main/MsgHandler;->createSkyArenaRefresh()Lcom/hz/net/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/core/SkyArena;->nextSysnTime:J

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/hz/core/SkyArena;->skyarenaUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setNextSysnTime(J)V
    .locals 0
    .param p1, "nextSysnTime"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/hz/core/SkyArena;->nextSysnTime:J

    .line 56
    return-void
.end method

.method public setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "index"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/hz/core/SkyArena;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/SkyArena;->status:I

    .line 67
    return-void
.end method
