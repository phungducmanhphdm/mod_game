.class public Lcom/hz/test/ui/TestList;
.super Ljava/lang/Object;
.source "TestList.java"


# static fields
.field public static final COL_ID:I = 0x0

.field public static final COL_KILL_NUM:I = 0x2

.field public static final COL_NAME:I = 0x1

.field public static col:I

.field public static colW:[I

.field public static final listTable:[[Ljava/lang/String;

.field public static final listTitle:[Ljava/lang/String;

.field public static numSet:Lcom/hz/image/ImageSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    .line 21
    const-string v1, "\u6392\u540d"

    aput-object v1, v0, v5

    const-string v1, "\u73a9\u5bb6"

    aput-object v1, v0, v6

    const-string v1, "\u6740\u654c\u6570"

    aput-object v1, v0, v7

    .line 20
    sput-object v0, Lcom/hz/test/ui/TestList;->listTitle:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 26
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b571"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    .line 27
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "2"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b572"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    .line 28
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "3"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b573"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    .line 29
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v5

    const-string v2, "\u73a9\u5bb6\u540d\u5b574"

    aput-object v2, v1, v6

    const-string v2, "100"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x4

    .line 30
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "5"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b575"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 31
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "8"

    aput-object v3, v2, v5

    const-string v3, "\u73a9\u5bb6\u540d\u5b576"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lcom/hz/test/ui/TestList;->listTable:[[Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/hz/test/ui/TestList;->listTitle:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/hz/test/ui/TestList;->col:I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/test/ui/TestList;->colW:[I

    return-void

    :array_0
    .array-data 4
        0x28
        0x5a
        0x50
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestList1()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x28

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 42
    const-string v3, "/common/"

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestList;->numSet:Lcom/hz/image/ImageSet;

    .line 44
    invoke-static {}, Lcom/hz/test/ui/TestList;->getListWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 47
    .local v2, "window":Lcom/hz/gui/GWindow;
    new-instance v1, Lcom/hz/gui/GLinePanel;

    new-array v3, v7, [I

    invoke-direct {v1, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 48
    .local v1, "panel":Lcom/hz/gui/GLinePanel;
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v5, v5, v3, v4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 49
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 50
    const/16 v3, 0x200

    invoke-virtual {v1, v6, v3}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 51
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3, v8, v5}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 52
    invoke-virtual {v1, v6, v5, v5, v5}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 54
    new-instance v0, Lcom/hz/gui/GLabel;

    new-array v3, v7, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 55
    .local v0, "label":Lcom/hz/gui/GLabel;
    const-string v3, "\u8d85\u503c\u7279\u5356"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v5, v5, v4}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 56
    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3, v8, v5}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 57
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v3, v3, -0x6

    sget-object v4, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 61
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 62
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 63
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 64
    return-void

    .line 51
    :array_0
    .array-data 4
        0xad4619
        0xad4619
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0xf79044
        0xffa894
    .end array-data
.end method

.method public static getLinePanel([Ljava/lang/String;Z)Lcom/hz/gui/GLinePanel;
    .locals 12
    .param p0, "choice"    # [Ljava/lang/String;
    .param p1, "isTitle"    # Z

    .prologue
    const/4 v6, 0x6

    const/16 v11, 0x28

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 93
    new-array v10, v11, [I

    .line 101
    .local v10, "vmData":[I
    new-instance v9, Lcom/hz/gui/GLinePanel;

    invoke-direct {v9, v10}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 103
    .local v9, "line":Lcom/hz/gui/GLinePanel;
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3, v2}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 104
    const/4 v1, 0x3

    const/16 v3, 0x400

    invoke-virtual {v9, v1, v3}, Lcom/hz/gui/GLinePanel;->setHLayout(II)V

    .line 105
    invoke-virtual {v9, v2, v2, v4, v2}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 107
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {v9, v1}, Lcom/hz/gui/GLinePanel;->setFocusColorTable([I)V

    .line 110
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p0

    if-lt v7, v1, :cond_0

    .line 126
    return-object v9

    .line 112
    :cond_0
    if-nez v7, :cond_1

    if-nez p1, :cond_1

    .line 113
    new-instance v0, Lcom/hz/gui/GImageNumer;

    new-array v1, v11, [I

    invoke-direct {v0, v1}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 114
    .local v0, "num":Lcom/hz/gui/GImageNumer;
    sget-object v1, Lcom/hz/test/ui/TestList;->numSet:Lcom/hz/image/ImageSet;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;ZIIII)V

    .line 115
    sget-object v1, Lcom/hz/test/ui/TestList;->colW:[I

    aget v1, v1, v7

    sget-object v3, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/hz/gui/GImageNumer;->setMinSize(II)V

    .line 116
    aget-object v1, p0, v7

    invoke-virtual {v0, v1}, Lcom/hz/gui/GImageNumer;->setNumerString(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v9, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 110
    .end local v0    # "num":Lcom/hz/gui/GImageNumer;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v8, Lcom/hz/gui/GLabel;

    new-array v1, v11, [I

    invoke-direct {v8, v1}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 122
    .local v8, "label1":Lcom/hz/gui/GLabel;
    aget-object v1, p0, v7

    invoke-virtual {v8, v1, v2, v2, v6}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 123
    sget-object v1, Lcom/hz/test/ui/TestList;->colW:[I

    aget v1, v1, v7

    sget-object v3, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v8, v1, v3}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 124
    invoke-virtual {v9, v8}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    goto :goto_1

    .line 103
    nop

    :array_0
    .array-data 4
        0xf5e2a9
        0xe8d195
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0xe9dbaf
        0x808080
    .end array-data
.end method

.method public static getListWindow()Lcom/hz/gui/GWindow;
    .locals 8

    .prologue
    const/16 v7, 0x110

    const/16 v6, 0xea

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 69
    const/16 v3, 0x28

    new-array v1, v3, [I

    .line 73
    .local v1, "panelData":[I
    new-instance v2, Lcom/hz/gui/GWindow;

    invoke-direct {v2, v1}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 74
    .local v2, "window":Lcom/hz/gui/GWindow;
    const/16 v3, 0x200

    invoke-virtual {v2, v4, v3}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 75
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 76
    invoke-virtual {v2, v5, v5, v6, v7}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 77
    invoke-virtual {v2, v6, v7}, Lcom/hz/gui/GWindow;->setMinSize(II)V

    .line 80
    sget-object v3, Lcom/hz/test/ui/TestList;->listTitle:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hz/test/ui/TestList;->getLinePanel([Ljava/lang/String;Z)Lcom/hz/gui/GLinePanel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/hz/test/ui/TestList;->listTable:[[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 87
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 88
    return-object v2

    .line 84
    :cond_0
    sget-object v3, Lcom/hz/test/ui/TestList;->listTable:[[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, v5}, Lcom/hz/test/ui/TestList;->getLinePanel([Ljava/lang/String;Z)Lcom/hz/gui/GLinePanel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    nop

    :array_0
    .array-data 4
        0xf5e2a9
        0xf4e8b5
    .end array-data
.end method
