.class public Lcom/hz/core/PetEvolve;
.super Ljava/lang/Object;
.source "PetEvolve.java"


# instance fields
.field public costmoney:I

.field public grade:B

.field public nowGrade:B

.field public nowName:Ljava/lang/String;

.field public nowPeticon1:I

.field public peticon1:I

.field public petlevel:B

.field public petname:Ljava/lang/String;

.field public petsoltpos:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetPetEvolveData(Lcom/hz/net/Message;Z)Lcom/hz/core/PetEvolve;
    .locals 19
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isPush"    # Z

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 43
    const/4 v9, 0x0

    .line 138
    :cond_0
    :goto_0
    return-object v9

    .line 46
    :cond_1
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 47
    .local v10, "player":Lcom/hz/actor/Player;
    if-nez v10, :cond_2

    .line 49
    const/4 v9, 0x0

    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, v10, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 53
    .local v2, "bag":Lcom/hz/core/PlayerBag;
    if-nez v2, :cond_3

    .line 55
    const/4 v9, 0x0

    goto :goto_0

    .line 58
    :cond_3
    const/4 v11, -0x1

    .line 69
    .local v11, "slotpos":S
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 72
    .local v7, "money":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 75
    .local v4, "icon1":I
    const/4 v6, 0x0

    .line 76
    .local v6, "level":B
    if-eqz p1, :cond_4

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 81
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    .line 82
    .local v13, "tempgrade":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 84
    .local v15, "tempnowicon1":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 85
    .local v14, "tempnowgrade":B
    invoke-virtual/range {p0 .. p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "tempNowName":Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v5

    .line 97
    .local v5, "item":Lcom/hz/core/Item;
    if-nez v5, :cond_5

    .line 99
    const/4 v9, 0x0

    goto :goto_0

    .line 102
    :cond_5
    new-instance v9, Lcom/hz/core/PetEvolve;

    invoke-direct {v9}, Lcom/hz/core/PetEvolve;-><init>()V

    .line 103
    .local v9, "petevolve":Lcom/hz/core/PetEvolve;
    iput-short v11, v9, Lcom/hz/core/PetEvolve;->petsoltpos:S

    .line 104
    iput v7, v9, Lcom/hz/core/PetEvolve;->costmoney:I

    .line 105
    iput-byte v13, v9, Lcom/hz/core/PetEvolve;->grade:B

    .line 106
    iput-object v8, v9, Lcom/hz/core/PetEvolve;->petname:Ljava/lang/String;

    .line 107
    iput v4, v9, Lcom/hz/core/PetEvolve;->peticon1:I

    .line 108
    iput-byte v6, v9, Lcom/hz/core/PetEvolve;->petlevel:B

    .line 110
    iput-object v12, v9, Lcom/hz/core/PetEvolve;->nowName:Ljava/lang/String;

    .line 111
    iput-byte v14, v9, Lcom/hz/core/PetEvolve;->nowGrade:B

    .line 112
    iput v15, v9, Lcom/hz/core/PetEvolve;->nowPeticon1:I

    .line 114
    if-eqz p1, :cond_0

    .line 116
    sget v17, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 118
    const/16 v17, 0x23

    invoke-static/range {v17 .. v17}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v16

    .line 120
    .local v16, "xmlItem":Lcom/hz/ui/UIHandler;
    if-nez v16, :cond_6

    .line 123
    const/16 v17, 0x2be0

    invoke-static/range {v17 .. v17}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    .line 126
    :cond_6
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 127
    invoke-static {v9}, Lcom/hz/ui/UIHandler;->createPetEvolveUI(Lcom/hz/core/PetEvolve;)V

    goto :goto_0

    .line 130
    .end local v16    # "xmlItem":Lcom/hz/ui/UIHandler;
    :cond_7
    new-instance v3, Lcom/hz/core/GuideManager;

    invoke-direct {v3}, Lcom/hz/core/GuideManager;-><init>()V

    .line 131
    .local v3, "guideManager":Lcom/hz/core/GuideManager;
    const/16 v17, 0x5

    move/from16 v0, v17

    iput-byte v0, v3, Lcom/hz/core/GuideManager;->guideType:B

    .line 132
    iput-object v9, v3, Lcom/hz/core/GuideManager;->petEvolve:Lcom/hz/core/PetEvolve;

    .line 134
    invoke-static {v3}, Lcom/hz/core/GuideManager;->doAddGuideManager(Lcom/hz/core/GuideManager;)V

    goto/16 :goto_0
.end method

.method public static doGetPetEvolveSure(Lcom/hz/ui/UIHandler;SI)V
    .locals 13
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "soltpos"    # S
    .param p2, "money"    # I

    .prologue
    const/4 v12, 0x0

    .line 149
    if-nez p0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 160
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    const-string v9, "Ti\u1ebfp t\u1ee5c c\u1ea7n tr\u1ea3 /cFF0000%U \u0110\u1ed3ng/p, x\u00e1c nh\u1eadn?"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 160
    invoke-static {v8, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 162
    .local v0, "askResult":I
    const/16 v8, 0xa

    if-ne v0, v8, :cond_0

    .line 167
    invoke-static {v12, v12, p2}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 172
    .local v6, "player":Lcom/hz/actor/Player;
    if-eqz v6, :cond_0

    .line 177
    iget-object v1, v6, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 178
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, p1}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v2

    .line 185
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->close()V

    .line 192
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x3c9b

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 193
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-virtual {v3, p1}, Lcom/hz/net/Message;->putShort(S)V

    .line 194
    invoke-virtual {v3, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 196
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 212
    .local v7, "rs":B
    if-gez v7, :cond_2

    .line 214
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v6, Lcom/hz/actor/Player;->money1:I

    .line 221
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v6, Lcom/hz/actor/Player;->money2:I

    .line 222
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v6, Lcom/hz/actor/Player;->money3:I

    .line 225
    :try_start_0
    invoke-static {v2, v3}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 227
    const/4 v8, 0x1

    if-ne v8, p1, :cond_4

    .line 229
    invoke-virtual {v6}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v4

    check-cast v4, Lcom/hz/actor/MyPet;

    .line 230
    .local v4, "mypet":Lcom/hz/actor/MyPet;
    invoke-static {v3, v4}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 231
    if-eqz v4, :cond_3

    .line 233
    invoke-virtual {v4}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v4    # "mypet":Lcom/hz/actor/MyPet;
    :cond_3
    :goto_1
    const-string v8, "Ti\u1ebfn h\u00f3a pet th\u00e0nh c\u00f4ng!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 249
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto/16 :goto_0

    .line 237
    :cond_4
    :try_start_1
    new-instance v5, Lcom/hz/actor/MyPet;

    invoke-direct {v5, v6}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 238
    .local v5, "pet":Lcom/hz/actor/MyPet;
    invoke-static {v3, v5}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 240
    .end local v5    # "pet":Lcom/hz/actor/MyPet;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
