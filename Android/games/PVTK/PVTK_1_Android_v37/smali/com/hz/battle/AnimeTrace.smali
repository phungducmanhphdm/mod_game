.class public Lcom/hz/battle/AnimeTrace;
.super Lcom/hz/battle/AnimationControl;
.source "AnimeTrace.java"


# static fields
.field private static final ANIME_ALL_COUNT:B = 0x4t

.field private static final ANIME_ALL_ONE_ADD:B = 0x3t


# instance fields
.field baseSprite:Lcom/hz/sprite/GameSprite;

.field checkSprite:Lcom/hz/sprite/GameSprite;

.field targetList:[Lcom/hz/actor/Player;

.field tracePlayerList:Ljava/util/Vector;

.field traceSpriteList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/hz/battle/BattleAniEngine;BLcom/hz/actor/Player;[Lcom/hz/actor/Player;Lcom/hz/sprite/GameSprite;)V
    .locals 1
    .param p1, "battleBelong"    # Lcom/hz/battle/BattleAniEngine;
    .param p2, "type"    # B
    .param p3, "_actorPlayer"    # Lcom/hz/actor/Player;
    .param p4, "_targetList"    # [Lcom/hz/actor/Player;
    .param p5, "_baseSprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/hz/battle/AnimationControl;-><init>(Lcom/hz/battle/BattleAniEngine;B)V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    .line 42
    iput-object p3, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    .line 43
    iput-object p4, p0, Lcom/hz/battle/AnimeTrace;->targetList:[Lcom/hz/actor/Player;

    .line 45
    iput-object p5, p0, Lcom/hz/battle/AnimeTrace;->baseSprite:Lcom/hz/sprite/GameSprite;

    .line 46
    invoke-direct {p0}, Lcom/hz/battle/AnimeTrace;->init()V

    .line 47
    return-void
.end method

.method private final actionAnimeAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 155
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    if-nez v2, :cond_1

    .line 191
    :cond_0
    return-void

    .line 159
    :cond_1
    iget v2, p0, Lcom/hz/battle/AnimeTrace;->counter:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->baseSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v2}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    .line 167
    .local v1, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v1, :cond_3

    .line 164
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v1, v5}, Lcom/hz/sprite/GameSprite;->setCurAnimationLoopTime(I)V

    .line 172
    invoke-virtual {v1, v5}, Lcom/hz/sprite/GameSprite;->setMotionTurnOff(Z)V

    .line 174
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    iget-byte v2, v2, Lcom/hz/actor/Player;->position:B

    invoke-static {v2}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v1, v5}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 179
    :cond_4
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/hz/battle/AnimeTrace;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    iget v3, v3, Lcom/hz/battle/BattleAniEngine;->battleWidth:I

    add-int/lit8 v3, v3, -0x3c

    invoke-static {v2, v3}, Lcom/hz/common/Tool;->rand(II)I

    move-result v2

    .line 180
    iget-object v3, p0, Lcom/hz/battle/AnimeTrace;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v3

    .line 181
    iget-object v4, p0, Lcom/hz/battle/AnimeTrace;->battleBelong:Lcom/hz/battle/BattleAniEngine;

    iget v4, v4, Lcom/hz/battle/BattleAniEngine;->battleHeight:I

    add-int/lit8 v4, v4, -0x28

    .line 180
    invoke-static {v3, v4}, Lcom/hz/common/Tool;->rand(II)I

    move-result v3

    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 183
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 185
    iget v2, p0, Lcom/hz/battle/AnimeTrace;->counter:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 186
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    if-nez v2, :cond_2

    .line 187
    iput-object v1, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    goto :goto_1
.end method

.method private final actionAnimeTarget()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 128
    iget-object v5, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 151
    return-void

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/sprite/GameSprite;

    .line 131
    .local v2, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v2, :cond_2

    .line 128
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x0

    .line 136
    .local v1, "p":Lcom/hz/actor/Player;
    iget-object v5, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 137
    iget-object v5, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lcom/hz/actor/Player;
    check-cast v1, Lcom/hz/actor/Player;

    .line 139
    .restart local v1    # "p":Lcom/hz/actor/Player;
    :cond_3
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v3, v5, Lcom/hz/sprite/GameSprite;->spriteX:S

    .line 144
    .local v3, "targetX":I
    iget-object v5, v1, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v4, v5, Lcom/hz/sprite/GameSprite;->spriteY:S

    .line 147
    .local v4, "targetY":I
    iget-short v5, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    invoke-static {v5, v3, v6}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v2, Lcom/hz/sprite/GameSprite;->spriteX:S

    .line 148
    iget-short v5, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    invoke-static {v5, v4, v6}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v2, Lcom/hz/sprite/GameSprite;->spriteY:S

    goto :goto_1
