.class public Lcom/hz/gui/GSpinner;
.super Lcom/hz/gui/GWidget;
.source "GSpinner.java"

# interfaces
.implements Lcom/hz/gui/IGPaint;


# instance fields
.field bgIndex:I

.field curValue:I

.field fgIndex:I

.field maxValue:I

.field pointIndex:I

.field set:Lcom/hz/image/ImageSet;


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/hz/gui/GSpinner;->setType(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getBgIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/hz/gui/GSpinner;->bgIndex:I

    return v0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/hz/gui/GSpinner;->getVMDataCopy()[I

    move-result-object v0

    .line 109
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GSpinner;

    invoke-direct {v1, v0}, Lcom/hz/gui/GSpinner;-><init>([I)V

    .line 110
    .local v1, "gwidget":Lcom/hz/gui/GSpinner;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 111
    iget v2, p0, Lcom/hz/gui/GSpinner;->maxValue:I

    iput v2, v1, Lcom/hz/gui/GSpinner;->maxValue:I

    .line 112
    iget v2, p0, Lcom/hz/gui/GSpinner;->curValue:I

    iput v2, v1, Lcom/hz/gui/GSpinner;->curValue:I

    .line 113
    iget-object v2, p0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    iput-object v2, v1, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    .line 114
    iget v2, p0, Lcom/hz/gui/GSpinner;->bgIndex:I

    iput v2, v1, Lcom/hz/gui/GSpinner;->bgIndex:I

    .line 115
    iget v2, p0, Lcom/hz/gui/GSpinner;->fgIndex:I

    iput v2, v1, Lcom/hz/gui/GSpinner;->fgIndex:I

    .line 116
    iget v2, p0, Lcom/hz/gui/GSpinner;->pointIndex:I

    iput v2, v1, Lcom/hz/gui/GSpinner;->pointIndex:I

    .line 117
    return-object v1
.end method

.method public getCurValue()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/hz/gui/GSpinner;->curValue:I

    return v0
.end method

.method public getFgIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/hz/gui/GSpinner;->fgIndex:I

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/hz/gui/GSpinner;->maxValue:I

    return v0
.end method

.method public getPointIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/hz/gui/GSpinner;->pointIndex:I

    return v0
.end method

.method public getSet()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public paint()V
    .locals 19

    .prologue
    .line 36
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 38
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v7, 0x6

    aget v2, v6, v7

    .line 39
    .local v2, "drawX":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v7, 0x7

    aget v3, v6, v7

    .line 40
    .local v3, "drawY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v7, 0x4

    aget v4, v6, v7

    .line 41
    .local v4, "drawWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v7, 0x5

    aget v5, v6, v7

    .line 43
    .local v5, "drawHeight":I
    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 46
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->colorTable:[I

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GSpinner;->getShadeColorTable()[I

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GSpinner;->getFragmentTable()[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static/range {v1 .. v11}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 48
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    if-eqz v6, :cond_0

    .line 50
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/16 v7, 0x11

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    add-int v9, v6, v7

    .line 51
    .local v9, "x":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/16 v7, 0x12

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    add-int v18, v6, v7

    .line 52
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v10, v18, v6

    .line 54
    .local v10, "centerY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hz/gui/GSpinner;->bgIndex:I

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-object v7, v1

    invoke-virtual/range {v6 .. v12}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 56
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/hz/gui/GSpinner;->curValue:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GSpinner;->vmData:[I

    const/4 v11, 0x5

    aget v8, v8, v11

    invoke-virtual {v1, v9, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 57
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hz/gui/GSpinner;->fgIndex:I

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-object v7, v1

    invoke-virtual/range {v6 .. v12}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 59
    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 60
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/hz/gui/GSpinner;->pointIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hz/gui/GSpinner;->curValue:I

    add-int v14, v9, v6

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v12, v1

    move v15, v10

    invoke-virtual/range {v11 .. v17}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 62
    .end local v9    # "x":I
    .end local v10    # "centerY":I
    .end local v18    # "y":I
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v6, v7, v8, v11}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 63
    return-void
.end method

.method public setSpinnerData(Lcom/hz/image/ImageSet;III)V
    .locals 1
    .param p1, "_set"    # Lcom/hz/image/ImageSet;
    .param p2, "_bgIndex"    # I
    .param p3, "_fgIndex"    # I
    .param p4, "_pointIndex"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hz/gui/GSpinner;->set:Lcom/hz/image/ImageSet;

    .line 68
    iput p2, p0, Lcom/hz/gui/GSpinner;->bgIndex:I

    .line 69
    iput p3, p0, Lcom/hz/gui/GSpinner;->fgIndex:I

    .line 70
    iput p4, p0, Lcom/hz/gui/GSpinner;->pointIndex:I

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v0

    iput v0, p0, Lcom/hz/gui/GSpinner;->maxValue:I

    .line 75
    :cond_0
    return-void
.end method

.method public setSpinnerValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/hz/gui/GSpinner;->curValue:I

    .line 79
    return-void
.end method
