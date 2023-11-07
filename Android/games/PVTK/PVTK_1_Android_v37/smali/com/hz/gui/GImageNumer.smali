.class public Lcom/hz/gui/GImageNumer;
.super Lcom/hz/gui/GWidget;
.source "GImageNumer.java"

# interfaces
.implements Lcom/hz/gui/IGPaint;


# instance fields
.field anchor:I

.field iNumber:I

.field isShowSign:Z

.field numberString:Ljava/lang/String;

.field numerResName:Lcom/hz/image/ImageSet;

.field plusStartIndex:I

.field space:I

.field subStartIndex:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 32
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/hz/gui/GImageNumer;->setType(I)V

    .line 33
    return-void
.end method

.method private getNumHeight(I)I
    .locals 1
    .param p1, "offsetIndex"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    invoke-virtual {v0, p1}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getClone()Lcom/hz/gui/GWidget;
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/hz/gui/GImageNumer;->getVMDataCopy()[I

    move-result-object v0

    .line 182
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GImageNumer;

    invoke-direct {v1, v0}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 183
    .local v1, "gwidget":Lcom/hz/gui/GImageNumer;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 184
    iget v2, p0, Lcom/hz/gui/GImageNumer;->anchor:I

    iput v2, v1, Lcom/hz/gui/GImageNumer;->anchor:I

    .line 185
    iget v2, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    iput v2, v1, Lcom/hz/gui/GImageNumer;->iNumber:I

    .line 186
    iget-object v2, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    iput-object v2, v1, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    .line 187
    iget-boolean v2, p0, Lcom/hz/gui/GImageNumer;->isShowSign:Z

    iput-boolean v2, v1, Lcom/hz/gui/GImageNumer;->isShowSign:Z

    .line 188
    iget-object v2, p0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    iput-object v2, v1, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    .line 189
    iget v2, p0, Lcom/hz/gui/GImageNumer;->space:I

    iput v2, v1, Lcom/hz/gui/GImageNumer;->space:I

    .line 190
    iget v2, p0, Lcom/hz/gui/GImageNumer;->plusStartIndex:I

    iput v2, v1, Lcom/hz/gui/GImageNumer;->plusStartIndex:I

    .line 191
    iget v2, p0, Lcom/hz/gui/GImageNumer;->subStartIndex:I

    iput v2, v1, Lcom/hz/gui/GImageNumer;->subStartIndex:I

    .line 192
    return-object v1
.end method

.method public getNumWidth()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 169
    iget v1, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    if-ltz v1, :cond_2

    .line 171
    iget v0, p0, Lcom/hz/gui/GImageNumer;->plusStartIndex:I

    .line 177
    .local v0, "offsetIndex":I
    :goto_1
    iget-object v1, p0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    invoke-virtual {v1, v0}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v1

    iget v2, p0, Lcom/hz/gui/GImageNumer;->space:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/hz/gui/GImageNumer;->space:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 174
    .end local v0    # "offsetIndex":I
    :cond_2
    iget v0, p0, Lcom/hz/gui/GImageNumer;->subStartIndex:I

    .restart local v0    # "offsetIndex":I
    goto :goto_1
.end method

.method public paint()V
    .locals 19

    .prologue
    .line 37
    sget-object v9, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 39
    .local v9, "g":Ljavax/microedition/lcdui/Graphics;
    const/16 v17, 0x0

    .line 40
    .local v17, "rect":[I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GImageNumer;->parentNeedScroll()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GImageNumer;->getIntersect()[I

    move-result-object v17

    .line 43
    const/4 v1, 0x0

    aget v1, v17, v1

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    const/4 v4, 0x3

    aget v4, v17, v4

    invoke-virtual {v9, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 48
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 51
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GImageNumer;->iNumber:I

    if-ltz v1, :cond_4

    .line 53
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hz/gui/GImageNumer;->plusStartIndex:I

    .line 58
    .local v11, "offsetIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    add-int v13, v1, v2

    .line 59
    .local v13, "offsetX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    add-int v14, v1, v2

    .line 61
    .local v14, "offsetY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int v7, v1, v2

    .line 62
    .local v7, "displayWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    sub-int v8, v1, v2

    .line 65
    .local v8, "displayHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GImageNumer;->anchor:I

    move/from16 v16, v0

    .line 66
    .local v16, "newAnchor":I
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_5

    .line 67
    div-int/lit8 v1, v7, 0x2

    add-int/2addr v13, v1

    .line 73
    :cond_0
    :goto_2
    and-int/lit8 v1, v16, 0x2

    if-eqz v1, :cond_6

    .line 75
    and-int/lit8 v16, v16, -0x3

    .line 77
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/hz/gui/GImageNumer;->getNumHeight(I)I

    move-result v1

    sub-int v1, v8, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v14, v1

    .line 79
    or-int/lit8 v16, v16, 0x10

    .line 85
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    add-int v5, v1, v2

    .line 86
    .local v5, "rectX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GImageNumer;->vmData:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    add-int v6, v1, v2

    .line 88
    .local v6, "rectY":I
    const/4 v1, 0x0

    aget v1, v17, v1

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    const/4 v4, 0x3

    aget v4, v17, v4

    invoke-static/range {v1 .. v8}, Lcom/hz/common/Tool;->rectGetIntersection(IIIIIIII)[I

    move-result-object v18

    .line 91
    .local v18, "rect2":[I
    const/4 v1, 0x0

    aget v1, v18, v1

    const/4 v2, 0x1

    aget v2, v18, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    const/4 v4, 0x3

    aget v4, v18, v4

    invoke-virtual {v9, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 92
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/hz/gui/GImageNumer;->space:I

    invoke-static/range {v9 .. v16}, Lcom/hz/main/GameView;->drawImageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/hz/image/ImageSet;ILjava/lang/String;IIII)I

    .line 94
    .end local v5    # "rectX":I
    .end local v6    # "rectY":I
    .end local v7    # "displayWidth":I
    .end local v8    # "displayHeight":I
    .end local v11    # "offsetIndex":I
    .end local v13    # "offsetX":I
    .end local v14    # "offsetY":I
    .end local v16    # "newAnchor":I
    .end local v18    # "rect2":[I
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v9, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 95
    return-void

    .line 45
    :cond_3
    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .end local v17    # "rect":[I
    const/4 v1, 0x2

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    aput v2, v17, v1

    const/4 v1, 0x3

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    aput v2, v17, v1

    .restart local v17    # "rect":[I
    goto/16 :goto_0

    .line 56
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hz/gui/GImageNumer;->subStartIndex:I

    .restart local v11    # "offsetIndex":I
    goto/16 :goto_1

    .line 69
    .restart local v7    # "displayWidth":I
    .restart local v8    # "displayHeight":I
    .restart local v13    # "offsetX":I
    .restart local v14    # "offsetY":I
    .restart local v16    # "newAnchor":I
    :cond_5
    and-int/lit8 v1, v16, 0x8

    if-eqz v1, :cond_0

    .line 70
    add-int/2addr v13, v7

    goto/16 :goto_2

    .line 80
    :cond_6
    and-int/lit8 v1, v16, 0x20

    if-eqz v1, :cond_1

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/hz/gui/GImageNumer;->getNumHeight(I)I

    move-result v1

    sub-int v1, v8, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    add-int/2addr v14, v1

    goto/16 :goto_3
.end method

.method public setData(Lcom/hz/image/ImageSet;II)V
    .locals 7
    .param p1, "imageset"    # Lcom/hz/image/ImageSet;
    .param p2, "_space"    # I
    .param p3, "_anchor"    # I

    .prologue
    const/4 v3, 0x0

    .line 114
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;ZIIII)V

    .line 115
    return-void
.end method

.method public setData(Lcom/hz/image/ImageSet;ZIIII)V
    .locals 0
    .param p1, "imageset"    # Lcom/hz/image/ImageSet;
    .param p2, "flag"    # Z
    .param p3, "plusStart"    # I
    .param p4, "subStart"    # I
    .param p5, "_space"    # I
    .param p6, "_anchor"    # I

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lcom/hz/gui/GImageNumer;->numerResName:Lcom/hz/image/ImageSet;

    .line 102
    iput p3, p0, Lcom/hz/gui/GImageNumer;->plusStartIndex:I

    .line 103
    iput p4, p0, Lcom/hz/gui/GImageNumer;->subStartIndex:I

    .line 104
    iput p5, p0, Lcom/hz/gui/GImageNumer;->space:I

    .line 105
    iput p6, p0, Lcom/hz/gui/GImageNumer;->anchor:I

    .line 106
    iput-boolean p2, p0, Lcom/hz/gui/GImageNumer;->isShowSign:Z

    .line 108
    :cond_0
    return-void
.end method

.method public setNumer(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    .line 129
    iget v0, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    if-ltz v0, :cond_2

    .line 131
    iget-boolean v0, p0, Lcom/hz/gui/GImageNumer;->isShowSign:Z

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_2
    iget-boolean v0, p0, Lcom/hz/gui/GImageNumer;->isShowSign:Z

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/hz/gui/GImageNumer;->iNumber:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNumerString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/hz/gui/GImageNumer;->numberString:Ljava/lang/String;

    .line 120
    return-void
.end method
