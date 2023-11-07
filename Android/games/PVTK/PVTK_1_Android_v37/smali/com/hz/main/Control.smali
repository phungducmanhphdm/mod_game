.class public Lcom/hz/main/Control;
.super Ljava/lang/Object;
.source "Control.java"


# static fields
.field public static final AUTO_MOVE_END_STEP:I = 0x1

.field public static final BCONTROL_HAS_ANIME2:B = 0x4t

.field public static final BCONTROL_HAS_AREA_LIST:B = 0x1t

.field public static final BCONTROL_HAS_NAME:B = 0x2t

.field public static final DEFAULT_MOVE_SPEED:B = 0x6t

.field public static final FLAG_FINISH:I = 0x2

.field public static final FLAG_INIT:I = 0x4

.field public static final TYPE_BATTLE_ESCAPE:S = 0x20s

.field public static final TYPE_BATTLE_SELF_EFFECT:S = 0x22s

.field public static final TYPE_BATTLE_SKILL:S = 0x1fs

.field public static final TYPE_BATTLE_TARGET_EFFECT:S = 0x21s

.field public static final TYPE_CHANGE_STAGE:S = 0x51s

.field public static final TYPE_JUMP_MAP:S = 0x1s

.field public static final TYPE_MOVE:S = 0xfs

.field public static final TYPE_MOVE_TO:S = 0xes

.field public static final TYPE_NONE:S = 0x0s

.field public static final TYPE_PIXEL_MOVE:S = 0x50s

