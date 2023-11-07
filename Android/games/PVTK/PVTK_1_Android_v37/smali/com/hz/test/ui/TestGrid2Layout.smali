.class public Lcom/hz/test/ui/TestGrid2Layout;
.super Ljava/lang/Object;
.source "TestGrid2Layout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestShop1()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x28

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 19
    new-array v6, v12, [I

    .line 20
    .local v6, "panelData":[I
    new-instance v5, Lcom/hz/gui/GLinePanel;

    invoke-direct {v5, v6}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 21
    .local v5, "linePanel":Lcom/hz/gui/GLinePanel;
    const/16 v7, 0x200

    invoke-virtual {v5, v11, v7}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 22
    invoke-virtual {v5, v10, v9, v9, v9}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 23
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v5, v9, v9, v7, v8}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 24
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v5, v7, v8}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 25
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {v5, v7, v8}, Lcom/hz/gui/GLinePanel;->setMaxSize(II)V

    .line 26
    new-array v7, v10, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5, v7, v13, v9}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 28
    new-array v4, v12, [I

    .line 29
    .local v4, "labelData":[I
    new-instance v3, Lcom/hz/gui/GLabel;

    invoke-direct {v3, v4}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 30
    .local v3, "label":Lcom/hz/gui/GLabel;
    const-string v7, "\u8d85\u503c\u7279\u5356"

    invoke-virtual {v3, v7, v9, v9, v11}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 33
    new-array v0, v10, [I

    fill-array-data v0, :array_1

    .line 34
    .local v0, "colorTable":[I
    invoke-virtual {v3, v0, v13, v9}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 37
    sget v7, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v7, v7, -0x6

    sget-object v8, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 39
    invoke-virtual {v5, v3}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 41
    invoke-static {}, Lcom/hz/test/ui/TestGrid2Layout;->initIconGroupPanel()Lcom/hz/gui/GLinePanel;

    move-result-object v1

    .line 42
    .local v1, "iconListPanel":Lcom/hz/gui/GLinePanel;
    invoke-static {}, Lcom/hz/test/ui/TestGrid2Layout;->initIconGroupPanel2()Lcom/hz/gui/GLinePanel;

    move-result-object v2

    .line 44
    .local v2, "iconListPanel2":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v5, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 45
    invoke-virtual {v5, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 46
    invoke-virtual {v5}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 48
    invoke-virtual {v5}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 49
    invoke-static {v5}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 50
    return-void

    .line 26
    :array_0
    .array-data 4
        0xad4619
        0xad4619
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0xf79044
        0xffa894
    .end array-data
.end method

.method public static getIconGroupPanel(II[Lcom/hz/gui/GIcon;II[I)Lcom/hz/gui/GLinePanel;
    .locals 7
    .param p0, "panelw"    # I
    .param p1, "panelh"    # I
    .param p2, "icon"    # [Lcom/hz/gui/GIcon;
    .param p3, "disx"    # I
    .param p4, "disy"    # I
    .param p5, "colorTabel"    # [I

    .prologue
    const/4 v6, 0x0

    .line 148
    const/16 v3, 0x28

    new-array v2, v3, [I

    .line 154
    .local v2, "panelData":[I
    new-instance v1, Lcom/hz/gui/GWindow;

    invoke-direct {v1, v2}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 156
    .local v1, "linePanel":Lcom/hz/gui/GWindow;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->getJavaID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",========================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v1, p5, v3, v6}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 159
    invoke-virtual {v1, v6, v6, p0, p1}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 160
    invoke-virtual {v1, p0, p1}, Lcom/hz/gui/GWindow;->setMinSize(II)V

    .line 161
    invoke-virtual {v1, p0, p1}, Lcom/hz/gui/GWindow;->setMaxSize(II)V

    .line 163
    aget-object v3, p2, v6

    invoke-virtual {v3}, Lcom/hz/gui/GIcon;->getW()I

    move-result v3

    aget-object v4, p2, v6

    invoke-virtual {v4}, Lcom/hz/gui/GIcon;->getH()I

    move-result v4

    invoke-virtual {v1, p3, p4, v3, v4}, Lcom/hz/gui/GWindow;->setGrid2Layout(IIII)V

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 170
    return-object v1

    .line 166
    :cond_0
    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static initIconGroupPanel()Lcom/hz/gui/GLinePanel;
    .locals 16

    .prologue
    .line 54
    const/16 v0, 0x24

    new-array v2, v0, [Lcom/hz/gui/GIcon;

    .line 55
    .local v2, "icon":[Lcom/hz/gui/GIcon;
    const-string v0, "/common/"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v10

    .line 56
    .local v10, "imageSet":Lcom/hz/image/ImageSet;
    const/4 v0, 0x4

    new-array v6, v0, [I

    const/4 v0, 0x1

    const v1, 0x123456

    aput v1, v6, v0

    const/4 v0, 0x2

    const v1, 0x236543

    aput v1, v6, v0

    const/4 v0, 0x3

    const v1, 0x888888

    aput v1, v6, v0

    .line 57
    .local v6, "colorTable":[I
    const/4 v0, 0x4

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    .line 58
    .local v14, "selectColorTable":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-lt v9, v0, :cond_0

    .line 79
    new-instance v11, Lcom/hz/gui/GLabel;

    const/16 v0, 0x28

    new-array v0, v0, [I

    invoke-direct {v11, v0}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 80
    .local v11, "label":Lcom/hz/gui/GLabel;
    const-string v15, "\u82f1\u96c4\u8981\u4e70\u70b9\u4ec0\u4e48\uff1f"

    .line 81
    .local v15, "textLabel":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v11, v15, v0, v1, v3}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 82
    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, v15}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 84
    const/16 v0, 0xd6

    const/16 v1, 0x5e

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/hz/test/ui/TestGrid2Layout;->getIconGroupPanel(II[Lcom/hz/gui/GIcon;II[I)Lcom/hz/gui/GLinePanel;

    move-result-object v12

    .line 85
    .local v12, "panel":Lcom/hz/gui/GLinePanel;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/hz/gui/GLinePanel;->getJavaID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", panel.getW()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",panel.getH() ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    new-instance v13, Lcom/hz/gui/GLinePanel;

    const/16 v0, 0x28

    new-array v0, v0, [I

    invoke-direct {v13, v0}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 88
    .local v13, "panel1":Lcom/hz/gui/GLinePanel;
    const/4 v0, 0x2

    const/16 v1, 0x200

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v1, v3}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v3, 0xea

    const/16 v4, 0x7b

    invoke-virtual {v13, v0, v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 91
    const/16 v0, 0xea

    const/16 v1, 0x7b

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 92
    const/16 v0, 0xea

    const/16 v1, 0x7b

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GLinePanel;->setMaxSize(II)V

    .line 93
    invoke-virtual {v13, v11}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 94
    invoke-virtual {v13, v12}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 96
    return-object v13

    .line 60
    .end local v11    # "label":Lcom/hz/gui/GLabel;
    .end local v12    # "panel":Lcom/hz/gui/GLinePanel;
    .end local v13    # "panel1":Lcom/hz/gui/GLinePanel;
    .end local v15    # "textLabel":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x28

    new-array v7, v0, [I

    .line 65
    .local v7, "data":[I
    new-instance v8, Lcom/hz/gui/GIcon;

    invoke-direct {v8, v7}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 66
    .local v8, "gi":Lcom/hz/gui/GIcon;
    invoke-virtual {v8, v14}, Lcom/hz/gui/GIcon;->setFocusColorTable([I)V

    .line 67
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-virtual {v8, v0, v1, v3, v4}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 68
    const/16 v0, 0x14

    if-ge v9, v0, :cond_1

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v6, v0, v1}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v8, v10, v0, v1, v3}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 76
    :goto_1
    aput-object v8, v2, v9

    .line 58
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v6, v0, v1}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v8, v0, v1, v3, v4}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto :goto_1

    .line 57
    nop

    :array_0
    .array-data 4
        -0x1
        0xff0000
        0xff0000
        0xff0000
    .end array-data

    .line 89
    :array_1
    .array-data 4
        0xf5e2a9
        0xf2f0d1
    .end array-data
.end method

.method public static initIconGroupPanel2()Lcom/hz/gui/GLinePanel;
    .locals 16

    .prologue
    .line 101
    const/16 v0, 0x28

    new-array v2, v0, [Lcom/hz/gui/GIcon;

    .line 102
    .local v2, "icon":[Lcom/hz/gui/GIcon;
    const-string v0, "/common/"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v10

    .line 103
    .local v10, "imageSet":Lcom/hz/image/ImageSet;
    const/4 v0, 0x4

    new-array v6, v0, [I

    const/4 v0, 0x1

    const v1, 0x123456

    aput v1, v6, v0

    const/4 v0, 0x2

    const v1, 0x236543

    aput v1, v6, v0

    const/4 v0, 0x3

    const v1, 0x888888

    aput v1, v6, v0

    .line 104
    .local v6, "colorTable":[I
    const/4 v0, 0x4

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    .line 105
    .local v14, "selectColorTable":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-lt v9, v0, :cond_0

    .line 126
    new-instance v11, Lcom/hz/gui/GLabel;

    const/16 v0, 0x28

    new-array v0, v0, [I

    invoke-direct {v11, v0}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 127
    .local v11, "label":Lcom/hz/gui/GLabel;
    const-string v15, "\uff08\u80cc\u530527/40\uff09"

    .line 128
    .local v15, "textLabel":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v11, v15, v0, v1, v3}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 129
    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, v15}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 131
    const/16 v0, 0xd6

    const/16 v1, 0x5e

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/hz/test/ui/TestGrid2Layout;->getIconGroupPanel(II[Lcom/hz/gui/GIcon;II[I)Lcom/hz/gui/GLinePanel;

    move-result-object v12

    .line 133
    .local v12, "panel":Lcom/hz/gui/GLinePanel;
    new-instance v13, Lcom/hz/gui/GLinePanel;

    const/16 v0, 0x28

    new-array v0, v0, [I

    invoke-direct {v13, v0}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 134
    .local v13, "panel1":Lcom/hz/gui/GLinePanel;
    const/4 v0, 0x2

    const/16 v1, 0x200

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v1, v3}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v3, 0xea

    const/16 v4, 0x7b

    invoke-virtual {v13, v0, v1, v3, v4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 137
    const/16 v0, 0xea

    const/16 v1, 0x7b

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GLinePanel;->setMinSize(II)V

    .line 138
    const/16 v0, 0xea

    const/16 v1, 0x7b

    invoke-virtual {v13, v0, v1}, Lcom/hz/gui/GLinePanel;->setMaxSize(II)V

    .line 139
    invoke-virtual {v13, v11}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 140
    invoke-virtual {v13, v12}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 142
    return-object v13

    .line 107
    .end local v11    # "label":Lcom/hz/gui/GLabel;
    .end local v12    # "panel":Lcom/hz/gui/GLinePanel;
    .end local v13    # "panel1":Lcom/hz/gui/GLinePanel;
    .end local v15    # "textLabel":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x28

    new-array v7, v0, [I

    .line 112
    .local v7, "data":[I
    new-instance v8, Lcom/hz/gui/GIcon;

    invoke-direct {v8, v7}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 113
    .local v8, "gi":Lcom/hz/gui/GIcon;
    invoke-virtual {v8, v14}, Lcom/hz/gui/GIcon;->setFocusColorTable([I)V

    .line 114
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-virtual {v8, v0, v1, v3, v4}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 115
    const/16 v0, 0x14

    if-ge v9, v0, :cond_1

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v6, v0, v1}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v8, v10, v0, v1, v3}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 123
    :goto_1
    aput-object v8, v2, v9

    .line 105
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v6, v0, v1}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v8, v0, v1, v3, v4}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto :goto_1

    .line 104
    nop

    :array_0
    .array-data 4
        -0x1
        0xff0000
        0xff0000
        0xff0000
    .end array-data

    .line 135
    :array_1
    .array-data 4
        0xf5e2a9
        0xf2f0d1
    .end array-data
.end method
