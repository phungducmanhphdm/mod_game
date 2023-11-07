.class public Lcom/hz/gui/GPixelLabel;
.super Lcom/hz/gui/GLabel;
.source "GPixelLabel.java"


# instance fields
.field focusPixelColorTable:[I

.field pixelColorTable:[I

.field pixelFont:Lcom/hz/string/PixelFont;

.field pixelString:Lcom/hz/string/PixelString;


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 28
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hz/gui/GPixelLabel;->setType(I)V

    .line 29
    return-void
.end method

.method public constructor <init>([II)V
    .locals 0
    .param p1, "data"    # [I
    .param p2, "fontSize"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/hz/gui/GPixelLabel;-><init>([I)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/hz/gui/GPixelLabel;->setFont(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getBaseFontHeight()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0}, Lcom/hz/gui/GLabel;->getBaseFontHeight()I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    invoke-virtual {v0}, Lcom/hz/string/PixelString;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/hz/gui/GPixelLabel;->getVMDataCopy()[I

    move-result-object v0

    .line 133
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GPixelLabel;

    invoke-direct {v1, v0}, Lcom/hz/gui/GPixelLabel;-><init>([I)V

    .line 134
    .local v1, "gwidget":Lcom/hz/gui/GPixelLabel;
    invoke-super {p0, v1}, Lcom/hz/gui/GLabel;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 135
    invoke-super {p0, v1}, Lcom/hz/gui/GLabel;->getLabelData(Lcom/hz/gui/GLabel;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/hz/gui/GPixelLabel;->getPixelLabelData(Lcom/hz/gui/GPixelLabel;)V

    .line 137
    return-object v1
.end method

.method protected getPixelLabelData(Lcom/hz/gui/GPixelLabel;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GPixelLabel;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelFont:Lcom/hz/string/PixelFont;

    iput-object v0, p1, Lcom/hz/gui/GPixelLabel;->pixelFont:Lcom/hz/string/PixelFont;

    .line 142
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    .line 143
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    .line 144
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    iput-object v0, p1, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    .line 145
    return-void
.end method

.method protected getStringWidth()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0}, Lcom/hz/gui/GLabel;->getStringWidth()I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    invoke-virtual {v0}, Lcom/hz/string/PixelString;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected paintLabel(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 17
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    if-nez v1, :cond_1

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GPixelLabel;->getBaseFontHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v16, v1, -0x2

    .line 35
    .local v16, "addDis":I
    if-lez v16, :cond_0

    .line 36
    add-int p3, p3, v16

    .line 38
    :cond_0
    invoke-super/range {p0 .. p4}, Lcom/hz/gui/GLabel;->paintLabel(Ljavax/microedition/lcdui/Graphics;III)V

    .line 65
    .end local v16    # "addDis":I
    :goto_0
    return-void

    .line 42
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/gui/GPixelLabel;->labelColor:I

    .line 43
    .local v4, "color":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GPixelLabel;->borderColor:I

    .line 44
    .local v3, "_borderColor":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    .line 45
    .local v8, "_colorTable":[I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GPixelLabel;->isFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hz/gui/GPixelLabel;->selectLabelColor:I

    .line 47
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hz/gui/GPixelLabel;->selectBorderColor:I

    .line 48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    if-eqz v1, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    .line 53
    :cond_2
    const/4 v1, -0x1

    if-eq v3, v1, :cond_4

    .line 55
    const/16 v1, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/hz/gui/GPixelLabel;->isSetting(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/hz/string/PixelString;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IIIII[I)V

    goto :goto_0

    .line 59
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/hz/string/PixelString;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IIIII[I)V

    goto :goto_0

    .line 63
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move v14, v4

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Lcom/hz/string/PixelString;->draw(Ljavax/microedition/lcdui/Graphics;IIII[I)V

    goto :goto_0
.end method

.method protected resetSize()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelFont:Lcom/hz/string/PixelFont;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/hz/string/PixelString;

    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/hz/gui/GPixelLabel;->pixelFont:Lcom/hz/string/PixelFont;

    invoke-direct {v0, v1, v2}, Lcom/hz/string/PixelString;-><init>(Ljava/lang/String;Lcom/hz/string/PixelFont;)V

    iput-object v0, p0, Lcom/hz/gui/GPixelLabel;->pixelString:Lcom/hz/string/PixelString;

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/hz/gui/GLabel;->resetSize()V

    .line 88
    return-void
.end method

.method public setFocusPixelColorTable([I)V
    .locals 4
    .param p1, "_colorTable"    # [I

    .prologue
    .line 120
    iput-object p1, p0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    .line 122
    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 128
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 124
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->focusPixelColorTable:[I

    aget v2, v1, v0

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFont(I)V
    .locals 3
    .param p1, "fontSize"    # I

    .prologue
    .line 91
    invoke-static {p1}, Lcom/hz/string/PixelFont;->getFont(I)Lcom/hz/string/PixelFont;

    move-result-object v2

    iput-object v2, p0, Lcom/hz/gui/GPixelLabel;->pixelFont:Lcom/hz/string/PixelFont;

    .line 94
    iget-object v2, p0, Lcom/hz/gui/GPixelLabel;->pixelFont:Lcom/hz/string/PixelFont;

    if-nez v2, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "style":I
    const/4 v2, 0x0

    .line 100
    invoke-static {v2, v1, p1}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 104
    .local v0, "pixelFont":Ljavax/microedition/lcdui/Font;
    invoke-super {p0, v0}, Lcom/hz/gui/GLabel;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 107
    .end local v0    # "pixelFont":Ljavax/microedition/lcdui/Font;
    .end local v1    # "style":I
    :cond_0
    return-void
.end method

.method public setPixelColorTable([I)V
    .locals 4
    .param p1, "_colorTable"    # [I

    .prologue
    .line 110
    iput-object p1, p0, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    .line 112
    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 118
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 114
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hz/gui/GPixelLabel;->pixelColorTable:[I

    aget v2, v1, v0

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