.field private static final noneControlData:[B


# instance fields
.field public byte0:B

.field public byte1:B

.field byte2:B

.field public controlStage:I

.field public counter:I

.field public datas:[B

.field public int0:I

.field public int1:I

.field maxCounter:I

.field model:Lcom/hz/actor/Model;

.field private spriteStatusFlag:I

.field subControlIndex:I

.field public subControls:[Lcom/hz/main/Control;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/hz/main/Control;->noneControlData:[B

    .line 672
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "_type"    # I

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/hz/main/Control;->type:I

    .line 92
    iput v0, p0, Lcom/hz/main/Control;->controlStage:I

    .line 95
    iput p1, p0, Lcom/hz/main/Control;->type:I

    .line 96
    return-void
.end method

.method public static createBattleEscape(IB)Lcom/hz/main/Control;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "isSuccess"    # B

    .prologue
    .line 493
    new-instance v0, Lcom/hz/main/Control;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 494
    .local v0, "control":Lcom/hz/main/Control;
    int-to-byte v1, p0

    iput-byte v1, v0, Lcom/hz/main/Control;->byte0:B

    .line 495
    iput-byte p1, v0, Lcom/hz/main/Control;->byte1:B

    .line 496
    return-object v0
.end method

.method public static createBattleTargetEffect(IIII)Lcom/hz/main/Control;
    .locals 1
    .param p0, "pos"    # I
    .param p1, "changeValue"    # I
    .param p2, "effectStatus"    # I
    .param p3, "animeID"    # I

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/hz/main/Control;->createBattleTargetEffect(ZIIII)Lcom/hz/main/Control;

    move-result-object v0

    return-object v0
.end method

.method public static createBattleTargetEffect(ZIIII)Lcom/hz/main/Control;
    .locals 2
    .param p0, "isSelfEffect"    # Z
    .param p1, "pos"    # I
    .param p2, "changeValue"    # I
    .param p3, "effectStatus"    # I
    .param p4, "animeID"    # I

    .prologue
    .line 503
    new-instance v0, Lcom/hz/main/Control;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 504
    .local v0, "control":Lcom/hz/main/Control;
    if-eqz p0, :cond_0

    .line 505
    const/16 v1, 0x22

    iput v1, v0, Lcom/hz/main/Control;->type:I

    .line 508
    :cond_0
    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/hz/main/Control;->byte0:B

    .line 509
    iput p3, v0, Lcom/hz/main/Control;->counter:I

    .line 510
    iput p2, v0, Lcom/hz/main/Control;->int0:I

    .line 511
    iput p4, v0, Lcom/hz/main/Control;->int1:I

    .line 512
    return-object v0
.end method

.method public static createBattleUseSkillControl(IIBBIIILjava/lang/String;)Lcom/hz/main/Control;
    .locals 7
    .param p0, "atcPos"    # I
    .param p1, "cursor"    # I
    .param p2, "area"    # B
    .param p3, "animePos"    # B
    .param p4, "animeStartType"    # I
    .param p5, "effectAnimeID"    # I
    .param p6, "lastEffectAnimeID"    # I
    .param p7, "name"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v1, Lcom/hz/main/Control;

    const/16 v5, 0x1f

    invoke-direct {v1, v5}, Lcom/hz/main/Control;-><init>(I)V

    .line 438
    .local v1, "control":Lcom/hz/main/Control;
    int-to-byte v5, p0

    iput-byte v5, v1, Lcom/hz/main/Control;->byte0:B

    .line 440
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 441
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 445
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, "setting":I
    if-ltz p2, :cond_0

    .line 451
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v4

    .line 453
    :cond_0
    if-lez p6, :cond_1

    .line 454
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v5, v6, v4}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v4

    .line 456
    :cond_1
    if-eqz p7, :cond_2

    .line 457
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v4

    .line 459
    :cond_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 462
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 463
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 466
    :cond_3
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 467
    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 468
    invoke-virtual {v2, p5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 469
    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 470
    invoke-virtual {v2, p6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 472
    :cond_4
    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 473
    invoke-virtual {v2, p7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 476
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v1, Lcom/hz/main/Control;->datas:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 486
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 483
    .end local v1    # "control":Lcom/hz/main/Control;
    .end local v4    # "setting":I
    :goto_0
    return-object v1

    .line 479
    .restart local v1    # "control":Lcom/hz/main/Control;
    :catch_0
    move-exception v3

    .line 485
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 486
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 483
    const/4 v1, 0x0

    goto :goto_0

    .line 484
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 485
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 486
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 487
    throw v5
.end method

.method public static createChangeStage(I)Lcom/hz/main/Control;
    .locals 2
    .param p0, "newStage"    # I

    .prologue
    .line 348
    new-instance v0, Lcom/hz/main/Control;

    const/16 v1, 0x51

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 349
    .local v0, "c":Lcom/hz/main/Control;
    iput p0, v0, Lcom/hz/main/Control;->int0:I

    .line 350
    return-object v0
.end method

.method public static createJumpMap(III)Lcom/hz/main/Control;
    .locals 2
    .param p0, "mapID"    # I
    .param p1, "gx"    # I
    .param p2, "gy"    # I

    .prologue
    .line 361
    new-instance v0, Lcom/hz/main/Control;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 362
    .local v0, "c":Lcom/hz/main/Control;
    iput p0, v0, Lcom/hz/main/Control;->int0:I

    .line 363
    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/hz/main/Control;->byte0:B

    .line 364
    int-to-byte v1, p2

    iput-byte v1, v0, Lcom/hz/main/Control;->byte1:B

    .line 365
    return-object v0
.end method

.method public static createMove(IBBB)Lcom/hz/main/Control;
    .locals 2
    .param p0, "modelID"    # I
    .param p1, "dir"    # B
    .param p2, "speed"    # B
    .param p3, "type"    # B

    .prologue
    .line 369
    new-instance v0, Lcom/hz/main/Control;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 370
    .local v0, "c":Lcom/hz/main/Control;
    iput-byte p2, v0, Lcom/hz/main/Control;->byte1:B

    .line 371
    iput-byte p1, v0, Lcom/hz/main/Control;->byte0:B

    .line 372
    iput-byte p3, v0, Lcom/hz/main/Control;->byte2:B

    .line 373
    iput p0, v0, Lcom/hz/main/Control;->int0:I

    .line 374
    return-object v0
.end method

.method public static createMoveTo(III)Lcom/hz/main/Control;
    .locals 2
    .param p0, "modelID"    # I
    .param p1, "targetGx"    # I
    .param p2, "targetGy"    # I

    .prologue
    .line 400
    new-instance v0, Lcom/hz/main/Control;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 401
    .local v0, "c":Lcom/hz/main/Control;
    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/hz/main/Control;->byte0:B

    .line 402
    int-to-byte v1, p2

    iput-byte v1, v0, Lcom/hz/main/Control;->byte1:B

    .line 403
    iput p0, v0, Lcom/hz/main/Control;->int0:I

    .line 404
    return-object v0
.end method

.method public static createPixelMove(IIIB)Lcom/hz/main/Control;
    .locals 1
    .param p0, "modelID"    # I
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I
    .param p3, "type"    # B

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hz/main/Control;->createPixelMove(IIIBI)Lcom/hz/main/Control;

    move-result-object v0

    return-object v0
.end method

.method public static createPixelMove(IIIBI)Lcom/hz/main/Control;
    .locals 2
    .param p0, "modelID"    # I
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I
    .param p3, "type"    # B
    .param p4, "groupId"    # I

    .prologue
    .line 381
    new-instance v0, Lcom/hz/main/Control;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lcom/hz/main/Control;-><init>(I)V

    .line 382
    .local v0, "c":Lcom/hz/main/Control;
    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/hz/main/Control;->byte0:B

    .line 383
    int-to-byte v1, p2

    iput-byte v1, v0, Lcom/hz/main/Control;->byte1:B

    .line 384
    iput-byte p3, v0, Lcom/hz/main/Control;->byte2:B

    .line 385
    iput p0, v0, Lcom/hz/main/Control;->int0:I

    .line 386
    iput p4, v0, Lcom/hz/main/Control;->int1:I

    .line 387
    return-object v0
.end method

.method private executeChangeStage()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hz/main/Control;->setStatus(IZ)V

    .line 120
    iget v0, p0, Lcom/hz/main/Control;->int0:I

    iput v0, p0, Lcom/hz/main/Control;->controlStage:I

    .line 121
    return-void
.end method

.method private executeJumpMap()V
    .locals 5

    .prologue
    .line 130
    iget v2, p0, Lcom/hz/main/Control;->int0:I

    .line 131
    .local v2, "mapID":I
    iget-byte v0, p0, Lcom/hz/main/Control;->byte0:B

    .line 132
    .local v0, "gx":B
    iget-byte v1, p0, Lcom/hz/main/Control;->byte1:B

    .line 134
    .local v1, "gy":B
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/hz/main/Control;->setStatus(IZ)V

    .line 136
    invoke-static {v2, v0, v1}, Lcom/hz/main/GameWorld;->doJumpMap(III)V

    .line 137
    return-void
.end method

.method private executeMove()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 253
    iget-byte v0, p0, Lcom/hz/main/Control;->byte0:B

    .line 254
    .local v0, "dir":B
    iget-byte v2, p0, Lcom/hz/main/Control;->byte1:B

    .line 255
    .local v2, "speed":B
    iget-byte v3, p0, Lcom/hz/main/Control;->byte2:B

    .line 256
    .local v3, "type":B
    iget v1, p0, Lcom/hz/main/Control;->int0:I

    .line 258
    .local v1, "modelID":I
    invoke-virtual {p0, v5}, Lcom/hz/main/Control;->isStatus(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 260
    invoke-direct {p0, v1, v3}, Lcom/hz/main/Control;->getMoveModel(IB)Lcom/hz/actor/Model;

    move-result-object v4

    iput-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    .line 261
    iget-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    if-nez v4, :cond_1

    .line 262
    invoke-virtual {p0, v7, v6}, Lcom/hz/main/Control;->setStatus(IZ)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/16 v4, 0x18

    div-int/2addr v4, v2

    iput v4, p0, Lcom/hz/main/Control;->maxCounter:I

    .line 269
    iget-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v4}, Lcom/hz/actor/Model;->getDir()B

    move-result v4

    if-eq v4, v0, :cond_2

    .line 270
    iget-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v4, v0}, Lcom/hz/actor/Model;->setDir(B)V

    .line 273
    :cond_2
    iget-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v4, v6}, Lcom/hz/actor/Model;->setAnimationByDir(Z)V

    .line 275
    invoke-virtual {p0, v5, v6}, Lcom/hz/main/Control;->setStatus(IZ)V

    .line 277
    :cond_3
    iget-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v4, v0, v2}, Lcom/hz/actor/Model;->move(BS)V

    .line 279
    iget v4, p0, Lcom/hz/main/Control;->counter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hz/main/Control;->counter:I

    .line 280
    iget v4, p0, Lcom/hz/main/Control;->counter:I

    iget v5, p0, Lcom/hz/main/Control;->maxCounter:I

    if-lt v4, v5, :cond_0

    .line 282
    iget-object v4, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v4, v6, v6}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 283
    invoke-virtual {p0, v7, v6}, Lcom/hz/main/Control;->setStatus(IZ)V

    goto :goto_0
.end method

.method private executeMoveTo()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 164
    iget-byte v9, p0, Lcom/hz/main/Control;->byte0:B

    .line 165
    .local v9, "targetGx":I
    iget-byte v10, p0, Lcom/hz/main/Control;->byte1:B

    .line 166
    .local v10, "targetGy":I
    iget v5, p0, Lcom/hz/main/Control;->int0:I

    .line 169
    .local v5, "modelID":I
    iget v11, p0, Lcom/hz/main/Control;->counter:I

    if-nez v11, :cond_8

    .line 171
    const/4 v11, 0x3

    invoke-direct {p0, v5, v11}, Lcom/hz/main/Control;->getMoveModel(IB)Lcom/hz/actor/Model;

    move-result-object v11

    iput-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    .line 172
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    if-nez v11, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11}, Lcom/hz/actor/Model;->isMember()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 182
    invoke-virtual {p0, v14, v13}, Lcom/hz/main/Control;->setStatus(IZ)V

    goto :goto_0

    .line 187
    :cond_2
    sget v11, Lcom/hz/main/GameCanvas;->gStage:I

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_3

    .line 188
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11, v13, v13}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 189
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11, v9, v10}, Lcom/hz/actor/Model;->setPosition(II)V

    .line 190
    invoke-virtual {p0, v14, v13}, Lcom/hz/main/Control;->setStatus(IZ)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11}, Lcom/hz/actor/Model;->getGx()I

    move-result v2

    .line 195
    .local v2, "gx":I
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11}, Lcom/hz/actor/Model;->getGy()I

    move-result v3

    .line 197
    .local v3, "gy":I
    const/4 v11, 0x0

    invoke-static {v2, v3, v9, v10, v11}, Lcom/hz/main/GameWorld;->searchPath(IIIIZ)Ljava/util/Vector;

    move-result-object v6

    .line 198
    .local v6, "moveVector":Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    .line 202
    .local v8, "size":I
    invoke-virtual {p0}, Lcom/hz/main/Control;->isAutoMoveEndStep()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 203
    add-int/lit8 v8, v8, -0x1

    .line 208
    :cond_4
    if-gtz v8, :cond_7

    .line 209
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11, v13, v13}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    .line 211
    invoke-virtual {p0}, Lcom/hz/main/Control;->isAutoMoveEndStep()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 212
    invoke-static {v9, v10}, Lcom/hz/main/GameWorld;->getNPC(II)Lcom/hz/actor/NPC;

    move-result-object v7

    .line 213
    .local v7, "npc":Lcom/hz/actor/NPC;
    if-eqz v7, :cond_5

    .line 214
    invoke-static {v7}, Lcom/hz/actor/NPC;->doNpc(Lcom/hz/actor/NPC;)Z

    .line 221
    .end local v7    # "npc":Lcom/hz/actor/NPC;
    :cond_5
    :goto_1
    invoke-virtual {p0, v14, v13}, Lcom/hz/main/Control;->setStatus(IZ)V

    goto :goto_0

    .line 218
    :cond_6
    iget-object v11, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v11, v9, v10}, Lcom/hz/actor/Model;->setPosition(II)V

    goto :goto_1

    .line 225
    :cond_7
    new-array v11, v8, [Lcom/hz/main/Control;

    iput-object v11, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    .line 226
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v8, :cond_9

    .line 232
    iput v13, p0, Lcom/hz/main/Control;->counter:I

    .line 236
    .end local v2    # "gx":I
    .end local v3    # "gy":I
    .end local v4    # "i":I
    .end local v6    # "moveVector":Ljava/util/Vector;
    .end local v8    # "size":I
    :cond_8
    invoke-virtual {p0}, Lcom/hz/main/Control;->executeSubControls()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 237
    invoke-virtual {p0, v14, v13}, Lcom/hz/main/Control;->setStatus(IZ)V

    .line 241
    invoke-virtual {p0}, Lcom/hz/main/Control;->isAutoMoveEndStep()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 242
    invoke-static {v9, v10}, Lcom/hz/main/GameWorld;->getNPC(II)Lcom/hz/actor/NPC;

    move-result-object v7

    .line 243
    .restart local v7    # "npc":Lcom/hz/actor/NPC;
    if-eqz v7, :cond_0

    .line 244
    invoke-static {v7}, Lcom/hz/actor/NPC;->doNpc(Lcom/hz/actor/NPC;)Z

    goto :goto_0

    .line 227
    .end local v7    # "npc":Lcom/hz/actor/NPC;
    .restart local v2    # "gx":I
    .restart local v3    # "gy":I
    .restart local v4    # "i":I
    .restart local v6    # "moveVector":Ljava/util/Vector;
    .restart local v8    # "size":I
    :cond_9
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 228
    .local v1, "dir":B
    const/4 v11, 0x6

    iget-object v12, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v12}, Lcom/hz/actor/Model;->getType()B

    move-result v12

    invoke-static {v5, v1, v11, v12}, Lcom/hz/main/Control;->createMove(IBBB)Lcom/hz/main/Control;

    move-result-object v0

    .line 229
    .local v0, "c":Lcom/hz/main/Control;
    iget-object v11, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    aput-object v0, v11, v4

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private executePixelMove()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 141
    iget-byte v3, p0, Lcom/hz/main/Control;->byte0:B

    .line 142
    .local v3, "moveX":I
    iget-byte v4, p0, Lcom/hz/main/Control;->byte1:B

    .line 143
    .local v4, "moveY":I
    iget-byte v5, p0, Lcom/hz/main/Control;->byte2:B

    .line 144
    .local v5, "type":B
    iget v2, p0, Lcom/hz/main/Control;->int0:I

    .line 145
    .local v2, "modelID":I
    iget v1, p0, Lcom/hz/main/Control;->int1:I

    .line 147
    .local v1, "groupID":I
    const/4 v6, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/hz/main/Control;->setStatus(IZ)V

    .line 149
    invoke-direct {p0, v2, v1, v5}, Lcom/hz/main/Control;->getMoveModel(IIB)Lcom/hz/actor/Model;

    move-result-object v6

    iput-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    .line 150
    iget-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    if-nez v6, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/hz/main/WorldPanel;->getDirByMovePixels(IIZ)B

    move-result v0

    .line 154
    .local v0, "dir":B
    iget-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v6}, Lcom/hz/actor/Model;->getDir()B

    move-result v6

    if-eq v6, v0, :cond_1

    .line 155
    iget-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v6, v0}, Lcom/hz/actor/Model;->setDir(B)V

    .line 157
    :cond_1
    iget-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v6, v7}, Lcom/hz/actor/Model;->setAnimationByDir(Z)V

    .line 158
    iget-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v6, v3, v4}, Lcom/hz/actor/Model;->move(II)V

    .line 159
    iget-object v6, p0, Lcom/hz/main/Control;->model:Lcom/hz/actor/Model;

    invoke-virtual {v6, v7, v7}, Lcom/hz/actor/Model;->setTabStatus(ZI)V

    goto :goto_0
