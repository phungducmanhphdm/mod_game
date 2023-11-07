.class public Lcom/hz/battle/BattleAniEngine;
.super Ljava/lang/Object;
.source "BattleAniEngine.java"


# static fields
.field public static final BATTLE_BOTTOM_HEIGHT:I = 0x1e

.field public static final BATTLE_HSCREEN_LEFT_MINI:I = 0x50

.field public static final BATTLE_TOP_HEIGHT:I = 0x28

.field private static final BOREDER_MIN_DIS:B = 0x5t

.field public static final BUFF_ATTR_ADD:I = 0x0

.field public static final BUFF_ATTR_DEL:I = 0x1

.field public static final BUFF_BLEED:I = 0x3

.field public static final BUFF_FIRE:I = 0x6

.field public static final BUFF_HIDE:I = 0x2

.field public static final BUFF_IMAGE_SET:S = 0xas

.field public static final BUFF_IMMUNE:I = 0x8

.field public static final BUFF_INVINCI:I = 0x7

.field public static final BUFF_NEGATIVE_EFFECT:I = 0x4

.field public static final BUFF_POISON:I = 0x5

.field public static final COORD_X:B = 0x0t

.field public static final COORD_Y:B = 0x1t

.field public static final DEFAULT_DELAY_TIME:I = 0x8

.field private static final END_COUNT:I = 0x17

.field private static final INTERVAL_NEXT_BATTLE_TIME:J = 0x2710L

.field private static final MAX_OFFSET_Y:B = 0xct

.field private static final POLL_INTERVAL:J = 0x1388L

.field public static final POS_DATA_SIZE:I = 0x4

.field public static final POS_LEFT_HEIGHT:I = 0x0

.field public static final POS_LEFT_SPACE:I = 0x2

.field public static final POS_MIN_HEIGHT:B = 0x28t

.field public static final POS_MIN_WIDTH:B = 0x1et

.field public static final POS_RIGHT_HEIGHT:I = 0x1

.field public static final POS_RIGHT_SPACE:I = 0x3

.field private static final SIDE_POS_MIN_WIDTH:B = 0x3ct

.field protected static final TAG_ALL_END:B = 0x1t

.field protected static final TAG_HAVE_MY_PET:B = 0x10t

.field protected static final TAG_IS_AUTO_FIGHT:I = 0x1000

.field protected static final TAG_IS_BATTLE_SEE:I = 0x800

.field protected static final TAG_IS_GUIDE_ATTACK_MENU:I = 0x200

.field protected static final TAG_IS_GUIDE_ATTACK_TARGET:I = 0x400

.field public static final TAG_IS_ORDER_POP:I = 0x80

.field public static final TAG_IS_WORKER_START:I = 0x100

.field protected static final TAG_MAP_INIT:B = 0x4t

.field protected static final TAG_PET_ORDER:B = 0x20t

.field protected static final TAG_PLAYER_PLAN_END:B = 0x2t

.field protected static final TAG_REMOTE_SEND:B = 0x8t

.field public static final TAG_REMOTE_SEND_WAITING:B = 0x40t

.field protected static final TAG_WAITING_NEXT_BATTLE:I = 0x2000


# instance fields
.field private animationControlList:Ljava/util/Vector;

.field public baseCurSprite:Lcom/hz/sprite/GameSprite;

.field private battle:Lcom/hz/battle/Battle;

.field battleHeight:I

.field public battlePanel:Lcom/hz/battle/BattlePanel;

