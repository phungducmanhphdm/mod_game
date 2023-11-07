.class public Lcom/hz/actor/Monster;
.super Lcom/hz/actor/Player;
.source "Monster.java"


# static fields
.field private static final LINE_SIGN:Ljava/lang/String; = "\n"


# instance fields
.field public atkType:B

.field public bornStatus:I

.field public escapeCond:I

.field public escapeRate:I

.field public message:Ljava/lang/String;

.field monsterAI:Lcom/hz/battle/MonsterAI;

.field public monstertype:B

.field public rewardExp:I

.field public rewardMoney:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/hz/actor/Player;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/actor/Monster;->setType(B)V

    .line 60
    return-void
.end method

.method public static fromBytes(Lcom/hz/actor/Monster;Lcom/hz/net/Message;)Lcom/hz/actor/Monster;
    .locals 3
    .param p0, "monster"    # Lcom/hz/actor/Monster;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const v2, 0xffff

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 79
    .local v0, "_id":I
    if-gez v0, :cond_0

    .line 80
    const/4 p0, 0x0

    .line 127
    .end local v0    # "_id":I
    .end local p0    # "monster":Lcom/hz/actor/Monster;
    :goto_0
    return-object p0

    .line 83
    .restart local v0    # "_id":I
    .restart local p0    # "monster":Lcom/hz/actor/Monster;
    :cond_0
    iput v0, p0, Lcom/hz/actor/Monster;->id:I

    .line 84
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/actor/Monster;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->icon1:I

    .line 86
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/actor/Monster;->level:B

    .line 87
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/actor/Monster;->monstertype:B

    .line 88
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->hpMax:I

    .line 89
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->mpMax:I

    .line 91
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->speed:I

    .line 92
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/actor/Monster;->atkType:B

    .line 93
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->atkMin:I

    .line 94
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->atkMax:I

    .line 95
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/hz/actor/Monster;->atk_time:B

    .line 97
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->dodge:I

    .line 98
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->atk_str:I

    .line 99
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->atk_agi:I

    .line 100
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->atk_magic:I

    .line 101
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->def_str:I

    .line 102
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->def_agi:I

    .line 103
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/hz/actor/Monster;->def_magic:I

    .line 104
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->hitrate:I

    .line 105
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->hitMagic:I

    .line 106
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/hz/actor/Monster;->critical:S

    .line 108
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->wil:I

    .line 109
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->tough:I

    .line 110
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->block:I

    .line 111
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->brkArmor:I

    .line 112
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->insight:I

    .line 113
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->def_field:I

    .line 114
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->back:I

    .line 115
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->magic_back:I

    .line 116
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->life_absorption:I

    .line 117
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->mana_absorption:I

    .line 118
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->magic_penetration:I

    .line 119
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p0, Lcom/hz/actor/Monster;->bornStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 120
    .end local v0    # "_id":I
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/actor/Monster;
    .locals 1
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 69
    new-instance v0, Lcom/hz/actor/Monster;

    invoke-direct {v0}, Lcom/hz/actor/Monster;-><init>()V

    .line 70
    .local v0, "monster":Lcom/hz/actor/Monster;
    invoke-static {v0, p0}, Lcom/hz/actor/Monster;->fromBytes(Lcom/hz/actor/Monster;Lcom/hz/net/Message;)Lcom/hz/actor/Monster;

    .line 71
    return-object v0
.end method


