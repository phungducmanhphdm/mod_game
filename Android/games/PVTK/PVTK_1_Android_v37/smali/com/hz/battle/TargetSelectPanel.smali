.class public Lcom/hz/battle/TargetSelectPanel;
.super Ljava/lang/Object;
.source "TargetSelectPanel.java"


# static fields
.field private static final INIT_FAIL:I = -0x1

.field private static final INIT_SUCCESS:I = 0x1

.field private static final MAX_SIDE_ROW:I = 0x2

.field private static final MOVE_DOWN:I = 0x1

.field private static final MOVE_LEFT:I = 0x2

.field private static final MOVE_RIGHT:I = 0x3

.field private static final MOVE_UP:I


# instance fields
.field aniEngnie:Lcom/hz/battle/BattleAniEngine;

.field private areaType:B

.field battle:Lcom/hz/battle/Battle;

.field private isFinshSelect:Z

.field parentBattlePanel:Lcom/hz/battle/BattlePanel;

.field selectItem:Lcom/hz/core/Item;

.field selectSkill:Lcom/hz/core/Skill;

.field private targetPos:[B


# direct methods
.method public constructor <init>(Lcom/hz/battle/BattlePanel;B)V
    .locals 1
    .param p1, "parentBattlePanel"    # Lcom/hz/battle/BattlePanel;
    .param p2, "areaType"    # B

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p1, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    iput-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    .line 63
    iget-object v0, p1, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iput-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    .line 65
    :cond_0
    iput-byte p2, p0, Lcom/hz/battle/TargetSelectPanel;->areaType:B

    .line 66
    return-void
.end method

.method private final isCursorEnable([B)Z
    .locals 11
    .param p1, "tarPos"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 384
    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v6

    .line 388
    :cond_1
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v8}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v2

    .line 390
    .local v2, "orderIndex":I
    const/4 v0, 0x0

    .line 391
    .local v0, "getNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, p1

    if-lt v1, v8, :cond_2

    .line 463
    if-lez v0, :cond_0

    move v6, v7

    .line 467
    goto :goto_0

    .line 393
    :cond_2
    aget-byte v5, p1, v1

    .line 395
    .local v5, "pos":I
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v8, v5}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v4

    .line 396
    .local v4, "p":Lcom/hz/actor/Player;
    if-nez v4, :cond_4

    .line 391
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    :cond_4
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->selectItem:Lcom/hz/core/Item;

    if-eqz v8, :cond_6

    const/4 v8, 0x3

    if-ne v2, v8, :cond_6

    .line 404
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isDead()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->selectItem:Lcom/hz/core/Item;

    invoke-virtual {v8}, Lcom/hz/core/Item;->isRebornItem()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 460
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 413
    :cond_6
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->selectSkill:Lcom/hz/core/Skill;

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    if-ne v2, v8, :cond_7

    .line 414
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v8}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v8

    iget-object v9, p0, Lcom/hz/battle/TargetSelectPanel;->selectSkill:Lcom/hz/core/Skill;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/hz/core/Skill;->isCanUse(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 419
    invoke-virtual {v4, v7}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 424
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isDead()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->selectSkill:Lcom/hz/core/Skill;

    invoke-virtual {v8}, Lcom/hz/core/Skill;->isRebornSkill()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 430
    :cond_7
    if-ne v2, v7, :cond_8

    .line 433
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v8, v4}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 438
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v8}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v3

    .line 446
    .local v3, "orderPlayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_5

    iget-byte v8, v4, Lcom/hz/actor/Player;->position:B

    iget-byte v9, v3, Lcom/hz/actor/Player;->position:B

    if-ne v8, v9, :cond_5

    goto :goto_2

    .line 452
    .end local v3    # "orderPlayer":Lcom/hz/actor/Player;
    :cond_8
    const/4 v8, 0x5

    if-ne v2, v8, :cond_5

    .line 455
    iget-object v8, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v8, v4}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2
.end method

