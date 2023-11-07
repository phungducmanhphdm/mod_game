.class public Lcom/hz/battle/DoAttack;
.super Ljava/lang/Object;
.source "DoAttack.java"


# static fields
.field public static final STEP_CHECK_ACTOR_ANIME:B = 0x1t

.field public static final STEP_CHECK_SKILL_ANIME:B = 0x2t

.field public static final STEP_END:B = 0x4t

.field public static final STEP_INIT:B = 0x0t

.field public static final STEP_TRACE_ANIME:B = 0x3t


# instance fields
.field actorPlayer:Lcom/hz/actor/Player;

.field animePos:B

.field animeStartType:I

.field animeTrace:Lcom/hz/battle/AnimeTrace;

.field battleBelong:Lcom/hz/battle/BattleAniEngine;

.field effectList:Ljava/util/Vector;

.field effectSprite:Lcom/hz/sprite/GameSprite;

.field lastEffectSprite:Lcom/hz/sprite/GameSprite;

.field skillCheckSprite:Lcom/hz/sprite/GameSprite;

.field step:B

.field targetList:[Lcom/hz/actor/Player;


# direct methods
.method public constructor <init>(Lcom/hz/battle/BattleAniEngine;Lcom/hz/actor/Player;[Lcom/hz/actor/Player;BIIILjava/util/Vector;)V
    .locals 1
    .param p1, "battleAni"    # Lcom/hz/battle/BattleAniEngine;
    .param p2, "_atkPlayer"    # Lcom/hz/actor/Player;
    .param p3, "_targetList"    # [Lcom/hz/actor/Player;
    .param p4, "_animePos"    # B
    .param p5, "_animeStartType"    # I
    .param p6, "_effectAnimeID"    # I
    .param p7, "_lastEffectAnimeID"    # I
    .param p8, "_effectList"    # Ljava/util/Vector;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/battle/DoAttack;->step:B

    .line 53
    iput-object p1, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    .line 54
    iput p5, p0, Lcom/hz/battle/DoAttack;->animeStartType:I

    .line 55
    iput-byte p4, p0, Lcom/hz/battle/DoAttack;->animePos:B

    .line 58
    if-lez p6, :cond_0

    .line 60
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-static {v0, p6}, Lcom/hz/battle/AnimationControl;->getEffectCloneSprite(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/DoAttack;->effectSprite:Lcom/hz/sprite/GameSprite;

    .line 61
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->effectSprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_0

    .line 62
    invoke-static {p6}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/DoAttack;->effectSprite:Lcom/hz/sprite/GameSprite;

    .line 67
    :cond_0
    if-lez p7, :cond_1

    .line 69
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-static {v0, p7}, Lcom/hz/battle/AnimationControl;->getEffectCloneSprite(Lcom/hz/battle/BattleAniEngine;I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/DoAttack;->lastEffectSprite:Lcom/hz/sprite/GameSprite;

    .line 70
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->lastEffectSprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_1

    .line 71
    invoke-static {p7}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/DoAttack;->lastEffectSprite:Lcom/hz/sprite/GameSprite;

    .line 75
    :cond_1
    iput-object p8, p0, Lcom/hz/battle/DoAttack;->effectList:Ljava/util/Vector;

    .line 77
    iput-object p2, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    .line 78
    iput-object p3, p0, Lcom/hz/battle/DoAttack;->targetList:[Lcom/hz/actor/Player;

    .line 80
    return-void
.end method

.method private final addTargetSkillEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 108
    iget-object v4, p0, Lcom/hz/battle/DoAttack;->targetList:[Lcom/hz/actor/Player;

    if-nez v4, :cond_1

    .line 127
    :cond_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/battle/DoAttack;->targetList:[Lcom/hz/actor/Player;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/hz/battle/DoAttack;->targetList:[Lcom/hz/actor/Player;

    aget-object v3, v4, v0

    .line 114
    .local v3, "targetPlayer":Lcom/hz/actor/Player;
    if-nez v3, :cond_2

    .line 112
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    iget-object v4, p0, Lcom/hz/battle/DoAttack;->effectSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v4}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 119
    .local v1, "sprite1":Lcom/hz/sprite/GameSprite;
    iget-object v4, p0, Lcom/hz/battle/DoAttack;->lastEffectSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v4}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    .line 121
    .local v2, "sprite2":Lcom/hz/sprite/GameSprite;
    invoke-direct {p0, v1}, Lcom/hz/battle/DoAttack;->setSkillCheckSprite(Lcom/hz/sprite/GameSprite;)V

    .line 122
    invoke-direct {p0, v2}, Lcom/hz/battle/DoAttack;->setSkillCheckSprite(Lcom/hz/sprite/GameSprite;)V

    .line 124
    invoke-static {v1, v5, v3}, Lcom/hz/battle/AnimationControl;->addBattleSprite(Lcom/hz/sprite/GameSprite;ILcom/hz/actor/Player;)V

    .line 125
    invoke-static {v2, v5, v3}, Lcom/hz/battle/AnimationControl;->addBattleSprite(Lcom/hz/sprite/GameSprite;ILcom/hz/actor/Player;)V

    goto :goto_1
.end method

.method private final doInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    iget v0, p0, Lcom/hz/battle/DoAttack;->animeStartType:I

    invoke-static {v0}, Lcom/hz/core/Define;->getAnimeStartType(I)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static isAnimationIDCheck(Lcom/hz/sprite/GameSprite;)Z
    .locals 4
    .param p0, "checkSprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 235
    if-nez p0, :cond_1

    const/4 v2, 0x1

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    const/4 v2, 0x0

    .line 238
    .local v2, "isCheckDmg":Z
    invoke-virtual {p0}, Lcom/hz/sprite/GameSprite;->getCurAnimation()Lcom/hz/sprite/Animation;

    move-result-object v0

    .line 239
    .local v0, "atcAnimation":Lcom/hz/sprite/Animation;
    if-nez v0, :cond_2

    .line 240
    const/4 v2, 0x1

    .line 241
    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v0}, Lcom/hz/sprite/Animation;->getCheckID()I

    move-result v1

    .line 244
    .local v1, "hitFrame":I
    if-ltz v1, :cond_4

    .line 245
    invoke-virtual {v0}, Lcom/hz/sprite/Animation;->getCurFrame()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 246
    const/4 v2, 0x1

    .line 247
    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {v0}, Lcom/hz/sprite/Animation;->getLoopTime()B

    move-result v3

    if-gtz v3, :cond_0

    .line 249
    const/4 v2, 0x1

    .line 251
    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v0}, Lcom/hz/sprite/Animation;->getLoopTime()B

    move-result v3

    if-gtz v3, :cond_0

    .line 253
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final setEffectListToBattle()V
    .locals 3

    .prologue
    .line 221
    iget-object v2, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/battle/DoAttack;->effectList:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/battle/DoAttack;->effectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 230
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hz/battle/DoAttack;->effectList:Ljava/util/Vector;

    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/DoAttack;->effectList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/battle/AnimationControl;

    .line 227
    .local v0, "control":Lcom/hz/battle/AnimationControl;
    iget-object v2, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v0}, Lcom/hz/battle/BattleAniEngine;->addAnimationControl(Lcom/hz/battle/AnimationControl;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private final setSkillCheckSprite(Lcom/hz/sprite/GameSprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->skillCheckSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/hz/battle/DoAttack;->skillCheckSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_0
.end method


# virtual methods
.method public action()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x4

    .line 133
    iget-object v1, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v1, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-byte v1, p0, Lcom/hz/battle/DoAttack;->animePos:B

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v1, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->getCurAnimationLoopTime()I

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v1, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    const/4 v3, -0x1

    invoke-virtual {v1, v4, v3}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    .line 148
    :cond_2
    iget-byte v1, p0, Lcom/hz/battle/DoAttack;->step:B

    packed-switch v1, :pswitch_data_0

    .line 213
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->doInit()V

    .line 151
    iput-byte v0, p0, Lcom/hz/battle/DoAttack;->step:B

    goto :goto_1

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v0}, Lcom/hz/battle/DoAttack;->isAnimationIDCheck(Lcom/hz/sprite/GameSprite;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget v0, p0, Lcom/hz/battle/DoAttack;->animeStartType:I

    invoke-static {v0}, Lcom/hz/core/Define;->getAnimeTraceType(I)B

    move-result v2

    .line 162
    .local v2, "traceType":B
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/hz/battle/DoAttack;->targetList:[Lcom/hz/actor/Player;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hz/battle/DoAttack;->effectSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Lcom/hz/battle/AnimeTrace;

    iget-object v1, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    iget-object v3, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v4, p0, Lcom/hz/battle/DoAttack;->targetList:[Lcom/hz/actor/Player;

    iget-object v5, p0, Lcom/hz/battle/DoAttack;->effectSprite:Lcom/hz/sprite/GameSprite;

    invoke-direct/range {v0 .. v5}, Lcom/hz/battle/AnimeTrace;-><init>(Lcom/hz/battle/BattleAniEngine;BLcom/hz/actor/Player;[Lcom/hz/actor/Player;Lcom/hz/sprite/GameSprite;)V

    iput-object v0, p0, Lcom/hz/battle/DoAttack;->animeTrace:Lcom/hz/battle/AnimeTrace;

    .line 164
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    iget-object v1, p0, Lcom/hz/battle/DoAttack;->animeTrace:Lcom/hz/battle/AnimeTrace;

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->addAnimationControl(Lcom/hz/battle/AnimationControl;)V

    .line 165
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/hz/battle/DoAttack;->step:B

    goto :goto_1

    .line 170
    :cond_4
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->addTargetSkillEffect()V

    .line 173
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->skillCheckSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/hz/battle/DoAttack;->animeStartType:I

    invoke-static {v0}, Lcom/hz/core/Define;->getAnimeStartType(I)B

    move-result v0

    if-ne v0, v5, :cond_6

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->setEffectListToBattle()V

    .line 177
    :cond_6
    iput-byte v5, p0, Lcom/hz/battle/DoAttack;->step:B

    goto :goto_1

    .line 182
    .end local v2    # "traceType":B
    :pswitch_2
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->skillCheckSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v0}, Lcom/hz/battle/DoAttack;->isAnimationIDCheck(Lcom/hz/sprite/GameSprite;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->setEffectListToBattle()V

    .line 186
    iput-byte v4, p0, Lcom/hz/battle/DoAttack;->step:B

    goto :goto_1

    .line 191
    :pswitch_3
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->animeTrace:Lcom/hz/battle/AnimeTrace;

    if-nez v0, :cond_7

    .line 192
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->setEffectListToBattle()V

    .line 193
    iput-byte v4, p0, Lcom/hz/battle/DoAttack;->step:B

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->animeTrace:Lcom/hz/battle/AnimeTrace;

    invoke-virtual {v0}, Lcom/hz/battle/AnimeTrace;->isEffectCheck()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 197
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->setEffectListToBattle()V

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/hz/battle/DoAttack;->animeTrace:Lcom/hz/battle/AnimeTrace;

    invoke-virtual {v0}, Lcom/hz/battle/AnimeTrace;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/hz/battle/DoAttack;->setEffectListToBattle()V

    .line 202
    iput-byte v4, p0, Lcom/hz/battle/DoAttack;->step:B

    goto :goto_1

    .line 207
    :pswitch_4
    iget-object v1, p0, Lcom/hz/battle/DoAttack;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v1, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->getCurAnimationLoopTime()I

    move-result v1

    if-gtz v1, :cond_3

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
