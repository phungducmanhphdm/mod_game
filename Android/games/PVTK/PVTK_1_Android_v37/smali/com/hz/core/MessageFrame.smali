.class public Lcom/hz/core/MessageFrame;
.super Ljava/lang/Object;
.source "MessageFrame.java"

# interfaces
.implements Lcom/hz/gui/IGTopDraw;


# static fields
.field public static final BORDER:I = 0x8

.field public static final BOTTOM_MIDDLE_ALIGN:I = 0x2

.field public static final CSS_ARC_RECT:I = 0x1

.field public static final CSS_HALF_APHA:I = 0x2

.field public static final FRC_LEFT:I = 0x1

.field public static final FRC_MIDDLE:I = 0x2

.field public static final FRC_RIGHT:I = 0x3

.field public static final HEIGHT:I = 0x8

.field public static final IMAGE_BOTTOM_LEFT:I = 0x1

.field public static final IMAGE_BOTTOM_MIDDLE_ALIGN:I = 0x4

.field public static final IMAGE_MIDDLE_CENTER:I = 0x2

.field public static final IMAGE_TOP_LEFT:I = 0x0

.field public static final IMAGE_TOP_MIDDLE_ALIGN:I = 0x3

.field public static final MF_ALIGH:I = 0x9

.field public static final MF_ALL:I = 0xe

.field public static final MF_BOTTOM:I = 0x5

.field public static final MF_CSS:I = 0xa

.field public static final MF_FRC_BOTTOM_X:I = 0xc

.field public static final MF_FRC_TOP_X:I = 0xb

.field public static final MF_H:I = 0x3

.field public static final MF_IMAGE_ALIGN:I = 0xd

.field public static final MF_LEFT:I = 0x6

.field public static final MF_MAX_W:I = 0x8

.field public static final MF_RIGHT:I = 0x7

.field public static final MF_TOP:I = 0x4

.field public static final MF_W:I = 0x2

.field public static final MF_X:I = 0x0

.field public static final MF_Y:I = 0x1

.field public static final TIME_1:I = 0x1e

.field public static final TIME_2:I = 0x3c

.field public static final TIME_3:I = 0x5a

.field public static final TIME_4:I = 0x78

.field public static final TIME_5:I = 0x96

.field public static final TOP_MIDDLE_ALIGN:I = 0x1

.field public static final WIDTH:I = 0x8

.field public static final WIDTH_MAX:I


# instance fields
.field arrowImage:Ljavax/microedition/lcdui/Image;

.field drawCount:I

.field hotKeyGuide:I

.field hotKeySet:Lcom/hz/image/ImageSet;

.field imageSprite:Ljava/lang/Object;

.field isShowFrc:Z

.field isShowMsg:Z

.field isShowTime:Z

