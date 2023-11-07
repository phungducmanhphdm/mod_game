.class public Lcom/hz/test/ui/TestGLabel;
.super Ljava/lang/Object;
.source "TestGLabel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestGLabel1()V
    .locals 14

    .prologue
    const v13, 0xd66f1b

    const/16 v12, 0x28

    const/16 v11, 0x14

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 22
    new-array v5, v12, [I

    .line 23
    .local v5, "panelData":[I
    new-instance v4, Lcom/hz/gui/GLinePanel;

    invoke-direct {v4, v5}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 24
    .local v4, "panel":Lcom/hz/gui/GLinePanel;
    const/16 v7, 0x8

    new-array v1, v7, [I

    const v7, 0xffcd64

    aput v7, v1, v9

    const/4 v7, 0x2

    const v8, 0xf5b036

    aput v8, v1, v7

    aput v13, v1, v10

    const/4 v7, 0x4

    .line 25
    const v8, 0xfffb85

    aput v8, v1, v7

    const/4 v7, 0x5

    aput v13, v1, v7

    const/4 v7, 0x6

    const v8, 0xf2ab1c

    aput v8, v1, v7

    const/4 v7, 0x7

    const v8, 0xf2ab1c

    aput v8, v1, v7

    .line 26
    .local v1, "colorTable":[I
    array-length v0, v1

    .line 27
    .local v0, "borderNun":I
    const-string v7, "/common/"

    const/16 v8, 0x3eb

    invoke-static {v7, v8}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v6

    .line 28
    .local v6, "panelSet":Lcom/hz/image/ImageSet;
    invoke-virtual {v4, v1, v6, v9}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 29
    invoke-virtual {v4, v0, v0, v0, v0}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 30
    const/16 v7, 0x74

    const/16 v8, 0xc8

    invoke-virtual {v4, v11, v11, v7, v8}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 31
    const/4 v7, 0x1

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 34
    new-array v3, v12, [I

    .line 35
    .local v3, "labelData":[I
    new-instance v2, Lcom/hz/gui/GLabel;

    invoke-direct {v2, v3}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 36
    .local v2, "label":Lcom/hz/gui/GLabel;
    const-string v7, "\u8bf7\u9009\u62e9:"

    invoke-virtual {v2, v7, v9, v9, v10}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 39
    invoke-virtual {v4, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 40
    invoke-static {}, Lcom/hz/test/ui/TestGLabel;->getLinePanel1()Lcom/hz/gui/GLinePanel;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 41
    invoke-virtual {v4}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 42
    invoke-virtual {v4}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 43
    invoke-static {v4}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 46
    return-void
.end method

.method public static getLinePanel1()Lcom/hz/gui/GLinePanel;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/16 v13, 0x28

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    new-array v6, v13, [I

    .line 52
    .local v6, "panelData":[I
    new-instance v5, Lcom/hz/gui/GLinePanel;

    invoke-direct {v5, v6}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 53
    .local v5, "panel":Lcom/hz/gui/GLinePanel;
    new-array v1, v11, [I

    const v8, 0xf8ebc4

    aput v8, v1, v10

    .line 54
    .local v1, "colorTable":[I
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, v10}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 58
    new-instance v3, Lcom/hz/gui/GScrollBar;

    new-array v8, v13, [I

    invoke-direct {v3, v8}, Lcom/hz/gui/GScrollBar;-><init>([I)V

    .line 60
    .local v3, "gsb":Lcom/hz/gui/GScrollBar;
    invoke-virtual {v3, v12}, Lcom/hz/gui/GScrollBar;->setAlign(I)V

    .line 62
    invoke-virtual {v3, v10, v11}, Lcom/hz/gui/GScrollBar;->setOffsetXY(II)V

    .line 64
    invoke-virtual {v5, v3}, Lcom/hz/gui/GLinePanel;->addScrollBar(Lcom/hz/gui/GScrollBar;)V

    .line 66
    invoke-virtual {v5, v12, v12, v11, v11}, Lcom/hz/gui/GLinePanel;->setBorder(IIII)V

    .line 68
    const/16 v8, 0x64

    const/16 v9, 0x96

    invoke-virtual {v5, v8, v9}, Lcom/hz/gui/GLinePanel;->setMaxSize(II)V

    .line 70
    const/16 v8, 0x200

    invoke-virtual {v5, v11, v8}, Lcom/hz/gui/GLinePanel;->setVLayout(II)V

    .line 72
    const/16 v8, 0xb

    new-array v0, v8, [Ljava/lang/String;

    .line 73
    const-string v8, "\u5145\u503c\u83dc\u5355"

    aput-object v8, v0, v10

    .line 74
    const-string v8, "\u4eba\u7269\u88c5\u5907"

    aput-object v8, v0, v11

    .line 75
    const-string v8, "\u6280\u80fd\u5217\u8868"

    aput-object v8, v0, v12

    .line 76
    const-string v8, "\u56fd\u5bb6\u5217\u8868"

    aput-object v8, v0, v14

    const/4 v8, 0x4

    .line 77
    const-string v9, "\u4efb\u52a1\u4fe1\u606f"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    .line 78
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    .line 79
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    .line 80
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    .line 81
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    .line 82
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    .line 83
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    .line 87
    .local v0, "choices":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v0

    if-lt v4, v8, :cond_1

    .line 105
    invoke-virtual {v5}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 107
    iget-boolean v8, v5, Lcom/hz/gui/GLinePanel;->needScrollBar:Z

    if-eqz v8, :cond_0

    .line 109
    invoke-virtual {v5}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v5}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/hz/gui/GLinePanel;->setSize(II)V

    .line 110
    invoke-virtual {v5}, Lcom/hz/gui/GLinePanel;->align()V

    .line 113
    :cond_0
    return-object v5

    .line 89
    :cond_1
    new-array v7, v13, [I

    .line 90
    .local v7, "vmData":[I
    new-instance v2, Lcom/hz/gui/GLabel;

    invoke-direct {v2, v7}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 92
    .local v2, "glabel":Lcom/hz/gui/GLabel;
    const/16 v8, 0x50

    const/16 v9, 0x14

    invoke-virtual {v2, v10, v10, v8, v9}, Lcom/hz/gui/GLabel;->setBounds(IIII)V

    .line 93
    invoke-virtual {v2, v11, v11, v12, v12}, Lcom/hz/gui/GLabel;->setBorder(IIII)V

    .line 97
    aget-object v8, v0, v4

    const/16 v9, 0xff

    invoke-virtual {v2, v8, v10, v9, v14}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 98
    new-array v8, v12, [I

    fill-array-data v8, :array_0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v10}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 100
    const/16 v8, 0x64

    const/16 v9, 0x14

    invoke-virtual {v2, v8, v9}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 102
    invoke-virtual {v5, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    nop

    :array_0
    .array-data 4
        0xe8d195
        0xfaffe4
    .end array-data
.end method

.method public static testGLabel2()Lcom/hz/gui/GLinePanel;
    .locals 12

    .prologue
    .line 119
    const/16 v8, 0x28

    new-array v5, v8, [I

    .line 125
    .local v5, "panelData":[I
    new-instance v4, Lcom/hz/gui/GWindow;

    invoke-direct {v4, v5}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 126
    .local v4, "panel":Lcom/hz/gui/GWindow;
    const/4 v8, 0x3

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .line 127
    .local v1, "colorTable":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v9}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 128
    const/16 v8, 0x14

    const/16 v9, 0x14

    const/16 v10, 0x64

    const/16 v11, 0xa0

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 130
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/hz/gui/GScrollBar;->getScrollBar(IIII)Lcom/hz/gui/GScrollBar;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/hz/gui/GWindow;->addScrollBar(Lcom/hz/gui/GScrollBar;)V

    .line 132
    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    const/16 v11, 0x11

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/hz/gui/GWindow;->setBorder(IIII)V

    .line 133
    const/16 v8, 0x96

    const/16 v9, 0x96

    invoke-virtual {v4, v8, v9}, Lcom/hz/gui/GWindow;->setMaxSize(II)V

    .line 135
    const/4 v8, 0x1

    const/16 v9, 0x200

    invoke-virtual {v4, v8, v9}, Lcom/hz/gui/GWindow;->setVLayout(II)V

    .line 137
    const/16 v8, 0xf

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 138
    const-string v9, "\u5145\u503c\u83dc\u5355"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    .line 139
    const-string v9, "\u4eba\u7269\u88c5\u5907"

    aput-object v9, v0, v8

    const/4 v8, 0x2

    .line 140
    const-string v9, "\u6280\u80fd\u5217\u8868"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    .line 141
    const-string v9, "\u56fd\u5bb6\u5217\u8868"

    aput-object v9, v0, v8

    const/4 v8, 0x4

    .line 142
    const-string v9, "\u4efb\u52a1\u4fe1\u606f"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    .line 143
    const-string v9, "\u7cfb\u7edf\u4fe1\u606f"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    .line 144
    const-string v9, "\u6d4b\u8bd5\u83dc1"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    .line 145
    const-string v9, "\u6d4b\u8bd5\u83dc2"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    .line 146
    const-string v9, "\u6d4b\u8bd5\u83dc3"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    .line 147
    const-string v9, "\u6d4b\u8bd5\u83dc4"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    .line 148
    const-string v9, "\u6d4b\u8bd5\u83dc4"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    .line 149
    const-string v9, "\u6d4b\u8bd5\u83dc4"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    .line 150
    const-string v9, "\u6d4b\u8bd5\u83dc4"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    .line 151
    const-string v9, "\u6d4b\u8bd5\u83dc4"

    aput-object v9, v0, v8

    const/16 v8, 0xe

    .line 152
    const-string v9, "\u6d4b\u8bd5\u83dc4"

    aput-object v9, v0, v8

    .line 156
    .local v0, "choices":[Ljava/lang/String;
    const/4 v8, 0x3

    new-array v6, v8, [I

    const/4 v8, 0x0

    const v9, 0xffff00

    aput v9, v6, v8

    const/4 v8, 0x2

    const v9, 0xffffff

    aput v9, v6, v8

    .line 157
    .local v6, "selectTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-lt v3, v8, :cond_0

    .line 181
    invoke-virtual {v4}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 182
    invoke-virtual {v4}, Lcom/hz/gui/GWindow;->layout()V

    .line 183
    invoke-virtual {v4}, Lcom/hz/gui/GWindow;->setAbs()V

    .line 185
    invoke-static {v4}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 188
    return-object v4

    .line 159
    :cond_0
    const/16 v8, 0x28

    new-array v7, v8, [I

    .line 166
    .local v7, "vmData":[I
    new-instance v2, Lcom/hz/gui/GLabel;

    invoke-direct {v2, v7}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 167
    .local v2, "glabel":Lcom/hz/gui/GLabel;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x50

    const/16 v11, 0x14

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/hz/gui/GLabel;->setBounds(IIII)V

    .line 168
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/hz/gui/GLabel;->setBorder(IIII)V

    .line 169
    invoke-virtual {v2, v6}, Lcom/hz/gui/GLabel;->setFocusColorTable([I)V

    .line 171
    aget-object v8, v0, v3

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x3

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 173
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 175
    const/16 v8, 0x64

    invoke-virtual {v2}, Lcom/hz/gui/GLabel;->getMinH()I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    invoke-virtual {v2, v8, v9}, Lcom/hz/gui/GLabel;->setMinSize(II)V

    .line 177
    invoke-virtual {v4, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :array_0
    .array-data 4
        0xf8ebc4
        0xffcd64
        0x873653
    .end array-data

    .line 173
    :array_1
    .array-data 4
        0x87d87f
        0xca7347
    .end array-data
.end method
