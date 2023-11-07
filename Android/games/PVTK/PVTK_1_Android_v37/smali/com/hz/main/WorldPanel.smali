.class public Lcom/hz/main/WorldPanel;
.super Ljava/lang/Object;
.source "WorldPanel.java"


# static fields
.field private static final POINTER_NEARFY:[[B

.field public static gameworldPanelUI:Lcom/hz/ui/UIHandler;

.field public static myMoveVector:Ljava/util/Vector;

.field private static pointNpcId:S


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    .line 43
    sput-short v6, Lcom/hz/main/WorldPanel;->pointNpcId:S

    .line 284
    const/16 v0, 0x19

    new-array v0, v0, [[B

    .line 285
    new-array v1, v3, [B

    aput-object v1, v0, v5

    .line 286
    new-array v1, v3, [B

    aput-byte v6, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [B

    aput-byte v4, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [B

    aput-byte v6, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    aput-byte v4, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 287
    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    aput-byte v7, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 288
    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    aput-byte v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    .line 284
    sput-object v0, Lcom/hz/main/WorldPanel;->POINTER_NEARFY:[[B

    .line 289
    return-void

    .line 286
    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        -0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 287
    nop

    :array_4
    .array-data 1
        -0x2t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x2t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x2t
        -0x2t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x1t
        -0x2t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2t
        -0x2t
    .end array-data

    .line 288
    nop

    :array_b
    .array-data 1
        0x2t
        -0x1t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_f
    .array-data 1
        -0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDirMoveVectorToPixelMove(Lcom/hz/actor/Model;ILjava/util/Vector;)Ljava/util/Vector;
    .locals 36
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "speed"    # I
    .param p2, "myMoveVector"    # Ljava/util/Vector;

    .prologue
    .line 368
    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    .line 369
    .local v26, "newVector":Ljava/util/Vector;
    if-nez p2, :cond_1

    .line 541
    :cond_0
    return-object v26

    .line 373
    :cond_1
    sget-object v16, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 374
    .local v16, "map":Lcom/hz/map/GameMap;
    if-eqz v16, :cond_0

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Model;->getPx()I

    move-result v29

    .line 380
    .local v29, "playerX":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Model;->getPy()I

    move-result v30

    .line 383
    .local v30, "playerY":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Model;->getGx()I

    move-result v9

    .line 384
    .local v9, "gx":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Model;->getGy()I

    move-result v10

    .line 385
    .local v10, "gy":I
    mul-int/lit8 v7, v9, 0x18

    .line 386
    .local v7, "gridPlayerX":I
    mul-int/lit8 v8, v10, 0x18

    .line 389
    .local v8, "gridPlayerY":I
    sub-int v34, v29, v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v35, v30, v8

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    add-int v17, v34, v35

    .line 390
    .local v17, "minDis":I
    move v5, v7

    .line 391
    .local v5, "findMinPlayerX":I
    move v6, v8

    .line 394
    .local v6, "findMinPlayerY":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v31

    .line 395
    .local v31, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :cond_2
    :goto_0
    move/from16 v0, v31

    if-lt v11, v0, :cond_5

    .line 495
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 497
    .local v15, "leaveMove":Ljava/util/Vector;
    move/from16 v0, v29

    if-eq v5, v0, :cond_3

    .line 499
    move/from16 v0, v29

    if-le v5, v0, :cond_10

    .line 501
    sub-int v13, v5, v29

    .local v13, "leavX":I
    :goto_1
    if-gtz v13, :cond_f

    .line 517
    .end local v13    # "leavX":I
    :cond_3
    move/from16 v0, v30

    if-eq v6, v0, :cond_4

    .line 519
    move/from16 v0, v30

    if-le v6, v0, :cond_12

    .line 521
    sub-int v14, v6, v30

    .local v14, "leavY":I
    :goto_2
    if-gtz v14, :cond_11

    .line 538
    .end local v14    # "leavY":I
    :cond_4
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v34

    add-int/lit8 v11, v34, -0x1

    :goto_3
    if-ltz v11, :cond_0

    .line 539
    invoke-virtual {v15, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 538
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 397
    .end local v15    # "leaveMove":Ljava/util/Vector;
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Byte;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 398
    .local v3, "dir":B
    add-int/lit8 v11, v11, 0x1

    .line 400
    const/16 v34, 0x8

    move/from16 v0, v34

    if-eq v3, v0, :cond_2

    .line 405
    const/16 v27, 0x8

    .line 406
    .local v27, "nextDir":B
    move/from16 v0, v31

    if-ge v11, v0, :cond_6

    .line 407
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Byte;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Byte;->byteValue()B

    move-result v27

    .line 410
    :cond_6
    const/4 v12, 0x1

    .line 413
    .local v12, "isTogether":Z
    const/16 v34, 0x8

    move/from16 v0, v27

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    move/from16 v0, v27

    if-ne v0, v3, :cond_8

    .line 414
    :cond_7
    const/4 v12, 0x0

    .line 417
    :cond_8
    move/from16 v0, v27

    invoke-static {v9, v10, v0}, Lcom/hz/main/WorldPanel;->getFaceXY(III)I

    move-result v4

    .line 418
    .local v4, "faceXY":I
    invoke-static {v4}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v34

    invoke-static {v4}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v35

    move-object/from16 v0, v16

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v34

    if-nez v34, :cond_9

    .line 419
    const/4 v12, 0x0

    .line 422
    :cond_9
    if-nez v12, :cond_c

    .line 424
    const/16 v18, 0x18

    .local v18, "moveCount":I
    :goto_4
    if-gtz v18, :cond_a

    .line 445
    invoke-static {v9, v10, v3}, Lcom/hz/main/WorldPanel;->getFaceXY(III)I

    move-result v4

    .line 446
    invoke-static {v4}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v9

    .line 447
    invoke-static {v4}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v10

    .line 449
    goto/16 :goto_0

    .line 425
    :cond_a
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 426
    .local v19, "moveDis":I
    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/hz/main/WorldPanel;->getMoveXByDir(BI)I

    move-result v20

    .line 427
    .local v20, "moveX":I
    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/hz/main/WorldPanel;->getMoveYByDir(BI)I

    move-result v23

    .line 428
    .local v23, "moveY":I
    new-instance v34, Ljava/lang/Integer;

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 431
    add-int v7, v7, v20

    .line 432
    add-int v8, v8, v23

    .line 433
    if-lez v17, :cond_b

    .line 434
    sub-int v34, v29, v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v35, v30, v8

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    add-int v28, v34, v35

    .line 435
    .local v28, "nextMinDis":I
    move/from16 v0, v28

    move/from16 v1, v17

    if-gt v0, v1, :cond_b

    .line 436
    move/from16 v17, v28

    .line 437
    move v5, v7

    .line 438
    move v6, v8

    .line 439
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->removeAllElements()V

    .line 443
    .end local v28    # "nextMinDis":I
    :cond_b
    sub-int v18, v18, p1

    goto :goto_4

    .line 453
    .end local v18    # "moveCount":I
    .end local v19    # "moveDis":I
    .end local v20    # "moveX":I
    .end local v23    # "moveY":I
    :cond_c
    const/16 v18, 0x18

    .restart local v18    # "moveCount":I
    :goto_5
    if-gtz v18, :cond_d

    .line 484
    invoke-static {v9, v10, v3}, Lcom/hz/main/WorldPanel;->getFaceXY(III)I

    move-result v4

    .line 485
    invoke-static {v4}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v9

    .line 486
    invoke-static {v4}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v10

    .line 487
    move/from16 v0, v27

    invoke-static {v9, v10, v0}, Lcom/hz/main/WorldPanel;->getFaceXY(III)I

    move-result v4

    .line 488
    invoke-static {v4}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v9

    .line 489
    invoke-static {v4}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v10

    .line 490
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 455
    :cond_d
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 456
    .restart local v19    # "moveDis":I
    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/hz/main/WorldPanel;->getMoveXByDir(BI)I

    move-result v21

    .line 457
    .local v21, "moveX1":I
    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/hz/main/WorldPanel;->getMoveYByDir(BI)I

    move-result v24

    .line 459
    .local v24, "moveY1":I
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/hz/main/WorldPanel;->getMoveXByDir(BI)I

    move-result v22

    .line 460
    .local v22, "moveX2":I
    move/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/hz/main/WorldPanel;->getMoveYByDir(BI)I

    move-result v25

    .line 462
    .local v25, "moveY2":I
    add-int v20, v21, v22

    .line 463
    .restart local v20    # "moveX":I
    add-int v23, v24, v25

    .line 464
    .restart local v23    # "moveY":I
    new-instance v34, Ljava/lang/Integer;

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 468
    add-int v7, v7, v20

    .line 469
    add-int v8, v8, v23

    .line 470
    if-lez v17, :cond_e

    .line 471
    sub-int v34, v29, v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v35, v30, v8

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    add-int v28, v34, v35

    .line 472
    .restart local v28    # "nextMinDis":I
    move/from16 v0, v28

    move/from16 v1, v17

    if-gt v0, v1, :cond_e

    .line 473
    move/from16 v17, v28

    .line 474
    move v5, v7

    .line 475
    move v6, v8

    .line 476
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->removeAllElements()V

    .line 480
    .end local v28    # "nextMinDis":I
    :cond_e
    sub-int v18, v18, p1

    goto :goto_5

    .line 503
    .end local v3    # "dir":B
    .end local v4    # "faceXY":I
    .end local v12    # "isTogether":Z
    .end local v18    # "moveCount":I
    .end local v19    # "moveDis":I
    .end local v20    # "moveX":I
    .end local v21    # "moveX1":I
    .end local v22    # "moveX2":I
    .end local v23    # "moveY":I
    .end local v24    # "moveY1":I
    .end local v25    # "moveY2":I
    .end local v27    # "nextDir":B
    .restart local v13    # "leavX":I
    .restart local v15    # "leaveMove":Ljava/util/Vector;
    :cond_f
    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v34

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v32

    .line 504
    .local v32, "xMoveValue":I
    new-instance v34, Ljava/lang/Integer;

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 505
    sub-int v13, v13, p1

    goto/16 :goto_1

    .line 509
    .end local v13    # "leavX":I
    .end local v32    # "xMoveValue":I
    :cond_10
    sub-int v13, v29, v5

    .restart local v13    # "leavX":I
    :goto_6
    if-lez v13, :cond_3

    .line 511
    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v32

    .line 512
    .restart local v32    # "xMoveValue":I
    new-instance v34, Ljava/lang/Integer;

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 513
    sub-int v13, v13, p1

    goto :goto_6

    .line 523
    .end local v13    # "leavX":I
    .end local v32    # "xMoveValue":I
    .restart local v14    # "leavY":I
    :cond_11
    const/16 v34, 0x0

    move/from16 v0, p1

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v35

    invoke-static/range {v34 .. v35}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v33

    .line 524
    .local v33, "yMoveValue":I
    new-instance v34, Ljava/lang/Integer;

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 525
    sub-int v14, v14, p1

    goto/16 :goto_2

    .line 529
    .end local v14    # "leavY":I
    .end local v33    # "yMoveValue":I
    :cond_12
    sub-int v14, v30, v6

    .restart local v14    # "leavY":I
    :goto_7
    if-lez v14, :cond_4

    .line 531
    const/16 v34, 0x0

    move/from16 v0, p1

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v33

    .line 532
    .restart local v33    # "yMoveValue":I
    new-instance v34, Ljava/lang/Integer;

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 533
    sub-int v14, v14, p1

    goto :goto_7
.end method

.method public static checkNpc(Lcom/hz/actor/Player;IIZ)Z
    .locals 7
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I
    .param p3, "isPoint"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    const/4 v1, 0x0

    .line 570
    .local v1, "nextPos":[[I
    if-eqz p3, :cond_1

    .line 571
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/hz/main/WorldPanel;->setPointNpc(I)V

    .line 572
    new-array v1, v4, [[I

    .end local v1    # "nextPos":[[I
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput p1, v5, v3

    aput p2, v5, v4

    aput-object v5, v1, v3

    .line 577
    .restart local v1    # "nextPos":[[I
    :goto_0
    if-nez v1, :cond_2

    .line 620
    :cond_0
    :goto_1
    return v3

    .line 574
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hz/actor/Player;->getNextMovePos(II)[[I

    move-result-object v1

    goto :goto_0

    .line 582
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 585
    if-eqz p3, :cond_4

    .line 586
    aget-object v5, v1, v0

    aget v5, v5, v3

    aget-object v6, v1, v0

    aget v6, v6, v4

    invoke-static {v5, v6}, Lcom/hz/main/GameWorld;->getPointCheckNPC(II)Lcom/hz/actor/NPC;

    move-result-object v2

    .line 593
    .local v2, "npc":Lcom/hz/actor/NPC;
    :goto_3
    if-nez v2, :cond_5

    .line 582
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 590
    .end local v2    # "npc":Lcom/hz/actor/NPC;
    :cond_4
    aget-object v5, v1, v0

    aget v5, v5, v3

    aget-object v6, v1, v0

    aget v6, v6, v4

    invoke-static {v5, v6}, Lcom/hz/main/GameWorld;->getNPC(II)Lcom/hz/actor/NPC;

    move-result-object v2

    .restart local v2    # "npc":Lcom/hz/actor/NPC;
    goto :goto_3

    .line 598
    :cond_5
    iget-byte v5, v2, Lcom/hz/actor/NPC;->npcType:B

    if-eq v5, v4, :cond_3

    iget-byte v5, v2, Lcom/hz/actor/NPC;->npcType:B

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 602
    invoke-virtual {v2}, Lcom/hz/actor/NPC;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    if-eqz p3, :cond_6

    .line 609
    invoke-virtual {v2}, Lcom/hz/actor/NPC;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/hz/main/WorldPanel;->setPointNpc(I)V

    move v3, v4

    .line 610
    goto :goto_1

    .line 615
    :cond_6
    sget-object v5, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {}, Lcom/hz/main/WorldPanel;->getPointNpcId()S

    move-result v5

    invoke-virtual {v2}, Lcom/hz/actor/NPC;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 616
    :cond_7
    invoke-static {v2}, Lcom/hz/actor/NPC;->doNpc(Lcom/hz/actor/NPC;)Z

    move-result v3

    goto :goto_1
.end method

.method public static clearMyMove()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method

.method public static correctMoveDis(IIIII)I
    .locals 3
    .param p0, "px"    # I
    .param p1, "py"    # I
    .param p2, "moveX"    # I
    .param p3, "moveY"    # I
    .param p4, "speed"    # I

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "newMoveX":I
    const/4 v1, 0x0

    .line 629
    .local v1, "newMoveY":I
    if-eqz p2, :cond_0

    .line 630
    invoke-static {p0, p1, p2}, Lcom/hz/main/WorldPanel;->getCanMoveDisX(III)I

    move-result v0

    .line 634
    :cond_0
    if-eqz p3, :cond_1

    .line 635
    invoke-static {p0, p1, p3}, Lcom/hz/main/WorldPanel;->getCanMoveDisY(III)I

    move-result v1

    .line 639
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 640
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hz/main/WorldPanel;->findMoveDis(IIIII)I

    move-result v2

    .line 643
    :goto_0
    return v2

    :cond_2
    invoke-static {v0, v1}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v2

    goto :goto_0
.end method

.method private static doAskCancelAutoMove()V
    .locals 4

    .prologue
    .line 118
    const-string v1, "H\u1ee7y t\u00ecm \u0111\u01b0\u1eddng"

    const-string v2, "C\u00f3 h\u1ee7y t\u00ecm \u0111\u01b0\u1eddng kh\u00f4ng? "

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 119
    .local v0, "askResult":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 120
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1}, Lcom/hz/actor/Player;->clearAutoMoveList()V

    .line 122
    :cond_0
    return-void
.end method

.method private static findMoveDis(IIIII)I
    .locals 14
    .param p0, "px"    # I
    .param p1, "py"    # I
    .param p2, "moveX"    # I
    .param p3, "moveY"    # I
    .param p4, "defaultSpeed"    # I

    .prologue
    .line 985
    sget-object v9, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 986
    .local v9, "map":Lcom/hz/map/GameMap;
    if-nez v9, :cond_0

    .line 987
    const/4 v12, 0x0

    .line 1071
    :goto_0
    return v12

    .line 989
    :cond_0
    move v10, p0

    .line 990
    .local v10, "spx":I
    move v11, p1

    .line 991
    .local v11, "spy":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v12, v13, :cond_b

    .line 993
    if-nez p2, :cond_1

    .line 995
    const/4 v12, 0x0

    goto :goto_0

    .line 998
    :cond_1
    if-gez p2, :cond_6

    const/16 v12, -0x18

    :goto_1
    add-int/2addr p0, v12

    .line 1001
    const/4 v12, 0x3

    invoke-static {p0, p1, v12}, Lcom/hz/main/WorldPanel;->getCanNotMoveDisY(IIB)I

    move-result v7

    .line 1002
    .local v7, "disUp":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    .line 1005
    neg-int v12, v7

    invoke-static {v10, v11, v12}, Lcom/hz/main/WorldPanel;->getCanMoveDisY(III)I

    move-result v12

    neg-int v8, v12

    .line 1006
    .local v8, "disUp2":I
    if-eqz v8, :cond_2

    if-ge v8, v7, :cond_3

    .line 1008
    :cond_2
    const/4 v7, -0x1

    .line 1012
    .end local v8    # "disUp2":I
    :cond_3
    const/4 v12, 0x2

    invoke-static {p0, p1, v12}, Lcom/hz/main/WorldPanel;->getCanNotMoveDisY(IIB)I

    move-result v1

    .line 1013
    .local v1, "disDown":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_5

    .line 1015
    invoke-static {v10, v11, v1}, Lcom/hz/main/WorldPanel;->getCanMoveDisY(III)I

    move-result v2

    .line 1016
    .local v2, "disDown2":I
    if-eqz v2, :cond_4

    if-ge v2, v1, :cond_5

    .line 1018
    :cond_4
    const/4 v1, -0x1

    .line 1021
    .end local v2    # "disDown2":I
    :cond_5
    const/4 v12, -0x1

    if-ne v7, v12, :cond_7

    const/4 v12, -0x1

    if-ne v1, v12, :cond_7

    .line 1023
    const/4 v12, 0x0

    goto :goto_0

    .line 998
    .end local v1    # "disDown":I
    .end local v7    # "disUp":I
    :cond_6
    const/16 v12, 0x18

    goto :goto_1

    .line 1026
    .restart local v1    # "disDown":I
    .restart local v7    # "disUp":I
    :cond_7
    const/4 v12, -0x1

    if-eq v7, v12, :cond_8

    if-lt v7, v1, :cond_9

    :cond_8
    const/4 v12, -0x1

    if-ne v1, v12, :cond_a

    .line 1028
    :cond_9
    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    neg-int v13, v13

    invoke-static {v12, v13}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v12

    goto :goto_0

    .line 1031
    :cond_a
    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v12

    goto :goto_0

    .line 1036
    .end local v1    # "disDown":I
    .end local v7    # "disUp":I
    :cond_b
    if-nez p3, :cond_c

    .line 1038
    const/4 v12, 0x0

    goto :goto_0

    .line 1041
    :cond_c
    if-gez p3, :cond_11

    const/16 v12, -0x18

    :goto_2
    add-int/2addr p1, v12

    .line 1043
    const/4 v12, 0x1

    invoke-static {p0, p1, v12}, Lcom/hz/main/WorldPanel;->getCanNotMoveDisX(IIB)I

    move-result v3

    .line 1044
    .local v3, "disLeft":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_e

    .line 1046
    neg-int v12, v3

    invoke-static {v10, v11, v12}, Lcom/hz/main/WorldPanel;->getCanMoveDisX(III)I

    move-result v12

    neg-int v4, v12

    .line 1047
    .local v4, "disLeft2":I
    if-eqz v4, :cond_d

    if-ge v4, v3, :cond_e

    .line 1049
    :cond_d
    const/4 v3, -0x1

    .line 1052
    .end local v4    # "disLeft2":I
    :cond_e
    const/4 v12, 0x0

    invoke-static {p0, p1, v12}, Lcom/hz/main/WorldPanel;->getCanNotMoveDisX(IIB)I

    move-result v5

    .line 1053
    .local v5, "disRight":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_10

    .line 1055
    invoke-static {v10, v11, v5}, Lcom/hz/main/WorldPanel;->getCanMoveDisX(III)I

    move-result v6

    .line 1056
    .local v6, "disRight2":I
    if-eqz v6, :cond_f

    if-ge v6, v5, :cond_10

    .line 1058
    :cond_f
    const/4 v5, -0x1

    .line 1061
    .end local v6    # "disRight2":I
    :cond_10
    const/4 v12, -0x1

    if-ne v3, v12, :cond_12

    const/4 v12, -0x1

    if-ne v5, v12, :cond_12

    .line 1063
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1041
    .end local v3    # "disLeft":I
    .end local v5    # "disRight":I
    :cond_11
    const/16 v12, 0x18

    goto :goto_2

    .line 1066
    .restart local v3    # "disLeft":I
    .restart local v5    # "disRight":I
    :cond_12
    const/4 v12, -0x1

    if-eq v3, v12, :cond_13

    if-lt v3, v5, :cond_14

    :cond_13
    const/4 v12, -0x1

    if-ne v5, v12, :cond_15

    .line 1068
    :cond_14
    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    neg-int v12, v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v12

    goto/16 :goto_0

    .line 1071
    :cond_15
    move/from16 v0, p4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v12

    goto/16 :goto_0
.end method

.method public static getCanMoveDisX(III)I
    .locals 7
    .param p0, "px"    # I
    .param p1, "py"    # I
    .param p2, "maxMoveDis"    # I

    .prologue
    .line 655
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 656
    .local v4, "map":Lcom/hz/map/GameMap;
    if-nez v4, :cond_1

    .line 657
    const/4 v0, 0x0

    .line 746
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    div-int/lit8 v1, p0, 0x18

    .line 661
    .local v1, "gx":I
    rem-int/lit8 v3, p0, 0x18

    .line 663
    .local v3, "leaveTileWidth":I
    div-int/lit8 v2, p1, 0x18

    .line 664
    .local v2, "gy":I
    add-int/lit8 v6, p1, 0x18

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v5, v6, 0x18

    .line 666
    .local v5, "nextGy":I
    const/4 v0, 0x0

    .line 668
    .local v0, "dis":I
    if-gez p2, :cond_5

    .line 669
    if-eqz v3, :cond_2

    .line 685
    sub-int/2addr v0, v3

    .line 686
    if-gt v0, p2, :cond_2

    move v0, p2

    .line 687
    goto :goto_0

    .line 690
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 691
    :goto_1
    if-ltz v1, :cond_0

    .line 694
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 699
    if-eq v5, v2, :cond_3

    .line 700
    invoke-virtual {v4, v1, v5}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 705
    :cond_3
    add-int/lit8 v0, v0, -0x18

    .line 706
    if-gt v0, p2, :cond_4

    move v0, p2

    .line 707
    goto :goto_0

    .line 691
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 715
    :cond_5
    add-int/lit8 v6, p0, 0x18

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v1, v6, 0x18

    .line 717
    if-eqz v3, :cond_6

    .line 719
    rsub-int/lit8 v6, v3, 0x18

    add-int/2addr v0, v6

    .line 720
    if-lt v0, p2, :cond_6

    move v0, p2

    .line 721
    goto :goto_0

    .line 725
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 726
    :goto_2
    iget v6, v4, Lcom/hz/map/GameMap;->mapColumns:I

    if-ge v1, v6, :cond_0

    .line 729
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    if-eq v5, v2, :cond_7

    .line 735
    invoke-virtual {v4, v1, v5}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 740
    :cond_7
    add-int/lit8 v0, v0, 0x18

    .line 741
    if-lt v0, p2, :cond_8

    move v0, p2

    .line 742
    goto :goto_0

    .line 726
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getCanMoveDisY(III)I
    .locals 7
    .param p0, "px"    # I
    .param p1, "py"    # I
    .param p2, "maxMoveDis"    # I

    .prologue
    .line 757
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 758
    .local v4, "map":Lcom/hz/map/GameMap;
    if-nez v4, :cond_1

    .line 759
    const/4 v0, 0x0

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    div-int/lit8 v2, p1, 0x18

    .line 763
    .local v2, "gy":I
    rem-int/lit8 v3, p1, 0x18

    .line 765
    .local v3, "leaveTileHeight":I
    div-int/lit8 v1, p0, 0x18

    .line 766
    .local v1, "gx":I
    add-int/lit8 v6, p0, 0x18

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v5, v6, 0x18

    .line 768
    .local v5, "nextGx":I
    const/4 v0, 0x0

    .line 770
    .local v0, "dis":I
    if-gez p2, :cond_5

    .line 772
    if-eqz v3, :cond_2

    .line 775
    sub-int/2addr v0, v3

    .line 776
    if-gt v0, p2, :cond_2

    move v0, p2

    .line 777
    goto :goto_0

    .line 781
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 782
    :goto_1
    if-ltz v2, :cond_0

    .line 785
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 790
    if-eq v5, v1, :cond_3

    .line 791
    invoke-virtual {v4, v5, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 796
    :cond_3
    add-int/lit8 v0, v0, -0x18

    .line 797
    if-gt v0, p2, :cond_4

    move v0, p2

    .line 798
    goto :goto_0

    .line 782
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 806
    :cond_5
    add-int/lit8 v6, p1, 0x18

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v2, v6, 0x18

    .line 808
    if-eqz v3, :cond_6

    .line 810
    rsub-int/lit8 v6, v3, 0x18

    add-int/2addr v0, v6

    .line 811
    if-lt v0, p2, :cond_6

    move v0, p2

    .line 812
    goto :goto_0

    .line 816
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 817
    :goto_2
    iget v6, v4, Lcom/hz/map/GameMap;->mapRows:I

    if-ge v2, v6, :cond_0

    .line 820
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 825
    if-eq v5, v1, :cond_7

    .line 826
    invoke-virtual {v4, v5, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 831
    :cond_7
    add-int/lit8 v0, v0, 0x18

    .line 832
    if-lt v0, p2, :cond_8

    move v0, p2

    .line 833
    goto :goto_0

    .line 817
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static getCanNotMoveDisX(IIB)I
    .locals 9
    .param p0, "px"    # I
    .param p1, "py"    # I
    .param p2, "dir"    # B

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 850
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 851
    .local v4, "map":Lcom/hz/map/GameMap;
    if-nez v4, :cond_1

    move v0, v6

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 855
    :cond_1
    div-int/lit8 v1, p0, 0x18

    .line 856
    .local v1, "gx":I
    rem-int/lit8 v3, p0, 0x18

    .line 857
    .local v3, "leaveTileWidth":I
    add-int/lit8 v8, p0, 0x18

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v5, v8, 0x18

    .line 859
    .local v5, "nextGx":I
    div-int/lit8 v2, p1, 0x18

    .line 860
    .local v2, "gy":I
    if-ltz v2, :cond_2

    iget v8, v4, Lcom/hz/map/GameMap;->mapRows:I

    if-lt v2, v8, :cond_3

    :cond_2
    move v0, v7

    .line 861
    goto :goto_0

    .line 867
    :cond_3
    const/4 v0, 0x0

    .line 869
    .local v0, "dis":I
    const/4 v8, 0x1

    if-ne p2, v8, :cond_7

    .line 871
    if-eqz v3, :cond_5

    .line 873
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v5, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v6

    .line 874
    goto :goto_0

    .line 877
    :cond_4
    move v0, v3

    .line 880
    :cond_5
    sub-int v6, p0, v0

    div-int/lit8 v1, v6, 0x18

    .line 881
    :goto_1
    if-gez v1, :cond_6

    move v0, v7

    .line 889
    goto :goto_0

    .line 883
    :cond_6
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 887
    add-int/lit8 v0, v0, 0x18

    .line 881
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 893
    :cond_7
    if-nez p2, :cond_b

    .line 897
    if-eqz v3, :cond_9

    .line 899
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4, v5, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    .line 900
    goto :goto_0

    .line 902
    :cond_8
    rsub-int/lit8 v0, v3, 0x18

    .line 905
    :cond_9
    add-int v6, p0, v0

    div-int/lit8 v1, v6, 0x18

    .line 906
    :goto_2
    iget v6, v4, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v1, v6, :cond_a

    move v0, v7

    .line 913
    goto :goto_0

    .line 908
    :cond_a
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 911
    add-int/lit8 v0, v0, 0x18

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    move v0, v7

    .line 915
    goto :goto_0
.end method

.method private static getCanNotMoveDisY(IIB)I
    .locals 9
    .param p0, "px"    # I
    .param p1, "py"    # I
    .param p2, "dir"    # B

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 920
    sget-object v4, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 921
    .local v4, "map":Lcom/hz/map/GameMap;
    if-nez v4, :cond_1

    move v0, v6

    .line 981
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    div-int/lit8 v2, p1, 0x18

    .line 926
    .local v2, "gy":I
    rem-int/lit8 v3, p1, 0x18

    .line 927
    .local v3, "leaveTileHeight":I
    add-int/lit8 v8, p1, 0x18

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v5, v8, 0x18

    .line 929
    .local v5, "nextGy":I
    div-int/lit8 v1, p0, 0x18

    .line 930
    .local v1, "gx":I
    if-ltz v1, :cond_2

    iget v8, v4, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v1, v8, :cond_3

    :cond_2
    move v0, v7

    .line 931
    goto :goto_0

    .line 936
    :cond_3
    const/4 v0, 0x0

    .line 938
    .local v0, "dis":I
    const/4 v8, 0x3

    if-ne p2, v8, :cond_7

    .line 940
    if-eqz v3, :cond_5

    .line 942
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v1, v5}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v6

    .line 943
    goto :goto_0

    .line 945
    :cond_4
    move v0, v3

    .line 948
    :cond_5
    sub-int v6, p1, v0

    div-int/lit8 v2, v6, 0x18

    .line 949
    :goto_1
    if-gez v2, :cond_6

    move v0, v7

    .line 956
    goto :goto_0

    .line 951
    :cond_6
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 954
    add-int/lit8 v0, v0, 0x18

    .line 949
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 959
    :cond_7
    const/4 v8, 0x2

    if-ne p2, v8, :cond_b

    .line 963
    if-eqz v3, :cond_9

    .line 965
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4, v1, v5}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    .line 966
    goto :goto_0

    .line 968
    :cond_8
    rsub-int/lit8 v0, v3, 0x18

    .line 971
    :cond_9
    add-int v6, p1, v0

    div-int/lit8 v2, v6, 0x18

    .line 972
    :goto_2
    iget v6, v4, Lcom/hz/map/GameMap;->mapRows:I

    if-lt v2, v6, :cond_a

    move v0, v7

    .line 979
    goto :goto_0

    .line 974
    :cond_a
    invoke-virtual {v4, v1, v2}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 977
    add-int/lit8 v0, v0, 0x18

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move v0, v7

    .line 981
    goto :goto_0
.end method

.method public static getDirByKeyPressed(I)B
    .locals 1
    .param p0, "presskey"    # I

    .prologue
    .line 1082
    packed-switch p0, :pswitch_data_0

    .line 1095
    :pswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    .line 1084
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 1087
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1090
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1093
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1082
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDirByMovePixels(IIZ)B
    .locals 1
    .param p0, "moveX"    # I
    .param p1, "moveY"    # I
    .param p2, "isFullCheck"    # Z

    .prologue
    .line 1106
    if-lez p0, :cond_2

    .line 1108
    if-eqz p2, :cond_1

    .line 1109
    if-lez p1, :cond_0

    .line 1110
    const/4 v0, 0x7

    .line 1138
    :goto_0
    return v0

    .line 1112
    :cond_0
    if-gez p1, :cond_1

    .line 1113
    const/4 v0, 0x6

    goto :goto_0

    .line 1116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1118
    :cond_2
    if-gez p0, :cond_5

    .line 1120
    if-eqz p2, :cond_4

    .line 1121
    if-lez p1, :cond_3

    .line 1122
    const/4 v0, 0x5

    goto :goto_0

    .line 1124
    :cond_3
    if-gez p1, :cond_4

    .line 1125
    const/4 v0, 0x4

    goto :goto_0

    .line 1129
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1132
    :cond_5
    if-lez p1, :cond_6

    .line 1133
    const/4 v0, 0x2

    goto :goto_0

    .line 1135
    :cond_6
    if-gez p1, :cond_7

    .line 1136
    const/4 v0, 0x3

    goto :goto_0

    .line 1138
    :cond_7
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getFaceXY(III)I
    .locals 3
    .param p0, "gx"    # I
    .param p1, "gy"    # I
    .param p2, "dir"    # I

    .prologue
    .line 1142
    move v0, p0

    .local v0, "faceX":I
    move v1, p1

    .line 1143
    .local v1, "faceY":I
    packed-switch p2, :pswitch_data_0

    .line 1173
    :goto_0
    invoke-static {v0, v1}, Lcom/hz/common/Tool;->setKeyXY(II)I

    move-result v2

    return v2

    .line 1145
    :pswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 1146
    goto :goto_0

    .line 1148
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 1149
    goto :goto_0

    .line 1151
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 1152
    goto :goto_0

    .line 1154
    :pswitch_3
    add-int/lit8 v0, v0, -0x1

    .line 1155
    goto :goto_0

    .line 1157
    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    .line 1158
    add-int/lit8 v1, v1, -0x1

    .line 1159
    goto :goto_0

    .line 1161
    :pswitch_5
    add-int/lit8 v0, v0, -0x1

    .line 1162
    add-int/lit8 v1, v1, 0x1

    .line 1163
    goto :goto_0

    .line 1165
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 1166
    add-int/lit8 v1, v1, -0x1

    .line 1167
    goto :goto_0

    .line 1169
    :pswitch_7
    add-int/lit8 v0, v0, 0x1

    .line 1170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getMoveXByDir(BI)I
    .locals 0
    .param p0, "dir"    # B
    .param p1, "speed"    # I

    .prologue
    .line 1201
    packed-switch p0, :pswitch_data_0

    .line 1207
    const/4 p1, 0x0

    .end local p1    # "speed":I
    :goto_0
    :pswitch_0
    return p1

    .line 1203
    .restart local p1    # "speed":I
    :pswitch_1
    neg-int p1, p1

    goto :goto_0

    .line 1201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMoveYByDir(BI)I
    .locals 0
    .param p0, "dir"    # B
    .param p1, "speed"    # I

    .prologue
    .line 1212
    packed-switch p0, :pswitch_data_0

    .line 1218
    const/4 p1, 0x0

    .end local p1    # "speed":I
    :goto_0
    :pswitch_0
    return p1

    .line 1214
    .restart local p1    # "speed":I
    :pswitch_1
    neg-int p1, p1

    goto :goto_0

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getPointNpcId()S
    .locals 1

    .prologue
    .line 45
    sget-short v0, Lcom/hz/main/WorldPanel;->pointNpcId:S

    return v0
.end method

.method public static getReverseDir(I)B
    .locals 1
    .param p0, "dir"    # I

    .prologue
    .line 1178
    packed-switch p0, :pswitch_data_0

    .line 1190
    const/16 v0, 0x8

    :goto_0
    return v0

    .line 1181
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1183
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1185
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1187
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static handleKey(II)V
    .locals 11
    .param p0, "key"    # I
    .param p1, "presskey"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 126
    if-lez p1, :cond_1

    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->isAutoMove()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    invoke-static {}, Lcom/hz/main/WorldPanel;->doAskCancelAutoMove()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 201
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 205
    invoke-static {v4}, Lcom/hz/main/GameWorld;->getSpeed(Lcom/hz/actor/Model;)B

    move-result v7

    .line 208
    .local v7, "speed":I
    invoke-static {}, Lcom/hz/ui/UIHandler;->hasUI()Z

    move-result v8

    if-nez v8, :cond_2

    .line 209
    sget v8, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v8}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v5

    .line 210
    .local v5, "pointx":I
    sget v8, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v8}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v6

    .line 211
    .local v6, "pointy":I
    invoke-static {v4, v5, v6, v7}, Lcom/hz/main/WorldPanel;->handleWorldPointer(Lcom/hz/actor/Player;III)V

    .line 215
    .end local v5    # "pointx":I
    .end local v6    # "pointy":I
    :cond_2
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isControlListEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "movePixels":I
    invoke-static {p1}, Lcom/hz/main/WorldPanel;->getDirByKeyPressed(I)B

    move-result v0

    .line 222
    .local v0, "dir":B
    if-ne v0, v10, :cond_5

    .line 225
    sget-object v8, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 226
    sget-object v8, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 227
    sget-object v8, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 235
    :cond_3
    :goto_1
    if-ne v0, v10, :cond_4

    if-eqz v1, :cond_0

    .line 240
    :cond_4
    invoke-virtual {v4}, Lcom/hz/actor/Player;->isCanMove()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    invoke-static {}, Lcom/hz/ui/UIHandler;->hasUI()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 255
    sget-object v8, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0

    .line 232
    :cond_5
    sget-object v8, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1

    .line 261
    :cond_6
    if-nez v1, :cond_7

    .line 263
    invoke-static {v0, v7}, Lcom/hz/main/WorldPanel;->getMoveXByDir(BI)I

    move-result v2

    .line 264
    .local v2, "moveX":I
    invoke-static {v0, v7}, Lcom/hz/main/WorldPanel;->getMoveYByDir(BI)I

    move-result v3

    .line 266
    .local v3, "moveY":I
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getPx()I

    move-result v8

    .line 267
    invoke-virtual {v4}, Lcom/hz/actor/Player;->getPy()I

    move-result v9

    .line 265
    invoke-static {v8, v9, v2, v3, v7}, Lcom/hz/main/WorldPanel;->correctMoveDis(IIIII)I

    move-result v1

    .line 274
    .end local v2    # "moveX":I
    .end local v3    # "moveY":I
    :cond_7
    if-eqz v1, :cond_0

    .line 277
    invoke-static {v1}, Lcom/hz/common/Tool;->getXKey(I)I

    move-result v8

    int-to-short v8, v8

    .line 278
    invoke-static {v1}, Lcom/hz/common/Tool;->getYKey(I)I

    move-result v9

    int-to-short v9, v9

    .line 275
    invoke-static {v4, v8, v9, v0}, Lcom/hz/main/WorldPanel;->handleMoveKey(Lcom/hz/actor/Player;IIB)V

    goto/16 :goto_0
.end method

.method public static handleMoveKey(Lcom/hz/actor/Player;IIB)V
    .locals 3
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I
    .param p3, "dir"    # B

    .prologue
    .line 546
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/hz/main/WorldPanel;->checkNpc(Lcom/hz/actor/Player;IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/hz/actor/Player;->getType()B

    move-result v2

    invoke-static {v1, p1, p2, v2}, Lcom/hz/main/Control;->createPixelMove(IIIB)Lcom/hz/main/Control;

    move-result-object v0

    .line 558
    .local v0, "c":Lcom/hz/main/Control;
    invoke-virtual {p0, v0}, Lcom/hz/actor/Player;->addControl(Lcom/hz/main/Control;)V

    goto :goto_0
.end method

.method private static final handleWorldPanelMouse(II)Z
    .locals 5
    .param p0, "pointx"    # I
    .param p1, "pointy"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    sget-object v4, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    sget-object v4, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 61
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p0, p1}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 67
    .local v1, "touchGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 71
    invoke-static {p0, p1, v3}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 72
    sget-object v4, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4, v1}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 73
    sget-object v4, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v4, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    move v2, v3

    .line 75
    goto :goto_0
.end method

.method private static final handleWorldPointer(Lcom/hz/actor/Player;III)V
    .locals 2
    .param p0, "myPlayer"    # Lcom/hz/actor/Player;
    .param p1, "pointx"    # I
    .param p2, "pointy"    # I
    .param p3, "speed"    # I

    .prologue
    const/4 v1, -0x1

    .line 80
    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/hz/main/GameCanvas;->isEscortStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v1, p1, p2}, Lcom/hz/map/GameMap;->handleEscortMouse(II)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p1, p2}, Lcom/hz/main/WorldPanel;->handleWorldPanelMouse(II)Z

    move-result v0

    .line 92
    .local v0, "isHandleWorldPanel":Z
    if-eqz v0, :cond_3

    .line 94
    sget-object v1, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0

    .line 99
    :cond_3
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/hz/main/GameView;->setPointer(III)V

    .line 102
    invoke-virtual {p0}, Lcom/hz/actor/Player;->isCanMove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1}, Lcom/hz/actor/Player;->isAutoMove()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-static {}, Lcom/hz/main/WorldPanel;->doAskCancelAutoMove()V

    goto :goto_0

    .line 111
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcom/hz/main/WorldPanel;->updatePointerMoveVector(Lcom/hz/actor/Player;III)V

    goto :goto_0
.end method

.method public static setPointNpc(I)V
    .locals 1
    .param p0, "npcId"    # I

    .prologue
    .line 48
    int-to-short v0, p0

    sput-short v0, Lcom/hz/main/WorldPanel;->pointNpcId:S

    .line 49
    return-void
.end method

.method private static final updatePointerMoveVector(Lcom/hz/actor/Player;III)V
    .locals 15
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "_point_x"    # I
    .param p2, "_point_y"    # I
    .param p3, "speed"    # I

    .prologue
    .line 293
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    sget v1, Lcom/hz/map/GameMap;->offsetLeftX:I

    sub-int v7, p1, v1

    .line 298
    .local v7, "gx":I
    sget v1, Lcom/hz/map/GameMap;->offsetTopY:I

    sub-int v8, p2, v1

    .line 301
    .local v8, "gy":I
    div-int/lit8 v4, v7, 0x18

    .line 302
    .local v4, "endGx":I
    div-int/lit8 v5, v8, 0x18

    .line 305
    .local v5, "endGy":I
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    iget v1, v1, Lcom/hz/map/GameMap;->mapColumns:I

    if-lt v4, v1, :cond_2

    .line 306
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    iget v1, v1, Lcom/hz/map/GameMap;->mapColumns:I

    add-int/lit8 v4, v1, -0x1

    .line 308
    :cond_2
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    iget v1, v1, Lcom/hz/map/GameMap;->mapRows:I

    if-lt v5, v1, :cond_3

    .line 309
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    iget v1, v1, Lcom/hz/map/GameMap;->mapRows:I

    add-int/lit8 v5, v1, -0x1

    .line 313
    :cond_3
    const/4 v1, 0x1

    invoke-static {p0, v7, v8, v1}, Lcom/hz/main/WorldPanel;->checkNpc(Lcom/hz/actor/Player;IIZ)Z

    move-result v10

    .line 314
    .local v10, "isHaveNPCInPoint":Z
    if-eqz v10, :cond_4

    .line 316
    invoke-static {}, Lcom/hz/main/WorldPanel;->getPointNpcId()S

    move-result v1

    invoke-static {v1}, Lcom/hz/main/GameWorld;->getNpcByID(I)Lcom/hz/actor/NPC;

    move-result-object v14

    .line 317
    .local v14, "pointNPC":Lcom/hz/actor/NPC;
    if-eqz v14, :cond_4

    .line 318
    invoke-virtual {v14}, Lcom/hz/actor/NPC;->getGx()I

    move-result v4

    .line 319
    invoke-virtual {v14}, Lcom/hz/actor/NPC;->getGy()I

    move-result v5

    .line 324
    .end local v14    # "pointNPC":Lcom/hz/actor/NPC;
    :cond_4
    move v12, v4

    .line 325
    .local v12, "passGx":I
    move v13, v5

    .line 326
    .local v13, "passGy":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    sget-object v1, Lcom/hz/main/WorldPanel;->POINTER_NEARFY:[[B

    array-length v1, v1

    if-lt v9, v1, :cond_6

    .line 340
    :cond_5
    move v4, v12

    .line 341
    move v5, v13

    .line 343
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getGx()I

    move-result v2

    .line 344
    .local v2, "startGx":I
    invoke-virtual {p0}, Lcom/hz/actor/Player;->getGy()I

    move-result v3

    .line 346
    .local v3, "startGy":I
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 349
    const/16 v6, 0x18

    .line 346
    invoke-virtual/range {v1 .. v6}, Lcom/hz/map/GameMap;->findPath(IIIII)Ljava/util/Vector;

    move-result-object v11

    .line 356
    .local v11, "moveVector":Ljava/util/Vector;
    move/from16 v0, p3

    invoke-static {p0, v0, v11}, Lcom/hz/main/WorldPanel;->changeDirMoveVectorToPixelMove(Lcom/hz/actor/Model;ILjava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    sput-object v1, Lcom/hz/main/WorldPanel;->myMoveVector:Ljava/util/Vector;

    goto :goto_0

    .line 327
    .end local v2    # "startGx":I
    .end local v3    # "startGy":I
    .end local v11    # "moveVector":Ljava/util/Vector;
    :cond_6
    sget-object v1, Lcom/hz/main/WorldPanel;->POINTER_NEARFY:[[B

    aget-object v1, v1, v9

    const/4 v6, 0x0

    aget-byte v1, v1, v6

    add-int v12, v4, v1

    .line 328
    sget-object v1, Lcom/hz/main/WorldPanel;->POINTER_NEARFY:[[B

    aget-object v1, v1, v9

    const/4 v6, 0x1

    aget-byte v1, v1, v6

    add-int v13, v5, v1

    .line 329
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    invoke-virtual {v1, v12, v13}, Lcom/hz/map/GameMap;->isCanPass(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 333
    if-nez v9, :cond_7

    if-nez v10, :cond_5

    .line 336
    :cond_7
    sget-object v1, Lcom/hz/main/WorldPanel;->POINTER_NEARFY:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v9, v1, :cond_0

    .line 326
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
