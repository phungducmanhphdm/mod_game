.class public Lcom/hz/string/PixelString;
.super Ljava/lang/Object;
.source "PixelString.java"


# static fields
.field public static RGBArray:[I

.field public static final latticeColorTable:[I


# instance fields
.field private datas:[[B

.field private font:Lcom/hz/string/PixelFont;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/string/PixelString;->latticeColorTable:[I

    .line 295
    return-void

    .line 16
    :array_0
    .array-data 4
        -0x144b
        -0x144b
        -0x144b
        -0x18417c
        -0x18417c
        -0x18417c
        -0x2971cf
        -0x2971cf
        -0x2971cf
        -0x2971cf
        -0x2971cf
        -0x2971cf
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hz/string/PixelFont;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/hz/string/PixelFont;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    .line 39
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [[B

    iput-object v3, p0, Lcom/hz/string/PixelString;->datas:[[B

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 56
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 45
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 47
    .local v0, "c":C
    iget-object v3, p0, Lcom/hz/string/PixelString;->datas:[[B

    invoke-virtual {p2, v0}, Lcom/hz/string/PixelFont;->getChar(C)[B

    move-result-object v4

    aput-object v4, v3, v2

    .line 49
    invoke-virtual {p2}, Lcom/hz/string/PixelFont;->getFontWidth()I

    move-result v1

    .line 50
    .local v1, "getWidth":I
    invoke-static {v0}, Lcom/hz/string/PixelFont;->isEnChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    div-int/lit8 v1, v1, 0x2

    .line 53
    :cond_2
    iget v3, p0, Lcom/hz/string/PixelString;->width:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/hz/string/PixelString;->width:I

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final drawLattle(Ljavax/microedition/lcdui/Graphics;[BIII[IZ)I
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "datas"    # [B
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "anchor"    # I
    .param p6, "colors"    # [I
    .param p7, "isEn"    # Z

    .prologue
    .line 217
    if-nez p2, :cond_1

    .line 218
    const/4 v5, 0x0

    .line 292
    :cond_0
    return v5

    .line 220
    :cond_1
    const/4 v1, 0x0

    .line 221
    .local v1, "bytePerRow":I
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getFontWidth()I

    move-result v5

    .line 222
    .local v5, "fontWidth":I
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getHeight()I

    move-result v4

    .line 224
    .local v4, "fontHeight":I
    if-eqz p7, :cond_6

    .line 226
    shr-int/lit8 v5, v5, 0x1

    .line 227
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getBytePerRowEn()I

    move-result v1

    .line 233
    :goto_0
    and-int/lit8 v11, p5, 0x8

    if-eqz v11, :cond_7

    .line 235
    sub-int p3, p3, v5

    .line 240
    :cond_2
    :goto_1
    and-int/lit8 v11, p5, 0x20

    if-eqz v11, :cond_8

    .line 242
    sub-int p4, p4, v4

    .line 250
    :cond_3
    :goto_2
    const/4 v10, 0x0

    .line 252
    .local v10, "tempLength":I
    const/4 v8, 0x0

    .local v8, "row":I
    :goto_3
    if-ge v8, v4, :cond_0

    .line 255
    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    array-length v11, v0

    if-ge v8, v11, :cond_4

    .line 257
    aget v11, p6, v8

    invoke-virtual {p1, v11}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 260
    :cond_4
    add-int v9, p4, v8

    .line 262
    .local v9, "rowY":I
    mul-int v2, v8, v1

    .line 263
    .local v2, "byteStart":I
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_4
    if-lt v3, v5, :cond_9

    .line 286
    if-lez v10, :cond_5

    .line 288
    add-int v11, p3, v5

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v10, -0x1

    sub-int/2addr v11, v12

    add-int v12, p3, v5

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p1, v11, v9, v12, v9}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 289
    const/4 v10, 0x0

    .line 252
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 230
    .end local v2    # "byteStart":I
    .end local v3    # "column":I
    .end local v8    # "row":I
    .end local v9    # "rowY":I
    .end local v10    # "tempLength":I
    :cond_6
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getBytePerRow()I

    move-result v1

    goto :goto_0

    .line 236
    :cond_7
    and-int/lit8 v11, p5, 0x1

    if-eqz v11, :cond_2

    .line 238
    shr-int/lit8 v11, v5, 0x1

    sub-int p3, p3, v11

    goto :goto_1

    .line 243
    :cond_8
    and-int/lit8 v11, p5, 0x2

    if-eqz v11, :cond_3

    .line 245
    shr-int/lit8 v11, v4, 0x1

    sub-int p4, p4, v11

    goto :goto_2

    .line 265
    .restart local v2    # "byteStart":I
    .restart local v3    # "column":I
    .restart local v8    # "row":I
    .restart local v9    # "rowY":I
    .restart local v10    # "tempLength":I
    :cond_9
    shr-int/lit8 v11, v3, 0x3

    add-int v6, v2, v11

    .line 266
    .local v6, "index":I
    array-length v11, p2

    if-ge v6, v11, :cond_0

    .line 271
    and-int/lit8 v11, v3, 0x7

    rsub-int/lit8 v7, v11, 0x7

    .line 272
    .local v7, "offset":I
    aget-byte v11, p2, v6

    const/4 v12, 0x1

    shl-int/2addr v12, v7

    and-int/2addr v11, v12

    if-eqz v11, :cond_b

    .line 274
    add-int/lit8 v10, v10, 0x1

    .line 263
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 278
    :cond_b
    if-lez v10, :cond_a

    .line 280
    add-int v11, p3, v3

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v10, -0x1

    sub-int/2addr v11, v12

    add-int v12, p3, v3

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p1, v11, v9, v12, v9}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 281
    const/4 v10, 0x0

    goto :goto_5
.end method

.method private final drawRGBLattle(Ljavax/microedition/lcdui/Graphics;[BII[IZI)I
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "datas"    # [B
    .param p3, "dataOffset"    # I
    .param p4, "y"    # I
    .param p5, "colors"    # [I
    .param p6, "isEn"    # Z
    .param p7, "baseColor"    # I

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "bytePerRow":I
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getFontWidth()I

    move-result v6

    .line 367
    .local v6, "fontWidth":I
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getHeight()I

    move-result v5

    .line 369
    .local v5, "fontHeight":I
    if-eqz p6, :cond_1

    .line 371
    shr-int/lit8 v6, v6, 0x1

    .line 372
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getBytePerRowEn()I

    move-result v1

    .line 380
    :goto_0
    move/from16 v3, p7

    .line 381
    .local v3, "color":I
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_1
    if-lt v10, v5, :cond_2

    .line 411
    :cond_0
    return v6

    .line 375
    .end local v3    # "color":I
    .end local v10    # "row":I
    :cond_1
    iget-object v11, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v11}, Lcom/hz/string/PixelFont;->getBytePerRow()I

    move-result v1

    goto :goto_0

    .line 384
    .restart local v3    # "color":I
    .restart local v10    # "row":I
    :cond_2
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v11, v0

    if-ge v10, v11, :cond_3

    .line 386
    aget v3, p5, v10

    .line 390
    :cond_3
    mul-int v2, v10, v1

    .line 391
    .local v2, "byteStart":I
    iget v11, p0, Lcom/hz/string/PixelString;->width:I

    mul-int/2addr v11, v10

    add-int v9, p3, v11

    .line 393
    .local v9, "rgbArrayOffset":I
    const/4 v4, 0x0

    .local v4, "column":I
    :goto_2
    if-lt v4, v6, :cond_4

    .line 381
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 395
    :cond_4
    shr-int/lit8 v11, v4, 0x3

    add-int v7, v2, v11

    .line 396
    .local v7, "index":I
    array-length v11, p2

    if-ge v7, v11, :cond_0

    .line 401
    and-int/lit8 v11, v4, 0x7

    rsub-int/lit8 v8, v11, 0x7

    .line 402
    .local v8, "offset":I
    aget-byte v11, p2, v7

    const/4 v12, 0x1

    shl-int/2addr v12, v8

    and-int/2addr v11, v12

    if-eqz v11, :cond_5

    .line 404
    sget-object v11, Lcom/hz/string/PixelString;->RGBArray:[I

    aput v3, v11, v9

    .line 393
    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 406
    :cond_5
    sget-object v11, Lcom/hz/string/PixelString;->RGBArray:[I

    const/4 v12, 0x0

    aput v12, v11, v9

    goto :goto_3
.end method

.method public static splite(Ljava/lang/String;ILcom/hz/string/PixelFont;)[Lcom/hz/string/PixelString;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "font"    # Lcom/hz/string/PixelFont;

    .prologue
    .line 66
    if-nez p0, :cond_1

    .line 67
    const/4 v2, 0x0

    .line 110
    :cond_0
    return-object v2

    .line 70
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 72
    .local v6, "v":Ljava/util/Vector;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 77
    .local v5, "tempWidth":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 102
    new-instance v7, Lcom/hz/string/PixelString;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Lcom/hz/string/PixelString;-><init>(Ljava/lang/String;Lcom/hz/string/PixelFont;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    :cond_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v2, v7, [Lcom/hz/string/PixelString;

    .line 106
    .local v2, "pss":[Lcom/hz/string/PixelString;
    const/4 v1, 0x0

    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 108
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/string/PixelString;

    aput-object v7, v2, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "pss":[Lcom/hz/string/PixelString;
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 81
    .local v4, "tempChar":C
    invoke-virtual {p2}, Lcom/hz/string/PixelFont;->getFontWidth()I

    move-result v0

    .line 82
    .local v0, "charWidth":I
    invoke-static {v4}, Lcom/hz/string/PixelFont;->isEnChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 83
    div-int/lit8 v0, v0, 0x2

    .line 86
    :cond_4
    add-int v7, v5, v0

    if-le v7, p1, :cond_5

    .line 88
    new-instance v7, Lcom/hz/string/PixelString;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Lcom/hz/string/PixelString;-><init>(Ljava/lang/String;Lcom/hz/string/PixelFont;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 91
    move v5, v0

    .line 77
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    add-int/2addr v5, v0

    goto :goto_2
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I
    .param p5, "baseColor"    # I

    .prologue
    .line 155
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII[I)V

    .line 156
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIII[I)V
    .locals 21
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I
    .param p5, "_baseColor"    # I
    .param p6, "colors"    # [I

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/string/PixelString;->datas:[[B

    if-nez v1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 311
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v1}, Lcom/hz/string/PixelFont;->getHeight()I

    move-result v16

    .line 312
    .local v16, "fontHeight":I
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_5

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/string/PixelString;->width:I

    sub-int p2, p2, v1

    .line 319
    :cond_1
    :goto_1
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_6

    .line 321
    sub-int p3, p3, v16

    .line 327
    :cond_2
    :goto_2
    const/high16 v1, -0x1000000

    or-int p5, p5, v1

    move/from16 v8, p5

    .line 328
    .local v8, "baseColor":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/string/PixelString;->width:I

    mul-int v1, v1, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/string/PixelString;->datas:[[B

    array-length v2, v2

    mul-int v18, v1, v2

    .line 329
    .local v18, "RGBLength":I
    sget-object v1, Lcom/hz/string/PixelString;->RGBArray:[I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/hz/string/PixelString;->RGBArray:[I

    array-length v1, v1

    move/from16 v0, v18

    if-ge v1, v0, :cond_4

    .line 330
    :cond_3
    move/from16 v0, v18

    new-array v1, v0, [I

    sput-object v1, Lcom/hz/string/PixelString;->RGBArray:[I

    .line 335
    :cond_4
    const/4 v4, 0x0

    .line 336
    .local v4, "offset":I
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/string/PixelString;->datas:[[B

    array-length v1, v1

    move/from16 v0, v19

    if-lt v0, v1, :cond_7

    .line 351
    sget-object v10, Lcom/hz/string/PixelString;->RGBArray:[I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/string/PixelString;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/hz/string/PixelString;->width:I

    const/16 v17, 0x1

    move-object/from16 v9, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v9 .. v17}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    goto :goto_0

    .line 315
    .end local v4    # "offset":I
    .end local v8    # "baseColor":I
    .end local v18    # "RGBLength":I
    .end local v19    # "index":I
    :cond_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/string/PixelString;->width:I

    shr-int/lit8 v1, v1, 0x1

    sub-int p2, p2, v1

    goto :goto_1

    .line 322
    :cond_6
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_2

    .line 324
    shr-int/lit8 v1, v16, 0x1

    sub-int p3, p3, v1

    goto :goto_2

    .line 338
    .restart local v4    # "offset":I
    .restart local v8    # "baseColor":I
    .restart local v18    # "RGBLength":I
    .restart local v19    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/string/PixelString;->datas:[[B

    aget-object v20, v1, v19

    .line 339
    .local v20, "pixelData":[B
    if-nez v20, :cond_8

    .line 336
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 343
    :cond_8
    const/4 v7, 0x0

    .line 344
    .local v7, "isEn":Z
    move-object/from16 v0, v20

    array-length v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v2}, Lcom/hz/string/PixelFont;->charLength()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 345
    const/4 v7, 0x1

    .line 348
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/string/PixelString;->datas:[[B

    aget-object v3, v1, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/hz/string/PixelString;->drawRGBLattle(Ljavax/microedition/lcdui/Graphics;[BII[IZI)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_4
.end method

.method public drawBorderString(Ljavax/microedition/lcdui/Graphics;IIIII[I)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "borderColor"    # I
    .param p3, "centerColor"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I
    .param p7, "colors"    # [I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hz/string/PixelString;->datas:[[B

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 130
    add-int/lit8 p5, p5, 0x1

    .line 132
    add-int/lit8 v2, p4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v4, p6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 133
    add-int/lit8 v2, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v4, p6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 134
    add-int/lit8 v3, p5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v4, p6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 135
    add-int/lit8 v3, p5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v4, p6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p3

    move-object v6, p7

    .line 136
    invoke-virtual/range {v0 .. v6}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII[I)V

    goto :goto_0
.end method

.method public drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IIIII[I)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "borderColor"    # I
    .param p3, "centerColor"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I
    .param p7, "colors"    # [I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hz/string/PixelString;->datas:[[B

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 147
    add-int/lit8 p5, p5, 0x1

    .line 149
    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, p5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p3

    move-object v6, p7

    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII[I)V

    goto :goto_0
.end method

.method public getFont()Lcom/hz/string/PixelFont;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/hz/string/PixelString;->font:Lcom/hz/string/PixelFont;

    invoke-virtual {v0}, Lcom/hz/string/PixelFont;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/hz/string/PixelString;->width:I

    return v0
.end method
