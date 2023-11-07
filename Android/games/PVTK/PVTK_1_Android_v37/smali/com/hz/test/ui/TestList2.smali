.class public Lcom/hz/test/ui/TestList2;
.super Ljava/lang/Object;
.source "TestList2.java"


# static fields
.field public static final COL_ID:I = 0x0

.field public static final COL_KILL_NUM:I = 0x2

.field public static final COL_NAME:I = 0x1

.field public static col:I

.field public static cornerSet:Lcom/hz/image/ImageSet;

.field public static final listTable:[[Ljava/lang/String;

.field public static final listTitle:[Ljava/lang/String;

.field public static titleHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-array v0, v7, [Ljava/lang/String;

    .line 23
    const-string v1, "\u6392\u540d"

    aput-object v1, v0, v4

    const-string v1, "\u73a9\u5bb6"

    aput-object v1, v0, v5

    const-string v1, "\u6740\u654c\u6570"

    aput-object v1, v0, v6

    .line 22
    sput-object v0, Lcom/hz/test/ui/TestList2;->listTitle:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 28
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "11"

    aput-object v2, v1, v4

    const-string v2, "\u73a9\u5bb6\u540d\u5b571"

    aput-object v2, v1, v5

    const-string v2, "100"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 29
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "12"

    aput-object v2, v1, v4

    const-string v2, "\u73a9\u5bb6\u540d\u5b572"

    aput-object v2, v1, v5

    const-string v2, "100"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 30
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "13"

    aput-object v2, v1, v4

    const-string v2, "\u73a9\u5bb6\u540d\u5b573"

    aput-object v2, v1, v5

    const-string v2, "100"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 31
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "14"

    aput-object v2, v1, v4

    const-string v2, "\u73a9\u5bb6\u540d\u5b574"

    aput-object v2, v1, v5

    const-string v2, "100"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 32
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "15"

    aput-object v3, v2, v4

    const-string v3, "\u73a9\u5bb6\u540d\u5b575"

    aput-object v3, v2, v5

    const-string v3, "100"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 33
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "18"

    aput-object v3, v2, v4

    const-string v3, "\u73a9\u5bb6\u540d\u5b576"

    aput-object v3, v2, v5

    const-string v3, "100"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lcom/hz/test/ui/TestList2;->listTable:[[Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/hz/test/ui/TestList2;->listTitle:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/hz/test/ui/TestList2;->col:I

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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

    .line 42
    const-string v3, "/common/"

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestList2;->cornerSet:Lcom/hz/image/ImageSet;

    .line 46
    new-instance v1, Lcom/hz/gui/GLinePanel;

    new-array v3, v8, [I

    invoke-direct {v1, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 47
    .local v1, "panel":Lcom/hz/gui/GLinePanel;
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v5, v5, v3, v4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 48
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 49
    const/16 v3, 0x200

    invoke-virtual {v1, v5, v3}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 52
    new-instance v0, Lcom/hz/gui/GLabel;

    new-array v3, v8, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 53
    .local v0, "label":Lcom/hz/gui/GLabel;
    const-string v3, "\u6392\u884c\u699c"

    const v4, 0xfae3c4

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 54
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    sget-object v4, Lcom/hz/test/ui/TestList2;->cornerSet:Lcom/hz/image/ImageSet;

    const/4 v5, 0x6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 56
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget-object v4, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 57
    invoke-virtual {v0}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v3

    sput v3, Lcom/hz/test/ui/TestList2;->titleHeight:I

    .line 58
    invoke-virtual {v1, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 60
    invoke-static {}, Lcom/hz/test/ui/TestList2;->getListWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 61
    .local v2, "window":Lcom/hz/gui/GWindow;
    invoke-virtual {v1, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 63
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 64
    invoke-virtual {v1}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 67
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 68
    return-void

    .line 54
    :array_0
    .array-data 4
        0x172f
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getLinePanel([Ljava/lang/String;ZI)Lcom/hz/gui/GLinePanel;
    .locals 11
    .param p0, "choice"    # [Ljava/lang/String;
    .param p1, "isTitle"    # Z
    .param p2, "panelWidth"    # I

    .prologue
    const v10, 0x214570

    const/16 v9, 0x28

    const/4 v8, 0x0

    .line 103
    new-array v5, v9, [I

    .line 111
    .local v5, "vmData":[I
    new-instance v3, Lcom/hz/gui/GLinePanel;

    invoke-direct {v3, v5}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 113
    .local v3, "line":Lcom/hz/gui/GLinePanel;
    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0xe8f6f7

    aput v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 114
    const/16 v6, 0x400

    invoke-virtual {v3, v8, v6}, Lcom/hz/gui/GLinePanel;->setHLayout(II)V

    .line 116
    const/4 v0, 0x2

    .line 117
    .local v0, "borderLeft":I
    invoke-virtual {v3, v8, v8, v0, v8}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 119
    sub-int/2addr p2, v0

    .line 121
    div-int/lit8 v4, p2, 0x3

    .line 122
    .local v4, "pieWidth":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "panelWidth ================================= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pieWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/common/Tool;->debug(Ljava/lang/Object;)V

    .line 125
    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v3, v6}, Lcom/hz/gui/GLinePanel;->setFocusColorTable([I)V

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-lt v1, v6, :cond_0

    .line 135
    return-object v3

    .line 130
    :cond_0
    new-instance v2, Lcom/hz/gui/GLabel;

    new-array v6, v9, [I

    invoke-direct {v2, v6}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 131
    .local v2, "label1":Lcom/hz/gui/GLabel;
    aget-object v6, p0, v1

    const/4 v7, 0x6

    invoke-virtual {v2, v6, v10, v10, v7}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 132
    sget-object v6, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v4, v6}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 133
    invoke-virtual {v3, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    nop

    :array_0
    .array-data 4
        0xe5dc86
        0xb08b44
    .end array-data
.end method

.method public static getListWindow()Lcom/hz/gui/GWindow;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 73
    const/16 v7, 0x28

    new-array v5, v7, [I

    .line 77
    .local v5, "panelData":[I
    new-instance v6, Lcom/hz/gui/GWindow;

    invoke-direct {v6, v5}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 78
    .local v6, "window":Lcom/hz/gui/GWindow;
    const/4 v7, 0x2

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 79
    new-array v7, v9, [I

    fill-array-data v7, :array_0

    sget-object v8, Lcom/hz/test/ui/TestList2;->cornerSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v6, v7, v8, v9}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 80
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 81
    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v9, Lcom/hz/test/ui/TestList2;->titleHeight:I

    sub-int/2addr v8, v9

    .line 80
    invoke-virtual {v6, v10, v10, v7, v8}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 82
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 83
    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v9, Lcom/hz/test/ui/TestList2;->titleHeight:I

    sub-int/2addr v8, v9

    .line 82
    invoke-virtual {v6, v7, v8}, Lcom/hz/gui/GWindow;->setMinSize(II)V

    .line 84
    const/4 v0, 0x3

    .line 85
    .local v0, "border":I
    const/4 v2, 0x6

    .line 86
    .local v2, "borderTop":I
    const/4 v1, 0x6

    .line 87
    .local v1, "borderLeft":I
    invoke-virtual {v6, v2, v0, v1, v0}, Lcom/hz/gui/GWindow;->setBorder(IIII)V

    .line 89
    invoke-virtual {v6}, Lcom/hz/gui/GWindow;->getW()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int v3, v7, v1

    .line 91
    .local v3, "getPanelWidth":I
    sget-object v7, Lcom/hz/test/ui/TestList2;->listTitle:[Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8, v3}, Lcom/hz/test/ui/TestList2;->getLinePanel([Ljava/lang/String;ZI)Lcom/hz/gui/GLinePanel;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 94
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v7, Lcom/hz/test/ui/TestList2;->listTable:[[Ljava/lang/String;

    array-length v7, v7

    if-lt v4, v7, :cond_0

    .line 98
    invoke-virtual {v6}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 99
    return-object v6

    .line 95
    :cond_0
    sget-object v7, Lcom/hz/test/ui/TestList2;->listTable:[[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {v7, v10, v3}, Lcom/hz/test/ui/TestList2;->getLinePanel([Ljava/lang/String;ZI)Lcom/hz/gui/GLinePanel;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :array_0
    .array-data 4
        0x70bcba
        0xb588c
        0x3ba9ce
        0xb588c
    .end array-data
.end method