.method private final moveKeyCursor(I)V
    .locals 9
    .param p1, "moveType"    # I

    .prologue
    const/4 v8, 0x1

    .line 106
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v7}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v1

    .line 107
    .local v1, "cursor":I
    invoke-static {v1}, Lcom/hz/battle/Battle;->getPositionSide(I)I

    move-result v4

    .line 114
    .local v4, "side":I
    const/4 v5, 0x0

    .line 116
    .local v5, "sideOffsetPos":I
    if-ne v4, v8, :cond_1

    .line 117
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v6, v7, Lcom/hz/battle/Battle;->rowLeft:I

    .line 125
    .local v6, "sideRowNum":I
    :goto_0
    sub-int v7, v1, v5

    div-int/lit8 v3, v7, 0x2

    .line 126
    .local v3, "row":I
    sub-int v7, v1, v5

    rem-int/lit8 v0, v7, 0x2

    .line 128
    .local v0, "column":I
    packed-switch p1, :pswitch_data_0

    .line 197
    :cond_0
    :goto_1
    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v0

    add-int v2, v7, v5

    .line 199
    .local v2, "pos":I
    invoke-virtual {p0, v2}, Lcom/hz/battle/TargetSelectPanel;->dealCursorLogic(I)V

    .line 200
    return-void

    .line 121
    .end local v0    # "column":I
    .end local v2    # "pos":I
    .end local v3    # "row":I
    .end local v6    # "sideRowNum":I
    :cond_1
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v6, v7, Lcom/hz/battle/Battle;->rowRight:I

    .line 122
    .restart local v6    # "sideRowNum":I
    const/16 v5, 0x14

    goto :goto_0

    .line 130
    .restart local v0    # "column":I
    .restart local v3    # "row":I
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 131
    if-gez v3, :cond_0

    .line 132
    add-int/lit8 v3, v6, -0x1

    .line 134
    goto :goto_1

    .line 137
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 138
    if-lt v3, v6, :cond_0

    .line 139
    const/4 v3, 0x0

    .line 141
    goto :goto_1

    .line 144
    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    .line 145
    if-gez v0, :cond_0

    .line 147
    if-ne v4, v8, :cond_3

    .line 148
    const/16 v5, 0x14

    .line 151
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowRight:I

    if-lt v3, v7, :cond_2

    .line 152
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowRight:I

    add-int/lit8 v3, v7, -0x1

    .line 165
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 167
    goto :goto_1

    .line 157
    :cond_3
    const/4 v5, 0x0

    .line 160
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowLeft:I

    if-lt v3, v7, :cond_2

    .line 161
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowLeft:I

    add-int/lit8 v3, v7, -0x1

    goto :goto_2

    .line 170
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 171
    const/4 v7, 0x2

    if-lt v0, v7, :cond_0

    .line 174
    if-ne v4, v8, :cond_5

    .line 175
    const/16 v5, 0x14

    .line 178
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowRight:I

    if-lt v3, v7, :cond_4

    .line 179
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowRight:I

    add-int/lit8 v3, v7, -0x1

    .line 192
    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 184
    :cond_5
    const/4 v5, 0x0

    .line 187
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowLeft:I

    if-lt v3, v7, :cond_4

    .line 188
    iget-object v7, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget v7, v7, Lcom/hz/battle/Battle;->rowLeft:I

    add-int/lit8 v3, v7, -0x1

    goto :goto_3

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dealCursorLogic(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v0

    if-ne v0, p1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->isCursorEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/battle/TargetSelectPanel;->setFinshSelect(Z)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-byte v0, p0, Lcom/hz/battle/TargetSelectPanel;->areaType:B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hz/battle/TargetSelectPanel;->initCursor(IBZ)I

    goto :goto_0
.end method

.method public getTargetPos()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->targetPos:[B

    return-object v0
.end method

.method public handleKey(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 210
    sparse-switch p1, :sswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 214
    :sswitch_0
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->cleanTargetSelect()V

    .line 216
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->gotoPopMenu()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->gotoBattleMenu()V

    goto :goto_0

    .line 224
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hz/battle/TargetSelectPanel;->moveKeyCursor(I)V

    goto :goto_0

    .line 228
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hz/battle/TargetSelectPanel;->moveKeyCursor(I)V

    goto :goto_0

    .line 232
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hz/battle/TargetSelectPanel;->moveKeyCursor(I)V

    goto :goto_0

    .line 235
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/hz/battle/TargetSelectPanel;->moveKeyCursor(I)V

    goto :goto_0

    .line 239
    :sswitch_5
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/battle/TargetSelectPanel;->dealCursorLogic(I)V

    goto :goto_0

    .line 243
    :sswitch_6
    iget-object v0, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v0}, Lcom/hz/battle/BattlePanel;->doBattleChat()V

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        0x23 -> :sswitch_6
        0x32 -> :sswitch_1
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
        0x38 -> :sswitch_2
    .end sparse-switch
.end method

.method public handlerMouse(II)V
    .locals 11
    .param p1, "pointx"    # I
    .param p2, "pointy"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, -0x1

    .line 250
    if-eq p1, v4, :cond_0

    if-ne p2, v4, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v8, 0x0

    .local v8, "pos":B
    :goto_1
    const/16 v4, 0x22

    if-ge v8, v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v4, v8, v9}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v6

    .line 259
    .local v6, "coordX":I
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v4, v8, v10}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v7

    .line 262
    .local v7, "coordY":I
    invoke-static {v8}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1e

    .line 264
    .local v2, "w":I
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v4, v9}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v3

    .line 270
    .local v3, "h":I
    :goto_2
    div-int/lit8 v4, v2, 0x2

    sub-int v0, v6, v4

    .line 271
    .local v0, "x":I
    sub-int v1, v7, v3

    .local v1, "y":I
    move v4, p1

    move v5, p2

    .line 286
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    invoke-virtual {p0, v8}, Lcom/hz/battle/TargetSelectPanel;->dealCursorLogic(I)V

    goto :goto_0

    .line 266
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_2
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1e

    .line 267
    .restart local v2    # "w":I
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->aniEngnie:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v4, v10}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v3

    .restart local v3    # "h":I
    goto :goto_2

    .line 256
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :cond_3
    add-int/lit8 v4, v8, 0x1

    int-to-byte v8, v4

    goto :goto_1
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-object v3, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v3}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v1

    .line 79
    .local v1, "oldCursor":I
    iget-byte v3, p0, Lcom/hz/battle/TargetSelectPanel;->areaType:B

    invoke-virtual {p0, v1, v3, v4}, Lcom/hz/battle/TargetSelectPanel;->initCursor(IBZ)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 93
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v3}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v2

    .line 86
    .local v2, "orderPlayer":Lcom/hz/actor/Player;
    const/4 v0, 0x0

    .line 87
    .local v0, "cursor":I
    iget-object v3, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget-byte v4, p0, Lcom/hz/battle/TargetSelectPanel;->areaType:B

    invoke-virtual {v3, v2, v4}, Lcom/hz/battle/Battle;->searchAICursor(Lcom/hz/actor/Player;B)I

    move-result v0

    .line 92
    :cond_1
    iget-byte v3, p0, Lcom/hz/battle/TargetSelectPanel;->areaType:B

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/hz/battle/TargetSelectPanel;->initCursor(IBZ)I

    goto :goto_0
