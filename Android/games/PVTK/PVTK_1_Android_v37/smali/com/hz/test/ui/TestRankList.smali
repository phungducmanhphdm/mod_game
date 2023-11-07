.class public Lcom/hz/test/ui/TestRankList;
.super Ljava/lang/Object;
.source "TestRankList.java"


# static fields
.field public static final COL_ID:I = 0x0

.field public static final COL_KILL_NUM:I = 0x2

.field public static final COL_NAME:I = 0x1

.field public static ContentColWidth:[I

.field public static TitleColWidth:[I

.field public static barSet:Lcom/hz/image/ImageSet;

.field public static col:I

.field public static cornerSet:Lcom/hz/image/ImageSet;

.field public static final listTable:[[Ljava/lang/String;

.field public static final listTitle:[Ljava/lang/String;

.field public static titleHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    .line 25
    const-string v1, "\u6392\u540d"

    aput-object v1, v0, v5

    const-string v1, "\u73a9\u5bb6"

    aput-object v1, v0, v6

    const-string v1, "\u6740\u654c\u6570"

    aput-object v1, v0, v7

    .line 24
    sput-object v0, Lcom/hz/test/ui/TestRankList;->listTitle:[Ljava/lang/String;

    .line 28
    const/16 v0, 0x14

    new-array v0, v0, [[Ljava/lang/String;

    .line 30
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b571"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    .line 31
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "2"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b572"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    .line 32
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "3"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b573"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    .line 33
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b574"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x4

    .line 34
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "5"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b575"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 35
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "6"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b576"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 36
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "7"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b577"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "8"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b578"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 38
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "9"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b579"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 39
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "10"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5710"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 40
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "11"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5711"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 41
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "12"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5712"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 42
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "13"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5713"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 43
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "14"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5714"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 44
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "15"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5715"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 45
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "16"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5716"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 46
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "17"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5717"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 47
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "18"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5718"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 48
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "19"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5719"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 49
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "20"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b5720"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/hz/test/ui/TestRankList;->listTable:[[Ljava/lang/String;

    .line 51
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/test/ui/TestRankList;->TitleColWidth:[I

    .line 52
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hz/test/ui/TestRankList;->ContentColWidth:[I

    .line 54
    sget-object v0, Lcom/hz/test/ui/TestRankList;->listTitle:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/hz/test/ui/TestRankList;->col:I

    .line 58
    return-void

    .line 51
    :array_0
    .array-data 4
        0x32
        0x50
        0x53
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x32
        0x50
        0x37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestList()V
    .locals 9

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 60
    const-string v3, "/common/"

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestRankList;->cornerSet:Lcom/hz/image/ImageSet;

    .line 61
    const-string v3, "/common/"

    const/16 v4, 0x67

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestRankList;->barSet:Lcom/hz/image/ImageSet;

    .line 64
    new-instance v1, Lcom/hz/gui/GLinePanel;

    new-array v3, v8, [I

    invoke-direct {v1, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 65
    .local v1, "panel":Lcom/hz/gui/GLinePanel;
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v5, v5, v3, v4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 66
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 67
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setMaxSize(II)V

    .line 68
    const/16 v3, 0x200

    invoke-virtual {v1, v5, v3}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 71
    new-instance v0, Lcom/hz/gui/GLabel;

    new-array v3, v8, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 72
    .local v0, "label":Lcom/hz/gui/GLabel;
    const-string v3, "\u6392\u884c\u699c"

    const v4, 0xfae3c4

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 73
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    sget-object v4, Lcom/hz/test/ui/TestRankList;->cornerSet:Lcom/hz/image/ImageSet;

    const/4 v5, 0x6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 75
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget-object v4, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 77
    invoke-virtual {v0}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v3

    sput v3, Lcom/hz/test/ui/TestRankList;->titleHeight:I

    .line 78
    invoke-virtual {v1, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 80
    invoke-static {}, Lcom/hz/test/ui/TestRankList;->getListWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 81
    .local v2, "window":Lcom/hz/gui/GWindow;
    invoke-virtual {v1, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 83
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 84
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 85
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 86
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x172f
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getLinePanel([Ljava/lang/String;[IZI)Lcom/hz/gui/GLinePanel;
    .locals 9
    .param p0, "choice"    # [Ljava/lang/String;
    .param p1, "colWidth"    # [I
    .param p2, "isTitle"    # Z
    .param p3, "panelWidth"    # I

    .prologue
    const/4 v4, 0x0

    const v8, 0x214570

    const/16 v7, 0x28

    const/4 v6, 0x0

    .line 149
    new-array v3, v7, [I

    .line 157
    .local v3, "vmData":[I
    new-instance v2, Lcom/hz/gui/GLinePanel;

    invoke-direct {v2, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 159
    .local v2, "line":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v2, v4, v4, v6}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 160
    const/16 v4, 0x400

    invoke-virtual {v2, v6, v4}, Lcom/hz/gui/GLinePanel;->setHLayout(II)V

    .line 161
    const v4, 0x8e8e8e

    invoke-virtual {v2, v4}, Lcom/hz/gui/GLinePanel;->setUnderLineColor(I)V

    .line 162
    invoke-virtual {v2, p3}, Lcom/hz/gui/GLinePanel;->setMinWidth(I)V

    .line 163
    invoke-virtual {v2, p3}, Lcom/hz/gui/GLinePanel;->setMaxWidth(I)V

    .line 165
    const/4 v4, 0x5

    invoke-virtual {v2, v6, v6, v4, v6}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 167
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0xa9cdf1

    aput v5, v4, v6

    invoke-virtual {v2, v4}, Lcom/hz/gui/GLinePanel;->setFocusColorTable([I)V

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 177
    return-object v2

    .line 172
    :cond_0
    new-instance v1, Lcom/hz/gui/GLabel;

    new-array v4, v7, [I

    invoke-direct {v1, v4}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 173
    .local v1, "label1":Lcom/hz/gui/GLabel;
    aget-object v4, p0, v0

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v8, v8, v5}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 174
    aget v4, p1, v0

    sget-object v5, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v1, v4, v5}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 175
    invoke-virtual {v2, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getListWindow()Lcom/hz/gui/GWindow;
    .locals 22

    .prologue
    .line 91
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v14, v0, [I

    .line 96
    .local v14, "panelData":[I
    new-instance v16, Lcom/hz/gui/GWindow;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 97
    .local v16, "window":Lcom/hz/gui/GWindow;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 98
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    sget-object v18, Lcom/hz/test/ui/TestRankList;->cornerSet:Lcom/hz/image/ImageSet;

    const/16 v19, 0x4

    invoke-virtual/range {v16 .. v19}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 99
    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 100
    sget v20, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v21, Lcom/hz/test/ui/TestRankList;->titleHeight:I

    sub-int v20, v20, v21

    .line 99
    invoke-virtual/range {v16 .. v20}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 102
    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Lcom/hz/gui/GScrollBar;->getScrollBar(IIII)Lcom/hz/gui/GScrollBar;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/hz/gui/GWindow;->addScrollBar(Lcom/hz/gui/GScrollBar;)V

    .line 103
    const/4 v4, 0x3

    .line 104
    .local v4, "border":I
    const/4 v6, 0x6

    .line 105
    .local v6, "borderTop":I
    const/4 v5, 0x3

    .line 106
    .local v5, "borderLeft":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4, v5, v4}, Lcom/hz/gui/GWindow;->setBorder(IIII)V

    .line 108
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->getW()I

    move-result v17

    sub-int v17, v17, v4

    sub-int v17, v17, v5

    add-int/lit8 v7, v17, -0x14

    .line 109
    .local v7, "getPanelWidth":I
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getPanelWidth ="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",window.getW()="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->getW()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->getW()I

    move-result v17

    .line 111
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->getH()I

    move-result v18

    .line 110
    invoke-virtual/range {v16 .. v18}, Lcom/hz/gui/GWindow;->setMinSize(II)V

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->getW()I

    move-result v17

    .line 113
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->getH()I

    move-result v18

    .line 112
    invoke-virtual/range {v16 .. v18}, Lcom/hz/gui/GWindow;->setMaxSize(II)V

    .line 115
    div-int/lit8 v15, v7, 0x5

    .line 117
    .local v15, "pieWidth":I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v15, v17, v18

    const/16 v18, 0x1

    mul-int/lit8 v19, v15, 0x2

    aput v19, v17, v18

    const/16 v18, 0x2

    mul-int/lit8 v19, v15, 0x2

    aput v19, v17, v18

    sput-object v17, Lcom/hz/test/ui/TestRankList;->TitleColWidth:[I

    .line 119
    sget-object v17, Lcom/hz/test/ui/TestRankList;->barSet:Lcom/hz/image/ImageSet;

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v17

    add-int/lit8 v12, v17, 0x4

    .line 120
    .local v12, "iconWidth":I
    const/4 v11, 0x2

    .line 121
    .local v11, "iconNum":I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v15, v17, v18

    const/16 v18, 0x1

    mul-int/lit8 v19, v15, 0x2

    aput v19, v17, v18

    const/16 v18, 0x2

    mul-int/lit8 v19, v15, 0x2

    mul-int v20, v12, v11

    sub-int v19, v19, v20

    aput v19, v17, v18

    sput-object v17, Lcom/hz/test/ui/TestRankList;->ContentColWidth:[I

    .line 124
    sget-object v17, Lcom/hz/test/ui/TestRankList;->listTitle:[Ljava/lang/String;

    sget-object v18, Lcom/hz/test/ui/TestRankList;->TitleColWidth:[I

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v7}, Lcom/hz/test/ui/TestRankList;->getLinePanel([Ljava/lang/String;[IZI)Lcom/hz/gui/GLinePanel;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 127
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v17, Lcom/hz/test/ui/TestRankList;->listTable:[[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_0

    .line 144
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 145
    return-object v16

    .line 129
    :cond_0
    sget-object v17, Lcom/hz/test/ui/TestRankList;->listTable:[[Ljava/lang/String;

    aget-object v17, v17, v8

    sget-object v18, Lcom/hz/test/ui/TestRankList;->ContentColWidth:[I

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v7}, Lcom/hz/test/ui/TestRankList;->getLinePanel([Ljava/lang/String;[IZI)Lcom/hz/gui/GLinePanel;

    move-result-object v13

    .line 131
    .local v13, "linePanel":Lcom/hz/gui/GLinePanel;
    new-instance v9, Lcom/hz/gui/GIcon;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 132
    .local v9, "icon1":Lcom/hz/gui/GIcon;
    sget-object v17, Lcom/hz/test/ui/TestRankList;->barSet:Lcom/hz/image/ImageSet;

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 133
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Lcom/hz/gui/GIcon;->setMinSize(II)V

    .line 135
    new-instance v10, Lcom/hz/gui/GIcon;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 136
    .local v10, "icon2":Lcom/hz/gui/GIcon;
    sget-object v17, Lcom/hz/test/ui/TestRankList;->barSet:Lcom/hz/image/ImageSet;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 137
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v10, v12, v0}, Lcom/hz/gui/GIcon;->setMinSize(II)V

    .line 139
    invoke-virtual {v13, v9}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 140
    invoke-virtual {v13, v10}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 141
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 127
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 98
    :array_0
    .array-data 4
        0xe8f6f7
        0xb588c
        0x3ba9ce
        0xb588c
    .end array-data
.end method
