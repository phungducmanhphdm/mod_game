.class public Lcom/hz/zoom/J2MEZoom;
.super Lcom/hz/zoom/Zoom;
.source "J2MEZoom.java"


# instance fields
.field desBuf:[I

.field srcBuf:[I

.field tabX:[I

.field tabY:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/hz/zoom/Zoom;-><init>()V

    return-void
.end method

.method private final initZoom(IIII)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "srcW"    # I
    .param p4, "srcH"    # I

    .prologue
    .line 40
    new-array v8, p1, [I

    iput-object v8, p0, Lcom/hz/zoom/J2MEZoom;->tabX:[I

    .line 41
    new-array v8, p2, [I

    iput-object v8, p0, Lcom/hz/zoom/J2MEZoom;->tabY:[I

    .line 43
    move v2, p1

    .line 44
    .local v2, "desW":I
    move v1, p2

    .line 45
    .local v1, "desH":I
    mul-int v8, v2, v1

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/hz/zoom/J2MEZoom;->desBuf:[I

    .line 47
    mul-int v8, p3, p4

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/hz/zoom/J2MEZoom;->srcBuf:[I

    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, "sb":I
    const/4 v0, 0x0

    .line 50
    .local v0, "db":I
    const/4 v7, 0x0

    .line 51
    .local v7, "tems":I
    const/4 v6, 0x0

    .line 52
    .local v6, "temd":I
    if-le p4, v1, :cond_0

    move v3, p4

    .line 53
    .local v3, "distance":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-le v4, v3, :cond_1

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    if-le p3, v2, :cond_4

    move v3, p3

    .line 71
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-le v4, v3, :cond_5

    .line 84
    return-void

    .end local v3    # "distance":I
    .end local v4    # "i":I
    :cond_0
    move v3, v1

    .line 52
    goto :goto_0

    .line 54
    .restart local v3    # "distance":I
    .restart local v4    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/hz/zoom/J2MEZoom;->tabY:[I

    aput v5, v8, v0

    .line 55
    add-int/2addr v7, p4

    .line 56
    add-int/2addr v6, v1

    .line 57
    if-le v7, v3, :cond_2

    .line 58
    sub-int/2addr v7, v3

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 61
    :cond_2
    if-le v6, v3, :cond_3

    .line 62
    sub-int/2addr v6, v3

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 53
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    .line 70
    goto :goto_2

    .line 72
    :cond_5
    iget-object v8, p0, Lcom/hz/zoom/J2MEZoom;->tabX:[I

    aput v5, v8, v0

    .line 73
    add-int/2addr v7, p3

    .line 74
    add-int/2addr v6, v2

    .line 75
    if-le v7, v3, :cond_6

    .line 76
    sub-int/2addr v7, v3

    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 79
    :cond_6
    if-le v6, v3, :cond_7

    .line 80
    sub-int/2addr v6, v3

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 24
    invoke-super {p0}, Lcom/hz/zoom/Zoom;->init()V

    .line 26
    iget v0, p0, Lcom/hz/zoom/J2MEZoom;->zoomWidth:I

    iget v1, p0, Lcom/hz/zoom/J2MEZoom;->zoomHeight:I

    iget v2, p0, Lcom/hz/zoom/J2MEZoom;->gameWidth:I

    iget v3, p0, Lcom/hz/zoom/J2MEZoom;->gameHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hz/zoom/J2MEZoom;->initZoom(IIII)V

    .line 27
    iget v0, p0, Lcom/hz/zoom/J2MEZoom;->gameWidth:I

    iget v1, p0, Lcom/hz/zoom/J2MEZoom;->gameHeight:I

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/zoom/J2MEZoom;->buffer:Ljavax/microedition/lcdui/Image;

    .line 28
    iget-object v0, p0, Lcom/hz/zoom/J2MEZoom;->buffer:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/zoom/J2MEZoom;->bufferGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 29
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 25
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/zoom/J2MEZoom;->buffer:Ljavax/microedition/lcdui/Image;

    .line 89
    .local v2, "src":Ljavax/microedition/lcdui/Image;
    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/hz/zoom/J2MEZoom;->gameWidth:I

    .line 94
    .local v5, "srcW":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/hz/zoom/J2MEZoom;->gameHeight:I

    .line 96
    .local v9, "srcH":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/hz/zoom/J2MEZoom;->zoomWidth:I

    .line 97
    .local v13, "desW":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/zoom/J2MEZoom;->zoomHeight:I

    move/from16 v17, v0

    .line 99
    .local v17, "desH":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/zoom/J2MEZoom;->srcBuf:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 102
    const/16 v19, 0x0

    .line 103
    .local v19, "dx":I
    const/16 v20, 0x0

    .line 104
    .local v20, "dy":I
    const/16 v24, 0x0

    .line 105
    .local v24, "sy":I
    const/16 v23, -0x1

    .line 106
    .local v23, "oldy":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/zoom/J2MEZoom;->desBuf:[I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, p1

    move/from16 v16, v13

    invoke-virtual/range {v10 .. v18}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    goto :goto_0

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/zoom/J2MEZoom;->tabY:[I

    aget v3, v3, v21

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/zoom/J2MEZoom;->desBuf:[I

    sub-int v4, v20, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/zoom/J2MEZoom;->desBuf:[I

    move/from16 v0, v20

    invoke-static {v3, v4, v6, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/zoom/J2MEZoom;->tabY:[I

    aget v23, v3, v21

    .line 118
    add-int v20, v20, v13

    .line 106
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 110
    :cond_2
    const/16 v19, 0x0

    .line 111
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_3
    move/from16 v0, v22

    if-lt v0, v13, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/zoom/J2MEZoom;->tabY:[I

    aget v3, v3, v21

    sub-int v3, v3, v23

    mul-int/2addr v3, v5

    add-int v24, v24, v3

    goto :goto_2

    .line 112
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hz/zoom/J2MEZoom;->desBuf:[I

    add-int v4, v20, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/zoom/J2MEZoom;->srcBuf:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/zoom/J2MEZoom;->tabX:[I

    aget v7, v7, v22

    add-int v7, v7, v24

    aget v6, v6, v7

    aput v6, v3, v4

    .line 113
    add-int/lit8 v19, v19, 0x1

    .line 111
    add-int/lit8 v22, v22, 0x1

    goto :goto_3
.end method
