.class public Lcom/hz/core/PetComposite;
.super Ljava/lang/Object;
.source "PetComposite.java"


# instance fields
.field public ischoice:Z

.field public petbackicon:B

.field public petcomposite:Lcom/hz/core/PetComposite;

.field public petcompositepet:Lcom/hz/actor/MyPet;

.field public petgrade:B

.field public petid:I

.field public petlevel:B

.field public petname:Ljava/lang/String;

.field public petneedinfo:Ljava/lang/String;

.field public petneedmoney1:I

.field public petneedmoney2:I

.field public petneedmoney3:I

.field public petneednum:B

.field public petneegrade:B

.field public petslotpos:S

.field public pettype:S

.field public vcompositeList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetPetCompositeShopData()Ljava/util/Vector;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 43
    new-instance v4, Lcom/hz/net/Message;

    const/16 v10, 0x2cf5

    invoke-direct {v4, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 44
    .local v4, "msg":Lcom/hz/net/Message;
    sget-short v10, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v4, v10}, Lcom/hz/net/Message;->putShort(S)V

    .line 45
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v2, v9

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 49
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 50
    if-nez v4, :cond_2

    move-object v2, v9

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 56
    .local v2, "itemList":Ljava/util/Vector;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 61
    .local v7, "rs":B
    if-gez v7, :cond_3

    .line 62
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move-object v2, v9

    .line 63
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 71
    .local v8, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v8, :cond_0

    .line 72
    new-instance v5, Lcom/hz/core/PetComposite;

    invoke-direct {v5}, Lcom/hz/core/PetComposite;-><init>()V

    .line 73
    .local v5, "petComposite":Lcom/hz/core/PetComposite;
    new-instance v9, Lcom/hz/core/PetComposite;

    invoke-direct {v9}, Lcom/hz/core/PetComposite;-><init>()V

    iput-object v9, v5, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    .line 76
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v4, v9}, Lcom/hz/actor/MyPet;->fromBytesInfo(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v9

    iput-object v9, v5, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    .line 79
    iget-object v9, v5, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hz/actor/MyPet;->setName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v5, Lcom/hz/core/PetComposite;->petbackicon:B

    .line 89
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 94
    .local v1, "infosize":I
    iget-object v9, v5, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, v9, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    .line 95
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v1, :cond_4

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_4
    invoke-static {v4}, Lcom/hz/core/PetComposite;->getPetCompositefrombytes(Lcom/hz/net/Message;)Lcom/hz/core/PetComposite;

    move-result-object v6

    .line 97
    .local v6, "petCompositedata":Lcom/hz/core/PetComposite;
    if-eqz v6, :cond_5

    .line 98
    iget-object v9, v5, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v9, v9, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static doPetCompositeEnSure(SB[SLjava/lang/String;IIII)Z
    .locals 16
    .param p0, "pettype"    # S
    .param p1, "grade"    # B
    .param p2, "sloppos"    # [S
    .param p3, "strinfo"    # Ljava/lang/String;
    .param p4, "needmoney1"    # I
    .param p5, "needmoney2"    # I
    .param p6, "needmoney3"    # I
    .param p7, "petneedid"    # I

    .prologue
    .line 323
    sget-object v10, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 324
    .local v10, "player":Lcom/hz/actor/Player;
    if-nez v10, :cond_0

    .line 325
    const/4 v14, 0x0

    .line 413
    :goto_0
    return v14

    .line 327
    :cond_0
    iget-object v2, v10, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 328
    .local v2, "bag":Lcom/hz/core/PlayerBag;
    if-nez v2, :cond_1

    .line 329
    const/4 v14, 0x0

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v14

    if-nez v14, :cond_2

    .line 334
    const/4 v14, 0x0

    goto :goto_0

    .line 337
    :cond_2
    const/16 v14, 0xf

    invoke-static {v14}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v14

    .line 338
    const/4 v15, 0x3

    .line 337
    move-object/from16 v0, p3

    invoke-static {v14, v0, v15}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v1

    .line 339
    .local v1, "askResult":I
    const/16 v14, 0xa

    if-eq v1, v14, :cond_3

    .line 340
    const/4 v14, 0x0

    goto :goto_0

    .line 344
    :cond_3
    invoke-static/range {p4 .. p6}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v14

    if-nez v14, :cond_4

    .line 345
    const/4 v14, 0x0

    goto :goto_0

    .line 349
    :cond_4
    new-instance v9, Lcom/hz/net/Message;

    const/16 v14, 0x2cf8

    invoke-direct {v9, v14}, Lcom/hz/net/Message;-><init>(I)V

    .line 350
    .local v9, "msgsend":Lcom/hz/net/Message;
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 351
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 352
    sget-short v14, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v9, v14}, Lcom/hz/net/Message;->putShort(S)V

    .line 354
    move-object/from16 v0, p2

    array-length v14, v0

    int-to-byte v14, v14

    invoke-virtual {v9, v14}, Lcom/hz/net/Message;->putByte(B)V

    .line 359
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-lt v4, v14, :cond_5

    .line 366
    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 367
    move/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 368
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 370
    move/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 372
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 373
    const/4 v14, 0x0

    goto :goto_0

    .line 360
    :cond_5
    aget-short v14, p2, v4

    invoke-virtual {v9, v14}, Lcom/hz/net/Message;->putShort(S)V

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 376
    :cond_6
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 377
    if-nez v9, :cond_7

    .line 378
    const/4 v14, 0x0

    goto :goto_0

    .line 382
    :cond_7
    const/4 v14, 0x2

    invoke-static {v9, v14}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "getrewardstr":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 385
    .local v6, "money1":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 386
    .local v7, "money2":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 388
    .local v8, "money3":I
    iput v6, v10, Lcom/hz/actor/Player;->money1:I

    .line 389
    iput v7, v10, Lcom/hz/actor/Player;->money2:I

    .line 390
    iput v8, v10, Lcom/hz/actor/Player;->money3:I

    .line 393
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 394
    .local v11, "size":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    if-lt v5, v11, :cond_9

    .line 402
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 404
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 407
    const/16 v14, 0xc9

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v13

    .line 408
    .local v13, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v13, :cond_8

    .line 410
    invoke-static {v13, v10}, Lcom/hz/ui/UIHandler;->updateDataToPlayerMoney(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)V

    .line 413
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 395
    .end local v13    # "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_9
    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v12

    .line 396
    .local v12, "slotpos":S
    invoke-virtual {v2, v12}, Lcom/hz/core/PlayerBag;->removeItem(S)I

    .line 394
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static doPetCompositeImmediately(Lcom/hz/ui/UIHandler;Lcom/hz/actor/MyPet;)V
    .locals 12
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    .line 262
    if-nez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    new-instance v10, Lcom/hz/net/Message;

    const/16 v0, 0x2cf9

    invoke-direct {v10, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 268
    .local v10, "msg":Lcom/hz/net/Message;
    iget-short v0, p1, Lcom/hz/actor/MyPet;->pettype:S

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 269
    iget-byte v0, p1, Lcom/hz/actor/MyPet;->grade:B

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 270
    sget-short v0, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 271
    iget v0, p1, Lcom/hz/actor/MyPet;->petneedid:I

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 276
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 281
    if-eqz v10, :cond_0

    .line 286
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v9

    .line 288
    .local v9, "isfullfill":Z
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "strinfo":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 294
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 299
    .local v11, "temslopsize":B
    new-array v2, v11, [S

    .line 300
    .local v2, "temsloppos":[S
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v11, :cond_2

    .line 308
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 309
    .local v4, "money1":I
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 310
    .local v5, "money2":I
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 312
    .local v6, "money3":I
    iget-short v0, p1, Lcom/hz/actor/MyPet;->pettype:S

    iget-byte v1, p1, Lcom/hz/actor/MyPet;->grade:B

    iget v7, p1, Lcom/hz/actor/MyPet;->petneedid:I

    invoke-static/range {v0 .. v7}, Lcom/hz/core/PetComposite;->doPetCompositeEnSure(SB[SLjava/lang/String;IIII)Z

    goto :goto_0

    .line 301
    .end local v4    # "money1":I
    .end local v5    # "money2":I
    .end local v6    # "money3":I
    :cond_2
    invoke-virtual {v10}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    aput-short v0, v2, v8

    .line 300
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 315
    .end local v2    # "temsloppos":[S
    .end local v8    # "i":I
    .end local v11    # "temslopsize":B
    :cond_3
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doPetCompositeSelect(Lcom/hz/ui/UIHandler;Lcom/hz/core/PetComposite;)V
    .locals 5
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "petComposite"    # Lcom/hz/core/PetComposite;

    .prologue
    .line 214
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x2cf7

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 220
    .local v0, "msg":Lcom/hz/net/Message;
    iget-short v3, p1, Lcom/hz/core/PetComposite;->pettype:S

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putShort(S)V

    .line 221
    iget-byte v3, p1, Lcom/hz/core/PetComposite;->petgrade:B

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putByte(B)V

    .line 222
    sget-short v3, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putShort(S)V

    .line 223
    iget v3, p1, Lcom/hz/core/PetComposite;->petid:I

    invoke-virtual {v0, v3}, Lcom/hz/net/Message;->putInt(I)V

    .line 229
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 238
    new-instance v3, Lcom/hz/actor/MyPet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    iput-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    .line 241
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    invoke-static {v0, v3}, Lcom/hz/actor/MyPet;->fromBytesDetail(Lcom/hz/net/Message;Lcom/hz/actor/MyPet;)I

    .line 244
    invoke-virtual {v0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 247
    .local v2, "temtype":S
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 249
    .local v1, "petmaxage":B
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    iput-short v2, v3, Lcom/hz/actor/MyPet;->pettype:S

    .line 251
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    iput-byte v1, v3, Lcom/hz/actor/MyPet;->petmaxage:B

    .line 252
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    iget v4, p1, Lcom/hz/core/PetComposite;->petid:I

    iput v4, v3, Lcom/hz/actor/MyPet;->petneedid:I

    .line 253
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    invoke-virtual {v3}, Lcom/hz/actor/MyPet;->refreshWorldSprite()V

    .line 254
    iget-object v3, p1, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    const/4 v4, 0x4

    invoke-static {v3, p0, v4}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static doPetCompositeSelectMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/PetComposite;)V
    .locals 9
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "petComposite"    # Lcom/hz/core/PetComposite;

    .prologue
    .line 140
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p1, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v0, v0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v0, v0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 148
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 150
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v8, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 152
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p1, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v0, v0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    .line 160
    invoke-direct {p1}, Lcom/hz/core/PetComposite;->getPetCompositeNeedInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x37

    move-object v5, p0

    .line 160
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p1, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v0, v0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/core/PetComposite;

    .line 154
    .local v6, "compositedata":Lcom/hz/core/PetComposite;
    if-eqz v6, :cond_3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H\u1ee3p th\u00e0nh"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, v6, Lcom/hz/core/PetComposite;->petgrade:B

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 152
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static doPetCompositeSelectPetData(Lcom/hz/actor/MyPet;)Lcom/hz/core/PetComposite;
    .locals 7
    .param p0, "pet"    # Lcom/hz/actor/MyPet;

    .prologue
    const/4 v3, 0x0

    .line 420
    if-nez p0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v3

    .line 424
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x2cf6

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 425
    .local v2, "msg":Lcom/hz/net/Message;
    iget-short v6, p0, Lcom/hz/actor/MyPet;->pettype:S

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 426
    iget-byte v6, p0, Lcom/hz/actor/MyPet;->grade:B

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 427
    sget-short v6, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 428
    iget v6, p0, Lcom/hz/actor/MyPet;->petneedid:I

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 434
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_0

    .line 442
    new-instance v3, Lcom/hz/core/PetComposite;

    invoke-direct {v3}, Lcom/hz/core/PetComposite;-><init>()V

    .line 444
    .local v3, "petcomposite":Lcom/hz/core/PetComposite;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 449
    .local v1, "isfullfit":Z
    if-eqz v1, :cond_4

    .line 451
    iget v6, p0, Lcom/hz/actor/MyPet;->petneedid:I

    iput v6, v3, Lcom/hz/core/PetComposite;->petid:I

    .line 452
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v3, Lcom/hz/core/PetComposite;->petneednum:B

    .line 453
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v3, Lcom/hz/core/PetComposite;->pettype:S

    .line 454
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v3, Lcom/hz/core/PetComposite;->petgrade:B

    .line 456
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, v3, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    .line 458
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 463
    .local v5, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_2

    .line 477
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v3, Lcom/hz/core/PetComposite;->petneedmoney1:I

    .line 478
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v3, Lcom/hz/core/PetComposite;->petneedmoney2:I

    .line 479
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v3, Lcom/hz/core/PetComposite;->petneedmoney3:I

    .line 480
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/hz/core/PetComposite;->petneedinfo:Ljava/lang/String;

    goto :goto_0

    .line 464
    :cond_2
    new-instance v4, Lcom/hz/core/PetComposite;

    invoke-direct {v4}, Lcom/hz/core/PetComposite;-><init>()V

    .line 466
    .local v4, "petcompositedata":Lcom/hz/core/PetComposite;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    iput-boolean v6, v4, Lcom/hz/core/PetComposite;->ischoice:Z

    .line 467
    invoke-virtual {v2}, Lcom/hz/net/Message;->getShort()S

    move-result v6

    iput-short v6, v4, Lcom/hz/core/PetComposite;->petslotpos:S

    .line 468
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/hz/core/PetComposite;->petname:Ljava/lang/String;

    .line 469
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v4, Lcom/hz/core/PetComposite;->petlevel:B

    .line 470
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v4, Lcom/hz/core/PetComposite;->petgrade:B

    .line 472
    if-eqz v4, :cond_3

    .line 473
    iget-object v6, v3, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 463
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    .end local v4    # "petcompositedata":Lcom/hz/core/PetComposite;
    .end local v5    # "size":B
    :cond_4
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method private getPetCompositeInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 184
    const-string v1, ""

    .line 185
    .local v1, "strInfo":Ljava/lang/String;
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 186
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 207
    .end local v1    # "strInfo":Ljava/lang/String;
    .local v2, "strInfo":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 191
    .end local v2    # "strInfo":Ljava/lang/String;
    .restart local v1    # "strInfo":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/hz/core/PetComposite;->petgrade:B

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    iget-object v4, p0, Lcom/hz/core/PetComposite;->petname:Ljava/lang/String;

    iget-byte v5, p0, Lcom/hz/core/PetComposite;->petneegrade:B

    invoke-static {v5}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v3, p0, Lcom/hz/core/PetComposite;->petneednum:B

    if-lez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "X"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v5, p0, Lcom/hz/core/PetComposite;->petneednum:B

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget v3, p0, Lcom/hz/core/PetComposite;->petneedmoney1:I

    if-lez v3, :cond_1

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " KNB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hz/core/PetComposite;->petneedmoney1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_1
    iget v3, p0, Lcom/hz/core/PetComposite;->petneedmoney2:I

    if-lez v3, :cond_2

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " L\u00e1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hz/core/PetComposite;->petneedmoney2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_2
    iget v3, p0, Lcom/hz/core/PetComposite;->petneedmoney3:I

    if-lez v3, :cond_3

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " B\u1ea1c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hz/core/PetComposite;->petneedmoney3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v2, v1

    .line 207
    .end local v1    # "strInfo":Ljava/lang/String;
    .restart local v2    # "strInfo":Ljava/lang/String;
    goto/16 :goto_0

    .line 192
    .end local v2    # "strInfo":Ljava/lang/String;
    .restart local v1    # "strInfo":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_1
.end method

.method private getPetCompositeNeedInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "strInfo":Ljava/lang/String;
    const-string v3, "H\u1ee3p th\u00e0nh %U ph\u1ea9m ch\u1ea5t kh\u00e1c nhau c\u1ea7n nh\u1eefng t\u00e0i li\u1ec7u\uff1a"

    iget-object v4, p0, Lcom/hz/core/PetComposite;->petcompositepet:Lcom/hz/actor/MyPet;

    invoke-virtual {v4}, Lcom/hz/actor/MyPet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v3, v3, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 177
    return-object v2

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/hz/core/PetComposite;->petcomposite:Lcom/hz/core/PetComposite;

    iget-object v3, v3, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PetComposite;

    .line 172
    .local v0, "compositedata":Lcom/hz/core/PetComposite;
    if-eqz v0, :cond_1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v0}, Lcom/hz/core/PetComposite;->getPetCompositeInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPetCompositefrombytes(Lcom/hz/net/Message;)Lcom/hz/core/PetComposite;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lcom/hz/core/PetComposite;

    invoke-direct {v0}, Lcom/hz/core/PetComposite;-><init>()V

    .line 117
    .local v0, "petComposite":Lcom/hz/core/PetComposite;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PetComposite;->petid:I

    .line 118
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/PetComposite;->petname:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/PetComposite;->pettype:S

    .line 120
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/PetComposite;->petgrade:B

    .line 121
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/PetComposite;->petneednum:B

    .line 122
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PetComposite;->petneedmoney1:I

    .line 123
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PetComposite;->petneedmoney2:I

    .line 124
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PetComposite;->petneedmoney3:I

    .line 125
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/PetComposite;->petneegrade:B

    goto :goto_0
.end method


# virtual methods
.method public getEnSureSelectInfo()Ljava/lang/String;
    .locals 15

    .prologue
    .line 598
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 599
    .local v3, "player":Lcom/hz/actor/Player;
    if-nez v3, :cond_0

    .line 600
    const-string v11, ""

    .line 648
    :goto_0
    return-object v11

    .line 603
    :cond_0
    const-string v7, ""

    .line 606
    .local v7, "strsureinfo":Ljava/lang/String;
    iget v11, p0, Lcom/hz/core/PetComposite;->petneedmoney1:I

    if-lez v11, :cond_1

    .line 607
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "KNB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/hz/actor/Player;->money1:I

    iget v13, p0, Lcom/hz/core/PetComposite;->petneedmoney1:I

    const/16 v14, 0xb

    invoke-virtual {p0, v12, v13, v14}, Lcom/hz/core/PetComposite;->getMoneyStr(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 611
    :cond_1
    iget v11, p0, Lcom/hz/core/PetComposite;->petneedmoney2:I

    if-lez v11, :cond_2

    .line 612
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "L\u00e1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/hz/actor/Player;->money2:I

    iget v13, p0, Lcom/hz/core/PetComposite;->petneedmoney2:I

    const/16 v14, 0xc

    invoke-virtual {p0, v12, v13, v14}, Lcom/hz/core/PetComposite;->getMoneyStr(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 616
    :cond_2
    iget v11, p0, Lcom/hz/core/PetComposite;->petneedmoney3:I

    if-lez v11, :cond_3

    .line 617
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "B\u1ea1c"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/hz/actor/Player;->money3:I

    iget v13, p0, Lcom/hz/core/PetComposite;->petneedmoney3:I

    const/16 v14, 0xd

    invoke-virtual {p0, v12, v13, v14}, Lcom/hz/core/PetComposite;->getMoneyStr(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 620
    :cond_3
    iget-object v11, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 621
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 622
    .local v10, "tempv":Ljava/util/Vector;
    iget-object v11, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v8, v11, [I

    .line 624
    .local v8, "tempcount":[I
    const/4 v5, 0x0

    .line 625
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v11, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-lt v0, v11, :cond_5

    .line 642
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    if-lt v1, v11, :cond_8

    .line 648
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v5    # "size":I
    .end local v8    # "tempcount":[I
    .end local v10    # "tempv":Ljava/util/Vector;
    :cond_4
    const-string v11, "Ch\u1ecdn d\u00f9ng: \n%U\n\nSau khi h\u1ee3p th\u00e0nh tr\u00e2n th\u00fa t\u00e0i li\u1ec7u s\u1ebd bi\u1ebfn m\u1ea5t, kh\u00f4ng tr\u1ea3 l\u1ea1i."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/hz/core/PetComposite;->petneedinfo:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 626
    .restart local v0    # "i":I
    .restart local v5    # "size":I
    .restart local v8    # "tempcount":[I
    .restart local v10    # "tempv":Ljava/util/Vector;
    :cond_5
    iget-object v11, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hz/core/PetComposite;

    .line 627
    .local v9, "tempetcomposite":Lcom/hz/core/PetComposite;
    if-eqz v9, :cond_6

    iget-boolean v11, v9, Lcom/hz/core/PetComposite;->ischoice:Z

    if-eqz v11, :cond_6

    .line 628
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/c"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v12, v9, Lcom/hz/core/PetComposite;->petgrade:B

    invoke-static {v12}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/hz/core/PetComposite;->petname:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/p  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 629
    const/16 v12, 0xb1

    invoke-static {v12}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    iget-byte v14, v9, Lcom/hz/core/PetComposite;->petlevel:B

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 628
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 631
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 632
    invoke-virtual {v10, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 633
    const/4 v11, 0x1

    aput v11, v8, v5

    .line 634
    add-int/lit8 v5, v5, 0x1

    .line 625
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 636
    .restart local v6    # "str":Ljava/lang/String;
    :cond_7
    invoke-virtual {v10, v6}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 637
    .local v2, "myindex":I
    aget v11, v8, v2

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v2

    goto :goto_3

    .line 643
    .end local v2    # "myindex":I
    .end local v6    # "str":Ljava/lang/String;
    .end local v9    # "tempetcomposite":Lcom/hz/core/PetComposite;
    .restart local v1    # "j":I
    :cond_8
    invoke-virtual {v10, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 644
    .local v4, "s":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " \u00d7 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v8, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method public getMoneyStr(III)Ljava/lang/String;
    .locals 3
    .param p1, "nowmoney"    # I
    .param p2, "needmoney"    # I
    .param p3, "type"    # I

    .prologue
    .line 657
    const/high16 v0, 0xff0000

    .line 659
    .local v0, "color":I
    if-lt p1, p2, :cond_0

    .line 660
    packed-switch p3, :pswitch_data_0

    .line 670
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 673
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 662
    :pswitch_0
    const v0, 0xffff00

    .line 663
    goto :goto_0

    .line 665
    :pswitch_1
    const v0, 0x9acaff

    .line 666
    goto :goto_0

    .line 668
    :pswitch_2
    const v0, 0xc45712

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSelectInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 542
    const-string v3, ""

    .line 543
    .local v3, "strSelectInfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " \u00d7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/hz/core/PetComposite;->petneednum:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 546
    :cond_0
    const/4 v2, 0x0

    .line 548
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 556
    if-lez v2, :cond_2

    .line 557
    const v0, 0xff00

    .line 558
    .local v0, "color":I
    iget-byte v5, p0, Lcom/hz/core/PetComposite;->petneednum:B

    if-eq v2, v5, :cond_1

    .line 559
    const/high16 v0, 0xff0000

    .line 562
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .end local v0    # "color":I
    .end local v1    # "i":I
    .end local v2    # "k":I
    :cond_2
    const-string v5, "Ch\u1ecdn t\u00e0i li\u1ec7u h\u1ee3p th\u00e0nh %U"

    invoke-static {v5, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 549
    .restart local v1    # "i":I
    .restart local v2    # "k":I
    :cond_3
    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/core/PetComposite;

    .line 550
    .local v4, "tempetcomposite":Lcom/hz/core/PetComposite;
    if-nez v4, :cond_5

    .line 548
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_5
    iget-boolean v5, v4, Lcom/hz/core/PetComposite;->ischoice:Z

    if-eqz v5, :cond_4

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSelectslotposArray()[S
    .locals 5

    .prologue
    .line 573
    iget-object v4, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 574
    :cond_0
    const/4 v2, 0x0

    .line 590
    :cond_1
    return-object v2

    .line 576
    :cond_2
    iget-byte v4, p0, Lcom/hz/core/PetComposite;->petneednum:B

    new-array v2, v4, [S

    .line 577
    .local v2, "slotposarray":[S
    const/4 v1, 0x0

    .line 579
    .local v1, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 580
    iget-object v4, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/core/PetComposite;

    .line 581
    .local v3, "tempetcomposite":Lcom/hz/core/PetComposite;
    if-nez v3, :cond_4

    .line 579
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_4
    iget-boolean v4, v3, Lcom/hz/core/PetComposite;->ischoice:Z

    if-eqz v4, :cond_3

    .line 584
    iget-byte v4, p0, Lcom/hz/core/PetComposite;->petneednum:B

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_1

    .line 585
    iget-short v4, v3, Lcom/hz/core/PetComposite;->petslotpos:S

    aput-short v4, v2, v1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isFullFit()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 512
    iget-byte v5, p0, Lcom/hz/core/PetComposite;->petneednum:B

    if-gtz v5, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v3

    .line 516
    :cond_1
    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_3

    :cond_2
    move v3, v4

    .line 517
    goto :goto_0

    .line 520
    :cond_3
    const/4 v1, 0x0

    .line 522
    .local v1, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 531
    iget-byte v5, p0, Lcom/hz/core/PetComposite;->petneednum:B

    if-eq v1, v5, :cond_0

    move v3, v4

    .line 532
    goto :goto_0

    .line 523
    :cond_4
    iget-object v5, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/PetComposite;

    .line 524
    .local v2, "tempetcomposite":Lcom/hz/core/PetComposite;
    if-nez v2, :cond_6

    .line 522
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    :cond_6
    iget-boolean v5, v2, Lcom/hz/core/PetComposite;->ischoice:Z

    if-eqz v5, :cond_5

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public updateVcompositeList(Lcom/hz/core/PetComposite;)V
    .locals 4
    .param p1, "petcomposite"    # Lcom/hz/core/PetComposite;

    .prologue
    .line 493
    iget-object v2, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 505
    :cond_0
    return-void

    .line 496
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/PetComposite;

    .line 498
    .local v1, "tempetcomposite":Lcom/hz/core/PetComposite;
    if-nez v1, :cond_3

    .line 496
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_3
    iget-short v2, v1, Lcom/hz/core/PetComposite;->petslotpos:S

    iget-short v3, p1, Lcom/hz/core/PetComposite;->petslotpos:S

    if-ne v2, v3, :cond_2

    .line 502
    iget-object v2, p0, Lcom/hz/core/PetComposite;->vcompositeList:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1
.end method
