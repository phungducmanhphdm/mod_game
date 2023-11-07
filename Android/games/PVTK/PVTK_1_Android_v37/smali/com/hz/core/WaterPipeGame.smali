.class public Lcom/hz/core/WaterPipeGame;
.super Ljava/lang/Object;
.source "WaterPipeGame.java"


# static fields
.field public static final WATERPIPE_GAME_TYPE_5:B = 0x5t

.field public static final WATERPIPE_GAME_TYPE_7:B = 0x7t


# instance fields
.field public awardnum:B

.field public col:I

.field public down:B

.field public drawXY:[[I

.field public gameinfo:Ljava/lang/String;

.field public gamename:Ljava/lang/String;

.field public imgid:B

.field public isGameOver:Z

.field public iscanpass:Z

.field public left:B

.field public nowpassnum:B

.field public right:B

.field public row:I

.field public rownum:I

.field public succnum:B

.field public time:J

.field public up:B

.field public vWaterPipeGame:Ljava/util/Vector;

.field public waterArray:[[Lcom/hz/core/WaterPipeGame;

.field public waterPipeGameUI:Lcom/hz/ui/UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hz/core/WaterPipeGame;->drawXY:[[I

    .line 32
    return-void
.end method

.method public static doGetImgInfoByByte(Lcom/hz/net/Message;Ljava/util/Vector;)V
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "vList"    # Ljava/util/Vector;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 221
    :cond_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 197
    .local v1, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    new-instance v2, Lcom/hz/core/WaterPipeGame;

    invoke-direct {v2}, Lcom/hz/core/WaterPipeGame;-><init>()V

    .line 200
    .local v2, "waterPipeGame":Lcom/hz/core/WaterPipeGame;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/WaterPipeGame;->imgid:B

    .line 201
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/WaterPipeGame;->up:B

    .line 202
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/WaterPipeGame;->down:B

    .line 203
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/WaterPipeGame;->left:B

    .line 204
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/hz/core/WaterPipeGame;->right:B

    .line 205
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hz/core/WaterPipeGame;->iscanpass:Z

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static doWaterPipeGameBegin(SLjava/lang/String;)V
    .locals 24
    .param p0, "shopID"    # S
    .param p1, "strgameName"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 73
    .local v14, "player":Lcom/hz/actor/Player;
    if-nez v14, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v4, v14, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 79
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v4, :cond_0

    .line 85
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 90
    new-instance v9, Lcom/hz/net/Message;

    const/16 v20, 0x4460

    move/from16 v0, v20

    invoke-direct {v9, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 92
    .local v9, "msg":Lcom/hz/net/Message;
    sget-short v20, Lcom/hz/main/GameWorld;->shopID:S

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 94
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 98
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 99
    if-eqz v9, :cond_0

    .line 104
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 108
    .local v15, "rs":B
    if-gez v15, :cond_2

    .line 109
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v19, Lcom/hz/core/WaterPipeGame;

    invoke-direct/range {v19 .. v19}, Lcom/hz/core/WaterPipeGame;-><init>()V

    .line 114
    .local v19, "waterPipeGame":Lcom/hz/core/WaterPipeGame;
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    .line 118
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/hz/core/WaterPipeGame;->doGetImgInfoByByte(Lcom/hz/net/Message;Ljava/util/Vector;)V

    .line 121
    invoke-virtual {v9}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    .line 126
    .local v6, "isHasItem":Z
    if-eqz v6, :cond_3

    .line 128
    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    .line 129
    .local v8, "itempos":S
    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v7

    .line 135
    .local v7, "itemnum":S
    invoke-virtual {v4, v8, v7}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 138
    .end local v7    # "itemnum":S
    .end local v8    # "itempos":S
    :cond_3
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v13

    .line 139
    .local v13, "num":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 140
    .local v10, "needMoney1":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 141
    .local v11, "needMoney2":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 143
    .local v12, "needMoney3":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    .line 144
    .local v16, "succnum":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 145
    .local v3, "awardnum":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    add-long v17, v20, v22

    .line 146
    .local v17, "time":J
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "gameinfo":Ljava/lang/String;
    iput v10, v14, Lcom/hz/actor/Player;->money1:I

    .line 149
    iput v11, v14, Lcom/hz/actor/Player;->money2:I

    .line 150
    iput v12, v14, Lcom/hz/actor/Player;->money3:I

    .line 164
    move-object/from16 v0, v19

    iput v13, v0, Lcom/hz/core/WaterPipeGame;->rownum:I

    .line 165
    move/from16 v0, v16

    move-object/from16 v1, v19

    iput-byte v0, v1, Lcom/hz/core/WaterPipeGame;->succnum:B

    .line 166
    move-object/from16 v0, v19

    iput-byte v3, v0, Lcom/hz/core/WaterPipeGame;->awardnum:B

    .line 167
    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/hz/core/WaterPipeGame;->time:J

    .line 168
    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/hz/core/WaterPipeGame;->gameinfo:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/hz/core/WaterPipeGame;->gamename:Ljava/lang/String;

    .line 170
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/hz/core/WaterPipeGame;->isGameOver:Z

    .line 171
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-byte v0, v1, Lcom/hz/core/WaterPipeGame;->nowpassnum:B

    .line 173
    filled-new-array {v13, v13}, [I

    move-result-object v20

    const-class v21, Lcom/hz/core/WaterPipeGame;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[Lcom/hz/core/WaterPipeGame;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    .line 176
    invoke-virtual/range {v19 .. v19}, Lcom/hz/core/WaterPipeGame;->createWaterPipeGameUI()Lcom/hz/ui/UIHandler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    .line 177
    sput-object v19, Lcom/hz/main/GameCanvas;->waterPipeGame:Lcom/hz/core/WaterPipeGame;

    .line 179
    const/16 v20, 0x49

    invoke-static/range {v20 .. v20}, Lcom/hz/main/GameWorld;->changeStage(I)V

    .line 180
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/hz/ui/UIHandler;->updateDatatoWaterPipeGameUI(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createWaterPipeGameUI()Lcom/hz/ui/UIHandler;
    .locals 3

    .prologue
    .line 227
    const/16 v2, 0xb9

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 228
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-nez v1, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 236
    .end local v1    # "xmlUI":Lcom/hz/ui/UIHandler;
    :goto_0
    return-object v1

    .line 231
    .restart local v1    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_0
    invoke-static {v1}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 232
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v0, p0}, Lcom/hz/ui/UIObject;->setWaterPipeGame(Lcom/hz/core/WaterPipeGame;)V

    .line 234
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->setDefaultListener()V

    .line 235
    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->show()V

    goto :goto_0
.end method

.method public doCheckDir(Ljava/util/Vector;Lcom/hz/core/WaterPipeGame;Ljava/util/Vector;)V
    .locals 4
    .param p1, "vOpen"    # Ljava/util/Vector;
    .param p2, "waterPipeGame"    # Lcom/hz/core/WaterPipeGame;
    .param p3, "vClose"    # Ljava/util/Vector;

    .prologue
    const/4 v3, 0x1

    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "waterPipeGamedata":Lcom/hz/core/WaterPipeGame;
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    if-nez v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-byte v1, p2, Lcom/hz/core/WaterPipeGame;->left:B

    if-lez v1, :cond_2

    iget v1, p2, Lcom/hz/core/WaterPipeGame;->col:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->row:I

    aget-object v1, v1, v2

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->col:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 512
    if-eqz v0, :cond_2

    .line 514
    iget-byte v1, v0, Lcom/hz/core/WaterPipeGame;->right:B

    if-lez v1, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    iput-boolean v3, v0, Lcom/hz/core/WaterPipeGame;->iscanpass:Z

    .line 517
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 523
    :cond_2
    iget-byte v1, p2, Lcom/hz/core/WaterPipeGame;->right:B

    if-lez v1, :cond_3

    iget v1, p2, Lcom/hz/core/WaterPipeGame;->col:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    if-ge v1, v2, :cond_3

    .line 525
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->row:I

    aget-object v1, v1, v2

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->col:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    .line 526
    if-eqz v0, :cond_3

    .line 528
    iget-byte v1, v0, Lcom/hz/core/WaterPipeGame;->left:B

    if-lez v1, :cond_3

    invoke-virtual {p3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 530
    iput-boolean v3, v0, Lcom/hz/core/WaterPipeGame;->iscanpass:Z

    .line 531
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 537
    :cond_3
    iget-byte v1, p2, Lcom/hz/core/WaterPipeGame;->up:B

    if-lez v1, :cond_4

    iget v1, p2, Lcom/hz/core/WaterPipeGame;->row:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 539
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->row:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->col:I

    aget-object v0, v1, v2

    .line 540
    if-eqz v0, :cond_4

    .line 542
    iget-byte v1, v0, Lcom/hz/core/WaterPipeGame;->down:B

    if-lez v1, :cond_4

    invoke-virtual {p3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 544
    iput-boolean v3, v0, Lcom/hz/core/WaterPipeGame;->iscanpass:Z

    .line 545
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 552
    :cond_4
    iget-byte v1, p2, Lcom/hz/core/WaterPipeGame;->down:B

    if-lez v1, :cond_0

    iget v1, p2, Lcom/hz/core/WaterPipeGame;->row:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    if-ge v1, v2, :cond_0

    .line 554
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->row:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v2, p2, Lcom/hz/core/WaterPipeGame;->col:I

    aget-object v0, v1, v2

    .line 555
    if-eqz v0, :cond_0

    .line 557
    iget-byte v1, v0, Lcom/hz/core/WaterPipeGame;->up:B

    if-lez v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iput-boolean v3, v0, Lcom/hz/core/WaterPipeGame;->iscanpass:Z

    .line 560
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public doWaterPipeGameCheck(Lcom/hz/core/WaterPipeGame;)V
    .locals 4
    .param p1, "waterPipeGame"    # Lcom/hz/core/WaterPipeGame;

    .prologue
    .line 434
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 435
    .local v1, "vOpen":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 436
    .local v0, "vClose":Ljava/util/Vector;
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 438
    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 486
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/hz/core/WaterPipeGame;->nowpassnum:B

    .line 487
    return-void

    .line 441
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/WaterPipeGame;

    .line 443
    .local v2, "waterPipeGamedata":Lcom/hz/core/WaterPipeGame;
    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 450
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 453
    :cond_3
    invoke-virtual {p0, v1, v2, v0}, Lcom/hz/core/WaterPipeGame;->doCheckDir(Ljava/util/Vector;Lcom/hz/core/WaterPipeGame;Ljava/util/Vector;)V

    .line 455
    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public doWaterPipeGameExit(Z)V
    .locals 24
    .param p1, "isAsk"    # Z

    .prologue
    .line 569
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 570
    .local v11, "player":Lcom/hz/actor/Player;
    if-nez v11, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v4, v11, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 576
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v4, :cond_0

    .line 581
    if-eqz p1, :cond_2

    .line 584
    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v19

    .line 585
    const-string v20, "X\u00e1c nh\u1eadn ho\u00e0n th\u00e0nh %U?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/WaterPipeGame;->gamename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    .line 584
    invoke-static/range {v19 .. v21}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v3

    .line 586
    .local v3, "askResult":I
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v3, v0, :cond_0

    .line 592
    .end local v3    # "askResult":I
    :cond_2
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 597
    new-instance v10, Lcom/hz/net/Message;

    const/16 v19, 0x4461

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 599
    .local v10, "msg":Lcom/hz/net/Message;
    sget-short v19, Lcom/hz/main/GameWorld;->shopID:S

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/core/WaterPipeGame;->rownum:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/core/WaterPipeGame;->rownum:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v0, v19

    int-to-byte v2, v0

    .line 606
    .local v2, "allsize":B
    invoke-virtual {v10, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 607
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v2, :cond_3

    .line 623
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/WaterPipeGame;->nowpassnum:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 625
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 629
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 630
    if-eqz v10, :cond_0

    .line 635
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 639
    .local v12, "rs":B
    if-gez v12, :cond_5

    .line 640
    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v20

    .line 641
    const/16 v21, 0x3

    const/16 v22, 0x6b

    const/16 v23, 0x1

    .line 640
    invoke-static/range {v19 .. v23}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 609
    .end local v12    # "rs":B
    :cond_3
    const/4 v14, -0x1

    .line 611
    .local v14, "tempImgid":B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/hz/core/WaterPipeGame;->getVWaterPipeGameByArrayIndex(I)Lcom/hz/core/WaterPipeGame;

    move-result-object v18

    .line 612
    .local v18, "waterPipeGamedata":Lcom/hz/core/WaterPipeGame;
    if-eqz v18, :cond_4

    .line 614
    move-object/from16 v0, v18

    iget-byte v14, v0, Lcom/hz/core/WaterPipeGame;->imgid:B

    .line 620
    :cond_4
    invoke-virtual {v10, v14}, Lcom/hz/net/Message;->putByte(B)V

    .line 607
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 647
    .end local v14    # "tempImgid":B
    .end local v18    # "waterPipeGamedata":Lcom/hz/core/WaterPipeGame;
    .restart local v12    # "rs":B
    :cond_5
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    .line 652
    .local v6, "isAddItem":Z
    const-string v13, ""

    .line 653
    .local v13, "strinfo":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 655
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-static {v10, v0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 658
    :cond_6
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 659
    .local v7, "money1":I
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 660
    .local v8, "money2":I
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 665
    .local v9, "money3":I
    iget v0, v11, Lcom/hz/actor/Player;->money1:I

    move/from16 v19, v0

    sub-int v15, v7, v19

    .line 666
    .local v15, "tempmoney1":I
    iget v0, v11, Lcom/hz/actor/Player;->money2:I

    move/from16 v19, v0

    sub-int v16, v8, v19

    .line 667
    .local v16, "tempmoney2":I
    iget v0, v11, Lcom/hz/actor/Player;->money3:I

    move/from16 v19, v0

    sub-int v17, v9, v19

    .line 668
    .local v17, "tempmoney3":I
    if-lez v15, :cond_7

    .line 670
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "KNB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 672
    :cond_7
    if-lez v16, :cond_8

    .line 674
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "L\u00e1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 676
    :cond_8
    if-lez v17, :cond_9

    .line 678
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "B\u1ea1c"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 681
    :cond_9
    iput v7, v11, Lcom/hz/actor/Player;->money1:I

    .line 682
    iput v8, v11, Lcom/hz/actor/Player;->money2:I

    .line 683
    iput v9, v11, Lcom/hz/actor/Player;->money3:I

    .line 685
    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v19

    .line 686
    const-string v20, "Nh\u1eadn \u0111\u01b0\u1ee3c: \n%U"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 687
    const/16 v21, 0x3

    const/16 v22, 0x6b

    const/16 v23, 0x1

    .line 685
    invoke-static/range {v19 .. v23}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public getVWaterPipeGameByArrayIndex(I)Lcom/hz/core/WaterPipeGame;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v3, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    if-nez v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v2

    .line 366
    :cond_1
    iget v3, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    iget v4, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    mul-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 371
    iget v2, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    div-int v1, p1, v2

    .line 372
    .local v1, "row":I
    iget v2, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    mul-int/2addr v2, v1

    sub-int v2, p1, v2

    iget v3, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    rem-int v0, v2, v3

    .line 374
    .local v0, "col":I
    if-gez v1, :cond_2

    .line 376
    const/4 v1, 0x0

    .line 378
    :cond_2
    if-gez v0, :cond_3

    .line 380
    const/4 v0, 0x0

    .line 386
    :cond_3
    iget-object v2, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    goto :goto_0
.end method

.method public getVWaterPipeGameByIndex(I)Lcom/hz/core/WaterPipeGame;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 345
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/WaterPipeGame;

    goto :goto_0
.end method

.method public handleKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->handleKey(I)V

    .line 287
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMouse()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 245
    iget-object v6, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    if-nez v6, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v4

    .line 249
    :cond_1
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 250
    .local v1, "pointX":I
    sget v6, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v6}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 251
    .local v2, "pointY":I
    if-eq v1, v7, :cond_0

    if-eq v2, v7, :cond_0

    .line 255
    invoke-static {v1, v2, v5}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 257
    iget-object v6, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 258
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 263
    .local v3, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v3, :cond_0

    .line 266
    iget-object v6, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v3}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 268
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->setWindowFoucsGWidget(Lcom/hz/gui/GWidget;)V

    .line 270
    iget-object v6, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v6, v4}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v4, v5

    .line 272
    goto :goto_0
.end method

.method public logic(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/hz/core/WaterPipeGame;->handleMouse()Z

    .line 299
    invoke-virtual {p0, p1}, Lcom/hz/core/WaterPipeGame;->handleKey(I)Z

    .line 301
    iget-boolean v0, p0, Lcom/hz/core/WaterPipeGame;->isGameOver:Z

    if-nez v0, :cond_1

    .line 303
    iget-wide v0, p0, Lcom/hz/core/WaterPipeGame;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->vWaterPipeGame:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/core/WaterPipeGame;->isGameOver:Z

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hz/core/WaterPipeGame;->doWaterPipeGameExit(Z)V

    .line 312
    :cond_1
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->waterPipeGameUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 324
    :cond_0
    const/4 v4, 0x0

    .line 325
    .local v4, "drawX":I
    const/4 v5, 0x0

    .line 328
    .local v5, "drawY":I
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->drawXY:[[I

    aget-object v0, v0, v1

    aget v4, v0, v1

    .line 329
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->drawXY:[[I

    aget-object v0, v0, v1

    aget v5, v0, v8

    .line 332
    const-string v0, "Qua \u1ea3i: %U"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-byte v7, p0, Lcom/hz/core/WaterPipeGame;->nowpassnum:B

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v7, p0, Lcom/hz/core/WaterPipeGame;->succnum:B

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "strinfo":Ljava/lang/String;
    const/high16 v2, 0xff0000

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    .line 337
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->drawXY:[[I

    aget-object v0, v0, v8

    aget v4, v0, v1

    .line 338
    iget-object v0, p0, Lcom/hz/core/WaterPipeGame;->drawXY:[[I

    aget-object v0, v0, v8

    aget v5, v0, v8

    .line 339
    iget-wide v8, p0, Lcom/hz/core/WaterPipeGame;->time:J

    add-int/lit8 v10, v4, -0x14

    move-object v7, p1

    move v11, v5

    move v12, v6

    move v13, v1

    invoke-static/range {v7 .. v13}, Lcom/hz/common/Utilities;->drawPlanTime(Ljavax/microedition/lcdui/Graphics;JIIIZ)V

    .line 340
    return-void
.end method

.method public setVWaterPipeGameByArrayIndex(ILcom/hz/core/WaterPipeGame;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "waterPipeGame"    # Lcom/hz/core/WaterPipeGame;

    .prologue
    const/4 v5, 0x1

    .line 392
    iget-object v3, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    if-nez v3, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget v3, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    iget v4, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    mul-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 402
    iget v3, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    div-int v1, p1, v3

    .line 403
    .local v1, "row":I
    iget v3, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    mul-int/2addr v3, v1

    sub-int v3, p1, v3

    iget v4, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    rem-int v0, v3, v4

    .line 408
    .local v0, "col":I
    if-gez v1, :cond_2

    .line 410
    const/4 v1, 0x0

    .line 412
    :cond_2
    if-gez v0, :cond_3

    .line 414
    const/4 v0, 0x0

    .line 416
    :cond_3
    iput v1, p2, Lcom/hz/core/WaterPipeGame;->row:I

    .line 417
    iput v0, p2, Lcom/hz/core/WaterPipeGame;->col:I

    .line 419
    iget-object v3, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    aget-object v3, v3, v1

    aput-object p2, v3, v0

    .line 423
    iget-object v3, p0, Lcom/hz/core/WaterPipeGame;->waterArray:[[Lcom/hz/core/WaterPipeGame;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v4, p0, Lcom/hz/core/WaterPipeGame;->rownum:I

    div-int/lit8 v4, v4, 0x2

    aget-object v2, v3, v4

    .line 424
    .local v2, "tempWaterPipeGame":Lcom/hz/core/WaterPipeGame;
    if-eqz v2, :cond_0

    iget-byte v3, v2, Lcom/hz/core/WaterPipeGame;->up:B

    if-ne v3, v5, :cond_0

    .line 426
    iput-boolean v5, v2, Lcom/hz/core/WaterPipeGame;->iscanpass:Z

    .line 427
    invoke-virtual {p0, v2}, Lcom/hz/core/WaterPipeGame;->doWaterPipeGameCheck(Lcom/hz/core/WaterPipeGame;)V

    goto :goto_0
.end method
