.class public Lcom/hz/gui/GTextArea;
.super Lcom/hz/gui/GLinePanel;
.source "GTextArea.java"

# interfaces
.implements Lcom/hz/gui/IGCycle;


# instance fields
.field alertCount:I

.field alertMsg:Ljava/lang/String;

.field private anchor:I

.field counter:I

.field public curPage:I

.field private displayHeight:I

.field isAutoScroll:Z

.field private isPartRowShow:Z

.field public lineColor:I

.field public lineHeight:I

.field public lineSpace:I

.field messages:[Lcom/hz/string/PowerString;

.field private numChoicesHeight:I

.field private numTotalOffsetHeight:I

.field private offsetY:I

.field pageGWidgetHeight:I

.field private piePageHeight:Ljava/util/Vector;

.field text:Ljava/lang/String;

.field public textColor:I

.field public totalPage:I


# direct methods
.method public constructor <init>([I)V
    .locals 3
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->lineColor:I

    .line 54
    iput-boolean v2, p0, Lcom/hz/gui/GTextArea;->isPartRowShow:Z

    .line 587
    iput v2, p0, Lcom/hz/gui/GTextArea;->counter:I

    .line 58
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setType(I)V

    .line 60
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/hz/gui/GTextArea;->lineHeight:I

    .line 62
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineHeight:I

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 63
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineHeight:I

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setMinHeight(I)V

    .line 65
    :cond_0
    iput-boolean v2, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setCatchKey(Z)V

    .line 67
    return-void
.end method

.method private adjustWidthHeight()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getW()I

    move-result v0

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinW()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setW(I)V

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v0

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setH(I)V

    .line 87
    :cond_1
    :goto_1
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getW()I

    move-result v0

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMaxW()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMaxW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setW(I)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v0

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMaxH()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMaxH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setH(I)V

    goto :goto_1
.end method

.method private countTotalLineHeight(I)I
    .locals 4
    .param p1, "inputLineHeight"    # I

    .prologue
    .line 682
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    if-nez v3, :cond_1

    .line 683
    const/4 v2, 0x0

    .line 690
    :cond_0
    return v2

    .line 685
    :cond_1
    const/4 v2, 0x0

    .line 686
    .local v2, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 687
    invoke-direct {p0, v1, p1}, Lcom/hz/gui/GTextArea;->getTextHeightByIndex(II)I

    move-result v0

    .line 688
    .local v0, "getHeight":I
    add-int/2addr v2, v0

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final drawRowText(Ljavax/microedition/lcdui/Graphics;IIIIIII)I
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "index"    # I
    .param p3, "drawX"    # I
    .param p4, "drawY"    # I
    .param p5, "displayWidth"    # I
    .param p6, "realLineHeight"    # I
    .param p7, "startDisplayY"    # I
    .param p8, "bottomY"    # I

    .prologue
    .line 419
    iget-object v6, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    aget-object v5, v6, p2

    .line 421
    .local v5, "ps":Lcom/hz/string/PowerString;
    if-nez v5, :cond_1

    .line 425
    const/4 v1, 0x0

    .line 482
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    move v1, p6

    .line 429
    .local v1, "curLineHeight":I
    invoke-virtual {v5}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 430
    invoke-virtual {v5}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v1

    .line 434
    :cond_2
    add-int v6, p4, v1

    move/from16 v0, p7

    if-le v6, v0, :cond_0

    .line 438
    iget-boolean v6, p0, Lcom/hz/gui/GTextArea;->isPartRowShow:Z

    if-nez v6, :cond_3

    .line 441
    move/from16 v0, p7

    if-lt p4, v0, :cond_0

    .line 446
    add-int v6, p4, v1

    move/from16 v0, p8

    if-gt v6, v0, :cond_0

    .line 451
    :cond_3
    move v2, p3

    .line 452
    .local v2, "drawPowerStringX":I
    move v3, p4

    .line 454
    .local v3, "drawPowerStringY":I
    iget v4, p0, Lcom/hz/gui/GTextArea;->anchor:I

    .line 455
    .local v4, "newAnchor":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_6

    .line 456
    div-int/lit8 v6, p5, 0x2

    add-int/2addr v2, v6

    .line 462
    :cond_4
    :goto_1
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_7

    .line 463
    and-int/lit8 v4, v4, -0x3

    .line 465
    invoke-virtual {v5}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    .line 467
    or-int/lit8 v4, v4, 0x10

    .line 475
    :cond_5
    :goto_2
    iget v6, p0, Lcom/hz/gui/GTextArea;->textColor:I

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 476
    invoke-virtual {v5, p1, v2, v3, v4}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 477
    iget v6, p0, Lcom/hz/gui/GTextArea;->lineColor:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 478
    iget v6, p0, Lcom/hz/gui/GTextArea;->lineColor:I

    invoke-virtual {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 479
    add-int v6, p4, v1

    add-int v7, p3, p5

    add-int v8, p4, v1

    invoke-virtual {p1, p3, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto :goto_0

    .line 458
    :cond_6
    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_4

    .line 459
    add-int/2addr v2, p5

    goto :goto_1

    .line 469
    :cond_7
    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_5

    .line 471
    invoke-virtual {v5}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    add-int/2addr v3, v6

    goto :goto_2
.end method

.method private getFirstPageFullHeight(II)I
    .locals 4
    .param p1, "inputLineHeight"    # I
    .param p2, "_disPlayerHeight"    # I

    .prologue
    .line 701
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    if-nez v3, :cond_1

    .line 714
    .end local p2    # "_disPlayerHeight":I
    :cond_0
    :goto_0
    return p2

    .line 704
    .restart local p2    # "_disPlayerHeight":I
    :cond_1
    const/4 v2, 0x0

    .line 705
    .local v2, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 706
    invoke-direct {p0, v1, p1}, Lcom/hz/gui/GTextArea;->getTextHeightByIndex(II)I

    move-result v0

    .line 708
    .local v0, "getHeight":I
    add-int v3, v2, v0

    if-le v3, p2, :cond_2

    move p2, v2

    .line 709
    goto :goto_0

    .line 712
    :cond_2
    add-int/2addr v2, v0

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getPageOffsetHeight()I
    .locals 4

    .prologue
    .line 635
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->piePageHeight:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 637
    const/4 v2, 0x0

    .line 650
    :cond_0
    return v2

    .line 640
    :cond_1
    const/4 v2, 0x0

    .line 641
    .local v2, "totalOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/hz/gui/GTextArea;->curPage:I

    if-ge v1, v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->piePageHeight:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 647
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->piePageHeight:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 648
    .local v0, "height":I
    add-int/2addr v2, v0

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRealLineHeight()I
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineHeight:I

    iget v1, p0, Lcom/hz/gui/GTextArea;->lineSpace:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getTextHeightByIndex(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "inputLineHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 655
    iget-object v2, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    if-nez v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    aget-object v1, v2, p1

    .line 664
    .local v1, "ps":Lcom/hz/string/PowerString;
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v0

    .line 669
    .local v0, "getHeight":I
    if-ge v0, p2, :cond_0

    .line 670
    move v0, p2

    goto :goto_0
.end method

.method private initArea(I)V
    .locals 13
    .param p1, "barWidth"    # I

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/16 v10, 0xb

    const/16 v9, 0x9

    const/4 v6, 0x0

    .line 103
    iput v6, p0, Lcom/hz/gui/GTextArea;->curPage:I

    .line 104
    iput v11, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    .line 105
    iput-boolean v6, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    .line 106
    iput v6, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    .line 108
    iput v6, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    .line 109
    iput v6, p0, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    .line 110
    iput-boolean v6, p0, Lcom/hz/gui/GTextArea;->isPartRowShow:Z

    .line 114
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->adjustWidthHeight()V

    .line 117
    iget-object v6, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v7, 0xa

    aget v1, v6, v7

    .line 118
    .local v1, "borderRightDis":I
    if-ge v1, p1, :cond_0

    .line 119
    move v1, p1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getText()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "textContent":Ljava/lang/String;
    iget-object v6, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    sub-int/2addr v6, v7

    sub-int v2, v6, v1

    .line 125
    .local v2, "displayWidth":I
    iget-object v6, p0, Lcom/hz/gui/GTextArea;->font:Ljavax/microedition/lcdui/Font;

    invoke-static {v4, v6, v2}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v6

    iput-object v6, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "isHasText":Z
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 129
    const/4 v3, 0x1

    .line 133
    :cond_1
    if-eqz v3, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getRealLineHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/hz/gui/GTextArea;->countTotalLineHeight(I)I

    move-result v6

    iput v6, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    .line 137
    iget v6, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v10

    add-int v5, v6, v7

    .line 138
    .local v5, "totalHeight":I
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 139
    invoke-virtual {p0, v5}, Lcom/hz/gui/GTextArea;->setH(I)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v6

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/hz/gui/GTextArea;->setH(I)V

    .line 146
    .end local v5    # "totalHeight":I
    :cond_3
    iget-object v6, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v6, v6, v12

    iget v7, p0, Lcom/hz/gui/GTextArea;->pageGWidgetHeight:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v10

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    .line 149
    iget v6, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    iget v7, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    if-le v6, v7, :cond_5

    .line 150
    iput-boolean v11, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    .line 154
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getRealLineHeight()I

    move-result v6

    iget v7, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    invoke-direct {p0, v6, v7}, Lcom/hz/gui/GTextArea;->getFirstPageFullHeight(II)I

    move-result v6

    .line 155
    iget v7, p0, Lcom/hz/gui/GTextArea;->pageGWidgetHeight:I

    .line 154
    add-int/2addr v6, v7

    .line 156
    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v9

    .line 154
    add-int/2addr v6, v7

    .line 156
    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v10

    .line 154
    add-int v0, v6, v7

    .line 157
    .local v0, "adjustHeight":I
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMinH()I

    move-result v0

    .line 163
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hz/gui/GTextArea;->setH(I)V

    .line 164
    iget-object v6, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v6, v6, v12

    iget v7, p0, Lcom/hz/gui/GTextArea;->pageGWidgetHeight:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    aget v7, v7, v10

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    .line 168
    iget v6, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    iget v7, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    .line 170
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getRealLineHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/hz/gui/GTextArea;->initPage(I)V

    .line 174
    .end local v0    # "adjustHeight":I
    :cond_5
    iget-boolean v6, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    if-eqz v6, :cond_6

    .line 175
    iput-boolean v11, p0, Lcom/hz/gui/GTextArea;->isPartRowShow:Z

    .line 176
    iput v12, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    .line 180
    :cond_6
    return-void

    .line 160
    .restart local v0    # "adjustHeight":I
    :cond_7
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMaxH()I

    move-result v6

    if-le v0, v6, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getMaxH()I

    move-result v0

    goto :goto_0
.end method

.method private initPage(I)V
    .locals 5
    .param p1, "inputLineHeight"    # I

    .prologue
    .line 722
    const/4 v3, 0x1

    iput v3, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    .line 724
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/hz/gui/GTextArea;->piePageHeight:Ljava/util/Vector;

    .line 725
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    if-nez v3, :cond_1

    .line 742
    :cond_0
    return-void

    .line 729
    :cond_1
    const/4 v1, 0x0

    .line 730
    .local v1, "heightOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 732
    invoke-direct {p0, v2, p1}, Lcom/hz/gui/GTextArea;->getTextHeightByIndex(II)I

    move-result v0

    .line 733
    .local v0, "getHeight":I
    add-int v3, v1, v0

    iget v4, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    if-le v3, v4, :cond_2

    .line 734
    iget v3, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    .line 735
    iget-object v3, p0, Lcom/hz/gui/GTextArea;->piePageHeight:Ljava/util/Vector;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 736
    move v1, v0

    .line 730
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    :cond_2
    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private setLines()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 195
    iput v2, p0, Lcom/hz/gui/GTextArea;->pageGWidgetHeight:I

    .line 196
    invoke-direct {p0, v2}, Lcom/hz/gui/GTextArea;->initArea(I)V

    .line 197
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v1, :cond_2

    .line 200
    iget-boolean v1, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v1}, Lcom/hz/gui/GScrollBar;->getBarWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v2, v2, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/hz/gui/GTextArea;->initArea(I)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v1}, Lcom/hz/gui/GScrollBar;->reset()V

    .line 205
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v2, p0, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 206
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v2, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    const/16 v1, 0x3e5

    invoke-virtual {p0, v1}, Lcom/hz/gui/GTextArea;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 212
    .local v0, "pageGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0, v2}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 216
    iget-boolean v1, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    if-eqz v1, :cond_3

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 219
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getH()I

    move-result v1

    iput v1, p0, Lcom/hz/gui/GTextArea;->pageGWidgetHeight:I

    .line 222
    invoke-direct {p0, v2}, Lcom/hz/gui/GTextArea;->initArea(I)V

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->updatePageText()V

    goto :goto_0
.end method

.method private final updateOffsetY(IZ)V
    .locals 6
    .param p1, "inputLineHeight"    # I
    .param p2, "isUp"    # Z

    .prologue
    .line 750
    iget-object v5, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    if-nez v5, :cond_0

    .line 795
    :goto_0
    return-void

    .line 754
    :cond_0
    iget v5, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    neg-int v0, v5

    .line 756
    .local v0, "curOffset":I
    const/4 v3, 0x0

    .line 757
    .local v3, "totalHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 794
    :cond_1
    :goto_2
    neg-int v5, v0

    iput v5, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    goto :goto_0

    .line 759
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/hz/gui/GTextArea;->getTextHeightByIndex(II)I

    move-result v1

    .line 760
    .local v1, "getHeight":I
    add-int/2addr v3, v1

    .line 762
    sub-int v4, v3, v0

    .line 763
    .local v4, "value":I
    if-gtz v4, :cond_3

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 768
    :cond_3
    if-eqz p2, :cond_5

    .line 771
    if-ne v4, v1, :cond_4

    .line 772
    add-int/lit8 v5, v2, -0x1

    invoke-direct {p0, v5, p1}, Lcom/hz/gui/GTextArea;->getTextHeightByIndex(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 778
    :goto_3
    if-gez v0, :cond_1

    .line 779
    const/4 v0, 0x0

    .line 781
    goto :goto_2

    .line 775
    :cond_4
    sub-int v5, v1, v4

    sub-int/2addr v0, v5

    goto :goto_3

    .line 784
    :cond_5
    add-int/2addr v0, v4

    .line 786
    iget v5, p0, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    if-le v0, v5, :cond_1

    .line 787
    iget v0, p0, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    .line 791
    goto :goto_2
.end method

.method private updatePageText()V
    .locals 3

    .prologue
    .line 231
    const/16 v1, 0x3e5

    invoke-virtual {p0, v1}, Lcom/hz/gui/GTextArea;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 232
    .local v0, "pageGWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_1

    .line 239
    .end local v0    # "pageGWidget":Lcom/hz/gui/GWidget;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0    # "pageGWidget":Lcom/hz/gui/GWidget;
    :cond_1
    instance-of v1, v0, Lcom/hz/gui/GLabel;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Lcom/hz/gui/GLabel;

    .end local v0    # "pageGWidget":Lcom/hz/gui/GWidget;
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hz/gui/GTextArea;->curPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cycle()V
    .locals 2

    .prologue
    .line 591
    iget v0, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    if-lez v0, :cond_1

    .line 592
    iget v0, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    .line 593
    iget v0, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    if-gtz v0, :cond_1

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/gui/GTextArea;->alertMsg:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->setLines()V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-boolean v0, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    if-eqz v0, :cond_0

    .line 603
    iget-boolean v0, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    if-eqz v0, :cond_0

    .line 606
    iget v0, p0, Lcom/hz/gui/GTextArea;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->counter:I

    .line 607
    iget v0, p0, Lcom/hz/gui/GTextArea;->counter:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GTextArea;->counter:I

    .line 609
    :cond_2
    iget v0, p0, Lcom/hz/gui/GTextArea;->counter:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 610
    iget v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    .line 612
    :cond_3
    iget v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    iget v1, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 613
    iget v0, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    iput v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    goto :goto_0
.end method

.method public getAnchor()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/hz/gui/GTextArea;->anchor:I

    return v0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getVMDataCopy()[I

    move-result-object v0

    .line 560
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GTextArea;

    invoke-direct {v1, v0}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 561
    .local v1, "gwidget":Lcom/hz/gui/GTextArea;
    invoke-super {p0, v1}, Lcom/hz/gui/GLinePanel;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 562
    invoke-super {p0, v1}, Lcom/hz/gui/GLinePanel;->setGContainerData(Lcom/hz/gui/GContainer;)V

    .line 563
    invoke-super {p0, v1}, Lcom/hz/gui/GLinePanel;->setGLinePanelData(Lcom/hz/gui/GLinePanel;)V

    .line 564
    invoke-virtual {p0, v1}, Lcom/hz/gui/GTextArea;->setGTextAreaData(Lcom/hz/gui/GTextArea;)V

    .line 565
    return-object v1
.end method

.method public getIsAutoScroll()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineColor:I

    return v0
.end method

.method public getLineSpace()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineSpace:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->alertMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->alertMsg:Ljava/lang/String;

    .line 249
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/hz/gui/GTextArea;->textColor:I

    return v0
.end method

.method public keyPressDown()V
    .locals 0

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->moveUp()V

    .line 369
    return-void
.end method

.method public keyPressLeft()V
    .locals 0

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->moveUpPage()V

    .line 373
    return-void
.end method

.method public keyPressRight()V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->moveDownPage()V

    .line 377
    return-void
.end method

.method public keyPressUp()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->moveDown()V

    .line 366
    return-void
.end method

.method public moveDown()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getRealLineHeight()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GTextArea;->updateOffsetY(IZ)V

    .line 288
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    neg-int v1, v1

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 292
    :cond_0
    return-void
.end method

.method public moveDownPage()V
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    .line 306
    iget v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    iget v1, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    if-lt v0, v1, :cond_0

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getPageOffsetHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    .line 312
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    neg-int v1, v1

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 317
    :cond_1
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->updatePageText()V

    .line 318
    return-void
.end method

.method public moveUp()V
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getRealLineHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hz/gui/GTextArea;->updateOffsetY(IZ)V

    .line 297
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    neg-int v1, v1

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 301
    :cond_0
    return-void
.end method

.method public moveUpPage()V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    .line 323
    iget v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    if-gez v0, :cond_0

    .line 324
    iget v0, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->getPageOffsetHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    .line 327
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    neg-int v1, v1

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->updatePageText()V

    .line 332
    return-void
.end method

.method public needExecuteCycle()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public paintData(Ljavax/microedition/lcdui/Graphics;)V
    .locals 16
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 386
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v15, 0x8

    aget v2, v2, v15

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v15, 0xa

    aget v2, v2, v15

    sub-int v6, v1, v2

    .line 387
    .local v6, "displayWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/4 v15, 0x7

    aget v2, v2, v15

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v15, 0x9

    aget v2, v2, v15

    add-int v14, v1, v2

    .line 388
    .local v14, "startY":I
    invoke-direct/range {p0 .. p0}, Lcom/hz/gui/GTextArea;->getRealLineHeight()I

    move-result v7

    .line 389
    .local v7, "realLineHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/4 v15, 0x6

    aget v2, v2, v15

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v15, 0x8

    aget v2, v2, v15

    add-int v4, v1, v2

    .line 391
    .local v4, "drawX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GTextArea;->font:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v12

    .line 393
    .local v12, "clipX":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v13

    .line 394
    .local v13, "clipY":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v11

    .line 395
    .local v11, "clipWidth":I
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v10

    .line 397
    .local v10, "clipHeight":I
    move v8, v14

    .line 398
    .local v8, "drawY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GTextArea;->displayHeight:I

    add-int v9, v14, v1

    .line 400
    .local v9, "bottomY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GTextArea;->displayHeight:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14, v6, v1}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 401
    const/4 v3, 0x0

    .line 403
    .local v3, "startIndex":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hz/gui/GTextArea;->offsetY:I

    add-int v5, v8, v1

    .local v5, "scrolly":I
    :goto_1
    if-lt v5, v9, :cond_2

    .line 412
    :cond_1
    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 413
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v11, v10}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 405
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/gui/GTextArea;->messages:[Lcom/hz/string/PowerString;

    array-length v1, v1

    if-ge v3, v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 409
    invoke-direct/range {v1 .. v9}, Lcom/hz/gui/GTextArea;->drawRowText(Ljavax/microedition/lcdui/Graphics;IIIIIII)I

    move-result v1

    add-int/2addr v5, v1

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public pointerDrag(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 337
    iget-boolean v1, p0, Lcom/hz/gui/GTextArea;->needScrollBar:Z

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hz/gui/GTextArea;->isPartRowShow:Z

    .line 348
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v2, v2, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    if-gt v1, v2, :cond_3

    .line 350
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v0, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 351
    .local v0, "oldScrollPos":I
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v2, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    sub-int/2addr v2, p2

    iput v2, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 352
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    if-gez v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    const/4 v2, 0x0

    iput v2, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 355
    move p2, v0

    .line 361
    .end local v0    # "oldScrollPos":I
    :cond_2
    :goto_1
    iget v1, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    goto :goto_0

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    iget-object v2, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v2, v2, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    sub-int p2, v1, v2

    .line 359
    iget-object v1, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v2, p0, Lcom/hz/gui/GTextArea;->gsb:Lcom/hz/gui/GScrollBar;

    iget v2, v2, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    iput v2, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    goto :goto_1
.end method

.method public setAlertCount(I)V
    .locals 0
    .param p1, "_alertCount"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    .line 552
    return-void
.end method

.method public setAlertText(Ljava/lang/String;)V
    .locals 1
    .param p1, "_alert"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/hz/gui/GTextArea;->alertMsg:Ljava/lang/String;

    .line 546
    const/16 v0, 0x14

    iput v0, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    .line 547
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->setLines()V

    .line 548
    return-void
.end method

.method public setAnchor(I)V
    .locals 0
    .param p1, "_anchor"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/hz/gui/GTextArea;->anchor:I

    .line 512
    return-void
.end method

.method public setAutoScroll(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    .line 39
    return-void
.end method

.method public setBack([ILcom/hz/image/ImageSet;I)V
    .locals 0
    .param p1, "_colorTable"    # [I
    .param p2, "cornImage"    # Lcom/hz/image/ImageSet;
    .param p3, "_index"    # I

    .prologue
    .line 487
    invoke-super {p0, p1, p2, p3}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 488
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v0

    .line 494
    .local v0, "oldHeight":I
    invoke-super {p0, p1, p2, p3, p4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 497
    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->setLines()V

    .line 500
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 2
    .param p1, "_text"    # Ljava/lang/String;
    .param p2, "_color"    # I

    .prologue
    .line 515
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;IIZ)V

    .line 516
    return-void
.end method

.method public setData(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "_text"    # Ljava/lang/String;
    .param p2, "_color"    # I
    .param p3, "_anchor"    # I
    .param p4, "_isAutoScroll"    # Z

    .prologue
    .line 504
    iput-boolean p4, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    .line 505
    iput p2, p0, Lcom/hz/gui/GTextArea;->textColor:I

    .line 506
    invoke-virtual {p0, p3}, Lcom/hz/gui/GTextArea;->setAnchor(I)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/hz/gui/GTextArea;->setText(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 520
    invoke-super {p0, p1}, Lcom/hz/gui/GLinePanel;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 521
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->setLines()V

    .line 522
    return-void
.end method

.method protected setGTextAreaData(Lcom/hz/gui/GTextArea;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GTextArea;

    .prologue
    .line 570
    iget v0, p0, Lcom/hz/gui/GTextArea;->textColor:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->textColor:I

    .line 571
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineColor:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->lineColor:I

    .line 572
    iget v0, p0, Lcom/hz/gui/GTextArea;->curPage:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->curPage:I

    .line 573
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineHeight:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->lineHeight:I

    .line 574
    iget v0, p0, Lcom/hz/gui/GTextArea;->lineSpace:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->lineSpace:I

    .line 575
    iget-object v0, p0, Lcom/hz/gui/GTextArea;->text:Ljava/lang/String;

    iput-object v0, p1, Lcom/hz/gui/GTextArea;->text:Ljava/lang/String;

    .line 576
    iget v0, p0, Lcom/hz/gui/GTextArea;->totalPage:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->totalPage:I

    .line 578
    iget-boolean v0, p0, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    iput-boolean v0, p1, Lcom/hz/gui/GTextArea;->isAutoScroll:Z

    .line 579
    iget v0, p0, Lcom/hz/gui/GTextArea;->displayHeight:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->displayHeight:I

    .line 580
    iget v0, p0, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->numChoicesHeight:I

    .line 581
    iget v0, p0, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->numTotalOffsetHeight:I

    .line 582
    iget v0, p0, Lcom/hz/gui/GTextArea;->offsetY:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->offsetY:I

    .line 584
    iget v0, p0, Lcom/hz/gui/GTextArea;->anchor:I

    iput v0, p1, Lcom/hz/gui/GTextArea;->anchor:I

    .line 586
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "_color"    # I

    .prologue
    .line 555
    iput p1, p0, Lcom/hz/gui/GTextArea;->lineColor:I

    .line 556
    return-void
.end method

.method public setLineHeight(I)V
    .locals 0
    .param p1, "_height"    # I

    .prologue
    .line 530
    iput p1, p0, Lcom/hz/gui/GTextArea;->lineHeight:I

    .line 531
    return-void
.end method

.method public setLineSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/hz/gui/GTextArea;->lineSpace:I

    .line 527
    return-void
.end method

.method public setNeedExecuteCycle(Z)V
    .locals 0
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 621
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 624
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "_text"    # Ljava/lang/String;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/hz/gui/GTextArea;->text:Ljava/lang/String;

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/gui/GTextArea;->alertMsg:Ljava/lang/String;

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/hz/gui/GTextArea;->alertCount:I

    .line 541
    invoke-direct {p0}, Lcom/hz/gui/GTextArea;->setLines()V

    .line 542
    return-void
.end method

.method public updatePageGWidgetY()V
    .locals 6

    .prologue
    .line 186
    const/16 v1, 0x3e5

    invoke-virtual {p0, v1}, Lcom/hz/gui/GTextArea;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 187
    .local v0, "pageGWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, v0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v3

    iget-object v4, p0, Lcom/hz/gui/GTextArea;->vmData:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_0
.end method
