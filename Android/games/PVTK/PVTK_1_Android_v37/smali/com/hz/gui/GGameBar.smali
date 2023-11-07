.class public Lcom/hz/gui/GGameBar;
.super Lcom/hz/gui/GWidget;
.source "GGameBar.java"

# interfaces
.implements Lcom/hz/gui/IGPaint;


# static fields
.field public static final MAX_STAT_LEVEL:I = 0x64

.field private static final TYPE_DEFAULT:B = 0x0t

.field private static final TYPE_H_STAR:B = 0x2t

.field private static final TYPE_V:B = 0x1t


# instance fields
.field barType:B

.field barValue1:I

.field barValue2:I

.field bgColor1:I

.field bgColor2:I

.field bgColor3:I

.field curValue:I

.field fgColor1:I

.field fgColor2:I

.field fgColor3:I

.field maxValue:I


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "data"    # [I

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 23
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hz/gui/GGameBar;->barType:B

    .line 31
    iput v1, p0, Lcom/hz/gui/GGameBar;->fgColor1:I

    .line 32
    iput v1, p0, Lcom/hz/gui/GGameBar;->fgColor2:I

    .line 33
    iput v1, p0, Lcom/hz/gui/GGameBar;->fgColor3:I

    .line 35
    iput v1, p0, Lcom/hz/gui/GGameBar;->bgColor1:I

    .line 36
    iput v1, p0, Lcom/hz/gui/GGameBar;->bgColor2:I

    .line 37
    iput v1, p0, Lcom/hz/gui/GGameBar;->bgColor3:I

    .line 41
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/hz/gui/GGameBar;->setType(I)V

    .line 42
    return-void
.end method

