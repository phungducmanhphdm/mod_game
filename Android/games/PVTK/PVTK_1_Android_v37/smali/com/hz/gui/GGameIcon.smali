.class public Lcom/hz/gui/GGameIcon;
.super Lcom/hz/gui/GWidget;
.source "GGameIcon.java"

# interfaces
.implements Lcom/hz/gui/IGPaint;


# instance fields
.field backgroundRes:Lcom/hz/image/ImageSet;

.field bgAnchor:I

.field public bgFrameIndex:I

.field isAction:Z

.field public isClear:Z

.field isRotate:Z

.field sprite:Lcom/hz/sprite/GameSprite;

.field viewImage:Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "data"    # [I

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/gui/GGameIcon;->isRotate:Z

    .line 26
    iput-boolean v1, p0, Lcom/hz/gui/GGameIcon;->isClear:Z

    .line 40
    iput-boolean v1, p0, Lcom/hz/gui/GGameIcon;->isAction:Z

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/gui/GGameIcon;->setType(I)V

    .line 42
    return-void
.end method

.method private drawSprite(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->backgroundRes:Lcom/hz/image/ImageSet;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    aget v3, v0, v11

    .line 101
    .local v3, "drawX":I
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    aget v4, v0, v12

    .line 102
    .local v4, "drawY":I
    iget v0, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/hz/gui/GGameIcon;->getW()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    .line 109
    :cond_0
    :goto_0
    iget v0, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 110
    invoke-virtual {p0}, Lcom/hz/gui/GGameIcon;->getH()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    .line 115
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->backgroundRes:Lcom/hz/image/ImageSet;

    iget v2, p0, Lcom/hz/gui/GGameIcon;->bgFrameIndex:I

    .line 116
    iget v6, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    move-object v1, p1

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 120
    .end local v3    # "drawX":I
    .end local v4    # "drawY":I
    :cond_2
    iget-boolean v0, p0, Lcom/hz/gui/GGameIcon;->isClear:Z

    if-eqz v0, :cond_3

    .line 121
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v5, v5, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_6

    .line 143
    :goto_2
    return-void

    .line 105
    .restart local v3    # "drawX":I
    .restart local v4    # "drawY":I
    :cond_4
    iget v0, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/hz/gui/GGameIcon;->getW()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_0

    .line 112
    :cond_5
    iget v0, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/hz/gui/GGameIcon;->getH()I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_1

    .line 128
    .end local v3    # "drawX":I
    .end local v4    # "drawY":I
    :cond_6
    iget-boolean v0, p0, Lcom/hz/gui/GGameIcon;->isAction:Z

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0}, Lcom/hz/sprite/GameSprite;->action()V

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    iget-object v1, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    aget v1, v1, v11

    add-int v9, v0, v1

    .line 133
    .local v9, "x":I
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v8, v9, v0

    .line 134
    .local v8, "centerX":I
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    iget-object v1, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    aget v1, v1, v12

    add-int v10, v0, v1

    .line 135
    .local v10, "y":I
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    add-int v7, v10, v0

    .line 138
    .local v7, "bottomY":I
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0}, Lcom/hz/sprite/GameSprite;->isHighTransport()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    add-int/lit8 v7, v7, 0x14

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, p1, v8, v7}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_2
.end method