.end method

.method public initCursor(IBZ)I
    .locals 8
    .param p1, "cursor"    # I
    .param p2, "area"    # B
    .param p3, "initOldCursor"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 335
    iget-object v6, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v6}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v1

    .line 336
    .local v1, "orderPlayer":Lcom/hz/actor/Player;
    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v4

    .line 344
    :cond_1
    const/4 v3, 0x0

    .line 345
    .local v3, "tarPos":[B
    iget-object v6, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    if-eqz v6, :cond_2

    .line 348
    const/16 v6, 0x23

    if-ne p2, v6, :cond_4

    .line 349
    invoke-static {v1}, Lcom/hz/battle/Battle;->getPetOwnerPos(Lcom/hz/actor/Player;)I

    move-result v2

    .line 350
    .local v2, "selectPos":I
    if-ltz v2, :cond_2

    .line 351
    new-array v3, v5, [B

    .end local v3    # "tarPos":[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v3, v6

    .line 360
    .end local v2    # "selectPos":I
    .restart local v3    # "tarPos":[B
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/hz/battle/TargetSelectPanel;->isCursorEnable([B)Z

    move-result v0

    .line 363
    .local v0, "isCursorEnable":Z
    if-eqz p3, :cond_3

    if-eqz v0, :cond_0

    .line 368
    :cond_3
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    invoke-virtual {v4, v0}, Lcom/hz/battle/BattlePanel;->setCursorEnable(Z)V

    .line 371
    iget-object v4, p0, Lcom/hz/battle/TargetSelectPanel;->parentBattlePanel:Lcom/hz/battle/BattlePanel;

    int-to-byte v6, p1

    invoke-virtual {v4, v6}, Lcom/hz/battle/BattlePanel;->setCursor(B)V

    .line 372
    invoke-virtual {p0, v3}, Lcom/hz/battle/TargetSelectPanel;->setTargetPos([B)V

    move v4, v5

    .line 374
    goto :goto_0

    .line 355
    .end local v0    # "isCursorEnable":Z
    :cond_4
    iget-object v6, p0, Lcom/hz/battle/TargetSelectPanel;->battle:Lcom/hz/battle/Battle;

    iget-byte v7, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v6, v7, p1, p2}, Lcom/hz/battle/Battle;->getSelectArea(IIB)[B

    move-result-object v3

    goto :goto_1
.end method

.method public isFinshSelect()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/hz/battle/TargetSelectPanel;->isFinshSelect:Z

    return v0
.end method

.method public logic()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public setFinshSelect(Z)V
    .locals 0
    .param p1, "isFinshSelect"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/hz/battle/TargetSelectPanel;->isFinshSelect:Z

    .line 47
    return-void
.end method

.method public setSelectItem(Lcom/hz/core/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/hz/battle/TargetSelectPanel;->selectItem:Lcom/hz/core/Item;

    .line 52
    return-void
.end method

.method public setSelectSkill(Lcom/hz/core/Skill;)V
    .locals 0
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hz/battle/TargetSelectPanel;->selectSkill:Lcom/hz/core/Skill;

    .line 57
    return-void
.end method

.method public setTargetPos([B)V
    .locals 0
    .param p1, "targetPos"    # [B

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hz/battle/TargetSelectPanel;->targetPos:[B

    .line 38
    return-void
.end method
