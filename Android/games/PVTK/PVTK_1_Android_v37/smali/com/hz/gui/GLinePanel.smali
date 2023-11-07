.class public Lcom/hz/gui/GLinePanel;
.super Lcom/hz/gui/GContainer;
.source "GLinePanel.java"

# interfaces
.implements Lcom/hz/gui/IGPaint;


# instance fields
.field bottomFrameIndex:I

.field cornerRes:Lcom/hz/image/ImageSet;

.field frameIndex:I

.field isDrawViewImage:Z

.field isLeftRightBgColorDisable:Z

.field iscanbatchuse:I

.field underLineColor:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/hz/gui/GContainer;-><init>([I)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/gui/GLinePanel;->underLineColor:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GLinePanel;->iscanbatchuse:I

    .line 32
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/hz/gui/GLinePanel;->setType(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public getBottomFrameIndex()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/hz/gui/GLinePanel;->bottomFrameIndex:I

    return v0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/hz/gui/GLinePanel;->getVMDataCopy()[I

    move-result-object v0

    .line 168
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GLinePanel;

    invoke-direct {v1, v0}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 169
    .local v1, "gwidget":Lcom/hz/gui/GLinePanel;
    invoke-super {p0, v1}, Lcom/hz/gui/GContainer;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 170
    invoke-super {p0, v1}, Lcom/hz/gui/GContainer;->setGContainerData(Lcom/hz/gui/GContainer;)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/hz/gui/GLinePanel;->setGLinePanelData(Lcom/hz/gui/GLinePanel;)V

    .line 172
    return-object v1
.end method

.method public getColorTable()[I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/hz/gui/GLinePanel;->colorTable:[I

    return-object v0
.end method

.method public getCornerRes()Lcom/hz/image/ImageSet;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/hz/gui/GLinePanel;->cornerRes:Lcom/hz/image/ImageSet;

    return-object v0
.end method

.method public getFrameIndex()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/hz/gui/GLinePanel;->frameIndex:I

    return v0
.end method

.method public getIsCanBatchUse()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/hz/gui/GLinePanel;->iscanbatchuse:I

    return v0
.end method

.method public getUnderLineColor()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/hz/gui/GLinePanel;->underLineColor:I

    return v0
.end method

.method public paint()V
    .locals 19

    .prologue
    .line 37
    sget-object v1, Lcom/hz/main/GameCanvas;->g:Ljavax/microedition/lcdui/Graphics;

    .line 38
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->parentNeedScroll()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getIntersect()[I

    move-result-object v18

    .line 41
    .local v18, "ai":[I
    const/4 v7, 0x0

    aget v7, v18, v7

    const/4 v8, 0x1

    aget v8, v18, v8

    const/4 v9, 0x2

    aget v9, v18, v9

    const/4 v10, 0x3

    aget v10, v18, v10

    invoke-virtual {v1, v7, v8, v9, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 48
    .end local v18    # "ai":[I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->isFocus()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 49
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/16 v8, 0x11

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    add-int v2, v7, v8

    .line 50
    .local v2, "drawX":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/16 v8, 0x12

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    add-int v3, v7, v8

    .line 51
    .local v3, "drawY":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v8, 0x4

    aget v4, v7, v8

    .line 52
    .local v4, "drawWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v8, 0x5

    aget v5, v7, v8

    .line 53
    .local v5, "drawHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getFocusColorTable()[I

    move-result-object v6

    .line 54
    .local v6, "focusColorTable":[I
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/hz/gui/GLinePanel;->isLeftRightBgColorDisable:Z

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 55
    array-length v7, v6

    sub-int/2addr v2, v7

    .line 56
    array-length v7, v6

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 58
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getFocusShadeColorTable()[I

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getFocusFragmentTable()[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GLinePanel;->cornerRes:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/hz/gui/GLinePanel;->frameIndex:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/hz/gui/GLinePanel;->bottomFrameIndex:I

    invoke-static/range {v1 .. v11}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    .line 75
    .end local v2    # "drawX":I
    .end local v3    # "drawY":I
    .end local v4    # "drawWidth":I
    .end local v5    # "drawHeight":I
    .end local v6    # "focusColorTable":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/hz/gui/GLinePanel;->isDrawViewImage:Z

    if-eqz v7, :cond_2

    .line 77
    sget-object v7, Lcom/hz/main/GameView;->topViewImg:Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-static {v1, v7, v8, v9, v10}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 86
    sget-object v7, Lcom/hz/main/GameView;->bottomViewImg:Ljavax/microedition/lcdui/Image;

    .line 87
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    .line 88
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v9, v10

    .line 89
    const/16 v10, 0x24

    .line 86
    invoke-static {v1, v7, v8, v9, v10}, Lcom/hz/common/Utilities;->drawGameImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;III)V

    .line 93
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/hz/gui/GLinePanel;->underLineColor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 94
    move-object/from16 v0, p0

    iget v7, v0, Lcom/hz/gui/GLinePanel;->underLineColor:I

    invoke-virtual {v1, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/16 v8, 0x11

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    add-int v2, v7, v8

    .line 96
    .restart local v2    # "drawX":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/16 v8, 0x12

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v3, v7, -0x1

    .line 97
    .restart local v3    # "drawY":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v2, v3, v7, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 99
    .end local v2    # "drawX":I
    .end local v3    # "drawY":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLinePanel;->paintData(Ljavax/microedition/lcdui/Graphics;)V

    .line 100
    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v10, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v7, v8, v9, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 101
    return-void

    .line 44
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 60
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->colorTable:[I

    if-eqz v7, :cond_1

    .line 62
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/16 v8, 0x11

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x6

    aget v8, v8, v9

    add-int v2, v7, v8

    .line 63
    .restart local v2    # "drawX":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/16 v8, 0x12

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    add-int v3, v7, v8

    .line 64
    .restart local v3    # "drawY":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v8, 0x4

    aget v4, v7, v8

    .line 65
    .restart local v4    # "drawWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->vmData:[I

    const/4 v8, 0x5

    aget v5, v7, v8

    .line 66
    .restart local v5    # "drawHeight":I
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/hz/gui/GLinePanel;->isLeftRightBgColorDisable:Z

    if-eqz v7, :cond_6

    .line 67
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->colorTable:[I

    array-length v7, v7

    sub-int/2addr v2, v7

    .line 68
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/hz/gui/GLinePanel;->colorTable:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 71
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GLinePanel;->colorTable:[I

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getShadeColorTable()[I

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GLinePanel;->getFragmentTable()[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/gui/GLinePanel;->cornerRes:Lcom/hz/image/ImageSet;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLinePanel;->frameIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GLinePanel;->bottomFrameIndex:I

    move/from16 v17, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v7 .. v17}, Lcom/hz/main/GameView;->drawFrameBox(Ljavax/microedition/lcdui/Graphics;IIII[I[I[ILcom/hz/image/ImageSet;II)V

    goto/16 :goto_1
.end method

.method public paintData(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 105
    return-void
.end method

.method public setData([ILcom/hz/image/ImageSet;I)V
    .locals 0
    .param p1, "_colorTable"    # [I
    .param p2, "cornImage"    # Lcom/hz/image/ImageSet;
    .param p3, "_index"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;II)V

    .line 120
    return-void
.end method

.method public setData([ILcom/hz/image/ImageSet;II)V
    .locals 0
    .param p1, "_colorTable"    # [I
    .param p2, "cornImage"    # Lcom/hz/image/ImageSet;
    .param p3, "_index"    # I
    .param p4, "_bottomFrameIndex"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hz/gui/GLinePanel;->colorTable:[I

    .line 110
    if-eqz p2, :cond_0

    .line 112
    iput-object p2, p0, Lcom/hz/gui/GLinePanel;->cornerRes:Lcom/hz/image/ImageSet;

    .line 113
    iput p3, p0, Lcom/hz/gui/GLinePanel;->frameIndex:I

    .line 114
    iput p4, p0, Lcom/hz/gui/GLinePanel;->bottomFrameIndex:I

    .line 116
    :cond_0
    return-void
.end method

.method protected setGLinePanelData(Lcom/hz/gui/GLinePanel;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GLinePanel;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/hz/gui/GLinePanel;->cornerRes:Lcom/hz/image/ImageSet;

    iput-object v0, p1, Lcom/hz/gui/GLinePanel;->cornerRes:Lcom/hz/image/ImageSet;

    .line 177
    iget v0, p0, Lcom/hz/gui/GLinePanel;->frameIndex:I

    iput v0, p1, Lcom/hz/gui/GLinePanel;->frameIndex:I

    .line 178
    iget v0, p0, Lcom/hz/gui/GLinePanel;->bottomFrameIndex:I

    iput v0, p1, Lcom/hz/gui/GLinePanel;->bottomFrameIndex:I

    .line 179
    iget v0, p0, Lcom/hz/gui/GLinePanel;->underLineColor:I

    iput v0, p1, Lcom/hz/gui/GLinePanel;->underLineColor:I

    .line 180
    iget-boolean v0, p0, Lcom/hz/gui/GLinePanel;->isLeftRightBgColorDisable:Z

    iput-boolean v0, p1, Lcom/hz/gui/GLinePanel;->isLeftRightBgColorDisable:Z

    .line 181
    return-void
.end method

.method public setIsCanBatchUse(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/hz/gui/GLinePanel;->iscanbatchuse:I

    .line 136
    return-void
.end method

.method public setIsDrawViewImage(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/hz/gui/GLinePanel;->isDrawViewImage:Z

    .line 132
    return-void
.end method

.method public setLeftRightBgColorDisable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/hz/gui/GLinePanel;->isLeftRightBgColorDisable:Z

    .line 128
    return-void
.end method

.method public setUnderLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/hz/gui/GLinePanel;->underLineColor:I

    .line 124
    return-void
.end method
