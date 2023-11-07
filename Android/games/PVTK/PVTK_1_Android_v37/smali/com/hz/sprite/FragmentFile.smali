.class public Lcom/hz/sprite/FragmentFile;
.super Ljava/lang/Object;
.source "FragmentFile.java"


# instance fields
.field private fragmentNameID:S

.field protected gameImage:Lcom/hz/image/GameImage;

.field protected heightCoords:[S

.field protected ids:[B

.field protected widthCoords:[S

.field protected xCoords:[S

.field protected yCoords:[S


# direct methods
.method protected constructor <init>(S)V
    .locals 2
    .param p1, "_nameID"    # S

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-short v1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    .line 64
    iput-short p1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    .line 65
    new-instance v0, Lcom/hz/image/GameImage;

    invoke-direct {v0, p1, v1}, Lcom/hz/image/GameImage;-><init>(II)V

    iput-object v0, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    .line 66
    return-void
.end method

.method public static cloneFragmentFile(Lcom/hz/sprite/FragmentFile;)Lcom/hz/sprite/FragmentFile;
    .locals 2
    .param p0, "baseFragmentFile"    # Lcom/hz/sprite/FragmentFile;

    .prologue
    .line 386
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    .line 389
    :cond_0
    new-instance v0, Lcom/hz/sprite/FragmentFile;

    .line 390
    iget-short v1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    .line 389
    invoke-direct {v0, v1}, Lcom/hz/sprite/FragmentFile;-><init>(S)V

    .line 391
    .local v0, "fragmentFile":Lcom/hz/sprite/FragmentFile;
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    iput-object v1, v0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    .line 392
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->ids:[B

    iput-object v1, v0, Lcom/hz/sprite/FragmentFile;->ids:[B

    .line 393
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    iput-object v1, v0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    .line 394
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->yCoords:[S

    iput-object v1, v0, Lcom/hz/sprite/FragmentFile;->yCoords:[S

    .line 395
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    iput-object v1, v0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    .line 396
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    iput-object v1, v0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    goto :goto_0
.end method

.method public static createFragmentFile(Ljava/lang/String;SZ[B[B)Lcom/hz/sprite/FragmentFile;
    .locals 9
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "_nameID"    # S
    .param p2, "isLoadPng"    # Z
    .param p3, "frData"    # [B
    .param p4, "pngData"    # [B

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 213
    .local v2, "dis":Ljava/io/DataInputStream;
    if-nez p3, :cond_2

    .line 215
    move v5, p1

    .line 217
    .local v5, "fileFrNameID":I
    add-int/lit8 v7, p1, -0x1

    and-int/lit8 v1, v7, 0x3

    .line 219
    .local v1, "color":I
    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/hz/main/ResourceHandler;->isNeedChangeColorId(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    sub-int/2addr v5, v1

    .line 224
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".fr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/core/AniResourceSave;->doGetAniResourceFromBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 227
    if-nez p3, :cond_1

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/ani/ani2/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object p3

    .line 231
    :cond_1
    if-nez p3, :cond_2

    .line 233
    sget-object v7, Lcom/hz/main/ResourceHandler;->packFrData:[[B

    .line 234
    sget-object v8, Lcom/hz/main/ResourceHandler;->packFrIDList:[S

    .line 232
    invoke-static {v7, v8, v5}, Lcom/hz/main/ResourceHandler;->getPackImageData([[B[SI)[B

    move-result-object p3

    .line 244
    .end local v1    # "color":I
    .end local v5    # "fileFrNameID":I
    :cond_2
    if-nez p3, :cond_3

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".fr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/core/AniResourceSave;->doGetAniResourceFromBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 250
    :cond_3
    if-nez p3, :cond_4

    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/ani/ani2/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object p3

    .line 264
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 265
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v6, Lcom/hz/sprite/FragmentFile;

    invoke-direct {v6, p1}, Lcom/hz/sprite/FragmentFile;-><init>(S)V

    .line 269
    .local v6, "fragmentFile":Lcom/hz/sprite/FragmentFile;
    if-eqz p2, :cond_5

    .line 270
    invoke-virtual {v6, p0, p1, p4}, Lcom/hz/sprite/FragmentFile;->loadImage(Ljava/lang/String;S[B)V

    .line 273
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/hz/sprite/FragmentFile;->fromBytes(Ljava/io/DataInputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 280
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "fragmentFile":Lcom/hz/sprite/FragmentFile;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return-object v6

    .line 276
    :catch_0
    move-exception v4

    .line 282
    .local v4, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 280
    const/4 v6, 0x0

    goto :goto_0

    .line 281
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 282
    :goto_2
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 283
    throw v7

    .line 281
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 276
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private final isRotate(I)Z
    .locals 1
    .param p1, "transform"    # I

    .prologue
    .line 500
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    .line 92
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIIZII)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "fragmentIndex"    # I
    .param p3, "screenX"    # I
    .param p4, "screenY"    # I
    .param p5, "isRotate"    # Z
    .param p6, "transform"    # I
    .param p7, "anchor"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    if-nez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    aget-short v2, v0, p2

    .line 569
    .local v2, "x":I
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->yCoords:[S

    aget-short v3, v0, p2

    .line 570
    .local v3, "y":I
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    aget-short v4, v0, p2

    .line 571
    .local v4, "width":I
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    aget-short v5, v0, p2

    .line 573
    .local v5, "height":I
    if-eqz p5, :cond_2

    .line 574
    and-int/lit8 v0, v4, 0x1

    sub-int/2addr p3, v0

    .line 575
    invoke-static/range {p6 .. p6}, Lcom/hz/common/Utilities;->getTransfromAfterMirror(I)B

    move-result p6

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p1

    move/from16 v6, p6

    move v7, p3

    move v8, p4

    move/from16 v9, p7

    .line 604
    invoke-static/range {v0 .. v9}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method protected final fromBytes(Ljava/io/DataInputStream;Z)V
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .param p2, "isUI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v1

    .line 289
    .local v1, "noFragment":I
    if-gtz v1, :cond_1

    .line 316
    :cond_0
    return-void

    .line 293
    :cond_1
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/hz/sprite/FragmentFile;->ids:[B

    .line 294
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    .line 295
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/sprite/FragmentFile;->yCoords:[S

    .line 296
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    .line 297
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->ids:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 300
    if-eqz p2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 302
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->yCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 303
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 304
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 298
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->xCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput-short v3, v2, v0

    .line 308
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->yCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput-short v3, v2, v0

    .line 309
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput-short v3, v2, v0

    .line 310
    iget-object v2, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/hz/common/Tool;->byte2short(B)S

    move-result v3

    aput-short v3, v2, v0

    goto :goto_1
.end method

.method public getHeightByIndex(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "transform"    # I

    .prologue
    const/4 v0, 0x0

    .line 525
    iget-short v1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    const/16 v2, 0x1f40

    if-lt v1, v2, :cond_1

    iget-short v1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    iget-short v1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    const/16 v2, 0x3a98

    if-lt v1, v2, :cond_2

    iget-short v1, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    const/16 v2, 0x3e80

    if-lt v1, v2, :cond_0

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 537
    invoke-direct {p0, p2}, Lcom/hz/sprite/FragmentFile;->isRotate(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    aget-short v0, v0, p1

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    aget-short v0, v0, p1

    goto :goto_0
.end method

.method public getIndexById(B)B
    .locals 4
    .param p1, "id"    # B

    .prologue
    const/4 v2, -0x1

    .line 417
    iget-object v3, p0, Lcom/hz/sprite/FragmentFile;->ids:[B

    if-nez v3, :cond_1

    move v0, v2

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    iget-object v3, p0, Lcom/hz/sprite/FragmentFile;->ids:[B

    array-length v1, v3

    .line 422
    .local v1, "length":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_1
    if-lt v0, v1, :cond_3

    move v0, v2

    .line 432
    goto :goto_0

    .line 426
    :cond_3
    iget-object v3, p0, Lcom/hz/sprite/FragmentFile;->ids:[B

    aget-byte v3, v3, v0

    if-eq v3, p1, :cond_0

    .line 424
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_1
.end method

.method public getNameID()I
    .locals 1

    .prologue
    .line 75
    iget-short v0, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    return v0
.end method

.method public getPalID()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, -0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    invoke-virtual {v0}, Lcom/hz/image/GameImage;->getPalID()I

    move-result v0

    goto :goto_0
.end method

.method public getWidthByIndex(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "transform"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 517
    :goto_0
    return v0

    .line 512
    :cond_1
    invoke-direct {p0, p2}, Lcom/hz/sprite/FragmentFile;->isRotate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->heightCoords:[S

    aget-short v0, v0, p1

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/hz/sprite/FragmentFile;->widthCoords:[S

    aget-short v0, v0, p1

    goto :goto_0
.end method

.method protected isNullImage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    invoke-virtual {v1}, Lcom/hz/image/GameImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final loadImage(Ljava/lang/String;S)V
    .locals 1
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "pngNameID"    # S

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hz/sprite/FragmentFile;->loadImage(Ljava/lang/String;S[B)V

    .line 104
    return-void
.end method

.method protected final loadImage(Ljava/lang/String;S[B)V
    .locals 8
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "pngNameID"    # S
    .param p3, "hashData"    # [B

    .prologue
    const/4 v7, 0x0

    .line 108
    move-object v2, p3

    .line 111
    .local v2, "imgData":[B
    if-eqz v2, :cond_1

    .line 112
    invoke-static {v2, v7}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 199
    .local v1, "img":Ljavax/microedition/lcdui/Image;
    :goto_0
    iget-object v5, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    if-nez v5, :cond_0

    .line 201
    new-instance v5, Lcom/hz/image/GameImage;

    iget-short v6, p0, Lcom/hz/sprite/FragmentFile;->fragmentNameID:S

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lcom/hz/image/GameImage;-><init>(II)V

    iput-object v5, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/hz/sprite/FragmentFile;->gameImage:Lcom/hz/image/GameImage;

    invoke-virtual {v5, v1}, Lcom/hz/image/GameImage;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 204
    return-void

    .line 116
    .end local v1    # "img":Ljavax/microedition/lcdui/Image;
    :cond_1
    const-string v5, "/common/"

    if-ne p1, v5, :cond_2

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 119
    .restart local v1    # "img":Ljavax/microedition/lcdui/Image;
    goto :goto_0

    .line 123
    .end local v1    # "img":Ljavax/microedition/lcdui/Image;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, p2, -0x1

    and-int/lit8 v0, v5, 0x3

    .line 125
    .local v0, "color":I
    if-lez v0, :cond_7

    invoke-static {p2}, Lcom/hz/main/ResourceHandler;->isNeedChangeColorId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 134
    const/4 v4, 0x0

    .line 136
    .local v4, "plData":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".pl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/core/AniResourceSave;->doGetAniResourceFromBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 139
    if-nez v4, :cond_3

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/ani/ani2/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object v4

    .line 144
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 145
    invoke-static {p2}, Lcom/hz/main/ResourceHandler;->getAniPlDataInPack(I)[B

    move-result-object v4

    .line 150
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    sub-int v6, p2, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/core/AniResourceSave;->doGetAniResourceFromBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 153
    if-nez v2, :cond_5

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/ani/ani2/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 158
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 159
    sub-int v5, p2, v0

    invoke-static {v5}, Lcom/hz/main/ResourceHandler;->getAniPngDataInPack(I)[B

    move-result-object v2

    .line 162
    :cond_6
    invoke-static {v2, v4}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 163
    .restart local v1    # "img":Ljavax/microedition/lcdui/Image;
    goto/16 :goto_0

    .line 170
    .end local v1    # "img":Ljavax/microedition/lcdui/Image;
    .end local v4    # "plData":[B
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/core/AniResourceSave;->doGetAniResourceFromBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 173
    if-nez v2, :cond_8

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/ani/ani2/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/hz/common/Utilities;->getFileByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 178
    .end local v3    # "path":Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_9

    .line 179
    invoke-static {p2}, Lcom/hz/main/ResourceHandler;->getAniPngDataInPack(I)[B

    move-result-object v2

    .line 183
    :cond_9
    invoke-static {v2, v7}, Lcom/hz/common/Utilities;->loadColorImage([B[B)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .restart local v1    # "img":Ljavax/microedition/lcdui/Image;
    goto/16 :goto_0
.end method