# virtual methods
.method public checkBattleMsg()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 36
    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/hz/core/MessageFrame;

    iget-object v1, p0, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x3

    .line 45
    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/hz/core/MessageFrame;-><init>(Ljava/lang/String;IIIZ)V

    .line 44
    iput-object v0, p0, Lcom/hz/actor/Monster;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    .line 46
    iget-object v0, p0, Lcom/hz/actor/Monster;->dialogAIFrame:Lcom/hz/core/MessageFrame;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/hz/core/MessageFrame;->setDrawCount(I)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public get(I)I
    .locals 4
    .param p1, "attribute"    # I

    .prologue
    const v2, 0x5f5e0ff

    const/4 v0, 0x0

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 305
    :pswitch_0
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->get(I)I

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    .line 243
    :pswitch_2
    invoke-virtual {p0}, Lcom/hz/actor/Monster;->getAttackType()B

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_3
    iget v0, p0, Lcom/hz/actor/Monster;->hpMax:I

    goto :goto_0

    .line 247
    :pswitch_4
    iget v0, p0, Lcom/hz/actor/Monster;->mpMax:I

    goto :goto_0

    .line 249
    :pswitch_5
    iget v0, p0, Lcom/hz/actor/Monster;->speed:I

    goto :goto_0

    .line 251
    :pswitch_6
    iget v0, p0, Lcom/hz/actor/Monster;->dodge:I

    goto :goto_0

    .line 253
    :pswitch_7
    iget v1, p0, Lcom/hz/actor/Monster;->atkMin:I

    invoke-static {v1, v0, v0, v2}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v0

    goto :goto_0

    .line 254
    :pswitch_8
    iget v1, p0, Lcom/hz/actor/Monster;->atkMax:I

    invoke-static {v1, v0, v0, v2}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v0

    goto :goto_0

    .line 261
    :pswitch_9
    iget-byte v1, p0, Lcom/hz/actor/Monster;->atk_time:B

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    const/16 v3, 0x63

    invoke-static {v1, v0, v2, v3}, Lcom/hz/common/Tool;->sumValue(IIII)I

    move-result v0

    goto :goto_0

    .line 264
    :pswitch_a
    iget v0, p0, Lcom/hz/actor/Monster;->atk_str:I

    goto :goto_0

    .line 266
    :pswitch_b
    iget v0, p0, Lcom/hz/actor/Monster;->atk_agi:I

    goto :goto_0

    .line 268
    :pswitch_c
    iget v0, p0, Lcom/hz/actor/Monster;->atk_magic:I

    goto :goto_0

    .line 270
    :pswitch_d
    iget v0, p0, Lcom/hz/actor/Monster;->def_str:I

    goto :goto_0

    .line 272
    :pswitch_e
    iget v0, p0, Lcom/hz/actor/Monster;->def_agi:I

    goto :goto_0

    .line 274
    :pswitch_f
    iget v0, p0, Lcom/hz/actor/Monster;->def_magic:I

    goto :goto_0

    .line 276
    :pswitch_10
    iget v0, p0, Lcom/hz/actor/Monster;->wil:I

    goto :goto_0

    .line 278
    :pswitch_11
    iget v0, p0, Lcom/hz/actor/Monster;->tough:I

    goto :goto_0

    .line 280
    :pswitch_12
    iget v0, p0, Lcom/hz/actor/Monster;->block:I

    goto :goto_0

    .line 282
    :pswitch_13
    iget v0, p0, Lcom/hz/actor/Monster;->brkArmor:I

    goto :goto_0

    .line 284
    :pswitch_14
    iget v0, p0, Lcom/hz/actor/Monster;->magic_penetration:I

    goto :goto_0

    .line 286
    :pswitch_15
    iget v0, p0, Lcom/hz/actor/Monster;->insight:I

    goto :goto_0

    .line 288
    :pswitch_16
    iget v0, p0, Lcom/hz/actor/Monster;->def_field:I

    goto :goto_0

    .line 290
    :pswitch_17
    iget v0, p0, Lcom/hz/actor/Monster;->back:I

    goto :goto_0

    .line 292
    :pswitch_18
    iget v0, p0, Lcom/hz/actor/Monster;->magic_back:I

    goto :goto_0

    .line 294
    :pswitch_19
    iget v0, p0, Lcom/hz/actor/Monster;->life_absorption:I

    goto :goto_0

    .line 296
    :pswitch_1a
    iget v0, p0, Lcom/hz/actor/Monster;->mana_absorption:I

    goto :goto_0

    .line 299
    :pswitch_1b
    const/16 v0, 0x1e

    goto :goto_0

    .line 302
    :pswitch_1c
    const/16 v0, 0x64

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_1
    .end packed-switch
.end method

.method public getAITargetPos()B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, -0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    iget-byte v0, v0, Lcom/hz/battle/MonsterAI;->targetPos:B

    goto :goto_0
.end method

