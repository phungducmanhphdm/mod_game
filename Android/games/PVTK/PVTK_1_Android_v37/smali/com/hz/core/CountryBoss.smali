.class public Lcom/hz/core/CountryBoss;
.super Ljava/lang/Object;
.source "CountryBoss.java"


# static fields
.field private static final IMAGESET_ARMY:B = 0x6t

.field private static final IMAGESET_ATTACK_PALACE:B = 0x0t

.field private static final IMAGESET_ATTACK_VALUE:B = 0x9t

.field private static final IMAGESET_DEFEND_PALACE:B = 0xbt

.field private static final IMAGESET_DEFEND_VALUE:B = 0xat

.field public static final IMAGESET_DESTROY:B = 0x4t

.field private static final IMAGESET_ENEMY:B = 0x3t

.field private static final IMAGESET_HP_NO:B = 0x8t

.field private static final IMAGESET_HP_OK:B = 0x7t

.field private static final IMAGESET_NOPASS:B = 0x5t

.field private static final IMAGESET_TOWER:B = 0x2t

.field private static final IMAGESET_WALL:B = 0x1t

.field public static final STATUS_FIGHT_EXIT:I = 0x4

.field public static final STATUS_FIGHT_FAIL:I = 0x8

.field public static final STATUS_FIGHT_SCORE:I = 0x10

.field public static final STATUS_FIGHT_START:I = 0x2

.field private static final STATUS_FIRST_ENTER:I = 0x1

.field private static final SYSN_TIME:I = 0x1388


