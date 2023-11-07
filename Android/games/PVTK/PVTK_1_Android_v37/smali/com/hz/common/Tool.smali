.class public Lcom/hz/common/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field public static final DIVIDE_TEN_THOUSAND:I = 0x1

.field public static final DIVIDE_THOUSAND:I = 0x2

.field private static final MAX_SEED_VALUE:I = 0x2710

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 916
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/hz/common/Tool;->random:Ljava/util/Random;

    .line 1704
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V
    .locals 1
    .param p0, "menuList"    # Ljava/util/Vector;
    .param p1, "menu"    # Ljava/lang/String;
    .param p2, "eventList"    # Ljava/util/Vector;
    .param p3, "event"    # I

    .prologue
    .line 1562
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1563
    if-gtz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1564
    return-void

    .line 1563
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public static addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V
    .locals 1
    .param p0, "menuList"    # Ljava/util/Vector;
    .param p1, "menu"    # Ljava/lang/String;
    .param p2, "eventList"    # Ljava/util/Vector;
    .param p3, "event"    # I
    .param p4, "keyList"    # Ljava/util/Vector;
    .param p5, "hotKey"    # I

    .prologue
    .line 1566
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1567
    if-gtz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1568
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1569
    return-void

    .line 1567
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public static appendString([Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1075
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1077
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    .line 1078
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 1091
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1080
    .restart local v0    # "i":I
    :cond_1
    if-ltz v0, :cond_2

    array-length v2, p0

    if-lt v0, v2, :cond_3

    .line 1078
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_3
    aget-object v2, p0, v0

    if-eqz v2, :cond_2

    .line 1087
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static base256ToBase64(BBB)[B
    .locals 8
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 648
    and-int/lit16 v6, p0, 0xff

    shl-int/lit8 v6, v6, 0x10

    and-int/lit16 v7, p1, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v7, p2, 0xff

    or-int v5, v6, v7

    .line 650
    .local v5, "value":I
    and-int/lit8 v6, v5, 0x3f

    int-to-byte v4, v6

    .line 651
    .local v4, "s":B
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v3, v6

    .line 652
    .local v3, "r":B
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v2, v6

    .line 653
    .local v2, "q":B
    shr-int/lit8 v6, v5, 0x12

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v1, v6

    .line 655
    .local v1, "p":B
    const/4 v6, 0x4

    new-array v0, v6, [B

    const/4 v6, 0x0

    aput-byte v1, v0, v6

    const/4 v6, 0x1

    aput-byte v2, v0, v6

    const/4 v6, 0x2

    aput-byte v3, v0, v6

    const/4 v6, 0x3

    aput-byte v4, v0, v6

    .line 656
    .local v0, "ba":[B
    return-object v0
.end method

.method public static base64Tobase256(BBBB)[B
    .locals 7
    .param p0, "p"    # B
    .param p1, "q"    # B
    .param p2, "r"    # B
    .param p3, "s"    # B

    .prologue
    .line 669
    and-int/lit8 v5, p0, 0x3f

    shl-int/lit8 v5, v5, 0x12

    and-int/lit8 v6, p1, 0x3f

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    and-int/lit8 v6, p2, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/lit8 v6, p3, 0x3f

    or-int v4, v5, v6

    .line 671
    .local v4, "value":I
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v0, v5

    .line 672
    .local v0, "a":B
    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v1, v5

    .line 673
    .local v1, "b":B
    and-int/lit16 v5, v4, 0xff

    int-to-byte v3, v5

    .line 675
    .local v3, "c":B
    const/4 v5, 0x3

    new-array v2, v5, [B

    const/4 v5, 0x0

    aput-byte v0, v2, v5

    const/4 v5, 0x1

    aput-byte v1, v2, v5

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    .line 676
    .local v2, "ba":[B
    return-object v2
.end method

.method public static final binarySearch([SI)I
    .locals 5
    .param p0, "list"    # [S
    .param p1, "num"    # I

    .prologue
    const/4 v3, -0x1

    .line 1378
    if-nez p0, :cond_1

    move v1, v3

    .line 1402
    :cond_0
    :goto_0
    return v1

    .line 1379
    :cond_1
    const/4 v2, 0x0

    .line 1380
    .local v2, "startPos":I
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .line 1381
    .local v0, "endPos":I
    add-int v4, v2, v0

    shr-int/lit8 v1, v4, 0x1

    .line 1383
    .local v1, "m":I
    :goto_1
    if-le v2, v0, :cond_2

    move v1, v3

    .line 1402
    goto :goto_0

    .line 1391
    :cond_2
    aget-short v4, p0, v1

    if-eq p1, v4, :cond_0

    .line 1392
    aget-short v4, p0, v1

    if-le p1, v4, :cond_3

    .line 1394
    add-int/lit8 v2, v1, 0x1

    .line 1400
    :goto_2
    add-int v4, v2, v0

    shr-int/lit8 v1, v4, 0x1

    goto :goto_1

    .line 1398
    :cond_3
    add-int/lit8 v0, v1, -0x1

    goto :goto_2
.end method

.method public static byte2short(B)S
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 84
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method static byteArrayToHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # [B

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "ch":B
    const/4 v1, 0x0

    .line 474
    .local v1, "i":I
    if-eqz p0, :cond_0

    array-length v5, p0

    if-gtz v5, :cond_1

    .line 475
    :cond_0
    const/4 v4, 0x0

    .line 493
    :goto_0
    return-object v4

    .line 476
    :cond_1
    const/16 v5, 0x10

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "2"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "3"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "4"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "5"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "6"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "7"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9"

    aput-object v6, v3, v5

    const/16 v5, 0xa

    .line 477
    const-string v6, "A"

    aput-object v6, v3, v5

    const/16 v5, 0xb

    const-string v6, "B"

    aput-object v6, v3, v5

    const/16 v5, 0xc

    const-string v6, "C"

    aput-object v6, v3, v5

    const/16 v5, 0xd

    const-string v6, "D"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    const-string v6, "E"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    const-string v6, "F"

    aput-object v6, v3, v5

    .line 478
    .local v3, "pseudo":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 479
    .local v2, "out":Ljava/lang/StringBuffer;
    :goto_1
    array-length v5, p0

    if-lt v1, v5, :cond_2

    .line 492
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 493
    .local v4, "rslt":Ljava/lang/String;
    goto :goto_0

    .line 480
    .end local v4    # "rslt":Ljava/lang/String;
    :cond_2
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    int-to-byte v0, v5

    .line 481
    ushr-int/lit8 v5, v0, 0x4

    int-to-byte v0, v5

    .line 483
    and-int/lit8 v5, v0, 0xf

    int-to-byte v0, v5

    .line 485
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    int-to-byte v0, v5

    .line 488
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static countByteArrayHashSize(Ljava/util/Hashtable;)I
    .locals 6
    .param p0, "hash"    # Ljava/util/Hashtable;

    .prologue
    .line 1412
    if-nez p0, :cond_1

    .line 1413
    const/4 v1, 0x0

    .line 1442
    :cond_0
    return v1

    .line 1415
    :cond_1
    const/4 v1, 0x0

    .line 1416
    .local v1, "cache":I
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1418
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 1419
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 1423
    instance-of v5, v4, [B

    if-eqz v5, :cond_3

    move-object v0, v4

    .line 1424
    check-cast v0, [B

    .line 1425
    .local v0, "barray":[B
    array-length v5, v0

    add-int/2addr v1, v5

    .line 1426
    goto :goto_0

    .line 1429
    .end local v0    # "barray":[B
    :cond_3
    instance-of v5, v4, Lcom/hz/main/FragmentData;

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 1430
    check-cast v3, Lcom/hz/main/FragmentData;

    .line 1432
    .local v3, "fragmentData":Lcom/hz/main/FragmentData;
    iget-object v5, v3, Lcom/hz/main/FragmentData;->data:[B

    if-eqz v5, :cond_4

    .line 1433
    iget-object v5, v3, Lcom/hz/main/FragmentData;->data:[B

    array-length v5, v5

    add-int/2addr v1, v5

    .line 1435
    :cond_4
    iget-object v5, v3, Lcom/hz/main/FragmentData;->pngData:[B

    if-eqz v5, :cond_2

    .line 1436
    iget-object v5, v3, Lcom/hz/main/FragmentData;->pngData:[B

    array-length v5, v5

    add-int/2addr v1, v5

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1097
    if-nez p0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1101
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v4, 0x0

    .line 503
    .local v4, "ba":[B
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 505
    .local v5, "carray":[C
    array-length v11, v5

    .line 506
    .local v11, "total":I
    const/4 v12, 0x4

    if-ge v11, v12, :cond_0

    .line 511
    const/4 v12, 0x0

    .line 588
    :goto_0
    return-object v12

    .line 515
    :cond_0
    const/4 v9, 0x0

    .line 516
    .local v9, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v12, 0x4

    if-lt v7, v12, :cond_1

    .line 532
    if-gtz v9, :cond_2

    .line 533
    const/4 v12, 0x0

    new-array v12, v12, [B

    goto :goto_0

    .line 519
    :cond_1
    shl-int/lit8 v9, v9, 0x6

    .line 520
    aget-char v12, v5, v7

    invoke-static {v12}, Lcom/hz/common/Tool;->getBase64Value(C)B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v9, v12

    .line 516
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 538
    :cond_2
    and-int/lit8 v12, v11, 0x3

    if-eqz v12, :cond_3

    .line 543
    const/4 v12, 0x0

    goto :goto_0

    .line 550
    :cond_3
    new-array v4, v9, [B

    .line 551
    const/4 v6, 0x0

    .line 552
    .local v6, "counter":I
    const/4 v7, 0x4

    :goto_2
    if-lt v7, v11, :cond_4

    move-object v12, v4

    .line 588
    goto :goto_0

    .line 554
    :cond_4
    aget-char v12, v5, v7

    invoke-static {v12}, Lcom/hz/common/Tool;->getBase64Value(C)B

    move-result v0

    .line 555
    .local v0, "b1":B
    add-int/lit8 v12, v7, 0x1

    aget-char v12, v5, v12

    invoke-static {v12}, Lcom/hz/common/Tool;->getBase64Value(C)B

    move-result v1

    .line 556
    .local v1, "b2":B
    add-int/lit8 v12, v7, 0x2

    aget-char v12, v5, v12

    invoke-static {v12}, Lcom/hz/common/Tool;->getBase64Value(C)B

    move-result v2

    .line 557
    .local v2, "b3":B
    add-int/lit8 v12, v7, 0x3

    aget-char v12, v5, v12

    invoke-static {v12}, Lcom/hz/common/Tool;->getBase64Value(C)B

    move-result v3

    .line 560
    .local v3, "b4":B
    invoke-static {v0, v1, v2, v3}, Lcom/hz/common/Tool;->base64Tobase256(BBBB)[B

    move-result-object v10

    .line 565
    .local v10, "temp":[B
    const/4 v8, 0x3

    .line 566
    .local v8, "left":I
    add-int/lit8 v12, v6, 0x3

    if-le v12, v9, :cond_5

    .line 568
    sub-int v8, v9, v6

    .line 570
    :cond_5
    const/4 v12, 0x0

    invoke-static {v10, v12, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    add-int/2addr v6, v8

    .line 552
    add-int/lit8 v7, v7, 0x4

    goto :goto_2
.end method

.method public static doubleDivideCal(II)Ljava/lang/String;
    .locals 10
    .param p0, "value1"    # I
    .param p1, "value2"    # I

    .prologue
    const/4 v9, 0x0

    .line 1519
    if-gtz p1, :cond_1

    .line 1520
    const/4 v2, 0x0

    .line 1555
    :cond_0
    return-object v2

    .line 1523
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 1525
    .local v3, "temp1":I
    const/4 v4, 0x1

    .line 1526
    .local v4, "temp2":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_3

    .line 1530
    mul-int v6, p0, v4

    div-int v5, v6, p1

    .line 1531
    .local v5, "value":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1533
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_4

    .line 1544
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1547
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1548
    .local v0, "c":C
    const/16 v6, 0x30

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_0

    .line 1549
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1553
    goto :goto_2

    .line 1527
    .end local v0    # "c":C
    .end local v2    # "result":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_3
    mul-int/lit8 v4, v4, 0xa

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1534
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v5    # "value":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    if-gt v6, v7, :cond_5

    .line 1535
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1537
    :cond_5
    add-int/lit8 v6, v3, -0x1

    if-ne v1, v6, :cond_6

    .line 1538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1539
    goto :goto_2

    .line 1533
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 13
    .param p0, "array"    # [B

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 122
    const/4 v10, 0x0

    .line 198
    :goto_0
    return-object v10

    .line 125
    :cond_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    new-array v4, v10, [B

    .line 128
    .local v4, "out":[B
    array-length v2, p0

    .line 129
    .local v2, "len":I
    and-int/lit8 v10, v2, 0x3f

    int-to-byte v8, v10

    .line 130
    .local v8, "s":B
    shr-int/lit8 v10, v2, 0x6

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v7, v10

    .line 131
    .local v7, "r":B
    shr-int/lit8 v10, v2, 0xc

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v6, v10

    .line 132
    .local v6, "q":B
    shr-int/lit8 v10, v2, 0x12

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v5, v10

    .line 135
    .local v5, "p":B
    invoke-static {v5}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    invoke-static {v6}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    invoke-static {v7}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-static {v8}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    array-length v10, p0

    rem-int/lit8 v1, v10, 0x3

    .line 145
    .local v1, "left":I
    array-length v10, p0

    sub-int v3, v10, v1

    .line 149
    .local v3, "len3":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 170
    :cond_1
    if-nez v1, :cond_3

    .line 171
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 152
    :cond_2
    add-int/lit8 v10, v0, 0x2

    if-ge v10, v2, :cond_1

    .line 161
    aget-byte v10, p0, v0

    add-int/lit8 v11, v0, 0x1

    aget-byte v11, p0, v11

    add-int/lit8 v12, v0, 0x2

    aget-byte v12, p0, v12

    invoke-static {v10, v11, v12}, Lcom/hz/common/Tool;->base256ToBase64(BBB)[B

    move-result-object v4

    .line 162
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    const/4 v10, 0x2

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    const/4 v10, 0x3

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 175
    :cond_3
    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    .line 178
    aget-byte v10, p0, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/hz/common/Tool;->base256ToBase64(BBB)[B

    move-result-object v4

    .line 181
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    const/4 v10, 0x2

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    const/4 v10, 0x3

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 188
    :cond_4
    aget-byte v10, p0, v3

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, p0, v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/hz/common/Tool;->base256ToBase64(BBB)[B

    move-result-object v4

    .line 191
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    const/4 v10, 0x2

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    const/4 v10, 0x3

    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/hz/common/Tool;->getBase64Char(B)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static encodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const v8, 0xffff

    .line 365
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 366
    .local v3, "strlen":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v2, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 458
    .end local v1    # "i":I
    .end local v2    # "out":Ljava/lang/StringBuffer;
    .end local v3    # "strlen":I
    :goto_1
    return-object v5

    .line 368
    .restart local v1    # "i":I
    .restart local v2    # "out":Ljava/lang/StringBuffer;
    .restart local v3    # "strlen":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 369
    .local v4, "t":C
    const/4 v0, 0x0

    .line 370
    .local v0, "c":I
    and-int v5, v4, v8

    or-int/2addr v0, v5

    .line 371
    if-ltz v0, :cond_2

    const/16 v5, 0x80

    if-ge v0, v5, :cond_2

    .line 372
    sparse-switch v4, :sswitch_data_0

    .line 428
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :sswitch_0
    const-string v5, "%3d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 456
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "out":Ljava/lang/StringBuffer;
    .end local v3    # "strlen":I
    .end local v4    # "t":C
    :catch_0
    move-exception v5

    .line 458
    const-string v5, ""

    goto :goto_1

    .line 377
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    .restart local v2    # "out":Ljava/lang/StringBuffer;
    .restart local v3    # "strlen":I
    .restart local v4    # "t":C
    :sswitch_1
    :try_start_1
    const-string v5, "%20"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 380
    :sswitch_2
    const-string v5, "%2b"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 383
    :sswitch_3
    const-string v5, "%27"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 386
    :sswitch_4
    const-string v5, "%2F"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 389
    :sswitch_5
    const-string v5, "%2E"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 392
    :sswitch_6
    const-string v5, "%3c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 395
    :sswitch_7
    const-string v5, "%3e"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 398
    :sswitch_8
    const-string v5, "%23"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 401
    :sswitch_9
    const-string v5, "%25"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 404
    :sswitch_a
    const-string v5, "%26"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 407
    :sswitch_b
    const-string v5, "%7b"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 410
    :sswitch_c
    const-string v5, "%7d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 413
    :sswitch_d
    const-string v5, "%5c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 416
    :sswitch_e
    const-string v5, "%5e"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 419
    :sswitch_f
    const-string v5, "%73"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 422
    :sswitch_10
    const-string v5, "%5b"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 425
    :sswitch_11
    const-string v5, "%5d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 432
    :cond_2
    const/16 v5, 0x7f

    if-le v0, v5, :cond_3

    const/16 v5, 0x800

    if-ge v0, v5, :cond_3

    .line 433
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 437
    :cond_3
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_4

    const/high16 v5, 0x10000

    if-ge v0, v5, :cond_4

    .line 438
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 444
    :cond_4
    if-le v0, v8, :cond_1

    const v5, 0xfffff

    if-ge v0, v5, :cond_1

    .line 445
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x12

    and-int/lit8 v7, v7, 0x7

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    ushr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Lcom/hz/common/Tool;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x23 -> :sswitch_8
        0x25 -> :sswitch_9
        0x26 -> :sswitch_a
        0x27 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2e -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_6
        0x3d -> :sswitch_0
        0x3e -> :sswitch_7
        0x5b -> :sswitch_10
        0x5c -> :sswitch_d
        0x5d -> :sswitch_11
        0x5e -> :sswitch_e
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
        0x7e -> :sswitch_f
    .end sparse-switch
.end method

.method public static encodeUTF8Simple(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 278
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 279
    .local v3, "strlen":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    .local v2, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 352
    .end local v1    # "i":I
    .end local v2    # "out":Ljava/lang/StringBuffer;
    .end local v3    # "strlen":I
    :goto_1
    return-object v5

    .line 281
    .restart local v1    # "i":I
    .restart local v2    # "out":Ljava/lang/StringBuffer;
    .restart local v3    # "strlen":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 282
    .local v4, "t":C
    const/4 v0, 0x0

    .line 283
    .local v0, "c":I
    const v5, 0xffff

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    .line 284
    if-ltz v0, :cond_1

    const/16 v5, 0x80

    if-ge v0, v5, :cond_1

    .line 285
    sparse-switch v4, :sswitch_data_0

    .line 341
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 280
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :sswitch_0
    const-string v5, "%3d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 350
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "out":Ljava/lang/StringBuffer;
    .end local v3    # "strlen":I
    .end local v4    # "t":C
    :catch_0
    move-exception v5

    .line 352
    const-string v5, ""

    goto :goto_1

    .line 290
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    .restart local v2    # "out":Ljava/lang/StringBuffer;
    .restart local v3    # "strlen":I
    .restart local v4    # "t":C
    :sswitch_1
    :try_start_1
    const-string v5, "%20"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 293
    :sswitch_2
    const-string v5, "%2b"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 296
    :sswitch_3
    const-string v5, "%27"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 299
    :sswitch_4
    const-string v5, "%2F"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 302
    :sswitch_5
    const-string v5, "%2E"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 305
    :sswitch_6
    const-string v5, "%3c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 308
    :sswitch_7
    const-string v5, "%3e"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 311
    :sswitch_8
    const-string v5, "%23"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 314
    :sswitch_9
    const-string v5, "%25"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 317
    :sswitch_a
    const-string v5, "%26"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 320
    :sswitch_b
    const-string v5, "%7b"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 323
    :sswitch_c
    const-string v5, "%7d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 326
    :sswitch_d
    const-string v5, "%5c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 329
    :sswitch_e
    const-string v5, "%5e"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 332
    :sswitch_f
    const-string v5, "%73"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 335
    :sswitch_10
    const-string v5, "%5b"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 338
    :sswitch_11
    const-string v5, "%5d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 346
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x23 -> :sswitch_8
        0x25 -> :sswitch_9
        0x26 -> :sswitch_a
        0x27 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2e -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_6
        0x3d -> :sswitch_0
        0x3e -> :sswitch_7
        0x5b -> :sswitch_10
        0x5c -> :sswitch_d
        0x5d -> :sswitch_11
        0x5e -> :sswitch_e
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
        0x7e -> :sswitch_f
    .end sparse-switch
.end method

.method public static final entropy(II)I
    .locals 1
    .param p0, "_cur"    # I
    .param p1, "_target"    # I

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/hz/common/Tool;->entropy(IIZ)I

    move-result v0

    return v0
.end method

.method public static final entropy(IIZ)I
    .locals 3
    .param p0, "_cur"    # I
    .param p1, "_target"    # I
    .param p2, "isAdjust"    # Z

    .prologue
    .line 1005
    if-eq p0, p1, :cond_0

    .line 1007
    if-eqz p2, :cond_1

    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 1008
    move p0, p1

    .line 1025
    :cond_0
    :goto_0
    return p0

    .line 1011
    :cond_1
    move v0, p0

    .line 1016
    .local v0, "m_oldH":I
    mul-int/lit8 v1, p0, 0x3

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    div-int/lit8 p0, v1, 0x5

    .line 1020
    if-ne v0, p0, :cond_0

    .line 1021
    move p0, p1

    goto :goto_0
.end method

.method public static error(Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1106
    if-nez p0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1110
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBase64Char(B)C
    .locals 2
    .param p0, "value"    # B

    .prologue
    .line 621
    const/16 v0, 0x20

    .line 622
    .local v0, "ch":C
    const/16 v1, 0x19

    if-gt p0, v1, :cond_1

    .line 623
    add-int/lit8 v1, p0, 0x41

    int-to-char v0, v1

    .line 635
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    const/16 v1, 0x33

    if-gt p0, v1, :cond_2

    .line 625
    add-int/lit8 v1, p0, -0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v0, v1

    goto :goto_0

    .line 626
    :cond_2
    const/16 v1, 0x3d

    if-gt p0, v1, :cond_3

    .line 627
    add-int/lit8 v1, p0, 0x30

    add-int/lit8 v1, v1, -0x34

    int-to-char v0, v1

    goto :goto_0

    .line 628
    :cond_3
    const/16 v1, 0x3e

    if-ne p0, v1, :cond_4

    .line 629
    const/16 v0, 0x2d

    goto :goto_0

    .line 630
    :cond_4
    const/16 v1, 0x3f

    if-ne p0, v1, :cond_0

    .line 631
    const/16 v0, 0x5f

    goto :goto_0
.end method

.method public static getBase64Value(C)B
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 597
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 598
    add-int/lit8 v0, p0, -0x41

    int-to-byte v0, v0

    .line 612
    :goto_0
    return v0

    .line 600
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 601
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    goto :goto_0

    .line 603
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 604
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    goto :goto_0

    .line 606
    :cond_2
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_3

    const/16 v0, 0x3e

    goto :goto_0

    .line 607
    :cond_3
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_4

    const/16 v0, 0x3f

    goto :goto_0

    .line 612
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitNum(I)I
    .locals 4
    .param p0, "maskValue"    # I

    .prologue
    .line 1622
    const/4 v0, 0x0

    .line 1623
    .local v0, "bitNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 1630
    return v0

    .line 1624
    :cond_0
    const/4 v3, 0x1

    shl-int v1, v3, v2

    .line 1625
    .local v1, "bitValue":I
    invoke-static {v1, p0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1626
    add-int/lit8 v0, v0, 0x1

    .line 1623
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getCopyByteData([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 970
    const/4 v0, 0x0

    .line 972
    .local v0, "copyData":[B
    if-eqz p0, :cond_0

    .line 973
    array-length v1, p0

    new-array v0, v1, [B

    .line 974
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 976
    :cond_0
    return-object v0
.end method

.method public static getCopyData([I)[I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 959
    const/4 v0, 0x0

    .line 961
    .local v0, "copyData":[I
    if-eqz p0, :cond_0

    .line 962
    array-length v1, p0

    new-array v0, v1, [I

    .line 963
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 965
    :cond_0
    return-object v0
.end method

.method public static getCost(IIII)I
    .locals 4
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "x2"    # I
    .param p3, "y2"    # I

    .prologue
    .line 1054
    sub-int v2, p0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1055
    .local v0, "m":I
    sub-int v2, p1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1057
    .local v1, "n":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/hz/common/Tool;->sqrt(I)I

    move-result v2

    return v2
.end method

.method public static getInt([BI)I
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "idx"    # I

    .prologue
    .line 863
    if-eqz p0, :cond_0

    add-int/lit8 v1, p1, 0x3

    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 864
    :cond_0
    const/4 v0, 0x0

    .line 871
    :goto_0
    return v0

    .line 867
    :cond_1
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 868
    .local v0, "v":I
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 869
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 870
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 871
    goto :goto_0
.end method

.method public static final getIntArrayByVector(Ljava/util/Vector;)[I
    .locals 4
    .param p0, "vector"    # Ljava/util/Vector;

    .prologue
    .line 1285
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1286
    :cond_0
    const/4 v0, 0x0

    .line 1298
    :cond_1
    return-object v0

    .line 1289
    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 1290
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1291
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1292
    .local v2, "integer":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 1293
    const/4 v3, -0x1

    aput v3, v0, v1

    .line 1290
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1296
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    goto :goto_1
.end method

.method public static getLong([BI)I
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "idx"    # I

    .prologue
    .line 876
    if-eqz p0, :cond_0

    add-int/lit8 v1, p1, 0x7

    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 877
    :cond_0
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0

    .line 880
    :cond_1
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 881
    .local v0, "v":I
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 882
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 883
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 884
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 885
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 886
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 887
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 888
    goto :goto_0
.end method

.method public static getMaskBitValue(I)I
    .locals 3
    .param p0, "bitNum"    # I

    .prologue
    .line 1348
    const/16 v2, 0x20

    if-lt p0, v2, :cond_1

    .line 1349
    const/4 v1, -0x1

    .line 1356
    :cond_0
    return v1

    .line 1352
    :cond_1
    const/4 v1, 0x0

    .line 1353
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1354
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMoneyText(II)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I
    .param p1, "type"    # I

    .prologue
    const v2, 0x5f5e100

    .line 1713
    if-gtz p0, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1734
    :goto_0
    return-object v0

    .line 1717
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1733
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1734
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1719
    :pswitch_0
    if-lt p0, v2, :cond_1

    .line 1720
    const-string v0, "%Utr\u0103m tri\u1ec7u"

    new-instance v1, Ljava/lang/StringBuilder;

    div-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1729
    :pswitch_1
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_2

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1732
    :cond_2
    const-string v0, "%Ung\u00e0n"

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit16 v2, p0, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getOffsetValue(IIII)I
    .locals 2
    .param p0, "pixel"    # I
    .param p1, "totalSize"    # I
    .param p2, "screenSize"    # I
    .param p3, "screenSizeC"    # I

    .prologue
    .line 984
    if-le p1, p2, :cond_2

    .line 985
    sub-int v0, p3, p0

    .line 987
    .local v0, "dis":I
    if-lez v0, :cond_1

    .line 988
    const/4 v0, 0x0

    .line 996
    :cond_0
    :goto_0
    return v0

    .line 990
    :cond_1
    sub-int v1, p2, p1

    if-ge v0, v1, :cond_0

    .line 991
    sub-int v0, p2, p1

    .line 992
    goto :goto_0

    .line 994
    .end local v0    # "dis":I
    :cond_2
    sub-int v1, p2, p1

    div-int/lit8 v0, v1, 0x2

    .restart local v0    # "dis":I
    goto :goto_0
.end method

.method public static getPointValue(II)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # I
    .param p1, "pointNum"    # I

    .prologue
    .line 1454
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    .line 1455
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1508
    :cond_1
    :goto_0
    return-object v3

    .line 1459
    :cond_2
    move v4, p0

    .line 1460
    .local v4, "tempValue":I
    if-gez p0, :cond_3

    .line 1461
    neg-int v4, v4

    .line 1464
    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1468
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, p1

    .line 1470
    .local v2, "pointIndex":I
    if-lez v2, :cond_5

    .line 1471
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_7

    .line 1504
    .end local v2    # "pointIndex":I
    :cond_4
    :goto_2
    if-gez p0, :cond_1

    .line 1505
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1475
    .restart local v2    # "pointIndex":I
    :cond_5
    neg-int v2, v2

    .line 1476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-lt v1, v2, :cond_6

    .line 1479
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1477
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1487
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1488
    .local v0, "c":C
    const/16 v5, 0x30

    if-ne v0, v5, :cond_8

    .line 1489
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1490
    goto :goto_1

    :cond_8
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_4

    .line 1491
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    .line 1498
    .end local v0    # "c":C
    .end local v2    # "pointIndex":I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static getShort([BI)S
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "idx"    # I

    .prologue
    .line 853
    if-eqz p0, :cond_0

    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 854
    :cond_0
    const/4 v1, 0x0

    .line 858
    :goto_0
    return v1

    .line 856
    :cond_1
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 857
    .local v0, "v":I
    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 858
    int-to-short v1, v0

    goto :goto_0
.end method

.method public static final getSkillKey(IB)Ljava/lang/Integer;
    .locals 3
    .param p0, "skillID"    # I
    .param p1, "level"    # B

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/Integer;

    shl-int/lit8 v1, p1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static final getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 4
    .param p0, "vector"    # Ljava/util/Vector;

    .prologue
    .line 1270
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1271
    :cond_0
    const/4 v0, 0x0

    .line 1282
    :cond_1
    return-object v0

    .line 1274
    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 1275
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1276
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1277
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 1275
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1280
    :cond_3
    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public static getUTF([BI)Ljava/lang/String;
    .locals 6
    .param p0, "datas"    # [B
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 892
    if-eqz p0, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-lt p1, v4, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object v3

    .line 897
    :cond_1
    move v1, p1

    .line 898
    .local v1, "index":I
    invoke-static {p0, v1}, Lcom/hz/common/Tool;->getShort([BI)S

    move-result v2

    .line 899
    .local v2, "length":S
    add-int/lit8 v1, v1, 0x2

    .line 900
    add-int v4, v1, v2

    array-length v5, p0

    if-gt v4, v5, :cond_0

    .line 907
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public static getXKey(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 1067
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getYKey(I)I
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1070
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static isArrayIndexOutOfBounds(ILjava/lang/Object;)Z
    .locals 3
    .param p0, "index"    # I
    .param p1, "arrayObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 1309
    if-nez p1, :cond_1

    .line 1334
    .end local p1    # "arrayObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 1313
    .restart local p1    # "arrayObject":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 1314
    .local v0, "length":I
    instance-of v2, p1, [B

    if-eqz v2, :cond_3

    .line 1315
    check-cast p1, [B

    .end local p1    # "arrayObject":Ljava/lang/Object;
    array-length v0, p1

    .line 1330
    :cond_2
    :goto_1
    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    .line 1334
    const/4 v1, 0x0

    goto :goto_0

    .line 1317
    .restart local p1    # "arrayObject":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, [S

    if-eqz v2, :cond_4

    .line 1318
    check-cast p1, [S

    .end local p1    # "arrayObject":Ljava/lang/Object;
    array-length v0, p1

    .line 1319
    goto :goto_1

    .line 1320
    .restart local p1    # "arrayObject":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_5

    .line 1321
    check-cast p1, [I

    .end local p1    # "arrayObject":Ljava/lang/Object;
    array-length v0, p1

    .line 1322
    goto :goto_1

    .line 1323
    .restart local p1    # "arrayObject":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, [Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1324
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arrayObject":Ljava/lang/Object;
    array-length v0, p1

    .line 1325
    goto :goto_1

    .line 1326
    .restart local p1    # "arrayObject":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 1327
    check-cast p1, Ljava/util/Vector;

    .end local p1    # "arrayObject":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_1
.end method

.method public static isBit(II)Z
    .locals 1
    .param p0, "index"    # I
    .param p1, "value"    # I

    .prologue
    .line 1611
    and-int v0, p1, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSupport()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1224
    const-string v2, "supports.video.capture"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "cameraInfo":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final isColliding(IIIIIIII)Z
    .locals 2
    .param p0, "_x1"    # I
    .param p1, "_y1"    # I
    .param p2, "_w1"    # I
    .param p3, "_h1"    # I
    .param p4, "_x2"    # I
    .param p5, "_y2"    # I
    .param p6, "_w2"    # I
    .param p7, "_h2"    # I

    .prologue
    const/4 v0, 0x0

    .line 781
    add-int v1, p0, p2

    if-gt v1, p4, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v0

    .line 782
    :cond_1
    add-int v1, p4, p6

    if-ge p0, v1, :cond_0

    .line 783
    add-int v1, p1, p3

    if-le v1, p5, :cond_0

    .line 784
    add-int v1, p5, p7

    if-ge p1, v1, :cond_0

    .line 785
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmulator()Z
    .locals 5

    .prologue
    .line 1199
    const/4 v0, 0x0

    .line 1202
    .local v0, "byte0":B
    :try_start_0
    const-string v1, "java.applet.Applet"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1203
    const/4 v0, 0x1

    .line 1209
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_1
    const-string v1, "emulator.Emulator"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1210
    const/4 v0, 0x2

    .line 1215
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x3001db

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x4a1025

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1216
    const/4 v0, 0x3

    .line 1217
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1213
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1206
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isNullText(Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1578
    if-nez p0, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return v0

    .line 1582
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1585
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumberString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1655
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return v2

    .line 1660
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 1667
    const/4 v2, 0x1

    goto :goto_0

    .line 1661
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1662
    .local v0, "charValue":I
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 1660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isPhoneString(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v0, 0x0

    .line 1677
    if-nez p1, :cond_0

    .line 1678
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1682
    .restart local p1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-static {p0}, Lcom/hz/common/Tool;->isNumberString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1683
    const-string v1, "Nh\u1eadp s\u1ed1 \u0111i\u1ec7n tho\u1ea1i l\u1ed7i "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1699
    :goto_0
    return v0

    .line 1688
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 1689
    const-string v1, "S\u1ed1 \u0111i\u1ec7n tho\u1ea1i kh\u00f4ng \u0111\u00fang "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1694
    :cond_2
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1695
    const-string v1, "Nh\u1eadp s\u1ed1 \u0111i\u1ec7n tho\u1ea1i sai "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1699
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static join([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "list"    # [B
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 1132
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1134
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 1135
    const-string v2, ""

    .line 1143
    :goto_0
    return-object v2

    .line 1138
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1139
    :cond_1
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static join([ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "list"    # [I
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 1147
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1149
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 1150
    const-string v2, ""

    .line 1158
    :goto_0
    return-object v2

    .line 1153
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1158
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1154
    :cond_1
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 1163
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1165
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 1166
    const-string v2, ""

    .line 1174
    :goto_0
    return-object v2

    .line 1169
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1174
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1170
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1171
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static join([SLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "list"    # [S
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 1116
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1118
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 1119
    const-string v2, ""

    .line 1127
    :goto_0
    return-object v2

    .line 1122
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1127
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1123
    :cond_1
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final nextSeed(I)I
    .locals 1
    .param p0, "seed"    # I

    .prologue
    .line 952
    add-int/lit8 v0, p0, 0x1

    rem-int/lit16 p0, v0, 0x2710

    .line 954
    return p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 95
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 92
    .restart local p1    # "defaultValue":I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseInt16(Ljava/lang/String;I)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 109
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 106
    .restart local p1    # "defaultValue":I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final platformRequest(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1640
    :try_start_0
    sget-object v1, Lcom/hz/GameMIDlet;->instance:Lcom/hz/GameMIDlet;

    invoke-virtual {v1, p0}, Lcom/hz/GameMIDlet;->platformRequest(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/microedition/io/ConnectionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "e":Ljavax/microedition/io/ConnectionNotFoundException;
    invoke-virtual {v0}, Ljavax/microedition/io/ConnectionNotFoundException;->printStackTrace()V

    .line 1643
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static printArray([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "objects"    # [Ljava/lang/Object;
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 1184
    if-nez p0, :cond_1

    .line 1186
    const-string v1, "printArray == null"

    invoke-static {v1}, Lcom/hz/common/Tool;->error(Ljava/lang/Object;)V

    .line 1194
    :cond_0
    return-void

    .line 1190
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final rand(I)I
    .locals 1
    .param p0, "range"    # I

    .prologue
    .line 926
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/hz/common/Tool;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method public static final rand(II)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 939
    sget-object v1, Lcom/hz/common/Tool;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 940
    .local v0, "k1":I
    if-gez v0, :cond_0

    .line 941
    neg-int v0, v0

    .line 942
    :cond_0
    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    rem-int v1, v0, v1

    add-int/2addr v1, p0

    return v1
.end method

.method public static rectContain(IIIIIIII)Z
    .locals 4
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "w1"    # I
    .param p3, "h1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "w2"    # I
    .param p7, "h2"    # I

    .prologue
    const/4 v3, 0x0

    .line 830
    if-le p0, p4, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v3

    .line 835
    :cond_1
    add-int v0, p0, p2

    .line 836
    .local v0, "i2":I
    add-int v1, p4, p6

    .line 837
    .local v1, "j2":I
    if-lt v0, v1, :cond_0

    if-gt p1, p5, :cond_0

    .line 841
    add-int v0, p1, p3

    .line 842
    add-int v2, p5, p7

    .line 843
    .local v2, "k2":I
    if-lt v0, v2, :cond_0

    .line 846
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static rectGetIntersection(IIIIIIII)[I
    .locals 13
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "w1"    # I
    .param p3, "h1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "w2"    # I
    .param p7, "h2"    # I

    .prologue
    .line 727
    move v9, p0

    .line 728
    .local v9, "x":I
    move/from16 v0, p4

    if-le v0, p0, :cond_0

    .line 729
    move/from16 v9, p4

    .line 732
    :cond_0
    move v10, p1

    .line 733
    .local v10, "y":I
    move/from16 v0, p5

    if-le v0, p1, :cond_1

    .line 734
    move/from16 v10, p5

    .line 737
    :cond_1
    add-int v2, p0, p2

    .line 738
    .local v2, "endX1":I
    add-int v3, p4, p6

    .line 740
    .local v3, "endX2":I
    move v1, v2

    .line 741
    .local v1, "endX":I
    if-ge v3, v2, :cond_2

    .line 742
    move v1, v3

    .line 745
    :cond_2
    add-int v5, p1, p3

    .line 746
    .local v5, "endY1":I
    add-int v6, p5, p7

    .line 748
    .local v6, "endY2":I
    move v4, v5

    .line 749
    .local v4, "endY":I
    if-ge v6, v5, :cond_3

    .line 750
    move v4, v6

    .line 753
    :cond_3
    sub-int v8, v1, v9

    .line 754
    .local v8, "w":I
    sub-int v7, v4, v10

    .line 756
    .local v7, "h":I
    if-ltz v8, :cond_4

    if-gez v7, :cond_5

    .line 757
    :cond_4
    const/4 v8, 0x0

    .line 758
    const/4 v7, 0x0

    .line 760
    :cond_5
    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v9, v11, v12

    const/4 v12, 0x1

    aput v10, v11, v12

    const/4 v12, 0x2

    aput v8, v11, v12

    const/4 v12, 0x3

    aput v7, v11, v12

    return-object v11
.end method

.method public static final rectIn(IIIIII)Z
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "pointx"    # I
    .param p5, "pointy"    # I

    .prologue
    const/4 v0, 0x0

    .line 799
    if-gt p0, p4, :cond_0

    if-le p1, p5, :cond_1

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    add-int v1, p0, p2

    if-lt v1, p4, :cond_0

    .line 805
    add-int v1, p1, p3

    if-lt v1, p5, :cond_0

    .line 808
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static rectIntersect(IIIIIIII)Z
    .locals 1
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "w1"    # I
    .param p3, "h1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "w2"    # I
    .param p7, "h2"    # I

    .prologue
    .line 813
    invoke-static/range {p0 .. p7}, Lcom/hz/common/Tool;->isColliding(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method public static safeCloseInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "ips"    # Ljava/io/InputStream;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static safeCloseOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "ops"    # Ljava/io/OutputStream;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setBit(ZII)I
    .locals 1
    .param p0, "flag"    # Z
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 1596
    if-eqz p0, :cond_0

    .line 1597
    or-int/2addr p2, p1

    .line 1602
    :goto_0
    return p2

    .line 1600
    :cond_0
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p2, v0

    goto :goto_0
.end method

.method public static setKeyXY(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const v1, 0xffff

    .line 1064
    and-int v0, p0, v1

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 681
    if-eqz p0, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 682
    :cond_0
    const/4 v4, 0x0

    .line 707
    :goto_0
    return-object v4

    .line 684
    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 685
    .local v3, "list":Ljava/util/Vector;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 686
    .local v2, "index":I
    :goto_1
    if-gez v2, :cond_2

    .line 692
    invoke-virtual {v3, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 693
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 694
    .local v6, "tempResult":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 695
    .local v1, "idx":I
    const/4 v7, 0x0

    .line 696
    .local v7, "tempStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v0, v8, :cond_3

    .line 705
    new-array v4, v1, [Ljava/lang/String;

    .line 706
    .local v4, "result":[Ljava/lang/String;
    invoke-static {v6, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 687
    .end local v0    # "i":I
    .end local v1    # "idx":I
    .end local v4    # "result":[Ljava/lang/String;
    .end local v6    # "tempResult":[Ljava/lang/String;
    .end local v7    # "tempStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 689
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 690
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 697
    .end local v5    # "str":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v1    # "idx":I
    .restart local v6    # "tempResult":[Ljava/lang/String;
    .restart local v7    # "tempStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tempStr":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 698
    .restart local v7    # "tempStr":Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 696
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 701
    :cond_5
    aput-object v7, v6, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static sqrt(I)I
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 1036
    const/16 v3, 0x64

    if-ge p0, v3, :cond_1

    .line 1037
    const/16 v1, 0x9

    .line 1038
    .local v1, "r":I
    :goto_0
    mul-int v3, v1, v1

    if-lt p0, v3, :cond_0

    .line 1049
    :goto_1
    return v1

    .line 1039
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1041
    .end local v1    # "r":I
    :cond_1
    div-int/lit8 v3, p0, 0x64

    invoke-static {v3}, Lcom/hz/common/Tool;->sqrt(I)I

    move-result v1

    .line 1042
    .restart local v1    # "r":I
    mul-int v3, v1, v1

    mul-int/lit8 v3, v3, 0x64

    sub-int v0, p0, v3

    .line 1043
    .local v0, "l":I
    mul-int/lit8 v3, v1, 0x14

    div-int v2, v0, v3

    .line 1044
    .local v2, "t":I
    :goto_2
    mul-int/lit8 v3, v1, 0x14

    add-int/2addr v3, v2

    mul-int/2addr v3, v2

    if-gt v3, v0, :cond_2

    .line 1047
    mul-int/lit8 v3, v1, 0xa

    add-int v1, v3, v2

    goto :goto_1

    .line 1045
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public static sumValue(IIII)I
    .locals 1
    .param p0, "base"    # I
    .param p1, "add"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 1241
    add-int v0, p0, p1

    .line 1243
    .local v0, "tepValue":I
    if-ge v0, p2, :cond_0

    .line 1244
    move v0, p2

    .line 1247
    :cond_0
    if-le v0, p3, :cond_1

    .line 1248
    move v0, p3

    .line 1251
    :cond_1
    return v0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 210
    .local v1, "chars":[C
    const/4 v4, 0x0

    .line 211
    .local v4, "cursor":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 214
    .local v7, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .local v8, "dos":Ljava/io/DataOutputStream;
    move v5, v4

    .line 215
    .end local v4    # "cursor":I
    .local v5, "cursor":I
    :goto_0
    :try_start_1
    array-length v13, v1

    if-lt v5, v13, :cond_2

    .line 227
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 228
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 229
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 230
    .local v6, "data":[B
    const/4 v13, 0x0

    array-length v14, v6

    invoke-static {v6, v13, v14}, Lcom/hz/common/Tool;->urlDecodeArray([BII)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 236
    .local v11, "text":Ljava/lang/String;
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 237
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v7, v8

    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    move v4, v5

    .line 241
    .end local v5    # "cursor":I
    .end local v6    # "data":[B
    .end local v11    # "text":Ljava/lang/String;
    .restart local v4    # "cursor":I
    :goto_2
    return-object v11

    .line 216
    .end local v4    # "cursor":I
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "cursor":I
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "cursor":I
    .restart local v4    # "cursor":I
    :try_start_3
    aget-char v3, v1, v5

    .line 217
    .local v3, "curr":I
    const/16 v13, 0x25

    if-ne v3, v13, :cond_3

    .line 218
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 219
    .local v12, "tmp":Ljava/lang/StringBuffer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor":I
    .restart local v5    # "cursor":I
    :try_start_4
    aget-char v2, v1, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    .local v2, "cr":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "cursor":I
    .restart local v4    # "cursor":I
    :try_start_5
    aget-char v9, v1, v5

    .line 221
    .local v9, "lf":C
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    .line 223
    .local v10, "result":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 225
    .end local v2    # "cr":C
    .end local v9    # "lf":C
    .end local v10    # "result":Ljava/lang/Integer;
    .end local v12    # "tmp":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v5, v4

    .end local v4    # "cursor":I
    .restart local v5    # "cursor":I
    goto :goto_0

    .line 232
    .end local v3    # "curr":I
    .end local v5    # "cursor":I
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "cursor":I
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v13

    .line 236
    :goto_3
    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 237
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 241
    :cond_5
    :goto_4
    const/4 v11, 0x0

    goto :goto_2

    .line 234
    :catchall_0
    move-exception v13

    .line 236
    :goto_5
    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 237
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 240
    :cond_7
    :goto_6
    throw v13

    .line 238
    :catch_1
    move-exception v14

    goto :goto_6

    .line 234
    .end local v4    # "cursor":I
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "cursor":I
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    move v4, v5

    .end local v5    # "cursor":I
    .restart local v4    # "cursor":I
    goto :goto_5

    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    goto :goto_5

    .line 238
    :catch_2
    move-exception v13

    goto :goto_4

    .line 232
    .end local v4    # "cursor":I
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "cursor":I
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v13

    move-object v7, v8

    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    move v4, v5

    .end local v5    # "cursor":I
    .restart local v4    # "cursor":I
    goto :goto_3

    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v13

    move-object v7, v8

    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 238
    .end local v4    # "cursor":I
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "cursor":I
    .restart local v6    # "data":[B
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v11    # "text":Ljava/lang/String;
    :catch_5
    move-exception v13

    goto :goto_1
.end method

.method public static urlDecodeArray([BII)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v0, "buff":Ljava/lang/StringBuffer;
    add-int v4, p1, p2

    .line 247
    .local v4, "max":I
    move v2, p1

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 248
    :cond_0
    const/4 v1, 0x0

    .line 249
    .local v1, "c":C
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_1

    .line 250
    aget-byte v5, p0, v3

    int-to-char v1, v5

    move v2, v3

    .line 266
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 251
    :cond_1
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_2

    .line 252
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 253
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 254
    goto :goto_1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_2
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_3

    .line 255
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 256
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 257
    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v5, v1

    int-to-char v1, v5

    move v2, v3

    .line 258
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_4

    .line 259
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x12

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 260
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 261
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 262
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v5, v1

    int-to-char v1, v5

    .line 263
    goto :goto_1

    .line 264
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_4
    const/16 v1, 0x3f

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method
