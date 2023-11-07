.class public Lcom/hz/test/ui/TestArmView;
.super Ljava/lang/Object;
.source "TestArmView.java"


# static fields
.field static WINDOW_HEIGHT:I

.field static WINDOW_WIDTH:I

.field static attrSet1:Lcom/hz/image/ImageSet;

.field static fontHeight:I

.field static iconArmName:[Ljava/lang/String;

.field static iconArmXY:[[I

.field static labelH:I

.field static labelValue:[Ljava/lang/String;

.field static labelW:I

.field static labelX:[I

.field static labelY:I

.field static personSet:Lcom/hz/image/ImageSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 23
    const/16 v0, 0xf0

    sput v0, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    .line 24
    const/16 v0, 0x140

    sput v0, Lcom/hz/test/ui/TestArmView;->WINDOW_HEIGHT:I

    .line 26
    sput v7, Lcom/hz/test/ui/TestArmView;->fontHeight:I

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "124"

    aput-object v1, v0, v5

    const-string v1, "124"

    aput-object v1, v0, v6

    const-string v1, "124"

    aput-object v1, v0, v3

    sput-object v0, Lcom/hz/test/ui/TestArmView;->labelValue:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/test/ui/TestArmView;->labelX:[I

    .line 33
    const/16 v0, 0x4b

    sput v0, Lcom/hz/test/ui/TestArmView;->labelY:I

    .line 34
    const/16 v0, 0x2f

    sput v0, Lcom/hz/test/ui/TestArmView;->labelW:I

    .line 35
    const/16 v0, 0x11

    sput v0, Lcom/hz/test/ui/TestArmView;->labelH:I

    .line 212
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u94fe"

    aput-object v1, v0, v5

    const-string v1, "\u5ba0"

    aput-object v1, v0, v6

    const-string v1, "\u6212"

    aput-object v1, v0, v3

    const-string v1, "\u65f6"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "\u80cc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8863"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u624b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6b66"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u978b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u6b66"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8170"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u88e4"

    aput-object v2, v0, v1

    const-string v1, "\u80a9"

    aput-object v1, v0, v7

    const/16 v1, 0xd

    const-string v2, "\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u7b26"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u9a91"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6212"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "VIP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hz/test/ui/TestArmView;->iconArmName:[Ljava/lang/String;

    .line 213
    const/16 v0, 0x12

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x4

    .line 214
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 215
    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 216
    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/16 v1, 0xd

    .line 217
    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 218
    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    .line 213
    sput-object v0, Lcom/hz/test/ui/TestArmView;->iconArmXY:[[I

    .line 218
    return-void

    .line 32
    :array_0
    .array-data 4
        0x21
        0x6f
        0xbd
    .end array-data

    .line 213
    :array_1
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x27
    .end array-data

    :array_3
    .array-data 4
        0x12
        0x41
    .end array-data

    :array_4
    .array-data 4
        0x12
        0x5b
    .end array-data

    .line 214
    :array_5
    .array-data 4
        0x39
        0xe
    .end array-data

    :array_6
    .array-data 4
        0x2e
        0x2f
    .end array-data

    :array_7
    .array-data 4
        0x38
        0x51
    .end array-data

    .line 215
    :array_8
    .array-data 4
        0x52
        0x6a
    .end array-data

    :array_9
    .array-data 4
        0x6d
        0x6a
    .end array-data

    :array_a
    .array-data 4
        0x88
        0x6a
    .end array-data

    .line 216
    :array_b
    .array-data 4
        0xa0
        0xe
    .end array-data

    :array_c
    .array-data 4
        0xab
        0x2f
    .end array-data

    :array_d
    .array-data 4
        0xa0
        0x51
    .end array-data

    .line 217
    :array_e
    .array-data 4
        0x6d
        0x3
    .end array-data

    .line 218
    :array_f
    .array-data 4
        0xc7
        0xd
    .end array-data

    :array_10
    .array-data 4
        0xc7
        0x27
    .end array-data

    :array_11
    .array-data 4
        0xc7
        0x41
    .end array-data

    :array_12
    .array-data 4
        0xc7
        0x5b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestArmView1()V
    .locals 14

    .prologue
    .line 38
    const-string v10, "/common/"

    const/16 v11, 0x64

    invoke-static {v10, v11}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v10

    sput-object v10, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    .line 39
    const-string v10, "/common/"

    const/16 v11, 0x66

    invoke-static {v10, v11}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v10

    sput-object v10, Lcom/hz/test/ui/TestArmView;->personSet:Lcom/hz/image/ImageSet;

    .line 40
    new-instance v0, Lcom/hz/gui/GLinePanel;

    const/16 v10, 0x28

    new-array v10, v10, [I

    invoke-direct {v0, v10}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 41
    .local v0, "basePanel":Lcom/hz/gui/GLinePanel;
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v11, v12}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 42
    sget v10, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v11, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 43
    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v12, Lcom/hz/test/ui/TestArmView;->WINDOW_HEIGHT:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    .line 44
    sget v12, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    sget v13, Lcom/hz/test/ui/TestArmView;->WINDOW_HEIGHT:I

    .line 42
    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 46
    invoke-static {}, Lcom/hz/test/ui/TestArmView;->getTopLabel()Lcom/hz/gui/GLabel;

    move-result-object v6

    .line 47
    .local v6, "topLabel":Lcom/hz/gui/GLabel;
    invoke-static {}, Lcom/hz/test/ui/TestArmView;->getMidLabel()Lcom/hz/gui/GLabel;

    move-result-object v5

    .line 48
    .local v5, "midLabel":Lcom/hz/gui/GLabel;
    invoke-static {}, Lcom/hz/test/ui/TestArmView;->getWindow1()Lcom/hz/gui/GWindow;

    move-result-object v8

    .line 49
    .local v8, "window1":Lcom/hz/gui/GWindow;
    invoke-static {}, Lcom/hz/test/ui/TestArmView;->getWindow2()Lcom/hz/gui/GWindow;

    move-result-object v9

    .line 50
    .local v9, "window2":Lcom/hz/gui/GWindow;
    invoke-static {}, Lcom/hz/test/ui/TestArmView;->getTopLabelGroup()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 51
    .local v2, "labelBar":Lcom/hz/gui/GWindow;
    invoke-virtual {v0, v6}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 52
    invoke-virtual {v0, v8}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 53
    invoke-virtual {v0, v5}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 54
    invoke-virtual {v0, v9}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 58
    new-instance v3, Lcom/hz/gui/GPixelLabel;

    const/16 v10, 0x28

    new-array v10, v10, [I

    sget v11, Lcom/hz/test/ui/TestArmView;->fontHeight:I

    invoke-direct {v3, v10, v11}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 59
    .local v3, "labelLeft":Lcom/hz/gui/GPixelLabel;
    const-string v10, "\u786e\u5b9a"

    const v11, 0xffffff

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v3, v10, v11, v12, v13}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 60
    const/16 v10, 0x4887

    invoke-virtual {v3, v10}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 61
    sget-object v10, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v3, v10, v11, v12, v13}, Lcom/hz/gui/GPixelLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    .line 62
    sget-object v10, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v7

    .line 63
    .local v7, "width":I
    sget-object v10, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v1

    .line 64
    .local v1, "height":I
    const/4 v10, 0x0

    sget v11, Lcom/hz/test/ui/TestArmView;->WINDOW_HEIGHT:I

    sub-int/2addr v11, v1

    invoke-virtual {v3, v10, v11, v7, v1}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 66
    new-instance v4, Lcom/hz/gui/GPixelLabel;

    const/16 v10, 0x28

    new-array v10, v10, [I

    sget v11, Lcom/hz/test/ui/TestArmView;->fontHeight:I

    invoke-direct {v4, v10, v11}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 67
    .local v4, "labelRight":Lcom/hz/gui/GPixelLabel;
    const-string v10, "\u8fd4\u56de"

    const v11, 0xffffff

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 68
    const/16 v10, 0x4887

    invoke-virtual {v4, v10}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 69
    sget-object v10, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/hz/gui/GPixelLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    .line 70
    sget v10, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    sub-int/2addr v10, v7

    sget v11, Lcom/hz/test/ui/TestArmView;->WINDOW_HEIGHT:I

    sub-int/2addr v11, v1

    invoke-virtual {v4, v10, v11, v7, v1}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 71
    invoke-virtual {v0, v3}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 72
    invoke-virtual {v0, v4}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 74
    invoke-virtual {v0}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 75
    invoke-virtual {v0}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 77
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 78
    return-void

    .line 41
    :array_0
    .array-data 4
        0x11325d
        0x11325d
    .end array-data
.end method

.method public static getArmIconGroup()[Lcom/hz/gui/GPixelLabel;
    .locals 11

    .prologue
    const v10, 0x605f5f

    const/16 v9, 0x18

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 221
    sget-object v3, Lcom/hz/test/ui/TestArmView;->iconArmXY:[[I

    array-length v3, v3

    new-array v1, v3, [Lcom/hz/gui/GPixelLabel;

    .line 222
    .local v1, "label":[Lcom/hz/gui/GPixelLabel;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/hz/test/ui/TestArmView;->iconArmXY:[[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 239
    return-object v1

    .line 223
    :cond_0
    const/16 v3, 0x28

    new-array v2, v3, [I

    .line 228
    .local v2, "vmData":[I
    new-instance v3, Lcom/hz/gui/GPixelLabel;

    sget v4, Lcom/hz/test/ui/TestArmView;->fontHeight:I

    invoke-direct {v3, v2, v4}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    aput-object v3, v1, v0

    .line 229
    aget-object v3, v1, v0

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v7}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 231
    aget-object v3, v1, v0

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-virtual {v3, v4, v7}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 233
    aget-object v3, v1, v0

    sget-object v4, Lcom/hz/test/ui/TestArmView;->iconArmName:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v10, v10, v5}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 235
    aget-object v3, v1, v0

    new-array v4, v8, [I

    fill-array-data v4, :array_2

    invoke-virtual {v3, v4}, Lcom/hz/gui/GPixelLabel;->setFocusColorTable([I)V

    .line 236
    aget-object v3, v1, v0

    sget-object v4, Lcom/hz/test/ui/TestArmView;->iconArmXY:[[I

    aget-object v4, v4, v0

    aget v4, v4, v7

    sget-object v5, Lcom/hz/test/ui/TestArmView;->iconArmXY:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5, v9, v9}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    nop

    :array_0
    .array-data 4
        0x262626
        0x21c3b
        0xcae4e0
        0x181818
    .end array-data

    .line 231
    :array_1
    .array-data 4
        0x4c4a4a
        0x343333
        0x343333
        0x4c4a4a
        0x343333
        0x343333
    .end array-data

    .line 235
    :array_2
    .array-data 4
        0x171717
        0x21c3b
        0xf7b551
        0xd0d0d
    .end array-data
.end method

.method public static getIconGroup(II)Lcom/hz/gui/GWindow;
    .locals 13
    .param p0, "dx"    # I
    .param p1, "dy"    # I

    .prologue
    .line 134
    const/4 v7, 0x1

    .line 135
    .local v7, "x":I
    const/4 v8, 0x1

    .line 136
    .local v8, "y":I
    const/16 v0, 0xa

    .line 137
    .local v0, "cols":I
    const/4 v4, 0x3

    .line 138
    .local v4, "rows":I
    new-instance v6, Lcom/hz/gui/GWindow;

    const/16 v9, 0x28

    new-array v9, v9, [I

    invoke-direct {v6, v9}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 139
    .local v6, "window":Lcom/hz/gui/GWindow;
    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 140
    const/16 v9, 0xe7

    const/16 v10, 0x46

    invoke-virtual {v6, p0, p1, v9, v10}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 141
    invoke-virtual {v6}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 161
    return-object v6

    .line 144
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/16 v9, 0x28

    new-array v5, v9, [I

    .line 150
    .local v5, "vmData":[I
    new-instance v2, Lcom/hz/gui/GIcon;

    invoke-direct {v2, v5}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 151
    .local v2, "icon":Lcom/hz/gui/GIcon;
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-virtual {v2, v9}, Lcom/hz/gui/GIcon;->setFocusColorTable([I)V

    .line 152
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v10, v11}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 153
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 155
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    invoke-virtual {v2, v9}, Lcom/hz/gui/GIcon;->setFocusColorTable([I)V

    .line 156
    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_4

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/hz/gui/GIcon;->setLineColorTable([IZ)V

    .line 157
    mul-int/lit8 v9, v3, 0x17

    add-int/2addr v9, v7

    mul-int/lit8 v10, v1, 0x17

    add-int/2addr v10, v8

    const/16 v11, 0x16

    const/16 v12, 0x16

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 158
    invoke-virtual {v6, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    nop

    :array_0
    .array-data 4
        0x20373c
        0x20373c
    .end array-data

    .line 151
    :array_1
    .array-data 4
        0xa424b
        0xff
        0x83d5d
    .end array-data

    .line 152
    :array_2
    .array-data 4
        0xa424b
        0xd3e9e6
        0x83d5d
    .end array-data

    .line 155
    :array_3
    .array-data 4
        0xa424b
        0xf7b551
        0x181818
    .end array-data

    .line 156
    :array_4
    .array-data 4
        0x147e6f
        0xc5356
        0xc5356
        0x147e6f
        0xc5356
        0xc5356
    .end array-data
.end method

.method public static getMidLabel()Lcom/hz/gui/GLabel;
    .locals 7

    .prologue
    const v6, 0x866800

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 123
    new-instance v0, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 124
    .local v0, "label":Lcom/hz/gui/GPixelLabel;
    const-string v1, "\u7269\u54c1\u540d\u79f0"

    const v2, 0xfae3c4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 125
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v0, v1, v2, v5}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 127
    const/16 v1, 0x8

    new-array v1, v1, [I

    const v2, 0xd1a036

    aput v2, v1, v4

    const/4 v2, 0x1

    const v3, 0xa17d13

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v6, v1, v2

    aput v6, v1, v5

    invoke-virtual {v0, v1, v4}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 128
    const/16 v1, 0x9d

    sget v2, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    const/16 v3, 0x16

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 129
    return-object v0

    .line 125
    nop

    :array_0
    .array-data 4
        0x705600
        0xe8e1c4
        0x624b00
    .end array-data
.end method

.method public static getTopLabel()Lcom/hz/gui/GLabel;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    new-instance v0, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 83
    .local v0, "label":Lcom/hz/gui/GPixelLabel;
    const-string v1, "\u88c5\u5907"

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 84
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 86
    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x26b71

    aput v2, v1, v5

    const v2, 0x6629f

    aput v2, v1, v6

    invoke-virtual {v0, v1, v6}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 87
    sget v1, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    const/16 v2, 0x18

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 88
    return-object v0

    .line 84
    :array_0
    .array-data 4
        0x3b4b
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getTopLabelGroup()Lcom/hz/gui/GWindow;
    .locals 14

    .prologue
    const/16 v13, 0x28

    const/16 v12, 0x21

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 191
    new-array v0, v13, [I

    .line 194
    .local v0, "data":[I
    new-instance v5, Lcom/hz/gui/GWindow;

    invoke-direct {v5, v0}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 195
    .local v5, "window":Lcom/hz/gui/GWindow;
    invoke-virtual {v5}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 196
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u80cc\u53051"

    aput-object v7, v3, v6

    const-string v6, "\u80cc\u53052"

    aput-object v6, v3, v10

    const-string v6, "\u80cc\u53053"

    aput-object v6, v3, v11

    .line 197
    .local v3, "labelName":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-lt v1, v6, :cond_0

    .line 210
    return-object v5

    .line 198
    :cond_0
    new-array v4, v13, [I

    .line 203
    .local v4, "vmData":[I
    new-instance v2, Lcom/hz/gui/GPixelLabel;

    sget v6, Lcom/hz/test/ui/TestArmView;->fontHeight:I

    invoke-direct {v2, v4, v6}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 204
    .local v2, "label":Lcom/hz/gui/GPixelLabel;
    sget-object v6, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v2, v6, v11, v10, v12}, Lcom/hz/gui/GPixelLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    .line 205
    aget-object v6, v3, v1

    const v7, 0xfae3c4

    const v8, 0xffffff

    invoke-virtual {v2, v6, v7, v8, v12}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 207
    mul-int/lit8 v6, v1, 0x26

    const/16 v7, 0xb3

    const/16 v8, 0x29

    const/16 v9, 0x19

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 208
    invoke-virtual {v5, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getWindow1()Lcom/hz/gui/GWindow;
    .locals 14

    .prologue
    const/16 v13, 0x28

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 96
    new-instance v0, Lcom/hz/gui/GWindow;

    new-array v8, v13, [I

    invoke-direct {v0, v8}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 97
    .local v0, "baseWin":Lcom/hz/gui/GWindow;
    invoke-virtual {v0, v12}, Lcom/hz/gui/GWindow;->SetNeedLayout(Z)V

    .line 98
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    sget-object v9, Lcom/hz/test/ui/TestArmView;->attrSet1:Lcom/hz/image/ImageSet;

    const/16 v10, 0x9

    invoke-virtual {v0, v8, v9, v10}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 99
    const/16 v8, 0x18

    sget v9, Lcom/hz/test/ui/TestArmView;->WINDOW_WIDTH:I

    const/16 v10, 0x85

    invoke-virtual {v0, v11, v8, v9, v10}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 101
    sget-object v8, Lcom/hz/test/ui/TestArmView;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v8, v11}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v5

    .line 102
    .local v5, "width":I
    sget-object v8, Lcom/hz/test/ui/TestArmView;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v8, v11}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v1

    .line 103
    .local v1, "height":I
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->getW()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v6, v8, 0x2

    .line 104
    .local v6, "x":I
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->getH()I

    move-result v8

    sub-int/2addr v8, v1

    div-int/lit8 v7, v8, 0x2

    .line 105
    .local v7, "y":I
    new-instance v3, Lcom/hz/gui/GGameIcon;

    new-array v8, v13, [I

    invoke-direct {v3, v8}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 106
    .local v3, "icon":Lcom/hz/gui/GGameIcon;
    sget-object v8, Lcom/hz/test/ui/TestArmView;->personSet:Lcom/hz/image/ImageSet;

    const/4 v9, 0x3

    invoke-virtual {v3, v8, v11, v9}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 107
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v8

    invoke-virtual {v3, v8, v12}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 109
    const/4 v8, -0x5

    invoke-virtual {v3, v11, v8}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 110
    invoke-virtual {v3, v6, v7, v5, v1}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 111
    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 113
    invoke-static {}, Lcom/hz/test/ui/TestArmView;->getArmIconGroup()[Lcom/hz/gui/GPixelLabel;

    move-result-object v4

    .line 114
    .local v4, "pLabel":[Lcom/hz/gui/GPixelLabel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-lt v2, v8, :cond_0

    .line 118
    return-object v0

    .line 116
    :cond_0
    aget-object v8, v4, v2

    invoke-virtual {v0, v8}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    nop

    :array_0
    .array-data 4
        0x77a88
        0x104a68
        0xa1cef0
        0x104a68
    .end array-data
.end method

.method public static getWindow2()Lcom/hz/gui/GWindow;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x28

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 166
    new-instance v2, Lcom/hz/gui/GWindow;

    new-array v4, v10, [I

    invoke-direct {v2, v4}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 167
    .local v2, "window":Lcom/hz/gui/GWindow;
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4, v11, v8}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 168
    const/16 v4, 0xcc

    const/16 v5, 0xf0

    const/16 v6, 0x60

    invoke-virtual {v2, v8, v4, v5, v6}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 170
    const/4 v4, 0x5

    invoke-static {v4, v9}, Lcom/hz/test/ui/TestArmView;->getIconGroup(II)Lcom/hz/gui/GWindow;

    move-result-object v3

    .line 172
    .local v3, "window1":Lcom/hz/gui/GWindow;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/hz/test/ui/TestArmView;->labelX:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 182
    invoke-virtual {v2, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 183
    return-object v2

    .line 174
    :cond_0
    new-instance v1, Lcom/hz/gui/GPixelLabel;

    new-array v4, v10, [I

    const/16 v5, 0xc

    invoke-direct {v1, v4, v5}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 175
    .local v1, "label":Lcom/hz/gui/GPixelLabel;
    sget-object v4, Lcom/hz/test/ui/TestArmView;->labelValue:[Ljava/lang/String;

    aget-object v4, v4, v0

    const v5, 0xffffff

    invoke-virtual {v1, v4, v5, v8, v9}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 176
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4, v11, v8}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 177
    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4, v8}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 178
    sget-object v4, Lcom/hz/test/ui/TestArmView;->labelX:[I

    aget v4, v4, v0

    sget v5, Lcom/hz/test/ui/TestArmView;->labelY:I

    sget v6, Lcom/hz/test/ui/TestArmView;->labelW:I

    sget v7, Lcom/hz/test/ui/TestArmView;->labelH:I

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 179
    invoke-virtual {v2, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    nop

    :array_0
    .array-data 4
        0x2892b0
        0x2734
        0xb7d576
    .end array-data

    .line 176
    :array_1
    .array-data 4
        0x37637c
        0x37637c
    .end array-data

    .line 177
    :array_2
    .array-data 4
        0x259db2
        0x359dda
        0x411db2
    .end array-data
.end method
