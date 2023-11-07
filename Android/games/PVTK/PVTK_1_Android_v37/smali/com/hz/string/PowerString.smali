.class public Lcom/hz/string/PowerString;
.super Ljava/lang/Object;
.source "PowerString.java"


# static fields
.field private static final CHAR_BAG:C = 'b'

.field private static final CHAR_COLOR_STRING:C = 'c'

.field private static final CHAR_END:C = 'p'

.field private static final CHAR_FACE_ICON:C = 'f'

.field private static final CHAR_ICON:C = 'i'

.field private static final CHAR_MISSION:C = 'm'

.field private static final CHAR_SPLIT:C = '/'

.field public static final LENGTH_BAG:I = 0x4

.field public static final LENGTH_FACE_ICON:I = 0x4

.field public static final LENGTH_ICON:I = 0x7

.field public static final LENGTH_MISSION:I = 0x6

.field public static final LENGTH_STRING:I = 0x8

.field public static final UNDERLINE_CHAR:Ljava/lang/String; = "{}"


# instance fields
.field private entities:[Lcom/hz/string/StringEntity;

.field private font:Ljavax/microedition/lcdui/Font;

.field private height:I

.field private width:I


# direct methods
.method private constructor <init>(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "_font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    .line 173
    return-void
.end method

.method private addEntity(Lcom/hz/string/StringEntity;)V
    .locals 4
    .param p1, "entity"    # Lcom/hz/string/StringEntity;

    .prologue
    const/4 v3, 0x0

    .line 497
    if-nez p1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    if-nez v1, :cond_1

    .line 503
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/hz/string/StringEntity;

    iput-object v1, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    .line 504
    iget-object v1, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    aput-object p1, v1, v3

    goto :goto_0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcom/hz/string/StringEntity;

    .line 508
    .local v0, "newEntities":[Lcom/hz/string/StringEntity;
    iget-object v1, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    iget-object v2, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 510
    iput-object v0, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    goto :goto_0
.end method

.method private addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "isUnderLine"    # Z
    .param p4, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 489
    new-instance v0, Lcom/hz/string/StringEntity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hz/string/StringEntity;-><init>(B)V

    .line 490
    .local v0, "entity":Lcom/hz/string/StringEntity;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hz/string/StringEntity;->initStringData(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)V

    .line 491
    invoke-direct {p0, v0}, Lcom/hz/string/PowerString;->addEntity(Lcom/hz/string/StringEntity;)V

    .line 492
    return-object v0
.end method

.method private final analyzeString(Ljava/lang/String;IZ)V
    .locals 22
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "isUnderLine"    # Z

    .prologue
    .line 322
    if-eqz p1, :cond_0

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 326
    .local v13, "length":I
    const/16 v18, 0x0

    .line 327
    .local v18, "offset":I
    const/4 v8, 0x0

    .line 328
    .local v8, "entity":Lcom/hz/string/StringEntity;
    const/16 v19, 0x0

    .local v19, "startIndex":I
    :cond_2
    :goto_1
    move/from16 v0, v19

    if-lt v0, v13, :cond_3

    .line 483
    move/from16 v0, v18

    if-ge v0, v13, :cond_0

    .line 484
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    goto :goto_0

    .line 330
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 333
    .local v6, "c":C
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    .line 336
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 337
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    .line 341
    :cond_4
    new-instance v8, Lcom/hz/string/StringEntity;

    .end local v8    # "entity":Lcom/hz/string/StringEntity;
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/hz/string/StringEntity;-><init>(B)V

    .line 342
    .restart local v8    # "entity":Lcom/hz/string/StringEntity;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/hz/string/StringEntity;->setLength(I)V

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hz/string/PowerString;->addEntity(Lcom/hz/string/StringEntity;)V

    .line 345
    invoke-virtual {v8}, Lcom/hz/string/StringEntity;->getLength()I

    move-result v20

    add-int v19, v19, v20

    .line 346
    move/from16 v18, v19

    .line 347
    goto :goto_1

    .line 350
    :cond_5
    const/4 v12, 0x0

    .line 352
    .local v12, "isMath":Z
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v6, v0, :cond_6

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    if-ge v0, v13, :cond_6

    .line 354
    add-int/lit8 v20, v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 355
    .local v7, "c2":C
    sparse-switch v7, :sswitch_data_0

    .line 477
    .end local v7    # "c2":C
    :cond_6
    :goto_2
    if-nez v12, :cond_2

    .line 478
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 357
    .restart local v7    # "c2":C
    :sswitch_0
    add-int/lit8 v20, v19, 0x7

    move/from16 v0, v20

    if-gt v0, v13, :cond_6

    .line 362
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 363
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    .line 366
    :cond_7
    new-instance v8, Lcom/hz/string/StringEntity;

    .end local v8    # "entity":Lcom/hz/string/StringEntity;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/hz/string/StringEntity;-><init>(B)V

    .line 367
    .restart local v8    # "entity":Lcom/hz/string/StringEntity;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v21, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 368
    .local v11, "imageSetIndex":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v21, v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 369
    .local v10, "frameIndex":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v21, v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 370
    .local v5, "backIconIndex":I
    invoke-virtual {v8, v11, v10, v5}, Lcom/hz/string/StringEntity;->initIconData(III)V

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hz/string/PowerString;->addEntity(Lcom/hz/string/StringEntity;)V

    .line 373
    invoke-virtual {v8}, Lcom/hz/string/StringEntity;->getLength()I

    move-result v20

    add-int v19, v19, v20

    .line 374
    move/from16 v18, v19

    .line 375
    const/4 v12, 0x1

    .line 376
    goto/16 :goto_2

    .line 379
    .end local v5    # "backIconIndex":I
    .end local v10    # "frameIndex":I
    .end local v11    # "imageSetIndex":I
    :sswitch_1
    add-int/lit8 v20, v19, 0x4

    move/from16 v0, v20

    if-gt v0, v13, :cond_6

    .line 384
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 385
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    .line 388
    :cond_8
    new-instance v8, Lcom/hz/string/StringEntity;

    .end local v8    # "entity":Lcom/hz/string/StringEntity;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/hz/string/StringEntity;-><init>(B)V

    .line 389
    .restart local v8    # "entity":Lcom/hz/string/StringEntity;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v21, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 390
    .restart local v10    # "frameIndex":I
    invoke-virtual {v8, v10}, Lcom/hz/string/StringEntity;->initFaceIconData(I)V

    .line 391
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hz/string/PowerString;->addEntity(Lcom/hz/string/StringEntity;)V

    .line 393
    invoke-virtual {v8}, Lcom/hz/string/StringEntity;->getLength()I

    move-result v20

    add-int v19, v19, v20

    .line 394
    move/from16 v18, v19

    .line 395
    const/4 v12, 0x1

    .line 396
    goto/16 :goto_2

    .line 400
    .end local v10    # "frameIndex":I
    :sswitch_2
    add-int/lit8 v16, v19, 0x8

    .line 401
    .local v16, "nextStartIndex":I
    move/from16 v0, v16

    if-ge v0, v13, :cond_6

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13}, Lcom/hz/string/PowerString;->findEndCharIndex(Ljava/lang/String;II)I

    move-result v9

    .line 406
    .local v9, "findIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_6

    .line 409
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 410
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    .line 413
    :cond_9
    add-int/lit8 v20, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/hz/common/Tool;->parseInt16(Ljava/lang/String;I)I

    move-result v15

    .line 415
    .local v15, "nextColor":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 419
    .local v14, "nextAnalyString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 420
    .local v17, "nextUnderLine":Z
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const-string v21, "{}"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 421
    const-string v20, "{}"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 422
    const/16 v17, 0x1

    .line 423
    const-string v20, "{}"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 427
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v15, v1}, Lcom/hz/string/PowerString;->analyzeString(Ljava/lang/String;IZ)V

    .line 429
    add-int/lit8 v19, v9, 0x2

    .line 430
    move/from16 v18, v19

    .line 431
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_2
        0x66 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;)Lcom/hz/string/PowerString;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 646
    new-instance v0, Lcom/hz/string/PowerString;

    invoke-direct {v0, p1}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 648
    .local v0, "powerString":Lcom/hz/string/PowerString;
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v0, p0, v1, v2}, Lcom/hz/string/PowerString;->analyzeString(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_0
    invoke-direct {v0}, Lcom/hz/string/PowerString;->initWidthAndHeight()V

    .line 656
    return-object v0

    .line 649
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final findEndCharIndex(Ljava/lang/String;II)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 283
    const/4 v2, -0x1

    .line 285
    .local v2, "findIndex":I
    const/4 v4, 0x0

    .line 287
    .local v4, "offsetNum":I
    move v3, p2

    .local v3, "index":I
    :goto_0
    if-lt v3, p3, :cond_0

    .line 317
    :goto_1
    return v2

    .line 289
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 290
    .local v0, "c":C
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    if-ge v5, p3, :cond_3

    .line 292
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 295
    .local v1, "c2":C
    const/16 v5, 0x63

    if-ne v1, v5, :cond_1

    .line 296
    add-int/lit8 v4, v4, 0x1

    .line 297
    add-int/lit8 v3, v3, 0x2

    .line 298
    goto :goto_0

    .line 302
    :cond_1
    const/16 v5, 0x70

    if-ne v1, v5, :cond_3

    .line 304
    if-lez v4, :cond_2

    .line 305
    add-int/lit8 v4, v4, -0x1

    .line 306
    add-int/lit8 v3, v3, 0x2

    .line 307
    goto :goto_0

    .line 310
    :cond_2
    move v2, v3

    .line 311
    goto :goto_1

    .line 315
    .end local v1    # "c2":C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private initWidthAndHeight()V
    .locals 5

    .prologue
    .line 187
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    if-nez v4, :cond_0

    .line 205
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 191
    .local v1, "getWidth":I
    const/4 v3, 0x0

    .line 192
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 203
    iput v1, p0, Lcom/hz/string/PowerString;->width:I

    .line 204
    iput v3, p0, Lcom/hz/string/PowerString;->height:I

    goto :goto_0

    .line 194
    :cond_1
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    aget-object v0, v4, v2

    .line 195
    .local v0, "entity":Lcom/hz/string/StringEntity;
    if-nez v0, :cond_3

    .line 192
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v0}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 199
    invoke-virtual {v0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 200
    invoke-virtual {v0}, Lcom/hz/string/StringEntity;->getHeight()I

    move-result v3

    goto :goto_2
.end method

.method public static makeBagString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bagIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 72
    const/16 v0, 0x62

    invoke-static {v0, p0, v1, v1}, Lcom/hz/string/PowerString;->makeIndexValue(CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeColorString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "color"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeColorString(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "color"    # I
    .param p2, "isUnderLine"    # Z

    .prologue
    const/16 v2, 0x2f

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    invoke-static {p1}, Lcom/hz/string/PowerString;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    if-eqz p2, :cond_0

    .line 118
    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeCountryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "<c>"

    return-object v0
.end method

.method public static makeFaceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "faceIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 64
    const/16 v0, 0x66

    invoke-static {v0, p0, v1, v1}, Lcom/hz/string/PowerString;->makeIndexValue(CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeIconString(II)Ljava/lang/String;
    .locals 2
    .param p0, "imageSetIndex"    # I
    .param p1, "frameIndex"    # I

    .prologue
    .line 56
    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/hz/string/PowerString;->makeIndexValue(CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final makeIndexValue(CIII)Ljava/lang/String;
    .locals 3
    .param p0, "prexChar"    # C
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .param p3, "index3"    # I

    .prologue
    const/16 v2, 0xa

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    if-ge p1, v2, :cond_0

    .line 135
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 139
    if-ltz p2, :cond_2

    .line 140
    if-ge p2, v2, :cond_1

    .line 141
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 146
    :cond_2
    if-ltz p3, :cond_3

    .line 147
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeItemIconString(III)Ljava/lang/String;
    .locals 2
    .param p0, "frameIndex"    # I
    .param p1, "grade"    # I
    .param p2, "num"    # I

    .prologue
    .line 46
    const/16 v0, 0x69

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p2, p0, v1}, Lcom/hz/string/PowerString;->makeIndexValue(CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeMissionString(I)Ljava/lang/String;
    .locals 7
    .param p0, "missionID"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x2

    .line 87
    const/16 v4, 0x6d

    invoke-static {v4, p0, v5, v5}, Lcom/hz/string/PowerString;->makeIndexValue(CIII)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v1, v4, 0x6

    .line 90
    .local v1, "dis":I
    if-lez v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 92
    const-string v0, ""

    .line 93
    .local v0, "addStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .end local v0    # "addStr":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    return-object v3

    .line 94
    .restart local v0    # "addStr":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final spiltPowerString(Lcom/hz/string/PowerString;I)[Lcom/hz/string/PowerString;
    .locals 1
    .param p0, "basePowerString"    # Lcom/hz/string/PowerString;
    .param p1, "width"    # I

    .prologue
    .line 639
    if-nez p0, :cond_0

    .line 640
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hz/string/PowerString;

    .line 642
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hz/string/PowerString;->split(I)[Lcom/hz/string/PowerString;

    move-result-object v0

    goto :goto_0
.end method

.method private split(I)[Lcom/hz/string/PowerString;
    .locals 16
    .param p1, "width"    # I

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    if-nez v12, :cond_1

    .line 535
    const/4 v12, 0x1

    new-array v6, v12, [Lcom/hz/string/PowerString;

    const/4 v12, 0x0

    aput-object p0, v6, v12

    .line 633
    :cond_0
    :goto_0
    return-object v6

    .line 538
    :cond_1
    const/4 v10, 0x0

    .line 539
    .local v10, "tempWidth":I
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 540
    .local v11, "vec":Ljava/util/Vector;
    new-instance v5, Lcom/hz/string/PowerString;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 542
    .local v5, "ps":Lcom/hz/string/PowerString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    array-length v12, v12

    if-lt v2, v12, :cond_3

    .line 614
    if-eqz v10, :cond_2

    .line 616
    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 619
    :cond_2
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v12

    if-nez v12, :cond_b

    .line 621
    const/4 v6, 0x0

    goto :goto_0

    .line 544
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    aget-object v1, v12, v2

    .line 545
    .local v1, "entity":Lcom/hz/string/StringEntity;
    if-nez v1, :cond_5

    .line 542
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 550
    :cond_5
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getType()I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_6

    .line 551
    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 554
    new-instance v5, Lcom/hz/string/PowerString;

    .end local v5    # "ps":Lcom/hz/string/PowerString;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 555
    .restart local v5    # "ps":Lcom/hz/string/PowerString;
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v10

    .line 556
    goto :goto_2

    .line 560
    :cond_6
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v12

    add-int/2addr v12, v10

    move/from16 v0, p1

    if-gt v12, v0, :cond_7

    .line 561
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v12

    add-int/2addr v10, v12

    .line 562
    invoke-direct {v5, v1}, Lcom/hz/string/PowerString;->addEntity(Lcom/hz/string/StringEntity;)V

    goto :goto_2

    .line 569
    :cond_7
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->isStringEntity()Z

    move-result v12

    if-nez v12, :cond_8

    .line 570
    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 571
    new-instance v5, Lcom/hz/string/PowerString;

    .end local v5    # "ps":Lcom/hz/string/PowerString;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 573
    .restart local v5    # "ps":Lcom/hz/string/PowerString;
    invoke-direct {v5, v1}, Lcom/hz/string/PowerString;->addEntity(Lcom/hz/string/StringEntity;)V

    .line 574
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v10

    .line 575
    goto :goto_2

    .line 579
    :cond_8
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getStrValue()Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    sub-int v13, p1, v10

    invoke-static {v9, v12, v13}, Lcom/hz/common/Utilities;->splitString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "splitString":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v12, v8

    if-lez v12, :cond_4

    .line 586
    const/4 v12, 0x0

    aget-object v4, v8, v12

    .line 588
    .local v4, "leaveString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v12, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v12

    sub-int v13, p1, v10

    if-gt v12, v13, :cond_9

    .line 589
    iget v12, v1, Lcom/hz/string/StringEntity;->index:I

    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->isUnderLine()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v4, v12, v13, v14}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    .line 590
    const/4 v12, 0x1

    array-length v13, v8

    invoke-static {v8, v12, v13}, Lcom/hz/common/Tool;->appendString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 592
    :cond_9
    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 593
    new-instance v5, Lcom/hz/string/PowerString;

    .end local v5    # "ps":Lcom/hz/string/PowerString;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 594
    .restart local v5    # "ps":Lcom/hz/string/PowerString;
    const/4 v10, 0x0

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    move/from16 v0, p1

    invoke-static {v9, v12, v0}, Lcom/hz/common/Utilities;->splitString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Ljava/lang/String;

    move-result-object v8

    .line 598
    if-eqz v8, :cond_4

    array-length v12, v8

    if-lez v12, :cond_4

    .line 602
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    if-lt v3, v12, :cond_a

    .line 609
    new-instance v5, Lcom/hz/string/PowerString;

    .end local v5    # "ps":Lcom/hz/string/PowerString;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 610
    .restart local v5    # "ps":Lcom/hz/string/PowerString;
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v8, v12

    iget v13, v1, Lcom/hz/string/StringEntity;->index:I

    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->isUnderLine()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    move-result-object v7

    .line 611
    .local v7, "splitEntity":Lcom/hz/string/StringEntity;
    invoke-virtual {v7}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v10

    goto/16 :goto_2

    .line 603
    .end local v7    # "splitEntity":Lcom/hz/string/StringEntity;
    :cond_a
    new-instance v5, Lcom/hz/string/PowerString;

    .end local v5    # "ps":Lcom/hz/string/PowerString;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12}, Lcom/hz/string/PowerString;-><init>(Ljavax/microedition/lcdui/Font;)V

    .line 604
    .restart local v5    # "ps":Lcom/hz/string/PowerString;
    aget-object v12, v8, v3

    iget v13, v1, Lcom/hz/string/StringEntity;->index:I

    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->isUnderLine()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/hz/string/PowerString;->addNormalStringEntity(Ljava/lang/String;IZLjavax/microedition/lcdui/Font;)Lcom/hz/string/StringEntity;

    .line 605
    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 602
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 624
    .end local v1    # "entity":Lcom/hz/string/StringEntity;
    .end local v3    # "j":I
    .end local v4    # "leaveString":Ljava/lang/String;
    .end local v8    # "splitString":[Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_b
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v6, v12, [Lcom/hz/string/PowerString;

    .line 625
    .local v6, "pss":[Lcom/hz/string/PowerString;
    const/4 v2, 0x0

    :goto_4
    array-length v12, v6

    if-ge v2, v12, :cond_0

    .line 627
    invoke-virtual {v11, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hz/string/PowerString;

    aput-object v12, v6, v2

    .line 629
    aget-object v12, v6, v2

    if-eqz v12, :cond_c

    .line 630
    aget-object v12, v6, v2

    invoke-direct {v12}, Lcom/hz/string/PowerString;->initWidthAndHeight()V

    .line 625
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;
    .param p2, "width"    # I

    .prologue
    .line 659
    invoke-static {p0, p1}, Lcom/hz/string/PowerString;->createPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;)Lcom/hz/string/PowerString;

    move-result-object v0

    .line 660
    .local v0, "basePowerString":Lcom/hz/string/PowerString;
    invoke-static {v0, p2}, Lcom/hz/string/PowerString;->spiltPowerString(Lcom/hz/string/PowerString;I)[Lcom/hz/string/PowerString;

    move-result-object v1

    return-object v1
.end method

.method private static final toHexString(I)Ljava/lang/String;
    .locals 5
    .param p0, "_color"    # I

    .prologue
    .line 153
    const-string v0, ""

    .line 155
    .local v0, "colorString":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 157
    .local v2, "length":I
    if-lez v2, :cond_0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    rsub-int/lit8 v3, v2, 0x6

    if-lt v1, v3, :cond_1

    .line 163
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    :goto_1
    return-object v0

    .line 159
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 230
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    if-nez v4, :cond_0

    .line 271
    :goto_0
    return-void

    .line 234
    :cond_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    .line 236
    iget v4, p0, Lcom/hz/string/PowerString;->width:I

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr p2, v4

    .line 241
    :cond_1
    :goto_1
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_4

    .line 243
    iget v4, p0, Lcom/hz/string/PowerString;->height:I

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr p3, v4

    .line 249
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v3

    .line 251
    .local v3, "originalColor":I
    iget-object v4, p0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p1, v4}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 254
    iget v4, p0, Lcom/hz/string/PowerString;->height:I

    shr-int/lit8 v4, v4, 0x1

    add-int v0, p3, v4

    .line 255
    .local v0, "centerY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    array-length v4, v4

    if-lt v2, v4, :cond_5

    .line 269
    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 270
    sget-object v4, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p1, v4}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    goto :goto_0

    .line 237
    .end local v0    # "centerY":I
    .end local v2    # "i":I
    .end local v3    # "originalColor":I
    :cond_3
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_1

    .line 239
    iget v4, p0, Lcom/hz/string/PowerString;->width:I

    sub-int/2addr p2, v4

    goto :goto_1

    .line 244
    :cond_4
    and-int/lit8 v4, p4, 0x20

    if-eqz v4, :cond_2

    .line 246
    iget v4, p0, Lcom/hz/string/PowerString;->height:I

    sub-int/2addr p3, v4

    goto :goto_2

    .line 257
    .restart local v0    # "centerY":I
    .restart local v2    # "i":I
    .restart local v3    # "originalColor":I
    :cond_5
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    aget-object v1, v4, v2

    .line 258
    .local v1, "entity":Lcom/hz/string/StringEntity;
    if-nez v1, :cond_6

    .line 255
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 264
    :cond_6
    const/4 v4, 0x6

    invoke-virtual {v1, p1, p2, v0, v4}, Lcom/hz/string/StringEntity;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 265
    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 267
    invoke-virtual {v1}, Lcom/hz/string/StringEntity;->getWidth()I

    move-result v4

    add-int/2addr p2, v4

    goto :goto_4
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hz/string/PowerString;->font:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/hz/string/PowerString;->height:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 212
    const-string v2, ""

    .line 213
    .local v2, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    if-nez v4, :cond_0

    move-object v3, v2

    .line 225
    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 217
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    array-length v4, v4

    if-lt v1, v4, :cond_1

    move-object v3, v2

    .line 225
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/hz/string/PowerString;->entities:[Lcom/hz/string/StringEntity;

    aget-object v0, v4, v1

    .line 220
    .local v0, "entity":Lcom/hz/string/StringEntity;
    if-nez v0, :cond_2

    .line 217
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hz/string/StringEntity;->getStrValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/hz/string/PowerString;->width:I

    return v0
.end method