.method private final drawBarDefault(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "drawX"    # I
    .param p3, "drawY"    # I
    .param p4, "drawWidth"    # I
    .param p5, "drawHeight"    # I

    .prologue
    .line 157
    iget v0, p0, Lcom/hz/gui/GGameBar;->bgColor1:I

    if-ltz v0, :cond_0

    .line 158
    iget v0, p0, Lcom/hz/gui/GGameBar;->bgColor1:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 159
    invoke-static/range {p1 .. p5}, Lcom/hz/main/GameView;->fillArcRect(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 162
    :cond_0
    iget v0, p0, Lcom/hz/gui/GGameBar;->bgColor2:I

    if-ltz v0, :cond_1

    .line 163
    iget v0, p0, Lcom/hz/gui/GGameBar;->bgColor2:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 164
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v5, p3, 0x1

    add-int/lit8 v6, p4, -0x2

    add-int/lit8 v7, p5, -0x2

    invoke-static {p1, v0, v5, v6, v7}, Lcom/hz/main/GameView;->fillArcRect2(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 167
    :cond_1
    iget v0, p0, Lcom/hz/gui/GGameBar;->bgColor3:I

    if-ltz v0, :cond_2

    .line 168
    iget v0, p0, Lcom/hz/gui/GGameBar;->bgColor3:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 169
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    add-int/lit8 v6, p4, -0x4

    add-int/lit8 v7, p5, -0x4

    invoke-virtual {p1, v0, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 172
    :cond_2
    add-int/lit8 v0, p4, -0x4

    invoke-direct {p0, v0}, Lcom/hz/gui/GGameBar;->getDrawBarLength(I)I

    move-result v3

    .line 174
    .local v3, "barLength":I
    add-int/lit8 v1, p2, 0x2

    .line 175
    .local v1, "barX":I
    add-int/lit8 v2, p3, 0x2

    .line 176
    .local v2, "barY":I
    add-int/lit8 v4, p5, -0x4

    .line 178
    .local v4, "barHeight":I
    iget v0, p0, Lcom/hz/gui/GGameBar;->fgColor2:I

    if-ltz v0, :cond_3

    .line 179
    iget v0, p0, Lcom/hz/gui/GGameBar;->fgColor2:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 180
    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 183
    :cond_3
    iget v0, p0, Lcom/hz/gui/GGameBar;->fgColor1:I

    if-ltz v0, :cond_4

    .line 184
    iget v0, p0, Lcom/hz/gui/GGameBar;->fgColor1:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v2, v3, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 188
    :cond_4
    iget v0, p0, Lcom/hz/gui/GGameBar;->fgColor3:I

    if-ltz v0, :cond_5

    .line 189
    iget v0, p0, Lcom/hz/gui/GGameBar;->fgColor3:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 190
    add-int v0, v2, v4

    add-int/lit8 v0, v0, -0x2

    const/4 v5, 0x2

    invoke-virtual {p1, v1, v0, v3, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 194
    :cond_5
    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 196
    iget-object v5, p0, Lcom/hz/gui/GGameBar;->colorTable:[I

    invoke-virtual {p0}, Lcom/hz/gui/GGameBar;->getShadeColorTable()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/hz/gui/GGameBar;->getFragmentTable()[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v0, p1

    .line 195
    invoke-static/range {v0 .. v10}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 197
    return-void
.end method

.method private final drawHStarDefault(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "drawX"    # I
    .param p3, "drawY"    # I
    .param p4, "drawWidth"    # I
    .param p5, "drawHeight"    # I

    .prologue
    .line 110
    iget v12, p0, Lcom/hz/gui/GGameBar;->curValue:I

    if-gtz v12, :cond_1

    .line 154
    :cond_0
    return-void

    .line 113
    :cond_1
    iget v7, p0, Lcom/hz/gui/GGameBar;->barValue1:I

    .line 114
    .local v7, "setId":I
    invoke-static {v7}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v6

    .line 115
    .local v6, "set":Lcom/hz/image/ImageSet;
    if-eqz v6, :cond_0

    .line 119
    iget v1, p0, Lcom/hz/gui/GGameBar;->barValue2:I

    .line 121
    .local v1, "frameIndex":I
    invoke-virtual {v6, v1}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v2

    .line 122
    .local v2, "frameWidth":I
    invoke-virtual {v6, v1}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    .line 123
    .local v0, "frameHeight":I
    div-int/lit8 v3, v0, 0x2

    .line 124
    .local v3, "halfHeight":I
    div-int/lit8 v4, v2, 0x2

    .line 126
    .local v4, "halfWidth":I
    if-lez v2, :cond_0

    .line 130
    iget v12, p0, Lcom/hz/gui/GGameBar;->curValue:I

    div-int/lit8 v8, v12, 0xa

    .line 131
    .local v8, "starNum":I
    if-gtz v8, :cond_2

    .line 132
    const/4 v8, 0x1

    .line 135
    :cond_2
    add-int/lit8 v12, v8, 0x1

    div-int/lit8 v11, v12, 0x2

    .line 137
    .local v11, "widthPie":I
    mul-int v12, v11, v2

    sub-int v12, p4, v12

    div-int/lit8 v12, v12, 0x2

    add-int v9, p2, v12

    .line 138
    .local v9, "startX":I
    sub-int v12, p5, v0

    div-int/lit8 v12, v12, 0x2

    add-int v10, p3, v12

    .line 141
    .local v10, "startY":I
    move v5, v8

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_0

    .line 143
    const/4 v12, 0x1

    if-ne v5, v12, :cond_3

    .line 144
    invoke-virtual {p1, v9, v10, v4, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 150
    :cond_3
    invoke-virtual {v6, p1, v1, v9, v10}, Lcom/hz/image/ImageSet;->drawTopLeftFrame(Ljavax/microedition/lcdui/Graphics;III)V

    .line 151
    add-int/2addr v9, v2

    .line 141
    add-int/lit8 v5, v5, -0x2

    goto :goto_0
.end method

.method private final drawVDefault(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 16
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "drawX"    # I
    .param p3, "drawY"    # I
    .param p4, "drawWidth"    # I
    .param p5, "drawHeight"    # I

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GGameBar;->curValue:I

    if-gtz v3, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/hz/gui/GGameBar;->getDrawBarLength(I)I

    move-result v14

    .line 93
    .local v14, "barLength":I
    add-int v3, p3, p5

    sub-int v15, v3, v14

    .line 95
    .local v15, "barY":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0, v1, v15, v2, v14}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 97
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GGameBar;->colorTable:[I

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameBar;->getShadeColorTable()[I

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameBar;->getFragmentTable()[I

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 96
    invoke-static/range {v3 .. v13}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    goto :goto_0
.end method

.method private final getDrawBarLength(I)I
    .locals 3
    .param p1, "maxWidth"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "barLength":I
    iget v1, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    if-lez v1, :cond_0

    .line 202
    iget v1, p0, Lcom/hz/gui/GGameBar;->curValue:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    div-int v0, v1, v2

    .line 204
    if-gtz v0, :cond_0

    iget v1, p0, Lcom/hz/gui/GGameBar;->curValue:I

    if-lez v1, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :cond_0
    return v0
.end method


# virtual methods
.method public getBarType()I
    .locals 1

    .prologue
    .line 223
    iget-byte v0, p0, Lcom/hz/gui/GGameBar;->barType:B

    return v0
.end method

.method public getBarValue1()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/hz/gui/GGameBar;->barValue1:I

    return v0
.end method

.method public getBarValue2()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/hz/gui/GGameBar;->barValue2:I

    return v0
.end method

.method public getBgColor()[I
    .locals 3

    .prologue
    .line 254
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 255
    .local v0, "bgc":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/hz/gui/GGameBar;->bgColor1:I

    aput v2, v0, v1

    .line 256
    const/4 v1, 0x1

    iget v2, p0, Lcom/hz/gui/GGameBar;->bgColor2:I

    aput v2, v0, v1

    .line 257
    const/4 v1, 0x2

    iget v2, p0, Lcom/hz/gui/GGameBar;->bgColor3:I

    aput v2, v0, v1

    .line 258
    return-object v0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/hz/gui/GGameBar;->getVMDataCopy()[I

    move-result-object v0

    .line 282
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GGameBar;

    invoke-direct {v1, v0}, Lcom/hz/gui/GGameBar;-><init>([I)V

    .line 283
    .local v1, "gwidget":Lcom/hz/gui/GGameBar;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 284
    iget v2, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->maxValue:I

    .line 285
    iget v2, p0, Lcom/hz/gui/GGameBar;->curValue:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->curValue:I

    .line 286
    iget v2, p0, Lcom/hz/gui/GGameBar;->fgColor1:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->fgColor1:I

    .line 287
    iget v2, p0, Lcom/hz/gui/GGameBar;->fgColor2:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->fgColor2:I

    .line 288
    iget v2, p0, Lcom/hz/gui/GGameBar;->fgColor3:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->fgColor3:I

    .line 289
    iget v2, p0, Lcom/hz/gui/GGameBar;->bgColor1:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->bgColor1:I

    .line 290
    iget v2, p0, Lcom/hz/gui/GGameBar;->bgColor2:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->bgColor2:I

    .line 291
    iget v2, p0, Lcom/hz/gui/GGameBar;->bgColor3:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->bgColor3:I

    .line 292
    iget-byte v2, p0, Lcom/hz/gui/GGameBar;->barType:B

    iput-byte v2, v1, Lcom/hz/gui/GGameBar;->barType:B

    .line 293
    iget v2, p0, Lcom/hz/gui/GGameBar;->barValue1:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->barValue1:I

    .line 294
    iget v2, p0, Lcom/hz/gui/GGameBar;->barValue2:I

    iput v2, v1, Lcom/hz/gui/GGameBar;->barValue2:I

    .line 295
    return-object v1
.end method

.method public getCurValue()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/hz/gui/GGameBar;->curValue:I

    return v0
.end method

.method public getFgColor()[I
    .locals 3

    .prologue
    .line 273
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 274
    .local v0, "fgc":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/hz/gui/GGameBar;->fgColor1:I

    aput v2, v0, v1

    .line 275
    const/4 v1, 0x1

    iget v2, p0, Lcom/hz/gui/GGameBar;->fgColor2:I

    aput v2, v0, v1

    .line 276
    const/4 v1, 0x2

    iget v2, p0, Lcom/hz/gui/GGameBar;->fgColor3:I

    aput v2, v0, v1

    .line 277
    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    return v0
.end method

.method public paint()V
    .locals 15

    .prologue
    const/4 v14, 0x7

    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 46
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 48
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-virtual {p0}, Lcom/hz/gui/GGameBar;->parentNeedScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/hz/gui/GGameBar;->getIntersect()[I

    move-result-object v6

    .line 51
    .local v6, "rect":[I
    aget v0, v6, v10

    const/4 v7, 0x1

    aget v7, v6, v7

    const/4 v8, 0x2

    aget v8, v6, v8

    const/4 v9, 0x3

    aget v9, v6, v9

    invoke-virtual {v1, v0, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 56
    .end local v6    # "rect":[I
    :goto_0
    iget-object v0, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    const/16 v7, 0x11

    aget v0, v0, v7

    iget-object v7, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v7, v7, v13

    add-int v2, v0, v7

    .line 57
    .local v2, "drawX":I
    iget-object v0, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    const/16 v7, 0x12

    aget v0, v0, v7

    iget-object v7, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v7, v7, v14

    add-int v3, v0, v7

    .line 58
    .local v3, "drawY":I
    iget-object v0, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v4, v0, v11

    .line 59
    .local v4, "drawWidth":I
    iget-object v0, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v5, v0, v12

    .line 61
    .local v5, "drawHeight":I
    iget-byte v0, p0, Lcom/hz/gui/GGameBar;->barType:B

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_1
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v10, v10, v0, v7}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 77
    return-void

    .line 53
    .end local v2    # "drawX":I
    .end local v3    # "drawY":I
    .end local v4    # "drawWidth":I
    .end local v5    # "drawHeight":I
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v0, v0, v13

    iget-object v7, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v7, v7, v14

    iget-object v8, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/hz/gui/GGameBar;->vmData:[I

    aget v9, v9, v12

    invoke-virtual {v1, v0, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    .restart local v2    # "drawX":I
    .restart local v3    # "drawY":I
    .restart local v4    # "drawWidth":I
    .restart local v5    # "drawHeight":I
    :pswitch_0
    move-object v0, p0

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/hz/gui/GGameBar;->drawBarDefault(Ljavax/microedition/lcdui/Graphics;IIII)V

    goto :goto_1

    :pswitch_1
    move-object v0, p0

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/hz/gui/GGameBar;->drawVDefault(Ljavax/microedition/lcdui/Graphics;IIII)V

    goto :goto_1

    :pswitch_2
    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/hz/gui/GGameBar;->drawHStarDefault(Ljavax/microedition/lcdui/Graphics;IIII)V

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBarType(III)V
    .locals 1
    .param p1, "_barType"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 217
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/hz/gui/GGameBar;->barType:B

    .line 218
    iput p2, p0, Lcom/hz/gui/GGameBar;->barValue1:I

    .line 219
    iput p3, p0, Lcom/hz/gui/GGameBar;->barValue2:I

    .line 220
    return-void
.end method

.method public setBgColor(III)V
    .locals 0
    .param p1, "_color1"    # I
    .param p2, "_color2"    # I
    .param p3, "_color3"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/hz/gui/GGameBar;->bgColor1:I

    .line 248
    iput p2, p0, Lcom/hz/gui/GGameBar;->bgColor2:I

    .line 249
    iput p3, p0, Lcom/hz/gui/GGameBar;->bgColor3:I

    .line 250
    return-void
.end method

.method public setFgColor(III)V
    .locals 0
    .param p1, "_color1"    # I
    .param p2, "_color2"    # I
    .param p3, "_color3"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/hz/gui/GGameBar;->fgColor1:I

    .line 243
    iput p2, p0, Lcom/hz/gui/GGameBar;->fgColor2:I

    .line 244
    iput p3, p0, Lcom/hz/gui/GGameBar;->fgColor3:I

    .line 245
    return-void
.end method

.method public setValue(II)V
    .locals 2
    .param p1, "_maxValue"    # I
    .param p2, "_curValue"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    .line 235
    iput p2, p0, Lcom/hz/gui/GGameBar;->curValue:I

    .line 236
    iget v0, p0, Lcom/hz/gui/GGameBar;->curValue:I

    iget v1, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    if-le v0, v1, :cond_0

    .line 237
    iget v0, p0, Lcom/hz/gui/GGameBar;->maxValue:I

    iput v0, p0, Lcom/hz/gui/GGameBar;->curValue:I

    .line 239
    :cond_0
    return-void
.end method
