.class public Lcom/hz/gui/GWindow;
.super Lcom/hz/gui/GLinePanel;
.source "GWindow.java"


# static fields
.field public static final MOVE_FLAG_BOTTOM:B = 0x2t

.field public static final MOVE_FLAG_NONE:B = 0x0t

.field public static final MOVE_FLAG_TOP:B = 0x1t


# instance fields
.field allSize:B

.field public focusIndex:I

.field public focusWidget:Lcom/hz/gui/GWidget;

.field public fullScreen:Z

.field hotKeyTable:[I

.field isLRMove:Z

.field isXYMove:Z

.field moveFlag:B

.field public oldFocusIndex:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "_data"    # [I

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 25
    iput-boolean v0, p0, Lcom/hz/gui/GWindow;->isLRMove:Z

    .line 52
    iput-byte v0, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    .line 62
    iput-boolean v0, p0, Lcom/hz/gui/GWindow;->isXYMove:Z

    .line 69
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->setType(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->setCatchKey(Z)V

    .line 72
    return-void
.end method

.method private doGridMove(ZZ)V
    .locals 10
    .param p1, "isUPDown"    # Z
    .param p2, "isMoveNext"    # Z

    .prologue
    const/4 v9, 0x0

    .line 127
    iget v8, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    if-gez v8, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput-byte v9, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    .line 136
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->getLayoutGColumn()I

    move-result v4

    .line 137
    .local v4, "layoutCol":I
    iget v8, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    div-int v6, v8, v4

    .line 138
    .local v6, "row":I
    iget v8, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    rem-int v0, v8, v4

    .line 139
    .local v0, "col":I
    const/4 v1, 0x0

    .line 140
    .local v1, "fromIndex":I
    const/4 v5, 0x0

    .line 141
    .local v5, "offset":I
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 142
    .local v7, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 165
    if-eqz p2, :cond_8

    .line 166
    invoke-direct {p0, v7, v1}, Lcom/hz/gui/GWindow;->keyNext(Ljava/util/Vector;I)V

    .line 172
    :goto_2
    iget-object v8, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v8, :cond_0

    .line 173
    iget-object v8, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_9

    .line 174
    const/4 v8, 0x1

    iput-byte v8, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    goto :goto_0

    .line 143
    :cond_2
    iget-object v8, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 144
    .local v2, "gw":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_4

    .line 142
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_4
    if-eqz p1, :cond_7

    .line 149
    rem-int v8, v3, v4

    if-ne v8, v0, :cond_3

    .line 158
    :cond_5
    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 159
    iget v8, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    if-ne v3, v8, :cond_6

    .line 160
    move v1, v5

    .line 162
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 154
    :cond_7
    div-int v8, v3, v4

    if-eq v8, v6, :cond_5

    goto :goto_3

    .line 169
    .end local v2    # "gw":Lcom/hz/gui/GWidget;
    :cond_8
    invoke-direct {p0, v7, v1}, Lcom/hz/gui/GWindow;->keyPrev(Ljava/util/Vector;I)V

    goto :goto_2

    .line 176
    :cond_9
    iget-object v8, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 177
    const/4 v8, 0x2

    iput-byte v8, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    goto :goto_0
.end method

.method private doXYMove(ZZ)V
    .locals 8
    .param p1, "isUPDown"    # Z
    .param p2, "isMoveNext"    # Z

    .prologue
    const/4 v7, 0x0

    .line 77
    iput-byte v7, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    .line 79
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v4, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .line 81
    .local v3, "offset":I
    const/4 v0, 0x0

    .line 82
    .local v0, "fromIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_7

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWidget;

    .line 84
    .local v1, "gw":Lcom/hz/gui/GWidget;
    if-nez v1, :cond_3

    .line 82
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_3
    if-eqz p1, :cond_6

    .line 89
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v5

    iget-object v6, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v6}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 98
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    iget v5, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    if-ne v2, v5, :cond_5

    .line 100
    move v0, v3

    .line 102
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 94
    :cond_6
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v5

    iget-object v6, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v6}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_2

    .line 109
    .end local v1    # "gw":Lcom/hz/gui/GWidget;
    :cond_7
    if-eqz p2, :cond_8

    .line 110
    invoke-direct {p0, v4, v0}, Lcom/hz/gui/GWindow;->keyNext(Ljava/util/Vector;I)V

    .line 115
    :goto_3
    iget-object v5, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_9

    .line 117
    const/4 v5, 0x1

    iput-byte v5, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    goto :goto_1

    .line 112
    :cond_8
    invoke-direct {p0, v4, v0}, Lcom/hz/gui/GWindow;->keyPrev(Ljava/util/Vector;I)V

    goto :goto_3

    .line 119
    :cond_9
    iget-object v5, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 120
    const/4 v5, 0x2

    iput-byte v5, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    goto :goto_1