.end method

.method private final init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 51
    iget-byte v6, p0, Lcom/hz/battle/AnimeTrace;->type:B

    if-ne v6, v8, :cond_1

    .line 111
    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    .line 57
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->targetList:[Lcom/hz/actor/Player;

    if-eqz v6, :cond_0

    .line 60
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v6, v6, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    iget-byte v6, v6, Lcom/hz/actor/Player;->position:B

    invoke-static {v6}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v1

    .line 67
    .local v1, "isLeft":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->targetList:[Lcom/hz/actor/Player;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->targetList:[Lcom/hz/actor/Player;

    aget-object v2, v6, v0

    .line 70
    .local v2, "p":Lcom/hz/actor/Player;
    if-nez v2, :cond_3

    .line 67
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_3
    iget-object v6, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v6, :cond_2

    .line 78
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->baseSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v6}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    .line 79
    .local v3, "sprite":Lcom/hz/sprite/GameSprite;
    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v3, v8}, Lcom/hz/sprite/GameSprite;->setCurAnimationLoopTime(I)V

    .line 84
    invoke-virtual {v3, v8}, Lcom/hz/sprite/GameSprite;->setMotionTurnOff(Z)V

    .line 86
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    if-nez v6, :cond_4

    .line 87
    iput-object v3, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    .line 90
    :cond_4
    invoke-virtual {v3, v1}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 92
    iget-byte v6, p0, Lcom/hz/battle/AnimeTrace;->type:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 93
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v6, v6, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v4, v6, Lcom/hz/sprite/GameSprite;->spriteX:S

    .line 94
    .local v4, "spriteX":I
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->actorPlayer:Lcom/hz/actor/Player;

    iget-object v6, v6, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v5, v6, Lcom/hz/sprite/GameSprite;->spriteY:S

    .line 106
    .local v5, "spriteY":I
    :goto_2
    invoke-virtual {v3, v4, v5}, Lcom/hz/sprite/GameSprite;->setSpritePosition(II)V

    .line 108
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    iget-object v6, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    .end local v4    # "spriteX":I
    .end local v5    # "spriteY":I
    :cond_5
    if-eqz v1, :cond_6

    .line 99
    const/4 v4, 0x0

    .line 104
    .restart local v4    # "spriteX":I
    :goto_3
    iget-object v6, v2, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    iget-short v5, v6, Lcom/hz/sprite/GameSprite;->spriteY:S

    .restart local v5    # "spriteY":I
    goto :goto_2

    .line 102
    .end local v4    # "spriteX":I
    .end local v5    # "spriteY":I
    :cond_6
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .restart local v4    # "spriteX":I
    goto :goto_3
.end method


# virtual methods
.method public action()V
    .locals 4

    .prologue
    .line 195
    iget v2, p0, Lcom/hz/battle/AnimeTrace;->counter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hz/battle/AnimeTrace;->counter:I

    .line 196
    iget v2, p0, Lcom/hz/battle/AnimeTrace;->counter:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/hz/battle/AnimeTrace;->done()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-byte v2, p0, Lcom/hz/battle/AnimeTrace;->type:B

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_1
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-gez v0, :cond_2

    .line 227
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/hz/battle/AnimeTrace;->done()V

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :pswitch_0
    invoke-direct {p0}, Lcom/hz/battle/AnimeTrace;->actionAnimeAll()V

    goto :goto_1

    .line 207
    :pswitch_1
    invoke-direct {p0}, Lcom/hz/battle/AnimeTrace;->actionAnimeTarget()V

    goto :goto_1

    .line 212
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/sprite/GameSprite;

    .line 213
    .local v1, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v1, :cond_4

    .line 211
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 216
    :cond_4
    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->action()V

    .line 217
    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->isMotionAlive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 220
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->tracePlayerList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 256
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/hz/battle/AnimeTrace;->traceSpriteList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/sprite/GameSprite;

    .line 251
    .local v1, "sprite":Lcom/hz/sprite/GameSprite;
    if-nez v1, :cond_1

    .line 249
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v1, p1, v3, v3}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_1
.end method

.method public isEffectCheck()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    if-nez v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v1}, Lcom/hz/battle/DoAttack;->isAnimationIDCheck(Lcom/hz/sprite/GameSprite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/battle/AnimeTrace;->checkSprite:Lcom/hz/sprite/GameSprite;

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method
