.class public Lcom/hz/test/ui/TestTextArea;
.super Ljava/lang/Object;
.source "TestTextArea.java"


# static fields
.field public static border:[I

.field public static maxHeight:I

.field public static maxWidth:I

.field public static text:Ljava/lang/String;

.field public static title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 17
    const-string v0, "\u65b0\u624b\u4efb\u52a1"

    sput-object v0, Lcom/hz/test/ui/TestTextArea;->title:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5730\u65b9\u6492\u521a/cff0000{}\u6253\u7b97\u5c06/f01\u79bb\u5f00\u7518\u8083\u7701/f02"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/hz/string/PowerString;->makeItemIconString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/p/c0000ff\u624b\u672f\u5ba4\u65f6\u9e45\u9e45\u9e45\u9e45\u9e45/p\u9e45\u6211\u4e86\u89e3\u8303"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hz/test/ui/TestTextArea;->text:Ljava/lang/String;

    .line 20
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/hz/test/ui/TestTextArea;->maxWidth:I

    .line 21
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/hz/test/ui/TestTextArea;->maxHeight:I

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v2, v0, v3

    aput v4, v0, v2

    const/4 v1, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/hz/test/ui/TestTextArea;->border:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestTextArea1()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/hz/test/ui/TestTextArea;->getTextPanel()Lcom/hz/gui/GTextArea;

    move-result-object v0

    .line 26
    .local v0, "panel":Lcom/hz/gui/GTextArea;
    invoke-virtual {v0}, Lcom/hz/gui/GTextArea;->layout()V

    .line 27
    invoke-virtual {v0}, Lcom/hz/gui/GTextArea;->setAbs()V

    .line 28
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 29
    return-void
.end method

.method public static TestTextArea2()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x28

    const/4 v2, 0x0

    .line 61
    new-instance v10, Lcom/hz/gui/GWindow;

    new-array v3, v5, [I

    invoke-direct {v10, v3}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 62
    .local v10, "window":Lcom/hz/gui/GWindow;
    const/4 v3, 0x1

    const/16 v4, 0x200

    invoke-virtual {v10, v3, v4}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 63
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v10, v3, v6, v2}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 65
    invoke-static {}, Lcom/hz/test/ui/TestTextArea;->getTextPanel()Lcom/hz/gui/GTextArea;

    move-result-object v9

    .line 66
    .local v9, "panel":Lcom/hz/gui/GTextArea;
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/hz/gui/GTextArea;->curPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/hz/gui/GTextArea;->totalPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "page":Ljava/lang/String;
    new-instance v7, Lcom/hz/gui/GLabel;

    new-array v3, v5, [I

    invoke-direct {v7, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 69
    .local v7, "label":Lcom/hz/gui/GLabel;
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v7, v3, v6, v2}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 70
    sget-object v3, Lcom/hz/test/ui/TestTextArea;->title:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v7, v3, v2, v2, v4}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 71
    invoke-virtual {v9}, Lcom/hz/gui/GTextArea;->getW()I

    move-result v3

    sget-object v4, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v4

    invoke-virtual {v7, v3, v4}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 74
    const-string v3, "/common/"

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    .line 75
    .local v1, "numSet":Lcom/hz/image/ImageSet;
    new-instance v0, Lcom/hz/gui/GImageNumer;

    new-array v3, v5, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 76
    .local v0, "gNum":Lcom/hz/gui/GImageNumer;
    const/16 v6, 0x14

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;ZIIII)V

    .line 77
    invoke-virtual {v0, v8}, Lcom/hz/gui/GImageNumer;->setNumerString(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/hz/gui/GImageNumer;->getNumWidth()I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/hz/gui/GImageNumer;->setMinSize(II)V

    .line 80
    invoke-virtual {v10, v7}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 81
    invoke-virtual {v10, v9}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 82
    invoke-virtual {v10, v0}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 83
    invoke-virtual {v10}, Lcom/hz/gui/GWindow;->layout()V

    .line 84
    invoke-virtual {v10}, Lcom/hz/gui/GWindow;->setAbs()V

    .line 85
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    invoke-virtual {v10}, Lcom/hz/gui/GWindow;->getW()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 86
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v10}, Lcom/hz/gui/GWindow;->getH()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 85
    invoke-virtual {v10, v2, v3}, Lcom/hz/gui/GWindow;->setPos(II)V

    .line 87
    invoke-static {v10}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 88
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0xad4619
        0xed612e
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0xf79044
        0xffa894
        0xffd77f
        0xed621e
    .end array-data
