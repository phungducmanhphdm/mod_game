.class public Lcom/hz/core/MonsterGroup;
.super Ljava/lang/Object;
.source "MonsterGroup.java"


# static fields
.field public static final FLAG_HAVE_NPC:B = 0x2t

.field public static final FLAG_MONSTER_20:B = 0x1t

.field public static final MONSTERGROUP_MONSTERS:I = 0x14

.field public static final MONSTERGROUP_NPCS:I = 0x4


# instance fields
.field public flag:B

.field public groupId:I

.field public monsters:[S

.field public nextBattleGroupID:I

.field public npcs:[S

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/core/MonsterGroup;->flag:B

    .line 32
    const/16 v0, 0x14

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    .line 37
    return-void
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/MonsterGroup;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    const v4, 0xffff

    .line 41
    new-instance v2, Lcom/hz/core/MonsterGroup;

    invoke-direct {v2}, Lcom/hz/core/MonsterGroup;-><init>()V

    .line 44
    .local v2, "monstergroup":Lcom/hz/core/MonsterGroup;
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    and-int/2addr v3, v4

    iput v3, v2, Lcom/hz/core/MonsterGroup;->groupId:I

    .line 45
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/MonsterGroup;->type:B

    .line 46
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    and-int/2addr v3, v4

    iput v3, v2, Lcom/hz/core/MonsterGroup;->nextBattleGroupID:I

    .line 47
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/MonsterGroup;->flag:B

    .line 49
    const/16 v1, 0xa

    .line 50
    .local v1, "monsterLength":I
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hz/core/MonsterGroup;->isFlag(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const/16 v1, 0x14

    .line 53
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 57
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/hz/core/MonsterGroup;->isFlag(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    .line 68
    .end local v0    # "j":I
    .end local v1    # "monsterLength":I
    :cond_1
    :goto_2
    return-object v2

    .line 54
    .restart local v0    # "j":I
    .restart local v1    # "monsterLength":I
    :cond_2
    iget-object v3, v2, Lcom/hz/core/MonsterGroup;->monsters:[S

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    aput-short v4, v3, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_3
    iget-object v3, v2, Lcom/hz/core/MonsterGroup;->npcs:[S

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    aput-short v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "j":I
    .end local v1    # "monsterLength":I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private getGroupNPCList()[Lcom/hz/actor/Player;
    .locals 5

    .prologue
    .line 168
    iget-object v4, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    if-nez v4, :cond_1

    .line 169
    const/4 v3, 0x0

    .line 194
    :cond_0
    return-object v3

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    array-length v4, v4

    new-array v3, v4, [Lcom/hz/actor/Player;

    .line 176
    .local v3, "npcMonsterList":[Lcom/hz/actor/Player;
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    iget-object v4, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    aget-short v2, v4, v0

    .line 179
    .local v2, "npcMonsterId":S
    if-gtz v2, :cond_3

    .line 176
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {v2}, Lcom/hz/main/GameWorld;->getMonster(I)Lcom/hz/actor/Monster;

    move-result-object v1

    .line 184
    .local v1, "npcMonster":Lcom/hz/actor/Monster;
    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v1}, Lcom/hz/actor/Monster;->getClone()Lcom/hz/actor/Monster;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/hz/actor/Monster;->resumeHPMP()V

    .line 191
    aput-object v1, v3, v0

    goto :goto_1
.end method

.method public static getLocalBattlePlayerList(Lcom/hz/actor/Player;Lcom/hz/core/MonsterGroup;)[Lcom/hz/actor/Player;
    .locals 18
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;
    .param p1, "group"    # Lcom/hz/core/MonsterGroup;

    .prologue
    .line 224
    if-nez p0, :cond_1

    .line 228
    const/4 v15, 0x0

    .line 362
    :cond_0
    :goto_0
    return-object v15

    .line 230
    :cond_1
    if-nez p1, :cond_2

    .line 234
    const/4 v15, 0x0

    goto :goto_0

    .line 237
    :cond_2
    const/16 v5, 0x19

    .line 238
    .local v5, "centerPos":I
    add-int/lit8 v4, v5, -0x1

    .line 240
    .local v4, "centerPetPos":I
    const/16 v17, 0x22

    move/from16 v0, v17

    new-array v15, v0, [Lcom/hz/actor/Player;

    .line 243
    .local v15, "playerList":[Lcom/hz/actor/Player;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/hz/core/MonsterGroup;->setGroupMonsterDataToBattle([Lcom/hz/actor/Player;)V

    .line 246
    int-to-byte v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/hz/actor/Player;->position:B

    .line 247
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    move/from16 v17, v0

    aput-object p0, v15, v17

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v11

    check-cast v11, Lcom/hz/actor/MyPet;

    .line 250
    .local v11, "myPet":Lcom/hz/actor/MyPet;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/hz/actor/MyPet;->isAlive()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 251
    int-to-byte v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v11, Lcom/hz/actor/MyPet;->position:B

    .line 252
    iget-byte v0, v11, Lcom/hz/actor/MyPet;->position:B

    move/from16 v17, v0

    aput-object v11, v15, v17

    .line 256
    :cond_3
    add-int/lit8 v16, v5, -0x2

    .line 257
    .local v16, "topOffsetPos":I
    add-int/lit8 v3, v5, 0x2

    .line 263
    .local v3, "bottomOffsetPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getMerList()[Lcom/hz/actor/Model;

    move-result-object v10

    .line 264
    .local v10, "merList":[Lcom/hz/actor/Model;
    if-eqz v10, :cond_4

    .line 266
    const/4 v2, 0x0

    .line 268
    .local v2, "addOffset":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_6

    .line 322
    .end local v2    # "addOffset":I
    .end local v7    # "i":I
    :cond_4
    invoke-direct/range {p1 .. p1}, Lcom/hz/core/MonsterGroup;->getGroupNPCList()[Lcom/hz/actor/Player;

    move-result-object v12

    .line 323
    .local v12, "npcMonsterList":[Lcom/hz/actor/Player;
    if-eqz v12, :cond_0

    .line 325
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 326
    aget-object v13, v12, v7

    check-cast v13, Lcom/hz/actor/Monster;

    .line 327
    .local v13, "p":Lcom/hz/actor/Monster;
    if-nez v13, :cond_a

    .line 325
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 269
    .end local v12    # "npcMonsterList":[Lcom/hz/actor/Player;
    .end local v13    # "p":Lcom/hz/actor/Monster;
    .restart local v2    # "addOffset":I
    :cond_6
    aget-object v13, v10, v7

    check-cast v13, Lcom/hz/actor/Mercenary;

    .line 270
    .local v13, "p":Lcom/hz/actor/Mercenary;
    if-nez v13, :cond_8

    .line 268
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 278
    :cond_8
    and-int/lit8 v17, v2, 0x1

    if-nez v17, :cond_9

    .line 279
    move/from16 v6, v16

    .line 280
    .local v6, "getPos":I
    add-int/lit8 v16, v16, -0x2

    .line 287
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 289
    if-ltz v6, :cond_7

    const/16 v17, 0x22

    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    .line 297
    invoke-static {v6}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v17

    if-nez v17, :cond_7

    .line 305
    invoke-virtual {v13}, Lcom/hz/actor/Mercenary;->getClone()Lcom/hz/actor/Monster;

    move-result-object v8

    check-cast v8, Lcom/hz/actor/Mercenary;

    .line 306
    .local v8, "mainMer":Lcom/hz/actor/Mercenary;
    iput-object v13, v8, Lcom/hz/actor/Mercenary;->worldMer:Lcom/hz/actor/Mercenary;

    .line 307
    int-to-byte v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v8, Lcom/hz/actor/Mercenary;->position:B

    .line 308
    iget-byte v0, v8, Lcom/hz/actor/Mercenary;->position:B

    move/from16 v17, v0

    aput-object v8, v15, v17

    .line 311
    invoke-virtual {v13}, Lcom/hz/actor/Mercenary;->getPet()Lcom/hz/actor/Model;

    move-result-object v14

    check-cast v14, Lcom/hz/actor/Mercenary;

    .line 312
    .local v14, "p2":Lcom/hz/actor/Mercenary;
    if-eqz v14, :cond_7

    .line 313
    invoke-virtual {v14}, Lcom/hz/actor/Mercenary;->getClone()Lcom/hz/actor/Monster;

    move-result-object v9

    check-cast v9, Lcom/hz/actor/Mercenary;

    .line 314
    .local v9, "mer2":Lcom/hz/actor/Mercenary;
    iput-object v14, v9, Lcom/hz/actor/Mercenary;->worldMer:Lcom/hz/actor/Mercenary;

    .line 315
    add-int/lit8 v17, v6, -0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v9, Lcom/hz/actor/Mercenary;->position:B

    .line 316
    iget-byte v0, v9, Lcom/hz/actor/Mercenary;->position:B

    move/from16 v17, v0

    aput-object v9, v15, v17

    goto :goto_4

    .line 284
    .end local v6    # "getPos":I
    .end local v8    # "mainMer":Lcom/hz/actor/Mercenary;
    .end local v9    # "mer2":Lcom/hz/actor/Mercenary;
    .end local v14    # "p2":Lcom/hz/actor/Mercenary;
    :cond_9
    move v6, v3

    .line 285
    .restart local v6    # "getPos":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 332
    .end local v2    # "addOffset":I
    .end local v6    # "getPos":I
    .restart local v12    # "npcMonsterList":[Lcom/hz/actor/Player;
    .local v13, "p":Lcom/hz/actor/Monster;
    :cond_a
    move/from16 v6, v16

    .line 333
    .restart local v6    # "getPos":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v7, v0, :cond_b

    .line 334
    move v6, v3

    .line 338
    :cond_b
    and-int/lit8 v17, v7, 0x1

    if-eqz v17, :cond_c

    .line 339
    add-int/lit8 v6, v6, -0x1

    .line 342
    :cond_c
    if-ltz v6, :cond_5

    const/16 v17, 0x22

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 350
    invoke-static {v6}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 357
    int-to-byte v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    iput-byte v0, v13, Lcom/hz/actor/Monster;->position:B

    .line 358
    iget-byte v0, v13, Lcom/hz/actor/Monster;->position:B

    move/from16 v17, v0

    aput-object v13, v15, v17

    goto/16 :goto_3
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget v2, p0, Lcom/hz/core/MonsterGroup;->groupId:I

    if-eqz v2, :cond_0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u602a\u7269\u6218\u6597\u7ec4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hz/core/MonsterGroup;->groupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6218\u6597\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/hz/core/MonsterGroup;->type:B

    invoke-static {v3}, Lcom/hz/core/Define;->getMonsterGroupTypeString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    iget v2, p0, Lcom/hz/core/MonsterGroup;->nextBattleGroupID:I

    if-eqz v2, :cond_1

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u4e00\u573a\u602a\u7269\u6218\u6597:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hz/core/MonsterGroup;->nextBattleGroupID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    array-length v2, v2

    if-lez v2, :cond_2

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 381
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    array-length v2, v2

    if-lez v2, :cond_3

    .line 382
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    array-length v2, v2

    if-lt v0, v2, :cond_6

    .line 388
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 376
    .restart local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    aget-short v2, v2, v0

    if-eqz v2, :cond_5

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u602a\u7269"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_6
    iget-object v2, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    aget-short v2, v2, v0

    if-eqz v2, :cond_7

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NPC"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getMonsterListInGroup()Ljava/util/Hashtable;
    .locals 9

    .prologue
    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 79
    .local v0, "hash":Ljava/util/Hashtable;
    iget-object v7, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    if-eqz v7, :cond_0

    .line 83
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_0
    iget-object v7, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 98
    .end local v6    # "pos":I
    :cond_0
    iget-object v7, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    if-eqz v7, :cond_1

    .line 102
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_1
    iget-object v7, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    array-length v7, v7

    if-lt v1, v7, :cond_5

    .line 116
    .end local v1    # "id":I
    :cond_1
    return-object v0

    .line 85
    .restart local v6    # "pos":I
    :cond_2
    iget-object v7, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    aget-short v3, v7, v6

    .line 86
    .local v3, "monsterId":S
    if-gtz v3, :cond_4

    .line 83
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {v3}, Lcom/hz/main/GameWorld;->getMonster(I)Lcom/hz/actor/Monster;

    move-result-object v2

    .line 91
    .local v2, "monster":Lcom/hz/actor/Monster;
    if-eqz v2, :cond_3

    .line 94
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/hz/actor/Monster;->getId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 104
    .end local v2    # "monster":Lcom/hz/actor/Monster;
    .end local v3    # "monsterId":S
    .end local v6    # "pos":I
    .restart local v1    # "id":I
    :cond_5
    iget-object v7, p0, Lcom/hz/core/MonsterGroup;->npcs:[S

    aget-short v5, v7, v1

    .line 105
    .local v5, "npcMonsterId":S
    if-gtz v5, :cond_7

    .line 102
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_7
    invoke-static {v5}, Lcom/hz/main/GameWorld;->getMonster(I)Lcom/hz/actor/Monster;

    move-result-object v4

    .line 110
    .local v4, "npcMonster":Lcom/hz/actor/Monster;
    if-eqz v4, :cond_6

    .line 113
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/hz/actor/Monster;->getId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method isFlag(B)Z
    .locals 1
    .param p1, "flagType"    # B

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/hz/core/MonsterGroup;->flag:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupMonsterDataToBattle([Lcom/hz/actor/Player;)V
    .locals 4
    .param p1, "battlePlayerList"    # [Lcom/hz/actor/Player;

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    if-eqz v3, :cond_0

    .line 138
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/hz/core/MonsterGroup;->monsters:[S

    aget-short v1, v3, v2

    .line 141
    .local v1, "monsterId":S
    if-gtz v1, :cond_3

    .line 138
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_3
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 149
    invoke-static {v1}, Lcom/hz/main/GameWorld;->getMonster(I)Lcom/hz/actor/Monster;

    move-result-object v0

    .line 150
    .local v0, "monster":Lcom/hz/actor/Monster;
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/hz/actor/Monster;->getClone()Lcom/hz/actor/Monster;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/hz/actor/Monster;->resumeHPMP()V

    .line 157
    aput-object v0, p1, v2

    .line 158
    int-to-byte v3, v2

    iput-byte v3, v0, Lcom/hz/actor/Monster;->position:B

    goto :goto_1
.end method