.method public getAttackTarget(Lcom/hz/battle/Battle;)B
    .locals 2
    .param p1, "battle"    # Lcom/hz/battle/Battle;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, -0x1

    .line 157
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    iget-byte v0, v0, Lcom/hz/battle/MonsterAI;->targetPos:B

    invoke-virtual {p1, v0}, Lcom/hz/battle/Battle;->isValidPos(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v0

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    iget-byte v0, v0, Lcom/hz/battle/MonsterAI;->targetPos:B

    goto :goto_0
.end method

.method public getAttackType()B
    .locals 1

    .prologue
    .line 330
    iget-byte v0, p0, Lcom/hz/actor/Monster;->atkType:B

    return v0
.end method

.method public getAttakAnimePos()B
    .locals 2

    .prologue
    .line 340
    iget-byte v0, p0, Lcom/hz/actor/Monster;->atkType:B

    if-eqz v0, :cond_0

    .line 341
    iget-byte v0, p0, Lcom/hz/actor/Monster;->atkType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 343
    :cond_0
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClone()Lcom/hz/actor/Monster;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/hz/actor/Monster;

    invoke-direct {v0}, Lcom/hz/actor/Monster;-><init>()V

    .line 354
    .local v0, "monster":Lcom/hz/actor/Monster;
    invoke-virtual {p0, v0}, Lcom/hz/actor/Monster;->setMonsterData(Lcom/hz/actor/Monster;)V

    .line 355
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 411
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/hz/actor/Monster;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/hz/actor/Monster;->name:Ljava/lang/String;

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb1

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/hz/actor/Monster;->level:B

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_0
    iget v1, p0, Lcom/hz/actor/Monster;->icon1:I

    if-eqz v1, :cond_1

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->icon1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lo\u1ea1i qu\u00e1i: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/hz/actor/Monster;->monstertype:B

    invoke-static {v2}, Lcom/hz/core/Define;->getMonsterTypeString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    iget v1, p0, Lcom/hz/actor/Monster;->hpMax:I

    if-eqz v1, :cond_2

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HP T\u1ed1i \u0110a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->hpMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    :cond_2
    iget v1, p0, Lcom/hz/actor/Monster;->mpMax:I

    if-eqz v1, :cond_3

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MP T\u1ed1i \u0110a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->mpMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_3
    iget v1, p0, Lcom/hz/actor/Monster;->speed:I

    if-eqz v1, :cond_4

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T\u1ed1c \u0110\u1ed9 Ra \u0110\u00f2n: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->speed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lo\u1ea1i t\u1ea5n c\u00f4ng: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/hz/actor/Monster;->atkType:B

    invoke-static {v2}, Lcom/hz/core/Define;->getAtkTypeString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    iget v1, p0, Lcom/hz/actor/Monster;->atkMin:I

    if-eqz v1, :cond_5

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S\u00e1t th\u01b0\u01a1ng t\u1ed1i thi\u1ec3u: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->atkMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :cond_5
    iget v1, p0, Lcom/hz/actor/Monster;->atkMax:I

    if-eqz v1, :cond_6

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S\u00e1t th\u01b0\u01a1ng t\u1ed1i \u0111a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->atkMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_6
    iget v1, p0, Lcom/hz/actor/Monster;->dodge:I

    if-eqz v1, :cond_7

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "N\u00e9 Tr\u00e1nh: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->dodge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :cond_7
    iget v1, p0, Lcom/hz/actor/Monster;->atk_str:I

    if-eqz v1, :cond_8

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L\u1ef1c Ch\u00e9m: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->atk_str:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_8
    iget v1, p0, Lcom/hz/actor/Monster;->atk_agi:I

    if-eqz v1, :cond_9

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L\u1ef1c \u0110\u00e2m: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->atk_agi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    :cond_9
    iget v1, p0, Lcom/hz/actor/Monster;->atk_magic:I

    if-eqz v1, :cond_a

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ma C\u00f4ng: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->atk_magic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :cond_a
    iget v1, p0, Lcom/hz/actor/Monster;->def_str:I

    if-eqz v1, :cond_b

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ph\u00f2ng Ch\u00e9m: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->def_str:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    :cond_b
    iget v1, p0, Lcom/hz/actor/Monster;->def_agi:I

    if-eqz v1, :cond_c

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ph\u00f2ng \u0110\u00e2m: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->def_agi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_c
    iget v1, p0, Lcom/hz/actor/Monster;->def_magic:I

    if-eqz v1, :cond_d

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ma Th\u1ee7: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->def_magic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :cond_d
    iget v1, p0, Lcom/hz/actor/Monster;->hitrate:I

    if-eqz v1, :cond_e

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chu\u1ea9n V\u1eadt L\u00fd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->hitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :cond_e
    iget v1, p0, Lcom/hz/actor/Monster;->hitMagic:I

    if-eqz v1, :cond_f

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chu\u1ea9n Ma Ph\u00e1p: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->hitMagic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_f
    iget-short v1, p0, Lcom/hz/actor/Monster;->critical:S

    if-eqz v1, :cond_10

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ch\u00ed M\u1ea1ng: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/hz/actor/Monster;->critical:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_10
    iget v1, p0, Lcom/hz/actor/Monster;->wil:I

    if-eqz v1, :cond_11

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u00dd Ch\u00ed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->wil:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    :cond_11
    iget v1, p0, Lcom/hz/actor/Monster;->tough:I

    if-eqz v1, :cond_12

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C\u01b0\u1eddng Nh\u1eabn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->tough:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    :cond_12
    iget v1, p0, Lcom/hz/actor/Monster;->block:I

    if-eqz v1, :cond_13

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0110\u1ee1 \u0110\u00f2n: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->block:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    :cond_13
    iget v1, p0, Lcom/hz/actor/Monster;->brkArmor:I

    if-eqz v1, :cond_14

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ph\u00e1 Gi\u00e1p: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->brkArmor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    :cond_14
    iget v1, p0, Lcom/hz/actor/Monster;->insight:I

    if-eqz v1, :cond_15

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Th\u1ea5u R\u00f5: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->insight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_15
    iget v1, p0, Lcom/hz/actor/Monster;->def_field:I

    if-eqz v1, :cond_16

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L\u1ef1c ph\u00f2ng th\u1ee7: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->def_field:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    :cond_16
    iget v1, p0, Lcom/hz/actor/Monster;->back:I

    if-eqz v1, :cond_17

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ph\u1ea3n h\u1ed3i v\u1eadt l\u00fd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->back:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    :cond_17
    iget v1, p0, Lcom/hz/actor/Monster;->magic_back:I

    if-eqz v1, :cond_18

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ph\u1ea3n Ma: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->magic_back:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    :cond_18
    iget v1, p0, Lcom/hz/actor/Monster;->life_absorption:I

    if-eqz v1, :cond_19

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H\u00fat HP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->life_absorption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    :cond_19
    iget v1, p0, Lcom/hz/actor/Monster;->mana_absorption:I

    if-eqz v1, :cond_1a

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H\u00fat MP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->mana_absorption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_1a
    iget v1, p0, Lcom/hz/actor/Monster;->magic_penetration:I

    if-eqz v1, :cond_1b

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0110\u00e2m Ph\u00e1p Thu\u1eadt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->magic_penetration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    :cond_1b
    iget v1, p0, Lcom/hz/actor/Monster;->bornStatus:I

    if-eqz v1, :cond_1c

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "K\u0129 n\u0103ng mi\u1ec5n d\u1ecbch b\u1ea9m sinh: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->bornStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    :cond_1c
    iget v1, p0, Lcom/hz/actor/Monster;->escapeCond:I

    if-eqz v1, :cond_1d

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T\u00ecnh h\u00ecnh b\u1ecf ch\u1ea1y: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->escapeCond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    :cond_1d
    iget v1, p0, Lcom/hz/actor/Monster;->escapeRate:I

    if-eqz v1, :cond_1e

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B\u1ecf ch\u1ea1y th\u00e0nh c\u00f4ng: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->escapeRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :cond_1e
    iget v1, p0, Lcom/hz/actor/Monster;->rewardMoney:I

    if-eqz v1, :cond_1f

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R\u1edbt %U"

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/actor/Monster;->rewardMoney:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    :cond_1f
    iget v1, p0, Lcom/hz/actor/Monster;->rewardExp:I

    if-eqz v1, :cond_20

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exp r\u1edbt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/actor/Monster;->rewardExp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    :cond_20
    iget-object v1, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    if-eqz v1, :cond_21

    .line 519
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    iget-object v1, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    invoke-virtual {v1}, Lcom/hz/battle/MonsterAI;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSkillByAI(Lcom/hz/battle/Battle;Z)Lcom/hz/core/Skill;
    .locals 4
    .param p1, "battle"    # Lcom/hz/battle/Battle;
    .param p2, "isAutoSkill"    # Z

    .prologue
    const/4 v1, 0x0

    .line 166
    if-nez p1, :cond_1

    move-object v0, v1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 174
    goto :goto_0

    .line 178
    :cond_2
    if-eqz p2, :cond_3

    .line 179
    iget-object v1, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    invoke-virtual {v1, p1, p0}, Lcom/hz/battle/MonsterAI;->getAutoSkill(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;)Lcom/hz/core/Skill;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    invoke-virtual {v2, p1, p0}, Lcom/hz/battle/MonsterAI;->getBattleSkill(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;)Lcom/hz/core/Skill;

    move-result-object v0

    .line 186
    .local v0, "skill":Lcom/hz/core/Skill;
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/hz/core/Skill;->useMP:I

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/hz/actor/Monster;->get(I)I

    move-result v3

    if-le v2, v3, :cond_5

    :cond_4
    move-object v0, v1

    .line 187
    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {v0, p0}, Lcom/hz/core/Skill;->isEnoughHP(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 192
    goto :goto_0
.end method

.method public isBattleStatus(I)Z
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 213
    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/hz/actor/Monster;->isBornStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-static {p1, v0}, Lcom/hz/core/Define;->getBufferType(IZ)B

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isBornStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 230
    iget v0, p0, Lcom/hz/actor/Monster;->bornStatus:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveCanNotReliveBuffer()Z
    .locals 1

    .prologue
    .line 537
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/actor/Monster;->isBornStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/hz/actor/Player;->isHaveCanNotReliveBuffer()Z

    move-result v0

    goto :goto_0
.end method

.method public setAI(Lcom/hz/battle/MonsterAI;)V
    .locals 0
    .param p1, "_monsterAI"    # Lcom/hz/battle/MonsterAI;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    .line 55
    return-void
.end method

.method public setBattleStatus(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x1

    .line 200
    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/hz/actor/Monster;->isBornStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p1, v1}, Lcom/hz/core/Define;->getBufferType(IZ)B

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/hz/actor/Player;->setBattleStatus(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected setMonsterData(Lcom/hz/actor/Monster;)V
    .locals 1
    .param p1, "monster"    # Lcom/hz/actor/Monster;

    .prologue
    .line 359
    iget v0, p0, Lcom/hz/actor/Monster;->id:I

    iput v0, p1, Lcom/hz/actor/Monster;->id:I

    .line 360
    iget-object v0, p0, Lcom/hz/actor/Monster;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/hz/actor/Monster;->name:Ljava/lang/String;

    .line 361
    iget v0, p0, Lcom/hz/actor/Monster;->icon1:I

    iput v0, p1, Lcom/hz/actor/Monster;->icon1:I

    .line 362
    iget v0, p0, Lcom/hz/actor/Monster;->icon2:I

    iput v0, p1, Lcom/hz/actor/Monster;->icon2:I

    .line 363
    iget v0, p0, Lcom/hz/actor/Monster;->icon3:I

    iput v0, p1, Lcom/hz/actor/Monster;->icon3:I

    .line 364
    iget-byte v0, p0, Lcom/hz/actor/Monster;->level:B

    iput-byte v0, p1, Lcom/hz/actor/Monster;->level:B

    .line 365
    iget-byte v0, p0, Lcom/hz/actor/Monster;->monstertype:B

    iput-byte v0, p1, Lcom/hz/actor/Monster;->monstertype:B

    .line 366
    iget v0, p0, Lcom/hz/actor/Monster;->hpMax:I

    iput v0, p1, Lcom/hz/actor/Monster;->hpMax:I

    .line 367
    iget v0, p0, Lcom/hz/actor/Monster;->mpMax:I

    iput v0, p1, Lcom/hz/actor/Monster;->mpMax:I

    .line 368
    iget v0, p0, Lcom/hz/actor/Monster;->speed:I

    iput v0, p1, Lcom/hz/actor/Monster;->speed:I

    .line 369
    iget-byte v0, p0, Lcom/hz/actor/Monster;->atkType:B

    iput-byte v0, p1, Lcom/hz/actor/Monster;->atkType:B

    .line 370
    iget v0, p0, Lcom/hz/actor/Monster;->atkMin:I

    iput v0, p1, Lcom/hz/actor/Monster;->atkMin:I

    .line 371
    iget v0, p0, Lcom/hz/actor/Monster;->atkMax:I

    iput v0, p1, Lcom/hz/actor/Monster;->atkMax:I

    .line 372
    iget v0, p0, Lcom/hz/actor/Monster;->dodge:I

    iput v0, p1, Lcom/hz/actor/Monster;->dodge:I

    .line 373
    iget-byte v0, p0, Lcom/hz/actor/Monster;->atk_time:B

    iput-byte v0, p1, Lcom/hz/actor/Monster;->atk_time:B

    .line 374
    iget v0, p0, Lcom/hz/actor/Monster;->atk_str:I

    iput v0, p1, Lcom/hz/actor/Monster;->atk_str:I

    .line 375
    iget v0, p0, Lcom/hz/actor/Monster;->atk_agi:I

    iput v0, p1, Lcom/hz/actor/Monster;->atk_agi:I

    .line 376
    iget v0, p0, Lcom/hz/actor/Monster;->atk_magic:I

    iput v0, p1, Lcom/hz/actor/Monster;->atk_magic:I

    .line 377
    iget v0, p0, Lcom/hz/actor/Monster;->def_str:I

    iput v0, p1, Lcom/hz/actor/Monster;->def_str:I

    .line 378
    iget v0, p0, Lcom/hz/actor/Monster;->def_agi:I

    iput v0, p1, Lcom/hz/actor/Monster;->def_agi:I

    .line 379
    iget v0, p0, Lcom/hz/actor/Monster;->def_magic:I

    iput v0, p1, Lcom/hz/actor/Monster;->def_magic:I

    .line 380
    iget v0, p0, Lcom/hz/actor/Monster;->hitrate:I

    iput v0, p1, Lcom/hz/actor/Monster;->hitrate:I

    .line 381
    iget v0, p0, Lcom/hz/actor/Monster;->hitMagic:I

    iput v0, p1, Lcom/hz/actor/Monster;->hitMagic:I

    .line 382
    iget-short v0, p0, Lcom/hz/actor/Monster;->critical:S

    iput-short v0, p1, Lcom/hz/actor/Monster;->critical:S

    .line 383
    iget v0, p0, Lcom/hz/actor/Monster;->wil:I

    iput v0, p1, Lcom/hz/actor/Monster;->wil:I

    .line 384
    iget v0, p0, Lcom/hz/actor/Monster;->tough:I

    iput v0, p1, Lcom/hz/actor/Monster;->tough:I

    .line 385
    iget v0, p0, Lcom/hz/actor/Monster;->block:I

    iput v0, p1, Lcom/hz/actor/Monster;->block:I

    .line 386
    iget v0, p0, Lcom/hz/actor/Monster;->brkArmor:I

    iput v0, p1, Lcom/hz/actor/Monster;->brkArmor:I

    .line 387
    iget v0, p0, Lcom/hz/actor/Monster;->insight:I

    iput v0, p1, Lcom/hz/actor/Monster;->insight:I

    .line 388
    iget v0, p0, Lcom/hz/actor/Monster;->def_field:I

    iput v0, p1, Lcom/hz/actor/Monster;->def_field:I

    .line 389
    iget v0, p0, Lcom/hz/actor/Monster;->back:I

    iput v0, p1, Lcom/hz/actor/Monster;->back:I

    .line 390
    iget v0, p0, Lcom/hz/actor/Monster;->magic_back:I

    iput v0, p1, Lcom/hz/actor/Monster;->magic_back:I

    .line 391
    iget v0, p0, Lcom/hz/actor/Monster;->life_absorption:I

    iput v0, p1, Lcom/hz/actor/Monster;->life_absorption:I

    .line 392
    iget v0, p0, Lcom/hz/actor/Monster;->mana_absorption:I

    iput v0, p1, Lcom/hz/actor/Monster;->mana_absorption:I

    .line 393
    iget v0, p0, Lcom/hz/actor/Monster;->magic_penetration:I

    iput v0, p1, Lcom/hz/actor/Monster;->magic_penetration:I

    .line 394
    iget v0, p0, Lcom/hz/actor/Monster;->bornStatus:I

    iput v0, p1, Lcom/hz/actor/Monster;->bornStatus:I

    .line 395
    iget v0, p0, Lcom/hz/actor/Monster;->escapeCond:I

    iput v0, p1, Lcom/hz/actor/Monster;->escapeCond:I

    .line 396
    iget v0, p0, Lcom/hz/actor/Monster;->escapeRate:I

    iput v0, p1, Lcom/hz/actor/Monster;->escapeRate:I

    .line 397
    iget v0, p0, Lcom/hz/actor/Monster;->rewardMoney:I

    iput v0, p1, Lcom/hz/actor/Monster;->rewardMoney:I

    .line 398
    iget v0, p0, Lcom/hz/actor/Monster;->rewardExp:I

    iput v0, p1, Lcom/hz/actor/Monster;->rewardExp:I

    .line 401
    iget-object v0, p0, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    iput-object v0, p1, Lcom/hz/actor/Monster;->monsterAI:Lcom/hz/battle/MonsterAI;

    .line 402
    return-void
.end method
