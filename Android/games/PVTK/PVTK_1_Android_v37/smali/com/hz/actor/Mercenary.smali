.class public Lcom/hz/actor/Mercenary;
.super Lcom/hz/actor/Monster;
.source "Mercenary.java"


# static fields
.field public static final SOLDIER_STATE_FIGHT:B = 0x2t

.field public static final SOLDIER_STATE_SACK:B = 0x3t

.field public static final SOLDIER_STATE_SLEEP:B = 0x1t


# instance fields
.field public expireTime1:J

.field public groupId:S

.field public strength:B

.field public worldMer:Lcom/hz/actor/Mercenary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/hz/actor/Monster;-><init>()V

    .line 57
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hz/actor/Mercenary;->setType(B)V

    .line 58
    return-void
.end method

.method public static doClearMyActivityMercenary(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 568
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 569
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 579
    .local v0, "isClear":Z
    if-eqz v0, :cond_0

    .line 580
    iget-object v2, v1, Lcom/hz/actor/Player;->merList:[Lcom/hz/actor/Model;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/hz/actor/Player;->merList:[Lcom/hz/actor/Model;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 584
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/hz/actor/Player;->merList:[Lcom/hz/actor/Model;

    goto :goto_0
.end method

.method public static doMercenaryBuyMsg(Lcom/hz/actor/Mercenary;Lcom/hz/ui/UIHandler;)Z
    .locals 17
    .param p0, "mercenary"    # Lcom/hz/actor/Mercenary;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 308
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v10

    if-nez v10, :cond_0

    .line 309
    const/4 v10, 0x0

    .line 410
    :goto_0
    return v10

    .line 312
    :cond_0
    if-nez p0, :cond_1

    .line 313
    const/4 v10, 0x0

    goto :goto_0

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money1:I

    if-gtz v10, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money2:I

    if-gtz v10, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money3:I

    if-lez v10, :cond_6

    .line 318
    :cond_2
    const-string v11, "Thu\u00ea d\u1ee5ng binh"

    .line 319
    const-string v12, "Thu\u00ea %U d\u1ee5ng binh c\u1ea7n \n%U \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    .line 320
    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/actor/Mercenary;->name:Ljava/lang/String;

    aput-object v14, v13, v10

    const/4 v14, 0x1

    .line 321
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money1:I

    if-lez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v16, "KNB"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/actor/Mercenary;->money1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    const v16, 0xffff00

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money2:I

    if-lez v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v16, "L\u00e1"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/actor/Mercenary;->money2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    const v16, 0x9acaff

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 323
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money3:I

    if-lez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v16, "B\u1ea1c"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/actor/Mercenary;->money3:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    const v16, 0xc45712

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 321
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v14

    .line 319
    invoke-static {v12, v13}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 330
    const/4 v12, 0x3

    .line 318
    invoke-static {v11, v10, v12}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v1

    .line 331
    .local v1, "askResult":I
    const/16 v10, 0x14

    if-ne v1, v10, :cond_6

    .line 332
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 321
    .end local v1    # "askResult":I
    :cond_3
    const-string v10, ""

    goto/16 :goto_1

    .line 322
    :cond_4
    const-string v10, ""

    goto :goto_2

    .line 323
    :cond_5
    const-string v10, ""

    goto :goto_3

    .line 335
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/actor/Mercenary;->money1:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/hz/actor/Mercenary;->money2:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/actor/Mercenary;->money3:I

    invoke-static {v10, v11, v12}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v10

    if-nez v10, :cond_7

    .line 336
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 340
    :cond_7
    const/16 v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/actor/Mercenary;->isTabStatus(I)Z

    move-result v2

    .line 342
    .local v2, "isGetInfo":Z
    sget-short v11, Lcom/hz/main/GameWorld;->shopID:S

    if-eqz v2, :cond_8

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p0

    invoke-static {v11, v0, v10}, Lcom/hz/main/MsgHandler;->createMercenaryBuyMsg(SLcom/hz/actor/Mercenary;Z)Lcom/hz/net/Message;

    move-result-object v6

    .line 343
    .local v6, "msg":Lcom/hz/net/Message;
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 344
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 342
    .end local v6    # "msg":Lcom/hz/net/Message;
    :cond_8
    const/4 v10, 0x1

    goto :goto_4

    .line 347
    .restart local v6    # "msg":Lcom/hz/net/Message;
    :cond_9
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 348
    if-nez v6, :cond_a

    .line 349
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 352
    :cond_a
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 357
    .local v8, "result":B
    if-gez v8, :cond_b

    .line 358
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 359
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 363
    :cond_b
    const/4 v10, 0x1

    if-ne v8, v10, :cond_e

    .line 364
    if-eqz p1, :cond_d

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 368
    :cond_c
    const/16 v10, 0x6b

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 370
    :cond_d
    const-string v10, "Ng\u01b0\u1eddi qu\u1ea3n l\u00fd \u0111\u00e3 \u0111i\u1ec1u ch\u1ec9nh thu\u1ebf su\u1ea5t khi\u1ebfn gi\u00e1 ti\u1ec1n thay \u0111\u1ed5i, m\u1eddi b\u1ea1n xem!"

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 371
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 374
    :cond_e
    if-eqz v8, :cond_f

    .line 375
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 378
    :cond_f
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    move-object/from16 v0, p0

    iput-short v10, v0, Lcom/hz/actor/Mercenary;->groupId:S

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/hz/actor/Mercenary;->expireTime1:J

    .line 380
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 382
    .local v9, "status":B
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 383
    .local v3, "money1":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 384
    .local v4, "money2":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 387
    .local v5, "money3":I
    const/4 v10, 0x0

    invoke-static {v3, v4, v5, v10}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 389
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 390
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_10

    .line 391
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 395
    :cond_10
    const/4 v10, 0x2

    if-ne v9, v10, :cond_12

    .line 396
    if-nez v2, :cond_11

    .line 397
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object p0

    .line 398
    new-instance v10, Lcom/hz/actor/Mercenary;

    invoke-direct {v10}, Lcom/hz/actor/Mercenary;-><init>()V

    invoke-static {v10, v6}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/actor/Mercenary;->setPet(Lcom/hz/actor/Model;)V

    .line 402
    :cond_11
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/hz/actor/Mercenary;->money1:I

    .line 403
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/hz/actor/Mercenary;->money2:I

    .line 404
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/hz/actor/Mercenary;->money3:I

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/hz/actor/Player;->addMercenary(Lcom/hz/actor/Model;)Z

    .line 409
    :cond_12
    const-string v10, "Thu\u00ea th\u00e0nh c\u00f4ng"

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 410
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public static doMercenaryDelMsg(Lcom/hz/actor/Mercenary;)Z
    .locals 5
    .param p0, "mercenary"    # Lcom/hz/actor/Mercenary;

    .prologue
    const/4 v3, 0x0

    .line 511
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v3

    .line 515
    :cond_1
    if-eqz p0, :cond_0

    .line 519
    iget-short v4, p0, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-static {v4}, Lcom/hz/main/MsgHandler;->createMercenaryDelMsg(S)Lcom/hz/net/Message;

    move-result-object v2

    .line 520
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 525
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 529
    iget-short v3, p0, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 530
    .local v0, "model":Lcom/hz/actor/Model;
    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {v1, v0}, Lcom/hz/actor/Player;->removeMercenary(Lcom/hz/actor/Model;)Z

    .line 534
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static doMercenaryInfoMsg(Lcom/hz/actor/Mercenary;IZ)Z
    .locals 10
    .param p0, "mercenary"    # Lcom/hz/actor/Mercenary;
    .param p1, "playerID"    # I
    .param p2, "isShop"    # Z

    .prologue
    const/16 v9, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    if-nez p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v3

    .line 254
    :cond_1
    if-nez p2, :cond_2

    .line 255
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 256
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_2

    iget-short v5, p0, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-virtual {v2, v5}, Lcom/hz/actor/Player;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 257
    goto :goto_0

    .line 262
    .end local v2    # "player":Lcom/hz/actor/Player;
    :cond_2
    invoke-virtual {p0, v9}, Lcom/hz/actor/Mercenary;->isTabStatus(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    const/4 v0, 0x0

    .line 267
    .local v0, "msg":Lcom/hz/net/Message;
    if-eqz p2, :cond_6

    .line 268
    iget-short v5, p0, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-static {v5}, Lcom/hz/main/MsgHandler;->createMercenaryInfoMsg(S)Lcom/hz/net/Message;

    move-result-object v0

    .line 272
    :goto_1
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 281
    if-nez p2, :cond_4

    .line 282
    invoke-virtual {v0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    iput-short v5, p0, Lcom/hz/actor/Mercenary;->groupId:S

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/hz/actor/Mercenary;->expireTime1:J

    .line 287
    :cond_4
    invoke-static {p0, v0}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object p0

    .line 289
    new-instance v5, Lcom/hz/actor/Mercenary;

    invoke-direct {v5}, Lcom/hz/actor/Mercenary;-><init>()V

    invoke-static {v5, v0}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object v1

    .line 290
    .local v1, "pet":Lcom/hz/actor/Mercenary;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/hz/actor/Mercenary;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v5

    if-nez v5, :cond_5

    .line 291
    invoke-virtual {v1, v3}, Lcom/hz/actor/Mercenary;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hz/actor/Mercenary;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 293
    :cond_5
    invoke-virtual {p0, v1}, Lcom/hz/actor/Mercenary;->setPet(Lcom/hz/actor/Model;)V

    .line 296
    invoke-virtual {p0, v4, v9}, Lcom/hz/actor/Mercenary;->setTabStatus(ZI)V

    move v3, v4

    .line 298
    goto :goto_0

    .line 270
    .end local v1    # "pet":Lcom/hz/actor/Mercenary;
    :cond_6
    iget-short v5, p0, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-static {p1, v5}, Lcom/hz/main/MsgHandler;->createMercenaryMyInfoMsg(IS)Lcom/hz/net/Message;

    move-result-object v0

    goto :goto_1
.end method

.method public static doMercenaryListMsg(II)[Ljava/lang/Object;
    .locals 11
    .param p0, "pageSize"    # I
    .param p1, "curPage"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 214
    sget-short v7, Lcom/hz/main/GameWorld;->shopID:S

    int-to-byte v8, p0

    int-to-short v9, p1

    invoke-static {v7, v8, v9}, Lcom/hz/main/MsgHandler;->createMercenaryListMsg(SBS)Lcom/hz/net/Message;

    move-result-object v4

    .line 215
    .local v4, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v6

    .line 219
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 220
    .local v3, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 224
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 226
    .local v2, "mercenaryList":Ljava/util/Vector;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 231
    .local v0, "allSize":S
    if-lez v0, :cond_2

    .line 232
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 234
    .local v5, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 239
    .end local v1    # "i":I
    .end local v5    # "size":B
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    goto :goto_0

    .line 235
    .restart local v1    # "i":I
    .restart local v5    # "size":B
    :cond_3
    invoke-static {v3, v10}, Lcom/hz/actor/Mercenary;->fromBytesList(Lcom/hz/net/Message;Z)Lcom/hz/actor/Mercenary;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doMercenaryMyListMsg(Lcom/hz/actor/Player;)Ljava/util/Vector;
    .locals 7
    .param p0, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v2, 0x0

    .line 420
    if-nez p0, :cond_1

    .line 456
    :cond_0
    return-object v2

    .line 424
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->createMercenaryMyListMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 425
    .local v4, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 430
    .local v3, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 434
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 437
    .local v2, "objList":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getMerList()[Lcom/hz/actor/Model;

    move-result-object v1

    .line 438
    .local v1, "merList":[Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-lt v0, v6, :cond_3

    .line 447
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 452
    .local v5, "size":B
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 453
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/hz/actor/Mercenary;->fromBytesList(Lcom/hz/net/Message;Z)Lcom/hz/actor/Mercenary;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    .end local v5    # "size":B
    :cond_3
    aget-object v6, v1, v0

    if-eqz v6, :cond_4

    .line 441
    aget-object v6, v1, v0

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 439
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static doMercenarySetStatus(Lcom/hz/actor/Mercenary;B)Z
    .locals 7
    .param p0, "mercenary"    # Lcom/hz/actor/Mercenary;
    .param p1, "status"    # B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 467
    if-nez p0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v4

    .line 470
    :cond_1
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/hz/actor/Mercenary;->isTabStatus(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 472
    .local v0, "isNeedInfo":Z
    :goto_1
    iget-short v6, p0, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-static {v6, v0, p1}, Lcom/hz/main/MsgHandler;->createMercenarySetStatusMsg(SZB)Lcom/hz/net/Message;

    move-result-object v3

    .line 474
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 478
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 479
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 483
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 484
    .local v1, "player":Lcom/hz/actor/Player;
    if-eqz v1, :cond_0

    .line 488
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 491
    if-eqz v0, :cond_2

    .line 492
    invoke-static {p0, v2}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object p0

    .line 493
    new-instance v4, Lcom/hz/actor/Mercenary;

    invoke-direct {v4}, Lcom/hz/actor/Mercenary;-><init>()V

    invoke-static {v4, v2}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/hz/actor/Mercenary;->setPet(Lcom/hz/actor/Model;)V

    .line 495
    :cond_2
    invoke-virtual {v1, p0}, Lcom/hz/actor/Player;->addMercenary(Lcom/hz/actor/Model;)Z

    :goto_2
    move v4, v5

    .line 500
    goto :goto_0

    .end local v0    # "isNeedInfo":Z
    .end local v1    # "player":Lcom/hz/actor/Player;
    .end local v2    # "receiveMsg":Lcom/hz/net/Message;
    .end local v3    # "sendMsg":Lcom/hz/net/Message;
    :cond_3
    move v0, v5

    .line 470
    goto :goto_1

    .line 497
    .restart local v0    # "isNeedInfo":Z
    .restart local v1    # "player":Lcom/hz/actor/Player;
    .restart local v2    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v3    # "sendMsg":Lcom/hz/net/Message;
    :cond_4
    invoke-virtual {v1, p0}, Lcom/hz/actor/Player;->removeMercenary(Lcom/hz/actor/Model;)Z

    goto :goto_2
.end method

.method public static fromBytesFull(Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 102
    new-instance v0, Lcom/hz/actor/Mercenary;

    invoke-direct {v0}, Lcom/hz/actor/Mercenary;-><init>()V

    .line 103
    .local v0, "mercenary":Lcom/hz/actor/Mercenary;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/actor/Mercenary;->groupId:S

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/hz/actor/Mercenary;->expireTime1:J

    .line 107
    invoke-static {v0, p0}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    .line 108
    new-instance v1, Lcom/hz/actor/Mercenary;

    invoke-direct {v1}, Lcom/hz/actor/Mercenary;-><init>()V

    invoke-static {v1, p0}, Lcom/hz/actor/Mercenary;->fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Mercenary;->setPet(Lcom/hz/actor/Model;)V

    .line 110
    return-object v0
.end method

.method public static fromBytesList(Lcom/hz/net/Message;Z)Lcom/hz/actor/Mercenary;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isShop"    # Z

    .prologue
    .line 67
    new-instance v0, Lcom/hz/actor/Mercenary;

    invoke-direct {v0}, Lcom/hz/actor/Mercenary;-><init>()V

    .line 68
    .local v0, "mercenary":Lcom/hz/actor/Mercenary;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/actor/Mercenary;->groupId:S

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Mercenary;->money1:I

    .line 71
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Mercenary;->money2:I

    .line 72
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Mercenary;->money3:I

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/Mercenary;->level:B

    .line 75
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/Mercenary;->job:B

    .line 76
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Mercenary;->icon1:I

    .line 77
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Mercenary;->icon2:I

    .line 78
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/actor/Mercenary;->icon3:I

    .line 79
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/Mercenary;->strength:B

    .line 80
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/actor/Mercenary;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/actor/Mercenary;->monstertype:B

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/hz/actor/Mercenary;->expireTime1:J

    .line 89
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/actor/Mercenary;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/actor/Mercenary;->playerSprite:Lcom/hz/sprite/GameSprite;

    .line 92
    return-object v0

    .line 85
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/hz/actor/Mercenary;->expireTime1:J

    goto :goto_0
.end method

.method public static fromBytesMercenary(Lcom/hz/actor/Mercenary;Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;
    .locals 6
    .param p0, "mercenary"    # Lcom/hz/actor/Mercenary;
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v4, 0x0

    .line 154
    if-nez p0, :cond_1

    move-object p0, v4

    .line 181
    .end local p0    # "mercenary":Lcom/hz/actor/Mercenary;
    :cond_0
    :goto_0
    return-object p0

    .line 158
    .restart local p0    # "mercenary":Lcom/hz/actor/Mercenary;
    :cond_1
    invoke-static {p0, p1}, Lcom/hz/actor/Monster;->fromBytes(Lcom/hz/actor/Monster;Lcom/hz/net/Message;)Lcom/hz/actor/Monster;

    move-result-object v5

    if-nez v5, :cond_2

    move-object p0, v4

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hz/actor/Mercenary;->info:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p0, Lcom/hz/actor/Mercenary;->job:B

    .line 164
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, p0, Lcom/hz/actor/Mercenary;->strength:B

    .line 166
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/actor/Mercenary;->hp:I

    .line 167
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/actor/Mercenary;->mp:I

    .line 169
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/actor/Mercenary;->icon2:I

    .line 170
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, p0, Lcom/hz/actor/Mercenary;->icon3:I

    .line 172
    invoke-virtual {p1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 173
    .local v1, "isHasAI":Z
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 175
    .local v3, "skillSize":B
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 176
    .local v2, "skillList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 179
    invoke-static {p1, v2}, Lcom/hz/battle/MonsterAI;->fromBytes(Lcom/hz/net/Message;Ljava/util/Vector;)Lcom/hz/battle/MonsterAI;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/hz/actor/Mercenary;->setAI(Lcom/hz/battle/MonsterAI;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {p1}, Lcom/hz/core/Skill;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Skill;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fromBytesSimple(Lcom/hz/net/Message;)Lcom/hz/actor/Mercenary;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 114
    new-instance v0, Lcom/hz/actor/Mercenary;

    invoke-direct {v0}, Lcom/hz/actor/Mercenary;-><init>()V

    .line 115
    .local v0, "mercenary":Lcom/hz/actor/Mercenary;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/actor/Mercenary;->groupId:S

    .line 116
    invoke-static {p0, v0}, Lcom/hz/actor/Mercenary;->fromBytesSimpleData(Lcom/hz/net/Message;Lcom/hz/actor/Mercenary;)Lcom/hz/actor/Mercenary;

    .line 117
    new-instance v1, Lcom/hz/actor/Mercenary;

    invoke-direct {v1}, Lcom/hz/actor/Mercenary;-><init>()V

    invoke-static {p0, v1}, Lcom/hz/actor/Mercenary;->fromBytesSimpleData(Lcom/hz/net/Message;Lcom/hz/actor/Mercenary;)Lcom/hz/actor/Mercenary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/actor/Mercenary;->setPet(Lcom/hz/actor/Model;)V

    .line 118
    return-object v0
.end method

.method public static fromBytesSimpleData(Lcom/hz/net/Message;Lcom/hz/actor/Mercenary;)Lcom/hz/actor/Mercenary;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "mer"    # Lcom/hz/actor/Mercenary;

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_0

    move-object p1, v1

    .line 143
    .end local p1    # "mer":Lcom/hz/actor/Mercenary;
    :goto_0
    return-object p1

    .line 133
    .restart local p1    # "mer":Lcom/hz/actor/Mercenary;
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 134
    .local v0, "_id":I
    if-gez v0, :cond_1

    move-object p1, v1

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    iput v0, p1, Lcom/hz/actor/Mercenary;->id:I

    .line 139
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p1, Lcom/hz/actor/Mercenary;->icon1:I

    .line 140
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p1, Lcom/hz/actor/Mercenary;->icon2:I

    .line 141
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, p1, Lcom/hz/actor/Mercenary;->icon3:I

    goto :goto_0
.end method


# virtual methods
.method public getClone()Lcom/hz/actor/Monster;
    .locals 3

    .prologue
    .line 544
    new-instance v0, Lcom/hz/actor/Mercenary;

    invoke-direct {v0}, Lcom/hz/actor/Mercenary;-><init>()V

    .line 545
    .local v0, "mercenary":Lcom/hz/actor/Mercenary;
    invoke-super {p0, v0}, Lcom/hz/actor/Monster;->setMonsterData(Lcom/hz/actor/Monster;)V

    .line 547
    iget-short v1, p0, Lcom/hz/actor/Mercenary;->groupId:S

    iput-short v1, v0, Lcom/hz/actor/Mercenary;->groupId:S

    .line 548
    iget-byte v1, p0, Lcom/hz/actor/Mercenary;->strength:B

    iput-byte v1, v0, Lcom/hz/actor/Mercenary;->strength:B

    .line 549
    iget v1, p0, Lcom/hz/actor/Mercenary;->hp:I

    iput v1, v0, Lcom/hz/actor/Mercenary;->hp:I

    .line 550
    iget v1, p0, Lcom/hz/actor/Mercenary;->mp:I

    iput v1, v0, Lcom/hz/actor/Mercenary;->mp:I

    .line 551
    iget-wide v1, p0, Lcom/hz/actor/Mercenary;->expireTime1:J

    iput-wide v1, v0, Lcom/hz/actor/Mercenary;->expireTime1:J

    .line 552
    iget-byte v1, p0, Lcom/hz/actor/Mercenary;->job:B

    iput-byte v1, v0, Lcom/hz/actor/Mercenary;->job:B

    .line 553
    iget-object v1, p0, Lcom/hz/actor/Mercenary;->info:Ljava/lang/String;

    iput-object v1, v0, Lcom/hz/actor/Mercenary;->info:Ljava/lang/String;

    .line 555
    return-object v0
.end method

.method public getCoolDownTime(Z)Ljava/lang/String;
    .locals 6
    .param p1, "isShop"    # Z

    .prologue
    const/4 v5, 0x1

    .line 192
    iget-wide v1, p0, Lcom/hz/actor/Mercenary;->expireTime1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 196
    const-string v1, "0 ph\u00fat"

    .line 203
    :goto_0
    return-object v1

    .line 199
    :cond_0
    if-eqz p1, :cond_1

    .line 200
    iget-wide v1, p0, Lcom/hz/actor/Mercenary;->expireTime1:J

    long-to-int v1, v1

    invoke-static {v1, v5}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_1
    iget-wide v1, p0, Lcom/hz/actor/Mercenary;->expireTime1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 203
    .local v0, "min":I
    invoke-static {v0, v5}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public refreshWorldMercenaryData()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hz/actor/Mercenary;->worldMer:Lcom/hz/actor/Mercenary;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/hz/actor/Mercenary;->worldMer:Lcom/hz/actor/Mercenary;

    iget v1, p0, Lcom/hz/actor/Mercenary;->hp:I

    iput v1, v0, Lcom/hz/actor/Mercenary;->hp:I

    .line 52
    iget-object v0, p0, Lcom/hz/actor/Mercenary;->worldMer:Lcom/hz/actor/Mercenary;

    iget v1, p0, Lcom/hz/actor/Mercenary;->mp:I

    iput v1, v0, Lcom/hz/actor/Mercenary;->mp:I

    goto :goto_0
.end method