# instance fields
.field private bossList:[Lcom/hz/core/Boss;

.field public bossXY:[[I

.field public countryBossUI:Lcom/hz/ui/UIHandler;

.field public countryIron:I

.field public countryRock:I

.field public countryWood:I

.field public countryallIron:I

.field public countryallRock:I

.field public countryallWood:I

.field public countryallmoney1:I

.field public countryallmoney3:I

.field public countrymoney1:I

.field public countrymoney3:I

.field private devote:I

.field public drawXY:[[I

.field private endTime:J

.field public imageSet:Lcom/hz/image/ImageSet;

.field private myPos:B

.field private nextSysnTime:J

.field private nowdevote:I

.field public numSet:Lcom/hz/image/ImageSet;

.field private spriteModel:Lcom/hz/actor/Model;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    .line 69
    iput-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    .line 71
    iput-object v0, p0, Lcom/hz/core/CountryBoss;->imageSet:Lcom/hz/image/ImageSet;

    .line 73
    iput-object v0, p0, Lcom/hz/core/CountryBoss;->numSet:Lcom/hz/image/ImageSet;

    .line 75
    iput-object v0, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    .line 78
    iput-object v0, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/CountryBoss;->drawXY:[[I

    .line 34
    return-void
.end method

.method public static clearCountryBoss(Z)V
    .locals 2
    .param p0, "isCheckBattle"    # Z

    .prologue
    .line 689
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    .line 692
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hz/main/Weather;->update(B)V

    .line 701
    if-eqz p0, :cond_0

    .line 702
    sget v0, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 703
    const-string v0, "Qu\u1ed1c Gia C\u00f4ng Th\u00e0nh \u0111\u00e3 k\u1ebft th\u00fac, tr\u1eadn chi\u1ebfn tr\u01b0\u1edbc \u0111\u00f3 c\u1ee7a mi kh\u00f4ng th\u1ec3 nh\u1eadn c\u1ed1ng hi\u1ebfn, h\u00e3y r\u1eddi ph\u00f3 b\u1ea3n!"

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0
.end method

.method public static doCountryBossActivity()V
    .locals 8

    .prologue
    .line 871
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x38d6

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 872
    .local v2, "msgsee":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 877
    if-eqz v2, :cond_0

    .line 881
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 886
    .local v4, "rssee":B
    if-gez v4, :cond_2

    .line 887
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 892
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 895
    .local v5, "strinfo":Ljava/lang/String;
    const/16 v6, 0xf

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v5, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 896
    .local v0, "askResult":I
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 901
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 906
    new-instance v1, Lcom/hz/net/Message;

    const/16 v6, 0x38d5

    invoke-direct {v1, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 907
    .local v1, "msgreq":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 911
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 921
    .local v3, "rsreq":B
    if-gez v3, :cond_3

    .line 922
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 927
    :cond_3
    const-string v6, "Qu\u1ed1c gia \u0111\u00e3 k\u00edch ho\u1ea1t Qu\u1ed1c Gia C\u00f4ng Th\u00e0nh, sau khi h\u1ec7 th\u1ed1ng m\u1edf s\u1ef1 ki\u1ec7n n\u00e0y, m\u1ecdi th\u00e0nh vi\u00ean h\u00e3y t\u1edbi tham chi\u1ebfn \u0111\u00fang gi\u1edd."

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doCountryBossEnd(Lcom/hz/net/Message;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 627
    if-nez p0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 632
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 637
    .local v1, "isallkill":Z
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 642
    .local v0, "countryBufferValue":B
    iput-byte v0, v2, Lcom/hz/actor/Player;->countrypowerValue:B

    .line 644
    if-eqz v1, :cond_0

    .line 645
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/hz/core/CountryBoss;->clearCountryBoss(Z)V

    .line 646
    sget-object v3, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method public static doCountryBossGetScore(Lcom/hz/net/Message;)V
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 654
    if-nez p0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 664
    .local v0, "nowdevote":I
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    if-eqz v2, :cond_0

    .line 665
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iput v0, v2, Lcom/hz/core/CountryBoss;->nowdevote:I

    .line 666
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 668
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-virtual {v2, p0}, Lcom/hz/core/CountryBoss;->doEntryCountryBoss(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v2, v2, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    if-eqz v2, :cond_0

    .line 670
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v2, v2, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 671
    .local v1, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v1, :cond_0

    .line 672
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIObject;->setCountryBoss(Lcom/hz/core/CountryBoss;)V

    .line 673
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v2, v2, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hz/ui/UIHandler;->updateCountryBossUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0
.end method

.method public static doCountryBossQuit()V
    .locals 5

    .prologue
    .line 609
    const-string v2, "R\u1eddi Qu\u1ed1c Gia C\u00f4ng Th\u00e0nh"

    .line 610
    const-string v3, "\u0110\u1ed3ng \u00fd r\u1eddi Qu\u1ed1c Gia C\u00f4ng Th\u00e0nh?"

    const/4 v4, 0x3

    .line 609
    invoke-static {v2, v3, v4}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 611
    .local v0, "askResult":I
    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryBossQuit()Lcom/hz/net/Message;

    move-result-object v1

    .line 616
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/core/CountryBoss;->clearCountryBoss(Z)V

    goto :goto_0
.end method

.method public static doFight(Lcom/hz/core/CountryBoss;Lcom/hz/core/Boss;)V
    .locals 3
    .param p0, "countryBoss"    # Lcom/hz/core/CountryBoss;
    .param p1, "boss"    # Lcom/hz/core/Boss;

    .prologue
    .line 579
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/hz/core/CountryBoss;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    const-string v1, "Chi\u1ebfn \u0111\u1ea5u th\u1ea5t b\u1ea1i! Mi b\u1ecb bu\u1ed9c r\u1eddi kh\u1ecfi c\u1ee9 \u0111i\u1ec3m \u0111\u1ecbch! H\u00e3y v\u00e0o l\u1ea1i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 588
    iget-byte v1, p1, Lcom/hz/core/Boss;->id:B

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createCountryBossFight(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 589
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    .line 599
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->processRemoteBattleNotify(Lcom/hz/net/Message;)V

    .line 601
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    goto :goto_0
.end method

.method public static doFightAsk(Lcom/hz/ui/UIHandler;Lcom/hz/core/Boss;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "boss"    # Lcom/hz/core/Boss;

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p1}, Lcom/hz/core/Boss;->isOver()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    const-string v1, "Qu\u00e2n \u0111\u1ed9i c\u1ee7a mi \u0111\u00e3 th\u00e0nh c\u00f4ng c\u00f4ng h\u1ea1 th\u00e0nh tr\u00ec n\u00e0y!\nH\u00e3y t\u1edbi c\u1ee9 \u0111i\u1ec3m kh\u00e1c ti\u1ebfp t\u1ee5c chi\u1ebfn \u0111\u1ea5u, qu\u00e2n \u0111\u1ed3ng minh c\u1ea7n chi vi\u1ec7n!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 558
    :cond_1
    const-string v1, "T\u00e0i nguy\u00ean c\u1ee7a c\u1ee9 \u0111i\u1ec3m n\u00e0y: \n%U\n c\u00f2n l\u1ea1i %U quan \u0111\u1ed9i tr\u1ea5n th\u1ee7"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/hz/core/Boss;->getSourceInfo()Ljava/lang/String;

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

    .line 562
    .local v0, "info":Ljava/lang/String;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 563
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 564
    .local v2, "eventList":Ljava/util/Vector;
    const-string v1, "C\u00f4ng chi\u1ebfm c\u1ee9 \u0111i\u1ec3m"

    const/16 v3, 0x75f9

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 565
    const/16 v1, 0x93

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v6, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 567
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x35

    move-object v5, p0

    .line 567
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doQuitFight()V
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryBossNotFight()Lcom/hz/net/Message;

    move-result-object v0

    .line 535
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    .line 536
    return-void
.end method

.method public static doRefresh(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v2, 0x0

    .line 510
    if-nez p0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    sget-object v1, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    if-eqz v1, :cond_0

    .line 515
    sget-object v1, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-virtual {v1, p0}, Lcom/hz/core/CountryBoss;->doEntryCountryBoss(Lcom/hz/net/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    sget-object v1, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v1, v1, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_0

    .line 517
    sget-object v1, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v1, v1, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 518
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v0, :cond_0

    .line 519
    sget-object v1, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIObject;->setCountryBoss(Lcom/hz/core/CountryBoss;)V

    .line 520
    sget-object v1, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    iget-object v1, v1, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->updateCountryBossUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 524
    .end local v0    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_2
    invoke-static {v2}, Lcom/hz/core/CountryBoss;->clearCountryBoss(Z)V

    goto :goto_0
.end method

.method private initSprite()V
    .locals 5

    .prologue
    .line 229
    :try_start_0
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 230
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-nez v2, :cond_0

    .line 262
    .end local v2    # "myPlayer":Lcom/hz/actor/Player;
    :goto_0
    return-void

    .line 234
    .restart local v2    # "myPlayer":Lcom/hz/actor/Player;
    :cond_0
    const/4 v1, 0x0

    .line 236
    .local v1, "leaderSprite":Lcom/hz/sprite/GameSprite;
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v3

    invoke-static {v3}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 237
    .local v0, "leader":Lcom/hz/actor/Model;
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 241
    :cond_1
    if-nez v1, :cond_2

    .line 242
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 252
    :cond_2
    new-instance v3, Lcom/hz/actor/Model;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/hz/actor/Model;-><init>(B)V

    iput-object v3, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    .line 253
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setDir(B)V

    .line 254
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-static {v1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 255
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/actor/Model;->setAnimationByDir(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
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
    .line 196
    const/16 v0, 0x78

    :try_start_0
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    .line 197
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setCountryBoss(Lcom/hz/core/CountryBoss;)V

    .line 198
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 199
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 201
    const-string v0, "/common/"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/CountryBoss;->imageSet:Lcom/hz/image/ImageSet;

    .line 202
    const/16 v0, 0x7d1

    invoke-static {v0}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/CountryBoss;->numSet:Lcom/hz/image/ImageSet;

    .line 205
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 208
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 211
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->updateCountryBossUI(Lcom/hz/ui/UIHandler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isStatus(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/hz/core/CountryBoss;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public static processCountryBoss(ZLcom/hz/net/Message;)V
    .locals 3
    .param p0, "isactive"    # Z
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 272
    new-instance v0, Lcom/hz/core/CountryBoss;

    invoke-direct {v0}, Lcom/hz/core/CountryBoss;-><init>()V

    .line 273
    .local v0, "cocuntryboss":Lcom/hz/core/CountryBoss;
    if-eqz p0, :cond_3

    .line 274
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x38cd

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 275
    .local v1, "revicemsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    .end local v1    # "revicemsg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v1    # "revicemsg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v1}, Lcom/hz/core/CountryBoss;->doEntryCountryBoss(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    .end local v1    # "revicemsg":Lcom/hz/net/Message;
    :cond_2
    invoke-virtual {v0}, Lcom/hz/core/CountryBoss;->init()V

    .line 298
    sput-object v0, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    .line 299
    const/16 v2, 0x3d

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0

    .line 287
    :cond_3
    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Lcom/hz/core/CountryBoss;->doEntryCountryBoss(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public doAskContinue()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/4 v13, 0x0

    .line 726
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/hz/core/CountryBoss;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    const-string v1, "Chi\u1ebfn \u0111\u1ea5u th\u1ea5t b\u1ea1i! Mi b\u1ecb bu\u1ed9c r\u1eddi kh\u1ecfi c\u1ee9 \u0111i\u1ec3m \u0111\u1ecbch! H\u00e3y v\u00e0o l\u1ea1i!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    sget-object v7, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    .line 734
    .local v7, "countryBoss":Lcom/hz/core/CountryBoss;
    if-eqz v7, :cond_0

    .line 738
    iget-byte v1, v7, Lcom/hz/core/CountryBoss;->myPos:B

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Lcom/hz/core/CountryBoss;->getBossByIndex(I)Lcom/hz/core/Boss;

    move-result-object v6

    .line 740
    .local v6, "boss":Lcom/hz/core/Boss;
    if-eqz v6, :cond_0

    .line 745
    const-string v10, ""

    .line 746
    .local v10, "strscore":Ljava/lang/String;
    invoke-direct {p0, v14}, Lcom/hz/core/CountryBoss;->isStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 748
    iget v1, v7, Lcom/hz/core/CountryBoss;->nowdevote:I

    if-lez v1, :cond_2

    .line 749
    const-string v1, "Nh\u1eadn \u0111\u01b0\u1ee3c %U \u0111i\u1ec3m c\u1ed1ng hi\u1ebfn qu\u1ed1c gia.\n"

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/hz/core/CountryBoss;->nowdevote:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 752
    :cond_2
    invoke-virtual {p0, v13, v14}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 753
    iput v13, v7, Lcom/hz/core/CountryBoss;->nowdevote:I

    .line 756
    :cond_3
    const-string v0, ""

    .line 757
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/hz/core/Boss;->isOver()Z

    move-result v1

    if-nez v1, :cond_5

    .line 758
    const-string v1, "Mi \u0111\u00e1nh b\u1ea1i qu\u00e2n \u0111\u1ed9i \u0111\u1ecbch, c\u1ee9 \u0111i\u1ec3m \n%U c\u00f2n /cFFFFFF%U/p nh\u00f3m qu\u00e2n \u0111\u1ecbch."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v10, v3, v13

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v12, v6, Lcom/hz/core/Boss;->num:S

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    :goto_1
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 768
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 769
    .local v2, "eventList":Ljava/util/Vector;
    invoke-virtual {v6}, Lcom/hz/core/Boss;->isOver()Z

    move-result v1

    if-nez v1, :cond_4

    .line 770
    const-string v1, "Ti\u1ebfp t\u1ee5c c\u00f4ng chi\u1ebfm"

    const/16 v3, 0x75fa

    invoke-static {v8, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 773
    :cond_4
    const/16 v1, 0x93

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x75fb

    invoke-static {v8, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 775
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x36

    iget-object v5, v7, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    .line 775
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 778
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v11, :cond_0

    .line 779
    invoke-virtual {v11, v13, v14}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto/16 :goto_0

    .line 760
    .end local v2    # "eventList":Ljava/util/Vector;
    .end local v8    # "menuList":Ljava/util/Vector;
    .end local v11    # "ui":Lcom/hz/ui/UIHandler;
    :cond_5
    invoke-virtual {v7}, Lcom/hz/core/CountryBoss;->getSourceInfo()Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, "strresource":Ljava/lang/String;
    invoke-static {v9}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 762
    const-string v1, "\u0110o\u1ea1t \u0111\u01b0\u1ee3c t\u00e0i nguy\u00ean: \n%U\n"

    invoke-static {v1, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 764
    :cond_6
    const-string v1, "Qu\u00e2n \u0111\u1ed9i c\u1ee7a mi \u0111\u00e3 th\u00e0nh c\u00f4ng c\u00f4ng h\u1ea1 th\u00e0nh c\u1ee7a \u0111\u1ecbch!\n%UT\u1edbi c\u1ee9 \u0111i\u1ec3m ti\u1ebfp theo chi\u1ebfn \u0111\u1ea5u, qu\u00e2n \u0111\u1ed3ng minh c\u1ea7n chi vi\u1ec7n!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public doEntryCountryBoss(Lcom/hz/net/Message;)Z
    .locals 8
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 315
    .local v3, "rs":B
    if-lez v3, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v4

    .line 319
    :cond_1
    if-gez v3, :cond_2

    .line 320
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 325
    .local v2, "ishascountryboss":Z
    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/hz/core/CountryBoss;->endTime:J

    .line 335
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->devote:I

    .line 338
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countrymoney1:I

    .line 339
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countrymoney3:I

    .line 340
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryIron:I

    .line 341
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryWood:I

    .line 342
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryRock:I

    .line 344
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryallmoney1:I

    .line 345
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryallmoney3:I

    .line 346
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryallIron:I

    .line 347
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryallWood:I

    .line 348
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/core/CountryBoss;->countryallRock:I

    .line 350
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p0, Lcom/hz/core/CountryBoss;->myPos:B

    .line 352
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 353
    .local v0, "datasize":B
    if-lez v0, :cond_3

    .line 354
    new-array v4, v0, [Lcom/hz/core/Boss;

    iput-object v4, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_4

    .line 368
    .end local v1    # "i":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 356
    .restart local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    invoke-static {p1}, Lcom/hz/core/Boss;->fromBytesByCountryBoss(Lcom/hz/net/Message;)Lcom/hz/core/Boss;

    move-result-object v5

    aput-object v5, v4, v1

    .line 357
    iget-object v4, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v4, v4, v1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getAllBossNum()I
    .locals 4

    .prologue
    .line 850
    const/4 v1, 0x0

    .line 851
    .local v1, "count":I
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    if-eqz v3, :cond_0

    .line 852
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 862
    .end local v2    # "i":I
    :cond_0
    return v1

    .line 853
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v3, v2

    .line 854
    .local v0, "boss":Lcom/hz/core/Boss;
    if-eqz v0, :cond_2

    .line 855
    iget-short v3, v0, Lcom/hz/core/Boss;->num:S

    add-int/2addr v1, v3

    .line 852
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBattleLog()Ljava/lang/String;
    .locals 7

    .prologue
    .line 831
    const-string v0, ""

    .line 833
    .local v0, "strInfo":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->getSourceInfo()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "strresouce":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    const-string v2, "\u0110o\u1ea1t \u0111\u01b0\u1ee3c t\u00e0i nguy\u00ean: \n%U\n"

    invoke-static {v2, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 839
    :cond_0
    const-string v2, "Qu\u00e2n \u0111\u1ed9i \u0111\u1ecbch: %U\n nh\u1eadn \u0111\u01b0\u1ee3c c\u1ed1ng hi\u1ebfn qu\u1ed1c gia %U \u0111i\u1ec3m\n%U"

    .line 840
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->getAllBossNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/hz/core/CountryBoss;->devote:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 839
    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    return-object v0
.end method

.method public getBattleResource()Ljava/lang/String;
    .locals 7

    .prologue
    .line 816
    const-string v0, ""

    .line 819
    .local v0, "strInfo":Ljava/lang/String;
    const-string v1, "T\u00e0i nguy\u00ean chi\u1ebfn tr\u01b0\u1eddng:\nS\u1eaft %U/%U\n \u0110\u00e1U/%U\n G\u1ed7 %U/%U\n V\u00e0ng %U/%U\n \u0110\u1ed3ng  %U/%U"

    .line 820
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallIron:I

    iget v6, p0, Lcom/hz/core/CountryBoss;->countryIron:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallIron:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallRock:I

    iget v6, p0, Lcom/hz/core/CountryBoss;->countryRock:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallRock:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallWood:I

    iget v6, p0, Lcom/hz/core/CountryBoss;->countryWood:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallWood:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallmoney1:I

    iget v6, p0, Lcom/hz/core/CountryBoss;->countrymoney1:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallmoney1:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallmoney3:I

    iget v6, p0, Lcom/hz/core/CountryBoss;->countrymoney3:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hz/core/CountryBoss;->countryallmoney3:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 819
    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    return-object v0
.end method

.method public getBossByID(I)Lcom/hz/core/Boss;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    move-object v0, v2

    .line 144
    goto :goto_0

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v3, v1

    .line 140
    .local v0, "boss":Lcom/hz/core/Boss;
    if-eqz v0, :cond_3

    iget-byte v3, v0, Lcom/hz/core/Boss;->id:B

    if-eq v3, p1, :cond_0

    .line 138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getBossByIndex(I)Lcom/hz/core/Boss;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getBossByPos(I)Lcom/hz/core/Boss;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    move-object v0, v2

    .line 163
    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/hz/core/CountryBoss;->bossList:[Lcom/hz/core/Boss;

    aget-object v0, v3, v1

    .line 158
    .local v0, "boss":Lcom/hz/core/Boss;
    if-nez v0, :cond_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFirstInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    const-string v0, "H\u00e3y ch\u1ecdn c\u1ee9 \u0111i\u1ec3m \u0111\u1ecbch ti\u1ebfn h\u00e0nh t\u1ea5n c\u00f4ng. Chi\u1ebfn th\u1eafng s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c c\u1ed1ng hi\u1ebfn qu\u1ed1c gia. C\u00f4ng h\u1ea1 th\u00e0nh tr\u00ec \u0111\u1ecbch s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c t\u00e0i nguy\u00ean qu\u1ed1c gia!"

    .line 717
    .local v0, "info":Ljava/lang/String;
    return-object v0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 787
    const-string v0, ""

    .line 790
    .local v0, "getsourceinfo":Ljava/lang/String;
    iget v1, p0, Lcom/hz/core/CountryBoss;->countryIron:I

    if-lez v1, :cond_0

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "S\u1eaft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/CountryBoss;->countryIron:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :cond_0
    iget v1, p0, Lcom/hz/core/CountryBoss;->countryRock:I

    if-lez v1, :cond_1

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \n\u0110\u00e1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/CountryBoss;->countryRock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    :cond_1
    iget v1, p0, Lcom/hz/core/CountryBoss;->countryWood:I

    if-lez v1, :cond_2

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \nG\u1ed7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/CountryBoss;->countryWood:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    :cond_2
    iget v1, p0, Lcom/hz/core/CountryBoss;->countrymoney1:I

    if-lez v1, :cond_3

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \nKNB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/CountryBoss;->countrymoney1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_3
    iget v1, p0, Lcom/hz/core/CountryBoss;->countrymoney3:I

    if-lez v1, :cond_4

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \nB\u1ea1c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/CountryBoss;->countrymoney3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    :cond_4
    return-object v0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 452
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 410
    iget-object v6, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v4

    .line 414
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 415
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 416
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 420
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 422
    iget-object v6, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 423
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 428
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 431
    iget-object v6, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 433
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 435
    iget-object v6, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 437
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/hz/main/Weather;->update(B)V

    .line 183
    invoke-direct {p0}, Lcom/hz/core/CountryBoss;->initUI()V

    .line 185
    invoke-direct {p0}, Lcom/hz/core/CountryBoss;->initSprite()V

    .line 186
    return-void
.end method

.method public isTimeOut()Z
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/core/CountryBoss;->endTime:J

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
    .line 460
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->logic()V

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->logicOther()V

    .line 467
    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->handleMouse()Z

    .line 468
    invoke-virtual {p0, p1}, Lcom/hz/core/CountryBoss;->handleKey(I)Z

    .line 471
    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v0}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 474
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hz/core/CountryBoss;->nextSysnTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 477
    invoke-static {}, Lcom/hz/main/MsgHandler;->createCountryBossRefresh()Lcom/hz/net/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/CountryBoss;->nextSysnTime:J

    goto :goto_0
.end method

.method public logicOther()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 487
    invoke-direct {p0, v2}, Lcom/hz/core/CountryBoss;->isStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const-string v0, "V\u00e0o ph\u00f3 b\u1ea3n"

    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->getFirstInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 492
    invoke-virtual {p0, v2, v2}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 496
    :cond_0
    invoke-direct {p0, v4}, Lcom/hz/core/CountryBoss;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v5}, Lcom/hz/core/CountryBoss;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->doAskContinue()V

    .line 499
    invoke-virtual {p0, v3, v4}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 500
    invoke-virtual {p0, v3, v5}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 502
    :cond_1
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v6, 0x14

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->countryBossUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 381
    :cond_0
    const/4 v4, 0x0

    .line 382
    .local v4, "drawX":I
    const/4 v5, 0x0

    .line 385
    .local v5, "drawY":I
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-byte v0, p0, Lcom/hz/core/CountryBoss;->myPos:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v10, v0

    .line 387
    .local v10, "tempos":B
    iget-byte v0, p0, Lcom/hz/core/CountryBoss;->myPos:B

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/hz/core/CountryBoss;->myPos:B

    iget-object v2, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    array-length v2, v2

    if-gt v0, v2, :cond_1

    .line 388
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    aget-object v0, v0, v10

    aget v0, v0, v1

    iget-object v2, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    aget-object v2, v2, v10

    const/4 v3, 0x2

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v8, v0, v2

    .line 389
    .local v8, "spriteX":I
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    aget-object v0, v0, v10

    aget v0, v0, v7

    iget-object v2, p0, Lcom/hz/core/CountryBoss;->bossXY:[[I

    aget-object v2, v2, v10

    const/4 v3, 0x3

    aget v2, v2, v3

    add-int v9, v0, v2

    .line 390
    .local v9, "spriteY":I
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->spriteModel:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v0

    invoke-virtual {v0, p1, v8, v9}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 395
    .end local v8    # "spriteX":I
    .end local v9    # "spriteY":I
    .end local v10    # "tempos":B
    :cond_1
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->drawXY:[[I

    aget-object v0, v0, v1

    aget v4, v0, v1

    .line 396
    iget-object v0, p0, Lcom/hz/core/CountryBoss;->drawXY:[[I

    aget-object v0, v0, v1

    aget v5, v0, v7

    .line 397
    invoke-virtual {p0}, Lcom/hz/core/CountryBoss;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const v2, 0xffffff

    const-string v3, "K\u1ebft th\u00fac"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_2
    iget-wide v2, p0, Lcom/hz/core/CountryBoss;->endTime:J

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIIIZ)V

    goto :goto_0
.end method

.method public setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "index"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/hz/core/CountryBoss;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/CountryBoss;->status:I

    .line 98
    return-void
.end method