.field private battlePosition:[[S

.field battleWidth:I

.field battleX:I

.field battleY:I

.field public buffSet:Lcom/hz/image/ImageSet;

.field public criticalImage:Ljavax/microedition/lcdui/Image;

.field public effHitSprite:Lcom/hz/sprite/GameSprite;

.field public effMagicFieldSprite:Lcom/hz/sprite/GameSprite;

.field endCounter:I

.field frontPlayerVector:Ljava/util/Vector;

.field public lostImage:Ljavax/microedition/lcdui/Image;

.field private map:Lcom/hz/map/GameMap;

.field nextPollTime:J

.field okImage:Ljavax/microedition/lcdui/Image;

.field planSequenceList:Ljava/util/Vector;

.field playersColumn1:[Lcom/hz/actor/Player;

.field playersColumn2:[Lcom/hz/actor/Player;

.field playersColumn3:[Lcom/hz/actor/Player;

.field playersColumn4:[Lcom/hz/actor/Player;

.field posData:[S

.field public startHP:I

.field public startMP:I

.field private tagValue:I

.field waitNextBattleTime:J

.field public winImage:Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Lcom/hz/battle/Battle;Lcom/hz/map/GameMap;)V
    .locals 22
    .param p1, "_battle"    # Lcom/hz/battle/Battle;
    .param p2, "_map"    # Lcom/hz/map/GameMap;

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    .line 141
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/hz/actor/Player;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->playersColumn1:[Lcom/hz/actor/Player;

    .line 142
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/hz/actor/Player;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->playersColumn2:[Lcom/hz/actor/Player;

    .line 143
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/hz/actor/Player;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->playersColumn3:[Lcom/hz/actor/Player;

    .line 144
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/hz/actor/Player;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->playersColumn4:[Lcom/hz/actor/Player;

    .line 607
    const/4 v3, 0x2

    const/16 v8, 0x22

    filled-new-array {v3, v8}, [I

    move-result-object v3

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->battlePosition:[[S

    .line 623
    const/4 v3, 0x4

    new-array v3, v3, [S

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    .line 741
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    .line 852
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/hz/battle/BattleAniEngine;->nextPollTime:J

    .line 1710
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    .line 269
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/battle/BattleAniEngine;->map:Lcom/hz/map/GameMap;

    .line 270
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    .line 271
    new-instance v3, Lcom/hz/battle/BattlePanel;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/hz/battle/BattlePanel;-><init>(Lcom/hz/battle/BattleAniEngine;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    .line 280
    const-string v3, "/common/bo.png"

    invoke-static {v3}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->criticalImage:Ljavax/microedition/lcdui/Image;

    .line 282
    const-string v3, "/common/bwin.png"

    invoke-static {v3}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->winImage:Ljavax/microedition/lcdui/Image;

    .line 284
    const-string v3, "/common/blost.png"

    invoke-static {v3}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->lostImage:Ljavax/microedition/lcdui/Image;

    .line 286
    const-string v3, "/common/ok.png"

    invoke-static {v3}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->okImage:Ljavax/microedition/lcdui/Image;

    .line 289
    const-string v3, "/common/"

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->buffSet:Lcom/hz/image/ImageSet;

    .line 291
    const/16 v3, 0x4b7

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/hz/sprite/GameSprite;->createSprite(IZ)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->baseCurSprite:Lcom/hz/sprite/GameSprite;

    .line 292
    const/16 v3, 0x517

    invoke-static {v3}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->effHitSprite:Lcom/hz/sprite/GameSprite;

    .line 293
    const/16 v3, 0x4c9

    invoke-static {v3}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hz/battle/BattleAniEngine;->effMagicFieldSprite:Lcom/hz/sprite/GameSprite;

    .line 296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    .line 297
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    .line 298
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/battle/BattleAniEngine;->battleWidth:I

    .line 299
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/hz/battle/BattleAniEngine;->battleHeight:I

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v3}, Lcom/hz/battle/Battle;->getRowLeft()I

    move-result v9

    .line 302
    .local v9, "rowLeft":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v3}, Lcom/hz/battle/Battle;->getRowRight()I

    move-result v16

    .line 307
    .local v16, "rowRight":I
    const/16 v21, 0x28

    .line 308
    .local v21, "topOffset":I
    const/16 v18, 0x1e

    .line 311
    .local v18, "bottomOffset":I
    sget v3, Lcom/hz/main/GameView;->topImgHeight:I

    move/from16 v0, v21

    if-le v3, v0, :cond_0

    .line 312
    sget v21, Lcom/hz/main/GameView;->topImgHeight:I

    .line 314
    :cond_0
    sget v3, Lcom/hz/main/GameView;->bottomImgHeight:I

    move/from16 v0, v18

    if-le v3, v0, :cond_1

    .line 315
    sget v18, Lcom/hz/main/GameView;->bottomImgHeight:I

    .line 319
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    .line 320
    .local v4, "initX":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/hz/battle/BattleAniEngine;->battleWidth:I

    .line 335
    .local v6, "initWidth":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    add-int v5, v3, v21

    .line 336
    .local v5, "initY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/battle/BattleAniEngine;->battleHeight:I

    sub-int v3, v3, v21

    sub-int v7, v3, v18

    .line 338
    .local v7, "initHeight":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/hz/battle/BattleAniEngine;->getOffsetY(II)I

    move-result v8

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/hz/battle/BattleAniEngine;->initBattlePosition(IIIIIIZ)V

    .line 339
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/hz/battle/BattleAniEngine;->getOffsetY(II)I

    move-result v15

    const/16 v17, 0x1

    move-object/from16 v10, p0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v10 .. v17}, Lcom/hz/battle/BattleAniEngine;->initBattlePosition(IIIIIIZ)V

    .line 342
    const/16 v20, 0x0

    .local v20, "pos":I
    :goto_0
    const/16 v3, 0x22

    move/from16 v0, v20

    if-lt v0, v3, :cond_2

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/hz/battle/BattleAniEngine;->check()V

    .line 348
    return-void

    .line 343
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v19

    .line 344
    .local v19, "p":Lcom/hz/actor/Player;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/hz/battle/BattleAniEngine;->addBattlePlayer(Lcom/hz/actor/Player;I)V

    .line 342
    add-int/lit8 v20, v20, 0x1

    goto :goto_0
.end method

.method private final addBattlePlayer(Lcom/hz/actor/Player;I)V
    .locals 5
    .param p1, "p"    # Lcom/hz/actor/Player;
    .param p2, "_position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 550
    if-nez p1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p1, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    .line 554
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p1, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    .line 555
    int-to-byte v0, p2

    iput-byte v0, p1, Lcom/hz/actor/Player;->position:B

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/hz/battle/BattleAniEngine;->setColumnPlayer(Lcom/hz/actor/Player;I)V

    .line 559
    invoke-direct {p0, p1}, Lcom/hz/battle/BattleAniEngine;->createBattlePlayerSprite(Lcom/hz/actor/Player;)V

    .line 562
    instance-of v0, p1, Lcom/hz/actor/Monster;

    if-nez v0, :cond_2

    .line 563
    invoke-virtual {p1}, Lcom/hz/actor/Player;->checkHPMP()V

    .line 567
    :cond_2
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-ne p1, v0, :cond_3

    .line 568
    iget v0, p1, Lcom/hz/actor/Player;->hp:I

    iput v0, p0, Lcom/hz/battle/BattleAniEngine;->startHP:I

    .line 569
    iget v0, p1, Lcom/hz/actor/Player;->mp:I

    iput v0, p0, Lcom/hz/battle/BattleAniEngine;->startMP:I

    .line 572
    :cond_3
    iget v0, p1, Lcom/hz/actor/Player;->hp:I

    iput v0, p1, Lcom/hz/actor/Player;->hpDisplay:I

    .line 573
    iget v0, p1, Lcom/hz/actor/Player;->mp:I

    iput v0, p1, Lcom/hz/actor/Player;->mpDisplay:I

    .line 575
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->baseCurSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v0}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p1, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    .line 576
    iget-object v0, p1, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    .line 578
    invoke-static {p2}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 580
    iget-object v0, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 588
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_5

    .line 589
    iget-object v0, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {p0, p2, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v1

    .line 590
    invoke-virtual {p0, p2, v3}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v2

    .line 589
    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 592
    :cond_5
    iget-object v0, p1, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {p0, p2, v4}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v1

    .line 593
    invoke-virtual {p0, p2, v3}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v2

    .line 592
    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 596
    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/hz/actor/Player;->isDead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :cond_6
    iget-object v0, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, v4}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    goto/16 :goto_0

    .line 585
    :cond_7
    iget-object v0, p1, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, v3}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    goto :goto_1
.end method

.method private final check()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->checkBattleSee()V

    .line 360
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->checkMyPetInBattle()V

    .line 365
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->checkArenaFight()V

    .line 367
    return-void
.end method

.method private final checkArenaFight()V
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const-string v0, "Thi \u0111\u1ea5u b\u1eaft \u0111\u1ea7u, h\u00e3y ch\u00fa \u00fd chi\u1ebfn \u0111\u1ea5u."

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final checkBattleSee()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 394
    iget-object v3, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/battle/BattlePanel;->setSeeBattleGwidgetShow(Z)V

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v3}, Lcom/hz/battle/Battle;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 404
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v0, :cond_1

    .line 409
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_1
    const/16 v3, 0x22

    if-lt v2, v3, :cond_3

    .line 424
    const/16 v3, 0x800

    invoke-virtual {p0, v3, v5}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 425
    const-string v3, "Mi v\u00e0o xem chi\u1ebfn "

    const v4, 0xff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v3, v5}, Lcom/hz/battle/BattlePanel;->setSeeBattleGwidgetShow(Z)V

    goto :goto_0

    .line 410
    :cond_3
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 411
    .local v1, "p":Lcom/hz/actor/Player;
    if-nez v1, :cond_5

    .line 409
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    :cond_5
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 418
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getId()I

    move-result v4

    if-ne v3, v4, :cond_4

    goto :goto_0
.end method

.method private final checkMyPetInBattle()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 436
    const/4 v5, 0x0

    invoke-virtual {p0, v7, v5}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 438
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 439
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-byte v1, v0, Lcom/hz/actor/Player;->position:B

    .line 444
    .local v1, "myPos":B
    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    .line 445
    .local v2, "myPosPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {v2}, Lcom/hz/actor/Player;->getId()I

    move-result v5

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 454
    const/4 v4, -0x1

    .line 455
    .local v4, "petPosition":I
    invoke-static {v1}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    add-int/lit8 v4, v1, 0x1

    .line 461
    :goto_1
    invoke-virtual {p0, v4}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v3

    .line 462
    .local v3, "pet":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v3}, Lcom/hz/actor/Player;->getType()B

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 470
    const/4 v5, 0x1

    invoke-virtual {p0, v7, v5}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 472
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v5, :cond_0

    .line 473
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v5, v3}, Lcom/hz/battle/BattlePanel;->setOrderPet(Lcom/hz/actor/Player;)V

    .line 475
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v5}, Lcom/hz/battle/BattlePanel;->checkPetGWidgetShow()V

    goto :goto_0

    .line 458
    .end local v3    # "pet":Lcom/hz/actor/Player;
    :cond_2
    add-int/lit8 v4, v1, -0x1

    goto :goto_1
.end method

.method private final createBattlePlayerSprite(Lcom/hz/actor/Player;)V
    .locals 6
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    const/16 v5, 0x4d0

    const/4 v4, 0x1

    .line 502
    if-nez p1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 511
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getIcon1()I

    move-result v1

    .line 514
    .local v1, "icon":I
    invoke-static {v1}, Lcom/hz/main/FragmentData;->isServerSpr(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 515
    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    iput-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_0

    .line 520
    :cond_2
    invoke-static {v1}, Lcom/hz/main/FragmentData;->getSprByID(I)Lcom/hz/main/FragmentData;

    move-result-object v0

    .line 521
    .local v0, "dataObject":Lcom/hz/main/FragmentData;
    if-eqz v0, :cond_3

    .line 522
    invoke-static {v1, v4}, Lcom/hz/sprite/GameSprite;->createWorkerSprite(IZ)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    iput-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_0

    .line 527
    :cond_3
    invoke-static {v5}, Lcom/hz/sprite/GameSprite;->createSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    iput-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_0

    .line 531
    .end local v0    # "dataObject":Lcom/hz/main/FragmentData;
    .end local v1    # "icon":I
    :cond_4
    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    iput-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 532
    iget-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-nez v2, :cond_0

    .line 533
    invoke-static {v5}, Lcom/hz/sprite/GameSprite;->createSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    iput-object v2, p1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_0
.end method

.method private final doBattleAnimations()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1431
    invoke-virtual {p0, v11, v11}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1432
    invoke-virtual {p0, v13, v11}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1434
    iget-object v9, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->removeAllElements()V

    .line 1435
    iget-object v9, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-object v5, v9, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 1437
    .local v5, "pList":[Lcom/hz/actor/Player;
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_0
    const/16 v9, 0x22

    if-lt v6, v9, :cond_0

    .line 1500
    iget-object v9, p0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_9

    .line 1519
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->makeBattleAnim()V

    .line 1520
    return-void

    .line 1438
    .end local v2    # "i":I
    :cond_0
    aget-object v4, v5, v6

    .line 1439
    .local v4, "p":Lcom/hz/actor/Player;
    if-nez v4, :cond_2

    .line 1437
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1443
    :cond_2
    iget-object v0, v4, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 1444
    .local v0, "battleSprite":Lcom/hz/sprite/GameSprite;
    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {v0}, Lcom/hz/sprite/GameSprite;->action()V

    .line 1448
    iget-object v9, v4, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    if-eqz v9, :cond_3

    .line 1449
    iget-object v9, v4, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    invoke-virtual {v9}, Lcom/hz/core/MessageFrame;->logic()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1450
    const/4 v9, 0x0

    iput-object v9, v4, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    .line 1455
    :cond_3
    iget-object v9, v4, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 1456
    iget-object v9, v4, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    invoke-virtual {v9, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/battle/AnimationControl;

    .line 1457
    .local v1, "control":Lcom/hz/battle/AnimationControl;
    if-nez v1, :cond_7

    .line 1458
    iget-object v9, v4, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1471
    .end local v1    # "control":Lcom/hz/battle/AnimationControl;
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/hz/sprite/GameSprite;->isFront()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1472
    iget-object v9, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1476
    :cond_5
    iget-object v9, v4, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    .line 1477
    .local v7, "size":I
    add-int/lit8 v3, v7, -0x1

    .local v3, "index":I
    :goto_3
    if-ltz v3, :cond_1

    .line 1478
    iget-object v9, v4, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/sprite/GameSprite;

    .line 1479
    .local v8, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v8, :cond_8

    .line 1477
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1461
    .end local v3    # "index":I
    .end local v7    # "size":I
    .end local v8    # "sprite":Lcom/hz/sprite/GameSprite;
    .restart local v1    # "control":Lcom/hz/battle/AnimationControl;
    :cond_7
    invoke-virtual {p0, v11, v12}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1462
    invoke-virtual {p0, v13, v12}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1464
    invoke-virtual {v1}, Lcom/hz/battle/AnimationControl;->action()V

    .line 1465
    invoke-virtual {v1}, Lcom/hz/battle/AnimationControl;->isDone()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1466
    iget-object v9, v4, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1483
    .end local v1    # "control":Lcom/hz/battle/AnimationControl;
    .restart local v3    # "index":I
    .restart local v7    # "size":I
    .restart local v8    # "sprite":Lcom/hz/sprite/GameSprite;
    :cond_8
    invoke-virtual {p0, v11, v12}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1485
    invoke-virtual {v8}, Lcom/hz/sprite/GameSprite;->action()V

    .line 1486
    invoke-virtual {v8}, Lcom/hz/sprite/GameSprite;->isMotionAlive()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1487
    iget-object v9, v4, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1490
    iget-object v9, v4, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    if-ne v8, v9, :cond_6

    .line 1491
    invoke-virtual {v8, v11}, Lcom/hz/sprite/GameSprite;->setMotionAlive(Z)V

    .line 1492
    iget-short v9, v0, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget-short v10, v0, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v8, v9, v10}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    goto :goto_4

    .line 1501
    .end local v0    # "battleSprite":Lcom/hz/sprite/GameSprite;
    .end local v3    # "index":I
    .end local v4    # "p":Lcom/hz/actor/Player;
    .end local v7    # "size":I
    .end local v8    # "sprite":Lcom/hz/sprite/GameSprite;
    .restart local v2    # "i":I
    :cond_9
    iget-object v9, p0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/battle/AnimationControl;

    .line 1502
    .restart local v1    # "control":Lcom/hz/battle/AnimationControl;
    if-nez v1, :cond_b

    .line 1500
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 1507
    :cond_b
    iget-byte v9, v1, Lcom/hz/battle/AnimationControl;->type:B

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    .line 1508
    invoke-virtual {p0, v13, v12}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1511
    :cond_c
    invoke-virtual {p0, v11, v12}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1513
    invoke-virtual {v1}, Lcom/hz/battle/AnimationControl;->action()V

    .line 1514
    invoke-virtual {v1}, Lcom/hz/battle/AnimationControl;->isDone()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1515
    iget-object v9, p0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private final drawBattlePlayer(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1716
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    invoke-static {v2}, Lcom/hz/battle/BattleAniEngine;->sortModelList(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    .line 1719
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn1:[Lcom/hz/actor/Player;

    invoke-direct {p0, p1, v2}, Lcom/hz/battle/BattleAniEngine;->drawColModel(Ljavax/microedition/lcdui/Graphics;[Lcom/hz/actor/Player;)V

    .line 1720
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn2:[Lcom/hz/actor/Player;

    invoke-direct {p0, p1, v2}, Lcom/hz/battle/BattleAniEngine;->drawColModel(Ljavax/microedition/lcdui/Graphics;[Lcom/hz/actor/Player;)V

    .line 1723
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn4:[Lcom/hz/actor/Player;

    invoke-direct {p0, p1, v2}, Lcom/hz/battle/BattleAniEngine;->drawColModel(Ljavax/microedition/lcdui/Graphics;[Lcom/hz/actor/Player;)V

    .line 1724
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn3:[Lcom/hz/actor/Player;

    invoke-direct {p0, p1, v2}, Lcom/hz/battle/BattleAniEngine;->drawColModel(Ljavax/microedition/lcdui/Graphics;[Lcom/hz/actor/Player;)V

    .line 1727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1731
    return-void

    .line 1728
    :cond_0
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Player;

    .line 1729
    .local v1, "p":Lcom/hz/actor/Player;
    invoke-direct {p0, p1, v1}, Lcom/hz/battle/BattleAniEngine;->drawPlayer(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Player;)V

    .line 1727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final drawColModel(Ljavax/microedition/lcdui/Graphics;[Lcom/hz/actor/Player;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "playerList"    # [Lcom/hz/actor/Player;

    .prologue
    .line 1735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 1752
    return-void

    .line 1736
    :cond_0
    aget-object v1, p2, v0

    .line 1737
    .local v1, "p":Lcom/hz/actor/Player;
    if-nez v1, :cond_2

    .line 1735
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1741
    :cond_2
    iget-object v2, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v2, :cond_1

    .line 1746
    iget-object v2, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v2}, Lcom/hz/sprite/GameSprite;->isFront()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1750
    invoke-direct {p0, p1, v1}, Lcom/hz/battle/BattleAniEngine;->drawPlayer(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Player;)V

    goto :goto_1
.end method

.method private final drawPlayer(Ljavax/microedition/lcdui/Graphics;Lcom/hz/actor/Player;)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "p"    # Lcom/hz/actor/Player;

    .prologue
    .line 1756
    iget-object v2, p2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 1758
    .local v2, "battleSprite":Lcom/hz/sprite/GameSprite;
    if-nez v2, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget v7, p0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    iget v8, p0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    invoke-virtual {v2, p1, v7, v8}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 1764
    invoke-virtual {v2}, Lcom/hz/sprite/GameSprite;->isSpriteVisible()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Lcom/hz/actor/Player;->isDead()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1765
    iget-object v7, p2, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    iget v8, p0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    iget v9, p0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    invoke-virtual {v7, p1, v8, v9}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 1769
    :cond_2
    iget-object v7, p2, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1770
    .local v5, "size":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "index":I
    :goto_1
    if-gez v3, :cond_6

    .line 1776
    iget-object v7, p2, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    if-eqz v7, :cond_5

    .line 1777
    const/4 v4, 0x0

    .line 1778
    .local v4, "off_x":I
    invoke-virtual {p2}, Lcom/hz/actor/Player;->getType()B

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    invoke-virtual {p2}, Lcom/hz/actor/Player;->getType()B

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_4

    .line 1779
    :cond_3
    iget-byte v7, p2, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1780
    const/16 v4, 0x1e

    .line 1786
    :cond_4
    :goto_2
    iget v7, p0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    iget-short v8, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    add-int/2addr v7, v8

    add-int v0, v7, v4

    .line 1787
    .local v0, "_x":I
    iget v7, p0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    iget-short v8, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    add-int/2addr v7, v8

    add-int/lit8 v1, v7, -0x3c

    .line 1788
    .local v1, "_y":I
    iget-object v8, p2, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    iget-byte v7, p2, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x3

    :goto_3
    invoke-virtual {v8, v0, v1, v7}, Lcom/hz/core/MessageFrame;->doUpdate(III)V

    .line 1792
    .end local v0    # "_x":I
    .end local v1    # "_y":I
    .end local v4    # "off_x":I
    :cond_5
    iget-object v7, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-byte v8, p2, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v7, v8}, Lcom/hz/battle/Battle;->isWaitStatus(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1794
    iget-object v7, p0, Lcom/hz/battle/BattleAniEngine;->okImage:Ljavax/microedition/lcdui/Image;

    .line 1795
    iget v8, p0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    iget-short v9, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    add-int/2addr v8, v9

    .line 1796
    iget v9, p0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    iget-short v10, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0xa

    .line 1797
    const/16 v10, 0x21

    .line 1794
    invoke-static {p1, v7, v8, v9, v10}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    .line 1771
    :cond_6
    iget-object v7, p2, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/sprite/GameSprite;

    .line 1772
    .local v6, "sprite":Lcom/hz/sprite/GameSprite;
    iget v7, p0, Lcom/hz/battle/BattleAniEngine;->battleX:I

    iget v8, p0, Lcom/hz/battle/BattleAniEngine;->battleY:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 1770
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1782
    .end local v6    # "sprite":Lcom/hz/sprite/GameSprite;
    .restart local v4    # "off_x":I
    :cond_7
    const/16 v4, -0x1e

    goto :goto_2

    .line 1788
    .restart local v0    # "_x":I
    .restart local v1    # "_y":I
    :cond_8
    const/4 v7, 0x1

    goto :goto_3
.end method

.method private final drawRound(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1826
    iget-object v3, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-byte v1, v3, Lcom/hz/battle/Battle;->round:B

    .line 1828
    .local v1, "round":I
    const-string v3, "Hi\u1ec7p %U"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1829
    .local v2, "roundString":Ljava/lang/String;
    const v3, 0xfef8b6

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1831
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v0, v3, -0x1

    .line 1835
    .local v0, "drawRightX":I
    add-int/lit8 v3, v0, -0xd

    const/16 v4, 0x9

    const/16 v5, 0x18

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 1837
    return-void
.end method

.method private final drawTime(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1701
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-wide v1, v0, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 1707
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v3, v0, -0x28

    const/16 v4, 0x23

    const/16 v5, 0x11

    move-object v0, p1

    .line 1706
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIII)V

    goto :goto_0
.end method

.method private final drawUIInfo(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Lcom/hz/battle/BattleAniEngine;->drawRound(Ljavax/microedition/lcdui/Graphics;)V

    .line 1822
    return-void
.end method

.method private final exit()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x1

    .line 1072
    sget-object v4, Lcom/hz/main/GameCanvas;->countryWar:Lcom/hz/core/CountryWar;

    if-eqz v4, :cond_0

    .line 1073
    const/16 v2, 0x33

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 1151
    :goto_0
    return-void

    .line 1077
    :cond_0
    sget-object v4, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    if-eqz v4, :cond_2

    .line 1078
    sget-object v4, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->isWin()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2, v7}, Lcom/hz/core/TeamBoss;->setStatus(ZI)V

    .line 1079
    sget-object v2, Lcom/hz/main/GameCanvas;->teamBoss:Lcom/hz/core/TeamBoss;

    invoke-virtual {v2, v3, v6}, Lcom/hz/core/TeamBoss;->setStatus(ZI)V

    .line 1080
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1078
    goto :goto_1

    .line 1083
    :cond_2
    sget-object v4, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    if-eqz v4, :cond_4

    .line 1084
    sget-object v4, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->isWin()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2, v7}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 1085
    sget-object v2, Lcom/hz/main/GameCanvas;->countryBoss:Lcom/hz/core/CountryBoss;

    invoke-virtual {v2, v3, v6}, Lcom/hz/core/CountryBoss;->setStatus(ZI)V

    .line 1086
    const/16 v2, 0x3e

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1084
    goto :goto_2

    .line 1089
    :cond_4
    sget-object v2, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    if-eqz v2, :cond_7

    .line 1091
    const/16 v2, 0x800

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1092
    sget-object v2, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    invoke-virtual {v2, v3, v5}, Lcom/hz/core/Arena;->setStatus(ZI)V

    .line 1104
    :goto_3
    const/16 v2, 0x37

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto :goto_0

    .line 1096
    :cond_5
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->isWin()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1097
    sget-object v2, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    invoke-virtual {v2, v3, v3}, Lcom/hz/core/Arena;->setStatus(ZI)V

    goto :goto_3

    .line 1101
    :cond_6
    sget-object v2, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    invoke-virtual {v2, v3, v6}, Lcom/hz/core/Arena;->setStatus(ZI)V

    goto :goto_3

    .line 1109
    :cond_7
    sget-object v2, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    if-eqz v2, :cond_8

    .line 1111
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->isWin()Z

    .line 1117
    const/16 v2, 0x45

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 1118
    sget-object v2, Lcom/hz/main/GameCanvas;->newArena:Lcom/hz/core/NewArena;

    iput-boolean v3, v2, Lcom/hz/core/NewArena;->isAlert:Z

    .line 1119
    invoke-static {v3}, Lcom/hz/core/NewArena;->doEnter(Z)V

    goto :goto_0

    .line 1123
    :cond_8
    sget-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-eqz v2, :cond_b

    .line 1124
    const/16 v2, 0x800

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1127
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->isWin()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1128
    sget-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    invoke-virtual {v2, v3, v3}, Lcom/hz/core/SkyArena;->setStatus(ZI)V

    .line 1135
    :cond_9
    :goto_4
    const/16 v2, 0x3b

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_0

    .line 1132
    :cond_a
    sget-object v2, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    invoke-virtual {v2, v3, v5}, Lcom/hz/core/SkyArena;->setStatus(ZI)V

    goto :goto_4

    .line 1139
    :cond_b
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v2}, Lcom/hz/battle/Battle;->getType()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1140
    invoke-static {}, Lcom/hz/main/GameCanvas;->getEscort()Lcom/hz/core/Escort;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1142
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    add-long v0, v2, v4

    .line 1143
    .local v0, "minNextTime":J
    sget-wide v2, Lcom/hz/main/GameWorld;->nextBattleTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_d

    .line 1144
    sput-wide v0, Lcom/hz/main/GameWorld;->nextBattleTime:J

    .line 1146
    :cond_d
    const/16 v2, 0x14

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_0

    .line 1149
    .end local v0    # "minNextTime":J
    :cond_e
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_0
.end method

.method public static getBufferImageIndex(I)I
    .locals 1
    .param p0, "buffID"    # I

    .prologue
    const/4 v0, 0x0

    .line 218
    packed-switch p0, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    return v0

    .line 220
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 222
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 224
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 226
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 240
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 250
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 252
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private final getOffsetY(II)I
    .locals 4
    .param p1, "initHeight"    # I
    .param p2, "maxRow"    # I

    .prologue
    .line 482
    if-eqz p2, :cond_0

    const/16 v3, 0xa

    if-lt p2, v3, :cond_2

    .line 483
    :cond_0
    const/4 v1, 0x0

    .line 497
    :cond_1
    :goto_0
    return v1

    .line 485
    :cond_2
    const/4 v1, 0x0

    .line 486
    .local v1, "petOffsetY":I
    mul-int/lit8 v0, p2, 0x28

    .line 488
    .local v0, "minHeight":I
    if-le p1, v0, :cond_1

    .line 490
    sub-int v3, p1, v0

    div-int v2, v3, p2

    .line 491
    .local v2, "spaceHeight":I
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 493
    :cond_3
    move v1, v2

    .line 494
    const/16 v3, 0xc

    if-lt v1, v3, :cond_1

    .line 495
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private final initBattlePosition(IIIIIIZ)V
    .locals 21
    .param p1, "_battleX"    # I
    .param p2, "_battleY"    # I
    .param p3, "_battleWidth"    # I
    .param p4, "_battleHeight"    # I
    .param p5, "petOffsetY"    # I
    .param p6, "maxRow"    # I
    .param p7, "isRight"    # Z

    .prologue
    .line 637
    div-int/lit8 v7, p3, 0x2

    .line 639
    .local v7, "halfBattleWidth":I
    sub-int v6, p4, p5

    .line 642
    .local v6, "getHeight":I
    div-int v8, v6, p6

    .line 645
    .local v8, "pieHeight":I
    add-int/lit8 v12, v7, -0x3c

    .line 648
    .local v12, "spaceWidth":I
    div-int/lit8 v3, v12, 0xa

    .line 649
    .local v3, "borderSpace":I
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    .line 650
    const/4 v3, 0x5

    .line 652
    :cond_0
    sub-int/2addr v12, v3

    .line 653
    if-gtz v12, :cond_1

    const/4 v12, 0x0

    .line 655
    :cond_1
    mul-int/lit8 v18, v12, 0x3

    div-int/lit8 v9, v18, 0xa

    .line 658
    .local v9, "playerSpace":I
    if-eqz p7, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    move-object/from16 v18, v0

    const/16 v19, 0x1

    int-to-short v0, v8

    move/from16 v20, v0

    aput-short v20, v18, v19

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    move-object/from16 v18, v0

    const/16 v19, 0x3

    int-to-short v0, v9

    move/from16 v20, v0

    aput-short v20, v18, v19

    .line 668
    :goto_0
    add-int v13, p1, v3

    .line 669
    .local v13, "startInitX":I
    move/from16 v14, p2

    .line 671
    .local v14, "startInitY":I
    const/4 v15, 0x0

    .line 672
    .local v15, "startPos":I
    if-eqz p7, :cond_2

    .line 673
    const/16 v15, 0x14

    .line 674
    add-int v18, p1, p3

    sub-int v13, v18, v3

    .line 676
    :cond_2
    mul-int/lit8 v18, p6, 0x2

    add-int v5, v15, v18

    .line 677
    .local v5, "endPos":I
    const/16 v16, 0x0

    .line 678
    .local v16, "x":I
    const/16 v17, 0x0

    .line 679
    .local v17, "y":I
    move v10, v15

    .local v10, "position":I
    :goto_1
    if-lt v10, v5, :cond_4

    .line 717
    return-void

    .line 664
    .end local v5    # "endPos":I
    .end local v10    # "position":I
    .end local v13    # "startInitX":I
    .end local v14    # "startInitY":I
    .end local v15    # "startPos":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-short v0, v8

    move/from16 v20, v0

    aput-short v20, v18, v19

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    move-object/from16 v18, v0

    const/16 v19, 0x2

    int-to-short v0, v9

    move/from16 v20, v0

    aput-short v20, v18, v19

    goto :goto_0

    .line 681
    .restart local v5    # "endPos":I
    .restart local v10    # "position":I
    .restart local v13    # "startInitX":I
    .restart local v14    # "startInitY":I
    .restart local v15    # "startPos":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_4
    invoke-static {v10}, Lcom/hz/battle/Battle;->getPositionColumn(I)I

    move-result v4

    .line 682
    .local v4, "col":I
    sub-int v18, v10, v15

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v11, v18, 0x1

    .line 684
    .local v11, "row":I
    move/from16 v16, v13

    .line 685
    mul-int v18, v8, v11

    add-int v17, v14, v18

    .line 688
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    .line 689
    :cond_5
    add-int v17, v17, p5

    .line 692
    :cond_6
    if-eqz p7, :cond_9

    .line 693
    add-int/lit8 v16, v16, -0xf

    .line 694
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_7

    .line 695
    add-int/lit8 v18, v9, 0x1e

    sub-int v16, v16, v18

    .line 705
    :cond_7
    :goto_2
    const/16 v18, 0xa

    move/from16 v0, p6

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_8

    .line 707
    if-eqz p7, :cond_a

    .line 708
    mul-int/lit8 v18, v9, 0x2

    div-int/lit8 v18, v18, 0x3

    sub-int v16, v16, v18

    .line 714
    :cond_8
    :goto_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v10, v1, v2}, Lcom/hz/battle/BattleAniEngine;->setPosition(III)V

    .line 715
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v10, v1, v2}, Lcom/hz/battle/BattleAniEngine;->setPosition(III)V

    .line 679
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 698
    :cond_9
    add-int/lit8 v16, v16, 0xf

    .line 699
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_7

    .line 700
    add-int/lit8 v18, v9, 0x1e

    add-int v16, v16, v18

    goto :goto_2

    .line 710
    :cond_a
    mul-int/lit8 v18, v9, 0x2

    div-int/lit8 v18, v18, 0x3

    add-int v16, v16, v18

    goto :goto_3
.end method

.method private isWin()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1937
    const/4 v0, 0x0

    .line 1938
    .local v0, "isWin":Z
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v1, :cond_0

    .line 1939
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-static {v1}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1940
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-byte v1, v1, Lcom/hz/battle/Battle;->result:B

    if-ne v1, v2, :cond_0

    .line 1941
    const/4 v0, 0x1

    .line 1949
    :cond_0
    :goto_0
    return v0

    .line 1944
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-byte v1, v1, Lcom/hz/battle/Battle;->result:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1945
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final makeBattleAnim()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1360
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->planSequenceList:Ljava/util/Vector;

    if-nez v10, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->planSequenceList:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1365
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1373
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->planSequenceList:Ljava/util/Vector;

    invoke-virtual {v10, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 1374
    .local v3, "animeList":Ljava/util/Vector;
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->planSequenceList:Ljava/util/Vector;

    invoke-virtual {v10, v11}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1376
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1383
    const/4 v4, 0x0

    .line 1385
    .local v4, "control":Lcom/hz/battle/AnimationControl;
    const/4 v5, 0x0

    .line 1386
    .local v5, "delay":I
    const/16 v10, 0x22

    new-array v0, v10, [B

    .line 1389
    .local v0, "affectCount":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v7, v10, :cond_2

    .line 1424
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    goto :goto_0

    .line 1391
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/main/Control;

    .line 1392
    .local v1, "aniControl":Lcom/hz/main/Control;
    if-nez v1, :cond_4

    .line 1389
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1396
    :cond_4
    iget-byte v9, v1, Lcom/hz/main/Control;->byte0:B

    .line 1398
    .local v9, "pos":I
    iget v10, v1, Lcom/hz/main/Control;->type:I

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    .line 1400
    :pswitch_0
    invoke-static {p0, v1}, Lcom/hz/battle/AnimationControl;->createBattleSkill(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;)Lcom/hz/battle/AnimationControl;

    move-result-object v4

    .line 1402
    invoke-virtual {p0, v9, v4}, Lcom/hz/battle/BattleAniEngine;->addPlayerPlanControl(ILcom/hz/battle/AnimationControl;)V

    .line 1405
    invoke-virtual {v4, v5}, Lcom/hz/battle/AnimationControl;->setDelay(I)V

    .line 1406
    add-int/lit8 v5, v5, 0x8

    .line 1408
    goto :goto_2

    .line 1410
    :pswitch_1
    invoke-static {p0, v1}, Lcom/hz/battle/AnimationControl;->createBattlePlayerEscape(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;)Lcom/hz/battle/AnimationControl;

    move-result-object v4

    .line 1412
    invoke-virtual {p0, v9, v4}, Lcom/hz/battle/BattleAniEngine;->addPlayerPlanControl(ILcom/hz/battle/AnimationControl;)V

    goto :goto_2

    .line 1415
    :pswitch_2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1416
    .local v6, "effectList":Ljava/util/Vector;
    invoke-static {p0, v1, v0, v6}, Lcom/hz/battle/AnimationControl;->getAniEffectByControl(Lcom/hz/battle/BattleAniEngine;Lcom/hz/main/Control;[BLjava/util/Vector;)V

    .line 1417
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 1418
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/battle/AnimationControl;

    .line 1419
    .local v2, "animationControl":Lcom/hz/battle/AnimationControl;
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattleAniEngine;->addAnimationControl(Lcom/hz/battle/AnimationControl;)V

    .line 1417
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1398
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendLocalBattleReward()V
    .locals 12

    .prologue
    .line 781
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v10}, Lcom/hz/battle/Battle;->getType()I

    move-result v10

    if-eqz v10, :cond_0

    .line 847
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->updateMercenaryHpMP()V

    .line 798
    new-instance v6, Lcom/hz/net/Message;

    const/16 v10, 0x30d6

    invoke-direct {v6, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 800
    .local v6, "msg":Lcom/hz/net/Message;
    iget v10, p0, Lcom/hz/battle/BattleAniEngine;->startHP:I

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 801
    iget v10, p0, Lcom/hz/battle/BattleAniEngine;->startMP:I

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 802
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget v10, v10, Lcom/hz/actor/Player;->hp:I

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 803
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget v10, v10, Lcom/hz/actor/Player;->mp:I

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 804
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-wide v10, v10, Lcom/hz/battle/Battle;->seed:J

    long-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putShort(S)V

    .line 806
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v10}, Lcom/hz/battle/Battle;->getMonsterGroup()Lcom/hz/core/MonsterGroup;

    move-result-object v1

    .line 807
    .local v1, "group":Lcom/hz/core/MonsterGroup;
    const/4 v2, -0x1

    .line 808
    .local v2, "groupID":I
    if-eqz v1, :cond_1

    .line 809
    iget v2, v1, Lcom/hz/core/MonsterGroup;->groupId:I

    .line 811
    :cond_1
    int-to-short v10, v2

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putShort(S)V

    .line 813
    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v5

    .line 814
    .local v5, "isHavePetInBattle":Z
    invoke-virtual {v6, v5}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 817
    iget-object v10, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    iget-object v8, v10, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    .line 819
    .local v8, "planList":Ljava/util/Vector;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    .line 820
    .local v9, "round":I
    if-eqz v5, :cond_2

    .line 827
    div-int/lit8 v9, v9, 0x2

    .line 830
    :cond_2
    int-to-byte v10, v9

    invoke-virtual {v6, v10}, Lcom/hz/net/Message;->putByte(B)V

    .line 831
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v3, v10, :cond_3

    .line 846
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    goto :goto_0

    .line 833
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 834
    .local v0, "data":[B
    invoke-virtual {v6, v0}, Lcom/hz/net/Message;->putBytes([B)V

    .line 837
    if-eqz v5, :cond_5

    .line 838
    const/4 v7, 0x0

    .line 839
    .local v7, "petData":[B
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 840
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "petData":[B
    check-cast v7, [B

    .line 842
    .restart local v7    # "petData":[B
    :goto_2
    invoke-virtual {v6, v7}, Lcom/hz/net/Message;->putBytes([B)V

    goto :goto_1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_4
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .end local v3    # "i":I
    .end local v7    # "petData":[B
    .restart local v4    # "i":I
    :cond_5
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method private final sendRemoteBattleUpdate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 864
    sget-object v5, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    invoke-virtual {v5}, Lcom/hz/net/HttpConnector;->isBusy()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v5}, Lcom/hz/battle/BattlePanel;->isRomoteReady()Z

    move-result v1

    .line 871
    .local v1, "isHasPlan":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/hz/battle/BattleAniEngine;->nextPollTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 873
    if-eqz v1, :cond_0

    .line 884
    :cond_2
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-byte v0, v5, Lcom/hz/battle/Battle;->round:B

    .line 887
    .local v0, "curRound":B
    if-eqz v1, :cond_3

    .line 889
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/hz/battle/BattlePanel;->getPlanData(I)[B

    move-result-object v4

    .line 890
    .local v4, "playerPlanData":[B
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v5, v9}, Lcom/hz/battle/BattlePanel;->getPlanData(I)[B

    move-result-object v3

    .line 892
    .local v3, "petPlanData":[B
    invoke-static {v0, v4, v3}, Lcom/hz/main/MsgHandler;->createBattlePlan(B[B[B)Lcom/hz/net/Message;

    move-result-object v2

    .line 893
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->addSyncMessage(Lcom/hz/net/Message;)V

    .line 895
    iget-object v5, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v5}, Lcom/hz/battle/BattlePanel;->cleanPlanVector()V

    .line 898
    .end local v2    # "msg":Lcom/hz/net/Message;
    .end local v3    # "petPlanData":[B
    .end local v4    # "playerPlanData":[B
    :cond_3
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->createBattleUpdate(B)Lcom/hz/net/Message;

    move-result-object v2

    .line 899
    .restart local v2    # "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->sendRequest(Lcom/hz/net/Message;)Lcom/hz/net/HttpRequest;

    .line 901
    const/16 v5, 0x8

    invoke-virtual {p0, v5, v9}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 902
    const/16 v5, 0x40

    invoke-virtual {p0, v5, v9}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/hz/battle/BattleAniEngine;->nextPollTime:J

    goto :goto_0
.end method

.method private final setColumnPlayer(Lcom/hz/actor/Player;I)V
    .locals 4
    .param p1, "p"    # Lcom/hz/actor/Player;
    .param p2, "position"    # I

    .prologue
    .line 146
    invoke-static {p2}, Lcom/hz/battle/Battle;->getPositionColumn(I)I

    move-result v1

    .line 147
    .local v1, "col":I
    const/4 v2, 0x0

    .line 148
    .local v2, "playersCol":[Lcom/hz/actor/Player;
    const/4 v0, -0x1

    .line 149
    .local v0, "addPos":I
    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 151
    :pswitch_0
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn1:[Lcom/hz/actor/Player;

    .line 152
    div-int/lit8 v0, p2, 0x2

    .line 153
    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn2:[Lcom/hz/actor/Player;

    .line 156
    add-int/lit8 v3, p2, -0x1

    div-int/lit8 v0, v3, 0x2

    .line 157
    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn3:[Lcom/hz/actor/Player;

    .line 160
    add-int/lit8 v3, p2, -0x14

    div-int/lit8 v0, v3, 0x2

    .line 161
    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/hz/battle/BattleAniEngine;->playersColumn4:[Lcom/hz/actor/Player;

    .line 164
    add-int/lit8 v3, p2, -0x14

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v0, v3, 0x2

    goto :goto_0

    .line 170
    :cond_1
    if-ltz v0, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 176
    aput-object p1, v2, v0

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static final sortModelList(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7
    .param p0, "modelList"    # Ljava/util/Vector;

    .prologue
    .line 1523
    new-instance v4, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 1524
    .local v4, "vector":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "k1":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1543
    return-object v4

    .line 1526
    :cond_0
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Player;

    .line 1527
    .local v0, "h1":Lcom/hz/actor/Player;
    const/4 v2, 0x0

    .line 1530
    .local v2, "j2":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 1540
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 1541
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1524
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1532
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Player;

    .line 1533
    .local v1, "h3":Lcom/hz/actor/Player;
    iget-object v5, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v5, v5, Lcom/hz/sprite/GameSprite;->spriteY:S

    iget-object v6, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v6, v6, Lcom/hz/sprite/GameSprite;->spriteY:S

    if-ge v5, v6, :cond_3

    .line 1535
    invoke-virtual {v4, v0, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 1538
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1539
    goto :goto_1
.end method


# virtual methods
.method public addAnimationControl(Lcom/hz/battle/AnimationControl;)V
    .locals 1
    .param p1, "control"    # Lcom/hz/battle/AnimationControl;

    .prologue
    .line 743
    if-nez p1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addPlayerPlanControl(ILcom/hz/battle/AnimationControl;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "control"    # Lcom/hz/battle/AnimationControl;

    .prologue
    .line 726
    if-nez p2, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 731
    .local v0, "p":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 735
    iget-object v1, v0, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 762
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 772
    return-void

    .line 763
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 764
    .local v0, "p":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 762
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_1
    iput-object v3, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 766
    iput-object v3, v0, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    .line 767
    iput-object v3, v0, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    .line 768
    iput-object v3, v0, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    .line 769
    iput-object v3, v0, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    .line 770
    iput-object v3, v0, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    goto :goto_1
.end method

.method public closePlayerAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1019
    iget-object v4, p0, Lcom/hz/battle/BattleAniEngine;->frontPlayerVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 1020
    iget-object v4, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-object v1, v4, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 1021
    .local v1, "pList":[Lcom/hz/actor/Player;
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    const/16 v4, 0x22

    if-lt v2, v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 1059
    iget-object v4, p0, Lcom/hz/battle/BattleAniEngine;->planSequenceList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 1060
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1062
    invoke-virtual {p0, v7, v7}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1065
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/hz/battle/BattleAniEngine;->updateBattlePlayerInfo(B)V

    .line 1066
    return-void

    .line 1022
    :cond_0
    aget-object v0, v1, v2

    .line 1023
    .local v0, "p":Lcom/hz/actor/Player;
    if-nez v0, :cond_2

    .line 1021
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1028
    :cond_2
    iget v4, v0, Lcom/hz/actor/Player;->hp:I

    iput v4, v0, Lcom/hz/actor/Player;->hpDisplay:I

    .line 1029
    iget v4, v0, Lcom/hz/actor/Player;->mp:I

    iput v4, v0, Lcom/hz/actor/Player;->mpDisplay:I

    .line 1030
    iget-object v4, v0, Lcom/hz/actor/Player;->battleEffectSpriteList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 1031
    iget-object v4, v0, Lcom/hz/actor/Player;->battlePlanControlList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 1032
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hz/actor/Player;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    .line 1035
    iget-object v3, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 1036
    .local v3, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v3, :cond_1

    .line 1040
    invoke-virtual {v3, v8}, Lcom/hz/sprite/GameSprite;->setFront(Z)V

    .line 1041
    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    .line 1044
    iget-byte v4, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v4, v8}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v4

    .line 1045
    iget-byte v5, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v5, v7}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v5

    .line 1044
    invoke-virtual {v3, v4, v5}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 1047
    invoke-virtual {v3, v7}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 1049
    invoke-virtual {v0, v7}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/hz/actor/Player;->isDead()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1050
    :cond_3
    invoke-virtual {v3, v8}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    .line 1053
    :cond_4
    iget-object v4, v0, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v4, :cond_1

    .line 1054
    iget-object v4, v0, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v4, v7}, Lcom/hz/sprite/GameSprite;->setMotionAlive(Z)V

    .line 1055
    iget-object v4, v0, Lcom/hz/actor/Player;->dieSprite:Lcom/hz/sprite/GameSprite;

    iget-short v5, v3, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget-short v6, v3, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v4, v5, v6}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    goto :goto_1
.end method

.method public doBattleSeeExit()V
    .locals 3

    .prologue
    .line 915
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1}, Lcom/hz/battle/Battle;->isBattleFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/battle/BattlePanel;->setSeeBattleGwidgetShow(Z)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createFightSeeQuitMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 923
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public doExit()V
    .locals 0

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->setEndCounter()V

    .line 931
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->exit()V

    .line 932
    return-void
.end method

.method public drawBattleWinOrLostText(Ljavax/microedition/lcdui/Graphics;BIZ)V
    .locals 16
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "state"    # B
    .param p3, "side"    # I
    .param p4, "isBattleOb"    # Z

    .prologue
    .line 1843
    const/4 v15, 0x0

    .line 1844
    .local v15, "isWin":Z
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 1845
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 1846
    const/4 v15, 0x1

    .line 1854
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/battle/BattleAniEngine;->lostImage:Ljavax/microedition/lcdui/Image;

    .line 1855
    .local v14, "img":Ljavax/microedition/lcdui/Image;
    if-eqz v15, :cond_1

    .line 1856
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/battle/BattleAniEngine;->winImage:Ljavax/microedition/lcdui/Image;

    .line 1859
    :cond_1
    if-nez v14, :cond_4

    .line 1930
    :cond_2
    :goto_1
    return-void

    .line 1849
    .end local v14    # "img":Ljavax/microedition/lcdui/Image;
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 1850
    const/4 v15, 0x1

    goto :goto_0

    .line 1863
    .restart local v14    # "img":Ljavax/microedition/lcdui/Image;
    :cond_4
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    add-int/lit8 v6, v1, -0x14

    .line 1866
    .local v6, "drawY":I
    const/16 v1, 0x800

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1867
    const/4 v4, 0x0

    .line 1868
    .local v4, "str":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_7

    .line 1869
    const-string v4, "B\u00ean tr\u00e1i th\u1eafng"

    .line 1874
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 1875
    const/4 v2, 0x0

    const v3, 0xffffff

    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    const/16 v7, 0x21

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 1884
    .end local v4    # "str":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {v14}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v6, v1

    .line 1886
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    .line 1887
    const/4 v8, 0x0

    const v9, 0xffffff

    const-string v10, "V\u01b0\u1ee3t s\u1ed1 hi\u1ec7p t\u1ed1i \u0111a"

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    const/16 v13, 0x11

    move-object/from16 v7, p1

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_1

    .line 1871
    .restart local v4    # "str":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 1872
    const-string v4, "B\u00ean ph\u1ea3i th\u1eafng"

    goto :goto_2

    .line 1881
    .end local v4    # "str":Ljava/lang/String;
    :cond_8
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1, v6, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_3

    .line 1889
    :cond_9
    const/16 v1, 0x8

    move/from16 v0, p2

    if-ne v0, v1, :cond_a

    .line 1890
    const/4 v8, 0x0

    const v9, 0xffffff

    const-string v10, "Th\u1eddi gian Qu\u1ed1c Chi\u1ebfn \u0111\u00e3 h\u1ebft"

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    const/16 v13, 0x11

    move-object/from16 v7, p1

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_1

    .line 1892
    :cond_a
    const/16 v1, 0xa

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 1893
    const/4 v8, 0x0

    const v9, 0xffffff

    const-string v10, "Th\u1eddi gian thi \u0111\u1ea5u \u0111\u00e3 h\u1ebft "

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    const/16 v13, 0x11

    move-object/from16 v7, p1

    move v12, v6

    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto/16 :goto_1
.end method

.method public getBattle()Lcom/hz/battle/Battle;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    return-object v0
.end method

.method getNextBattleID()I
    .locals 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->getBattle()Lcom/hz/battle/Battle;

    move-result-object v0

    .line 1157
    .local v0, "battle":Lcom/hz/battle/Battle;
    if-nez v0, :cond_0

    .line 1158
    const/4 v1, -0x1

    .line 1161
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/hz/battle/Battle;->nextBattleGroupID:I

    goto :goto_0
.end method

.method public getPlayerByPos(I)Lcom/hz/actor/Player;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0, p1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosData(I)I
    .locals 1
    .param p1, "posType"    # I

    .prologue
    .line 626
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 627
    :cond_0
    const/4 v0, 0x0

    .line 629
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->posData:[S

    aget-short v0, v0, p1

    goto :goto_0
.end method

.method public getPosition(II)S
    .locals 1
    .param p1, "position"    # I
    .param p2, "_coordXOrY"    # I

    .prologue
    .line 609
    if-ltz p1, :cond_0

    const/16 v0, 0x22

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battlePosition:[[S

    aget-object v0, v0, p2

    aget-short v0, v0, p1

    goto :goto_0
.end method

.method public insertAnimationControl(Lcom/hz/battle/AnimationControl;I)V
    .locals 1
    .param p1, "control"    # Lcom/hz/battle/AnimationControl;
    .param p2, "index"    # I

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 754
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public isEndCounter()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTag(I)Z
    .locals 1
    .param p1, "bitValue"    # I

    .prologue
    .line 95
    iget v0, p0, Lcom/hz/battle/BattleAniEngine;->tagValue:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logic(I)V
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/16 v5, 0x2000

    const/16 v4, 0x51

    const/16 v3, 0x800

    const/4 v2, 0x1

    .line 1178
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->doBattleAnimations()V

    .line 1181
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v1, p1}, Lcom/hz/battle/BattlePanel;->logicAnimePlaying(I)V

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    invoke-virtual {p0, v5}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1190
    invoke-static {v4}, Lcom/hz/main/GameWorld;->isHaveGlobelControl(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hz/battle/BattleAniEngine;->waitNextBattleTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 1195
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->exit()V

    goto :goto_0

    .line 1199
    :cond_2
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1}, Lcom/hz/actor/Player;->isMember()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    sget-object v1, Lcom/hz/main/MsgHandler;->httpConn:Lcom/hz/net/HttpConnector;

    if-eqz v1, :cond_0

    .line 1202
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSoftSync()V

    goto :goto_0

    .line 1207
    :cond_3
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->getNextBattleID()I

    move-result v1

    invoke-static {v1}, Lcom/hz/main/MsgHandler;->createEnterRemoteBattle(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 1208
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hz/battle/BattleAniEngine;->waitNextBattleTime:J

    goto :goto_0

    .line 1218
    .end local v0    # "msg":Lcom/hz/net/Message;
    :cond_4
    iget v1, p0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    if-lez v1, :cond_7

    .line 1221
    iget v1, p0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    if-le v1, v2, :cond_5

    .line 1222
    iget v1, p0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    goto :goto_0

    .line 1227
    :cond_5
    invoke-static {v4}, Lcom/hz/main/GameWorld;->isHaveGlobelControl(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->getNextBattleID()I

    move-result v1

    if-lez v1, :cond_6

    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->isWin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1240
    invoke-virtual {p0, v5, v2}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hz/battle/BattleAniEngine;->waitNextBattleTime:J

    goto :goto_0

    .line 1245
    :cond_6
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->exit()V

    goto :goto_0

    .line 1253
    :cond_7
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1}, Lcom/hz/battle/Battle;->isRemoteWaiting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1255
    invoke-virtual {p0, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1256
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v1, p1}, Lcom/hz/battle/BattlePanel;->logicBattleSee(I)V

    .line 1292
    :goto_1
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1}, Lcom/hz/battle/Battle;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1298
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    sget v1, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    .line 1306
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->sendRemoteBattleUpdate()V

    goto/16 :goto_0

    .line 1259
    :cond_8
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v1, p1}, Lcom/hz/battle/BattlePanel;->logicRemoteWaiting(I)V

    goto :goto_1

    .line 1262
    :cond_9
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1}, Lcom/hz/battle/Battle;->isBattleFinish()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1267
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1}, Lcom/hz/battle/Battle;->getType()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1268
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1269
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1, v2}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    goto/16 :goto_0

    .line 1274
    :cond_a
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1275
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->setEndCounter()V

    .line 1277
    invoke-direct {p0}, Lcom/hz/battle/BattleAniEngine;->sendLocalBattleReward()V

    goto/16 :goto_0

    .line 1282
    :cond_b
    invoke-virtual {p0, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1283
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v1, p1}, Lcom/hz/battle/BattlePanel;->logicBattleSee(I)V

    goto :goto_1

    .line 1287
    :cond_c
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v1, p1}, Lcom/hz/battle/BattlePanel;->logic(I)V

    goto :goto_1

    .line 1295
    :pswitch_0
    invoke-static {}, Lcom/hz/main/MsgHandler;->doSoftSync()V

    goto/16 :goto_0

    .line 1292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public makeBattleAni()V
    .locals 2

    .prologue
    .line 1330
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/hz/battle/BattleAniEngine;->closePlayerAnimation()V

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v1}, Lcom/hz/battle/BattlePanel;->getSequenceList()Ljava/util/Vector;

    move-result-object v0

    .line 1338
    .local v0, "sequenceList":Ljava/util/Vector;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1339
    invoke-virtual {p0, v0}, Lcom/hz/battle/BattleAniEngine;->setPlanSequenceList(Ljava/util/Vector;)V

    .line 1342
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v1}, Lcom/hz/battle/Battle;->cleanAniControlList()V

    .line 1343
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 17
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1548
    invoke-static/range {p1 .. p1}, Lcom/hz/main/GameView;->clearScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->map:Lcom/hz/map/GameMap;

    if-eqz v2, :cond_2

    .line 1552
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->map:Lcom/hz/map/GameMap;

    invoke-virtual {v2}, Lcom/hz/map/GameMap;->initBattleBuffer()V

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->map:Lcom/hz/map/GameMap;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/hz/map/GameMap;->setTag(BZ)V

    .line 1556
    const/4 v2, 0x4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1560
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->map:Lcom/hz/map/GameMap;

    iget-object v2, v2, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_1

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->map:Lcom/hz/map/GameMap;

    iget-object v2, v2, Lcom/hz/map/GameMap;->m_bbImage:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    sget v4, Lcom/hz/main/GameView;->topImgHeight:I

    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 1571
    :cond_1
    sget-object v2, Lcom/hz/main/GameView;->topViewImg:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 1579
    sget-object v2, Lcom/hz/main/GameView;->bottomViewImg:Ljavax/microedition/lcdui/Image;

    .line 1580
    const/4 v3, 0x0

    .line 1581
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    .line 1582
    const/16 v6, 0x24

    .line 1579
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 1588
    :cond_2
    sget-object v13, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1589
    .local v13, "player":Lcom/hz/actor/Player;
    if-eqz v13, :cond_3

    const/16 v2, 0x800

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1594
    iget-object v2, v13, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    if-eqz v2, :cond_3

    .line 1596
    iget-object v2, v13, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    iget-byte v2, v2, Lcom/hz/core/Skill;->iconIndex:B

    const/4 v3, 0x6

    if-le v2, v3, :cond_a

    .line 1598
    sget-object v2, Lcom/hz/main/GameView;->formation2:Lcom/hz/image/ImageSet;

    if-eqz v2, :cond_3

    .line 1600
    sget-object v2, Lcom/hz/main/GameView;->formation2:Lcom/hz/image/ImageSet;

    iget-object v3, v13, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    iget-byte v3, v3, Lcom/hz/core/Skill;->iconIndex:B

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v3, -0x6

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v5, v3, 0x2

    .line 1601
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v3, 0x2

    const/4 v7, 0x0

    .line 1602
    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object/from16 v3, p1

    .line 1600
    invoke-virtual/range {v2 .. v9}, Lcom/hz/image/ImageSet;->draw(Ljavax/microedition/lcdui/Graphics;IIIZII)V

    .line 1618
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v2, :cond_4

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/hz/battle/BattlePanel;->drawHLights(Ljavax/microedition/lcdui/Graphics;)V

    .line 1623
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/hz/battle/BattleAniEngine;->drawBattlePlayer(Ljavax/microedition/lcdui/Graphics;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v2, :cond_5

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/hz/battle/BattlePanel;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 1631
    :cond_5
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v11, v2, :cond_b

    .line 1643
    invoke-direct/range {p0 .. p1}, Lcom/hz/battle/BattleAniEngine;->drawUIInfo(Ljavax/microedition/lcdui/Graphics;)V

    .line 1646
    const/4 v12, 0x1

    .line 1647
    .local v12, "isDrawTime":Z
    sget v2, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v3, 0x46

    if-ne v2, v3, :cond_6

    .line 1649
    const/4 v12, 0x0

    .line 1651
    :cond_6
    if-eqz v12, :cond_7

    .line 1653
    invoke-direct/range {p0 .. p1}, Lcom/hz/battle/BattleAniEngine;->drawTime(Ljavax/microedition/lcdui/Graphics;)V

    .line 1657
    :cond_7
    const/16 v2, 0x800

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v2}, Lcom/hz/battle/Battle;->isBattleFinish()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1659
    const/4 v3, 0x0

    const v4, 0xffffff

    const-string v5, "\u0110ang xem chi\u1ebfn..."

    .line 1660
    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    add-int/lit8 v7, v2, -0xa

    .line 1661
    const/16 v8, 0x11

    move-object/from16 v2, p1

    .line 1659
    invoke-static/range {v2 .. v8}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 1693
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    if-ltz v2, :cond_9

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    iget-byte v2, v2, Lcom/hz/battle/Battle;->result:B

    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-byte v3, v3, Lcom/hz/actor/Player;->position:B

    invoke-static {v3}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/battle/BattleAniEngine;->drawBattleWinOrLostText(Ljavax/microedition/lcdui/Graphics;BIZ)V

    .line 1696
    :cond_9
    :goto_3
    return-void

    .line 1607
    .end local v11    # "i":I
    .end local v12    # "isDrawTime":Z
    :cond_a
    sget-object v2, Lcom/hz/main/GameView;->formation:Lcom/hz/image/ImageSet;

    if-eqz v2, :cond_3

    .line 1609
    sget-object v2, Lcom/hz/main/GameView;->formation:Lcom/hz/image/ImageSet;

    iget-object v3, v13, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    iget-byte v3, v3, Lcom/hz/core/Skill;->iconIndex:B

    add-int/lit8 v4, v3, -0x1

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v5, v3, 0x2

    .line 1610
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v3, 0x2

    const/4 v7, 0x0

    .line 1611
    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object/from16 v3, p1

    .line 1609
    invoke-virtual/range {v2 .. v9}, Lcom/hz/image/ImageSet;->draw(Ljavax/microedition/lcdui/Graphics;IIIZII)V

    goto/16 :goto_0

    .line 1633
    .restart local v11    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->animationControlList:Ljava/util/Vector;

    invoke-virtual {v2, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/battle/AnimationControl;

    .line 1635
    .local v10, "control":Lcom/hz/battle/AnimationControl;
    if-nez v10, :cond_c

    .line 1631
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1639
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/hz/battle/AnimationControl;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_4

    .line 1673
    .end local v10    # "control":Lcom/hz/battle/AnimationControl;
    .restart local v12    # "isDrawTime":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattleAniEngine;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v2}, Lcom/hz/battle/Battle;->isRemoteWaiting()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1674
    const/4 v3, 0x0

    const v4, 0xffffff

    const-string v5, "\u0110ang \u0111\u1ee3i..."

    .line 1675
    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    add-int/lit8 v7, v2, -0xa

    .line 1676
    const/16 v8, 0x11

    move-object/from16 v2, p1

    .line 1674
    invoke-static/range {v2 .. v8}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_2

    .line 1678
    :cond_e
    const/16 v2, 0x2000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1680
    const-string v5, "\u0110\u1ee3i tr\u1eadn sau..."

    .line 1681
    .local v5, "drawText":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hz/battle/BattleAniEngine;->waitNextBattleTime:J

    sub-long v15, v2, v6

    .line 1682
    .local v15, "waitTime":J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-int v14, v2

    .line 1683
    .local v14, "waitSecond":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1685
    const/4 v3, 0x0

    const v4, 0xffffff

    .line 1686
    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    add-int/lit8 v7, v2, -0xa

    .line 1687
    const/16 v8, 0x11

    move-object/from16 v2, p1

    .line 1685
    invoke-static/range {v2 .. v8}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto/16 :goto_3
.end method

.method public setEndCounter()V
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x17

    iput v0, p0, Lcom/hz/battle/BattleAniEngine;->endCounter:I

    .line 121
    return-void
.end method

.method public setGuide()V
    .locals 2

    .prologue
    .line 80
    const/16 v0, 0x200

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 81
    return-void
.end method

.method public setPlanSequenceList(Ljava/util/Vector;)V
    .locals 0
    .param p1, "v"    # Ljava/util/Vector;

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/hz/battle/BattleAniEngine;->planSequenceList:Ljava/util/Vector;

    .line 1322
    return-void
.end method

.method public setPosition(III)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "_coordXOrY"    # I
    .param p3, "value"    # I

    .prologue
    .line 613
    if-ltz p1, :cond_0

    const/16 v0, 0x22

    if-lt p1, v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battlePosition:[[S

    aget-object v0, v0, p2

    int-to-short v1, p3

    aput-short v1, v0, p1

    goto :goto_0
.end method

.method public setTag(IZ)V
    .locals 2
    .param p1, "bitValue"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 87
    iget v0, p0, Lcom/hz/battle/BattleAniEngine;->tagValue:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/hz/battle/BattleAniEngine;->tagValue:I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget v0, p0, Lcom/hz/battle/BattleAniEngine;->tagValue:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/battle/BattleAniEngine;->tagValue:I

    goto :goto_0
.end method

.method protected updateBattlePlayerInfo(B)V
    .locals 2
    .param p1, "type"    # B

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/hz/battle/BattleAniEngine;->battlePanel:Lcom/hz/battle/BattlePanel;

    iget-object v0, v0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI(Lcom/hz/ui/UIHandler;BZ)V

    .line 1807
    return-void
.end method

.method public updateMercenaryHpMP()V
    .locals 3

    .prologue
    .line 996
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 1008
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hz/battle/BattleAniEngine;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 998
    .local v0, "p":Lcom/hz/actor/Player;
    if-nez v0, :cond_2

    .line 996
    .end local v0    # "p":Lcom/hz/actor/Player;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1002
    .restart local v0    # "p":Lcom/hz/actor/Player;
    :cond_2
    instance-of v2, v0, Lcom/hz/actor/Mercenary;

    if-eqz v2, :cond_1

    .line 1006
    check-cast v0, Lcom/hz/actor/Mercenary;

    .end local v0    # "p":Lcom/hz/actor/Player;
    invoke-virtual {v0}, Lcom/hz/actor/Mercenary;->refreshWorldMercenaryData()V

    goto :goto_1
.end method