.end method

.method private getEnableFocusChild()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 592
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 593
    .local v2, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 608
    return-object v2

    .line 595
    :cond_0
    iget-object v3, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 597
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_2

    .line 593
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private keyNext()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    iget v1, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GWindow;->keyNext(Ljava/util/Vector;I)V

    .line 506
    return-void
.end method

.method private keyNext(Ljava/util/Vector;I)V
    .locals 5
    .param p1, "_children"    # Ljava/util/Vector;
    .param p2, "fromIndex"    # I

    .prologue
    .line 512
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 518
    .local v0, "childNum":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-gt v2, v4, :cond_0

    .line 520
    add-int v4, p2, v2

    rem-int v3, v4, v0

    .line 522
    .local v3, "index":I
    if-ltz v3, :cond_2

    if-lt v3, v0, :cond_3

    .line 518
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWidget;

    .line 527
    .local v1, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method private keyPrev()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    iget v1, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GWindow;->keyPrev(Ljava/util/Vector;I)V

    .line 541
    return-void
.end method

.method private keyPrev(Ljava/util/Vector;I)V
    .locals 5
    .param p1, "_children"    # Ljava/util/Vector;
    .param p2, "fromIndex"    # I

    .prologue
    .line 549
    if-nez p1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 556
    .local v0, "childNum":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 557
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWidget;

    .line 558
    .local v1, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    goto :goto_0

    .line 569
    .end local v1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_2
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-gt v2, v4, :cond_0

    .line 571
    sub-int v4, p2, v2

    add-int/2addr v4, v0

    rem-int v3, v4, v0

    .line 573
    .local v3, "index":I
    if-ltz v3, :cond_3

    if-lt v3, v0, :cond_4

    .line 569
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 577
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWidget;

    .line 578
    .restart local v1    # "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_3

    .line 582
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method private resetLROffset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    .line 43
    iget-object v0, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    .line 44
    return-void
.end method

.method private setAllSize(I)V
    .locals 1
    .param p1, "allSize"    # I

    .prologue
    .line 39
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/hz/gui/GWindow;->allSize:B

    .line 40
    return-void
.end method

