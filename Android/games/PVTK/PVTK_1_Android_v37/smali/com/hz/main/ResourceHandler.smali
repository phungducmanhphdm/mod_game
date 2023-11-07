.class public Lcom/hz/main/ResourceHandler;
.super Ljava/lang/Object;
.source "ResourceHandler.java"


# static fields
.field private static final ANI_PNG_PAK:I = 0x13

.field public static final MAX_MAP_CACHE:I = 0xc350

.field public static final PACKAGE_DATA_FR:I = 0x3

.field public static final PACKAGE_DATA_MAP:I = 0x1

.field public static final PACKAGE_DATA_PL:I = 0x2

.field public static mapImage:Ljava/util/Hashtable;

.field public static packFrData:[[B

.field public static packFrIDList:[S

.field public static packImgData:[[B

.field public static packImgIDList:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allClear()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 167
    return-void
.end method

.method public static checkMapCache()V
    .locals 6

    .prologue
    const v5, 0xc350

    .line 184
    sget-object v4, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-static {v4}, Lcom/hz/common/Tool;->countByteArrayHashSize(Ljava/util/Hashtable;)I

    move-result v0

    .line 191
    .local v0, "cacheSize":I
    if-ge v0, v5, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    sget-object v4, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 199
    .local v3, "key":Ljava/lang/Integer;
    sget-object v4, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 200
    .local v1, "data":[B
    if-eqz v1, :cond_2

    .line 204
    array-length v4, v1

    sub-int/2addr v0, v4

    .line 205
    sget-object v4, Lcom/hz/main/ResourceHandler;->mapImage:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    if-gt v0, v5, :cond_2

    goto :goto_0
.end method

.method public static clearPageData()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/ResourceHandler;->packImgData:[[B

    .line 48
    return-void
.end method

.method private static final formBytesPackData(Ljava/io/DataInputStream;)[[B
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 128
    .local v2, "length":S
    new-array v0, v2, [[B

    .line 129
    .local v0, "data":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 134
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 131
    .local v3, "size":S
    new-array v4, v3, [B

    aput-object v4, v0, v1

    .line 132
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final formBytesPackName(Ljava/io/DataInputStream;)[S
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 144
    .local v2, "length":S
    new-array v1, v2, [S

    .line 145
    .local v1, "idList":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 148
    return-object v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final fromBytesOffsetName(Ljava/io/DataInputStream;)[S
    .locals 1
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Lcom/hz/main/ResourceHandler;->formBytesPackName(Ljava/io/DataInputStream;)[S

    move-result-object v0

    return-object v0
.end method

.method public static getAniData(IILjava/lang/String;)[B
    .locals 13
    .param p0, "id"    # I
    .param p1, "pakId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const v12, 0xffff

    const/4 v9, 0x0

    .line 390
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".pd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/common/Utilities;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 390
    invoke-direct {v1, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 392
    .local v1, "dis":Ljava/io/DataInputStream;
    if-nez v1, :cond_0

    move-object v0, v9

    .line 431
    .end local v1    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return-object v0

    .line 396
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :cond_0
    invoke-static {v1}, Lcom/hz/main/ResourceHandler;->formBytesPackName(Ljava/io/DataInputStream;)[S

    move-result-object v5

    .line 397
    .local v5, "idList":[S
    invoke-static {v5, p0}, Lcom/hz/common/Tool;->binarySearch([SI)I

    move-result v6

    .line 405
    .local v6, "index":I
    if-gez v6, :cond_1

    move-object v0, v9

    .line 409
    goto :goto_0

    .line 412
    :cond_1
    invoke-static {v1}, Lcom/hz/main/ResourceHandler;->fromBytesOffsetName(Ljava/io/DataInputStream;)[S

    move-result-object v4

    .line 413
    .local v4, "getOffsetList":[S
    if-nez v4, :cond_2

    move-object v0, v9

    .line 417
    goto :goto_0

    .line 419
    :cond_2
    aget-short v10, v4, v6

    and-int v8, v10, v12

    .line 420
    .local v8, "startOffset":I
    add-int/lit8 v10, v6, 0x1

    aget-short v10, v4, v10

    and-int v2, v10, v12

    .line 421
    .local v2, "endOffset":I
    sub-int v7, v2, v8

    .line 423
    .local v7, "readLength":I
    new-array v0, v7, [B

    .line 424
    .local v0, "array":[B
    int-to-long v10, v8

    invoke-virtual {v1, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    .line 426
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 427
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v0    # "array":[B
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "endOffset":I
    .end local v4    # "getOffsetList":[S
    .end local v5    # "idList":[S
    .end local v6    # "index":I
    .end local v7    # "readLength":I
    .end local v8    # "startOffset":I
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    move-object v0, v9

    .line 431
    goto :goto_0
.end method

.method public static getAniPlDataInPack(I)[B
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 339
    invoke-static {p0}, Lcom/hz/main/ResourceHandler;->getAniPlPakIDByIndex(I)I

    move-result v0

    .line 340
    .local v0, "pakId":I
    if-gez v0, :cond_0

    .line 344
    const/4 v1, 0x0

    .line 347
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/ani/"

    invoke-static {p0, v0, v1}, Lcom/hz/main/ResourceHandler;->getAniData(IILjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static final getAniPlPakIDByIndex(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 454
    const/16 v0, 0x1770

    if-ge p0, v0, :cond_0

    .line 455
    const/16 v0, 0xc8

    .line 469
    :goto_0
    return v0

    .line 457
    :cond_0
    const/16 v0, 0x1f40

    if-ge p0, v0, :cond_1

    .line 458
    const/16 v0, 0xc9

    goto :goto_0

    .line 460
    :cond_1
    const/16 v0, 0x20c1

    if-ge p0, v0, :cond_2

    .line 461
    const/16 v0, 0xca

    goto :goto_0

    .line 463
    :cond_2
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_3

    .line 464
    const/16 v0, 0xcb

    goto :goto_0

    .line 466
    :cond_3
    const/16 v0, 0x4e20

    if-ge p0, v0, :cond_4

    .line 467
    const/16 v0, 0xcc

    goto :goto_0

    .line 469
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getAniPngDataInPack(I)[B
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 351
    invoke-static {p0}, Lcom/hz/main/ResourceHandler;->getAniPngPakIDByIndex(I)I

    move-result v0

    .line 355
    .local v0, "pakId":I
    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/ani/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 360
    :cond_0
    if-gez v0, :cond_1

    .line 364
    const/4 v1, 0x0

    goto :goto_0

    .line 367
    :cond_1
    const-string v1, "/ani/"

    invoke-static {p0, v0, v1}, Lcom/hz/main/ResourceHandler;->getAniData(IILjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static final getAniPngPakIDByIndex(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 473
    const/16 v0, 0x7d0

    if-ge p0, v0, :cond_0

    .line 474
    const/16 v0, 0xa

    .line 573
    :goto_0
    return v0

    .line 476
    :cond_0
    const/16 v0, 0xfa0

    if-ge p0, v0, :cond_1

    .line 477
    const/16 v0, 0xb

    goto :goto_0

    .line 479
    :cond_1
    const/16 v0, 0x1388

    if-ge p0, v0, :cond_2

    .line 480
    const/16 v0, 0xc

    goto :goto_0

    .line 482
    :cond_2
    const/16 v0, 0x1770

    if-ge p0, v0, :cond_3

    .line 483
    const/16 v0, 0xd

    goto :goto_0

    .line 485
    :cond_3
    const/16 v0, 0x1b58

    if-ge p0, v0, :cond_4

    .line 486
    const/16 v0, 0xe

    goto :goto_0

    .line 488
    :cond_4
    const/16 v0, 0x1f40

    if-ge p0, v0, :cond_5

    .line 489
    const/16 v0, 0xf

    goto :goto_0

    .line 493
    :cond_5
    const/16 v0, 0x1f81

    if-ge p0, v0, :cond_6

    .line 494
    const/16 v0, 0x1e

    goto :goto_0

    .line 496
    :cond_6
    const/16 v0, 0x1fc1

    if-ge p0, v0, :cond_7

    .line 497
    const/16 v0, 0x1f

    goto :goto_0

    .line 499
    :cond_7
    const/16 v0, 0x2001

    if-ge p0, v0, :cond_8

    .line 500
    const/16 v0, 0x20

    goto :goto_0

    .line 502
    :cond_8
    const/16 v0, 0x2041

    if-ge p0, v0, :cond_9

    .line 503
    const/16 v0, 0x21

    goto :goto_0

    .line 505
    :cond_9
    const/16 v0, 0x2081

    if-ge p0, v0, :cond_a

    .line 506
    const/16 v0, 0x22

    goto :goto_0

    .line 508
    :cond_a
    const/16 v0, 0x20c1

    if-ge p0, v0, :cond_b

    .line 509
    const/16 v0, 0x23

    goto :goto_0

    .line 511
    :cond_b
    const/16 v0, 0x2101

    if-ge p0, v0, :cond_c

    .line 512
    const/16 v0, 0x24

    goto :goto_0

    .line 514
    :cond_c
    const/16 v0, 0x2141

    if-ge p0, v0, :cond_d

    .line 515
    const/16 v0, 0x25

    goto :goto_0

    .line 517
    :cond_d
    const/16 v0, 0x2181

    if-ge p0, v0, :cond_e

    .line 518
    const/16 v0, 0x26

    goto :goto_0

    .line 520
    :cond_e
    const/16 v0, 0x21c1

    if-ge p0, v0, :cond_f

    .line 521
    const/16 v0, 0x27

    goto :goto_0

    .line 523
    :cond_f
    const/16 v0, 0x2201

    if-ge p0, v0, :cond_10

    .line 524
    const/16 v0, 0x28

    goto :goto_0

    .line 527
    :cond_10
    const/16 v0, 0x2281

    if-ge p0, v0, :cond_11

    .line 528
    const/16 v0, 0x29

    goto :goto_0

    .line 531
    :cond_11
    const/16 v0, 0x2ee0

    if-ge p0, v0, :cond_12

    .line 532
    const/16 v0, 0x10

    goto :goto_0

    .line 534
    :cond_12
    const/16 v0, 0x36b0

    if-ge p0, v0, :cond_14

    .line 538
    const/16 v0, 0x2f55

    if-lt p0, v0, :cond_13

    .line 539
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 543
    :cond_13
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 545
    :cond_14
    const/16 v0, 0x36ed

    if-ge p0, v0, :cond_15

    .line 546
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 548
    :cond_15
    const/16 v0, 0x372d

    if-ge p0, v0, :cond_16

    .line 549
    const/16 v0, 0x31

    goto/16 :goto_0

    .line 551
    :cond_16
    const/16 v0, 0x3a98

    if-ge p0, v0, :cond_17

    .line 552
    const/16 v0, 0x30

    goto/16 :goto_0

    .line 554
    :cond_17
    const/16 v0, 0x3e80

    if-ge p0, v0, :cond_18

    .line 555
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 557
    :cond_18
    const/16 v0, 0x4268

    if-ge p0, v0, :cond_19

    .line 558
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 562
    :cond_19
    const/16 v0, 0x46a2

    if-ge p0, v0, :cond_1a

    .line 563
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 566
    :cond_1a
    const/16 v0, 0x4a38

    if-ge p0, v0, :cond_1b

    .line 567
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 570
    :cond_1b
    const/16 v0, 0x4e20

    if-ge p0, v0, :cond_1c

    .line 571
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 573
    :cond_1c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getAniSprDataInPack(I)[B
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 370
    invoke-static {p0}, Lcom/hz/main/ResourceHandler;->getAniSprPakIDByIndex(I)I

    move-result v0

    .line 371
    .local v0, "pakId":I
    if-gez v0, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 378
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/ani/"

    invoke-static {p0, v0, v1}, Lcom/hz/main/ResourceHandler;->getAniData(IILjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static final getAniSprPakIDByIndex(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/16 v0, 0x64

    .line 577
    if-ge p0, v0, :cond_1

    .line 578
    const/16 v0, 0x32

    .line 641
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    const/16 v1, 0xc8

    if-lt p0, v1, :cond_0

    .line 583
    const/16 v1, 0x12c

    if-ge p0, v1, :cond_2

    .line 584
    const/16 v0, 0x65

    goto :goto_0

    .line 586
    :cond_2
    const/16 v1, 0x190

    if-ge p0, v1, :cond_3

    .line 587
    const/16 v0, 0x66

    goto :goto_0

    .line 589
    :cond_3
    const/16 v1, 0x1f4

    if-ge p0, v1, :cond_4

    .line 590
    const/16 v0, 0x67

    goto :goto_0

    .line 592
    :cond_4
    const/16 v1, 0x258

    if-ge p0, v1, :cond_5

    .line 593
    const/16 v0, 0x68

    goto :goto_0

    .line 595
    :cond_5
    const/16 v1, 0x26d

    if-ge p0, v1, :cond_6

    .line 596
    const/16 v0, 0x69

    goto :goto_0

    .line 598
    :cond_6
    const/16 v1, 0x2bc

    if-ge p0, v1, :cond_7

    .line 599
    const/16 v0, 0x62

    goto :goto_0

    .line 602
    :cond_7
    const/16 v1, 0x320

    if-ge p0, v1, :cond_8

    .line 603
    const/16 v0, 0x6a

    goto :goto_0

    .line 605
    :cond_8
    const/16 v1, 0x44c

    if-ge p0, v1, :cond_9

    .line 606
    const/16 v0, 0x6d

    goto :goto_0

    .line 609
    :cond_9
    const/16 v1, 0x514

    if-ge p0, v1, :cond_a

    .line 610
    const/16 v0, 0x6b

    goto :goto_0

    .line 612
    :cond_a
    const/16 v1, 0x578

    if-ge p0, v1, :cond_b

    .line 613
    const/16 v0, 0x6c

    goto :goto_0

    .line 618
    :cond_b
    const/16 v1, 0x7d0

    if-lt p0, v1, :cond_c

    const/16 v1, 0xfa0

    if-ge p0, v1, :cond_c

    .line 619
    add-int/lit16 v1, p0, -0x7d0

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v0, v1, 0x78

    .line 620
    .local v0, "resultID":I
    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    .line 622
    const/16 v1, 0xb93

    if-lt p0, v1, :cond_0

    const/16 v1, 0xbb8

    if-ge p0, v1, :cond_0

    .line 623
    const/16 v0, 0x82

    goto :goto_0

    .line 631
    .end local v0    # "resultID":I
    :cond_c
    const/16 v1, 0x7530

    if-lt p0, v1, :cond_d

    const v1, 0x88b7

    if-ge p0, v1, :cond_d

    .line 632
    add-int/lit16 v1, p0, -0x7530

    div-int/lit8 v1, v1, 0x64

    add-int/lit16 v0, v1, 0x96

    .line 633
    .restart local v0    # "resultID":I
    const/16 v1, 0x9a

    if-ne v0, v1, :cond_0

    .line 635
    const/16 v1, 0x76ff

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7724

    if-ge p0, v1, :cond_0

    .line 636
    const/16 v0, 0xb4

    goto/16 :goto_0

    .line 641
    .end local v0    # "resultID":I
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getPackImageData([[B[SI)[B
    .locals 3
    .param p0, "data"    # [[B
    .param p1, "idList"    # [S
    .param p2, "imageID"    # I

    .prologue
    const/4 v1, 0x0

    .line 283
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 286
    :cond_1
    invoke-static {p1, p2}, Lcom/hz/common/Tool;->binarySearch([SI)I

    move-result v0

    .line 294
    .local v0, "searchID":I
    if-ltz v0, :cond_0

    .line 297
    aget-object v1, p0, v0

    goto :goto_0
.end method

.method public static getRequireMapImageAndPlList()[S
    .locals 2

    .prologue
    .line 238
    sget-object v1, Lcom/hz/main/GameWorld;->gameMap:Lcom/hz/map/GameMap;

    .line 239
    .local v1, "map":Lcom/hz/map/GameMap;
    if-nez v1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-virtual {v1}, Lcom/hz/map/GameMap;->getReqImageAndPlList()[S

    move-result-object v0

    .line 249
    .local v0, "list":[S
    goto :goto_0
.end method

.method public static getUIDataInPack(I)[B
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 327
    invoke-static {p0}, Lcom/hz/main/ResourceHandler;->getUIPakIDByIndex(I)I

    move-result v0

    .line 328
    .local v0, "pakId":I
    if-gez v0, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 335
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/ui/"

    invoke-static {p0, v0, v1}, Lcom/hz/main/ResourceHandler;->getAniData(IILjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static final getUIPakIDByIndex(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 436
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    .line 437
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    .line 439
    :cond_0
    const/16 v0, 0x50

    if-ge p0, v0, :cond_1

    .line 440
    const/4 v0, 0x2

    goto :goto_0

    .line 442
    :cond_1
    const/16 v0, 0x6e

    if-ge p0, v0, :cond_2

    .line 443
    const/4 v0, 0x3

    goto :goto_0

    .line 445
    :cond_2
    const/16 v0, 0xa0

    if-ge p0, v0, :cond_3

    .line 446
    const/4 v0, 0x4

    goto :goto_0

    .line 448
    :cond_3
    const/16 v0, 0x12c

    if-ge p0, v0, :cond_4

    .line 449
    const/4 v0, 0x5

    goto :goto_0

    .line 451
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isMapImageInPack(S)Z
    .locals 2
    .param p0, "imageID"    # S

    .prologue
    .line 260
    sget-object v1, Lcom/hz/main/ResourceHandler;->packImgIDList:[S

    invoke-static {v1, p0}, Lcom/hz/common/Tool;->binarySearch([SI)I

    move-result v0

    .line 269
    .local v0, "searchID":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNeedChangeColorId(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 308
    const/16 v1, 0x2af8

    if-ge p0, v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    const/16 v1, 0x2ee0

    if-lt p0, v1, :cond_2

    const/16 v1, 0x32c8

    if-lt p0, v1, :cond_0

    .line 318
    :cond_2
    const/16 v1, 0x36b0

    if-lt p0, v1, :cond_3

    const/16 v1, 0x3a98

    if-lt p0, v1, :cond_0

    .line 322
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAllIDList()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 54
    const-string v0, "/map/"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hz/main/ResourceHandler;->loadPackageName(Ljava/lang/String;I)[S

    move-result-object v0

    sput-object v0, Lcom/hz/main/ResourceHandler;->packImgIDList:[S

    .line 56
    const-string v0, "/ani/"

    invoke-static {v0, v2}, Lcom/hz/main/ResourceHandler;->loadPackageName(Ljava/lang/String;I)[S

    move-result-object v0

    sput-object v0, Lcom/hz/main/ResourceHandler;->packFrIDList:[S

    .line 57
    const-string v0, "/ani/"

    invoke-static {v0, v2}, Lcom/hz/main/ResourceHandler;->loadPackageData(Ljava/lang/String;I)[[B

    move-result-object v0

    sput-object v0, Lcom/hz/main/ResourceHandler;->packFrData:[[B

    .line 58
    return-void
.end method

.method public static loadPackageData(Ljava/lang/String;I)[[B
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "packID"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/hz/common/Utilities;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/hz/main/ResourceHandler;->formBytesPackData(Ljava/io/DataInputStream;)[[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 84
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 87
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "path":Ljava/lang/String;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return-object v3

    .line 78
    :catch_0
    move-exception v3

    .line 84
    :goto_1
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 87
    const/4 v3, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v3

    .line 84
    :goto_2
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 85
    throw v3

    .line 83
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 78
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public static loadPackageName(Ljava/lang/String;I)[S
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "packID"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/hz/common/Utilities;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/hz/main/ResourceHandler;->formBytesPackName(Ljava/io/DataInputStream;)[S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 114
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 117
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "path":Ljava/lang/String;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return-object v3

    .line 108
    :catch_0
    move-exception v3

    .line 114
    :goto_1
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 117
    const/4 v3, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    .line 114
    :goto_2
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 115
    throw v3

    .line 113
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 108
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method