# virtual methods
.method public getClone()Lcom/hz/gui/GWidget;
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/hz/gui/GGameIcon;->getVMDataCopy()[I

    move-result-object v0

    .line 183
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GGameIcon;

    invoke-direct {v1, v0}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 184
    .local v1, "gwidget":Lcom/hz/gui/GGameIcon;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 185
    iget-object v2, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-static {v2}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    iput-object v2, v1, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    .line 186
    iget-boolean v2, p0, Lcom/hz/gui/GGameIcon;->isRotate:Z

    iput-boolean v2, v1, Lcom/hz/gui/GGameIcon;->isRotate:Z

    .line 187
    iget-boolean v2, p0, Lcom/hz/gui/GGameIcon;->isAction:Z

    iput-boolean v2, v1, Lcom/hz/gui/GGameIcon;->isAction:Z

    .line 188
    iget v2, p0, Lcom/hz/gui/GGameIcon;->bgFrameIndex:I

    iput v2, v1, Lcom/hz/gui/GGameIcon;->bgFrameIndex:I

    .line 189
    iget-object v2, p0, Lcom/hz/gui/GGameIcon;->backgroundRes:Lcom/hz/image/ImageSet;

    iput-object v2, v1, Lcom/hz/gui/GGameIcon;->backgroundRes:Lcom/hz/image/ImageSet;

    .line 190
    iget v2, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    iput v2, v1, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    .line 191
    return-object v1
.end method

.method public getbackgroundRes()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->backgroundRes:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getbgAnchor()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    return v0
.end method

.method public getbgFrameIndex()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/hz/gui/GGameIcon;->bgFrameIndex:I

    return v0
.end method

.method public getsprite()Lcom/hz/sprite/GameSprite;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    return-object v0
.end method

.method public paint()V
    .locals 20

    .prologue
    .line 46
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 48
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->parentNeedScroll()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->getIntersect()[I

    move-result-object v19

    .line 51
    .local v19, "rect":[I
    const/4 v7, 0x0

    aget v7, v19, v7

    const/4 v8, 0x1

    aget v8, v19, v8

    const/4 v9, 0x2

    aget v9, v19, v9

    const/4 v10, 0x3

    aget v10, v19, v10

    invoke-virtual {v1, v7, v8, v9, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 56
    .end local v19    # "rect":[I
    :goto_0
    const/16 v18, 0x0

    .line 59
    .local v18, "haveDrawSprite":Z
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->isFocus()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x6

    aget v2, v7, v8

    .line 61
    .local v2, "drawX":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x7

    aget v3, v7, v8

    .line 62
    .local v3, "drawY":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x4

    aget v4, v7, v8

    .line 63
    .local v4, "drawWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x5

    aget v5, v7, v8

    .line 64
    .local v5, "drawHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->getFocusColorTable()[I

    move-result-object v6

    .line 66
    .local v6, "focusColorTable":[I
    sget-object v7, Lcom/hz/gui/GWidget;->DEFAULT_INT_ARRAY:[I

    if-ne v7, v6, :cond_0

    .line 67
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/hz/gui/GGameIcon;->drawSprite(Ljavax/microedition/lcdui/Graphics;)V

    .line 68
    const/16 v18, 0x1

    .line 71
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->getFocusShadeColorTable()[I

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->getFocusFragmentTable()[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 70
    invoke-static/range {v1 .. v11}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 85
    .end local v2    # "drawX":I
    .end local v3    # "drawY":I
    .end local v4    # "drawWidth":I
    .end local v5    # "drawHeight":I
    .end local v6    # "focusColorTable":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->viewImage:Ljavax/microedition/lcdui/Image;

    .line 86
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 88
    const/4 v10, 0x3

    .line 85
    invoke-static {v1, v7, v8, v9, v10}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 90
    if-nez v18, :cond_2

    .line 91
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/hz/gui/GGameIcon;->drawSprite(Ljavax/microedition/lcdui/Graphics;)V

    .line 93
    :cond_2
    return-void

    .line 53
    .end local v18    # "haveDrawSprite":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 74
    .restart local v18    # "haveDrawSprite":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->colorTable:[I

    if-eqz v7, :cond_1

    .line 76
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x6

    aget v2, v7, v8

    .line 77
    .restart local v2    # "drawX":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x7

    aget v3, v7, v8

    .line 78
    .restart local v3    # "drawY":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x4

    aget v4, v7, v8

    .line 79
    .restart local v4    # "drawWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GGameIcon;->vmData:[I

    const/4 v8, 0x5

    aget v5, v7, v8

    .line 81
    .restart local v5    # "drawHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GGameIcon;->colorTable:[I

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->getShadeColorTable()[I

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GGameIcon;->getFragmentTable()[I

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    .line 80
    invoke-static/range {v7 .. v17}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    goto/16 :goto_1
.end method

.method public setAction(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/hz/gui/GGameIcon;->isAction:Z

    .line 167
    return-void
.end method

.method public setBackground(Lcom/hz/image/ImageSet;II)V
    .locals 0
    .param p1, "imageSet"    # Lcom/hz/image/ImageSet;
    .param p2, "_index"    # I
    .param p3, "anchor"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/hz/gui/GGameIcon;->backgroundRes:Lcom/hz/image/ImageSet;

    .line 177
    iput p2, p0, Lcom/hz/gui/GGameIcon;->bgFrameIndex:I

    .line 178
    iput p3, p0, Lcom/hz/gui/GGameIcon;->bgAnchor:I

    .line 179
    return-void
.end method

.method public setData(Lcom/hz/sprite/GameSprite;Z)V
    .locals 0
    .param p1, "_sprite"    # Lcom/hz/sprite/GameSprite;
    .param p2, "_isAction"    # Z

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/hz/gui/GGameIcon;->setSprite(Lcom/hz/sprite/GameSprite;)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/hz/gui/GGameIcon;->setAction(Z)V

    .line 173
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/hz/gui/GGameIcon;->viewImage:Ljavax/microedition/lcdui/Image;

    .line 35
    return-void
.end method

.method public setRotate(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/hz/gui/GGameIcon;->isRotate:Z

    .line 155
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, p1}, Lcom/hz/sprite/GameSprite;->setRotate(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public setSprite(Lcom/hz/sprite/GameSprite;)V
    .locals 1
    .param p1, "_sprite"    # Lcom/hz/sprite/GameSprite;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    .line 162
    iget-boolean v0, p0, Lcom/hz/gui/GGameIcon;->isRotate:Z

    invoke-virtual {p0, v0}, Lcom/hz/gui/GGameIcon;->setRotate(Z)V

    .line 163
    return-void
.end method

.method public setSpriteVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GGameIcon;->sprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v0, p1}, Lcom/hz/sprite/GameSprite;->setSpriteVisible(Z)V

    goto :goto_0
.end method