.end method

.method public static fromBytes([B)Lcom/hz/main/Control;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 651
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 652
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 654
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Lcom/hz/main/Control;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-direct {v1, v4}, Lcom/hz/main/Control;-><init>(I)V

    .line 655
    .local v1, "c":Lcom/hz/main/Control;
    invoke-direct {v1, v2}, Lcom/hz/main/Control;->fromBytes(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 662
    .end local v1    # "c":Lcom/hz/main/Control;
    :goto_0
    return-object v1

    .line 658
    :catch_0
    move-exception v3

    .line 665
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 662
    const/4 v1, 0x0

    goto :goto_0

    .line 664
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 665
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 667
    throw v4
.end method

.method private fromBytes(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 635
    iget v0, p0, Lcom/hz/main/Control;->type:I

    packed-switch v0, :pswitch_data_0

    .line 647
    :goto_0
    return-void

    .line 637
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/hz/main/Control;->fromBytesBattleSkill(Ljava/io/DataInputStream;)V

    goto :goto_0

    .line 640
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/hz/main/Control;->fromBytesBattleEscape(Ljava/io/DataInputStream;)V

    goto :goto_0

    .line 644
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/hz/main/Control;->fromBytesBattleEffect(Ljava/io/DataInputStream;)V

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final fromBytesBattleEffect(Ljava/io/DataInputStream;)V
    .locals 2
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hz/main/Control;->byte0:B

    .line 554
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lcom/hz/main/Control;->counter:I

    .line 557
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hz/main/Control;->int0:I

    .line 568
    :cond_0
    :goto_0
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/main/Control;->int1:I

    .line 571
    :cond_1
    return-void

    .line 560
    :cond_2
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lcom/hz/main/Control;->int0:I

    goto :goto_0

    .line 563
    :cond_3
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/hz/main/Control;->int0:I

    goto :goto_0
.end method

.method private final fromBytesBattleEscape(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hz/main/Control;->byte0:B

    .line 580
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hz/main/Control;->byte1:B

    .line 581
    return-void
.end method

.method private final fromBytesBattleSkill(Ljava/io/DataInputStream;)V
    .locals 5
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p0, Lcom/hz/main/Control;->byte0:B

    .line 615
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 616
    .local v1, "dataSize":S
    if-lez v1, :cond_0

    .line 617
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/hz/main/Control;->datas:[B

    .line 618
    iget-object v4, p0, Lcom/hz/main/Control;->datas:[B

    invoke-virtual {p1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 621
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 622
    .local v3, "subControlNum":B
    if-lez v3, :cond_1

    .line 623
    new-array v4, v3, [Lcom/hz/main/Control;

    iput-object v4, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    .line 624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 631
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 626
    .restart local v2    # "i":I
    :cond_2
    new-instance v0, Lcom/hz/main/Control;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-direct {v0, v4}, Lcom/hz/main/Control;-><init>(I)V

    .line 627
    .local v0, "c":Lcom/hz/main/Control;
    invoke-direct {v0, p1}, Lcom/hz/main/Control;->fromBytes(Ljava/io/DataInputStream;)V

    .line 628
    iget-object v4, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    aput-object v0, v4, v2

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMoveModel(IB)Lcom/hz/actor/Model;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # B

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/hz/main/Control;->getMoveModel(IIB)Lcom/hz/actor/Model;

    move-result-object v0

    return-object v0
.end method

.method private getMoveModel(IIB)Lcom/hz/actor/Model;
    .locals 3
    .param p1, "id"    # I
    .param p2, "groupId"    # I
    .param p3, "type"    # B

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "model":Lcom/hz/actor/Model;
    packed-switch p3, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 322
    :pswitch_1
    invoke-static {p1}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 323
    goto :goto_0

    .line 325
    :pswitch_2
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/hz/main/GameWorld;->getNpcByID(IZ)Lcom/hz/actor/NPC;

    move-result-object v0

    .line 326
    goto :goto_0

    .line 329
    :pswitch_3
    invoke-static {p1}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 330
    .local v1, "player":Lcom/hz/actor/Model;
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPet()Lcom/hz/actor/Model;

    move-result-object v0

    .line 333
    goto :goto_0

    .line 337
    .end local v1    # "player":Lcom/hz/actor/Model;
    :pswitch_4
    invoke-static {p1}, Lcom/hz/main/GameWorld;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v1

    .line 338
    .restart local v1    # "player":Lcom/hz/actor/Model;
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1, p2}, Lcom/hz/actor/Model;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static removeControlByType(Ljava/util/Vector;I)V
    .locals 4
    .param p0, "controlList"    # Ljava/util/Vector;
    .param p1, "_type"    # I

    .prologue
    .line 719
    if-nez p0, :cond_1

    .line 738
    :cond_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 724
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 728
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 730
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 731
    .local v0, "c":Lcom/hz/main/Control;
    if-nez v0, :cond_3

    .line 728
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 734
    :cond_3
    iget v3, v0, Lcom/hz/main/Control;->type:I

    if-ne v3, p1, :cond_2

    .line 735
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private final toBytesBattleEffect(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    iget v0, p0, Lcom/hz/main/Control;->int0:I

    const/16 v1, 0x7530

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/hz/main/Control;->int0:I

    const/16 v1, -0x7530

    if-ge v0, v1, :cond_4

    .line 519
    :cond_0
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/hz/main/Control;->counter:I

    .line 528
    :goto_0
    iget v0, p0, Lcom/hz/main/Control;->int1:I

    if-eqz v0, :cond_1

    .line 529
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/hz/main/Control;->counter:I

    .line 532
    :cond_1
    iget-byte v0, p0, Lcom/hz/main/Control;->byte0:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 533
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 536
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 537
    iget v0, p0, Lcom/hz/main/Control;->int0:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 547
    :cond_2
    :goto_1
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget v0, p0, Lcom/hz/main/Control;->int1:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 550
    :cond_3
    return-void

    .line 521
    :cond_4
    iget v0, p0, Lcom/hz/main/Control;->int0:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/hz/main/Control;->int0:I

    const/16 v1, -0x78

    if-ge v0, v1, :cond_6

    .line 522
    :cond_5
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/hz/main/Control;->counter:I

    goto :goto_0

    .line 525
    :cond_6
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/hz/main/Control;->counter:I

    goto :goto_0

    .line 539
    :cond_7
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 540
    iget v0, p0, Lcom/hz/main/Control;->int0:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 542
    :cond_8
    iget v0, p0, Lcom/hz/main/Control;->counter:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget v0, p0, Lcom/hz/main/Control;->int0:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1
.end method

.method private final toBytesBattleEscape(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 574
    iget-byte v0, p0, Lcom/hz/main/Control;->byte0:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 575
    iget-byte v0, p0, Lcom/hz/main/Control;->byte1:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 576
    return-void
.end method

.method private final toBytesBattleSkill(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 585
    iget-byte v2, p0, Lcom/hz/main/Control;->byte0:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 588
    iget-object v2, p0, Lcom/hz/main/Control;->datas:[B

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 590
    iget-object v2, p0, Lcom/hz/main/Control;->datas:[B

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/hz/main/Control;->datas:[B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 597
    iget-object v2, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    if-eqz v2, :cond_1

    .line 599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 610
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 588
    :cond_2
    iget-object v2, p0, Lcom/hz/main/Control;->datas:[B

    array-length v2, v2

    goto :goto_0

    .line 596
    :cond_3
    iget-object v2, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    array-length v3, v2

    goto :goto_1

    .line 600
    .restart local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    aget-object v0, v2, v1

    .line 602
    .local v0, "c":Lcom/hz/main/Control;
    if-nez v0, :cond_5

    .line 603
    sget-object v2, Lcom/hz/main/Control;->noneControlData:[B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 599
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 607
    :cond_5
    invoke-virtual {v0}, Lcom/hz/main/Control;->toBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_3
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/hz/main/Control;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-direct {p0}, Lcom/hz/main/Control;->executeJumpMap()V

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-direct {p0}, Lcom/hz/main/Control;->executeMove()V

    goto :goto_0

    .line 107
    :sswitch_2
    invoke-direct {p0}, Lcom/hz/main/Control;->executePixelMove()V

    goto :goto_0

    .line 110
    :sswitch_3
    invoke-direct {p0}, Lcom/hz/main/Control;->executeMoveTo()V

    goto :goto_0

    .line 113
    :sswitch_4
    invoke-direct {p0}, Lcom/hz/main/Control;->executeChangeStage()V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_3
        0xf -> :sswitch_1
        0x50 -> :sswitch_2
        0x51 -> :sswitch_4
    .end sparse-switch
.end method

.method public executeSubControls()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hz/main/Control;->subControlIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/hz/main/Control;->subControlIndex:I

    iget-object v1, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    iget v1, p0, Lcom/hz/main/Control;->subControlIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 295
    iget v0, p0, Lcom/hz/main/Control;->subControlIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/main/Control;->subControlIndex:I

    .line 305
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    iget v1, p0, Lcom/hz/main/Control;->subControlIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/hz/main/Control;->execute()V

    .line 300
    iget-object v0, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    iget v1, p0, Lcom/hz/main/Control;->subControlIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hz/main/Control;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget v0, p0, Lcom/hz/main/Control;->subControlIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/main/Control;->subControlIndex:I

    goto :goto_1
.end method

.method public isAutoMoveEndStep()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 412
    iget v1, p0, Lcom/hz/main/Control;->int1:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatus(I)Z
    .locals 1
    .param p1, "bit"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/hz/main/Control;->spriteStatusFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoMoveEndStep()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    iput v0, p0, Lcom/hz/main/Control;->int1:I

    .line 409
    return-void
.end method

.method public setStatus(IZ)V
    .locals 2
    .param p1, "bit"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 64
    iget v0, p0, Lcom/hz/main/Control;->spriteStatusFlag:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hz/main/Control;->spriteStatusFlag:I

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget v0, p0, Lcom/hz/main/Control;->spriteStatusFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/hz/main/Control;->spriteStatusFlag:I

    .line 68
    :cond_0
    return-void
.end method

.method public setSubControlList([Lcom/hz/main/Control;)V
    .locals 0
    .param p1, "_subControls"    # [Lcom/hz/main/Control;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/hz/main/Control;->subControls:[Lcom/hz/main/Control;

    .line 90
    return-void
.end method

.method public toBytes()[B
    .locals 4

    .prologue
    .line 680
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 681
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 686
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v3, p0, Lcom/hz/main/Control;->type:I

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 688
    iget v3, p0, Lcom/hz/main/Control;->type:I

    packed-switch v3, :pswitch_data_0

    .line 700
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 708
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 709
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 706
    :goto_1
    return-object v3

    .line 690
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/hz/main/Control;->toBytesBattleSkill(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v2

    .line 706
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/hz/main/Control;->noneControlData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 709
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 693
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/hz/main/Control;->toBytesBattleEscape(Ljava/io/DataOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v3

    .line 708
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 709
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 710
    throw v3

    .line 697
    :pswitch_2
    :try_start_4
    invoke-direct {p0, v1}, Lcom/hz/main/Control;->toBytesBattleEffect(Ljava/io/DataOutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 688
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
