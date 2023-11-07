.class public Lcom/hz/battle/Battle;
.super Ljava/lang/Object;
.source "Battle.java"


# static fields
.field public static final BATTLE_AGI_HITRATE:I = 0x2

.field public static final BATTLE_AP_AGI:I = 0xc

.field public static final BATTLE_AP_MAGIC:I = 0xd

.field public static final BATTLE_AP_STR:I = 0xb

.field public static final BATTLE_BACK:I = 0x17

.field public static final BATTLE_BLOCK:I = 0x15

.field public static final BATTLE_CRI_RATE:I = 0xe

.field public static final BATTLE_DAMAGE:I = 0x1e

.field public static final BATTLE_DMG_AGI:I = 0x6

.field public static final BATTLE_DMG_MAGIC:I = 0x7

.field public static final BATTLE_DMG_MAX:I = 0x69

.field public static final BATTLE_DMG_MIN:I = 0x5f

.field public static final BATTLE_DMG_STR:I = 0x5

.field public static final BATTLE_HITRATE:I = 0x1f

.field public static final BATTLE_INSIGHT:I = 0x16

.field public static final BATTLE_MAGIC_BACK:I = 0x18

.field public static final BATTLE_MAGIC_HITRATE:I = 0x3

.field public static final BATTLE_RAND_ATC:I = 0x14

.field public static final BATTLE_RD_AGI:I = 0x9

.field public static final BATTLE_RD_MAGIC:I = 0xa

.field public static final BATTLE_RD_MAX:I = 0x4b

.field public static final BATTLE_RD_STR:I = 0x8

.field public static final BATTLE_STATUS_FINISH:B = 0x4t

.field public static final BATTLE_STATUS_NOTREADY:B = 0x2t

.field public static final BATTLE_STATUS_NOTSTART:B = 0x1t

.field public static final BATTLE_STATUS_READY:B = 0x3t

.field public static final BATTLE_STR_HITRATE:I = 0x1

.field public static final BLOCK_HIT_REDUCE:I = 0xa

.field public static final DMG_BACK_VALUE:I = 0x2

.field public static final DMG_DATA_SIZE:I = 0x5

.field public static final DMG_EFFECT:I = 0x1

.field public static final DMG_HP_GET_VALUE:I = 0x3

.field public static final DMG_MP_GET_VALUE:I = 0x4

.field public static final DMG_VALUE:I = 0x0

.field public static final EFFECT_BLOCK:B = 0x1t

.field public static final EFFECT_BYTE_VALUE:S = 0x800s

.field public static final EFFECT_CRITICAL:B = 0x4t

.field public static final EFFECT_DEF_FIELD:S = 0x80s

.field public static final EFFECT_DIE:B = 0x8t

.field public static final EFFECT_DIE_DELAY:S = 0x200s

.field public static final EFFECT_HAS_ANIME:S = 0x400s

.field public static final EFFECT_HIT:B = 0x2t

.field public static final EFFECT_INT_VALUE:S = 0x2000s

.field public static final EFFECT_KEEPOUT:S = 0x4000s

.field public static final EFFECT_MP_CHANGE:B = 0x40t

.field public static final EFFECT_REBORN:B = 0x10t

.field public static final EFFECT_SHORT_VALUE:S = 0x1000s

.field public static final EFFECT_STUN:B = 0x20t

.field public static final EFFECT_TOUCH:S = 0x100s

.field public static final ESCAPE_FAILED:B = 0x0t

.field private static final ESCAPE_RATE_HIGH:B = 0x5ft

.field private static final ESCAPE_RATE_LOW:B = 0x28t

.field private static final ESCAPE_RATE_MID:B = 0x4bt

.field public static final ESCAPE_SUCCESS:B = 0x1t

.field private static final FIRST_ROUND_PLAN_TIME:I = 0xea60

.field public static final LEFT_MAX_POS:I = 0x14

.field public static final LEFT_SIDE:I = 0x1

.field public static final LOCAL:I = 0x0

.field public static final LOCAL_BATTLE_MY_POS:I = 0x19

.field public static final MAX_BLOCK_TOUCH:I = 0x46

.field public static final MAX_INSIGHT_TOUCH:I = 0x64

.field public static final MAX_POS:I = 0x22

.field public static final MAX_RATE_HPMP_GET:I = 0x3e8

.field public static final MAX_RATE_TOUCH:I = 0x2bc

.field public static final MAX_RATE_WIL:I = 0x2bc

.field public static final MAX_ROUND:I = 0x1e

.field public static final MAX_ROW_NUM:I = 0xa

.field private static final MAX_SHOW_HIT:I = 0x5

.field private static final MAX_SHOW_HIT_2:I = 0xa

.field private static final NORMAL_ROUND_PLAN_TIME:I = 0x9c40

.field public static final NUM_COLUMN_1:I = 0xa

.field public static final NUM_COLUMN_2:I = 0xa

.field public static final NUM_COLUMN_3:I = 0x7

.field public static final NUM_COLUMN_4:I = 0x7

.field public static final PK:I = 0x4

.field public static final PLAN_ATTACK:B = 0x1t

.field public static final PLAN_ESCAPE:B = 0x4t

.field public static final PLAN_NONE:B = 0x0t

.field public static final PLAN_USE_ITEM:B = 0x3t

.field public static final PLAN_USE_SKILL:B = 0x2t

.field public static final POSITION_COLUMN_1:B = 0x1t

.field public static final POSITION_COLUMN_2:B = 0x2t

.field public static final POSITION_COLUMN_3:B = 0x3t

.field public static final POSITION_COLUMN_4:B = 0x4t

.field public static final REMOTE:I = 0x2

.field public static final RESULT_ARENA_OUT:B = 0xat

.field public static final RESULT_BOTH_LOSE:B = 0x4t

.field public static final RESULT_LEFT_WIN:B = 0x1t

.field public static final RESULT_NONE:B = 0x0t

.field public static final RESULT_RIGHT_WIN:B = 0x2t

.field public static final RESULT_ROUND_OVER:B = 0x3t

.field public static final RESULT_WAR_TIME_OUT:B = 0x8t

.field private static final RIGHT_MAX_POS:I = 0xe

.field public static final RIGHT_SIDE:I = 0x2


# instance fields
.field atkType:B

.field public battleSeq:I

.field block:I

.field guardHash:Ljava/util/Hashtable;

.field isLeftHand:Z

.field isLeftHavePlayer:Z

.field private isRemoteWaiting:Z

.field isRightHavePlayer:Z

.field private monsterGroup:Lcom/hz/core/MonsterGroup;

.field public nextBattleGroupID:I

