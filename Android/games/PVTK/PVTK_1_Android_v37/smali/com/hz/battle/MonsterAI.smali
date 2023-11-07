.class public Lcom/hz/battle/MonsterAI;
.super Ljava/lang/Object;
.source "MonsterAI.java"


# static fields
.field public static final TARGET_ESCAPE:I = 0x64


# instance fields
.field public conType:[B

.field public conValue:[I

.field public id:S

.field public msg:[Ljava/lang/String;

.field public skill1:[Lcom/hz/core/Skill;

.field public skill2:[Lcom/hz/core/Skill;

.field public targetPos:B

.field public targetType:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    .line 28
    iput-object v0, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    .line 29
    iput-object v0, p0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    .line 31
    iput-object v0, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    .line 32
    iput-object v0, p0, Lcom/hz/battle/MonsterAI;->targetType:[B

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/battle/MonsterAI;->targetPos:B

    .line 20
    return-void
.end method

.method public static createMonsterAI(SLjava/util/Vector;Ljava/util/Vector;)Lcom/hz/battle/MonsterAI;
    .locals 9
    .param p0, "id"    # S
    .param p1, "dataVector"    # Ljava/util/Vector;
    .param p2, "skills"    # Ljava/util/Vector;

    .prologue
    .line 639
    new-instance v0, Lcom/hz/battle/MonsterAI;

    invoke-direct {v0}, Lcom/hz/battle/MonsterAI;-><init>()V

    .line 640
    .local v0, "ai":Lcom/hz/battle/MonsterAI;
    iput-short p0, v0, Lcom/hz/battle/MonsterAI;->id:S

    .line 641
    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    .line 644
    .local v5, "size":I
    new-array v6, v5, [B

    iput-object v6, v0, Lcom/hz/battle/MonsterAI;->conType:[B

    .line 645
    new-array v6, v5, [I

    iput-object v6, v0, Lcom/hz/battle/MonsterAI;->conValue:[I

    .line 646
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    .line 647
    new-array v6, v5, [Lcom/hz/core/Skill;

    iput-object v6, v0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    .line 648
    new-array v6, v5, [Lcom/hz/core/Skill;

    iput-object v6, v0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    .line 649
    new-array v6, v5, [B

    iput-object v6, v0, Lcom/hz/battle/MonsterAI;->targetType:[B

    .line 651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 667
    .end local v2    # "i":I
    .end local v5    # "size":I
    :cond_0
    return-object v0

    .line 652
    .restart local v2    # "i":I
    .restart local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 653
    .local v1, "data":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 651
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_2
    const/4 v3, 0x2

    .line 659
    .local v3, "j":I
    iget-object v6, v0, Lcom/hz/battle/MonsterAI;->conType:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-object v7, v1, v3

    invoke-static {v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 660
    iget-object v6, v0, Lcom/hz/battle/MonsterAI;->conValue:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v7, v1, v4

    invoke-static {v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    .line 661
    iget-object v6, v0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-object v7, v1, v3

    aput-object v7, v6, v2

    .line 662
    iget-object v6, v0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v7, v1, v4

    invoke-static {v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-object v8, v1, v3

    invoke-static {v8}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {p2, v7, v8}, Lcom/hz/main/GameWorld;->getSkillById(Ljava/util/Vector;II)Lcom/hz/core/Skill;

    move-result-object v7

    aput-object v7, v6, v2

    .line 663
    iget-object v6, v0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v7, v1, v4

    invoke-static {v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-object v8, v1, v3

    invoke-static {v8}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {p2, v7, v8}, Lcom/hz/main/GameWorld;->getSkillById(Ljava/util/Vector;II)Lcom/hz/core/Skill;

    move-result-object v7

    aput-object v7, v6, v2

    .line 664
    iget-object v6, v0, Lcom/hz/battle/MonsterAI;->targetType:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v7, v1, v4

    invoke-static {v7}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    goto :goto_1
.end method

.method public static fromBytes(Lcom/hz/net/Message;Ljava/util/Vector;)Lcom/hz/battle/MonsterAI;
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "skills"    # Ljava/util/Vector;

    .prologue
    .line 606
    new-instance v0, Lcom/hz/battle/MonsterAI;

    invoke-direct {v0}, Lcom/hz/battle/MonsterAI;-><init>()V

    .line 607
    .local v0, "ai":Lcom/hz/battle/MonsterAI;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    iput-short v3, v0, Lcom/hz/battle/MonsterAI;->id:S

    .line 608
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 609
    .local v2, "size":B
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/hz/battle/MonsterAI;->conType:[B

    .line 610
    new-array v3, v2, [I

    iput-object v3, v0, Lcom/hz/battle/MonsterAI;->conValue:[I

    .line 611
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    .line 612
    new-array v3, v2, [Lcom/hz/core/Skill;

    iput-object v3, v0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    .line 613
    new-array v3, v2, [Lcom/hz/core/Skill;

    iput-object v3, v0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    .line 614
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/hz/battle/MonsterAI;->targetType:[B

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 627
    return-object v0

    .line 618
    :cond_0
    iget-object v3, v0, Lcom/hz/battle/MonsterAI;->conType:[B

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    aput-byte v4, v3, v1

    .line 619
    iget-object v3, v0, Lcom/hz/battle/MonsterAI;->conValue:[I

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    aput v4, v3, v1

    .line 620
    iget-object v3, v0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 622
    iget-object v3, v0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/hz/main/GameWorld;->getSkillById(Ljava/util/Vector;II)Lcom/hz/core/Skill;

    move-result-object v4

    aput-object v4, v3, v1

    .line 623
    iget-object v3, v0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/hz/main/GameWorld;->getSkillById(Ljava/util/Vector;II)Lcom/hz/core/Skill;

    move-result-object v4

    aput-object v4, v3, v1

    .line 624
    iget-object v3, v0, Lcom/hz/battle/MonsterAI;->targetType:[B

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    aput-byte v4, v3, v1

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final getConSkill(Lcom/hz/battle/Battle;I)Lcom/hz/core/Skill;
    .locals 4
    .param p1, "battle"    # Lcom/hz/battle/Battle;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    aget-object v0, v3, p2

    .line 210
    .local v0, "_skill1":Lcom/hz/core/Skill;
    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    aget-object v1, v3, p2

    .line 213
    .local v1, "_skill2":Lcom/hz/core/Skill;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 215
    iget-object v3, p1, Lcom/hz/battle/Battle;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 216
    .local v2, "value":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 220
    goto :goto_0

    .line 224
    .end local v2    # "value":I
    :cond_2
    if-nez v0, :cond_0

    move-object v0, v1

    .line 228
    goto :goto_0
.end method

.method private isValidConAI(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;I)Z
    .locals 8
    .param p1, "battle"    # Lcom/hz/battle/Battle;
    .param p2, "monster"    # Lcom/hz/actor/Monster;
    .param p3, "index"    # I

    .prologue
    const/16 v7, 0x1d

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "startPos":I
    invoke-virtual {p1}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v0

    .line 141
    .local v0, "endPos":I
    const/4 v1, 0x0

    .line 142
    .local v1, "getValue":I
    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    aget-byte v5, v5, p3

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 190
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 148
    :pswitch_1
    invoke-virtual {p2, v6}, Lcom/hz/actor/Monster;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p2, v7}, Lcom/hz/actor/Monster;->get(I)I

    move-result v6

    div-int v1, v5, v6

    .line 149
    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v5, v5, p3

    if-lt v1, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p2, v6}, Lcom/hz/actor/Monster;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p2, v7}, Lcom/hz/actor/Monster;->get(I)I

    move-result v6

    div-int v1, v5, v6

    .line 153
    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v5, v5, p3

    if-gt v1, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 156
    :pswitch_3
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Lcom/hz/battle/Battle;->randInt(I)I

    move-result v5

    iget-object v6, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v6, v6, p3

    if-lt v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 159
    :pswitch_4
    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v5, v5, p3

    iget-byte v6, p1, Lcom/hz/battle/Battle;->round:B

    if-le v5, v6, :cond_0

    move v3, v4

    .line 162
    goto :goto_0

    .line 165
    :pswitch_5
    iget-byte v5, p2, Lcom/hz/actor/Monster;->position:B

    invoke-static {v5}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    const/16 v2, 0x14

    .line 167
    const/16 v0, 0x22

    .line 170
    :cond_1
    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v5, v5, p3

    invoke-virtual {p1, v2, v0, v4}, Lcom/hz/battle/Battle;->getActivePlayerNum(IIZ)B

    move-result v6

    if-le v5, v6, :cond_0

    move v3, v4

    .line 173
    goto :goto_0

    .line 176
    :pswitch_6
    iget-byte v5, p2, Lcom/hz/actor/Monster;->position:B

    invoke-static {v5}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    const/16 v2, 0x14

    .line 178
    const/16 v0, 0x22

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v5, v5, p3

    invoke-virtual {p1, v2, v0, v4}, Lcom/hz/battle/Battle;->getActivePlayerNum(IIZ)B

    move-result v6

    if-le v5, v6, :cond_0

    move v3, v4

    .line 184
    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private selectAttackTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;I)B
    .locals 5
    .param p1, "battle"    # Lcom/hz/battle/Battle;
    .param p2, "monster"    # Lcom/hz/actor/Monster;
    .param p3, "index"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 240
    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    if-eqz p2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->targetType:[B

    invoke-static {p3, v2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->targetType:[B

    aget-byte v0, v2, p3

    .line 260
    .local v0, "target":B
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 266
    :pswitch_0
    invoke-static {p1, p2, v0, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 263
    :pswitch_1
    const/16 v1, 0x64

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-static {p1, p2, v0, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-static {p1, p2, v0, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 275
    :pswitch_4
    invoke-static {p1, p2, v0, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 278
    :pswitch_5
    invoke-static {p1, p2, v0, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 281
    :pswitch_6
    invoke-static {p1, p2, v0, v3}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 284
    :pswitch_7
    invoke-static {p1, p2, v0, v4}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 287
    :pswitch_8
    invoke-static {p1, p2, v0, v4}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 290
    :pswitch_9
    invoke-static {p1, p2, v0, v4}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 293
    :pswitch_a
    invoke-static {p1, p2, v0, v4}, Lcom/hz/battle/MonsterAI;->selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B

    move-result v1

    goto :goto_0

    .line 296
    :pswitch_b
    invoke-static {p1, p2, v3}, Lcom/hz/battle/MonsterAI;->selectRandTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Z)B

    move-result v1

    goto :goto_0

    .line 299
    :pswitch_c
    invoke-static {p1, p2, v4}, Lcom/hz/battle/MonsterAI;->selectRandTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Z)B

    move-result v1

    goto :goto_0

    .line 302
    :pswitch_d
    iget-byte v1, p2, Lcom/hz/actor/Monster;->position:B

    goto :goto_0

    .line 305
    :pswitch_e
    invoke-static {p1, p2}, Lcom/hz/battle/MonsterAI;->selectRandDeadFriend(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B

    move-result v1

    goto :goto_0

    .line 308
    :pswitch_f
    invoke-static {p1, p2}, Lcom/hz/battle/MonsterAI;->selectRandActivePlayer(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B

    move-result v1

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .end packed-switch
.end method

.method public static selectRandActivePlayer(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B
    .locals 10
    .param p0, "battle"    # Lcom/hz/battle/Battle;
    .param p1, "battlePlayer"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v9, 0x0

    .line 323
    const/4 v5, 0x0

    .line 324
    .local v5, "startPos":I
    const/16 v1, 0x22

    .line 326
    .local v1, "endPos":I
    const/16 v7, 0x22

    new-array v6, v7, [B

    .line 327
    .local v6, "targetPos":[B
    const/4 v0, 0x0

    .line 329
    .local v0, "count":I
    move v3, v5

    .local v3, "pos":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 350
    if-gtz v0, :cond_3

    .line 351
    int-to-byte v7, v5

    .line 369
    :goto_1
    return v7

    .line 331
    :cond_0
    invoke-virtual {p0, v3}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    .line 332
    .local v2, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0, v2}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 329
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_2
    iget-byte v7, v2, Lcom/hz/actor/Player;->position:B

    iget-byte v8, p1, Lcom/hz/actor/Player;->position:B

    if-eq v7, v8, :cond_1

    .line 341
    invoke-static {v0, v6}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 345
    iget-byte v7, v2, Lcom/hz/actor/Player;->position:B

    aput-byte v7, v6, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 355
    .end local v2    # "player":Lcom/hz/actor/Player;
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 356
    aget-byte v7, v6, v9

    goto :goto_1

    .line 359
    :cond_4
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v9, v7}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v4

    .line 362
    .local v4, "randPos":I
    invoke-static {v4, v6}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 366
    int-to-byte v7, v5

    goto :goto_1

    .line 369
    :cond_5
    aget-byte v7, v6, v4

    goto :goto_1
.end method

.method public static selectRandDeadFriend(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;)B
    .locals 10
    .param p0, "battle"    # Lcom/hz/battle/Battle;
    .param p1, "battlePlayer"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 381
    const/4 v5, 0x0

    .line 382
    .local v5, "startPos":I
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v1

    .line 383
    .local v1, "endPos":I
    iget-byte v7, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 384
    const/16 v5, 0x14

    .line 385
    const/16 v1, 0x22

    .line 388
    :cond_0
    const/16 v7, 0x22

    new-array v6, v7, [B

    .line 389
    .local v6, "targetPos":[B
    const/4 v0, 0x0

    .line 391
    .local v0, "count":I
    move v3, v5

    .local v3, "pos":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 416
    if-gtz v0, :cond_4

    .line 417
    int-to-byte v7, v5

    .line 435
    :goto_1
    return v7

    .line 393
    :cond_1
    invoke-virtual {p0, v3}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    .line 394
    .local v2, "player":Lcom/hz/actor/Player;
    if-nez v2, :cond_3

    .line 391
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {v2, v9}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 403
    invoke-virtual {v2}, Lcom/hz/actor/Player;->isDead()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 407
    invoke-static {v0, v6}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 411
    iget-byte v7, v2, Lcom/hz/actor/Player;->position:B

    aput-byte v7, v6, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 421
    .end local v2    # "player":Lcom/hz/actor/Player;
    :cond_4
    if-ne v0, v9, :cond_5

    .line 422
    aget-byte v7, v6, v8

    goto :goto_1

    .line 425
    :cond_5
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v8, v7}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v4

    .line 428
    .local v4, "randPos":I
    invoke-static {v4, v6}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 432
    int-to-byte v7, v5

    goto :goto_1

    .line 435
    :cond_6
    aget-byte v7, v6, v4

    goto :goto_1
.end method

.method public static selectRandTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;Z)B
    .locals 9
    .param p0, "battle"    # Lcom/hz/battle/Battle;
    .param p1, "battlePlayer"    # Lcom/hz/actor/Player;
    .param p2, "isEnemy"    # Z

    .prologue
    const/4 v8, 0x0

    .line 537
    const/4 v5, 0x0

    .line 538
    .local v5, "startPos":I
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v1

    .line 540
    .local v1, "endPos":I
    if-eqz p2, :cond_1

    .line 542
    iget-byte v7, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    const/16 v5, 0x14

    .line 544
    const/16 v1, 0x22

    .line 555
    :cond_0
    :goto_0
    const/16 v7, 0x22

    new-array v6, v7, [B

    .line 556
    .local v6, "targetPos":[B
    const/4 v0, 0x0

    .line 558
    .local v0, "count":I
    move v3, v5

    .local v3, "pos":I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 574
    if-gtz v0, :cond_5

    .line 575
    int-to-byte v7, v5

    .line 593
    :goto_2
    return v7

    .line 549
    .end local v0    # "count":I
    .end local v3    # "pos":I
    .end local v6    # "targetPos":[B
    :cond_1
    iget-byte v7, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 550
    const/16 v5, 0x14

    .line 551
    const/16 v1, 0x22

    goto :goto_0

    .line 560
    .restart local v0    # "count":I
    .restart local v3    # "pos":I
    .restart local v6    # "targetPos":[B
    :cond_2
    invoke-virtual {p0, v3}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    .line 561
    .local v2, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0, v2}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 558
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 565
    :cond_4
    invoke-static {v0, v6}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 569
    iget-byte v7, v2, Lcom/hz/actor/Player;->position:B

    aput-byte v7, v6, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 579
    .end local v2    # "player":Lcom/hz/actor/Player;
    :cond_5
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    .line 580
    aget-byte v7, v6, v8

    goto :goto_2

    .line 583
    :cond_6
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v8, v7}, Lcom/hz/battle/Battle;->randRange(II)I

    move-result v4

    .line 586
    .local v4, "randPos":I
    invoke-static {v4, v6}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 590
    int-to-byte v7, v5

    goto :goto_2

    .line 593
    :cond_7
    aget-byte v7, v6, v4

    goto :goto_2
.end method

.method public static selectValueTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Player;IZ)B
    .locals 9
    .param p0, "battle"    # Lcom/hz/battle/Battle;
    .param p1, "battlePlayer"    # Lcom/hz/actor/Player;
    .param p2, "type"    # I
    .param p3, "isEnemy"    # Z

    .prologue
    const/4 v8, 0x2

    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, "startPos":I
    invoke-virtual {p0}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v0

    .line 450
    .local v0, "endPos":I
    if-eqz p3, :cond_1

    .line 452
    iget-byte v7, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 453
    const/16 v3, 0x14

    .line 454
    const/16 v0, 0x22

    .line 465
    :cond_0
    :goto_0
    const/4 v6, -0x1

    .line 466
    .local v6, "value":I
    const/4 v4, -0x1

    .line 468
    .local v4, "target":B
    move v1, v3

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 524
    return v4

    .line 459
    .end local v1    # "index":I
    .end local v4    # "target":B
    .end local v6    # "value":I
    :cond_1
    iget-byte v7, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v7}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 460
    const/16 v3, 0x14

    .line 461
    const/16 v0, 0x22

    goto :goto_0

    .line 470
    .restart local v1    # "index":I
    .restart local v4    # "target":B
    .restart local v6    # "value":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v2

    .line 471
    .local v2, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0, v2}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 468
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    :cond_4
    const/4 v5, 0x0

    .line 476
    .local v5, "tmpValue":I
    packed-switch p2, :pswitch_data_0

    .line 498
    :goto_3
    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 499
    int-to-byte v4, v1

    .line 500
    move v6, v5

    .line 504
    :cond_5
    const/4 v7, 0x1

    if-eq p2, v7, :cond_6

    const/4 v7, 0x3

    if-eq p2, v7, :cond_6

    .line 505
    const/4 v7, 0x5

    if-eq p2, v7, :cond_6

    const/4 v7, 0x7

    if-eq p2, v7, :cond_6

    .line 506
    const/16 v7, 0x9

    if-ne p2, v7, :cond_7

    .line 507
    :cond_6
    if-ge v5, v6, :cond_7

    .line 508
    int-to-byte v4, v1

    .line 509
    move v6, v5

    .line 514
    :cond_7
    if-eq p2, v8, :cond_8

    const/4 v7, 0x4

    if-eq p2, v7, :cond_8

    .line 515
    const/4 v7, 0x6

    if-eq p2, v7, :cond_8

    const/16 v7, 0x8

    if-eq p2, v7, :cond_8

    .line 516
    const/16 v7, 0xa

    if-ne p2, v7, :cond_3

    .line 517
    :cond_8
    if-le v5, v6, :cond_3

    .line 518
    int-to-byte v4, v1

    .line 519
    move v6, v5

    goto :goto_2

    .line 479
    :pswitch_0
    const/16 v7, 0x3f

    invoke-virtual {v2, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 480
    goto :goto_3

    .line 486
    :pswitch_1
    invoke-virtual {v2, v8}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    .line 487
    goto :goto_3

    .line 493
    :pswitch_2
    const/16 v7, 0x1f

    invoke-virtual {v2, v7}, Lcom/hz/actor/Player;->get(I)I

    move-result v5

    goto :goto_3

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAutoSkill(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;)Lcom/hz/core/Skill;
    .locals 6
    .param p1, "battle"    # Lcom/hz/battle/Battle;
    .param p2, "monster"    # Lcom/hz/actor/Monster;

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    array-length v4, v4

    if-gtz v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 128
    :goto_0
    return-object v2

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    array-length v1, v4

    .line 97
    .local v1, "size":I
    iput-object v3, p2, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-lt v0, v1, :cond_2

    move-object v2, v3

    .line 128
    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/hz/battle/MonsterAI;->isValidConAI(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 98
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/hz/battle/MonsterAI;->getConSkill(Lcom/hz/battle/Battle;I)Lcom/hz/core/Skill;

    move-result-object v2

    .line 105
    .local v2, "skill":Lcom/hz/core/Skill;
    if-eqz v2, :cond_3

    .line 110
    iget-byte v4, v2, Lcom/hz/core/Skill;->type:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 115
    iget v4, v2, Lcom/hz/core/Skill;->useMP:I

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/hz/actor/Monster;->get(I)I

    move-result v5

    if-gt v4, v5, :cond_3

    .line 120
    invoke-virtual {v2, p2}, Lcom/hz/core/Skill;->isEnoughHP(Lcom/hz/actor/Player;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p2, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleSkill(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;)Lcom/hz/core/Skill;
    .locals 6
    .param p1, "battle"    # Lcom/hz/battle/Battle;
    .param p2, "monster"    # Lcom/hz/actor/Monster;

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    array-length v4, v4

    if-gtz v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 82
    :goto_0
    return-object v2

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    array-length v1, v4

    .line 56
    .local v1, "size":I
    const/4 v4, -0x1

    iput-byte v4, p0, Lcom/hz/battle/MonsterAI;->targetPos:B

    .line 57
    iput-object v3, p2, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-lt v0, v1, :cond_2

    move-object v2, v3

    .line 82
    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/hz/battle/MonsterAI;->isValidConAI(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/hz/battle/MonsterAI;->getConSkill(Lcom/hz/battle/Battle;I)Lcom/hz/core/Skill;

    move-result-object v2

    .line 71
    .local v2, "skill":Lcom/hz/core/Skill;
    if-eqz v2, :cond_5

    iget-byte v4, v2, Lcom/hz/core/Skill;->type:B

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 76
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lcom/hz/battle/MonsterAI;->selectAttackTarget(Lcom/hz/battle/Battle;Lcom/hz/actor/Monster;I)B

    move-result v3

    iput-byte v3, p0, Lcom/hz/battle/MonsterAI;->targetPos:B

    .line 77
    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p2, Lcom/hz/actor/Monster;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 671
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-short v2, p0, Lcom/hz/battle/MonsterAI;->id:S

    if-eqz v2, :cond_0

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Id qu\u00e1i: %U"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-short v5, p0, Lcom/hz/battle/MonsterAI;->id:S

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 676
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0110i\u1ec1u ki\u1ec7n: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hz/battle/MonsterAI;->conType:[B

    aget-byte v4, v4, v0

    invoke-static {v4}, Lcom/hz/core/Define;->getMonsterAIConditionString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hz/battle/MonsterAI;->conValue:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 677
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0110\u1ed1i tho\u1ea1i: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->msg:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "K\u0129 n\u0103ng %U: Lv %U k\u0129 n\u0103ng %U"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    aget-object v6, v6, v0

    iget-byte v6, v6, Lcom/hz/core/Skill;->level:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hz/battle/MonsterAI;->skill1:[Lcom/hz/core/Skill;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/hz/core/Skill;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    :cond_3
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "K\u0129 n\u0103ng %U: Lv %U k\u0129 n\u0103ng %U"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "2"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    aget-object v6, v6, v0

    iget-byte v6, v6, Lcom/hz/core/Skill;->level:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hz/battle/MonsterAI;->skill2:[Lcom/hz/core/Skill;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/hz/core/Skill;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    :cond_4
    iget-object v2, p0, Lcom/hz/battle/MonsterAI;->targetType:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_5

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "M\u1ee5c ti\u00eau: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hz/battle/MonsterAI;->targetType:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/hz/core/Define;->getMonsterAIString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    :cond_5
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