.method private setGWidgetFocus(Lcom/hz/gui/GWidget;Z)V
    .locals 0
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "flag"    # Z

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 687
    :cond_0
    invoke-virtual {p1, p2}, Lcom/hz/gui/GWidget;->setFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addChoiceMenu(Lcom/hz/gui/GLabel;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "libLabel"    # Lcom/hz/gui/GLabel;
    .param p2, "choices"    # [Ljava/lang/String;
    .param p3, "inputLabelMaxWidth"    # I

    .prologue
    const/4 v3, 0x0

    .line 695
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hz/gui/GWindow;->addChoiceMenu(Lcom/hz/gui/GLabel;[Ljava/lang/String;[I[II)V

    .line 697
    return-void
.end method

.method public addChoiceMenu(Lcom/hz/gui/GLabel;[Ljava/lang/String;[I[II)V
    .locals 7
    .param p1, "libLabel"    # Lcom/hz/gui/GLabel;
    .param p2, "choices"    # [Ljava/lang/String;
    .param p3, "eventTypeList"    # [I
    .param p4, "iconValues"    # [I
    .param p5, "inputLabelMaxWidth"    # I

    .prologue
    .line 700
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    if-eqz p2, :cond_0

    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, "barWidth":I
    iget-object v5, p0, Lcom/hz/gui/GWindow;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v5, :cond_2

    .line 716
    iget-object v5, p0, Lcom/hz/gui/GWindow;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v5}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v1

    .line 720
    :cond_2
    invoke-virtual {p0, p4}, Lcom/hz/gui/GWindow;->setHotKeyTable([I)V

    .line 722
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, p2

    if-lt v3, v5, :cond_4

    .line 743
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->layout()V

    .line 746
    iget-boolean v5, p0, Lcom/hz/gui/GWindow;->needScrollBar:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->getScrollBar()Lcom/hz/gui/GScrollBar;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 748
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v5

    if-lt v3, v5, :cond_8

    .line 753
    :cond_3
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    goto :goto_0

    .line 724
    :cond_4
    aget-object v4, p2, v3

    .line 726
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/gui/GLabel;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GLabel;

    .line 727
    .local v0, "addLabel":Lcom/hz/gui/GLabel;
    invoke-virtual {v0, v4}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, v4}, Lcom/hz/gui/GLabel;->setPowerText(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, v4}, Lcom/hz/gui/GLabel;->setObj(Ljava/lang/Object;)V

    .line 731
    invoke-static {v3, p3}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    aget v5, p3, v3

    if-ltz v5, :cond_5

    .line 732
    aget v5, p3, v3

    invoke-virtual {v0, v5}, Lcom/hz/gui/GLabel;->setEventType(I)V

    .line 734
    :cond_5
    invoke-static {v3, p4}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget v5, p4, v3

    if-ltz v5, :cond_6

    .line 735
    aget v5, p4, v3

    int-to-byte v5, v5

    const/16 v6, 0x800

    invoke-virtual {v0, v5, v6}, Lcom/hz/gui/GLabel;->setIconValue(BI)V

    .line 738
    :cond_6
    if-lez p5, :cond_7

    invoke-virtual {v0}, Lcom/hz/gui/GLabel;->getMinW()I

    move-result v5

    if-ge p5, v5, :cond_7

    .line 739
    add-int v5, p5, v1

    invoke-virtual {v0, v5}, Lcom/hz/gui/GLabel;->setMinWidth(I)V

    .line 741
    :cond_7
    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 749
    .end local v0    # "addLabel":Lcom/hz/gui/GLabel;
    .end local v4    # "text":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v3}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    .line 750
    .local v2, "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getMinW()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/hz/gui/GWidget;->setMinWidth(I)V

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public doLRLeft(Z)V
    .locals 3
    .param p1, "isPrevPage"    # Z

    .prologue
    const/4 v2, 0x0

    .line 202
    if-nez p1, :cond_1

    iget v0, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    if-lez v0, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->keyPrev()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->isLRCanLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-direct {p0, v0, v2}, Lcom/hz/gui/GWindow;->keyPrev(Ljava/util/Vector;I)V

    .line 213
    iget v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    .line 214
    iget v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    if-gez v0, :cond_2

    .line 215
    iput v2, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    .line 217
    :cond_2
    iget v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    .line 218
    iget v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    iget-byte v1, p0, Lcom/hz/gui/GWindow;->allSize:B

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 219
    iget-byte v0, p0, Lcom/hz/gui/GWindow;->allSize:B

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    goto :goto_0
.end method

.method public doLRRight(Z)V
    .locals 2
    .param p1, "isNextPage"    # Z

    .prologue
    .line 228
    if-nez p1, :cond_1

    iget v0, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    iget-byte v1, p0, Lcom/hz/gui/GWindow;->allSize:B

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->keyNext()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->isLRCanRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GWindow;->keyNext(Ljava/util/Vector;I)V

    .line 239
    iget v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    .line 240
    iget v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    iget-byte v1, p0, Lcom/hz/gui/GWindow;->allSize:B

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 241
    iget-byte v0, p0, Lcom/hz/gui/GWindow;->allSize:B

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    .line 243
    :cond_2
    iget v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    .line 244
    iget v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    if-gez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    goto :goto_0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->getVMDataCopy()[I

    move-result-object v0

    .line 790
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GWindow;

    invoke-direct {v1, v0}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 791
    .local v1, "gwidget":Lcom/hz/gui/GWindow;
    invoke-super {p0, v1}, Lcom/hz/gui/GLinePanel;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 792
    invoke-super {p0, v1}, Lcom/hz/gui/GLinePanel;->setGContainerData(Lcom/hz/gui/GContainer;)V

    .line 793
    invoke-super {p0, v1}, Lcom/hz/gui/GLinePanel;->setGLinePanelData(Lcom/hz/gui/GLinePanel;)V

    .line 795
    return-object v1
.end method

.method public getFocusIndex()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    return v0
.end method

.method public getMoveFlag()B
    .locals 1

    .prologue
    .line 54
    iget-byte v0, p0, Lcom/hz/gui/GWindow;->moveFlag:B

    return v0
.end method

.method public hotKeyPress(I)V
    .locals 4
    .param p1, "keyPress"    # I

    .prologue
    .line 355
    iget-object v3, p0, Lcom/hz/gui/GWindow;->hotKeyTable:[I

    if-nez v3, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-static {p1}, Lcom/hz/common/Utilities;->getHotKeyValue(I)I

    move-result v1

    .line 359
    .local v1, "hotKeyIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/gui/GWindow;->hotKeyTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/hz/gui/GWindow;->hotKeyTable:[I

    aget v3, v3, v2

    if-ne v3, v1, :cond_2

    .line 361
    invoke-virtual {p0, v2}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 362
    .local v0, "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    goto :goto_0

    .line 359
    .end local v0    # "gw":Lcom/hz/gui/GWidget;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isLRCanLeft()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLRCanRight()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/hz/gui/GWindow;->lastInViewIndex:I

    iget-byte v1, p0, Lcom/hz/gui/GWindow;->allSize:B

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyPressDown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 403
    iget-boolean v0, p0, Lcom/hz/gui/GWindow;->canCatchKey:Z

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/hz/gui/GWindow;->layoutData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 426
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->keyNext()V

    goto :goto_0

    .line 415
    :sswitch_0
    invoke-direct {p0, v2, v2}, Lcom/hz/gui/GWindow;->doGridMove(ZZ)V

    goto :goto_0

    .line 411
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public keyPressLeft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-boolean v0, p0, Lcom/hz/gui/GWindow;->canCatchKey:Z

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/hz/gui/GWindow;->layoutData:[I

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 462
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->keyPrev()V

    goto :goto_0

    .line 444
    :sswitch_0
    invoke-direct {p0, v1, v1}, Lcom/hz/gui/GWindow;->doGridMove(ZZ)V

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public keyPressRight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-boolean v0, p0, Lcom/hz/gui/GWindow;->canCatchKey:Z

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/hz/gui/GWindow;->layoutData:[I

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 499
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->keyNext()V

    goto :goto_0

    .line 481
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/hz/gui/GWindow;->doGridMove(ZZ)V

    goto :goto_0

    .line 477
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public keyPressUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-boolean v0, p0, Lcom/hz/gui/GWindow;->canCatchKey:Z

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/hz/gui/GWindow;->layoutData:[I

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 396
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->keyPrev()V

    goto :goto_0

    .line 383
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GWindow;->doGridMove(ZZ)V

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFirstFocus()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->setFocus(I)V

    .line 619
    return-void
.end method

.method public setFocus(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->getEnableFocusChild()Ljava/util/Vector;

    move-result-object v0

    .line 627
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 639
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWidget;

    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 640
    iget v1, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    iput v1, p0, Lcom/hz/gui/GWindow;->oldFocusIndex:I

    goto :goto_0
.end method

.method public setFocus(Lcom/hz/gui/GWidget;)V
    .locals 3
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 661
    .local v0, "oldFoucsGwidget":Lcom/hz/gui/GWidget;
    iput-object p1, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 663
    iget v1, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    iput v1, p0, Lcom/hz/gui/GWindow;->oldFocusIndex:I

    .line 664
    invoke-virtual {p0, p1}, Lcom/hz/gui/GWindow;->getIndex(Lcom/hz/gui/GWidget;)I

    move-result v1

    iput v1, p0, Lcom/hz/gui/GWindow;->focusIndex:I

    .line 666
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    iget-object v1, v1, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/hz/gui/GWindow;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/gui/GWindow;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    if-lez v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    iget-object v1, v1, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    invoke-virtual {v1, v0, p1}, Lcom/hz/gui/GContainer;->setSrollBar(Lcom/hz/gui/GWidget;Lcom/hz/gui/GWidget;)V

    .line 678
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GWindow;->setGWidgetFocus(Lcom/hz/gui/GWidget;Z)V

    .line 679
    iget-object v1, p0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/hz/gui/GWindow;->setGWidgetFocus(Lcom/hz/gui/GWidget;Z)V

    .line 680
    return-void
.end method

.method public setHotKeyTable([I)V
    .locals 0
    .param p1, "keyTable"    # [I

    .prologue
    .line 350
    iput-object p1, p0, Lcom/hz/gui/GWindow;->hotKeyTable:[I

    .line 351
    return-void
.end method

.method public setLRContent([Ljava/lang/String;)V
    .locals 2
    .param p1, "tabList"    # [Ljava/lang/String;

    .prologue
    .line 253
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hz/gui/GWindow;->setLRContent([Ljava/lang/String;Ljava/util/Vector;I)V

    .line 254
    return-void
.end method

.method public setLRContent([Ljava/lang/String;Ljava/util/Vector;I)V
    .locals 10
    .param p1, "tabList"    # [Ljava/lang/String;
    .param p2, "tabEvent"    # Ljava/util/Vector;
    .param p3, "focusEvent"    # I

    .prologue
    const/4 v9, 0x1

    .line 257
    if-nez p1, :cond_1

    .line 329
    :cond_0
    return-void

    .line 263
    :cond_1
    array-length v8, p1

    invoke-direct {p0, v8}, Lcom/hz/gui/GWindow;->setAllSize(I)V

    .line 265
    iget-object v8, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    if-eqz v8, :cond_0

    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, "isFind":Z
    const/4 v8, -0x1

    if-eq p3, v8, :cond_2

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 289
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 292
    .local v4, "isOKFocus":Z
    :goto_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_6

    .line 321
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->isLRCanRight()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 325
    invoke-virtual {p0, v9}, Lcom/hz/gui/GWindow;->doLRRight(Z)V

    goto :goto_2

    .line 276
    .end local v4    # "isOKFocus":Z
    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 277
    .local v6, "object":Ljava/lang/Object;
    if-nez v6, :cond_5

    .line 275
    .end local v6    # "object":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_5
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, "event":I
    if-ne v0, p3, :cond_4

    .line 282
    const/4 v3, 0x1

    .line 283
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->resetLROffset()V

    goto :goto_1

    .line 293
    .end local v0    # "event":I
    .restart local v4    # "isOKFocus":Z
    :cond_6
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v5

    check-cast v5, Lcom/hz/gui/GLabel;

    .line 295
    .local v5, "label":Lcom/hz/gui/GLabel;
    iget v8, p0, Lcom/hz/gui/GWindow;->firstInViewIndex:I

    add-int v2, v1, v8

    .line 297
    .local v2, "index":I
    const/4 v7, 0x0

    .line 298
    .local v7, "text":Ljava/lang/String;
    if-ltz v2, :cond_7

    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    if-gt v2, v8, :cond_7

    .line 299
    aget-object v7, p1, v2

    .line 301
    :cond_7
    invoke-virtual {v5, v7}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 303
    invoke-static {v2, p2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 304
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 305
    .restart local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Lcom/hz/gui/GLabel;->setObj(Ljava/lang/Object;)V

    .line 308
    if-eqz v6, :cond_8

    .line 309
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    .restart local v0    # "event":I
    if-ne v0, p3, :cond_8

    .line 311
    const/4 v4, 0x1

    .line 312
    invoke-virtual {p0, v5}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 317
    .end local v0    # "event":I
    :cond_8
    if-eqz v7, :cond_9

    move v8, v9

    :goto_4
    invoke-virtual {v5, v8}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 317
    :cond_9
    const/4 v8, 0x0

    goto :goto_4
.end method

.method public setLRMove()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/hz/gui/GWindow;->resetLROffset()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/gui/GWindow;->isLRMove:Z

    goto :goto_0
.end method

.method public setLRShowArrow(Lcom/hz/ui/UIHandler;)V
    .locals 3
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 337
    const/16 v2, 0x389

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GLabel;

    .line 338
    .local v0, "arrowLeft":Lcom/hz/gui/GLabel;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->isLRCanLeft()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 341
    :cond_0
    const/16 v2, 0x38a

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GLabel;

    .line 342
    .local v1, "arrowRight":Lcom/hz/gui/GLabel;
    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->isLRCanRight()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 345
    :cond_1
    return-void
.end method

.method public setPrevFocus(I)V
    .locals 2
    .param p1, "curIndex"    # I

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 650
    .local v0, "gw":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {p0, v0}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 656
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/hz/gui/GWindow;->children:Ljava/util/Vector;

    invoke-direct {p0, v1, p1}, Lcom/hz/gui/GWindow;->keyPrev(Ljava/util/Vector;I)V

    goto :goto_0
.end method

.method public setXYMove(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/hz/gui/GWindow;->isXYMove:Z

    .line 65
    return-void
.end method

.method public updateJavaChild(Lcom/hz/gui/GWidget;)Z
    .locals 4
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    const/4 v2, 0x0

    .line 763
    if-nez p1, :cond_0

    .line 783
    :goto_0
    return v2

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->getChildNum()I

    move-result v0

    .line 773
    .local v0, "childNum":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_1

    .line 778
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_2

    .line 782
    invoke-virtual {p0}, Lcom/hz/gui/GWindow;->show()V

    .line 783
    const/4 v2, 0x1

    goto :goto_0

    .line 774
    :cond_1
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWindow;->getJavaChild(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/hz/gui/GWindow;->remove(Lcom/hz/gui/GWidget;Z)V

    .line 773
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 779
    :cond_2
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 778
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
