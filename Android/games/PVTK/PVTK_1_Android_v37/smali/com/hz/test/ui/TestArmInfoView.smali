.class public Lcom/hz/test/ui/TestArmInfoView;
.super Ljava/lang/Object;
.source "TestArmInfoView.java"


# static fields
.field static WINDOW_HEIGHT:I

.field static WINDOW_WIDTH:I

.field static armDetail:Ljava/lang/String;

.field static armInfo:Ljava/lang/String;

.field static attrSet1:Lcom/hz/image/ImageSet;

.field static attrSet2:Lcom/hz/image/ImageSet;

.field static buttomName:[Ljava/lang/String;

.field static currentPage:I

.field static fontHeight:I

.field static personSet:Lcom/hz/image/ImageSet;

.field static totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 20
    const/16 v0, 0xf0

    sput v0, Lcom/hz/test/ui/TestArmInfoView;->WINDOW_WIDTH:I

    .line 21
    const/16 v0, 0x140

    sput v0, Lcom/hz/test/ui/TestArmInfoView;->WINDOW_HEIGHT:I

    .line 23
    const/16 v0, 0xc

    sput v0, Lcom/hz/test/ui/TestArmInfoView;->fontHeight:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2, v2, v3}, Lcom/hz/string/PowerString;->makeItemIconString(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u7834\u574f\u957f\u5251(\u5df2\u7ed1\u5b9a)\n\u4f20\u8bf4\u4e2d\u7684\u795e\u5251\uff0c\u65e0\u575a\u4e0d\u6467!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hz/test/ui/TestArmInfoView;->armInfo:Ljava/lang/String;

    .line 29
    const-string v0, "\u79cd\u7c7b\uff1a\u957f\u5251(\u5355\u624b)\n\u653b\u51fb\u529b:20 - 40     \u547d\u4e2d: 240\n\u5b9d\u77f3\u9576\u5d4c:7/20     \u529b\u91cf: +50\n\u6548\u679c1\uff1a\u654f\u6377+5\n\u6548\u679c2\uff1a\u51fa\u624b\u901f\u5ea6+20"

    sput-object v0, Lcom/hz/test/ui/TestArmInfoView;->armDetail:Ljava/lang/String;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u88c5\u5907"

    aput-object v1, v0, v3

    const-string v1, "\u5b9d\u77f3\u9576\u5d4c"

    aput-object v1, v0, v4

    const-string v1, "\u4e22\u5f03"

    aput-object v1, v0, v2

    const-string v1, "\u88c5\u5907\u6bd4\u8f83"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "\u79fb\u52a8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hz/test/ui/TestArmInfoView;->buttomName:[Ljava/lang/String;

    .line 35
    sput v4, Lcom/hz/test/ui/TestArmInfoView;->currentPage:I

    .line 36
    sput v5, Lcom/hz/test/ui/TestArmInfoView;->totalPage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestArmInfoView1()V
    .locals 7

    .prologue
    .line 39
    const-string v3, "/common/"

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestArmInfoView;->attrSet1:Lcom/hz/image/ImageSet;

    .line 40
    const-string v3, "/common/"

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestArmInfoView;->attrSet2:Lcom/hz/image/ImageSet;

    .line 41
    const-string v3, "/common/"

    const/16 v4, 0x66

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    sput-object v3, Lcom/hz/test/ui/TestArmInfoView;->personSet:Lcom/hz/image/ImageSet;

    .line 42
    new-instance v0, Lcom/hz/gui/GWindow;

    const/16 v3, 0x28

    new-array v3, v3, [I

    invoke-direct {v0, v3}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 43
    .local v0, "baseWin":Lcom/hz/gui/GWindow;
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v4, Lcom/hz/test/ui/TestArmInfoView;->WINDOW_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 44
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v5, Lcom/hz/test/ui/TestArmInfoView;->WINDOW_HEIGHT:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 45
    sget v5, Lcom/hz/test/ui/TestArmInfoView;->WINDOW_WIDTH:I

    sget v6, Lcom/hz/test/ui/TestArmInfoView;->WINDOW_HEIGHT:I

    .line 43
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 46
    invoke-static {}, Lcom/hz/test/ui/TestArmInfoView;->getTopWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 48
    .local v2, "window1":Lcom/hz/gui/GWindow;
    sget-object v3, Lcom/hz/test/ui/TestArmInfoView;->buttomName:[Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/test/ui/TestArmInfoView;->getButtomGroup([Ljava/lang/String;)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 49
    .local v1, "buttomWin":Lcom/hz/gui/GWindow;
    const/16 v3, 0x9

    const/16 v4, 0xf7

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GWindow;->setPos(II)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 53
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->layout()V

    .line 54
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->setAbs()V

    .line 55
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 56
    return-void
.end method

.method public static getButtomGroup([Ljava/lang/String;)Lcom/hz/gui/GWindow;
    .locals 21
    .param p0, "buttomName"    # [Ljava/lang/String;

    .prologue
    .line 156
    const/4 v6, 0x3

    .line 157
    .local v6, "cols":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    div-int v10, v17, v6

    .line 158
    .local v10, "rows":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    rem-int v17, v17, v6

    if-eqz v17, :cond_0

    .line 159
    add-int/lit8 v10, v10, 0x1

    .line 161
    :cond_0
    const/16 v5, 0x3c

    .local v5, "buttomW":I
    const/16 v4, 0x19

    .line 162
    .local v4, "buttomH":I
    const/16 v12, 0x15

    .local v12, "spaceW":I
    const/4 v11, 0x3

    .line 163
    .local v11, "spaceH":I
    const/16 v15, 0xde

    .line 164
    .local v15, "winW":I
    mul-int/lit8 v17, v10, 0x1c

    sub-int v14, v17, v11

    .line 165
    .local v14, "winH":I
    new-instance v16, Lcom/hz/gui/GWindow;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 166
    .local v16, "window":Lcom/hz/gui/GWindow;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 167
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v10, :cond_1

    .line 186
    return-object v16

    .line 169
    :cond_1
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-lt v8, v6, :cond_3

    .line 167
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 171
    :cond_3
    mul-int v17, v7, v6

    add-int v17, v17, v8

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 173
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 176
    .local v13, "vmData":[I
    new-instance v9, Lcom/hz/gui/GPixelLabel;

    sget v17, Lcom/hz/test/ui/TestArmInfoView;->fontHeight:I

    move/from16 v0, v17

    invoke-direct {v9, v13, v0}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 177
    .local v9, "pLabel":Lcom/hz/gui/GPixelLabel;
    mul-int v17, v6, v7

    add-int v17, v17, v8

    aget-object v17, p0, v17

    const v18, 0xfbf0c2

    const v19, 0xffffff

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 178
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 179
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/gui/GPixelLabel;->setFocusColorTable([I)V

    .line 180
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 181
    mul-int/lit8 v17, v8, 0x51

    mul-int/lit8 v18, v7, 0x1c

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1, v5, v4}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 169
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 178
    nop

    :array_0
    .array-data 4
        0x48cb0
        0x2734
    .end array-data

    .line 179
    :array_1
    .array-data 4
        0x85b912
        0x2734
    .end array-data

    .line 180
    :array_2
    .array-data 4
        0xaaf4d1
        0xbecc
        0x4a0b8
        0xceefa8
        0xa0e53e
        0x8dcd1e
    .end array-data
.end method

.method public static getLeftRightLabel()Lcom/hz/gui/GWindow;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/16 v10, 0x28

    .line 103
    new-instance v5, Lcom/hz/gui/GWindow;

    new-array v6, v10, [I

    invoke-direct {v5, v6}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 104
    .local v5, "window":Lcom/hz/gui/GWindow;
    const/16 v6, 0x3b

    const/16 v7, 0xc8

    const/16 v8, 0x70

    const/16 v9, 0x13

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 105
    const/16 v6, 0xa

    const/16 v7, 0x400

    invoke-virtual {v5, v6, v7}, Lcom/hz/gui/GWindow;->setHLayout(II)V

    .line 106
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 108
    new-array v3, v10, [I

    .line 111
    .local v3, "vmData":[I
    new-instance v0, Lcom/hz/gui/GIcon;

    invoke-direct {v0, v3}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 112
    .local v0, "iconLeft":Lcom/hz/gui/GIcon;
    sget-object v6, Lcom/hz/test/ui/TestArmInfoView;->attrSet2:Lcom/hz/image/ImageSet;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v13, v7, v11}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 113
    invoke-virtual {v5, v0}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 115
    new-instance v2, Lcom/hz/gui/GPixelLabel;

    new-array v6, v10, [I

    sget v7, Lcom/hz/test/ui/TestArmInfoView;->fontHeight:I

    invoke-direct {v2, v6, v7}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 116
    .local v2, "pLabel":Lcom/hz/gui/GPixelLabel;
    new-instance v6, Ljava/lang/StringBuilder;

    sget v7, Lcom/hz/test/ui/TestArmInfoView;->currentPage:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/hz/test/ui/TestArmInfoView;->totalPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0xffffff

    invoke-virtual {v2, v6, v7, v12, v11}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 117
    invoke-virtual {v5, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 119
    new-array v4, v10, [I

    .line 122
    .local v4, "vmData2":[I
    new-instance v1, Lcom/hz/gui/GIcon;

    invoke-direct {v1, v4}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 123
    .local v1, "iconRight":Lcom/hz/gui/GIcon;
    sget-object v6, Lcom/hz/test/ui/TestArmInfoView;->attrSet2:Lcom/hz/image/ImageSet;

    invoke-virtual {v1, v6, v13, v12, v11}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 124
    invoke-virtual {v5, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 125
    return-object v5
.end method

.method public static getTextArea1()Lcom/hz/gui/GTextArea;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    .line 130
    new-instance v0, Lcom/hz/gui/GTextArea;

    const/16 v1, 0x28

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 131
    .local v0, "text":Lcom/hz/gui/GTextArea;
    const/16 v1, 0x96

    const/16 v2, 0x4f

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/hz/gui/GTextArea;->setBounds(IIII)V

    .line 132
    invoke-virtual {v0, v4, v4, v6, v6}, Lcom/hz/gui/GTextArea;->setBorder(IIII)V

    .line 133
    sget-object v1, Lcom/hz/test/ui/TestArmInfoView;->armInfo:Ljava/lang/String;

    const v2, 0x214570

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;IIZ)V

    .line 134
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestArmInfoView;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v0, v1, v2, v5}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 135
    return-object v0

    .line 134
    :array_0
    .array-data 4
        0xe8f6f7
        0xb588c
        0x3ba9ce
        0xb588c
    .end array-data
.end method

.method public static getTextArea2()Lcom/hz/gui/GTextArea;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 140
    const/16 v2, 0x28

    new-array v0, v2, [I

    .line 145
    .local v0, "data":[I
    new-instance v1, Lcom/hz/gui/GTextArea;

    invoke-direct {v1, v0}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 146
    .local v1, "text":Lcom/hz/gui/GTextArea;
    const/4 v2, 0x3

    const/16 v3, 0x53

    const/16 v4, 0xe2

    const/16 v5, 0x74

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hz/gui/GTextArea;->setBounds(IIII)V

    .line 147
    invoke-virtual {v1, v7, v7, v8, v8}, Lcom/hz/gui/GTextArea;->setBorder(IIII)V

    .line 148
    const v2, 0xb4b4b4

    invoke-virtual {v1, v2}, Lcom/hz/gui/GTextArea;->setLineColor(I)V

    .line 149
    sget-object v2, Lcom/hz/test/ui/TestArmInfoView;->armDetail:Ljava/lang/String;

    const v3, 0x214570

    invoke-virtual {v1, v2, v3}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;I)V

    .line 150
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    sget-object v3, Lcom/hz/test/ui/TestArmInfoView;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v1, v2, v3, v6}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 151
    return-object v1

    .line 150
    nop

    :array_0
    .array-data 4
        0xe8f6f7
        0xb588c
        0x3ba9ce
        0xb588c
    .end array-data
.end method

.method public static getTopLabel()Lcom/hz/gui/GPixelLabel;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    new-instance v0, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 95
    .local v0, "label":Lcom/hz/gui/GPixelLabel;
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestArmInfoView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 96
    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x26b71

    aput v2, v1, v5

    const v2, 0x6629f

    aput v2, v1, v6

    invoke-virtual {v0, v1, v6}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 97
    const/16 v1, 0xe8

    const/16 v2, 0x16

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 98
    return-object v0

    .line 95
    :array_0
    .array-data 4
        0x3b4b
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getTopWindow()Lcom/hz/gui/GWindow;
    .locals 14

    .prologue
    const/16 v13, 0xe8

    const/4 v10, 0x3

    const/16 v12, 0x28

    const/4 v11, 0x0

    .line 60
    new-instance v7, Lcom/hz/gui/GWindow;

    new-array v9, v12, [I

    invoke-direct {v7, v9}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 62
    .local v7, "window":Lcom/hz/gui/GWindow;
    const/16 v9, 0xee

    invoke-virtual {v7, v10, v11, v13, v9}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 64
    invoke-static {}, Lcom/hz/test/ui/TestArmInfoView;->getTopLabel()Lcom/hz/gui/GPixelLabel;

    move-result-object v3

    .line 66
    .local v3, "plabel":Lcom/hz/gui/GPixelLabel;
    sget-object v9, Lcom/hz/test/ui/TestArmInfoView;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v9, v11}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v6

    .line 67
    .local v6, "width":I
    sget-object v9, Lcom/hz/test/ui/TestArmInfoView;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v9, v11}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    .line 68
    .local v0, "height":I
    new-instance v1, Lcom/hz/gui/GGameIcon;

    new-array v9, v12, [I

    invoke-direct {v1, v9}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 69
    .local v1, "icon":Lcom/hz/gui/GGameIcon;
    sget-object v9, Lcom/hz/test/ui/TestArmInfoView;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v1, v9, v11, v10}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 70
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 72
    const/4 v9, -0x5

    invoke-virtual {v1, v11, v9}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 73
    const/16 v9, 0x9b

    const/4 v10, 0x4

    invoke-virtual {v1, v9, v10, v6, v0}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 75
    new-instance v8, Lcom/hz/gui/GWindow;

    new-array v9, v12, [I

    invoke-direct {v8, v9}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 76
    .local v8, "window2":Lcom/hz/gui/GWindow;
    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 77
    const/16 v9, 0x16

    const/16 v10, 0xdd

    invoke-virtual {v8, v11, v9, v13, v10}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 79
    invoke-static {}, Lcom/hz/test/ui/TestArmInfoView;->getLeftRightLabel()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 80
    .local v2, "leftRightBar":Lcom/hz/gui/GWindow;
    invoke-virtual {v8, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 82
    invoke-static {}, Lcom/hz/test/ui/TestArmInfoView;->getTextArea1()Lcom/hz/gui/GTextArea;

    move-result-object v4

    .line 83
    .local v4, "textArea1":Lcom/hz/gui/GTextArea;
    invoke-static {}, Lcom/hz/test/ui/TestArmInfoView;->getTextArea2()Lcom/hz/gui/GTextArea;

    move-result-object v5

    .line 84
    .local v5, "textArea2":Lcom/hz/gui/GTextArea;
    invoke-virtual {v8, v4}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 85
    invoke-virtual {v8, v5}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 86
    invoke-virtual {v8, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 88
    invoke-virtual {v7, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 89
    invoke-virtual {v7, v8}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 90
    return-object v7

    .line 76
    nop

    :array_0
    .array-data 4
        0x597a7
        0xc3e9f0
    .end array-data
.end method