.field public playerList:[Lcom/hz/actor/Player;

.field playerPlanData:[[B

.field random:Ljava/util/Random;

.field result:B

.field public resultControlList:Ljava/util/Vector;

.field public round:B

.field public roundEndTime:J

.field rowLeft:I

.field rowRight:I

.field seed:J

.field totalHitTime:I

.field private type:I

.field public waitStatus:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x22

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v0, p0, Lcom/hz/battle/Battle;->isLeftHavePlayer:Z

    .line 151
    iput-boolean v0, p0, Lcom/hz/battle/Battle;->isRightHavePlayer:Z

    .line 170
    iput-boolean v0, p0, Lcom/hz/battle/Battle;->isRemoteWaiting:Z

    .line 180
    iput-byte v0, p0, Lcom/hz/battle/Battle;->round:B

    .line 183
    iput-wide v3, p0, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 212
    iput v0, p0, Lcom/hz/battle/Battle;->type:I

    .line 225
    iput-byte v0, p0, Lcom/hz/battle/Battle;->result:B

    .line 274
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/Battle;->random:Ljava/util/Random;

    .line 275
    iput-wide v3, p0, Lcom/hz/battle/Battle;->seed:J

    .line 290
    new-array v0, v2, [Lcom/hz/actor/Player;

    iput-object v0, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 456
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    .line 597
    new-array v0, v2, [[B

    iput-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    .line 656
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    .line 2372
    iput v1, p0, Lcom/hz/battle/Battle;->totalHitTime:I

    .line 2374
    iput-boolean v1, p0, Lcom/hz/battle/Battle;->isLeftHand:Z

    .line 294
    return-void
.end method

.method private constructor <init>(J[Lcom/hz/actor/Player;ILcom/hz/core/MonsterGroup;)V
    .locals 8
    .param p1, "_seed"    # J
    .param p3, "_playerList"    # [Lcom/hz/actor/Player;
    .param p4, "type"    # I
    .param p5, "group"    # Lcom/hz/core/MonsterGroup;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x14

    const/4 v1, 0x1

    const/16 v4, 0x22

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v3, p0, Lcom/hz/battle/Battle;->isLeftHavePlayer:Z

    .line 151
    iput-boolean v3, p0, Lcom/hz/battle/Battle;->isRightHavePlayer:Z

    .line 170
    iput-boolean v3, p0, Lcom/hz/battle/Battle;->isRemoteWaiting:Z

    .line 180
    iput-byte v3, p0, Lcom/hz/battle/Battle;->round:B

    .line 183
    iput-wide v6, p0, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 212
    iput v3, p0, Lcom/hz/battle/Battle;->type:I

    .line 225
    iput-byte v3, p0, Lcom/hz/battle/Battle;->result:B

    .line 274
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/Battle;->random:Ljava/util/Random;

    .line 275
    iput-wide v6, p0, Lcom/hz/battle/Battle;->seed:J

    .line 290
    new-array v0, v4, [Lcom/hz/actor/Player;

    iput-object v0, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 456
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    .line 597
    new-array v0, v4, [[B

    iput-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    .line 656
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    .line 2372
    iput v1, p0, Lcom/hz/battle/Battle;->totalHitTime:I

    .line 2374
    iput-boolean v1, p0, Lcom/hz/battle/Battle;->isLeftHand:Z

    .line 298
    invoke-virtual {p0, p4}, Lcom/hz/battle/Battle;->setType(I)V

    .line 299
    iput-wide p1, p0, Lcom/hz/battle/Battle;->seed:J

    .line 300
    iget-object v0, p0, Lcom/hz/battle/Battle;->random:Ljava/util/Random;

    iget-wide v1, p0, Lcom/hz/battle/Battle;->seed:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 301
    iput-object p3, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    .line 302
    invoke-virtual {p0, p5}, Lcom/hz/battle/Battle;->setMonsterGroup(Lcom/hz/core/MonsterGroup;)V

    .line 305
    invoke-direct {p0}, Lcom/hz/battle/Battle;->initBattleRowNum()V

    .line 307
    invoke-virtual {p0, v3, v5}, Lcom/hz/battle/Battle;->isHavePlayer(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hz/battle/Battle;->isLeftHavePlayer:Z

    .line 308
    invoke-virtual {p0, v5, v4}, Lcom/hz/battle/Battle;->isHavePlayer(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hz/battle/Battle;->isRightHavePlayer:Z

    .line 310
    iput-byte v3, p0, Lcom/hz/battle/Battle;->round:B

    .line 311
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->updateRoundEndTime()V

    .line 314
    invoke-direct {p0, p3}, Lcom/hz/battle/Battle;->initKeepoutatktime([Lcom/hz/actor/Player;)V

    .line 316
    return-void
.end method

.method private final addGuardData(BIBI)V
    .locals 5
    .param p1, "targetPos"    # B
    .param p2, "guardPower"    # I
    .param p3, "guardPos"    # B
    .param p4, "guardPercent"    # I

    .prologue
    .line 509
    if-ltz p1, :cond_0

    const/16 v2, 0x22

    if-lt p1, v2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-static {p1, p2}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v0

    .line 515
    .local v0, "key":I
    invoke-static {p3, p4}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v1

    .line 517
    .local v1, "value":I
    iget-object v2, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static calTouch(Lcom/hz/actor/Player;)I
    .locals 3
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v1, 0x0

    .line 2972
    if-nez p0, :cond_1

    move v0, v1

    .line 2995
    :cond_0
    :goto_0
    return v0

    .line 2975
    :cond_1
    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2978
    .local v0, "getTouch":I
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2979
    div-int/lit8 v0, v0, 0x2

    .line 2982
    :cond_2
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2983
    div-int/lit8 v0, v0, 0x2

    .line 2986
    :cond_3
    if-gtz v0, :cond_0

    move v0, v1

    .line 2987
    goto :goto_0
.end method

.method private final cleanGuardData()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 464
    return-void
.end method

.method public static createLocalBattle(J[Lcom/hz/actor/Player;Lcom/hz/core/MonsterGroup;)Lcom/hz/battle/Battle;
    .locals 6
    .param p0, "_seed"    # J
    .param p2, "_playerList"    # [Lcom/hz/actor/Player;
    .param p3, "group"    # Lcom/hz/core/MonsterGroup;

    .prologue
    .line 341
    new-instance v0, Lcom/hz/battle/Battle;

    const/4 v4, 0x0

    move-wide v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hz/battle/Battle;-><init>(J[Lcom/hz/actor/Player;ILcom/hz/core/MonsterGroup;)V

    .line 342
    .local v0, "battle":Lcom/hz/battle/Battle;
    return-object v0
.end method

.method public static createPKBattle(J[Lcom/hz/actor/Player;)Lcom/hz/battle/Battle;
    .locals 6
    .param p0, "_seed"    # J
    .param p2, "_playerList"    # [Lcom/hz/actor/Player;

    .prologue
    .line 360
    new-instance v0, Lcom/hz/battle/Battle;

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/hz/battle/Battle;-><init>(J[Lcom/hz/actor/Player;ILcom/hz/core/MonsterGroup;)V

    .line 361
    .local v0, "battle":Lcom/hz/battle/Battle;
    return-object v0
.end method

.method public static createRemoteBattle(J[Lcom/hz/actor/Player;Lcom/hz/core/MonsterGroup;)Lcom/hz/battle/Battle;
    .locals 6
    .param p0, "_seed"    # J
    .param p2, "_playerList"    # [Lcom/hz/actor/Player;
    .param p3, "group"    # Lcom/hz/core/MonsterGroup;

    .prologue
    .line 351
    new-instance v0, Lcom/hz/battle/Battle;

    const/4 v4, 0x2

    move-wide v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hz/battle/Battle;-><init>(J[Lcom/hz/actor/Player;ILcom/hz/core/MonsterGroup;)V

    .line 352
    .local v0, "battle":Lcom/hz/battle/Battle;
    return-object v0
.end method

.method private final doAttak(Lcom/hz/actor/Player;I)V
    .locals 15
    .param p1, "atkPlayer"    # Lcom/hz/actor/Player;
    .param p2, "targetCursor"    # I

    .prologue
    .line 1449
    if-nez p1, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1465
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1479
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1480
    invoke-static/range {p0 .. p1}, Lcom/hz/battle/MonsterAI;->selectRandActivePlayer(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B

    move-result p2

    .line 1485
    :cond_2
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->isValidPos(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v14

    .line 1495
    .local v14, "targetPlayer":Lcom/hz/actor/Player;
    if-eqz v14, :cond_0

    .line 1503
    invoke-virtual {v14}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1504
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static {p0, v0, v1}, Lcom/hz/battle/MonsterAI;->selectRandTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Z)B

    move-result p2

    .line 1505
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v14

    .line 1506
    if-eqz v14, :cond_0

    .line 1512
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getAttackType(Lcom/hz/core/Skill;)B

    move-result v1

    iput-byte v1, p0, Lcom/hz/battle/Battle;->atkType:B

    .line 1516
    iget-byte v1, p0, Lcom/hz/battle/Battle;->atkType:B

    const/4 v2, 0x1

    invoke-direct {p0, v14, v1, v2}, Lcom/hz/battle/Battle;->getGrardPet(Lcom/hz/actor/Player;BZ)Lcom/hz/actor/Player;

    move-result-object v11

    .line 1517
    .local v11, "grardPlayer":Lcom/hz/actor/Player;
    if-eqz v11, :cond_8

    .line 1518
    move-object v14, v11

    .line 1546
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    iget-byte v1, v0, Lcom/hz/actor/Player;->position:B

    .line 1547
    const/4 v3, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getAttakAnimePos()B

    move-result v4

    const/4 v5, 0x0

    .line 1548
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getAttackRangeAnime()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p2

    .line 1546
    invoke-static/range {v1 .. v8}, Lcom/hz/main/Control;->createBattleUseSkillControl(IIBBIIILjava/lang/String;)Lcom/hz/main/Control;

    move-result-object v9

    .line 1549
    .local v9, "atkControl":Lcom/hz/main/Control;
    invoke-virtual {p0, v9}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 1550
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1554
    .local v5, "attackEffectControlList":Ljava/util/Vector;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1559
    invoke-virtual {v14}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    if-eqz v14, :cond_6

    .line 1567
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v14, v1, v2}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 1572
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-virtual/range {v1 .. v6}, Lcom/hz/battle/Battle;->calDamage(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;I)Z

    .line 1576
    if-eqz v14, :cond_7

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v14, v1}, Lcom/hz/actor/Player;->isTabStatus(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1578
    invoke-virtual {v14, p0}, Lcom/hz/actor/Player;->doKeepAtkTime(Lcom/hz/battle/Battle;)V

    .line 1580
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v14, v1, v2}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 1584
    :cond_7
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v10, v1, [Lcom/hz/main/Control;

    .line 1585
    .local v10, "effectList":[Lcom/hz/main/Control;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v13, v1, :cond_a

    .line 1588
    invoke-virtual {v9, v10}, Lcom/hz/main/Control;->setSubControlList([Lcom/hz/main/Control;)V

    goto/16 :goto_0

    .line 1523
    .end local v5    # "attackEffectControlList":Ljava/util/Vector;
    .end local v9    # "atkControl":Lcom/hz/main/Control;
    .end local v10    # "effectList":[Lcom/hz/main/Control;
    .end local v13    # "i":I
    :cond_8
    iget-byte v1, v14, Lcom/hz/actor/Player;->position:B

    iget-byte v2, p0, Lcom/hz/battle/Battle;->atkType:B

    invoke-direct {p0, v1, v2}, Lcom/hz/battle/Battle;->getGuardPos(BB)B

    move-result v12

    .line 1526
    .local v12, "guardPos":B
    if-eqz v14, :cond_9

    .line 1528
    iget v1, v14, Lcom/hz/actor/Player;->keepout_atk_time:I

    if-lez v1, :cond_9

    .line 1529
    const/4 v12, -0x1

    .line 1534
    :cond_9
    if-ltz v12, :cond_5

    .line 1535
    invoke-virtual {p0, v12}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v11

    .line 1537
    invoke-virtual {p0, v11}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1538
    move-object v14, v11

    goto :goto_1

    .line 1586
    .end local v12    # "guardPos":B
    .restart local v5    # "attackEffectControlList":Ljava/util/Vector;
    .restart local v9    # "atkControl":Lcom/hz/main/Control;
    .restart local v10    # "effectList":[Lcom/hz/main/Control;
    .restart local v13    # "i":I
    :cond_a
    invoke-virtual {v5, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/main/Control;

    aput-object v1, v10, v13

    .line 1585
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method private final doAutoSkill(Lcom/hz/actor/Player;)V
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 1182
    if-nez p1, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    const/4 v0, 0x0

    .line 1191
    .local v0, "autoSkill":Lcom/hz/core/Skill;
    instance-of v4, p1, Lcom/hz/actor/Monster;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 1193
    check-cast v2, Lcom/hz/actor/Monster;

    .line 1194
    .local v2, "monster":Lcom/hz/actor/Monster;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/hz/actor/Monster;->getSkillByAI(Lcom/hz/battle/Battle;Z)Lcom/hz/core/Skill;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_0

    .line 1198
    iget-byte v4, v0, Lcom/hz/core/Skill;->area:B

    invoke-virtual {p0, p1, v4}, Lcom/hz/battle/Battle;->searchAICursor(Lcom/hz/actor/Player;B)I

    move-result v4

    invoke-direct {p0, p1, v0, v4}, Lcom/hz/battle/Battle;->doUseSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)V

    goto :goto_0

    .line 1204
    .end local v2    # "monster":Lcom/hz/actor/Monster;
    :cond_2
    invoke-direct {p0, p1}, Lcom/hz/battle/Battle;->getAutoSkillIDByRound(Lcom/hz/actor/Player;)I

    move-result v1

    .line 1205
    .local v1, "autoSkillID":I
    if-ltz v1, :cond_0

    .line 1212
    invoke-virtual {p1, v1}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_0

    .line 1219
    const/4 v3, -0x1

    .line 1220
    .local v3, "targetCursor":I
    iget-byte v4, v0, Lcom/hz/core/Skill;->area:B

    invoke-virtual {p0, p1, v4}, Lcom/hz/battle/Battle;->searchAICursor(Lcom/hz/actor/Player;B)I

    move-result v3

    .line 1221
    invoke-direct {p0, p1, v1, v3}, Lcom/hz/battle/Battle;->doUseSkill(Lcom/hz/actor/Player;II)V

    goto :goto_0
.end method

.method private final doEndRoundCheckBuffer()V
    .locals 11

    .prologue
    const/high16 v10, 0x10000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1010
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1011
    .local v1, "effectControlList":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v6, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    array-length v6, v6

    if-lt v3, v6, :cond_0

    .line 1094
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_7

    .line 1098
    return-void

    .line 1013
    .end local v2    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    aget-object v5, v6, v3

    .line 1015
    .local v5, "player":Lcom/hz/actor/Player;
    if-nez v5, :cond_2

    .line 1011
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1019
    :cond_2
    invoke-virtual {v5}, Lcom/hz/actor/Player;->isHaveCanNotReliveBuffer()Z

    move-result v4

    .line 1023
    .local v4, "isHaveCanNotReliveBuffer":Z
    invoke-virtual {v5}, Lcom/hz/actor/Player;->isDead()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1034
    invoke-virtual {v5, v10}, Lcom/hz/actor/Player;->isTabStatus(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1035
    const/16 v6, 0x1c

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1041
    if-nez v4, :cond_4

    .line 1042
    invoke-virtual {v5, v9, v10}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 1044
    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    const/16 v7, 0x4bf

    invoke-static {v5, v6, v8, v7, v1}, Lcom/hz/core/Define;->processBattleReborn(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    goto :goto_2

    .line 1049
    :cond_3
    invoke-virtual {v5}, Lcom/hz/actor/Player;->isDeadDelay()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1050
    const/high16 v6, 0x20000000

    invoke-virtual {v5, v9, v6}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 1054
    iget-byte v6, v5, Lcom/hz/actor/Player;->position:B

    .line 1055
    const/16 v7, 0x200

    .line 1054
    invoke-static {v6, v8, v7, v8}, Lcom/hz/main/Control;->createBattleTargetEffect(IIII)Lcom/hz/main/Control;

    move-result-object v0

    .line 1056
    .local v0, "control":Lcom/hz/main/Control;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1062
    invoke-virtual {v5, v8}, Lcom/hz/actor/Player;->clearBufferList(Z)V

    .line 1064
    if-eqz v4, :cond_1

    .line 1065
    invoke-virtual {v5, v8}, Lcom/hz/actor/Player;->runBufferList(Z)Ljava/util/Vector;

    goto :goto_2

    .line 1075
    .end local v0    # "control":Lcom/hz/main/Control;
    :cond_4
    invoke-virtual {v5}, Lcom/hz/actor/Player;->isDead()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5, v9}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1076
    :cond_5
    invoke-virtual {v5, v8}, Lcom/hz/actor/Player;->clearBufferList(Z)V

    .line 1078
    if-eqz v4, :cond_1

    .line 1079
    invoke-virtual {v5, v8}, Lcom/hz/actor/Player;->runBufferList(Z)Ljava/util/Vector;

    goto :goto_2

    .line 1086
    :cond_6
    invoke-virtual {v5, v8}, Lcom/hz/actor/Player;->runBufferList(Z)Ljava/util/Vector;

    .line 1089
    invoke-virtual {p0, v5}, Lcom/hz/battle/Battle;->doCheckWilBufferRemove(Lcom/hz/actor/Player;)V

    goto :goto_2

    .line 1095
    .end local v4    # "isHaveCanNotReliveBuffer":Z
    .end local v5    # "player":Lcom/hz/actor/Player;
    .restart local v2    # "i":I
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 1096
    .restart local v0    # "control":Lcom/hz/main/Control;
    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 1094
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private final doEscape(Lcom/hz/actor/Player;Z)V
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isForceSuccess"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2177
    if-nez p1, :cond_1

    .line 2213
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->isDead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2192
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2198
    const/4 p2, 0x1

    if-eqz p2, :cond_3

    .line 2199
    const/4 v1, 0x1

    .line 2205
    .local v1, "isSuccess":B
    :goto_1
    if-ne v1, v3, :cond_2

    .line 2206
    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->setBattleStatus(I)Z

    .line 2210
    :cond_2
    iget-byte v2, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v2, v1}, Lcom/hz/main/Control;->createBattleEscape(IB)Lcom/hz/main/Control;

    move-result-object v0

    .line 2211
    .local v0, "atkControl":Lcom/hz/main/Control;
    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    goto :goto_0

    .line 2201
    .end local v0    # "atkControl":Lcom/hz/main/Control;
    .end local v1    # "isSuccess":B
    :cond_3
    invoke-direct {p0, p1}, Lcom/hz/battle/Battle;->isEscapeSuccess(Lcom/hz/actor/Player;)B

    move-result v1

    .restart local v1    # "isSuccess":B
    goto :goto_1
.end method

.method private final doMonsterAI(Lcom/hz/actor/Monster;)V
    .locals 4
    .param p1, "monster"    # Lcom/hz/actor/Monster;

    .prologue
    .line 2288
    invoke-virtual {p0, p1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lcom/hz/actor/Monster;->getSkillByAI(Lcom/hz/battle/Battle;Z)Lcom/hz/core/Skill;

    move-result-object v0

    .line 2302
    .local v0, "skill":Lcom/hz/core/Skill;
    invoke-virtual {p1}, Lcom/hz/actor/Monster;->getAITargetPos()B

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 2303
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/hz/battle/Battle;->doEscape(Lcom/hz/actor/Player;Z)V

    goto :goto_0

    .line 2308
    :cond_2
    invoke-virtual {p1, p0}, Lcom/hz/actor/Monster;->getAttackTarget(Lcom/hz/battle/Battle;)B

    move-result v1

    .line 2309
    .local v1, "targetPos":B
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->isValidPos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2316
    if-nez v0, :cond_3

    .line 2317
    invoke-direct {p0, p1, v1}, Lcom/hz/battle/Battle;->doAttak(Lcom/hz/actor/Player;I)V

    goto :goto_0

    .line 2320
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/hz/battle/Battle;->doUseSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)V

    goto :goto_0
.end method

.method private final doPetAI(Lcom/hz/actor/Player;)V
    .locals 3
    .param p1, "pet"    # Lcom/hz/actor/Player;

    .prologue
    .line 2268
    invoke-virtual {p0, p1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2281
    :goto_0
    return-void

    .line 2275
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v0

    .line 2280
    .local v0, "targetPos":B
    invoke-direct {p0, p1, v0}, Lcom/hz/battle/Battle;->doAttak(Lcom/hz/actor/Player;I)V

    goto :goto_0
.end method

.method private final doPlayerPlan(Lcom/hz/actor/Player;[B)Z
    .locals 9
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 1265
    if-nez p1, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return v7

    .line 1269
    :cond_1
    if-eqz p2, :cond_0

    .line 1276
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1277
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1279
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 1281
    .local v1, "cursor":B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1282
    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    .line 1324
    :goto_1
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1325
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1314
    const/4 v7, 0x1

    goto :goto_0

    .line 1284
    :pswitch_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 1285
    invoke-direct {p0, p1, v1}, Lcom/hz/battle/Battle;->doAttak(Lcom/hz/actor/Player;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1316
    .end local v6    # "type":B
    :catch_0
    move-exception v3

    .line 1324
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1325
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 1288
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "type":B
    :pswitch_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 1289
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 1290
    .local v5, "skillID":I
    invoke-direct {p0, p1, v5, v1}, Lcom/hz/battle/Battle;->doUseSkill(Lcom/hz/actor/Player;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1323
    .end local v5    # "skillID":I
    .end local v6    # "type":B
    :catchall_0
    move-exception v7

    .line 1324
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1325
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1326
    throw v7

    .line 1293
    .restart local v6    # "type":B
    :pswitch_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 1294
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 1295
    .local v4, "itemPos":I
    invoke-direct {p0, p1, v4, v1}, Lcom/hz/battle/Battle;->doUseItem(Lcom/hz/actor/Player;II)V

    goto :goto_1

    .line 1298
    .end local v4    # "itemPos":I
    :pswitch_3
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/hz/battle/Battle;->doEscape(Lcom/hz/actor/Player;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1324
    :pswitch_4
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 1325
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 1282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final doRoundBuffer()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 924
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v6, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    array-length v6, v6

    if-lt v2, v6, :cond_0

    .line 960
    return-void

    .line 926
    :cond_0
    iget-object v6, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    aget-object v4, v6, v2

    .line 928
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_2

    .line 924
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    :cond_2
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 934
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isHaveCanNotReliveBuffer()Z

    move-result v3

    .line 935
    .local v3, "isHaveCanNotReliveBuffer":Z
    if-eqz v3, :cond_1

    .line 936
    invoke-virtual {v4, v7}, Lcom/hz/actor/Player;->runBufferList(Z)Ljava/util/Vector;

    goto :goto_1

    .line 942
    .end local v3    # "isHaveCanNotReliveBuffer":Z
    :cond_3
    invoke-virtual {v4, v7}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 947
    invoke-virtual {v4, v7}, Lcom/hz/actor/Player;->runBufferList(Z)Ljava/util/Vector;

    move-result-object v5

    .line 950
    .local v5, "resultBufferControlList":Ljava/util/Vector;
    invoke-static {v5, v7}, Lcom/hz/battle/Battle;->mergeControlList(Ljava/util/Vector;Z)Ljava/util/Vector;

    move-result-object v5

    .line 953
    if-eqz v5, :cond_1

    .line 954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 955
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 956
    .local v0, "bufferControl":Lcom/hz/main/Control;
    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private final doRoundHpMp(Lcom/hz/actor/Player;)V
    .locals 10
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 877
    const/16 v6, 0x3c

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    .line 879
    .local v2, "hpAdd":I
    const/16 v6, 0x3d

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 880
    .local v5, "mpAdd":I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 882
    .local v1, "controlList":Ljava/util/Vector;
    if-lez v2, :cond_2

    .line 884
    const/4 v4, 0x1

    .line 886
    .local v4, "isSucuess":Z
    invoke-static {v8}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 887
    invoke-static {v9}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 888
    :cond_0
    const/4 v4, 0x0

    .line 890
    :cond_1
    if-eqz v4, :cond_2

    .line 891
    invoke-static {p1, v8, v2, v7, v1}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    .line 898
    .end local v4    # "isSucuess":Z
    :cond_2
    if-lez v5, :cond_4

    .line 899
    const/4 v4, 0x1

    .line 901
    .restart local v4    # "isSucuess":Z
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 902
    const/4 v4, 0x0

    .line 904
    :cond_3
    if-eqz v4, :cond_4

    .line 905
    invoke-static {p1, v9, v5, v7, v1}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    .line 914
    .end local v4    # "isSucuess":Z
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 918
    return-void

    .line 915
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 916
    .local v0, "control":Lcom/hz/main/Control;
    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private final doUseItem(Lcom/hz/actor/Player;II)V
    .locals 20
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "itemPos"    # I
    .param p3, "targetCursor"    # I

    .prologue
    .line 1996
    if-nez p1, :cond_1

    .line 2145
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2013
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2020
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2021
    .local v11, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v11, :cond_0

    .line 2029
    move/from16 v0, p2

    int-to-short v3, v0

    invoke-virtual {v11, v3}, Lcom/hz/core/PlayerBag;->getBagItemBySlotPos(S)Lcom/hz/core/Item;

    move-result-object v19

    .line 2030
    .local v19, "useItem":Lcom/hz/core/Item;
    if-eqz v19, :cond_0

    .line 2038
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/hz/core/Item;->isValidEquipRequire(Lcom/hz/actor/Player;Lcom/hz/core/Item;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2046
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/hz/core/Item;->isCanUse(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2054
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2060
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2061
    invoke-static/range {p0 .. p1}, Lcom/hz/battle/MonsterAI;->selectRandActivePlayer(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B

    move-result p3

    .line 2065
    :cond_2
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    move-object/from16 v0, v19

    iget-byte v4, v0, Lcom/hz/core/Item;->area:B

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v4}, Lcom/hz/battle/Battle;->getSelectArea(IIB)[B

    move-result-object v18

    .line 2066
    .local v18, "targetPosList":[B
    if-eqz v18, :cond_0

    .line 2075
    const/4 v10, 0x0

    .line 2076
    .local v10, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 2077
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 2079
    :cond_3
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    .line 2080
    move-object/from16 v0, v19

    iget-byte v5, v0, Lcom/hz/core/Item;->area:B

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 2081
    const/16 v8, 0x4bf

    const/4 v9, 0x0

    move/from16 v4, p3

    .line 2079
    invoke-static/range {v3 .. v10}, Lcom/hz/main/Control;->createBattleUseSkillControl(IIBBIIILjava/lang/String;)Lcom/hz/main/Control;

    move-result-object v14

    .line 2082
    .local v14, "itemControl":Lcom/hz/main/Control;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 2083
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 2086
    .local v15, "itemEffectControlList":Ljava/util/Vector;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v3, v0

    if-lt v13, v3, :cond_4

    .line 2137
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v12, v3, [Lcom/hz/main/Control;

    .line 2138
    .local v12, "effectList":[Lcom/hz/main/Control;
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v13, v3, :cond_9

    .line 2141
    invoke-virtual {v14, v12}, Lcom/hz/main/Control;->setSubControlList([Lcom/hz/main/Control;)V

    .line 2144
    move/from16 v0, p2

    int-to-short v3, v0

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    goto/16 :goto_0

    .line 2088
    .end local v12    # "effectList":[Lcom/hz/main/Control;
    :cond_4
    aget-byte v16, v18, v13

    .line 2091
    .local v16, "pos":I
    if-ltz v16, :cond_5

    const/16 v3, 0x22

    move/from16 v0, v16

    if-lt v0, v3, :cond_6

    .line 2086
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2098
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v17

    .line 2101
    .local v17, "targetPlayer":Lcom/hz/actor/Player;
    if-eqz v17, :cond_5

    .line 2109
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2114
    invoke-virtual/range {v17 .. v17}, Lcom/hz/actor/Player;->isDead()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2116
    invoke-virtual/range {v17 .. v17}, Lcom/hz/actor/Player;->isDeadDelay()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2120
    invoke-virtual/range {v19 .. v19}, Lcom/hz/core/Item;->isRebornItem()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2128
    :cond_7
    if-eqz v17, :cond_8

    .line 2129
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 2134
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lcom/hz/battle/Battle;->processItemPower(Lcom/hz/actor/Player;Lcom/hz/core/Item;Ljava/util/Vector;)V

    goto :goto_3

    .line 2139
    .end local v16    # "pos":I
    .end local v17    # "targetPlayer":Lcom/hz/actor/Player;
    .restart local v12    # "effectList":[Lcom/hz/main/Control;
    :cond_9
    invoke-virtual {v15, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/main/Control;

    aput-object v3, v12, v13

    .line 2138
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method private final doUseSkill(Lcom/hz/actor/Player;II)V
    .locals 1
    .param p1, "atkPlayer"    # Lcom/hz/actor/Player;
    .param p2, "skillID"    # I
    .param p3, "targetCursor"    # I

    .prologue
    .line 1599
    if-nez p1, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    invoke-virtual {p1, p2}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 1608
    .local v0, "skill":Lcom/hz/core/Skill;
    if-eqz v0, :cond_0

    .line 1615
    invoke-direct {p0, p1, v0, p3}, Lcom/hz/battle/Battle;->doUseSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)V

    goto :goto_0
.end method

.method private final doUseSkill(Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)V
    .locals 24
    .param p1, "atkPlayer"    # Lcom/hz/actor/Player;
    .param p2, "skill"    # Lcom/hz/core/Skill;
    .param p3, "targetCursor"    # I

    .prologue
    .line 1619
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->isValidPos(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    if-eqz p1, :cond_0

    .line 1634
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1642
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1650
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1658
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/hz/core/Skill;->isCanUse(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1668
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1675
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1677
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1680
    invoke-static/range {p0 .. p1}, Lcom/hz/battle/MonsterAI;->selectRandActivePlayer(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B

    move-result p3

    .line 1731
    :cond_2
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/hz/core/Skill;->area:B

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v4}, Lcom/hz/battle/Battle;->getSelectArea(IIB)[B

    move-result-object v21

    .line 1732
    .local v21, "targetPosList":[B
    if-eqz v21, :cond_0

    .line 1739
    invoke-virtual/range {p1 .. p2}, Lcom/hz/actor/Player;->getAttackType(Lcom/hz/core/Skill;)B

    move-result v3

    move-object/from16 v0, p0

    iput-byte v3, v0, Lcom/hz/battle/Battle;->atkType:B

    .line 1743
    const/4 v10, 0x0

    .line 1744
    .local v10, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1745
    :cond_3
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    .line 1747
    :cond_4
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    .line 1748
    move-object/from16 v0, p2

    iget-byte v5, v0, Lcom/hz/core/Skill;->area:B

    move-object/from16 v0, p2

    iget-byte v6, v0, Lcom/hz/core/Skill;->position:B

    .line 1749
    move-object/from16 v0, p2

    iget-byte v7, v0, Lcom/hz/core/Skill;->anime1:B

    move-object/from16 v0, p2

    iget-short v8, v0, Lcom/hz/core/Skill;->anime2:S

    move-object/from16 v0, p2

    iget-short v9, v0, Lcom/hz/core/Skill;->anime3:S

    move/from16 v4, p3

    .line 1747
    invoke-static/range {v3 .. v10}, Lcom/hz/main/Control;->createBattleUseSkillControl(IIBBIIILjava/lang/String;)Lcom/hz/main/Control;

    move-result-object v20

    .line 1751
    .local v20, "skillControl":Lcom/hz/main/Control;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 1752
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1758
    .local v7, "skillEffectControlList":Ljava/util/Vector;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/hz/core/Skill;->useMP:I

    if-lez v3, :cond_5

    .line 1760
    const/4 v4, 0x3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/hz/core/Skill;->useMP:I

    neg-int v5, v3

    .line 1761
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p1

    .line 1760
    invoke-static/range {v3 .. v8}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;Z)Z

    .line 1764
    :cond_5
    move-object/from16 v0, p2

    iget v3, v0, Lcom/hz/core/Skill;->useHP:I

    if-lez v3, :cond_6

    .line 1765
    const/4 v4, 0x2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/hz/core/Skill;->useHP:I

    neg-int v5, v3

    .line 1766
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p1

    .line 1765
    invoke-static/range {v3 .. v8}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;Z)Z

    .line 1772
    :cond_6
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v3, v2}, Lcom/hz/battle/Battle;->setSkillGuardData(Lcom/hz/core/Skill;B[B)V

    .line 1777
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 1779
    move-object/from16 v0, p2

    iget-short v3, v0, Lcom/hz/core/Skill;->power1:S

    const/16 v4, 0x58

    if-ne v3, v4, :cond_7

    .line 1780
    move-object/from16 v0, p2

    iget-short v3, v0, Lcom/hz/core/Skill;->powerValue1:S

    int-to-byte v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->removeBufferByStatus(B)V

    .line 1782
    :cond_7
    move-object/from16 v0, p2

    iget-short v3, v0, Lcom/hz/core/Skill;->power2:S

    const/16 v4, 0x58

    if-ne v3, v4, :cond_8

    .line 1783
    move-object/from16 v0, p2

    iget-short v3, v0, Lcom/hz/core/Skill;->powerValue2:S

    int-to-byte v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->removeBufferByStatus(B)V

    .line 1785
    :cond_8
    move-object/from16 v0, p2

    iget-short v3, v0, Lcom/hz/core/Skill;->power3:S

    const/16 v4, 0x58

    if-ne v3, v4, :cond_9

    .line 1786
    move-object/from16 v0, p2

    iget-short v3, v0, Lcom/hz/core/Skill;->powerValue3:S

    int-to-byte v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->removeBufferByStatus(B)V

    .line 1790
    :cond_9
    const/16 v17, 0x0

    .line 1791
    .local v17, "isSKillHit":Z
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 1793
    .local v22, "validTargetList":Ljava/util/Vector;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v21

    array-length v3, v0

    if-lt v14, v3, :cond_13

    .line 1837
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/battle/Battle;->atkType:B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/hz/battle/Battle;->isExpendHp(Lcom/hz/core/Skill;B)Z

    move-result v15

    .line 1839
    .local v15, "isExpendHp":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v8

    .line 1840
    .local v8, "targetNum":I
    const/4 v14, 0x0

    :goto_2
    if-lt v14, v8, :cond_17

    .line 1908
    if-eqz v17, :cond_f

    .line 1910
    const/16 v3, 0x91

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v23

    .line 1911
    .local v23, "value":I
    if-gez v23, :cond_a

    .line 1912
    const/16 v23, 0x0

    .line 1914
    :cond_a
    const/16 v3, 0x92

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v19

    .line 1915
    .local v19, "powerValue":I
    if-lez v19, :cond_b

    .line 1916
    const/16 v3, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int v3, v3, v19

    div-int/lit8 v3, v3, 0x64

    add-int v23, v23, v3

    .line 1918
    :cond_b
    if-lez v23, :cond_c

    .line 1919
    const/4 v3, 0x2

    .line 1920
    const/4 v4, 0x0

    .line 1919
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v3, v1, v4, v7}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    .line 1923
    :cond_c
    const/16 v3, 0x93

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v23

    .line 1924
    if-gez v23, :cond_d

    .line 1925
    const/16 v23, 0x0

    .line 1927
    :cond_d
    const/16 v3, 0x94

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v19

    .line 1928
    if-lez v19, :cond_e

    .line 1929
    const/16 v3, 0x1e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    mul-int v3, v3, v19

    div-int/lit8 v3, v3, 0x64

    add-int v23, v23, v3

    .line 1931
    :cond_e
    if-lez v23, :cond_f

    .line 1932
    const/4 v3, 0x3

    .line 1933
    const/4 v4, 0x0

    .line 1932
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v3, v1, v4, v7}, Lcom/hz/core/Define;->processBattleHpMpPower(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    .line 1937
    .end local v19    # "powerValue":I
    .end local v23    # "value":I
    :cond_f
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v11, v3, [Lcom/hz/main/Control;

    .line 1938
    .local v11, "effectList":[Lcom/hz/main/Control;
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v14, v3, :cond_1d

    .line 1941
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/hz/main/Control;->setSubControlList([Lcom/hz/main/Control;)V

    goto/16 :goto_0

    .line 1687
    .end local v7    # "skillEffectControlList":Ljava/util/Vector;
    .end local v8    # "targetNum":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "effectList":[Lcom/hz/main/Control;
    .end local v14    # "i":I
    .end local v15    # "isExpendHp":Z
    .end local v17    # "isSKillHit":Z
    .end local v20    # "skillControl":Lcom/hz/main/Control;
    .end local v21    # "targetPosList":[B
    .end local v22    # "validTargetList":Ljava/util/Vector;
    :cond_10
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1689
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1693
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/hz/battle/Battle;->isSameSide(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1694
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/hz/battle/Battle;->doAttak(Lcom/hz/actor/Player;I)V

    goto/16 :goto_0

    .line 1700
    :cond_11
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->skillAtkType:B

    invoke-static {v3}, Lcom/hz/core/Define;->isPhysicalAtkType(B)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1702
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1704
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1708
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/hz/battle/Battle;->isSameSide(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1709
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/hz/battle/Battle;->doAttak(Lcom/hz/actor/Player;I)V

    goto/16 :goto_0

    .line 1717
    :cond_12
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1719
    move-object/from16 v0, p2

    iget-byte v3, v0, Lcom/hz/core/Skill;->type:B

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1723
    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/hz/battle/Battle;->isSameSide(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1724
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/hz/battle/Battle;->doAttak(Lcom/hz/actor/Player;I)V

    goto/16 :goto_0

    .line 1795
    .restart local v7    # "skillEffectControlList":Ljava/util/Vector;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v17    # "isSKillHit":Z
    .restart local v20    # "skillControl":Lcom/hz/main/Control;
    .restart local v21    # "targetPosList":[B
    .restart local v22    # "validTargetList":Ljava/util/Vector;
    :cond_13
    aget-byte v18, v21, v14

    .line 1798
    .local v18, "pos":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->isValidPos(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1793
    :cond_14
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1805
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v5

    .line 1808
    .local v5, "targetPlayer":Lcom/hz/actor/Player;
    if-eqz v5, :cond_14

    .line 1816
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1821
    invoke-virtual {v5}, Lcom/hz/actor/Player;->isDead()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1823
    invoke-virtual {v5}, Lcom/hz/actor/Player;->isDeadDelay()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1827
    invoke-virtual/range {p2 .. p2}, Lcom/hz/core/Skill;->isRebornSkill()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1832
    :cond_16
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1841
    .end local v5    # "targetPlayer":Lcom/hz/actor/Player;
    .end local v18    # "pos":I
    .restart local v8    # "targetNum":I
    .restart local v15    # "isExpendHp":Z
    :cond_17
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/actor/Player;

    .line 1846
    .restart local v5    # "targetPlayer":Lcom/hz/actor/Player;
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/hz/battle/Battle;->atkType:B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v15}, Lcom/hz/battle/Battle;->getGrardPet(Lcom/hz/actor/Player;BZ)Lcom/hz/actor/Player;

    move-result-object v12

    .line 1847
    .local v12, "grardPlayer":Lcom/hz/actor/Player;
    if-eqz v12, :cond_1b

    .line 1848
    move-object v5, v12

    .line 1878
    :cond_18
    :goto_5
    if-eqz v5, :cond_19

    .line 1879
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v5, v3, v4}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    :cond_19
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 1884
    invoke-virtual/range {v3 .. v8}, Lcom/hz/battle/Battle;->calDamage(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;I)Z

    move-result v16

    .line 1889
    .local v16, "isHit":Z
    if-eqz v16, :cond_1a

    .line 1890
    const/16 v17, 0x1

    .line 1891
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2, v7}, Lcom/hz/battle/Battle;->processSkillPower(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;)V

    .line 1894
    if-eqz v5, :cond_1a

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v5, v3}, Lcom/hz/actor/Player;->isTabStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1896
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/hz/actor/Player;->doKeepAtkTime(Lcom/hz/battle/Battle;)V

    .line 1898
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v5, v3, v4}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 1840
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1853
    .end local v16    # "isHit":Z
    :cond_1b
    iget-byte v3, v5, Lcom/hz/actor/Player;->position:B

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/hz/battle/Battle;->atkType:B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/hz/battle/Battle;->getGuardPos(BB)B

    move-result v13

    .line 1857
    .local v13, "guardPos":B
    if-eqz v5, :cond_1c

    .line 1859
    iget v3, v5, Lcom/hz/actor/Player;->keepout_atk_time:I

    if-lez v3, :cond_1c

    if-eqz v15, :cond_1c

    .line 1860
    const/4 v13, -0x1

    .line 1865
    :cond_1c
    if-ltz v13, :cond_18

    .line 1866
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v12

    .line 1868
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1869
    move-object v5, v12

    goto :goto_5

    .line 1939
    .end local v5    # "targetPlayer":Lcom/hz/actor/Player;
    .end local v12    # "grardPlayer":Lcom/hz/actor/Player;
    .end local v13    # "guardPos":B
    .restart local v11    # "effectList":[Lcom/hz/main/Control;
    :cond_1d
    invoke-virtual {v7, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/main/Control;

    aput-object v3, v11, v14

    .line 1938
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3
.end method

.method private getAutoSkillIDByRound(Lcom/hz/actor/Player;)I
    .locals 4
    .param p1, "model"    # Lcom/hz/actor/Player;

    .prologue
    .line 1233
    if-nez p1, :cond_1

    .line 1234
    const/4 v2, -0x1

    .line 1255
    :cond_0
    :goto_0
    return v2

    .line 1237
    :cond_1
    iget-object v3, p1, Lcom/hz/actor/Player;->autoSkillID:[S

    if-nez v3, :cond_2

    .line 1238
    const/4 v2, -0x2

    goto :goto_0

    .line 1241
    :cond_2
    const/4 v2, -0x1

    .line 1243
    .local v2, "skillID":I
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getAutoSkillCount()I

    move-result v0

    .line 1245
    .local v0, "autoSkillCount":I
    if-gtz v0, :cond_3

    .line 1246
    const/4 v2, -0x3

    goto :goto_0

    .line 1249
    :cond_3
    iget-byte v3, p0, Lcom/hz/battle/Battle;->round:B

    rem-int v1, v3, v0

    .line 1251
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v3, p1, Lcom/hz/actor/Player;->autoSkillID:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1252
    iget-object v3, p1, Lcom/hz/actor/Player;->autoSkillID:[S

    aget-short v2, v3, v1

    goto :goto_0
.end method

.method private final getGrardPet(Lcom/hz/actor/Player;BZ)Lcom/hz/actor/Player;
    .locals 5
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "atkType"    # B
    .param p3, "isExpendHp"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    :cond_0
    move-object v1, v2

    .line 1439
    :cond_1
    :goto_0
    return-object v1

    .line 1378
    :cond_2
    const/4 v3, 0x6

    if-ne p2, v3, :cond_3

    move-object v1, v2

    .line 1379
    goto :goto_0

    .line 1383
    :cond_3
    invoke-virtual {p0, p1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v2

    .line 1384
    goto :goto_0

    .line 1388
    :cond_4
    if-eqz p1, :cond_5

    .line 1390
    iget v3, p1, Lcom/hz/actor/Player;->keepout_atk_time:I

    if-lez v3, :cond_5

    if-eqz p3, :cond_5

    move-object v1, v2

    .line 1391
    goto :goto_0

    .line 1396
    :cond_5
    iget-byte v3, p1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v3}, Lcom/hz/battle/Battle;->getPlayerPet(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 1397
    .local v1, "pet":Lcom/hz/actor/Player;
    if-nez v1, :cond_6

    move-object v1, v2

    .line 1398
    goto :goto_0

    .line 1402
    :cond_6
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v1, v2

    .line 1403
    goto :goto_0

    .line 1408
    :cond_7
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v1, v2

    .line 1409
    goto :goto_0

    .line 1412
    :cond_8
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v1, v2

    .line 1413
    goto :goto_0

    .line 1416
    :cond_9
    const/4 v0, 0x0

    .line 1417
    .local v0, "isGrardSucess":Z
    packed-switch p2, :pswitch_data_0

    .line 1436
    :goto_1
    if-nez v0, :cond_1

    move-object v1, v2

    .line 1439
    goto :goto_0

    .line 1420
    :pswitch_0
    const/16 v3, 0xa2

    const/16 v4, 0x9d

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/hz/battle/Battle;->isPetSucessGrard(Lcom/hz/actor/Player;Lcom/hz/actor/Player;II)Z

    move-result v0

    .line 1421
    goto :goto_1

    .line 1425
    :pswitch_1
    const/16 v3, 0xa3

    const/16 v4, 0x9e

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/hz/battle/Battle;->isPetSucessGrard(Lcom/hz/actor/Player;Lcom/hz/actor/Player;II)Z

    move-result v0

    .line 1426
    goto :goto_1

    .line 1429
    :pswitch_2
    const/16 v3, 0xa4

    const/16 v4, 0x9f

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/hz/battle/Battle;->isPetSucessGrard(Lcom/hz/actor/Player;Lcom/hz/actor/Player;II)Z

    move-result v0

    .line 1430
    goto :goto_1

    .line 1433
    :pswitch_3
    const/16 v3, 0xa5

    const/16 v4, 0xa0

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/hz/battle/Battle;->isPetSucessGrard(Lcom/hz/actor/Player;Lcom/hz/actor/Player;II)Z

    move-result v0

    goto :goto_1

    .line 1417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final getGuardPos(BB)B
    .locals 12
    .param p1, "targetPos"    # B
    .param p2, "atkType"    # B

    .prologue
    const/4 v8, -0x1

    .line 522
    iget-object v9, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v8

    .line 526
    :cond_1
    if-ltz p1, :cond_0

    const/16 v9, 0x22

    if-ge p1, v9, :cond_0

    .line 531
    const/4 v9, 0x6

    if-eq p2, v9, :cond_0

    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, "allGuardValue":I
    iget-object v9, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    const/16 v11, 0x75

    invoke-static {p1, v11}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 537
    .local v6, "integer":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 538
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 541
    :cond_2
    const/4 v3, 0x0

    .line 542
    .local v3, "getGuardValue":I
    const/4 v7, 0x0

    .line 543
    .local v7, "oneGuardInteger":Ljava/lang/Integer;
    packed-switch p2, :pswitch_data_0

    .line 564
    :goto_1
    if-nez v6, :cond_3

    if-eqz v7, :cond_0

    .line 569
    :cond_3
    if-eqz v7, :cond_4

    .line 570
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 573
    :cond_4
    invoke-static {v2}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v1

    .line 574
    .local v1, "allGuardPos":I
    invoke-static {v2}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v0

    .line 576
    .local v0, "allGuardPecent":I
    invoke-static {v3}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v5

    .line 577
    .local v5, "guardPos":I
    invoke-static {v3}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v4

    .line 580
    .local v4, "guardPecent":I
    if-le v0, v4, :cond_5

    .line 581
    move v4, v0

    .line 582
    move v5, v1

    .line 585
    :cond_5
    if-lez v4, :cond_0

    .line 586
    const/16 v9, 0x64

    invoke-virtual {p0, v9}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v9

    if-ge v9, v4, :cond_0

    .line 587
    int-to-byte v8, v5

    goto :goto_0

    .line 546
    .end local v0    # "allGuardPecent":I
    .end local v1    # "allGuardPos":I
    .end local v4    # "guardPecent":I
    .end local v5    # "guardPos":I
    :pswitch_0
    iget-object v9, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    const/16 v11, 0x71

    invoke-static {p1, v11}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "oneGuardInteger":Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 547
    .restart local v7    # "oneGuardInteger":Ljava/lang/Integer;
    goto :goto_1

    .line 551
    :pswitch_1
    iget-object v9, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    const/16 v11, 0x72

    invoke-static {p1, v11}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "oneGuardInteger":Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 552
    .restart local v7    # "oneGuardInteger":Ljava/lang/Integer;
    goto :goto_1

    .line 555
    :pswitch_2
    iget-object v9, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    const/16 v11, 0x73

    invoke-static {p1, v11}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "oneGuardInteger":Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 556
    .restart local v7    # "oneGuardInteger":Ljava/lang/Integer;
    goto :goto_1

    .line 559
    :pswitch_3
    iget-object v9, p0, Lcom/hz/battle/Battle;->guardHash:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    const/16 v11, 0x74

    invoke-static {p1, v11}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "oneGuardInteger":Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .restart local v7    # "oneGuardInteger":Ljava/lang/Integer;
    goto :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getLeftRightTypeTarget(Ljava/util/Vector;I)V
    .locals 2
    .param p0, "rowV"    # Ljava/util/Vector;
    .param p1, "pos"    # I

    .prologue
    .line 4226
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4227
    new-instance v1, Ljava/lang/Integer;

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4228
    return-void

    .line 4227
    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method public static getPetOwnerPos(Lcom/hz/actor/Player;)I
    .locals 2
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 4368
    if-nez p0, :cond_0

    .line 4372
    const/4 v1, -0x1

    .line 4387
    :goto_0
    return v1

    .line 4375
    :cond_0
    instance-of v1, p0, Lcom/hz/actor/MyPet;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 4376
    check-cast v0, Lcom/hz/actor/MyPet;

    .line 4378
    .local v0, "pet":Lcom/hz/actor/MyPet;
    iget-object v1, v0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eqz v1, :cond_1

    .line 4379
    iget-object v1, v0, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    goto :goto_0

    .line 4387
    .end local v0    # "pet":Lcom/hz/actor/MyPet;
    :cond_1
    iget-byte v1, p0, Lcom/hz/actor/Player;->position:B

    goto :goto_0
.end method

.method public static getPositionColumn(I)I
    .locals 1
    .param p0, "_position"    # I

    .prologue
    .line 371
    invoke-static {p0}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    .line 375
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 378
    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    .line 379
    const/4 v0, 0x3

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getPositionSide(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 141
    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getTarget(Ljava/util/Vector;)[B
    .locals 4
    .param p0, "targetV"    # Ljava/util/Vector;

    .prologue
    const/4 v1, 0x0

    .line 4296
    if-nez p0, :cond_1

    .line 4313
    :cond_0
    return-object v1

    .line 4300
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4304
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v1, v3, [B

    .line 4305
    .local v1, "targets":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 4306
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4307
    .local v2, "tmpValue":Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 4305
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4311
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v0

    goto :goto_1
.end method

.method private final initBattleRowNum()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/16 v5, 0xa

    .line 394
    iput v4, p0, Lcom/hz/battle/Battle;->rowLeft:I

    .line 395
    iput v4, p0, Lcom/hz/battle/Battle;->rowRight:I

    .line 399
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/16 v4, 0x22

    if-lt v1, v4, :cond_2

    .line 423
    iget v4, p0, Lcom/hz/battle/Battle;->rowLeft:I

    if-lt v4, v5, :cond_0

    .line 424
    iput v5, p0, Lcom/hz/battle/Battle;->rowLeft:I

    .line 426
    :cond_0
    iget v4, p0, Lcom/hz/battle/Battle;->rowRight:I

    if-lt v4, v5, :cond_1

    .line 427
    iput v5, p0, Lcom/hz/battle/Battle;->rowRight:I

    .line 433
    :cond_1
    return-void

    .line 400
    :cond_2
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 402
    .local v0, "p":Lcom/hz/actor/Player;
    if-nez v0, :cond_4

    .line 399
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_4
    invoke-static {v1}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 409
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v2, v4, 0x1

    .line 410
    .local v2, "tempLeftRow":I
    iget v4, p0, Lcom/hz/battle/Battle;->rowLeft:I

    if-le v2, v4, :cond_3

    .line 411
    iput v2, p0, Lcom/hz/battle/Battle;->rowLeft:I

    goto :goto_1

    .line 416
    .end local v2    # "tempLeftRow":I
    :cond_5
    add-int/lit8 v4, v1, -0x14

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x1

    .line 417
    .local v3, "tempRightRow":I
    iget v4, p0, Lcom/hz/battle/Battle;->rowRight:I

    if-le v3, v4, :cond_3

    .line 418
    iput v3, p0, Lcom/hz/battle/Battle;->rowRight:I

    goto :goto_1
.end method

.method private initKeepoutatktime([Lcom/hz/actor/Player;)V
    .locals 3
    .param p1, "_playerList"    # [Lcom/hz/actor/Player;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 331
    :cond_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 324
    aget-object v1, p1, v0

    .line 326
    .local v1, "p":Lcom/hz/actor/Player;
    if-nez v1, :cond_2

    .line 323
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_2
    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    iput v2, v1, Lcom/hz/actor/Player;->keepout_atk_time:I

    goto :goto_1
.end method

.method public static isEffectStatus(II)Z
    .locals 1
    .param p0, "effectValue"    # I
    .param p1, "bit"    # I

    .prologue
    .line 77
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isEscapeSuccess(Lcom/hz/actor/Player;)B
    .locals 10
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/16 v9, 0x6a

    const/4 v7, 0x0

    .line 2221
    if-nez p1, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return v7

    .line 2225
    :cond_1
    const/4 v5, -0x1

    .line 2226
    .local v5, "targetTeamLevel":I
    const/4 v3, 0x0

    .line 2227
    .local v3, "startPos":I
    const/16 v0, 0x14

    .line 2228
    .local v0, "endPos":I
    iget-byte v8, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v8}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2229
    const/16 v3, 0x14

    .line 2230
    const/16 v0, 0x22

    .line 2234
    :cond_2
    move v2, v3

    .local v2, "pos":I
    :goto_1
    if-lt v2, v0, :cond_3

    .line 2247
    invoke-virtual {p1, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    .line 2248
    .local v6, "tempLevel":I
    sub-int v8, v6, v5

    const/4 v9, -0x7

    if-gt v8, v9, :cond_6

    .line 2249
    const/16 v1, 0x28

    .line 2256
    .local v1, "escapeRate":I
    :goto_2
    const/16 v8, 0x64

    invoke-virtual {p0, v8}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v8

    if-ge v8, v1, :cond_0

    .line 2257
    const/4 v7, 0x1

    goto :goto_0

    .line 2235
    .end local v1    # "escapeRate":I
    .end local v6    # "tempLevel":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v4

    .line 2236
    .local v4, "target":Lcom/hz/actor/Player;
    if-nez v4, :cond_5

    .line 2234
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2240
    :cond_5
    invoke-virtual {v4, v9}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    .line 2241
    .restart local v6    # "tempLevel":I
    if-le v6, v5, :cond_4

    .line 2242
    move v5, v6

    goto :goto_3

    .line 2250
    .end local v4    # "target":Lcom/hz/actor/Player;
    :cond_6
    sub-int v8, v6, v5

    const/4 v9, 0x7

    if-lt v8, v9, :cond_7

    .line 2251
    const/16 v1, 0x5f

    .line 2252
    .restart local v1    # "escapeRate":I
    goto :goto_2

    .line 2253
    .end local v1    # "escapeRate":I
    :cond_7
    const/16 v1, 0x4b

    .restart local v1    # "escapeRate":I
    goto :goto_2
.end method

.method private isExpendHp(Lcom/hz/core/Skill;B)Z
    .locals 3
    .param p1, "skill"    # Lcom/hz/core/Skill;
    .param p2, "atkType"    # B

    .prologue
    const/4 v1, 0x1

    .line 1951
    if-nez p1, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return v1

    .line 1954
    :cond_1
    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 1955
    :cond_2
    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v0

    .line 1956
    .local v0, "ph":I
    if-ltz v0, :cond_0

    .line 1960
    const/16 v2, 0x32

    invoke-virtual {p1, v2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v0

    .line 1961
    if-ltz v0, :cond_0

    .line 1965
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLeftSide(I)Z
    .locals 2
    .param p0, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-static {p0}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isPetSucessGrard(Lcom/hz/actor/Player;Lcom/hz/actor/Player;II)Z
    .locals 7
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "pet"    # Lcom/hz/actor/Player;
    .param p3, "playerPower"    # I
    .param p4, "petPower"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1331
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 1360
    :cond_1
    :goto_0
    return v3

    .line 1335
    :cond_2
    const/16 v5, 0xa6

    invoke-virtual {p1, v3, v5}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v1

    .line 1336
    .local v1, "percent":I
    const/16 v5, 0xa1

    invoke-virtual {p2, v3, v5}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v2

    .line 1339
    .local v2, "petPercent":I
    invoke-virtual {p1, v3, p3}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 1340
    .local v0, "getPercent":I
    if-le v0, v1, :cond_3

    .line 1341
    move v1, v0

    .line 1344
    :cond_3
    if-lez v1, :cond_4

    .line 1345
    invoke-virtual {p0, v6}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v5

    if-lt v5, v1, :cond_1

    .line 1351
    :cond_4
    invoke-virtual {p2, v3, p4}, Lcom/hz/actor/Player;->getSkillPowerValue(II)I

    move-result v0

    .line 1352
    if-le v0, v2, :cond_5

    .line 1353
    move v2, v0

    .line 1355
    :cond_5
    if-lez v2, :cond_6

    .line 1356
    invoke-virtual {p0, v6}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v5

    if-lt v5, v2, :cond_1

    :cond_6
    move v3, v4

    .line 1360
    goto :goto_0
.end method

.method public static isSameSide(II)Z
    .locals 3
    .param p0, "playerPos"    # I
    .param p1, "cursor"    # I

    .prologue
    .line 3836
    invoke-static {p0}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v1

    .line 3837
    .local v1, "playerSide":I
    invoke-static {p1}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v0

    .line 3838
    .local v0, "curSide":I
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static final mergeControlList(Ljava/util/Vector;Z)Ljava/util/Vector;
    .locals 14
    .param p0, "baselist"    # Ljava/util/Vector;
    .param p1, "isRunBuffer"    # Z

    .prologue
    .line 687
    if-nez p0, :cond_1

    .line 688
    const/4 p0, 0x0

    .line 773
    .end local p0    # "baselist":Ljava/util/Vector;
    :cond_0
    return-object p0

    .line 691
    .restart local p0    # "baselist":Ljava/util/Vector;
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v9, v12, :cond_0

    .line 693
    invoke-virtual {p0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 694
    .local v0, "aniControl":Lcom/hz/main/Control;
    if-nez v0, :cond_3

    .line 691
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 698
    :cond_3
    iget v7, v0, Lcom/hz/main/Control;->counter:I

    .line 700
    .local v7, "effectStatus":I
    iget v1, v0, Lcom/hz/main/Control;->int1:I

    .line 703
    .local v1, "animeID":I
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v12

    add-int/lit8 v10, v12, -0x1

    .local v10, "j":I
    :goto_1
    if-le v10, v9, :cond_2

    .line 705
    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hz/main/Control;

    .line 706
    .local v11, "nextControl":Lcom/hz/main/Control;
    if-nez v11, :cond_5

    .line 703
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 710
    :cond_5
    iget v3, v0, Lcom/hz/main/Control;->int0:I

    .line 712
    .local v3, "changeValue":I
    iget v8, v11, Lcom/hz/main/Control;->counter:I

    .line 713
    .local v8, "effectStatus2":I
    iget v4, v11, Lcom/hz/main/Control;->int0:I

    .line 714
    .local v4, "changeValue2":I
    iget v2, v11, Lcom/hz/main/Control;->int1:I

    .line 717
    .local v2, "animeID2":I
    if-ne v1, v2, :cond_4

    .line 722
    if-eqz p1, :cond_6

    .line 723
    const/16 v12, 0x10

    invoke-static {v8, v12}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v12

    if-nez v12, :cond_4

    .line 729
    :cond_6
    const/16 v12, 0x40

    invoke-static {v7, v12}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v12

    .line 730
    const/16 v13, 0x40

    invoke-static {v8, v13}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v13

    if-ne v12, v13, :cond_4

    .line 735
    if-gez v3, :cond_7

    if-gez v4, :cond_4

    .line 738
    :cond_7
    if-ltz v3, :cond_8

    if-ltz v4, :cond_4

    .line 746
    :cond_8
    const/4 v12, 0x2

    invoke-static {v7, v12}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v5

    .line 747
    .local v5, "effectHit":Z
    const/4 v12, 0x2

    invoke-static {v8, v12}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v6

    .line 748
    .local v6, "effectHit2":Z
    if-ne v5, v6, :cond_4

    .line 753
    if-nez v5, :cond_9

    .line 754
    const/4 v12, 0x1

    invoke-static {v7, v12}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v12

    .line 755
    const/4 v13, 0x1

    invoke-static {v8, v13}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v13

    if-ne v12, v13, :cond_4

    .line 762
    :cond_9
    iget v12, v0, Lcom/hz/main/Control;->counter:I

    or-int/2addr v12, v8

    iput v12, v0, Lcom/hz/main/Control;->counter:I

    .line 763
    iget v12, v0, Lcom/hz/main/Control;->int0:I

    add-int/2addr v12, v4

    iput v12, v0, Lcom/hz/main/Control;->int0:I

    .line 764
    invoke-virtual {p0, v11}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private final processItemPower(Lcom/hz/actor/Player;Lcom/hz/core/Item;Ljava/util/Vector;)V
    .locals 10
    .param p1, "targetPlayer"    # Lcom/hz/actor/Player;
    .param p2, "useItem"    # Lcom/hz/core/Item;
    .param p3, "itemEffectControlList"    # Ljava/util/Vector;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    const/4 v8, 0x0

    .line 2154
    .local v8, "animeID":I
    iget-short v0, p2, Lcom/hz/core/Item;->power1:S

    if-lez v0, :cond_2

    .line 2158
    iget-short v4, p2, Lcom/hz/core/Item;->power1:S

    iget-short v5, p2, Lcom/hz/core/Item;->powerValue1:S

    .line 2159
    iget-byte v7, p2, Lcom/hz/core/Item;->round:B

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v9, p3

    .line 2158
    invoke-static/range {v0 .. v9}, Lcom/hz/core/Define;->processBattlePower(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;ISIIILjava/util/Vector;)V

    .line 2161
    :cond_2
    iget-short v0, p2, Lcom/hz/core/Item;->power2:S

    if-lez v0, :cond_0

    .line 2165
    iget-short v4, p2, Lcom/hz/core/Item;->power2:S

    iget-short v5, p2, Lcom/hz/core/Item;->powerValue2:S

    .line 2166
    iget-byte v7, p2, Lcom/hz/core/Item;->round:B

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v9, p3

    .line 2165
    invoke-static/range {v0 .. v9}, Lcom/hz/core/Define;->processBattlePower(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;ISIIILjava/util/Vector;)V

    goto :goto_0
.end method

.method private final processSkillPower(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;)V
    .locals 10
    .param p1, "targetPlayer"    # Lcom/hz/actor/Player;
    .param p2, "attackPlayer"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;
    .param p4, "itemEffectControlList"    # Ljava/util/Vector;

    .prologue
    .line 1973
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    iget-short v0, p3, Lcom/hz/core/Skill;->power1:S

    if-lez v0, :cond_2

    .line 1979
    iget-short v4, p3, Lcom/hz/core/Skill;->power1:S

    iget-short v5, p3, Lcom/hz/core/Skill;->powerValue1:S

    .line 1980
    iget-byte v6, p3, Lcom/hz/core/Skill;->statusBit1:B

    iget v7, p3, Lcom/hz/core/Skill;->round:I

    iget-short v8, p3, Lcom/hz/core/Skill;->anime3:S

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, p4

    .line 1979
    invoke-static/range {v0 .. v9}, Lcom/hz/core/Define;->processBattlePower(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;ISIIILjava/util/Vector;)V

    .line 1982
    :cond_2
    iget-short v0, p3, Lcom/hz/core/Skill;->power2:S

    if-lez v0, :cond_3

    .line 1984
    iget-short v4, p3, Lcom/hz/core/Skill;->power2:S

    iget-short v5, p3, Lcom/hz/core/Skill;->powerValue2:S

    .line 1985
    iget-byte v6, p3, Lcom/hz/core/Skill;->statusBit2:B

    iget v7, p3, Lcom/hz/core/Skill;->round:I

    iget-short v8, p3, Lcom/hz/core/Skill;->anime3:S

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, p4

    .line 1984
    invoke-static/range {v0 .. v9}, Lcom/hz/core/Define;->processBattlePower(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;ISIIILjava/util/Vector;)V

    .line 1987
    :cond_3
    iget-short v0, p3, Lcom/hz/core/Skill;->power3:S

    if-lez v0, :cond_0

    .line 1989
    iget-short v4, p3, Lcom/hz/core/Skill;->power3:S

    iget-short v5, p3, Lcom/hz/core/Skill;->powerValue3:S

    .line 1990
    iget-byte v6, p3, Lcom/hz/core/Skill;->statusBit3:B

    iget v7, p3, Lcom/hz/core/Skill;->round:I

    iget-short v8, p3, Lcom/hz/core/Skill;->anime3:S

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, p4

    .line 1989
    invoke-static/range {v0 .. v9}, Lcom/hz/core/Define;->processBattlePower(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;ISIIILjava/util/Vector;)V

    goto :goto_0
.end method

.method private final setSkillGuardData(Lcom/hz/core/Skill;B[B)V
    .locals 5
    .param p1, "skill"    # Lcom/hz/core/Skill;
    .param p2, "guardPos"    # B
    .param p3, "targetPosList"    # [B

    .prologue
    .line 474
    if-nez p1, :cond_1

    .line 499
    :cond_0
    return-void

    .line 478
    :cond_1
    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    .line 482
    iget-short v1, p1, Lcom/hz/core/Skill;->power1:S

    .line 485
    .local v1, "guardPower":I
    const/16 v4, 0x71

    if-lt v1, v4, :cond_0

    .line 486
    const/16 v4, 0x75

    if-gt v1, v4, :cond_0

    .line 490
    iget-short v0, p1, Lcom/hz/core/Skill;->powerValue1:S

    .line 491
    .local v0, "guardPercent":I
    if-lez v0, :cond_0

    .line 495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_0

    .line 496
    aget-byte v3, p3, v2

    .line 497
    .local v3, "targetPos":B
    invoke-direct {p0, v3, v1, p2, v0}, Lcom/hz/battle/Battle;->addGuardData(BIBI)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final sortModelListBySpeed()Ljava/util/Vector;
    .locals 8

    .prologue
    const/16 v7, 0x1f

    .line 2331
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2333
    .local v4, "vector":Ljava/util/Vector;
    iget-object v5, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    if-nez v5, :cond_1

    .line 2365
    :cond_0
    return-object v4

    .line 2337
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 2339
    iget-object v5, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    aget-object v2, v5, v0

    .line 2341
    .local v2, "player1":Lcom/hz/actor/Player;
    if-nez v2, :cond_3

    .line 2337
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2345
    :cond_3
    const/4 v1, 0x0

    .line 2348
    .local v1, "offsetIndex":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 2361
    :goto_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 2362
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 2352
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/actor/Player;

    .line 2353
    .local v3, "player2":Lcom/hz/actor/Player;
    invoke-virtual {v2, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    invoke-virtual {v3, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 2355
    invoke-virtual {v4, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    .line 2358
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 2359
    goto :goto_2
.end method


# virtual methods
.method public final addAniControl(Lcom/hz/main/Control;)V
    .locals 1
    .param p1, "c"    # Lcom/hz/main/Control;

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public calBackValue(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)I
    .locals 6
    .param p1, "from"    # Lcom/hz/actor/Player;
    .param p2, "to"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;
    .param p4, "baseDmg"    # I

    .prologue
    const/4 v3, 0x0

    .line 3080
    const/4 v0, 0x0

    .line 3083
    .local v0, "getValue":I
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3138
    :cond_0
    :goto_0
    return v3

    .line 3088
    :cond_1
    const/16 v4, 0x15

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3093
    iget-byte v4, p0, Lcom/hz/battle/Battle;->atkType:B

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 3096
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3100
    const/16 v4, 0x18

    invoke-virtual {p0, v4, p2, p1, p3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    .line 3113
    :cond_2
    :goto_1
    if-lez v0, :cond_0

    .line 3117
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v2

    .line 3118
    .local v2, "randValue":I
    if-ge v2, v0, :cond_4

    const/4 v1, 0x1

    .line 3121
    .local v1, "isSuccess":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 3125
    mul-int v4, p4, v0

    div-int/lit8 v3, v4, 0x64

    .line 3138
    .local v3, "result":I
    goto :goto_0

    .line 3103
    .end local v1    # "isSuccess":Z
    .end local v2    # "randValue":I
    .end local v3    # "result":I
    :cond_3
    iget-byte v4, p0, Lcom/hz/battle/Battle;->atkType:B

    invoke-static {v4}, Lcom/hz/core/Define;->isPhysicalAtkType(B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3106
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3110
    const/16 v4, 0x17

    invoke-virtual {p0, v4, p2, p1, p3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_1

    .restart local v2    # "randValue":I
    :cond_4
    move v1, v3

    .line 3118
    goto :goto_2
.end method

.method public calDamage(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;I)Z
    .locals 19
    .param p1, "from"    # Lcom/hz/actor/Player;
    .param p2, "to"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;
    .param p4, "effectList"    # Ljava/util/Vector;
    .param p5, "targetNum"    # I

    .prologue
    .line 2427
    if-nez p1, :cond_1

    .line 2431
    const/4 v13, 0x0

    .line 2594
    :cond_0
    :goto_0
    return v13

    .line 2433
    :cond_1
    if-nez p2, :cond_2

    .line 2437
    const/4 v13, 0x0

    goto :goto_0

    .line 2444
    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-byte v5, v0, Lcom/hz/core/Skill;->area:B

    invoke-static {v5}, Lcom/hz/core/Define;->getSkillAreaPlayerNum(B)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v14, 0x1

    .line 2446
    .local v14, "isRangle":Z
    :goto_1
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/battle/Battle;->atkType:B

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/battle/Battle;->atkType:B

    const/4 v7, 0x5

    if-eq v5, v7, :cond_4

    .line 2447
    const/16 v5, 0xe

    invoke-static {v5}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2448
    const-string v5, "(%U) \u1ea3o \u1ea3nh, v\u00f4 hi\u1ec7u"

    invoke-virtual/range {p2 .. p2}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 2449
    const/4 v13, 0x0

    goto :goto_0

    .line 2444
    .end local v14    # "isRangle":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 2454
    .restart local v14    # "isRangle":Z
    :cond_4
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/battle/Battle;->atkType:B

    const/4 v7, 0x6

    if-ne v5, v7, :cond_5

    .line 2456
    const/4 v5, 0x5

    new-array v6, v5, [I

    .line 2457
    .local v6, "dmgData":[I
    const/4 v5, 0x1

    aget v7, v6, v5

    or-int/lit8 v7, v7, 0x2

    aput v7, v6, v5

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p4

    .line 2458
    invoke-virtual/range {v5 .. v11}, Lcom/hz/battle/Battle;->delDamageEffect([ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2459
    const/4 v13, 0x1

    goto :goto_0

    .line 2466
    .end local v6    # "dmgData":[I
    :cond_5
    const/16 v5, 0x15

    invoke-static {v5}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2467
    const-string v5, "(%U) v\u00f4 \u0111\u1ecbch, kh\u00f4ng b\u1ecb s\u00e1t th\u01b0\u01a1ng "

    invoke-virtual/range {p2 .. p2}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 2468
    const/4 v13, 0x0

    goto :goto_0

    .line 2471
    :cond_6
    const/16 v5, 0xf

    invoke-static {v5}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2472
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/battle/Battle;->atkType:B

    invoke-static {v5}, Lcom/hz/core/Define;->isPhysicalAtkType(B)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2473
    const-string v5, "(%U) ma c\u00f4ng v\u00f4 hi\u1ec7u!"

    invoke-virtual/range {p2 .. p2}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 2474
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2478
    :cond_7
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2479
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/battle/Battle;->atkType:B

    invoke-static {v5}, Lcom/hz/core/Define;->isPhysicalAtkType(B)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2480
    const-string v5, "(%U) v\u1eadt c\u00f4ng v\u00f4 hi\u1ec7u!"

    invoke-virtual/range {p2 .. p2}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 2481
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2487
    :cond_8
    invoke-virtual/range {p0 .. p4}, Lcom/hz/battle/Battle;->calInsight(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2488
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2493
    :cond_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/hz/battle/Battle;->isLeftHand:Z

    .line 2494
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/hz/battle/Battle;->block:I

    .line 2496
    const/16 v5, 0x23

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    .line 2497
    if-eqz p3, :cond_a

    .line 2498
    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/hz/core/Skill;->atk_time:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    .line 2500
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x63

    invoke-static {v5, v7, v8, v9}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    .line 2503
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/battle/Battle;->atkType:B

    invoke-static {v5}, Lcom/hz/core/Define;->isPhysicalAtkType(B)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2504
    const/16 v5, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/hz/battle/Battle;->block:I

    .line 2508
    :cond_b
    const/16 v5, 0x4d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v16

    .line 2509
    .local v16, "leftHitTime":I
    const/16 v5, 0x4e

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v18

    .line 2524
    .local v18, "rightHitTime":I
    if-lez v16, :cond_f

    if-lez v18, :cond_f

    const/4 v15, 0x1

    .line 2526
    .local v15, "isTwoHandWeapon":Z
    :goto_2
    if-gtz v16, :cond_c

    if-lez v18, :cond_c

    .line 2527
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/hz/battle/Battle;->isLeftHand:Z

    .line 2530
    :cond_c
    const/4 v13, 0x0

    .line 2538
    .local v13, "isHit":Z
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 2539
    .local v10, "targetEffecctList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 2541
    .local v11, "actorEffecctList":Ljava/util/Vector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    if-lt v12, v5, :cond_10

    .line 2574
    :goto_4
    const/16 v17, 0xa

    .line 2575
    .local v17, "maxHit":I
    if-eqz p3, :cond_d

    .line 2576
    move-object/from16 v0, p3

    iget-byte v5, v0, Lcom/hz/core/Skill;->area:B

    invoke-static {v5}, Lcom/hz/core/Define;->getSkillAreaPlayerNum(B)I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_d

    .line 2577
    const/16 v17, 0x5

    .line 2582
    :cond_d
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v0, v17

    if-lt v5, v0, :cond_e

    .line 2583
    const/4 v5, 0x0

    invoke-static {v10, v5}, Lcom/hz/battle/Battle;->mergeControlList(Ljava/util/Vector;Z)Ljava/util/Vector;

    move-result-object v10

    .line 2586
    :cond_e
    const/4 v5, 0x0

    invoke-static {v11, v5}, Lcom/hz/battle/Battle;->mergeControlList(Ljava/util/Vector;Z)Ljava/util/Vector;

    move-result-object v11

    .line 2588
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v12, v5, :cond_16

    .line 2591
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_0

    .line 2592
    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2591
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2524
    .end local v10    # "targetEffecctList":Ljava/util/Vector;
    .end local v11    # "actorEffecctList":Ljava/util/Vector;
    .end local v12    # "i":I
    .end local v13    # "isHit":Z
    .end local v15    # "isTwoHandWeapon":Z
    .end local v17    # "maxHit":I
    :cond_f
    const/4 v15, 0x0

    goto :goto_2

    .line 2543
    .restart local v10    # "targetEffecctList":Ljava/util/Vector;
    .restart local v11    # "actorEffecctList":Ljava/util/Vector;
    .restart local v12    # "i":I
    .restart local v13    # "isHit":Z
    .restart local v15    # "isTwoHandWeapon":Z
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/battle/Battle;->calcDirectDamage(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)[I

    move-result-object v6

    .line 2545
    .restart local v6    # "dmgData":[I
    if-eqz v15, :cond_11

    .line 2546
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/hz/battle/Battle;->isLeftHand:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/hz/battle/Battle;->isLeftHand:Z

    .line 2550
    :cond_11
    if-eqz v6, :cond_12

    const/4 v5, 0x1

    aget v5, v6, v5

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2551
    const/4 v13, 0x1

    .line 2554
    :cond_12
    if-eqz v13, :cond_13

    .line 2555
    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->block:I

    add-int/lit8 v5, v5, -0xa

    move-object/from16 v0, p0

    iput v5, v0, Lcom/hz/battle/Battle;->block:I

    :cond_13
    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2559
    invoke-virtual/range {v5 .. v11}, Lcom/hz/battle/Battle;->delDamageEffect([ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2562
    invoke-virtual/range {p2 .. p2}, Lcom/hz/actor/Player;->isDead()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2566
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/hz/battle/Battle;->checkDie1Hp(Lcom/hz/actor/Player;Ljava/util/Vector;)V

    goto/16 :goto_4

    .line 2546
    :cond_14
    const/4 v5, 0x1

    goto :goto_7

    .line 2541
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 2589
    .end local v6    # "dmgData":[I
    .restart local v17    # "maxHit":I
    :cond_16
    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2588
    add-int/lit8 v12, v12, 0x1

    goto :goto_5
.end method

.method public calDefFieldDmg(Lcom/hz/actor/Player;I)I
    .locals 8
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "baseDmg"    # I

    .prologue
    const/16 v7, 0x36

    const/4 v6, 0x3

    .line 3151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3185
    .end local p2    # "baseDmg":I
    :cond_0
    :goto_0
    return p2

    .line 3156
    .restart local p2    # "baseDmg":I
    :cond_1
    invoke-virtual {p1, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    .line 3157
    .local v2, "defField":I
    if-lez v2, :cond_0

    .line 3162
    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    .line 3163
    .local v3, "mp":I
    move v0, v3

    .line 3164
    .local v0, "canDefDmgValue":I
    if-lez v0, :cond_0

    .line 3167
    if-le v0, v2, :cond_2

    .line 3168
    move v0, v2

    .line 3171
    :cond_2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3175
    .local v1, "defDmg":I
    neg-int v5, v1

    invoke-virtual {p1, v6, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3178
    neg-int v5, v1

    invoke-virtual {p1, v7, v5}, Lcom/hz/actor/Player;->addValue(II)V

    .line 3180
    sub-int v4, p2, v1

    .local v4, "result":I
    move p2, v4

    .line 3185
    goto :goto_0
.end method

.method public calHPMPGetValue(Lcom/hz/actor/Player;Lcom/hz/core/Skill;IZI)I
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "skill"    # Lcom/hz/core/Skill;
    .param p3, "baseDmg"    # I
    .param p4, "isHP"    # Z
    .param p5, "targetNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 3008
    if-nez p1, :cond_1

    .line 3067
    :cond_0
    :goto_0
    return v1

    .line 3013
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->isDead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3017
    if-gtz p5, :cond_2

    .line 3018
    const/4 p5, 0x1

    .line 3021
    :cond_2
    const/4 v0, 0x0

    .line 3024
    .local v0, "getValue":I
    if-eqz p4, :cond_5

    .line 3026
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3030
    const/16 v2, 0x39

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 3031
    if-eqz p2, :cond_3

    .line 3032
    const/16 v2, 0x95

    invoke-virtual {p2, v2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3048
    :cond_3
    :goto_1
    div-int/2addr v0, p5

    .line 3050
    if-lez v0, :cond_0

    .line 3054
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_4

    .line 3055
    const/16 v0, 0x3e8

    .line 3058
    :cond_4
    mul-int v2, p3, v0

    div-int/lit16 v1, v2, 0x3e8

    .line 3067
    .local v1, "result":I
    goto :goto_0

    .line 3038
    .end local v1    # "result":I
    :cond_5
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3042
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 3043
    if-eqz p2, :cond_3

    .line 3044
    const/16 v2, 0x96

    invoke-virtual {p2, v2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public calInsight(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;)Z
    .locals 11
    .param p1, "from"    # Lcom/hz/actor/Player;
    .param p2, "to"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;
    .param p4, "effectList"    # Ljava/util/Vector;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v9, 0x0

    .line 2380
    iget-byte v0, p0, Lcom/hz/battle/Battle;->atkType:B

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-byte v0, p0, Lcom/hz/battle/Battle;->atkType:B

    if-eq v0, v4, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return v9

    .line 2385
    :cond_1
    const/4 v7, 0x0

    .line 2386
    .local v7, "costMP":I
    if-eqz p3, :cond_2

    iget v0, p3, Lcom/hz/core/Skill;->useMP:I

    if-lez v0, :cond_2

    .line 2387
    iget v7, p3, Lcom/hz/core/Skill;->useMP:I

    .line 2391
    :cond_2
    invoke-virtual {p2, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 2395
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v8

    .line 2396
    .local v8, "insight":I
    if-lez v8, :cond_0

    .line 2400
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v10

    .line 2401
    .local v10, "randValue":I
    if-ge v10, v8, :cond_3

    const/4 v9, 0x1

    .line 2408
    .local v9, "isSccess":Z
    :cond_3
    if-eqz v9, :cond_0

    .line 2410
    neg-int v0, v7

    invoke-virtual {p2, v3, v0}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2412
    new-array v1, v4, [I

    .local v1, "dmgData":[I
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p4

    .line 2413
    invoke-virtual/range {v0 .. v6}, Lcom/hz/battle/Battle;->delDamageEffect([ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public calTouchDmg(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)I
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "target"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;
    .param p4, "baseDmg"    # I

    .prologue
    .line 2934
    if-nez p1, :cond_1

    .line 2963
    .end local p4    # "baseDmg":I
    :cond_0
    :goto_0
    return p4

    .line 2938
    .restart local p4    # "baseDmg":I
    :cond_1
    invoke-static {p1}, Lcom/hz/battle/Battle;->calTouch(Lcom/hz/actor/Player;)I

    move-result v0

    .line 2939
    .local v0, "getTouch":I
    if-eqz p3, :cond_2

    .line 2940
    const/16 v2, 0x9c

    invoke-virtual {p3, v2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2943
    :cond_2
    if-eqz p2, :cond_3

    if-eq p1, p2, :cond_3

    .line 2944
    const/16 v2, 0xcd

    invoke-virtual {p2, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2948
    :cond_3
    const/16 v2, 0x2bc

    if-le v0, v2, :cond_4

    .line 2949
    const/16 v0, 0x2bc

    .line 2952
    :cond_4
    if-lez v0, :cond_0

    .line 2955
    mul-int v2, p4, v0

    div-int/lit16 v2, v2, 0x3e8

    sub-int v1, p4, v2

    .line 2956
    .local v1, "result":I
    if-gez v1, :cond_5

    .line 2957
    const/4 v1, 0x0

    :cond_5
    move p4, v1

    .line 2963
    goto :goto_0
.end method

.method public calTouchDmgOld(Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)I
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "skill"    # Lcom/hz/core/Skill;
    .param p3, "baseDmg"    # I

    .prologue
    .line 2899
    if-nez p1, :cond_1

    .line 2923
    .end local p3    # "baseDmg":I
    :cond_0
    :goto_0
    return p3

    .line 2903
    .restart local p3    # "baseDmg":I
    :cond_1
    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2904
    .local v0, "getTouch":I
    if-eqz p2, :cond_2

    .line 2905
    const/16 v2, 0x9c

    invoke-virtual {p2, v2}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2908
    :cond_2
    if-lez v0, :cond_0

    .line 2915
    sub-int v1, p3, v0

    .line 2916
    .local v1, "result":I
    if-gez v1, :cond_3

    .line 2917
    const/4 v1, 0x0

    :cond_3
    move p3, v1

    .line 2923
    goto :goto_0
.end method

.method public calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I
    .locals 27
    .param p1, "type"    # I
    .param p2, "a"    # Lcom/hz/actor/Player;
    .param p3, "t"    # Lcom/hz/actor/Player;
    .param p4, "s"    # Lcom/hz/core/Skill;

    .prologue
    .line 3234
    const/16 v25, 0x0

    .line 3236
    .local v25, "tempValue":I
    if-nez p4, :cond_0

    .line 3237
    sget-object p4, Lcom/hz/core/Skill;->DUMMY_SKILL:Lcom/hz/core/Skill;

    .line 3240
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3711
    :pswitch_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 3244
    :pswitch_1
    const/16 v5, 0x1e

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getAttackType(Lcom/hz/core/Skill;)B

    move-result v6

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/hz/battle/Battle;->calcWithType(IBLcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v4

    goto :goto_0

    .line 3249
    :pswitch_2
    const/16 v5, 0x1f

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->getAttackType(Lcom/hz/core/Skill;)B

    move-result v6

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/hz/battle/Battle;->calcWithType(IBLcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v4

    goto :goto_0

    .line 3255
    :pswitch_3
    const/16 v4, 0x2b

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    .line 3256
    const/16 v5, 0x52

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    .line 3255
    add-int/2addr v4, v5

    .line 3256
    const/16 v5, 0x2a

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 3255
    sub-int v25, v4, v5

    .line 3259
    const/16 v4, 0x2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    .line 3260
    .local v15, "forceHit":I
    const/16 v4, 0x46

    if-le v15, v4, :cond_1

    .line 3261
    const/16 v15, 0x46

    .line 3263
    :cond_1
    const/16 v4, 0x55

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    add-int/2addr v15, v4

    .line 3265
    move/from16 v0, v25

    if-ge v0, v15, :cond_2

    .line 3266
    move/from16 v25, v15

    :cond_2
    move/from16 v4, v25

    .line 3273
    goto :goto_0

    .line 3279
    .end local v15    # "forceHit":I
    :pswitch_4
    const/16 v4, 0x2b

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    const/16 v5, 0x52

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x2a

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    sub-int v25, v4, v5

    .line 3281
    const/16 v4, 0x2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v15

    .line 3282
    .restart local v15    # "forceHit":I
    const/16 v4, 0x46

    if-le v15, v4, :cond_3

    .line 3283
    const/16 v15, 0x46

    .line 3285
    :cond_3
    const/16 v4, 0x55

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    add-int/2addr v15, v4

    .line 3287
    move/from16 v0, v25

    if-ge v0, v15, :cond_4

    .line 3288
    move/from16 v25, v15

    :cond_4
    move/from16 v4, v25

    .line 3296
    goto/16 :goto_0

    .line 3302
    .end local v15    # "forceHit":I
    :pswitch_5
    const/16 v4, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    .line 3303
    const/16 v4, 0x52

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    add-int v25, v25, v4

    .line 3306
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v13

    .line 3307
    .local v13, "div":I
    if-gtz v13, :cond_5

    .line 3308
    const/4 v13, 0x1

    .line 3312
    :cond_5
    mul-int/lit8 v4, v25, 0xa

    div-int v25, v4, v13

    move/from16 v4, v25

    .line 3319
    goto/16 :goto_0

    .line 3324
    .end local v13    # "div":I
    :pswitch_6
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v22

    .line 3325
    .local v22, "rd_str":I
    const/16 v4, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v12

    .line 3326
    .local v12, "ap_str":I
    const/16 v4, 0x5f

    const/16 v5, 0x69

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v19

    .line 3329
    .local v19, "rand_str":I
    rsub-int/lit8 v4, v22, 0x64

    mul-int/2addr v4, v12

    mul-int v24, v4, v19

    .line 3336
    .local v24, "tempStr":I
    if-lez v12, :cond_6

    if-lez v19, :cond_6

    rsub-int/lit8 v4, v22, 0x64

    if-lez v4, :cond_6

    .line 3338
    if-gez v24, :cond_6

    .line 3339
    const v24, 0x7fffffff

    .line 3342
    :cond_6
    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x2710

    move/from16 v25, v0

    .line 3345
    if-gtz v25, :cond_7

    .line 3346
    const/16 v25, 0x1

    :cond_7
    move/from16 v4, v25

    .line 3349
    goto/16 :goto_0

    .line 3354
    .end local v12    # "ap_str":I
    .end local v19    # "rand_str":I
    .end local v22    # "rd_str":I
    .end local v24    # "tempStr":I
    :pswitch_7
    const/16 v4, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v16

    .line 3356
    .local v16, "randWeaponStr":I
    const/16 v4, 0x24

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    div-int/2addr v4, v5

    add-int v4, v4, v16

    .line 3358
    const/16 v5, 0x51

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    div-int/2addr v5, v6

    .line 3356
    add-int v25, v4, v5

    move/from16 v4, v25

    .line 3365
    goto/16 :goto_0

    .line 3371
    .end local v16    # "randWeaponStr":I
    :pswitch_8
    const/16 v4, 0x27

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    .line 3372
    const/16 v5, 0x34

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 3371
    sub-int/2addr v4, v5

    .line 3373
    const/16 v5, 0x57

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    .line 3371
    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x50

    div-int/lit8 v25, v4, 0x64

    .line 3376
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v4

    add-int/lit8 v13, v4, 0xc

    .line 3377
    .restart local v13    # "div":I
    if-gtz v13, :cond_8

    .line 3378
    const/4 v13, 0x1

    .line 3380
    :cond_8
    div-int v25, v25, v13

    .line 3384
    const/16 v4, 0x4b

    move/from16 v0, v25

    if-le v0, v4, :cond_a

    .line 3385
    const/16 v25, 0x4b

    :cond_9
    :goto_1
    move/from16 v4, v25

    .line 3392
    goto/16 :goto_0

    .line 3386
    :cond_a
    if-gez v25, :cond_9

    .line 3387
    const/16 v25, 0x0

    goto :goto_1

    .line 3397
    .end local v13    # "div":I
    :pswitch_9
    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v20

    .line 3398
    .local v20, "rd_agi":I
    const/16 v4, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v10

    .line 3399
    .local v10, "ap_agi":I
    const/16 v4, 0x5f

    const/16 v5, 0x69

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v17

    .line 3402
    .local v17, "rand_agi":I
    rsub-int/lit8 v4, v20, 0x64

    mul-int/2addr v4, v10

    mul-int v26, v4, v17

    .line 3409
    .local v26, "tempagi":I
    rsub-int/lit8 v4, v20, 0x64

    if-lez v4, :cond_b

    if-lez v10, :cond_b

    if-lez v17, :cond_b

    .line 3411
    if-gez v26, :cond_b

    .line 3412
    const v26, 0x7fffffff

    .line 3415
    :cond_b
    move/from16 v0, v26

    div-int/lit16 v0, v0, 0x2710

    move/from16 v25, v0

    .line 3418
    if-gtz v25, :cond_c

    .line 3419
    const/16 v25, 0x1

    :cond_c
    move/from16 v4, v25

    .line 3422
    goto/16 :goto_0

    .line 3427
    .end local v10    # "ap_agi":I
    .end local v17    # "rand_agi":I
    .end local v20    # "rd_agi":I
    .end local v26    # "tempagi":I
    :pswitch_a
    const/16 v4, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v16

    .line 3429
    .restart local v16    # "randWeaponStr":I
    const/16 v4, 0x25

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    div-int/2addr v4, v5

    add-int v4, v4, v16

    .line 3431
    const/16 v5, 0x51

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    div-int/2addr v5, v6

    .line 3429
    add-int v25, v4, v5

    move/from16 v4, v25

    .line 3438
    goto/16 :goto_0

    .line 3444
    .end local v16    # "randWeaponStr":I
    :pswitch_b
    const/16 v4, 0x28

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    .line 3445
    const/16 v5, 0x34

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 3444
    sub-int/2addr v4, v5

    .line 3446
    const/16 v5, 0x57

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    .line 3444
    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x50

    div-int/lit8 v25, v4, 0x64

    .line 3449
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v4

    add-int/lit8 v13, v4, 0xc

    .line 3450
    .restart local v13    # "div":I
    if-gtz v13, :cond_d

    .line 3451
    const/4 v13, 0x1

    .line 3453
    :cond_d
    div-int v25, v25, v13

    .line 3457
    const/16 v4, 0x4b

    move/from16 v0, v25

    if-le v0, v4, :cond_f

    .line 3458
    const/16 v25, 0x4b

    :cond_e
    :goto_2
    move/from16 v4, v25

    .line 3466
    goto/16 :goto_0

    .line 3459
    :cond_f
    if-gez v25, :cond_e

    .line 3460
    const/16 v25, 0x0

    goto :goto_2

    .line 3471
    .end local v13    # "div":I
    :pswitch_c
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v21

    .line 3472
    .local v21, "rd_magic":I
    const/16 v4, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v11

    .line 3473
    .local v11, "ap_magic":I
    const/16 v4, 0x5f

    const/16 v5, 0x69

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v18

    .line 3476
    .local v18, "rand_magic":I
    rsub-int/lit8 v4, v21, 0x64

    mul-int/2addr v4, v11

    mul-int v23, v4, v18

    .line 3479
    .local v23, "tempMagic":I
    rsub-int/lit8 v4, v21, 0x64

    if-lez v4, :cond_10

    if-lez v11, :cond_10

    if-lez v18, :cond_10

    .line 3481
    if-gez v23, :cond_10

    .line 3482
    const v23, 0x7fffffff

    .line 3485
    :cond_10
    move/from16 v0, v23

    div-int/lit16 v0, v0, 0x2710

    move/from16 v25, v0

    .line 3488
    if-gtz v25, :cond_11

    .line 3489
    const/16 v25, 0x1

    :cond_11
    move/from16 v4, v25

    .line 3495
    goto/16 :goto_0

    .line 3501
    .end local v11    # "ap_magic":I
    .end local v18    # "rand_magic":I
    .end local v21    # "rd_magic":I
    .end local v23    # "tempMagic":I
    :pswitch_d
    const/16 v4, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v16

    .line 3504
    .restart local v16    # "randWeaponStr":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v4, :cond_12

    .line 3505
    invoke-virtual/range {p2 .. p2}, Lcom/hz/actor/Player;->getEquipWeaponType()I

    move-result v14

    .line 3506
    .local v14, "equipWeaponType":I
    const/16 v4, 0x13

    if-eq v14, v4, :cond_12

    const/16 v4, 0x22

    if-eq v14, v4, :cond_12

    .line 3507
    const/16 v16, 0x0

    .line 3512
    .end local v14    # "equipWeaponType":I
    :cond_12
    const/16 v4, 0x26

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    div-int/2addr v4, v5

    add-int v4, v4, v16

    .line 3514
    const/16 v5, 0x51

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hz/battle/Battle;->totalHitTime:I

    div-int/2addr v5, v6

    .line 3512
    add-int v25, v4, v5

    move/from16 v4, v25

    .line 3521
    goto/16 :goto_0

    .line 3527
    .end local v16    # "randWeaponStr":I
    :pswitch_e
    const/16 v4, 0x29

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    .line 3528
    const/16 v5, 0x3b

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 3527
    sub-int/2addr v4, v5

    .line 3529
    const/16 v5, 0x56

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    .line 3527
    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x50

    div-int/lit8 v25, v4, 0x64

    .line 3532
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v4

    add-int/lit8 v13, v4, 0xc

    .line 3533
    .restart local v13    # "div":I
    if-gtz v13, :cond_13

    .line 3534
    const/4 v13, 0x1

    .line 3536
    :cond_13
    div-int v25, v25, v13

    .line 3540
    const/16 v4, 0x4b

    move/from16 v0, v25

    if-le v0, v4, :cond_15

    .line 3541
    const/16 v25, 0x4b

    :cond_14
    :goto_3
    move/from16 v4, v25

    .line 3549
    goto/16 :goto_0

    .line 3542
    :cond_15
    if-gez v25, :cond_14

    .line 3543
    const/16 v25, 0x0

    goto :goto_3

    .line 3555
    .end local v13    # "div":I
    :pswitch_f
    const/16 v4, 0x2d

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    const/16 v5, 0x54

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v5

    add-int v25, v4, v5

    .line 3565
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v13

    .line 3566
    .restart local v13    # "div":I
    if-gtz v13, :cond_16

    .line 3567
    const/4 v13, 0x1

    .line 3570
    :cond_16
    mul-int/lit8 v4, v25, 0xf

    div-int v25, v4, v13

    move/from16 v4, v25

    .line 3576
    goto/16 :goto_0

    .line 3588
    .end local v13    # "div":I
    :pswitch_10
    const/16 v4, 0x21

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    const/16 v5, 0x22

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v4

    goto/16 :goto_0

    .line 3593
    :pswitch_11
    const/16 v4, 0x33

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    .line 3595
    const/16 v4, 0x99

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3598
    const/16 v4, 0xca

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3601
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v13

    .line 3602
    .restart local v13    # "div":I
    if-gtz v13, :cond_17

    .line 3603
    const/4 v13, 0x1

    .line 3605
    :cond_17
    mul-int/lit8 v4, v25, 0x7

    div-int v25, v4, v13

    .line 3607
    if-gez v25, :cond_18

    .line 3608
    const/16 v25, 0x0

    .line 3610
    :cond_18
    const/16 v4, 0x46

    move/from16 v0, v25

    if-le v0, v4, :cond_19

    .line 3611
    const/16 v25, 0x46

    :cond_19
    move/from16 v4, v25

    .line 3617
    goto/16 :goto_0

    .line 3622
    .end local v13    # "div":I
    :pswitch_12
    const/16 v4, 0x35

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    .line 3624
    const/16 v4, 0x9a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3627
    const/16 v4, 0xcb

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3630
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v13

    .line 3631
    .restart local v13    # "div":I
    if-gtz v13, :cond_1a

    .line 3632
    const/4 v13, 0x1

    .line 3634
    :cond_1a
    mul-int/lit8 v4, v25, 0x7

    div-int v25, v4, v13

    .line 3637
    if-gez v25, :cond_1b

    .line 3638
    const/16 v25, 0x0

    .line 3640
    :cond_1b
    const/16 v4, 0x64

    move/from16 v0, v25

    if-le v0, v4, :cond_1c

    .line 3641
    const/16 v25, 0x64

    :cond_1c
    move/from16 v4, v25

    .line 3646
    goto/16 :goto_0

    .line 3650
    .end local v13    # "div":I
    :pswitch_13
    const/16 v4, 0x37

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    .line 3652
    const/16 v4, 0x97

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3655
    const/16 v4, 0xc8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3658
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v13

    .line 3659
    .restart local v13    # "div":I
    if-gtz v13, :cond_1d

    .line 3660
    const/4 v13, 0x1

    .line 3662
    :cond_1d
    mul-int/lit8 v4, v25, 0x7

    div-int v25, v4, v13

    .line 3665
    if-gez v25, :cond_1e

    .line 3666
    const/16 v25, 0x0

    .line 3668
    :cond_1e
    const/16 v4, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    move/from16 v0, v25

    if-le v0, v4, :cond_1f

    .line 3669
    const/16 v4, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    :cond_1f
    move/from16 v4, v25

    .line 3674
    goto/16 :goto_0

    .line 3678
    .end local v13    # "div":I
    :pswitch_14
    const/16 v4, 0x38

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    .line 3680
    const/16 v4, 0x98

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3683
    const/16 v4, 0xc9

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    sub-int v25, v25, v4

    .line 3686
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getLevelIncludeLevel2(Lcom/hz/actor/Player;)I

    move-result v13

    .line 3687
    .restart local v13    # "div":I
    if-gtz v13, :cond_20

    .line 3688
    const/4 v13, 0x1

    .line 3690
    :cond_20
    mul-int/lit8 v4, v25, 0x7

    div-int v25, v4, v13

    .line 3693
    if-gez v25, :cond_21

    .line 3694
    const/16 v25, 0x0

    .line 3696
    :cond_21
    const/16 v4, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v4

    move/from16 v0, v25

    if-le v0, v4, :cond_22

    .line 3697
    const/16 v4, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->get(I)I

    move-result v25

    :cond_22
    move/from16 v4, v25

    .line 3702
    goto/16 :goto_0

    .line 3240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public calcDirectDamage(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)[I
    .locals 19
    .param p1, "from"    # Lcom/hz/actor/Player;
    .param p2, "to"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;
    .param p4, "targetNum"    # I

    .prologue
    .line 2694
    const/4 v4, 0x5

    new-array v12, v4, [I

    .line 2696
    .local v12, "dmgData":[I
    if-nez p1, :cond_1

    .line 2848
    :cond_0
    :goto_0
    return-object v12

    .line 2703
    :cond_1
    if-eqz p2, :cond_0

    .line 2710
    const/16 v17, 0x0

    .line 2715
    .local v17, "randValue":I
    const/16 v4, 0x1f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v13

    .line 2716
    .local v13, "hitRate":I
    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v17

    .line 2717
    move/from16 v0, v17

    if-ge v0, v13, :cond_c

    const/4 v15, 0x1

    .line 2726
    .local v15, "isHit":Z
    :goto_1
    const/16 v4, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v7

    .line 2731
    .local v7, "damage":I
    const/4 v10, 0x0

    .line 2732
    .local v10, "addDmgPercent":I
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2733
    add-int/lit8 v10, v10, 0x14

    .line 2736
    :cond_2
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2737
    add-int/lit8 v10, v10, 0xa

    .line 2739
    :cond_3
    if-lez v10, :cond_4

    .line 2740
    mul-int v4, v7, v10

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v7, v4

    .line 2750
    :cond_4
    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v11

    .line 2751
    .local v11, "criRate":I
    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v17

    .line 2752
    move/from16 v0, v17

    if-ge v0, v11, :cond_d

    const/4 v14, 0x1

    .line 2761
    .local v14, "isCritical":Z
    :goto_2
    if-eqz v14, :cond_5

    .line 2762
    mul-int/lit8 v4, v7, 0xf

    div-int/lit8 v7, v4, 0xa

    .line 2763
    const/4 v4, 0x1

    aget v5, v12, v4

    or-int/lit8 v5, v5, 0x4

    aput v5, v12, v4

    .line 2769
    :cond_5
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/battle/Battle;->block:I

    if-lez v4, :cond_7

    .line 2770
    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v17

    .line 2771
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/battle/Battle;->block:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_6

    .line 2772
    const/4 v15, 0x0

    .line 2778
    :cond_6
    const/4 v4, 0x1

    aget v5, v12, v4

    or-int/lit8 v5, v5, 0x1

    aput v5, v12, v4

    .line 2782
    :cond_7
    if-eqz v15, :cond_b

    .line 2791
    if-lez v7, :cond_9

    .line 2792
    move-object/from16 v0, p2

    iget v4, v0, Lcom/hz/actor/Player;->keepout_atk_time:I

    if-lez v4, :cond_9

    .line 2795
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/hz/actor/Player;->isTabStatus(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2796
    const/4 v4, 0x1

    aget v5, v12, v4

    or-int/lit16 v5, v5, 0x4000

    aput v5, v12, v4

    .line 2799
    :cond_8
    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 2800
    const/4 v7, 0x0

    .line 2806
    :cond_9
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/hz/battle/Battle;->calBackValue(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)I

    move-result v5

    aput v5, v12, v4

    .line 2808
    move/from16 v16, v7

    .line 2813
    .local v16, "oldDmg":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/hz/battle/Battle;->calTouchDmg(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)I

    move-result v7

    .line 2815
    move/from16 v0, v16

    if-eq v0, v7, :cond_a

    .line 2816
    const/4 v4, 0x1

    aget v5, v12, v4

    or-int/lit16 v5, v5, 0x100

    aput v5, v12, v4

    .line 2822
    :cond_a
    move/from16 v16, v7

    .line 2823
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Lcom/hz/battle/Battle;->calDefFieldDmg(Lcom/hz/actor/Player;I)I

    move-result v7

    .line 2825
    move/from16 v0, v16

    if-eq v0, v7, :cond_b

    .line 2826
    const/4 v4, 0x1

    aget v5, v12, v4

    or-int/lit16 v5, v5, 0x80

    aput v5, v12, v4

    .line 2833
    .end local v16    # "oldDmg":I
    :cond_b
    const/4 v4, 0x0

    aput v7, v12, v4

    .line 2834
    if-eqz v15, :cond_0

    .line 2836
    const/4 v4, 0x1

    aget v5, v12, v4

    or-int/lit8 v5, v5, 0x2

    aput v5, v12, v4

    .line 2842
    const/16 v18, 0x3

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/hz/battle/Battle;->calHPMPGetValue(Lcom/hz/actor/Player;Lcom/hz/core/Skill;IZI)I

    move-result v4

    aput v4, v12, v18

    .line 2845
    const/16 v18, 0x4

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/hz/battle/Battle;->calHPMPGetValue(Lcom/hz/actor/Player;Lcom/hz/core/Skill;IZI)I

    move-result v4

    aput v4, v12, v18

    goto/16 :goto_0

    .line 2717
    .end local v7    # "damage":I
    .end local v10    # "addDmgPercent":I
    .end local v11    # "criRate":I
    .end local v14    # "isCritical":Z
    .end local v15    # "isHit":Z
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 2752
    .restart local v7    # "damage":I
    .restart local v10    # "addDmgPercent":I
    .restart local v11    # "criRate":I
    .restart local v15    # "isHit":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method public calcWithType(IBLcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "atkType"    # B
    .param p3, "a"    # Lcom/hz/actor/Player;
    .param p4, "t"    # Lcom/hz/actor/Player;
    .param p5, "s"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v0, 0x0

    .line 3724
    packed-switch p1, :pswitch_data_0

    .line 3796
    :goto_0
    :pswitch_0
    return v0

    .line 3727
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 3732
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_0

    .line 3737
    :pswitch_3
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_0

    .line 3741
    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_0

    .line 3758
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 3763
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_0

    .line 3768
    :pswitch_7
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_0

    .line 3773
    :pswitch_8
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/hz/battle/Battle;->calc(ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)I

    move-result v0

    goto :goto_0

    .line 3777
    :pswitch_9
    const/16 v0, 0x64

    goto :goto_0

    .line 3724
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 3727
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 3758
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public checkDie1Hp(Lcom/hz/actor/Player;Ljava/util/Vector;)V
    .locals 9
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "controlList"    # Ljava/util/Vector;

    .prologue
    const/high16 v8, 0x8000000

    const/16 v7, 0x4bf

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 968
    if-nez p1, :cond_1

    .line 1003
    :cond_0
    return-void

    .line 973
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->isDead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 977
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 979
    .local v1, "effectControlList":Ljava/util/Vector;
    invoke-virtual {p1, v8}, Lcom/hz/actor/Player;->isTabStatus(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 980
    const/16 v4, 0x1b

    invoke-static {v4}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    invoke-virtual {p1}, Lcom/hz/actor/Player;->isHaveCanNotReliveBuffer()Z

    move-result v3

    .line 983
    .local v3, "isHaveCanNotReliveBuffer":Z
    if-nez v3, :cond_2

    .line 984
    invoke-virtual {p1, v5, v8}, Lcom/hz/actor/Player;->setTabStatus(ZI)V

    .line 986
    if-eqz p2, :cond_3

    .line 987
    invoke-static {p1, v5, v6, v7, p2}, Lcom/hz/core/Define;->processBattleReborn(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    .line 996
    .end local v3    # "isHaveCanNotReliveBuffer":Z
    :cond_2
    :goto_0
    if-nez p2, :cond_0

    .line 998
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 999
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 1000
    .local v0, "control":Lcom/hz/main/Control;
    invoke-virtual {p0, v0}, Lcom/hz/battle/Battle;->addAniControl(Lcom/hz/main/Control;)V

    .line 998
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 990
    .end local v0    # "control":Lcom/hz/main/Control;
    .end local v2    # "i":I
    .restart local v3    # "isHaveCanNotReliveBuffer":Z
    :cond_3
    invoke-static {p1, v5, v6, v7, v1}, Lcom/hz/core/Define;->processBattleReborn(Lcom/hz/actor/Player;IIILjava/util/Vector;)Z

    goto :goto_0
.end method

.method public final cleanAniControlList()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 660
    return-void
.end method

.method public clearPlan(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    if-nez v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public clearWaitStatus(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 4566
    iget v0, p0, Lcom/hz/battle/Battle;->waitStatus:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/battle/Battle;->waitStatus:I

    .line 4567
    return-void
.end method

.method public countNotNullPlayerPos([B)I
    .locals 4
    .param p1, "targetPos"    # [B

    .prologue
    .line 4325
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_2

    .line 4326
    :cond_0
    const/4 v2, 0x0

    .line 4338
    :cond_1
    return v2

    .line 4329
    :cond_2
    const/4 v2, 0x0

    .line 4330
    .local v2, "players":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 4331
    aget-byte v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 4332
    .local v1, "p":Lcom/hz/actor/Player;
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4330
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4335
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public delDamageEffect([ILcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 11
    .param p1, "dmgData"    # [I
    .param p2, "atkPlayer"    # Lcom/hz/actor/Player;
    .param p3, "targetPlayer"    # Lcom/hz/actor/Player;
    .param p4, "skill"    # Lcom/hz/core/Skill;
    .param p5, "targetEffectList"    # Ljava/util/Vector;
    .param p6, "actorEffectList"    # Ljava/util/Vector;

    .prologue
    .line 2606
    if-nez p1, :cond_1

    .line 2682
    :cond_0
    :goto_0
    return-void

    .line 2613
    :cond_1
    const/4 v8, 0x1

    aget v8, p1, v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v5

    .line 2614
    .local v5, "isHit":Z
    const/4 v8, 0x0

    aget v8, p1, v8

    neg-int v2, v8

    .line 2620
    .local v2, "dmg":I
    if-eqz v5, :cond_2

    .line 2622
    const/4 v8, 0x2

    invoke-virtual {p3, v8, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2625
    const/16 v8, 0x3f

    neg-int v9, v2

    invoke-virtual {p2, v8, v9}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2629
    :cond_2
    invoke-virtual {p3}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2630
    const/4 v8, 0x1

    aget v9, p1, v8

    or-int/lit8 v9, v9, 0x8

    aput v9, p1, v8

    .line 2633
    :cond_3
    iget-byte v8, p3, Lcom/hz/actor/Player;->position:B

    .line 2634
    const/4 v9, 0x1

    aget v9, p1, v9

    const/4 v10, 0x0

    .line 2633
    invoke-static {v8, v2, v9, v10}, Lcom/hz/main/Control;->createBattleTargetEffect(IIII)Lcom/hz/main/Control;

    move-result-object v7

    .line 2635
    .local v7, "subControl":Lcom/hz/main/Control;
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2642
    if-eqz v5, :cond_0

    .line 2645
    const/4 v8, 0x3

    aget v4, p1, v8

    .line 2646
    .local v4, "hpGetValue":I
    if-lez v4, :cond_4

    .line 2647
    const/4 v8, 0x2

    invoke-virtual {p2, v8, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2648
    iget-byte v8, p2, Lcom/hz/actor/Player;->position:B

    .line 2649
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 2648
    invoke-static {v8, v4, v9, v10}, Lcom/hz/main/Control;->createBattleTargetEffect(IIII)Lcom/hz/main/Control;

    move-result-object v7

    .line 2650
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2654
    :cond_4
    const/4 v8, 0x4

    aget v6, p1, v8

    .line 2655
    .local v6, "mpGetValue":I
    if-lez v6, :cond_5

    .line 2656
    const/4 v8, 0x3

    invoke-virtual {p2, v8, v6}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2657
    iget-byte v8, p2, Lcom/hz/actor/Player;->position:B

    .line 2658
    const/16 v9, 0x42

    const/4 v10, 0x0

    .line 2657
    invoke-static {v8, v6, v9, v10}, Lcom/hz/main/Control;->createBattleTargetEffect(IIII)Lcom/hz/main/Control;

    move-result-object v7

    .line 2659
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2663
    :cond_5
    const/4 v8, 0x2

    aget v8, p1, v8

    neg-int v1, v8

    .line 2664
    .local v1, "backDmg":I
    if-eqz v1, :cond_0

    .line 2665
    const/4 v8, 0x2

    invoke-virtual {p2, v8, v1}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2666
    const/16 v8, 0x3f

    neg-int v9, v1

    invoke-virtual {p3, v8, v9}, Lcom/hz/actor/Player;->addValue(II)V

    .line 2668
    const/4 v3, 0x2

    .line 2669
    .local v3, "effectStatus":I
    invoke-virtual {p2}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2670
    or-int/lit8 v3, v3, 0x8

    .line 2674
    const/4 v8, 0x0

    invoke-virtual {p0, p2, v8}, Lcom/hz/battle/Battle;->checkDie1Hp(Lcom/hz/actor/Player;Ljava/util/Vector;)V

    .line 2677
    :cond_6
    iget-byte v8, p2, Lcom/hz/actor/Player;->position:B

    .line 2678
    const/4 v9, 0x0

    .line 2677
    invoke-static {v8, v1, v3, v9}, Lcom/hz/main/Control;->createBattleTargetEffect(IIII)Lcom/hz/main/Control;

    move-result-object v7

    .line 2679
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public doCheckWilBufferRemove(Lcom/hz/actor/Player;)V
    .locals 10
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v9, 0x0

    .line 1105
    if-nez p1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v0, p1, Lcom/hz/actor/Player;->battleBufferList:Ljava/util/Vector;

    .line 1111
    .local v0, "battleBufferList":Ljava/util/Vector;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1115
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1116
    .local v3, "deBufferList":Ljava/util/Vector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    .line 1134
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1139
    invoke-virtual {p0, p1, v9, v9}, Lcom/hz/battle/Battle;->isWilSuccess(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z

    move-result v4

    .line 1140
    .local v4, "flag":Z
    if-eqz v4, :cond_0

    .line 1144
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v6

    .line 1145
    .local v6, "randIndex":I
    if-ltz v6, :cond_0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1149
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Buffer;

    .line 1150
    .local v1, "buffer":Lcom/hz/core/Buffer;
    if-eqz v1, :cond_0

    .line 1157
    invoke-virtual {v1, p1}, Lcom/hz/core/Buffer;->destroy(Lcom/hz/actor/Player;)V

    .line 1158
    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1163
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_5

    .line 1172
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v7

    invoke-static {v7}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/hz/actor/Player;->clearBattleStatus(I)V

    goto :goto_0

    .line 1117
    .end local v1    # "buffer":Lcom/hz/core/Buffer;
    .end local v4    # "flag":Z
    .end local v6    # "randIndex":I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Buffer;

    .line 1118
    .restart local v1    # "buffer":Lcom/hz/core/Buffer;
    if-nez v1, :cond_4

    .line 1116
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1122
    :cond_4
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v7

    if-eqz v7, :cond_3

    .line 1127
    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v7

    invoke-static {v7}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_3

    .line 1128
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1164
    .restart local v4    # "flag":Z
    .restart local v6    # "randIndex":I
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/Buffer;

    .line 1165
    .local v2, "checkBuffer":Lcom/hz/core/Buffer;
    if-nez v2, :cond_7

    .line 1163
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1168
    :cond_7
    invoke-virtual {v2}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v7

    invoke-virtual {v1}, Lcom/hz/core/Buffer;->getStatus()B

    move-result v8

    if-ne v7, v8, :cond_6

    goto/16 :goto_0
.end method

.method public getActivePlayerNum(IIZ)B
    .locals 5
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "isPlayerOnly"    # Z

    .prologue
    .line 3923
    const/4 v0, 0x0

    .line 3924
    .local v0, "count":B
    move v2, p1

    .local v2, "pos":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 3940
    return v0

    .line 3926
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 3928
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_2

    .line 3924
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3932
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v1}, Lcom/hz/actor/Player;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3936
    :cond_3
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3937
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_1
.end method

.method public getAllTypeTarget(III)[B
    .locals 11
    .param p1, "sideType"    # I
    .param p2, "myPos"    # I
    .param p3, "area"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 4238
    const/4 v7, 0x0

    .line 4239
    .local v7, "startPos":I
    const/16 v3, 0x22

    .line 4241
    .local v3, "endPos":I
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 4242
    const/4 v7, 0x0

    .line 4243
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v9

    add-int v3, v7, v9

    .line 4250
    :cond_0
    :goto_0
    sub-int v6, v3, v7

    .line 4252
    .local v6, "posNum":I
    if-gtz v6, :cond_3

    .line 4285
    :cond_1
    :goto_1
    return-object v0

    .line 4245
    .end local v6    # "posNum":I
    :cond_2
    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    .line 4246
    const/16 v7, 0x14

    .line 4247
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getRightPosNum()I

    move-result v9

    add-int v3, v7, v9

    goto :goto_0

    .line 4256
    .restart local v6    # "posNum":I
    :cond_3
    new-array v8, v6, [B

    .line 4258
    .local v8, "targetPos":[B
    const/4 v4, 0x1

    .line 4259
    .local v4, "isContainSelf":Z
    if-ltz p2, :cond_5

    .line 4260
    const/16 v9, 0x24

    if-eq p3, v9, :cond_4

    const/16 v9, 0x25

    if-ne p3, v9, :cond_5

    .line 4261
    :cond_4
    const/4 v4, 0x0

    .line 4264
    :cond_5
    const/4 v1, 0x0

    .line 4265
    .local v1, "count":I
    move v5, v7

    .local v5, "pos":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_2
    if-lt v5, v3, :cond_6

    .line 4276
    if-gt v2, v6, :cond_1

    .line 4283
    new-array v0, v2, [B

    .line 4284
    .local v0, "copyData":[B
    invoke-static {v8, v10, v0, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 4267
    .end local v0    # "copyData":[B
    :cond_6
    if-nez v4, :cond_7

    .line 4268
    if-ne v5, p2, :cond_7

    move v1, v2

    .line 4265
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2

    .line 4273
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    int-to-byte v9, v5

    aput-byte v9, v8, v2

    goto :goto_3
.end method

.method public getColumnTypeTarget(IIZ)Ljava/util/Vector;
    .locals 4
    .param p1, "cursor"    # I
    .param p2, "colCount"    # I
    .param p3, "firstRow"    # Z

    .prologue
    .line 4162
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4163
    .local v2, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 4189
    return-object v2

    .line 4165
    :cond_0
    const/4 v1, 0x0

    .line 4167
    .local v1, "tmpPos":I
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_3

    .line 4169
    if-eqz p3, :cond_2

    if-nez v0, :cond_2

    .line 4170
    invoke-static {v2, p1}, Lcom/hz/battle/Battle;->getLeftRightTypeTarget(Ljava/util/Vector;I)V

    .line 4163
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4175
    :cond_2
    div-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, p1, v3

    .line 4183
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/hz/battle/Battle;->isValidPos(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4187
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 4180
    :cond_3
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int v1, p1, v3

    goto :goto_2
.end method

.method public getLeftPosNum()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getRowLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLevelIncludeLevel2(Lcom/hz/actor/Player;)I
    .locals 2
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 4589
    const/16 v1, 0x6a

    invoke-virtual {p1, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 4590
    .local v0, "val":I
    const/16 v1, 0x76

    invoke-virtual {p1, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 4591
    return v0
.end method

.method public getMonsterGroup()Lcom/hz/core/MonsterGroup;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/hz/battle/Battle;->monsterGroup:Lcom/hz/core/MonsterGroup;

    return-object v0
.end method

.method public getPlanData(I)[B
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x0

    .line 622
    iget-object v1, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    if-nez v1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-object v0

    .line 626
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getPlanTime()I
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/hz/battle/Battle;->roundEndTime:J

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->getPlanTime(J)I

    move-result v0

    return v0
.end method

.method public getPlayerByPos(I)Lcom/hz/actor/Player;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-object v0

    .line 440
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/battle/Battle;->isValidPos(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getPlayerPet(I)Lcom/hz/actor/Player;
    .locals 6
    .param p1, "playerPos"    # I

    .prologue
    const/4 v3, 0x0

    .line 4343
    invoke-virtual {p0, p1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 4344
    .local v0, "p":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hz/actor/Player;->getType()B

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    :cond_0
    move-object v1, v3

    .line 4363
    :cond_1
    :goto_0
    return-object v1

    .line 4348
    :cond_2
    add-int/lit8 v2, p1, -0x1

    .line 4349
    .local v2, "petPos":I
    invoke-static {p1}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4350
    add-int/lit8 v2, p1, 0x1

    .line 4353
    :cond_3
    invoke-virtual {p0, v2}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 4354
    .local v1, "pet":Lcom/hz/actor/Player;
    if-nez v1, :cond_4

    move-object v1, v3

    .line 4355
    goto :goto_0

    .line 4359
    :cond_4
    invoke-virtual {v1}, Lcom/hz/actor/Player;->getType()B

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    move-object v1, v3

    .line 4360
    goto :goto_0
.end method

.method public getRightPosNum()I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getRowRight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRowLeft()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/hz/battle/Battle;->rowLeft:I

    return v0
.end method

.method public getRowRight()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/hz/battle/Battle;->rowRight:I

    return v0
.end method

.method public getRowTypeTarget(II)Ljava/util/Vector;
    .locals 4
    .param p1, "cursor"    # I
    .param p2, "rowCount"    # I

    .prologue
    .line 4201
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4202
    .local v2, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 4217
    return-object v2

    .line 4204
    :cond_0
    const/4 v1, 0x0

    .line 4205
    .local v1, "tmpPos":I
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_1

    .line 4206
    div-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, p1, v3

    .line 4211
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/hz/battle/Battle;->isValidPos(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4202
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4209
    :cond_1
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int v1, p1, v3

    goto :goto_1

    .line 4215
    :cond_2
    invoke-static {v2, v1}, Lcom/hz/battle/Battle;->getLeftRightTypeTarget(Ljava/util/Vector;I)V

    goto :goto_2
.end method

.method public getSelectArea(IIB)[B
    .locals 12
    .param p1, "myPos"    # I
    .param p2, "cursor"    # I
    .param p3, "area"    # B

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3993
    invoke-static {p3}, Lcom/hz/core/Define;->getSearchTypeByArea(B)I

    move-result v3

    .line 3994
    .local v3, "searchType":I
    packed-switch v3, :pswitch_data_0

    .line 4023
    :cond_0
    :pswitch_0
    const/4 v4, 0x0

    .line 4024
    .local v4, "target":[B
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 4026
    .local v5, "targetV":Ljava/util/Vector;
    packed-switch p3, :pswitch_data_1

    .line 4111
    :goto_0
    :pswitch_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 4112
    invoke-static {v5}, Lcom/hz/battle/Battle;->getTarget(Ljava/util/Vector;)[B

    move-result-object v4

    .line 4116
    const/16 v7, 0x26

    if-ne p3, v7, :cond_2

    .line 4118
    const/4 v2, 0x0

    .line 4119
    .local v2, "ischeck":Z
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 4120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-lt v1, v7, :cond_6

    .line 4127
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    move-object v4, v6

    .line 4148
    .end local v2    # "ischeck":Z
    .end local v4    # "target":[B
    .end local v5    # "targetV":Ljava/util/Vector;
    :cond_2
    :goto_2
    return-object v4

    .line 4000
    :pswitch_2
    invoke-static {p1, p2}, Lcom/hz/battle/Battle;->isSameSide(II)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 4001
    goto :goto_2

    .line 4006
    :pswitch_3
    invoke-static {p1, p2}, Lcom/hz/battle/Battle;->isSameSide(II)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v4, v6

    .line 4007
    goto :goto_2

    .line 4012
    :pswitch_4
    if-eq p1, p2, :cond_3

    move-object v4, v6

    .line 4013
    goto :goto_2

    .line 4015
    :cond_3
    new-array v4, v9, [B

    int-to-byte v6, p2

    aput-byte v6, v4, v8

    goto :goto_2

    .line 4018
    :pswitch_5
    new-array v4, v9, [B

    int-to-byte v6, p2

    aput-byte v6, v4, v8

    goto :goto_2

    .line 4030
    .restart local v4    # "target":[B
    .restart local v5    # "targetV":Ljava/util/Vector;
    :pswitch_6
    invoke-virtual {p0, p2, v9, v8}, Lcom/hz/battle/Battle;->getColumnTypeTarget(IIZ)Ljava/util/Vector;

    move-result-object v5

    .line 4031
    goto :goto_0

    .line 4037
    :pswitch_7
    invoke-virtual {p0, p2, v9}, Lcom/hz/battle/Battle;->getRowTypeTarget(II)Ljava/util/Vector;

    move-result-object v5

    .line 4038
    goto :goto_0

    .line 4043
    :pswitch_8
    invoke-virtual {p0, p2, v11, v8}, Lcom/hz/battle/Battle;->getColumnTypeTarget(IIZ)Ljava/util/Vector;

    move-result-object v5

    .line 4044
    goto :goto_0

    .line 4049
    :pswitch_9
    invoke-virtual {p0, p2, v10, v8}, Lcom/hz/battle/Battle;->getColumnTypeTarget(IIZ)Ljava/util/Vector;

    move-result-object v5

    .line 4050
    goto :goto_0

    .line 4055
    :pswitch_a
    const/4 v7, 0x4

    invoke-virtual {p0, p2, v7, v8}, Lcom/hz/battle/Battle;->getColumnTypeTarget(IIZ)Ljava/util/Vector;

    move-result-object v5

    .line 4056
    goto :goto_0

    .line 4061
    :pswitch_b
    const/4 v7, 0x5

    invoke-virtual {p0, p2, v7, v8}, Lcom/hz/battle/Battle;->getColumnTypeTarget(IIZ)Ljava/util/Vector;

    move-result-object v5

    .line 4062
    goto :goto_0

    .line 4067
    :pswitch_c
    invoke-virtual {p0, p2, v10, v9}, Lcom/hz/battle/Battle;->getColumnTypeTarget(IIZ)Ljava/util/Vector;

    move-result-object v5

    .line 4068
    goto :goto_0

    .line 4073
    :pswitch_d
    invoke-virtual {p0, p2, v11}, Lcom/hz/battle/Battle;->getRowTypeTarget(II)Ljava/util/Vector;

    move-result-object v5

    .line 4074
    goto :goto_0

    .line 4079
    :pswitch_e
    invoke-virtual {p0, p2, v10}, Lcom/hz/battle/Battle;->getRowTypeTarget(II)Ljava/util/Vector;

    move-result-object v5

    .line 4080
    goto :goto_0

    .line 4087
    :pswitch_f
    invoke-static {p2}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v0

    .line 4089
    .local v0, "getSide":I
    const/16 v7, 0x9

    if-eq p3, v7, :cond_4

    const/16 v7, 0x25

    if-ne p3, v7, :cond_5

    .line 4090
    :cond_4
    const/4 v0, -0x1

    .line 4092
    :cond_5
    invoke-virtual {p0, v0, p1, p3}, Lcom/hz/battle/Battle;->getAllTypeTarget(III)[B

    move-result-object v4

    .line 4093
    goto :goto_0

    .line 4102
    .end local v0    # "getSide":I
    :pswitch_10
    new-array v4, v9, [B

    .end local v4    # "target":[B
    int-to-byte v6, p2

    aput-byte v6, v4, v8

    goto :goto_2

    .line 4121
    .restart local v1    # "i":I
    .restart local v2    # "ischeck":Z
    .restart local v4    # "target":[B
    :cond_6
    aget-byte v7, v4, v1

    if-ne v7, p1, :cond_7

    .line 4122
    const/4 v2, 0x1

    .line 4120
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3994
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 4026
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1
        :pswitch_f
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/hz/battle/Battle;->type:I

    return v0
.end method

.method public isBattleFinish()Z
    .locals 1

    .prologue
    .line 227
    iget-byte v0, p0, Lcom/hz/battle/Battle;->result:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHavePlayer(II)Z
    .locals 4
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 3899
    move v1, p1

    .local v1, "pos":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 3912
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 3901
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 3903
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_2

    .line 3899
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3907
    :cond_2
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3908
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isRemoteWaiting()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/hz/battle/Battle;->isRemoteWaiting:Z

    return v0
.end method

.method public isValidBattlePlayer(Lcom/hz/actor/Player;)Z
    .locals 3
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3880
    if-nez p1, :cond_1

    .line 3888
    :cond_0
    :goto_0
    return v0

    .line 3884
    :cond_1
    invoke-virtual {p1}, Lcom/hz/actor/Player;->isDeadNoWithDelay()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3888
    goto :goto_0
.end method

.method public isValidPos(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 3869
    if-ltz p1, :cond_0

    const/16 v0, 0x22

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValidPos(II)Z
    .locals 3
    .param p1, "cursor"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3849
    const/4 v1, 0x0

    .line 3850
    .local v1, "startPos":I
    iget v2, p0, Lcom/hz/battle/Battle;->rowLeft:I

    mul-int/lit8 v0, v2, 0x2

    .line 3852
    .local v0, "endPos":I
    invoke-static {p1}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3853
    const/16 v1, 0x14

    .line 3854
    const/16 v0, 0x22

    .line 3857
    :cond_0
    if-lt p2, v1, :cond_1

    if-lt p2, v0, :cond_2

    .line 3858
    :cond_1
    const/4 v2, 0x0

    .line 3860
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isWaitStatus(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 4575
    iget v1, p0, Lcom/hz/battle/Battle;->waitStatus:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWilSuccess(Lcom/hz/actor/Player;Lcom/hz/actor/Player;Lcom/hz/core/Skill;)Z
    .locals 4
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "target"    # Lcom/hz/actor/Player;
    .param p3, "skill"    # Lcom/hz/core/Skill;

    .prologue
    const/4 v2, 0x0

    .line 2870
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    .line 2871
    .local v0, "getWil":I
    if-eqz p3, :cond_0

    .line 2872
    const/16 v3, 0x9b

    invoke-virtual {p3, v3}, Lcom/hz/core/Skill;->getPowerValue(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2876
    :cond_0
    if-eqz p2, :cond_1

    if-eq p1, p2, :cond_1

    .line 2877
    const/16 v3, 0xcc

    invoke-virtual {p2, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2880
    :cond_1
    if-gtz v0, :cond_3

    .line 2888
    :cond_2
    :goto_0
    return v2

    .line 2884
    :cond_3
    const/16 v3, 0x2bc

    if-le v0, v3, :cond_4

    .line 2885
    const/16 v0, 0x2bc

    .line 2887
    :cond_4
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v1

    .line 2888
    .local v1, "randValue":I
    if-ge v1, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public logicRound()V
    .locals 7

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/hz/battle/Battle;->cleanGuardData()V

    .line 791
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->cleanAniControlList()V

    .line 794
    invoke-direct {p0}, Lcom/hz/battle/Battle;->doRoundBuffer()V

    .line 797
    invoke-direct {p0}, Lcom/hz/battle/Battle;->sortModelListBySpeed()Ljava/util/Vector;

    move-result-object v0

    .line 800
    .local v0, "actorPlayerList":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 809
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 818
    invoke-direct {p0}, Lcom/hz/battle/Battle;->sortModelListBySpeed()Ljava/util/Vector;

    move-result-object v0

    .line 820
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 860
    invoke-direct {p0}, Lcom/hz/battle/Battle;->doEndRoundCheckBuffer()V

    .line 862
    iget-byte v5, p0, Lcom/hz/battle/Battle;->round:B

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/hz/battle/Battle;->round:B

    .line 863
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->updateRoundEndTime()V

    .line 865
    const/4 v5, 0x0

    iput v5, p0, Lcom/hz/battle/Battle;->waitStatus:I

    .line 867
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->updateBattleResult()V

    .line 868
    return-void

    .line 801
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/actor/Player;

    .line 802
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_1

    .line 800
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    :cond_1
    invoke-direct {p0, v4}, Lcom/hz/battle/Battle;->doRoundHpMp(Lcom/hz/actor/Player;)V

    goto :goto_3

    .line 810
    .end local v4    # "player":Lcom/hz/actor/Player;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/actor/Player;

    .line 811
    .restart local v4    # "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_3

    .line 809
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 814
    :cond_3
    invoke-direct {p0, v4}, Lcom/hz/battle/Battle;->doAutoSkill(Lcom/hz/actor/Player;)V

    goto :goto_4

    .line 821
    .end local v4    # "player":Lcom/hz/actor/Player;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/actor/Player;

    .line 822
    .restart local v4    # "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_6

    .line 820
    .end local v4    # "player":Lcom/hz/actor/Player;
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 826
    .restart local v4    # "player":Lcom/hz/actor/Player;
    :cond_6
    iget-byte v5, v4, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v5}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v2

    .line 828
    .local v2, "planData":[B
    const/4 v3, 0x0

    .line 831
    .local v3, "planExcute":Z
    if-eqz v2, :cond_7

    .line 832
    invoke-direct {p0, v4, v2}, Lcom/hz/battle/Battle;->doPlayerPlan(Lcom/hz/actor/Player;[B)Z

    move-result v3

    .line 836
    :cond_7
    if-nez v3, :cond_5

    .line 842
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getType()B

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 846
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getType()B

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 847
    invoke-direct {p0, v4}, Lcom/hz/battle/Battle;->doPetAI(Lcom/hz/actor/Player;)V

    goto :goto_5

    .line 850
    :cond_8
    instance-of v5, v4, Lcom/hz/actor/Monster;

    if-eqz v5, :cond_5

    .line 851
    check-cast v4, Lcom/hz/actor/Monster;

    .end local v4    # "player":Lcom/hz/actor/Player;
    invoke-direct {p0, v4}, Lcom/hz/battle/Battle;->doMonsterAI(Lcom/hz/actor/Monster;)V

    goto :goto_5
.end method

.method public randInt(I)I
    .locals 1
    .param p1, "base"    # I

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/hz/battle/Battle;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 3806
    const/4 v0, 0x0

    .line 3809
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/Battle;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p1

    goto :goto_0
.end method

.method public randRange(II)I
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 3819
    if-ne p1, p2, :cond_0

    .line 3825
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 3823
    .restart local p1    # "min":I
    :cond_0
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v0

    .line 3825
    .local v0, "diff":I
    add-int/2addr p1, v0

    goto :goto_0
.end method

.method public searchAICursor(Lcom/hz/actor/Player;B)I
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "area"    # B

    .prologue
    .line 4392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hz/battle/Battle;->searchAICursor(Lcom/hz/actor/Player;BZ)I

    move-result v0

    return v0
.end method

.method public searchAICursor(Lcom/hz/actor/Player;BZ)I
    .locals 21
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "area"    # B
    .param p3, "isRandom"    # Z

    .prologue
    .line 4403
    if-nez p1, :cond_1

    .line 4409
    const/4 v9, 0x0

    .line 4553
    :cond_0
    :goto_0
    return v9

    .line 4415
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 4429
    :pswitch_0
    const/4 v15, 0x0

    .line 4430
    .local v15, "startPos":I
    const/16 v6, 0x22

    .line 4433
    .local v6, "endPos":I
    invoke-static/range {p2 .. p2}, Lcom/hz/core/Define;->getSearchTypeByArea(B)I

    move-result v14

    .line 4434
    .local v14, "searchType":I
    packed-switch v14, :pswitch_data_1

    .line 4470
    :cond_2
    :goto_1
    move v10, v15

    .line 4471
    .local v10, "posAI":I
    const/4 v7, 0x0

    .line 4473
    .local v7, "maxPlayer":I
    invoke-static/range {p2 .. p2}, Lcom/hz/core/Define;->getSkillAreaPlayerNum(B)I

    move-result v5

    .line 4475
    .local v5, "areaPlayerNum":I
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 4477
    .local v4, "allPosList":Ljava/util/Hashtable;
    move v9, v15

    .local v9, "pos":I
    :goto_2
    if-lt v9, v6, :cond_5

    .line 4538
    if-eqz p3, :cond_c

    .line 4539
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 4540
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Vector;

    .line 4541
    .local v18, "tempList":Ljava/util/Vector;
    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 4542
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/hz/common/Tool;->rand(I)I

    move-result v11

    .line 4543
    .local v11, "randIndex":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 4544
    .local v13, "resultPosInterger":Ljava/lang/Integer;
    if-eqz v13, :cond_c

    .line 4545
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .local v12, "resultPos":I
    move v9, v12

    .line 4546
    goto :goto_0

    .line 4417
    .end local v4    # "allPosList":Ljava/util/Hashtable;
    .end local v5    # "areaPlayerNum":I
    .end local v6    # "endPos":I
    .end local v7    # "maxPlayer":I
    .end local v9    # "pos":I
    .end local v10    # "posAI":I
    .end local v11    # "randIndex":I
    .end local v12    # "resultPos":I
    .end local v13    # "resultPosInterger":Ljava/lang/Integer;
    .end local v14    # "searchType":I
    .end local v15    # "startPos":I
    .end local v18    # "tempList":Ljava/util/Vector;
    :pswitch_1
    const/16 v19, 0x3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v9

    goto :goto_0

    .line 4419
    :pswitch_2
    const/16 v19, 0x4

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v9

    goto :goto_0

    .line 4421
    :pswitch_3
    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v9

    goto/16 :goto_0

    .line 4423
    :pswitch_4
    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v9

    goto/16 :goto_0

    .line 4425
    :pswitch_5
    move-object/from16 v0, p1

    iget-byte v9, v0, Lcom/hz/actor/Player;->position:B

    goto/16 :goto_0

    .line 4439
    .restart local v6    # "endPos":I
    .restart local v14    # "searchType":I
    .restart local v15    # "startPos":I
    :pswitch_6
    if-nez p2, :cond_2

    .line 4444
    :pswitch_7
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 4445
    const/16 v15, 0x14

    .line 4446
    const/16 v6, 0x22

    .line 4447
    goto/16 :goto_1

    .line 4448
    :cond_3
    const/4 v15, 0x0

    .line 4449
    const/16 v6, 0x14

    .line 4451
    goto/16 :goto_1

    .line 4454
    :pswitch_8
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4455
    const/4 v15, 0x0

    .line 4456
    const/16 v6, 0x14

    .line 4457
    goto/16 :goto_1

    .line 4458
    :cond_4
    const/16 v15, 0x14

    .line 4459
    const/16 v6, 0x22

    .line 4461
    goto/16 :goto_1

    .line 4464
    :pswitch_9
    move-object/from16 v0, p1

    iget-byte v9, v0, Lcom/hz/actor/Player;->position:B

    goto/16 :goto_0

    .line 4467
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/hz/battle/Battle;->getPetOwnerPos(Lcom/hz/actor/Player;)I

    move-result v9

    goto/16 :goto_0

    .line 4480
    .restart local v4    # "allPosList":Ljava/util/Hashtable;
    .restart local v5    # "areaPlayerNum":I
    .restart local v7    # "maxPlayer":I
    .restart local v9    # "pos":I
    .restart local v10    # "posAI":I
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_9

    .line 4482
    const/16 v19, 0x24

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 4483
    const/16 v19, 0x25

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 4486
    :cond_6
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_8

    .line 4477
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 4491
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v17

    .line 4492
    .local v17, "targetPlayer":Lcom/hz/actor/Player;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v19

    if-eqz v19, :cond_7

    goto/16 :goto_0

    .line 4500
    .end local v17    # "targetPlayer":Lcom/hz/actor/Player;
    :cond_9
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v9, v2}, Lcom/hz/battle/Battle;->getSelectArea(IIB)[B

    move-result-object v16

    .line 4501
    .local v16, "tarPos":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->countNotNullPlayerPos([B)I

    move-result v8

    .line 4505
    .local v8, "numPlayer":I
    if-eqz p3, :cond_b

    .line 4507
    if-lez v8, :cond_7

    .line 4508
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Vector;

    .line 4509
    .restart local v18    # "tempList":Ljava/util/Vector;
    if-nez v18, :cond_a

    .line 4510
    new-instance v18, Ljava/util/Vector;

    .end local v18    # "tempList":Ljava/util/Vector;
    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 4511
    .restart local v18    # "tempList":Ljava/util/Vector;
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4514
    :cond_a
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4516
    if-le v8, v7, :cond_7

    .line 4517
    move v7, v8

    .line 4521
    goto :goto_3

    .line 4526
    .end local v18    # "tempList":Ljava/util/Vector;
    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/hz/core/Define;->getSkillAreaPlayerNum(B)I

    move-result v19

    move/from16 v0, v19

    if-eq v8, v0, :cond_0

    .line 4531
    if-le v8, v7, :cond_7

    .line 4532
    move v7, v8

    .line 4533
    move v10, v9

    goto :goto_3

    .end local v8    # "numPlayer":I
    .end local v16    # "tarPos":[B
    :cond_c
    move v9, v10

    .line 4553
    goto/16 :goto_0

    .line 4415
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4434
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setBattleResult(B)V
    .locals 0
    .param p1, "_result"    # B

    .prologue
    .line 230
    iput-byte p1, p0, Lcom/hz/battle/Battle;->result:B

    .line 231
    return-void
.end method

.method public setMonsterGroup(Lcom/hz/core/MonsterGroup;)V
    .locals 0
    .param p1, "_monsterGroup"    # Lcom/hz/core/MonsterGroup;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/hz/battle/Battle;->monsterGroup:Lcom/hz/core/MonsterGroup;

    .line 285
    return-void
.end method

.method public setPlan(I[B)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "data"    # [B

    .prologue
    .line 600
    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    if-eqz p2, :cond_0

    .line 611
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/hz/battle/Battle;->playerPlanData:[[B

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public setRemoteWaiting(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/hz/battle/Battle;->isRemoteWaiting:Z

    .line 173
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "_type"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/hz/battle/Battle;->type:I

    .line 452
    return-void
.end method

.method public setWaitStatus(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 4562
    iget v0, p0, Lcom/hz/battle/Battle;->waitStatus:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hz/battle/Battle;->waitStatus:I

    .line 4563
    return-void
.end method

.method public updateBattleResult()V
    .locals 5

    .prologue
    .line 237
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v3

    iget-boolean v4, p0, Lcom/hz/battle/Battle;->isLeftHavePlayer:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/hz/battle/Battle;->getActivePlayerNum(IIZ)B

    move-result v0

    .line 238
    .local v0, "leftAliveCheckNum":I
    const/16 v2, 0x14

    const/16 v3, 0x22

    iget-boolean v4, p0, Lcom/hz/battle/Battle;->isRightHavePlayer:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/hz/battle/Battle;->getActivePlayerNum(IIZ)B

    move-result v1

    .line 241
    .local v1, "rightAliveCheckNum":I
    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    .line 242
    const/4 v2, 0x4

    iput-byte v2, p0, Lcom/hz/battle/Battle;->result:B

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-gtz v0, :cond_2

    .line 246
    const/4 v2, 0x2

    iput-byte v2, p0, Lcom/hz/battle/Battle;->result:B

    goto :goto_0

    .line 249
    :cond_2
    if-gtz v1, :cond_3

    .line 250
    const/4 v2, 0x1

    iput-byte v2, p0, Lcom/hz/battle/Battle;->result:B

    goto :goto_0

    .line 253
    :cond_3
    iget-byte v2, p0, Lcom/hz/battle/Battle;->round:B

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 254
    const/4 v2, 0x3

    iput-byte v2, p0, Lcom/hz/battle/Battle;->result:B

    goto :goto_0
.end method

.method public updateRoundEndTime()V
    .locals 4

    .prologue
    .line 199
    iget-byte v0, p0, Lcom/hz/battle/Battle;->round:B

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/battle/Battle;->roundEndTime:J

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x9c40

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/battle/Battle;->roundEndTime:J

    goto :goto_0
.end method
