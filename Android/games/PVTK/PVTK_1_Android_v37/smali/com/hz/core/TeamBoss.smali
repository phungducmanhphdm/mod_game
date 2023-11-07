.class public Lcom/hz/core/TeamBoss;
.super Ljava/lang/Object;
.source "TeamBoss.java"


# static fields
.field private static final IMG_BOSS_LEVEL1:B = 0x0t

.field private static final IMG_BOSS_LEVEL2:B = 0x1t

.field private static final IMG_BOSS_LEVEL3:B = 0x2t

.field private static final IMG_BOSS_LEVEL4:B = 0x3t

.field private static final IMG_BOSS_NONE:B = 0x4t

.field private static final IMG_BOSS_NUM:B = 0x5t

.field public static final STATUS_FIGHT_EXIT:I = 0x4

.field public static final STATUS_FIGHT_FAIL:I = 0x8

.field public static final STATUS_FIGHT_START:I = 0x2

.field private static final STATUS_FIRST_ENTER:I = 0x1

.field private static final SYSN_TIME:I = 0x1388


# instance fields
.field private bossList:[Lcom/hz/core/Boss;

.field public bossXY:[[I

.field public drawXY:[[I

.field private endTime:J

.field public imageSet:Lcom/hz/image/ImageSet;

.field private myPos:B

.field private nextSysnTime:J

.field public numSet:Lcom/hz/image/ImageSet;

.field private scoreSum:I

.field private spriteModel:Lcom/hz/actor/Model;

.field private status:I

.field public teamBossUI:Lcom/hz/ui/UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    .line 99
    iput-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    .line 101
    iput-object v0, p0, Lcom/hz/core/TeamBoss;->imageSet:Lcom/hz/image/ImageSet;

    .line 103
    iput-object v0, p0, Lcom/hz/core/TeamBoss;->numSet:Lcom/hz/image/ImageSet;

    .line 105
    iput-object v0, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    .line 108
    iput-object v0, p0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    .line 115
    const/4 v0, 0x3

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    .line 36
    return-void
.end method

.method public static clearTeamBoss(Z)V
    .locals 2
    .param p0, "isCheckBattle"    # Z

    .prologue
    .line 750
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    .line 753
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hz/main/Weather;->update(B)V

    .line 762
    if-eqz p0, :cond_0

    .line 763
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 764
    const-string v0, "Ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i \u0111\u00e3 k\u1ebft th\u00fac!"

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 770
    :goto_0
    return-void

    .line 769
    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method public static doEnterTeamBoss()V
    .locals 1

    .prologue
    .line 776
    invoke-static {}, Lcom/hz/main/MsgHandler;->createTeamBossStart()Lcom/hz/net/Message;

    move-result-object v0

    .line 777
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    .line 778
    return-void
.end method

.method public static doFight_1(Lcom/hz/ui/UIHandler;Lcom/hz/core/Boss;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "boss"    # Lcom/hz/core/Boss;

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 615
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/hz/core/Boss;->isOver()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const-string v1, "Qu\u00e2n \u0111o\u00e0n qu\u00e1i v\u1eadt \u0111\u00e3 b\u1ecb ti\u00eau di\u1ec7t, h\u00e3y ch\u1ecdn qu\u00e2n \u0111o\u00e0n qu\u00e1i kh\u00e1c!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 604
    :cond_1
    const-string v1, "Qu\u00e1i v\u1eadt \u1edf \u0111\u00e2y c\u1ea5p %U\nC\u00f2n %U nh\u00f3m qu\u00e1i"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v7, p1, Lcom/hz/core/Boss;->level:B

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v7, p1, Lcom/hz/core/Boss;->num:S

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "info":Ljava/lang/String;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 609
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 610
    .local v2, "eventList":Ljava/util/Vector;
    const-string v1, "V\u00e0o chi\u1ebfn \u0111\u1ea5u"

    const/16 v3, 0x75f9

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 611
    const/16 v1, 0x93

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 613
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x1e

    move-object v5, p0

    .line 613
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doFight_2(Lcom/hz/core/TeamBoss;Lcom/hz/core/Boss;)V
    .locals 3
    .param p0, "teamBoss"    # Lcom/hz/core/TeamBoss;
    .param p1, "boss"    # Lcom/hz/core/Boss;

    .prologue
    .line 625
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/hz/core/TeamBoss;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    const-string v1, "Th\u1ea5t b\u1ea1i. B\u1ea1n b\u1ecb \u0111\u01b0a ra kh\u1ecfi ph\u00f3 b\u1ea3n qu\u00e2n \u0111o\u00e0n, h\u00e3y v\u00e0o l\u1ea1i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 634
    iget-byte v1, p1, Lcom/hz/core/Boss;->id:B

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createTeamBossFight(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 635
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_0

    .line 645
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->processRemoteBattleNotify(Lcom/hz/net/Message;)V

    .line 647
    iget-byte v1, p1, Lcom/hz/core/Boss;->uiPos:B

    iput-byte v1, p0, Lcom/hz/core/TeamBoss;->myPos:B

    .line 648
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/hz/core/TeamBoss;->setStatus(ZI)V

    goto :goto_0
.end method

.method public static doOverNotice(Lcom/hz/net/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 507
    if-nez p0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 513
    .local v2, "isAllKill":Z
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 515
    .local v0, "getIntegral":I
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 516
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_1

    .line 517
    iget v4, v3, Lcom/hz/actor/Player;->integral:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/hz/actor/Player;->integral:I

    .line 520
    :cond_1
    const-string v1, ""

    .line 521
    .local v1, "info":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 524
    const-string v4, "Chi\u1ebfn \u0111\u1ea5u th\u1ea5t b\u1ea1i, \u0111\u1ea1i qu\u00e2n qu\u00e1i v\u1eadt c\u00f4ng h\u00e3m th\u00e0nh tr\u00ec c\u1ee7a ta.\nTr\u1eadn n\u00e0y nh\u1eadn \u0111\u01b0\u1ee3c /c00FF00\u0110i\u1ec3m Vinh D\u1ef1%U/p"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    :goto_1
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/hz/main/GameCanvas;->setWorldShowMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_2
    const-string v4, "Chi\u1ebfn th\u1eafng! M\u1ecdi ng\u01b0\u1eddi ch\u01a1i tham chi\u1ebfn nh\u1eadn \u0111\u01b0\u1ee3c x2 t\u00edch \u0111i\u1ec3m!\nChi\u1ebfn d\u1ecbch n\u00e0y nh\u1eadn \u0111\u01b0\u1ee3c/c00FF00\u0110i\u1ec3m Vinh D\u1ef1%U/p"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static doQuitFight()V
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Lcom/hz/main/MsgHandler;->createTeamBossNotFight()Lcom/hz/net/Message;

    move-result-object v0

    .line 585
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    .line 586
    return-void
.end method

.method public static doRefresh(Lcom/hz/net/Message;)V
    .locals 14
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v13, 0x0

    .line 659
    if-nez p0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 670
    .local v6, "result":B
    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    .line 671
    invoke-static {v13}, Lcom/hz/core/TeamBoss;->clearTeamBoss(Z)V

    goto :goto_0

    .line 676
    :cond_2
    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 677
    invoke-static {v13}, Lcom/hz/core/TeamBoss;->clearTeamBoss(Z)V

    goto :goto_0

    .line 682
    :cond_3
    if-nez v6, :cond_0

    .line 684
    sget-object v8, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    .line 685
    .local v8, "teamBoss":Lcom/hz/core/TeamBoss;
    if-eqz v8, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    int-to-long v9, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/hz/core/TeamBoss;->endTime:J

    .line 694
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v8, Lcom/hz/core/TeamBoss;->scoreSum:I

    .line 696
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 697
    .local v2, "bossID":B
    invoke-virtual {v8, v2}, Lcom/hz/core/TeamBoss;->getBossByID(I)Lcom/hz/core/Boss;

    move-result-object v0

    .line 698
    .local v0, "b":Lcom/hz/core/Boss;
    if-eqz v0, :cond_4

    iget-byte v9, v0, Lcom/hz/core/Boss;->uiPos:B

    :goto_1
    iput-byte v9, v8, Lcom/hz/core/TeamBoss;->myPos:B

    .line 703
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 704
    .local v7, "size":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v7, :cond_5

    .line 722
    iget-object v9, v8, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-static {v9, v13}, Lcom/hz/ui/UIHandler;->updateTeamBossUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 698
    .end local v3    # "i":I
    .end local v7    # "size":B
    :cond_4
    const/4 v9, -0x1

    goto :goto_1

    .line 705
    .restart local v3    # "i":I
    .restart local v7    # "size":B
    :cond_5
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 706
    .local v4, "id":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    .line 711
    .local v5, "num":S
    invoke-virtual {v8, v4}, Lcom/hz/core/TeamBoss;->getBossByID(I)Lcom/hz/core/Boss;

    move-result-object v1

    .line 712
    .local v1, "boss":Lcom/hz/core/Boss;
    if-nez v1, :cond_6

    .line 704
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 718
    :cond_6
    iput-short v5, v1, Lcom/hz/core/Boss;->num:S

    goto :goto_3
.end method

.method public static doTeamBossQuit()V
    .locals 5

    .prologue
    .line 731
    const-string v2, "R\u1eddi ph\u00f3 b\u1ea3n"

    const-string v3, "Mi \u0111\u1ed3ng \u00fd r\u1eddi ph\u00f3 b\u1ea3n sao?"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 732
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createTeamBossQuit()Lcom/hz/net/Message;

    move-result-object v1

    .line 737
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/core/TeamBoss;->clearTeamBoss(Z)V

    goto :goto_0
.end method

.method public static getImgByBoss(Lcom/hz/core/Boss;)B
    .locals 3
    .param p0, "boss"    # Lcom/hz/core/Boss;

    .prologue
    const/4 v1, 0x4

    .line 49
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    iget-short v2, p0, Lcom/hz/core/Boss;->num:S

    if-lez v2, :cond_0

    .line 55
    iget-byte v0, p0, Lcom/hz/core/Boss;->level:B

    .line 56
    .local v0, "level":B
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_2

    .line 57
    const/4 v1, 0x3

    goto :goto_0

    .line 59
    :cond_2
    const/16 v1, 0x28

    if-gt v0, v1, :cond_3

    .line 60
    const/4 v1, 0x2

    goto :goto_0

    .line 62
    :cond_3
    const/16 v1, 0x32

    if-gt v0, v1, :cond_4

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initSprite()V
    .locals 5

    .prologue
    .line 251
    :try_start_0
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 252
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-nez v2, :cond_0

    .line 284
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :goto_0
    return-void

    .line 256
    .restart local v2    # "myPlayer":Lcom/hz/actor/Player;
    :cond_0
    const/4 v1, 0x0

    .line 258
    .local v1, "leaderSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v3

    invoke-static {v3}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 259
    .local v0, "leader":Lcom/hz/actor/Model;
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 263
    :cond_1
    if-nez v1, :cond_2

    .line 264
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 274
    :cond_2
    new-instance v3, Lcom/hz/actor/Model;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/hz/actor/Model;-><init>(B)V

    iput-object v3, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    .line 275
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setDir(B)V

    .line 276
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-static {v1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 277
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setAnimationByDir(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    .end local v0    # "leader":Lcom/hz/actor/Model;
    .end local v1    # "leaderSprite":Lcom/hz/sprite/GameSprite;
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 219
    const/16 v0, 0xc8

    :try_start_0
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    .line 220
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setTeamBoss(Lcom/hz/core/TeamBoss;)V

    .line 221
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 222
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 224
    const-string v0, "/common/"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/TeamBoss;->imageSet:Lcom/hz/image/ImageSet;

    .line 225
    const/16 v0, 0x7d1

    invoke-static {v0}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/TeamBoss;->numSet:Lcom/hz/image/ImageSet;

    .line 228
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 231
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 234
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->updateTeamBossUI(Lcom/hz/ui/UIHandler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isStatus(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/hz/core/TeamBoss;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public static processTeamBoss(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 788
    if-nez p0, :cond_0

    .line 807
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 793
    .local v0, "result":B
    if-gez v0, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 798
    :cond_1
    new-instance v1, Lcom/hz/core/TeamBoss;

    invoke-direct {v1}, Lcom/hz/core/TeamBoss;-><init>()V

    .line 799
    .local v1, "teamBoss":Lcom/hz/core/TeamBoss;
    invoke-virtual {v1, p0}, Lcom/hz/core/TeamBoss;->fromBytes(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 800
    const-string v2, "V\u00e0o ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i kh\u1edfi t\u1ea1o th\u1ea5t b\u1ea1i!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 803
    :cond_2
    invoke-virtual {v1}, Lcom/hz/core/TeamBoss;->init()V

    .line 805
    sput-object v1, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    .line 806
    const/16 v2, 0x34

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method


# virtual methods
.method public doAskContinue()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 540
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/hz/core/TeamBoss;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "Th\u1ea5t b\u1ea1i. B\u1ea1n b\u1ecb \u0111\u01b0a ra kh\u1ecfi ph\u00f3 b\u1ea3n qu\u00e2n \u0111o\u00e0n, h\u00e3y v\u00e0o l\u1ea1i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-byte v1, p0, Lcom/hz/core/TeamBoss;->myPos:B

    invoke-virtual {p0, v1}, Lcom/hz/core/TeamBoss;->getBossByPos(I)Lcom/hz/core/Boss;

    move-result-object v6

    .line 547
    .local v6, "boss":Lcom/hz/core/Boss;
    if-eqz v6, :cond_0

    .line 552
    iget-short v1, v6, Lcom/hz/core/Boss;->num:S

    if-lez v1, :cond_2

    .line 553
    iget-short v1, v6, Lcom/hz/core/Boss;->num:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, v6, Lcom/hz/core/Boss;->num:S

    .line 556
    :cond_2
    invoke-virtual {v6}, Lcom/hz/core/Boss;->isOver()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    const-string v1, "Qu\u00e2n \u0111o\u00e0n qu\u00e1i v\u1eadt \u0111\u00e3 b\u1ecb ti\u00eau di\u1ec7t, h\u00e3y ch\u1ecdn qu\u00e2n \u0111o\u00e0n qu\u00e1i kh\u00e1c!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 561
    :cond_3
    const-string v1, "T\u00edch \u0111i\u1ec3m nh\u1eadn \u0111\u01b0\u1ee3c khi chi\u1ebfn th\u1eafng s\u1ebd k\u1ebft to\u00e1n sau khi ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i ki\u1ebft th\u00fac!\nQu\u00e1i v\u1eadt \u1edf \u0111\u00e2y Lv %U\nC\u00f2n l\u1ea1i %U nh\u00f3m qu\u00e1i"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-byte v5, v6, Lcom/hz/core/Boss;->level:B

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v9, v6, Lcom/hz/core/Boss;->num:S

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "info":Ljava/lang/String;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 567
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 568
    .local v2, "eventList":Ljava/util/Vector;
    const-string v1, "Ti\u1ebfp t\u1ee5c chi\u1ebfn \u0111\u1ea5u"

    const/16 v3, 0x75fa

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 569
    const/16 v1, 0x93

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x75fb

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 571
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    .line 571
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v8

    .line 574
    .local v8, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v8, :cond_0

    .line 575
    const/16 v1, 0x10

    invoke-virtual {v8, v10, v1}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_0
.end method

.method public fromBytes(Lcom/hz/net/Message;)Z
    .locals 7
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 295
    :try_start_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/hz/core/TeamBoss;->endTime:J

    .line 296
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    iput v3, p0, Lcom/hz/core/TeamBoss;->scoreSum:I

    .line 297
    const/4 v3, -0x1

    iput-byte v3, p0, Lcom/hz/core/TeamBoss;->myPos:B

    .line 298
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    .line 300
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 305
    .local v2, "size":B
    new-array v3, v2, [Lcom/hz/core/Boss;

    iput-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 317
    const/4 v3, 0x1

    .end local v1    # "i":I
    .end local v2    # "size":B
    :goto_1
    return v3

    .line 307
    .restart local v1    # "i":I
    .restart local v2    # "size":B
    :cond_0
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    invoke-static {p1}, Lcom/hz/core/Boss;->fromBytesByTeamBoss(Lcom/hz/net/Message;)Lcom/hz/core/Boss;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    .end local v2    # "size":B
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAllBossNum()I
    .locals 4

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "count":I
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    if-eqz v3, :cond_0

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 186
    .end local v2    # "i":I
    :cond_0
    return v1

    .line 177
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v3, v2

    .line 178
    .local v0, "boss":Lcom/hz/core/Boss;
    if-eqz v0, :cond_2

    .line 179
    iget-short v3, v0, Lcom/hz/core/Boss;->num:S

    add-int/2addr v1, v3

    .line 176
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBossByID(I)Lcom/hz/core/Boss;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    move-object v0, v2

    .line 148
    goto :goto_0

    .line 143
    :cond_2
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v3, v1

    .line 144
    .local v0, "boss":Lcom/hz/core/Boss;
    if-eqz v0, :cond_3

    iget-byte v3, v0, Lcom/hz/core/Boss;->id:B

    if-eq v3, p1, :cond_0

    .line 142
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getBossByIndex(I)Lcom/hz/core/Boss;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getBossByPos(I)Lcom/hz/core/Boss;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 160
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    move-object v0, v2

    .line 166
    goto :goto_0

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/hz/core/TeamBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v3, v1

    .line 162
    .local v0, "boss":Lcom/hz/core/Boss;
    if-eqz v0, :cond_3

    iget-byte v3, v0, Lcom/hz/core/Boss;->uiPos:B

    if-eq v3, p1, :cond_0

    .line 160
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFirstInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string v0, "H\u00e3y ch\u1ecdn qu\u00e2n \u0111o\u00e0n qu\u00e1i v\u1eadt t\u1ea5n c\u00f4ng!\nH\u1ea1 qu\u00e1i trong ph\u00f3 b\u1ea3n nh\u1eadn \u0111i\u1ec3m vinh d\u1ef1, \u0111i\u1ec3m vinh d\u1ef1 c\u00f3 th\u1ec3 \u0111\u1ed5i trang b\u1ecb \u0111\u1ea1o c\u1ee5. \nTr\u01b0\u1edbc khi k\u1ebft th\u00fac th\u1eddi gian ph\u00f3 b\u1ea3n ti\u00eau di\u1ec7t m\u1ecdi qu\u00e1i v\u1eadt s\u1ebd nh\u1eadn \u0111\u01b0\u1edbc x2 \u0111i\u1ec3m Vinh D\u1ef1!"

    .line 498
    .local v0, "info":Ljava/lang/String;
    return-object v0
.end method

.method public getIntegralInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, "nowScore":I
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 476
    .local v1, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 477
    const/16 v3, 0x44

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    .line 485
    :cond_0
    const-string v3, "Tr\u1eadn ph\u00f3 b\u1ea3n \u0111o\u00e0n \u0111\u1ed9i n\u00e0y \u0111i\u1ec3m Vinh D\u1ef1: /c00FF00%U/p\nS\u1ed1 qu\u00e1i qu\u00e2n \u0111o\u00e0n qu\u00e1i v\u1eadt c\u00f2n l\u1ea1i: /c00FF00%U/p\nT\u1ed5ng \u0111i\u1ec3m vinh d\u1ef1 c\u00e1 nh\u00e2n: /c00FF00%U/p\n\u0110i\u1ec3m vinh d\u1ef1 s\u1ebd k\u1ebft to\u00e1n sau khi ph\u00f3 b\u1ea3n k\u1ebft th\u00fac.\nTr\u01b0\u1edbc khi k\u1ebft th\u00fac th\u1eddi gian ph\u00f3 b\u1ea3n ti\u00eau di\u1ec7t m\u1ecdi qu\u00e1i v\u1eadt s\u1ebd nh\u1eadn \u0111\u01b0\u1edbc x2 t\u00edch \u0111i\u1ec3m!"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/TeamBoss;->scoreSum:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/TeamBoss;->getAllBossNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/TeamBoss;->scoreSum:I

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "info":Ljava/lang/String;
    return-object v0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 368
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 326
    iget-object v6, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v4

    .line 330
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 331
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 332
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 336
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 338
    iget-object v6, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 339
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 344
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 347
    iget-object v6, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 349
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 351
    iget-object v6, p0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 353
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/hz/main/Weather;->update(B)V

    .line 206
    invoke-direct {p0}, Lcom/hz/core/TeamBoss;->initUI()V

    .line 208
    invoke-direct {p0}, Lcom/hz/core/TeamBoss;->initSprite()V

    .line 209
    return-void
.end method

.method public isTimeOut()Z
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/core/TeamBoss;->endTime:J

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
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->logic()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/TeamBoss;->logicOther()V

    .line 383
    invoke-virtual {p0}, Lcom/hz/core/TeamBoss;->handleMouse()Z

    .line 384
    invoke-virtual {p0, p1}, Lcom/hz/core/TeamBoss;->handleKey(I)Z

    .line 387
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v0}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/core/TeamBoss;->nextSysnTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 393
    invoke-static {}, Lcom/hz/main/MsgHandler;->createTeamBossRefresh()Lcom/hz/net/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/TeamBoss;->nextSysnTime:J

    goto :goto_0
.end method

.method public logicOther()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 403
    invoke-direct {p0, v2}, Lcom/hz/core/TeamBoss;->isStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "V\u00e0o ph\u00f3 b\u1ea3n"

    invoke-virtual {p0}, Lcom/hz/core/TeamBoss;->getFirstInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 408
    invoke-virtual {p0, v2, v2}, Lcom/hz/core/TeamBoss;->setStatus(ZI)V

    .line 412
    :cond_0
    invoke-direct {p0, v4}, Lcom/hz/core/TeamBoss;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v5}, Lcom/hz/core/TeamBoss;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/hz/core/TeamBoss;->doAskContinue()V

    .line 414
    invoke-virtual {p0, v3, v4}, Lcom/hz/core/TeamBoss;->setStatus(ZI)V

    .line 415
    invoke-virtual {p0, v3, v5}, Lcom/hz/core/TeamBoss;->setStatus(ZI)V

    .line 417
    :cond_1
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 16
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->teamBossUI:Lcom/hz/ui/UIHandler;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 429
    :cond_0
    const/4 v5, 0x0

    .line 430
    .local v5, "drawX":I
    const/4 v6, 0x0

    .line 433
    .local v6, "drawY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/hz/core/TeamBoss;->myPos:B

    if-ltz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/hz/core/TeamBoss;->myPos:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/TeamBoss;->myPos:B

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/TeamBoss;->myPos:B

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    .line 436
    .local v14, "spriteX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/hz/core/TeamBoss;->myPos:B

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/TeamBoss;->bossXY:[[I

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/core/TeamBoss;->myPos:B

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget v2, v2, v3

    add-int v15, v1, v2

    .line 437
    .local v15, "spriteY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v14, v15}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 442
    .end local v14    # "spriteX":I
    .end local v15    # "spriteY":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/TeamBoss;->isTimeOut()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const/4 v2, 0x0

    const v3, 0xffffff

    const-string v4, "K\u1ebft th\u00fac"

    const/16 v7, 0x14

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 451
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/TeamBoss;->numSet:Lcom/hz/image/ImageSet;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/TeamBoss;->getAllBossNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x14

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v5, v1, v2

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/TeamBoss;->drawXY:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v6, v1, v2

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/core/TeamBoss;->numSet:Lcom/hz/image/ImageSet;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/core/TeamBoss;->scoreSum:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x14

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 461
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/hz/core/TeamBoss;->myPos:B

    if-gez v1, :cond_2

    .line 462
    const/4 v8, 0x0

    const v9, 0xffff00

    const-string v10, "H\u00e3y ch\u1ecdn qu\u00e2n \u0111o\u00e0n qu\u00e1i v\u1eadt t\u1ea5n c\u00f4ng "

    .line 463
    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v12, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    const/16 v13, 0x11

    move-object/from16 v7, p1

    .line 462
    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 465
    :cond_2
    return-void

    .line 447
    :cond_3
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/hz/core/TeamBoss;->endTime:J

    const/16 v7, 0x14

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIIIZ)V

    goto/16 :goto_0
.end method

.method public setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "index"    # I

    .prologue
    .line 78
    iget v0, p0, Lcom/hz/core/TeamBoss;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/TeamBoss;->status:I

    .line 79
    return-void
.end method