.field message:[Lcom/hz/string/PowerString;

.field vmData:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hz/core/MessageFrame;->WIDTH_MAX:I

    .line 107
    return-void
.end method

.method public constructor <init>(I)V
    .locals 10
    .param p1, "css"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    .line 155
    iput-boolean v1, p0, Lcom/hz/core/MessageFrame;->isShowFrc:Z

    .line 158
    iput-boolean v1, p0, Lcom/hz/core/MessageFrame;->isShowMsg:Z

    .line 166
    iput-boolean v5, p0, Lcom/hz/core/MessageFrame;->isShowTime:Z

    .line 169
    iput v5, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    .line 227
    iput v3, p0, Lcom/hz/core/MessageFrame;->hotKeyGuide:I

    .line 195
    const-string v0, "/common/guide.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    .line 196
    const-string v1, ""

    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v2, v0, -0x4

    .line 197
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    move-object v0, p0

    move v4, p1

    move v6, v5

    move v8, v5

    .line 196
    invoke-virtual/range {v0 .. v9}, Lcom/hz/core/MessageFrame;->setAttribute(Ljava/lang/String;IIIZIIII)V

    .line 198
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 10
    .param p1, "_maxWidth"    # I
    .param p2, "_css"    # I
    .param p3, "isShowTime"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    .line 155
    iput-boolean v1, p0, Lcom/hz/core/MessageFrame;->isShowFrc:Z

    .line 158
    iput-boolean v1, p0, Lcom/hz/core/MessageFrame;->isShowMsg:Z

    .line 166
    iput-boolean v6, p0, Lcom/hz/core/MessageFrame;->isShowTime:Z

    .line 169
    iput v6, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    .line 227
    iput v3, p0, Lcom/hz/core/MessageFrame;->hotKeyGuide:I

    .line 184
    const/4 v1, 0x0

    .line 185
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v8, v6

    .line 184
    invoke-virtual/range {v0 .. v9}, Lcom/hz/core/MessageFrame;->setAttribute(Ljava/lang/String;IIIZIIII)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 10
    .param p1, "_message"    # Ljava/lang/String;
    .param p2, "_maxWidth"    # I
    .param p3, "_align"    # I
    .param p4, "_css"    # I
    .param p5, "isShowTime"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    .line 155
    iput-boolean v1, p0, Lcom/hz/core/MessageFrame;->isShowFrc:Z

    .line 158
    iput-boolean v1, p0, Lcom/hz/core/MessageFrame;->isShowMsg:Z

    .line 166
    iput-boolean v6, p0, Lcom/hz/core/MessageFrame;->isShowTime:Z

    .line 169
    iput v6, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/core/MessageFrame;->hotKeyGuide:I

    .line 190
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, v6

    .line 189
    invoke-virtual/range {v0 .. v9}, Lcom/hz/core/MessageFrame;->setAttribute(Ljava/lang/String;IIIZIIII)V

    .line 191
    return-void
.end method

.method public static clearUIMsgFrame(Lcom/hz/gui/GContainer;)V
    .locals 4
    .param p0, "container"    # Lcom/hz/gui/GContainer;

    .prologue
    .line 650
    iget-object v3, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 662
    :cond_0
    return-void

    .line 654
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 656
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/hz/core/MessageFrame;

    if-nez v3, :cond_3

    .line 654
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 659
    check-cast v1, Lcom/hz/core/MessageFrame;

    .line 660
    .local v1, "msgFrame":Lcom/hz/core/MessageFrame;
    invoke-virtual {v1}, Lcom/hz/core/MessageFrame;->doClear()V

    goto :goto_1
.end method

.method private final drawKeyPanel(Z)[I
    .locals 1
    .param p1, "isDraw"    # Z

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTimeByStr(Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x1e

    .line 37
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    .local v0, "length":I
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "pos":I
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 48
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 50
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 51
    const/16 v2, 0x3c

    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 45
    const-string v3, "\n"

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 52
    :cond_3
    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    .line 53
    const/16 v2, 0x5a

    goto :goto_0

    .line 54
    :cond_4
    const/16 v2, 0x9

    if-ge v0, v2, :cond_5

    .line 55
    const/16 v2, 0x78

    goto :goto_0

    .line 57
    :cond_5
    const/16 v2, 0x96

    goto :goto_0
.end method


# virtual methods
.method public doClear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0, v0}, Lcom/hz/core/MessageFrame;->setDrawCount(I)V

    .line 665
    invoke-virtual {p0, v1}, Lcom/hz/core/MessageFrame;->setMessage(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v1, v0}, Lcom/hz/core/MessageFrame;->setImageSprite(Ljava/lang/Object;I)V

    .line 667
    return-void
.end method

.method public doDraw(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 26
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "sx"    # I
    .param p3, "sy"    # I
    .param p4, "frcTopX"    # I
    .param p5, "frcBotCenX"    # I

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hz/core/MessageFrame;->isShowMsg:Z

    if-eqz v4, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->message:[Lcom/hz/string/PowerString;

    if-nez v4, :cond_1

    .line 493
    :cond_0
    return-void

    .line 367
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hz/core/MessageFrame;->isShowTime:Z

    if-eqz v4, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/core/MessageFrame;->drawCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/hz/core/MessageFrame;->drawCount:I

    if-ltz v4, :cond_0

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/lit8 v8, v4, 0x8

    .line 374
    .local v8, "_w":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/lit8 v9, v4, 0x8

    .line 375
    .local v9, "_h":I
    div-int/lit8 v4, v8, 0x2

    sub-int v6, p2, v4

    .line 376
    .local v6, "_x":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    move v4, v9

    :goto_0
    sub-int v7, p3, v4

    .line 379
    .local v7, "_y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    if-ge v6, v4, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/lit8 v6, v4, 0x5

    .line 382
    :cond_3
    add-int v4, v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v10, 0x7

    aget v5, v5, v10

    if-le v4, v5, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    sub-int/2addr v4, v8

    add-int/lit8 v6, v4, -0x5

    .line 385
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    if-ge v7, v4, :cond_5

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/lit8 v7, v4, 0x5

    .line 388
    :cond_5
    add-int v4, v7, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v10, 0x5

    aget v5, v5, v10

    if-le v4, v5, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    sub-int/2addr v4, v9

    add-int/lit8 v7, v4, -0x5

    .line 392
    :cond_6
    move/from16 v0, p5

    if-ge v0, v6, :cond_7

    .line 393
    add-int/lit8 p5, v6, 0x1

    .line 395
    :cond_7
    add-int v4, v6, v8

    move/from16 v0, p5

    if-le v0, v4, :cond_8

    .line 396
    add-int v4, v6, v8

    add-int/lit8 p5, v4, -0x1

    .line 400
    :cond_8
    const/4 v11, 0x0

    .line 401
    .local v11, "frcColor":I
    const/16 v20, 0x0

    .line 402
    .local v20, "fontColor":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 419
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hz/core/MessageFrame;->isShowFrc:Z

    if-eqz v4, :cond_9

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 449
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->imageSprite:Ljava/lang/Object;

    if-eqz v4, :cond_b

    .line 450
    move/from16 v23, v6

    .line 451
    .local v23, "image_x":I
    const/16 v24, 0x0

    .line 452
    .local v24, "image_y":I
    const/16 v22, 0x0

    .line 453
    .local v22, "image_align":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 467
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->imageSprite:Ljava/lang/Object;

    instance-of v4, v4, Ljavax/microedition/lcdui/Image;

    if-eqz v4, :cond_a

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->imageSprite:Ljava/lang/Object;

    check-cast v4, Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v4, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 470
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->imageSprite:Ljava/lang/Object;

    instance-of v4, v4, Lcom/hz/sprite/GameSprite;

    if-eqz v4, :cond_b

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->imageSprite:Ljava/lang/Object;

    check-cast v4, Lcom/hz/sprite/GameSprite;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 476
    .end local v22    # "image_align":I
    .end local v23    # "image_x":I
    .end local v24    # "image_y":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hz/core/MessageFrame;->isShowMsg:Z

    if-eqz v4, :cond_0

    .line 477
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 480
    add-int/lit8 v18, v6, 0x4

    .line 481
    .local v18, "drawX":I
    add-int/lit8 v19, v7, 0x4

    .line 483
    .local v19, "drawY":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->message:[Lcom/hz/string/PowerString;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->message:[Lcom/hz/string/PowerString;

    aget-object v25, v4, v21

    .line 485
    .local v25, "msg":Lcom/hz/string/PowerString;
    if-nez v25, :cond_f

    .line 483
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 376
    .end local v7    # "_y":I
    .end local v11    # "frcColor":I
    .end local v18    # "drawX":I
    .end local v19    # "drawY":I
    .end local v20    # "fontColor":I
    .end local v21    # "i":I
    .end local v25    # "msg":Lcom/hz/string/PowerString;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 404
    .restart local v7    # "_y":I
    .restart local v11    # "frcColor":I
    .restart local v20    # "fontColor":I
    :pswitch_0
    const v4, 0x426974

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 405
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v8, v9}, Lcom/hz/main/GameView;->fillArcRect(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 406
    const v4, 0xdbf1e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 407
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v10, v8, -0x2

    add-int/lit8 v12, v9, -0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v10, v12}, Lcom/hz/main/GameView;->fillArcRect(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 408
    const v11, 0xdbf1e7

    .line 409
    const/16 v20, 0x0

    .line 410
    goto/16 :goto_1

    .line 412
    :pswitch_1
    const/high16 v5, -0x54000000

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 413
    const/16 v20, 0x0

    .line 414
    const v20, 0xffd07e

    goto/16 :goto_1

    .line 422
    :pswitch_2
    add-int v4, v7, v9

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v13, v4, -0x1

    const/16 v14, 0x8

    const/16 v15, 0x8

    const/16 v17, 0x2

    move-object/from16 v10, p1

    move/from16 v12, p4

    move/from16 v16, p5

    invoke-static/range {v10 .. v17}, Lcom/hz/main/GameView;->fillTriangle(Ljavax/microedition/lcdui/Graphics;IIIIIIB)V

    goto/16 :goto_2

    .line 425
    :pswitch_3
    add-int/lit8 v4, v7, -0x8

    add-int/lit8 v13, v4, 0x1

    const/16 v14, 0x8

    const/16 v15, 0x8

    const/16 v17, 0x3

    move-object/from16 v10, p1

    move/from16 v12, p4

    move/from16 v16, p5

    invoke-static/range {v10 .. v17}, Lcom/hz/main/GameView;->fillTriangle(Ljavax/microedition/lcdui/Graphics;IIIIIIB)V

    goto/16 :goto_2

    .line 428
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    if-eqz v4, :cond_9

    .line 429
    sget v4, Lcom/hz/main/GameCanvas;->isMotion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v15, v7, 0x2

    const/16 v16, 0x21

    const/16 v17, 0x2

    move-object/from16 v12, p1

    move/from16 v14, p2

    invoke-static/range {v12 .. v17}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIII)V

    goto/16 :goto_2

    .line 432
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v15, v7, 0x4

    const/16 v16, 0x21

    const/16 v17, 0x2

    move-object/from16 v12, p1

    move/from16 v14, p2

    invoke-static/range {v12 .. v17}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIII)V

    goto/16 :goto_2

    .line 437
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    if-eqz v4, :cond_9

    .line 438
    sget v4, Lcom/hz/main/GameCanvas;->isMotion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    add-int v5, v7, v9

    add-int/lit8 v5, v5, -0x2

    const/16 v10, 0x11

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_2

    .line 441
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    add-int v5, v7, v9

    add-int/lit8 v5, v5, -0x4

    const/16 v10, 0x11

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_2

    .line 455
    .restart local v22    # "image_align":I
    .restart local v23    # "image_x":I
    .restart local v24    # "image_y":I
    :pswitch_6
    add-int/lit8 v24, v7, 0x0

    .line 456
    const/16 v22, 0x24

    .line 457
    goto/16 :goto_3

    .line 459
    :pswitch_7
    add-int v24, v7, v9

    .line 460
    const/16 v22, 0x14

    .line 461
    goto/16 :goto_3

    .line 463
    :pswitch_8
    div-int/lit8 v4, v8, 0x2

    add-int v23, v6, v4

    .line 464
    add-int v24, v7, v9

    goto/16 :goto_3

    .line 488
    .end local v22    # "image_align":I
    .end local v23    # "image_x":I
    .end local v24    # "image_y":I
    .restart local v18    # "drawX":I
    .restart local v19    # "drawY":I
    .restart local v21    # "i":I
    .restart local v25    # "msg":Lcom/hz/string/PowerString;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 490
    invoke-virtual/range {v25 .. v25}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v4

    add-int v19, v19, v4

    goto/16 :goto_5

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 420
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 453
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public doUpdate(III)V
    .locals 4
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "frcType"    # I

    .prologue
    .line 536
    move v1, p1

    .line 537
    .local v1, "_frcTop":I
    move v0, p1

    .line 538
    .local v0, "_frcBottom":I
    packed-switch p3, :pswitch_data_0

    .line 549
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 550
    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v3, 0x1

    aput p2, v2, v3

    .line 551
    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v3, 0xb

    aput v1, v2, v3

    .line 552
    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v3, 0xc

    aput v0, v2, v3

    .line 554
    invoke-virtual {p0}, Lcom/hz/core/MessageFrame;->draw()V

    .line 555
    return-void

    .line 540
    :pswitch_1
    add-int/lit8 v1, p1, -0x2

    .line 541
    add-int/lit8 v0, p1, -0x7

    .line 542
    goto :goto_0

    .line 544
    :pswitch_2
    add-int/lit8 v1, p1, 0x2

    .line 545
    add-int/lit8 v0, p1, 0x7

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doUpdate(Ljava/lang/String;IIZI)V
    .locals 5
    .param p1, "_message"    # Ljava/lang/String;
    .param p2, "_x"    # I
    .param p3, "_y"    # I
    .param p4, "isDown"    # Z
    .param p5, "frcType"    # I

    .prologue
    const/4 v2, 0x1

    .line 513
    move v1, p2

    .line 514
    .local v1, "_frcTop":I
    move v0, p2

    .line 515
    .local v0, "_frcBottom":I
    packed-switch p5, :pswitch_data_0

    .line 526
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v4, 0x0

    aput p2, v3, v4

    .line 527
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aput p3, v3, v2

    .line 528
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0xb

    aput v1, v3, v4

    .line 529
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0xc

    aput v0, v3, v4

    .line 530
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0x9

    if-eqz p4, :cond_0

    const/4 v2, 0x2

    :cond_0
    aput v2, v3, v4

    .line 531
    invoke-virtual {p0, p1}, Lcom/hz/core/MessageFrame;->setMessage(Ljava/lang/String;)V

    .line 532
    return-void

    .line 517
    :pswitch_1
    add-int/lit8 v1, p2, -0x2

    .line 518
    add-int/lit8 v0, p2, -0x7

    .line 519
    goto :goto_0

    .line 521
    :pswitch_2
    add-int/lit8 v1, p2, 0x2

    .line 522
    add-int/lit8 v0, p2, 0x7

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doUpdate(Ljava/lang/String;Lcom/hz/gui/GWidget;ZI)V
    .locals 8
    .param p1, "_message"    # Ljava/lang/String;
    .param p2, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p3, "isDown"    # Z
    .param p4, "frcType"    # I

    .prologue
    .line 504
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getW()I

    move-result v7

    .line 505
    .local v7, "width":I
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v6

    .line 506
    .local v6, "heigth":I
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v0

    div-int/lit8 v1, v7, 0x2

    add-int v2, v0, v1

    .line 507
    .local v2, "_x":I
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v0

    if-eqz p3, :cond_0

    .end local v6    # "heigth":I
    :goto_0
    add-int v3, v0, v6

    .local v3, "_y":I
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 508
    invoke-virtual/range {v0 .. v5}, Lcom/hz/core/MessageFrame;->doUpdate(Ljava/lang/String;IIZI)V

    .line 509
    return-void

    .line 507
    .end local v3    # "_y":I
    .restart local v6    # "heigth":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public doUpdateGuide(Ljava/lang/String;III)V
    .locals 3
    .param p1, "guideStr"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "align"    # I

    .prologue
    const/4 v2, 0x3

    .line 597
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    if-nez v1, :cond_0

    .line 614
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hz/core/MessageFrame;->setMessage(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->arrowImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 604
    .local v0, "imgH":I
    const/4 v1, 0x4

    if-ne p4, v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v1, v1, v2

    add-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 611
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 612
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v2, 0x1

    aput p3, v1, v2

    .line 613
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v2, 0x9

    aput p4, v1, v2

    goto :goto_0

    .line 607
    :cond_2
    if-ne p4, v2, :cond_1

    .line 608
    add-int/2addr p3, v0

    goto :goto_1
.end method

.method public doUpdateKeyShopView(IILcom/hz/sprite/GameSprite;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "viewSprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 565
    if-nez p3, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/hz/core/MessageFrame;->doClear()V

    .line 586
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p3}, Lcom/hz/sprite/GameSprite;->getWidth()I

    move-result v2

    .line 572
    .local v2, "width":I
    invoke-virtual {p3}, Lcom/hz/sprite/GameSprite;->getHeight()I

    move-result v0

    .line 573
    .local v0, "height":I
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v1, v3, 0x3

    .line 574
    .local v1, "maxWidth":I
    if-le v2, v1, :cond_1

    .line 575
    move v2, v1

    .line 577
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/hz/core/MessageFrame;->setWH(II)V

    .line 579
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aput p1, v3, v5

    .line 580
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v4, 0x1

    aput p2, v3, v4

    .line 581
    invoke-virtual {p0, p3, v6}, Lcom/hz/core/MessageFrame;->setImageSprite(Ljava/lang/Object;I)V

    .line 582
    const/16 v3, 0x5a

    invoke-virtual {p0, v3}, Lcom/hz/core/MessageFrame;->setDrawCount(I)V

    .line 584
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0x9

    aput v6, v3, v4

    .line 585
    iput-boolean v5, p0, Lcom/hz/core/MessageFrame;->isShowFrc:Z

    goto :goto_0
.end method

.method public draw()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 221
    invoke-direct {p0, v3}, Lcom/hz/core/MessageFrame;->drawKeyPanel(Z)[I

    .line 222
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v3, v0, v3

    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0xb

    aget v4, v0, v4

    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v5, 0xc

    aget v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hz/core/MessageFrame;->doDraw(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 223
    return-void
.end method

.method public getAttribute(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, -0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getMaxW()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/hz/core/MessageFrame;->getAttribute(I)I

    move-result v0

    return v0
.end method

.method public logic()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    .line 176
    iget v0, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;IIIZIIII)V
    .locals 2
    .param p1, "welcome"    # Ljava/lang/String;
    .param p2, "_maxWidth"    # I
    .param p3, "_align"    # I
    .param p4, "_css"    # I
    .param p5, "_isShowTime"    # Z
    .param p6, "_top"    # I
    .param p7, "_bottom"    # I
    .param p8, "_left"    # I
    .param p9, "_right"    # I

    .prologue
    .line 203
    iput-boolean p5, p0, Lcom/hz/core/MessageFrame;->isShowTime:Z

    .line 205
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v1, 0x8

    aput p2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v1, 0x9

    aput p3, v0, v1

    .line 207
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v1, 0xa

    aput p4, v0, v1

    .line 209
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v1, 0x4

    aput p6, v0, v1

    .line 210
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v1, 0x5

    aput p7, v0, v1

    .line 211
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v1, 0x6

    aput p8, v0, v1

    .line 212
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v1, 0x7

    aput p9, v0, v1

    .line 214
    invoke-virtual {p0, p1}, Lcom/hz/core/MessageFrame;->setMessage(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setDrawCount(I)V
    .locals 0
    .param p1, "_drawCount"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hz/core/MessageFrame;->drawCount:I

    .line 172
    return-void
.end method

.method public setHotKey(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "keyValue"    # I

    .prologue
    .line 232
    return-void
.end method

.method public setImageSprite(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "_imageSprite"    # Ljava/lang/Object;
    .param p2, "alginType"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/hz/core/MessageFrame;->imageSprite:Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 114
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "welcome"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x2

    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 140
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hz/core/MessageFrame;->message:[Lcom/hz/string/PowerString;

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v2, v2, v3

    aput v2, v1, v4

    .line 145
    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v2, v2, v4

    invoke-static {p1, v1, v2}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v0

    .line 146
    .local v0, "msgWelcome":[Lcom/hz/string/PowerString;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    iget-object v2, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v2, v2, v3

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lcom/hz/string/PowerString;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v1, v4

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v2, 0x3

    sget v3, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    array-length v4, v0

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 151
    iput-object v0, p0, Lcom/hz/core/MessageFrame;->message:[Lcom/hz/string/PowerString;

    goto :goto_0
.end method

.method public setWH(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/core/MessageFrame;->isShowMsg:Z

    .line 161
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 162
    iget-object v0, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 163
    return-void
.end method

.method public updateFrc(II)V
    .locals 6
    .param p1, "frcType"    # I
    .param p2, "offX"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 622
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v3, v3, v5

    if-nez v3, :cond_0

    .line 643
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v1, 0x0

    .line 627
    .local v1, "_frcTop":I
    const/4 v0, 0x0

    .line 628
    .local v0, "_frcBottom":I
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v3, v3, v5

    div-int/lit8 v3, v3, 0x2

    if-lt p2, v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v3, v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, v3, -0xa

    .line 631
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 632
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 633
    .local v2, "startX":I
    add-int v3, v2, p2

    add-int/lit8 v1, v3, 0x2

    .line 634
    add-int v3, v2, p2

    add-int/lit8 v0, v3, 0x7

    .line 641
    .end local v2    # "startX":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0xb

    aput v1, v3, v4

    .line 642
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    const/16 v4, 0xc

    aput v0, v3, v4

    goto :goto_0

    .line 636
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 637
    iget-object v3, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/hz/core/MessageFrame;->vmData:[I

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 638
    .restart local v2    # "startX":I
    sub-int v3, v2, p2

    add-int/lit8 v1, v3, -0x2

    .line 639
    sub-int v3, v2, p2

    add-int/lit8 v0, v3, -0x7

    goto :goto_1
.end method
