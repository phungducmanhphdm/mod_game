.class public Lcom/hz/test/ui/TestShop;
.super Ljava/lang/Object;
.source "TestShop.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestShop1()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x28

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 17
    new-array v4, v10, [I

    .line 18
    .local v4, "panelData":[I
    new-instance v3, Lcom/hz/gui/GLinePanel;

    invoke-direct {v3, v4}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 19
    .local v3, "linePanel":Lcom/hz/gui/GLinePanel;
    const/16 v5, 0x200

    invoke-virtual {v3, v9, v5}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 20
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v3, v7, v7, v5, v6}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 21
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v3, v5, v6}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 22
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-virtual {v3, v5, v11, v7}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 24
    new-array v2, v10, [I

    .line 25
    .local v2, "labelData":[I
    new-instance v1, Lcom/hz/gui/GLabel;

    invoke-direct {v1, v2}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 26
    .local v1, "label":Lcom/hz/gui/GLabel;
    const-string v5, "\u8d85\u503c\u7279\u5356"

    invoke-virtual {v1, v5, v7, v7, v9}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 29
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    .line 30
    .local v0, "colorTable":[I
    invoke-virtual {v1, v0, v11, v7}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 32
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v5, v5, -0x8

    sget-object v6, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 34
    invoke-virtual {v3, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 35
    invoke-static {}, Lcom/hz/test/ui/TestShop;->initIconGroupPanel()Lcom/hz/gui/GLinePanel;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 36
    invoke-virtual {v3}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 38
    invoke-virtual {v3}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 39
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 40
    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0xffffff
        0xffffff
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0xf79044
        0xffa894
    .end array-data
.end method

.method public static getIconGroupPanel(II[Lcom/hz/gui/GIcon;II)Lcom/hz/gui/GLinePanel;
    .locals 8
    .param p0, "rows"    # I
    .param p1, "cols"    # I
    .param p2, "icon"    # [Lcom/hz/gui/GIcon;
    .param p3, "disx"    # I
    .param p4, "disy"    # I

    .prologue
    const/4 v7, 0x0

    .line 63
    const/16 v5, 0x28

    new-array v2, v5, [I

    .line 64
    .local v2, "panelData":[I
    new-instance v1, Lcom/hz/gui/GLinePanel;

    invoke-direct {v1, v2}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 65
    .local v1, "linePanel":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v1, p0, p1}, Lcom/hz/gui/GLinePanel;->setGridLayout(II)V

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p2

    if-lt v0, v5, :cond_0

    .line 71
    aget-object v5, p2, v7

    invoke-virtual {v5}, Lcom/hz/gui/GIcon;->getW()I

    move-result v5

    mul-int/2addr v5, p1

    add-int/lit8 v6, p1, -0x1

    mul-int/2addr v6, p3

    add-int v4, v5, v6

    .line 72
    .local v4, "panelw":I
    aget-object v5, p2, v7

    invoke-virtual {v5}, Lcom/hz/gui/GIcon;->getH()I

    move-result v5

    mul-int/2addr v5, p0

    add-int/lit8 v6, p0, -0x1

    mul-int/2addr v6, p4

    add-int v3, v5, v6

    .line 74
    .local v3, "panelh":I
    invoke-virtual {v1, v7, v7, v4, v3}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 75
    invoke-virtual {v1, v4, v3}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 76
    invoke-virtual {v1, v4, v3}, Lcom/hz/gui/GLinePanel;->setMaxSize(II)V

    .line 78
    return-object v1

    .line 69
    .end local v3    # "panelh":I
    .end local v4    # "panelw":I
    :cond_0
    aget-object v5, p2, v0

    invoke-virtual {v1, v5}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static initIconGroupPanel()Lcom/hz/gui/GLinePanel;
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 44
    const/16 v7, 0x24

    new-array v4, v7, [Lcom/hz/gui/GIcon;

    .line 45
    .local v4, "icon":[Lcom/hz/gui/GIcon;
    const-string v7, "/common/"

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v5

    .line 46
    .local v5, "imageSet":Lcom/hz/image/ImageSet;
    const/4 v7, 0x1

    new-array v0, v7, [I

    .line 47
    .local v0, "colorTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-lt v3, v7, :cond_0

    .line 56
    const/4 v7, 0x4

    const/16 v8, 0x9

    invoke-static {v7, v8, v4, v11, v11}, Lcom/hz/test/ui/TestShop;->getIconGroupPanel(II[Lcom/hz/gui/GIcon;II)Lcom/hz/gui/GLinePanel;

    move-result-object v6

    .line 58
    .local v6, "panel":Lcom/hz/gui/GLinePanel;
    return-object v6

    .line 49
    .end local v6    # "panel":Lcom/hz/gui/GLinePanel;
    :cond_0
    const/16 v7, 0x28

    new-array v1, v7, [I

    .line 50
    .local v1, "data":[I
    new-instance v2, Lcom/hz/gui/GIcon;

    invoke-direct {v2, v1}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 51
    .local v2, "gi":Lcom/hz/gui/GIcon;
    invoke-virtual {v2, v10, v10, v12, v12}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 52
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v9}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 53
    const/4 v7, 0x3

    invoke-virtual {v2, v5, v9, v9, v7}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 54
    aput-object v2, v4, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