.end method

.method public static getTextPanel()Lcom/hz/gui/GTextArea;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 40
    sget-object v4, Lcom/hz/test/ui/TestTextArea;->text:Ljava/lang/String;

    sget-object v5, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    sget v6, Lcom/hz/test/ui/TestTextArea;->maxWidth:I

    sget-object v7, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v7, v7, v9

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v1

    .line 41
    .local v1, "lines":[Lcom/hz/string/PowerString;
    sget v3, Lcom/hz/test/ui/TestTextArea;->maxWidth:I

    .line 42
    .local v3, "width":I
    sget v0, Lcom/hz/test/ui/TestTextArea;->maxHeight:I

    .line 43
    .local v0, "height":I
    array-length v4, v1

    if-gt v4, v9, :cond_0

    .line 45
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v3, v4, 0x2

    .line 46
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v4, 0x2

    .line 49
    :cond_0
    new-instance v2, Lcom/hz/gui/GTextArea;

    const/16 v4, 0x28

    new-array v4, v4, [I

    invoke-direct {v2, v4}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 50
    .local v2, "ta":Lcom/hz/gui/GTextArea;
    sget-object v4, Lcom/hz/test/ui/TestTextArea;->text:Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;I)V

    .line 51
    sget-object v4, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v4, v4, v8

    sget-object v5, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v5, v5, v10

    sget-object v6, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v6, v6, v9

    sget-object v7, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v7, v7, v11

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/hz/gui/GTextArea;->setBorder(IIII)V

    .line 52
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v8}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 53
    invoke-virtual {v2, v8, v8, v3, v0}, Lcom/hz/gui/GTextArea;->setBounds(IIII)V

    .line 54
    invoke-virtual {v2}, Lcom/hz/gui/GTextArea;->getW()I

    move-result v4

    sget-object v5, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    sget-object v5, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v5, v5, v11

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/hz/gui/GTextArea;->getH()I

    move-result v5

    sget-object v6, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    sget-object v6, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v6, v6, v10

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/hz/gui/GTextArea;->setMinSize(II)V

    .line 55
    invoke-virtual {v2, v3, v0}, Lcom/hz/gui/GTextArea;->setMaxSize(II)V

    .line 56
    return-object v2

    .line 52
    nop

    :array_0
    .array-data 4
        0xf5e2a9
        0xad4619
        0xf4e8b5
        0xf2f0d1
    .end array-data
.end method

.method public static getTextPanel2(II)Lcom/hz/gui/GTextArea;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 93
    new-instance v0, Lcom/hz/gui/GTextArea;

    const/16 v1, 0x28

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 94
    .local v0, "ta":Lcom/hz/gui/GTextArea;
    sget-object v1, Lcom/hz/test/ui/TestTextArea;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;I)V

    .line 95
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 96
    const/16 v1, 0x200

    invoke-virtual {v0, v4, v1}, Lcom/hz/gui/GTextArea;->setVLayout(II)V

    .line 97
    sget-object v1, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v1, v1, v6

    sget-object v2, Lcom/hz/test/ui/TestTextArea;->border:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestTextArea;->border:[I

    aget v3, v3, v4

    sget-object v4, Lcom/hz/test/ui/TestTextArea;->border:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GTextArea;->setBorder(IIII)V

    .line 98
    invoke-virtual {v0, v6, v6, p0, p1}, Lcom/hz/gui/GTextArea;->setBounds(IIII)V

    .line 99
    invoke-virtual {v0, p0, p1}, Lcom/hz/gui/GTextArea;->setMinSize(II)V

    .line 100
    invoke-virtual {v0, p0, p1}, Lcom/hz/gui/GTextArea;->setMaxSize(II)V

    .line 103
    return-object v0

    .line 95
    :array_0
    .array-data 4
        0xf5e2a9
        0xad4619
        0xf4e8b5
        0xf2f0d1
    .end array-data
.end method
