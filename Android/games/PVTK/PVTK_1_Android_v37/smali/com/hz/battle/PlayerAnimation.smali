.class public Lcom/hz/battle/PlayerAnimation;
.super Ljava/lang/Object;
.source "PlayerAnimation.java"


# instance fields
.field battle:Lcom/hz/battle/BattleAniEngine;

.field fromAniID:I

.field initAnimationID:I

.field isDie:Z

.field isInit:Z

.field isMagicField:Z

.field loopTime:I

.field offsetX:I

.field player:Lcom/hz/actor/Player;

.field toAniID:I


# direct methods
.method public constructor <init>(Lcom/hz/battle/BattleAniEngine;Lcom/hz/actor/Player;IIIIZ)V
    .locals 2
    .param p1, "_battle"    # Lcom/hz/battle/BattleAniEngine;
    .param p2, "actor"    # Lcom/hz/actor/Player;
    .param p3, "_fromAniID"    # I
    .param p4, "_toAniID"    # I
    .param p5, "_loopTime"    # I
    .param p6, "_offsetX"    # I
    .param p7, "_idDie"    # Z

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/hz/battle/PlayerAnimation;->isDie:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/battle/PlayerAnimation;->isInit:Z

    .line 30
    iput-boolean v1, p0, Lcom/hz/battle/PlayerAnimation;->isMagicField:Z

    .line 35
    iput-object p1, p0, Lcom/hz/battle/PlayerAnimation;->battle:Lcom/hz/battle/BattleAniEngine;

    .line 36
    iput-object p2, p0, Lcom/hz/battle/PlayerAnimation;->player:Lcom/hz/actor/Player;

    .line 38
    iput p3, p0, Lcom/hz/battle/PlayerAnimation;->fromAniID:I

    .line 39
    iput p4, p0, Lcom/hz/battle/PlayerAnimation;->toAniID:I

    .line 40
    iput p5, p0, Lcom/hz/battle/PlayerAnimation;->loopTime:I

    .line 41
    iput p6, p0, Lcom/hz/battle/PlayerAnimation;->offsetX:I

    .line 42
    iput-boolean p7, p0, Lcom/hz/battle/PlayerAnimation;->isDie:Z

    .line 43
    return-void
.end method


# virtual methods
.method public action()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 50
    iget-object v7, p0, Lcom/hz/battle/PlayerAnimation;->player:Lcom/hz/actor/Player;

    if-nez v7, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v5

    .line 54
    :cond_1
    iget-object v7, p0, Lcom/hz/battle/PlayerAnimation;->player:Lcom/hz/actor/Player;

    iget-object v4, v7, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    .line 55
    .local v4, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v4, :cond_0

    .line 60
    iget-boolean v7, p0, Lcom/hz/battle/PlayerAnimation;->isInit:Z

    if-eqz v7, :cond_4

    .line 62
    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->fromAniID:I

    invoke-virtual {v4, v7}, Lcom/hz/sprite/GameSprite;->setCurAnimation(I)Z

    move-result v3

    .line 63
    .local v3, "isSucess":Z
    if-nez v3, :cond_2

    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->loopTime:I

    if-lez v7, :cond_2

    .line 64
    iput v5, p0, Lcom/hz/battle/PlayerAnimation;->loopTime:I

    .line 67
    :cond_2
    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->loopTime:I

    invoke-virtual {v4, v7}, Lcom/hz/sprite/GameSprite;->setCurAnimationLoopTime(I)V

    .line 69
    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->loopTime:I

    if-lez v7, :cond_0

    .line 73
    invoke-virtual {v4}, Lcom/hz/sprite/GameSprite;->getCurAniID()I

    move-result v7

    iput v7, p0, Lcom/hz/battle/PlayerAnimation;->initAnimationID:I

    .line 74
    iget-short v7, v4, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget v8, p0, Lcom/hz/battle/PlayerAnimation;->offsetX:I

    add-int/2addr v7, v8

    iget-short v8, v4, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v4, v7, v8}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 77
    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->fromAniID:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_3

    .line 79
    iget-boolean v7, p0, Lcom/hz/battle/PlayerAnimation;->isMagicField:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/hz/battle/PlayerAnimation;->battle:Lcom/hz/battle/BattleAniEngine;

    iget-object v2, v7, Lcom/hz/battle/BattleAniEngine;->effMagicFieldSprite:Lcom/hz/sprite/GameSprite;

    .line 81
    .local v2, "effectSprite":Lcom/hz/sprite/GameSprite;
    :goto_1
    invoke-static {v2}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 83
    .local v1, "effSprite":Lcom/hz/sprite/GameSprite;
    if-eqz v1, :cond_3

    .line 84
    iget-object v7, p0, Lcom/hz/battle/PlayerAnimation;->player:Lcom/hz/actor/Player;

    invoke-static {v1, v5, v7}, Lcom/hz/battle/AnimationControl;->addBattleSprite(Lcom/hz/sprite/GameSprite;ILcom/hz/actor/Player;)V

    .line 85
    iget-short v7, v4, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget-short v8, v4, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v4}, Lcom/hz/sprite/GameSprite;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v1, v7, v8}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 89
    .end local v1    # "effSprite":Lcom/hz/sprite/GameSprite;
    .end local v2    # "effectSprite":Lcom/hz/sprite/GameSprite;
    :cond_3
    iput-boolean v6, p0, Lcom/hz/battle/PlayerAnimation;->isInit:Z

    .line 93
    .end local v3    # "isSucess":Z
    :cond_4
    invoke-virtual {v4}, Lcom/hz/sprite/GameSprite;->getCurAniID()I

    move-result v0

    .line 96
    .local v0, "curAnimationID":I
    if-ltz v0, :cond_5

    .line 97
    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->initAnimationID:I

    if-ltz v7, :cond_5

    .line 98
    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->initAnimationID:I

    if-eq v0, v7, :cond_7

    .line 102
    :cond_5
    iget-short v6, v4, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->offsetX:I

    sub-int/2addr v6, v7

    iget-short v7, v4, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v4, v6, v7}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    goto :goto_0

    .line 79
    .end local v0    # "curAnimationID":I
    .restart local v3    # "isSucess":Z
    :cond_6
    iget-object v7, p0, Lcom/hz/battle/PlayerAnimation;->battle:Lcom/hz/battle/BattleAniEngine;

    iget-object v2, v7, Lcom/hz/battle/BattleAniEngine;->effHitSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_1

    .line 105
    .end local v3    # "isSucess":Z
    .restart local v0    # "curAnimationID":I
    :cond_7
    invoke-virtual {v4}, Lcom/hz/sprite/GameSprite;->getCurAnimationLoopTime()I

    move-result v7

    if-gtz v7, :cond_9

    .line 107
    iget v6, p0, Lcom/hz/battle/PlayerAnimation;->toAniID:I

    const/16 v7, -0x63

    if-eq v6, v7, :cond_8

    .line 108
    iget v6, p0, Lcom/hz/battle/PlayerAnimation;->toAniID:I

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    .line 112
    :cond_8
    iget-short v6, v4, Lcom/hz/sprite/GameSprite;->spriteX:S

    iget v7, p0, Lcom/hz/battle/PlayerAnimation;->offsetX:I

    sub-int/2addr v6, v7

    iget-short v7, v4, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-virtual {v4, v6, v7}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    .line 116
    goto/16 :goto_0
.end method
