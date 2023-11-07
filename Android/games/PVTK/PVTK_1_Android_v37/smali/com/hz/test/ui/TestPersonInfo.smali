.class public Lcom/hz/test/ui/TestPersonInfo;
.super Ljava/lang/Object;
.source "TestPersonInfo.java"


# static fields
.field static HPValuePos:[[I

.field static InfoValue:[I

.field static InfoValueTotal:[I

.field static LABEL2WH:[[I

.field static LABELXY:[[I

.field static WINDOW_HEIGHT:I

.field static WINDOW_WIDTH:I

.field static attrCount:[I

.field static attrSet1:Lcom/hz/image/ImageSet;

.field static attrSet2:Lcom/hz/image/ImageSet;

.field static barBgColor:[[I

.field static barFgColor:[[I

.field static barPos:[[I

.field static countUP:[I

.field static fontHeight:I

.field static hpWordSet:Lcom/hz/image/ImageSet;

.field static imageSet:Lcom/hz/image/ImageSet;

.field static labelName:[Ljava/lang/String;

.field public static labelValue:[Ljava/lang/String;

.field static midLabelName:Ljava/lang/String;

.field static midLabelValue:Ljava/lang/String;

.field static midLabelWH:[I

.field static midLabelXY:[I

.field static name:[Ljava/lang/String;

.field static topIconxy:[[I

.field static topLabelText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 26
    const/16 v0, 0xf0

    sput v0, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_WIDTH:I

    .line 27
    const/16 v0, 0x140

    sput v0, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_HEIGHT:I

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u529b\u91cf"

    aput-object v1, v0, v6

    const-string v1, "\u4f53\u8d28"

    aput-object v1, v0, v4

    const-string v1, "\u654f\u6377"

    aput-object v1, v0, v2

    const-string v1, "\u611f\u77e5"

    aput-object v1, v0, v3

    const-string v1, "\u667a\u529b"

    aput-object v1, v0, v5

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->name:[Ljava/lang/String;

    .line 30
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u79cd\u65cf"

    aput-object v1, v0, v6

    const-string v1, "\u804c\u4e1a"

    aput-object v1, v0, v4

    const-string v1, "\u56fd\u5bb6"

    aput-object v1, v0, v2

    const-string v1, "\u5b98\u9636"

    aput-object v1, v0, v3

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->labelName:[Ljava/lang/String;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u4e1c\u65b9"

    aput-object v1, v0, v6

    const-string v1, "\u4fa0\u5ba2"

    aput-object v1, v0, v4

    const-string v1, "\u5927\u6c49\u5e1d\u56fd"

    aput-object v1, v0, v2

    const-string v1, "\u56fd\u738b"

    aput-object v1, v0, v3

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->labelValue:[Ljava/lang/String;

    .line 32
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->LABELXY:[[I

    .line 33
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->LABEL2WH:[[I

    .line 35
    const-string v0, "\u53ef\u5206\u914d\u5c5e\u6027\u70b9"

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->midLabelName:Ljava/lang/String;

    .line 36
    const-string v0, "85"

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->midLabelValue:Ljava/lang/String;

    .line 37
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->midLabelXY:[I

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->midLabelWH:[I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v4, v0, v4

    const/16 v1, 0xb

    aput v1, v0, v2

    const/16 v1, 0x1d

    aput v1, v0, v3

    const/16 v1, 0xc

    aput v1, v0, v5

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->attrCount:[I

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->countUP:[I

    .line 46
    const/16 v0, 0xc

    sput v0, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    .line 49
    new-array v0, v3, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    .line 50
    new-array v1, v5, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    .line 51
    new-array v1, v5, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->barPos:[[I

    .line 52
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    .line 53
    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    .line 54
    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    .line 52
    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->barFgColor:[[I

    .line 55
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    .line 56
    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    .line 57
    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->barBgColor:[[I

    .line 59
    new-array v0, v3, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->InfoValue:[I

    .line 60
    new-array v0, v3, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->InfoValueTotal:[I

    .line 61
    new-array v0, v3, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v6

    .line 62
    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    .line 63
    new-array v1, v5, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v2

    .line 61
    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->HPValuePos:[[I

    .line 66
    const-string v0, "\u83ab\u6797 \u7b49\u7ea734 (ID:32425)"

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->topLabelText:Ljava/lang/String;

    .line 231
    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/hz/test/ui/TestPersonInfo;->topIconxy:[[I

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x4e
        0x49
    .end array-data

    :array_1
    .array-data 4
        0x9a
        0x49
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5e
    .end array-data

    :array_3
    .array-data 4
        0x9a
        0x5e
    .end array-data

    .line 33
    :array_4
    .array-data 4
        0x21
        0x11
    .end array-data

    :array_5
    .array-data 4
        0x21
        0x11
    .end array-data

    :array_6
    .array-data 4
        0x6b
        0x11
    .end array-data

    :array_7
    .array-data 4
        0x21
        0x11
    .end array-data

    .line 37
    :array_8
    .array-data 4
        0x3
        0xa6
    .end array-data

    .line 38
    :array_9
    .array-data 4
        0x92
        0x11
    .end array-data

    .line 41
    :array_a
    .array-data 4
        0x14
        0x15
        0x16
        0x16
        0xb
    .end array-data

    .line 49
    :array_b
    .array-data 4
        0x6e
        0xe
        0x72
        0xb
    .end array-data

    .line 50
    :array_c
    .array-data 4
        0x6e
        0x24
        0x72
        0xb
    .end array-data

    .line 51
    :array_d
    .array-data 4
        0x6e
        0x3a
        0x72
        0xb
    .end array-data

    .line 52
    :array_e
    .array-data 4
        0xf4aa63
        0xf00202
        0xbb1d11
    .end array-data

    .line 53
    :array_f
    .array-data 4
        0x65d3f7
        0x261f0
        0x9459f
    .end array-data

    .line 54
    :array_10
    .array-data 4
        0xd8f463
        0xf0a802
        0xac7c0d
    .end array-data

    .line 55
    :array_11
    .array-data 4
        0x42d7dc
        0x364c
        0x3f50
    .end array-data

    .line 56
    :array_12
    .array-data 4
        0x42d7dc
        0x364c
        0x3f50
    .end array-data

    .line 57
    :array_13
    .array-data 4
        0x42d7dc
        0x364c
        0x3f50
    .end array-data

    .line 59
    :array_14
    .array-data 4
        0xb2
        0xa0
        0x4e
    .end array-data

    .line 60
    :array_15
    .array-data 4
        0xbe
        0xbe
        0x5a
    .end array-data

    .line 61
    :array_16
    .array-data 4
        0x84
        0x3
        0x42
        0xc
    .end array-data

    .line 62
    :array_17
    .array-data 4
        0x84
        0x19
        0x42
        0xc
    .end array-data

    .line 63
    :array_18
    .array-data 4
        0x84
        0x2f
        0x42
        0xc
    .end array-data

    .line 231
    :array_19
    .array-data 4
        0x51
        0xd
    .end array-data

    :array_1a
    .array-data 4
        0x51
        0x23
    .end array-data

    :array_1b
    .array-data 4
        0x51
        0x39
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestPersonInfo1()V
    .locals 18

    .prologue
    .line 69
    const-string v1, "/common/"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    sput-object v1, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    .line 70
    const-string v1, "/common/"

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    sput-object v1, Lcom/hz/test/ui/TestPersonInfo;->attrSet2:Lcom/hz/image/ImageSet;

    .line 71
    const-string v1, "/common/"

    const/16 v2, 0x68

    invoke-static {v1, v2}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    sput-object v1, Lcom/hz/test/ui/TestPersonInfo;->hpWordSet:Lcom/hz/image/ImageSet;

    .line 72
    const-string v1, "/common/"

    const/16 v2, 0x66

    invoke-static {v1, v2}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    sput-object v1, Lcom/hz/test/ui/TestPersonInfo;->imageSet:Lcom/hz/image/ImageSet;

    .line 74
    new-instance v14, Lcom/hz/gui/GLinePanel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    invoke-direct {v14, v1}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 75
    .local v14, "panel":Lcom/hz/gui/GLinePanel;
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v2, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 76
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v3, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_HEIGHT:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 77
    sget v3, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_WIDTH:I

    sget v4, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_HEIGHT:I

    .line 75
    invoke-virtual {v14, v1, v2, v3, v4}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 78
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x22667b

    aput v3, v1, v2

    const/4 v2, 0x2

    const v3, 0xc6e5ab

    aput v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v1, v2, v3}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 80
    invoke-static {}, Lcom/hz/test/ui/TestPersonInfo;->getPersonInfoPanel()Lcom/hz/gui/GWindow;

    move-result-object v16

    .line 81
    .local v16, "window1":Lcom/hz/gui/GWindow;
    const/4 v1, 0x4

    const/16 v2, 0x32

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GWindow;->setPos(II)V

    .line 82
    invoke-static {}, Lcom/hz/test/ui/TestPersonInfo;->getAttrUPPanel()Lcom/hz/gui/GWindow;

    move-result-object v17

    .line 83
    .local v17, "window2":Lcom/hz/gui/GWindow;
    const/4 v1, 0x2

    const/16 v2, 0xb7

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GWindow;->setPos(II)V

    .line 84
    invoke-static {}, Lcom/hz/test/ui/TestPersonInfo;->getTopLabel()Lcom/hz/gui/GLabel;

    move-result-object v10

    .line 85
    .local v10, "label":Lcom/hz/gui/GLabel;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lcom/hz/gui/GLabel;->setPos(II)V

    .line 88
    new-instance v11, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    sget v2, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    invoke-direct {v11, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 89
    .local v11, "labelLeft":Lcom/hz/gui/GPixelLabel;
    const-string v1, "\u786e\u5b9a"

    const v2, 0xffffff

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 90
    const/16 v1, 0x4887

    invoke-virtual {v11, v1}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 91
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    .line 92
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v15

    .line 93
    .local v15, "width":I
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v8

    .line 94
    .local v8, "height":I
    const/4 v1, 0x0

    sget v2, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_HEIGHT:I

    sub-int/2addr v2, v8

    invoke-virtual {v11, v1, v2, v15, v8}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 96
    new-instance v12, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    sget v2, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    invoke-direct {v12, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 97
    .local v12, "labelRight":Lcom/hz/gui/GPixelLabel;
    const-string v1, "\u8fd4\u56de"

    const v2, 0xffffff

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 98
    const/16 v1, 0x4887

    invoke-virtual {v12, v1}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 99
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    .line 100
    sget v1, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_WIDTH:I

    sub-int/2addr v1, v15

    sget v2, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_HEIGHT:I

    sub-int/2addr v2, v8

    invoke-virtual {v12, v1, v2, v15, v8}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 101
    invoke-virtual {v14, v11}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 102
    invoke-virtual {v14, v12}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 106
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->midLabelXY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->midLabelXY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->midLabelWH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 107
    sget-object v4, Lcom/hz/test/ui/TestPersonInfo;->midLabelWH:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lcom/hz/test/ui/TestPersonInfo;->midLabelName:Ljava/lang/String;

    sget-object v6, Lcom/hz/test/ui/TestPersonInfo;->midLabelValue:Ljava/lang/String;

    sget v7, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    .line 106
    invoke-static/range {v1 .. v7}, Lcom/hz/test/ui/TestPersonInfo;->getGLabelGroup(IIIILjava/lang/String;Ljava/lang/String;I)[Lcom/hz/gui/GPixelLabel;

    move-result-object v13

    .line 109
    .local v13, "midLabel":[Lcom/hz/gui/GLabel;
    invoke-static {}, Lcom/hz/test/ui/TestPersonInfo;->getTopLabelGroup()Lcom/hz/gui/GWindow;

    move-result-object v9

    .line 111
    .local v9, "iconWindow":Lcom/hz/gui/GWindow;
    invoke-virtual {v14, v10}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 112
    invoke-virtual {v14, v9}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 113
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 114
    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-virtual {v14, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 115
    const/4 v1, 0x1

    aget-object v1, v13, v1

    invoke-virtual {v14, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 116
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 117
    invoke-virtual {v14}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 118
    invoke-virtual {v14}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 119
    invoke-static {v14}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 120
    return-void
.end method

.method public static getAttrUPPanel()Lcom/hz/gui/GWindow;
    .locals 22

    .prologue
    .line 166
    const/16 v10, 0x15

    .line 167
    .local v10, "lineHeight":I
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v6, v0, [I

    .line 170
    .local v6, "data":[I
    new-instance v16, Lcom/hz/gui/GWindow;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 171
    .local v16, "window":Lcom/hz/gui/GWindow;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    sget-object v18, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/16 v19, 0x4

    invoke-virtual/range {v16 .. v19}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 172
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/hz/gui/GWindow;->SetNeedLayout(Z)V

    .line 173
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xec

    const/16 v20, 0x74

    invoke-virtual/range {v16 .. v20}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 174
    invoke-virtual/range {v16 .. v16}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 177
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v4, v0, [Lcom/hz/gui/GIcon;

    .line 178
    .local v4, "arrowLeft":[Lcom/hz/gui/GIcon;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v5, v0, [Lcom/hz/gui/GIcon;

    .line 180
    .local v5, "arrowRight":[Lcom/hz/gui/GIcon;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    sget-object v17, Lcom/hz/test/ui/TestPersonInfo;->name:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_0

    .line 228
    return-object v16

    .line 182
    :cond_0
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 187
    .local v15, "vmData":[I
    new-instance v13, Lcom/hz/gui/GLinePanel;

    invoke-direct {v13, v15}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 188
    .local v13, "panel":Lcom/hz/gui/GLinePanel;
    rem-int/lit8 v17, v7, 0x2

    if-nez v17, :cond_1

    .line 189
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 190
    :cond_1
    const/16 v17, 0x8

    mul-int v18, v7, v10

    add-int/lit8 v18, v18, 0x6

    const/16 v19, 0xda

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2, v10}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 192
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/hz/gui/GLinePanel;->setFocusColorTable([I)V

    .line 194
    new-instance v11, Lcom/hz/gui/GPixelLabel;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sget v18, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 195
    .local v11, "pLabel1":Lcom/hz/gui/GPixelLabel;
    sget-object v17, Lcom/hz/test/ui/TestPersonInfo;->name:[Ljava/lang/String;

    aget-object v17, v17, v7

    const v18, 0x214570

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 196
    const/16 v17, 0x8

    const/16 v18, 0x5

    sget-object v19, Lcom/hz/test/ui/TestPersonInfo;->name:[Ljava/lang/String;

    aget-object v19, v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sget v20, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    mul-int v19, v19, v20

    sget v20, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 198
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/hz/test/ui/TestPersonInfo;->attrCount:[I

    aget v18, v18, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/hz/test/ui/TestPersonInfo;->countUP:[I

    aget v18, v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "labname2":Ljava/lang/String;
    new-instance v12, Lcom/hz/gui/GPixelLabel;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sget v18, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 200
    .local v12, "pLabel2":Lcom/hz/gui/GPixelLabel;
    const v17, 0x214570

    const/16 v18, 0x0

    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v8, v0, v1, v2}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 201
    const/16 v17, 0x5d

    const/16 v18, 0x5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    sget v20, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    mul-int v19, v19, v20

    sget v20, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 203
    const/16 v17, 0x15

    move/from16 v0, v17

    new-array v9, v0, [I

    .line 208
    .local v9, "leftIconData":[I
    new-instance v17, Lcom/hz/gui/GIcon;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/hz/gui/GIcon;-><init>([I)V

    aput-object v17, v4, v7

    .line 209
    aget-object v17, v4, v7

    sget-object v18, Lcom/hz/test/ui/TestPersonInfo;->attrSet2:Lcom/hz/image/ImageSet;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v17 .. v21}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 210
    aget-object v17, v4, v7

    const/16 v18, 0x31

    const/16 v19, 0x0

    const/16 v20, 0x1c

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 212
    const/16 v17, 0x15

    move/from16 v0, v17

    new-array v14, v0, [I

    .line 217
    .local v14, "rightIconData":[I
    new-instance v17, Lcom/hz/gui/GIcon;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/hz/gui/GIcon;-><init>([I)V

    aput-object v17, v5, v7

    .line 218
    aget-object v17, v5, v7

    sget-object v18, Lcom/hz/test/ui/TestPersonInfo;->attrSet2:Lcom/hz/image/ImageSet;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v17 .. v21}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 219
    aget-object v17, v5, v7

    const/16 v18, 0x9a

    const/16 v19, 0x0

    const/16 v20, 0x1c

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 221
    invoke-virtual {v13, v11}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 222
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 223
    invoke-virtual {v13, v12}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 224
    aget-object v17, v5, v7

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 226
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 171
    nop

    :array_0
    .array-data 4
        0x70bcba
        0xb588c
        0x3ba9ce
        0xb588c
    .end array-data

    .line 189
    :array_1
    .array-data 4
        0xc1e6f2
        0xc1e6f2
    .end array-data

    .line 192
    :array_2
    .array-data 4
        0xe5dc86
        0xb08b44
        0xc1e6f2
    .end array-data
.end method

.method public static getGLabelGroup(IIIILjava/lang/String;Ljava/lang/String;I)[Lcom/hz/gui/GPixelLabel;
    .locals 8
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w2"    # I
    .param p3, "h2"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "fontSize"    # I

    .prologue
    const/16 v7, 0x28

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    new-array v0, v3, [Lcom/hz/gui/GPixelLabel;

    .line 318
    .local v0, "pLabel":[Lcom/hz/gui/GPixelLabel;
    new-instance v1, Lcom/hz/gui/GPixelLabel;

    new-array v2, v7, [I

    invoke-direct {v1, v2, p6}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    aput-object v1, v0, v4

    .line 319
    aget-object v1, v0, v4

    const v2, 0xfae3c4

    invoke-virtual {v1, p4, v2, v4, v6}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 320
    aget-object v1, v0, v4

    const v2, 0x432110

    invoke-virtual {v1, v2}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 322
    aget-object v1, v0, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v1, v2, v3, v6}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 324
    aget-object v1, v0, v4

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v4}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 325
    aget-object v1, v0, v4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, p6

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, p0, p1, v2, p3}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 327
    new-instance v1, Lcom/hz/gui/GPixelLabel;

    new-array v2, v7, [I

    invoke-direct {v1, v2, p6}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    aput-object v1, v0, v5

    .line 328
    aget-object v1, v0, v5

    const v2, 0xfae3c4

    invoke-virtual {v1, p5, v2, v4, v6}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 329
    aget-object v1, v0, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 330
    aget-object v1, v0, v5

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lcom/hz/gui/GPixelLabel;->getW()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 331
    return-object v0

    .line 322
    nop

    :array_0
    .array-data 4
        0x7b3304
        0x231200
    .end array-data

    .line 324
    :array_1
    .array-data 4
        0xe5964b
        0x9c4e18
        0x9c4e18
        0x9c4e18
        0x9c4e18
        0x9c4e18
    .end array-data

    .line 329
    :array_2
    .array-data 4
        0x37637c
        0x6a9bd2
        0x37637c
    .end array-data
.end method

.method public static getPersonInfoPanel()Lcom/hz/gui/GWindow;
    .locals 20

    .prologue
    .line 238
    new-instance v19, Lcom/hz/gui/GWindow;

    const/16 v1, 0x28

    new-array v1, v1, [I

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 239
    .local v19, "window":Lcom/hz/gui/GWindow;
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 240
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->SetNeedLayout(Z)V

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xe8

    const/16 v4, 0x73

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 243
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->topIconxy:[[I

    array-length v1, v1

    new-array v12, v1, [Lcom/hz/gui/GIcon;

    .line 244
    .local v12, "icon":[Lcom/hz/gui/GIcon;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v12

    if-lt v11, v1, :cond_1

    .line 252
    const/4 v1, 0x3

    new-array v8, v1, [Lcom/hz/gui/GGameBar;

    .line 253
    .local v8, "gameBar":[Lcom/hz/gui/GGameBar;
    const/4 v11, 0x0

    :goto_1
    array-length v1, v8

    if-lt v11, v1, :cond_2

    .line 263
    const/4 v1, 0x3

    new-array v15, v1, [Lcom/hz/gui/GPixelLabel;

    .line 264
    .local v15, "label":[Lcom/hz/gui/GPixelLabel;
    const/4 v11, 0x0

    :goto_2
    array-length v1, v15

    if-lt v11, v1, :cond_3

    .line 275
    const/16 v1, 0x15

    new-array v13, v1, [I

    .line 276
    .local v13, "iconData":[I
    new-instance v9, Lcom/hz/gui/GGameIcon;

    invoke-direct {v9, v13}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 277
    .local v9, "gameIcon":Lcom/hz/gui/GGameIcon;
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v17

    .line 279
    .local v17, "sprite":Lcom/hz/sprite/GameSprite;
    const/16 v18, 0x28

    .line 280
    .local v18, "width":I
    const/16 v10, 0x3c

    .line 281
    .local v10, "height":I
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->imageSet:Lcom/hz/image/ImageSet;

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v18

    .line 283
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v10

    .line 285
    :cond_0
    const/4 v1, 0x4

    const/16 v2, 0xb

    move/from16 v0, v18

    invoke-virtual {v9, v1, v2, v0, v10}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 286
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 287
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->imageSet:Lcom/hz/image/ImageSet;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v9, v1, v2, v3}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 288
    const/4 v1, 0x0

    const/4 v2, -0x5

    invoke-virtual {v9, v1, v2}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 289
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 292
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->labelName:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Lcom/hz/gui/GPixelLabel;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[Lcom/hz/gui/GPixelLabel;

    .line 293
    .local v16, "pLabel":[[Lcom/hz/gui/GPixelLabel;
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v1, v0

    if-lt v11, v1, :cond_4

    .line 301
    return-object v19

    .line 246
    .end local v8    # "gameBar":[Lcom/hz/gui/GGameBar;
    .end local v9    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .end local v10    # "height":I
    .end local v13    # "iconData":[I
    .end local v15    # "label":[Lcom/hz/gui/GPixelLabel;
    .end local v16    # "pLabel":[[Lcom/hz/gui/GPixelLabel;
    .end local v17    # "sprite":Lcom/hz/sprite/GameSprite;
    .end local v18    # "width":I
    :cond_1
    new-instance v1, Lcom/hz/gui/GIcon;

    const/16 v2, 0x28

    new-array v2, v2, [I

    invoke-direct {v1, v2}, Lcom/hz/gui/GIcon;-><init>([I)V

    aput-object v1, v12, v11

    .line 247
    aget-object v1, v12, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->hpWordSet:Lcom/hz/image/ImageSet;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v11, v3, v4}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 248
    aget-object v1, v12, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->topIconxy:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->topIconxy:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hz/gui/GIcon;->setPos(II)V

    .line 249
    aget-object v1, v12, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 244
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 255
    .restart local v8    # "gameBar":[Lcom/hz/gui/GGameBar;
    :cond_2
    new-instance v1, Lcom/hz/gui/GGameBar;

    const/16 v2, 0x28

    new-array v2, v2, [I

    invoke-direct {v1, v2}, Lcom/hz/gui/GGameBar;-><init>([I)V

    aput-object v1, v8, v11

    .line 256
    aget-object v1, v8, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->barBgColor:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->barBgColor:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/hz/test/ui/TestPersonInfo;->barBgColor:[[I

    aget-object v4, v4, v11

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/hz/gui/GGameBar;->setBgColor(III)V

    .line 257
    aget-object v1, v8, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->barFgColor:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->barFgColor:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/hz/test/ui/TestPersonInfo;->barFgColor:[[I

    aget-object v4, v4, v11

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/hz/gui/GGameBar;->setFgColor(III)V

    .line 258
    aget-object v1, v8, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->barPos:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->barPos:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/hz/test/ui/TestPersonInfo;->barPos:[[I

    aget-object v4, v4, v11

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/hz/test/ui/TestPersonInfo;->barPos:[[I

    aget-object v5, v5, v11

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hz/gui/GGameBar;->setBounds(IIII)V

    .line 259
    aget-object v1, v8, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->InfoValueTotal:[I

    aget v2, v2, v11

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->InfoValue:[I

    aget v3, v3, v11

    invoke-virtual {v1, v2, v3}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 260
    aget-object v1, v8, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 253
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 266
    .restart local v15    # "label":[Lcom/hz/gui/GPixelLabel;
    :cond_3
    new-instance v1, Lcom/hz/gui/GPixelLabel;

    const/16 v2, 0x28

    new-array v2, v2, [I

    sget v3, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    invoke-direct {v1, v2, v3}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    aput-object v1, v15, v11

    .line 267
    aget-object v1, v15, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->InfoValue:[I

    aget v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->InfoValueTotal:[I

    aget v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffffff

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 268
    aget-object v1, v15, v11

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->HPValuePos:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->HPValuePos:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/hz/test/ui/TestPersonInfo;->HPValuePos:[[I

    aget-object v4, v4, v11

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/hz/test/ui/TestPersonInfo;->HPValuePos:[[I

    aget-object v5, v5, v11

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 269
    aget-object v1, v15, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 264
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 294
    .restart local v9    # "gameIcon":Lcom/hz/gui/GGameIcon;
    .restart local v10    # "height":I
    .restart local v13    # "iconData":[I
    .restart local v16    # "pLabel":[[Lcom/hz/gui/GPixelLabel;
    .restart local v17    # "sprite":Lcom/hz/sprite/GameSprite;
    .restart local v18    # "width":I
    :cond_4
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->LABELXY:[[I

    aget-object v1, v1, v11

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->LABELXY:[[I

    aget-object v2, v2, v11

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/hz/test/ui/TestPersonInfo;->LABEL2WH:[[I

    aget-object v3, v3, v11

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/hz/test/ui/TestPersonInfo;->LABEL2WH:[[I

    aget-object v4, v4, v11

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 295
    sget-object v5, Lcom/hz/test/ui/TestPersonInfo;->labelName:[Ljava/lang/String;

    aget-object v5, v5, v11

    sget-object v6, Lcom/hz/test/ui/TestPersonInfo;->labelValue:[Ljava/lang/String;

    aget-object v6, v6, v11

    sget v7, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    .line 294
    invoke-static/range {v1 .. v7}, Lcom/hz/test/ui/TestPersonInfo;->getGLabelGroup(IIIILjava/lang/String;Ljava/lang/String;I)[Lcom/hz/gui/GPixelLabel;

    move-result-object v1

    aput-object v1, v16, v11

    .line 296
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    aget-object v1, v16, v11

    array-length v1, v1

    if-lt v14, v1, :cond_5

    .line 293
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 298
    :cond_5
    aget-object v1, v16, v11

    aget-object v1, v1, v14

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 296
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 239
    nop

    :array_0
    .array-data 4
        0x2892b0
        0x2734
    .end array-data
.end method

.method public static getTopLabel()Lcom/hz/gui/GLabel;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 123
    new-instance v0, Lcom/hz/gui/GLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 124
    .local v0, "label":Lcom/hz/gui/GLabel;
    sget-object v1, Lcom/hz/test/ui/TestPersonInfo;->topLabelText:Ljava/lang/String;

    const v2, 0xfae3c4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    .line 125
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 127
    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x26b71

    aput v2, v1, v5

    const/4 v2, 0x1

    const v3, 0x6629f

    aput v3, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/hz/gui/GLabel;->setLineColorTable([IZ)V

    .line 128
    sget v1, Lcom/hz/test/ui/TestPersonInfo;->WINDOW_WIDTH:I

    const/16 v2, 0x18

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/hz/gui/GLabel;->setBounds(IIII)V

    .line 129
    return-object v0

    .line 125
    :array_0
    .array-data 4
        0x3b4b
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getTopLabelGroup()Lcom/hz/gui/GWindow;
    .locals 15

    .prologue
    const/4 v8, 0x6

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 137
    const/16 v6, 0x28

    new-array v0, v6, [I

    .line 140
    .local v0, "data":[I
    new-instance v5, Lcom/hz/gui/GWindow;

    invoke-direct {v5, v0}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 141
    .local v5, "window":Lcom/hz/gui/GWindow;
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 142
    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "\u57fa\u672c"

    aput-object v6, v3, v12

    const-string v6, "\u5c5e\u6027"

    aput-object v6, v3, v13

    const-string v6, "\u6280\u80fd"

    aput-object v6, v3, v14

    const-string v6, "\u793e\u4f1a"

    aput-object v6, v3, v11

    const/4 v6, 0x4

    const-string v7, "\u79f0\u53f7"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "\u7167\u7247"

    aput-object v7, v3, v6

    .line 143
    .local v3, "labelName":[Ljava/lang/String;
    new-array v2, v8, [Lcom/hz/gui/GPixelLabel;

    .line 144
    .local v2, "label":[Lcom/hz/gui/GPixelLabel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-lt v1, v6, :cond_0

    .line 157
    return-object v5

    .line 145
    :cond_0
    const/16 v6, 0x28

    new-array v4, v6, [I

    .line 150
    .local v4, "vmData":[I
    new-instance v6, Lcom/hz/gui/GPixelLabel;

    sget v7, Lcom/hz/test/ui/TestPersonInfo;->fontHeight:I

    invoke-direct {v6, v4, v7}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    aput-object v6, v2, v1

    .line 151
    aget-object v6, v2, v1

    sget-object v7, Lcom/hz/test/ui/TestPersonInfo;->attrSet1:Lcom/hz/image/ImageSet;

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v14, v13, v8}, Lcom/hz/gui/GPixelLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    .line 152
    aget-object v6, v2, v1

    aget-object v7, v3, v1

    const v8, 0xfae3c4

    const v9, 0xffffff

    invoke-virtual {v6, v7, v8, v9, v11}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 153
    aget-object v6, v2, v1

    invoke-virtual {v6, v12, v11}, Lcom/hz/gui/GPixelLabel;->setOffsetXY(II)V

    .line 154
    aget-object v6, v2, v1

    mul-int/lit8 v7, v1, 0x26

    add-int/lit8 v7, v7, 0x4

    const/16 v8, 0x1b

    const/16 v9, 0x25

    const/16 v10, 0x19

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 155
    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
