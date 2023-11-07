.class public Lcom/hz/test/ui/TestCreatePerson;
.super Ljava/lang/Object;
.source "TestCreatePerson.java"


# static fields
.field static WINDOW_HEIGHT:I

.field static WINDOW_WIDTH:I

.field static attrSet1:Lcom/hz/image/ImageSet;

.field static labelPanel:[[I

.field static labelSelectColor:[I

.field static labelSelectColor2:[I

.field static labelSelectName:[[Ljava/lang/String;

.field static labelSelectXY:[[[I

.field static labelUnSelectColor:[I

.field static labelUnSelectName:[Ljava/lang/String;

.field static labelUnSelectXY:I

.field static personSet:Lcom/hz/image/ImageSet;

.field static textAreaWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 22
    const/16 v0, 0xf0

    sput v0, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    .line 23
    const/16 v0, 0x140

    sput v0, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_HEIGHT:I

    .line 26
    const/16 v0, 0xd

    sput v0, Lcom/hz/test/ui/TestCreatePerson;->labelUnSelectXY:I

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v4, [[I

    new-array v2, v8, [I

    const/16 v3, 0x38

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [I

    const/16 v3, 0x8a

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 28
    new-array v1, v4, [[I

    new-array v2, v8, [I

    const/16 v3, 0x38

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [I

    const/16 v3, 0x8a

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 29
    new-array v1, v4, [[I

    new-array v2, v8, [I

    const/16 v3, 0x38

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [I

    const/16 v3, 0x8a

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 30
    new-array v1, v7, [[I

    new-array v2, v8, [I

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [I

    const/16 v3, 0x5c

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [I

    const/16 v3, 0x96

    aput v3, v2, v5

    const/16 v3, 0x37

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    .line 31
    new-array v1, v6, [[I

    new-array v2, v8, [I

    const/16 v3, 0x28

    aput v3, v2, v5

    const/16 v3, 0xa0

    aput v3, v2, v4

    const/16 v3, 0x15

    aput v3, v2, v7

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    .line 27
    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    .line 33
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u6027\u522b:"

    aput-object v1, v0, v5

    const-string v1, "\u79cd\u65cf:"

    aput-object v1, v0, v6

    const-string v1, "\u804c\u4e1a:"

    aput-object v1, v0, v4

    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelUnSelectName:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u7537"

    aput-object v2, v1, v5

    const-string v2, "\u5973"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u4e1c\u65b9"

    aput-object v2, v1, v5

    const-string v2, "\u897f\u65b9"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 35
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u6218\u58eb"

    aput-object v2, v1, v5

    const-string v2, "\u5deb\u5e08"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u9020\u578b1"

    aput-object v2, v1, v5

    const-string v2, "\u9020\u578b2"

    aput-object v2, v1, v6

    const-string v2, "\u9020\u578b3"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u521b\u5efa\u89d2\u8272"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    .line 34
    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelSelectName:[[Ljava/lang/String;

    .line 39
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelUnSelectColor:[I

    .line 41
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelSelectColor:[I

    .line 42
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelSelectColor2:[I

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/4 v2, 0x6

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [I

    const/16 v2, 0x1d

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const/16 v2, 0x34

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const/16 v2, 0x4b

    aput v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    const/16 v2, 0x62

    aput v2, v1, v6

    aput-object v1, v0, v8

    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->labelPanel:[[I

    .line 49
    const-string v0, "\u975e\u6253\u6b7b\u4e86\u79d1\u6280\u53d1\u8fbe\u9001\uff0c\u90fd\u53d1\u751f\u975e\u8fc7\u70ed\u963f\u560e\uff0c\u8303\u5fb7\u8428\u5206\u521a\u7684\u5065\u5eb7\u7684\u623f\u95f4\u5361\u514b\u83b1\u5fb7\u66fc\uff0c\u53d1\u751f\u8fc7\uff0c\u8303\u5fb7\u8428\u5206\u5065\u5eb7\u3002"

    sput-object v0, Lcom/hz/test/ui/TestCreatePerson;->textAreaWord:Ljava/lang/String;

    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0xbaf1fb
        0x1c5470
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0xffffff
        0x2645a0
    .end array-data

    .line 42
    :array_2
    .array-data 4
        0xfae3c4
        0x4b00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestCreatePerson1()V
    .locals 9

    .prologue
    .line 52
    const-string v5, "/common/"

    const/16 v6, 0x64

    invoke-static {v5, v6}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v5

    sput-object v5, Lcom/hz/test/ui/TestCreatePerson;->attrSet1:Lcom/hz/image/ImageSet;

    .line 53
    const-string v5, "/common/"

    const/16 v6, 0x69

    invoke-static {v5, v6}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v5

    sput-object v5, Lcom/hz/test/ui/TestCreatePerson;->personSet:Lcom/hz/image/ImageSet;

    .line 54
    new-instance v0, Lcom/hz/gui/GLinePanel;

    const/16 v5, 0x28

    new-array v5, v5, [I

    invoke-direct {v0, v5}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 55
    .local v0, "basePanel":Lcom/hz/gui/GLinePanel;
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 56
    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v7, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_HEIGHT:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 57
    sget v7, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    sget v8, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_HEIGHT:I

    .line 55
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 58
    invoke-static {}, Lcom/hz/test/ui/TestCreatePerson;->getWindow1()Lcom/hz/gui/GLinePanel;

    move-result-object v1

    .line 59
    .local v1, "linePanel1":Lcom/hz/gui/GLinePanel;
    invoke-static {}, Lcom/hz/test/ui/TestCreatePerson;->getWindow2()Lcom/hz/gui/GLinePanel;

    move-result-object v2

    .line 60
    .local v2, "linePanel2":Lcom/hz/gui/GLinePanel;
    invoke-static {}, Lcom/hz/test/ui/TestCreatePerson;->getTopLabel()Lcom/hz/gui/GLabel;

    move-result-object v4

    .line 61
    .local v4, "topLabel":Lcom/hz/gui/GLabel;
    invoke-static {}, Lcom/hz/test/ui/TestCreatePerson;->getWindow3()Lcom/hz/gui/GTextArea;

    move-result-object v3

    .line 62
    .local v3, "textarea":Lcom/hz/gui/GTextArea;
    invoke-virtual {v0, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 64
    invoke-virtual {v0, v4}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 68
    invoke-virtual {v0}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 69
    invoke-virtual {v0}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 71
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 72
    return-void
.end method

.method public static getTopLabel()Lcom/hz/gui/GLabel;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 76
    new-instance v0, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 77
    .local v0, "label":Lcom/hz/gui/GPixelLabel;
    const-string v1, "\u521b\u5efa\u4eba\u7269"

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 78
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestCreatePerson;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 79
    const/16 v1, 0x172f

    invoke-virtual {v0, v1}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 80
    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x26b71

    aput v2, v1, v5

    const/4 v2, 0x1

    const v3, 0x6629f

    aput v3, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 81
    sget v1, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    const/16 v2, 0x18

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 82
    return-object v0

    .line 78
    nop

    :array_0
    .array-data 4
        0x3b4b
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getWindow1()Lcom/hz/gui/GLinePanel;
    .locals 12

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 87
    new-instance v2, Lcom/hz/gui/GLinePanel;

    new-array v6, v11, [I

    invoke-direct {v2, v6}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 88
    .local v2, "linePanel":Lcom/hz/gui/GLinePanel;
    invoke-virtual {v2, v10}, Lcom/hz/gui/GLinePanel;->SetNeedLayout(Z)V

    .line 89
    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v9}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 90
    const/16 v6, 0x18

    sget v7, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    const/16 v8, 0x6a

    invoke-virtual {v2, v9, v6, v7, v8}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 92
    sget-object v6, Lcom/hz/test/ui/TestCreatePerson;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v6, v9}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v3

    .line 93
    .local v3, "width":I
    sget-object v6, Lcom/hz/test/ui/TestCreatePerson;->personSet:Lcom/hz/image/ImageSet;

    invoke-virtual {v6, v9}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    .line 94
    .local v0, "height":I
    invoke-virtual {v2}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 95
    .local v4, "x":I
    invoke-virtual {v2}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    .line 96
    .local v5, "y":I
    new-instance v1, Lcom/hz/gui/GGameIcon;

    new-array v6, v11, [I

    invoke-direct {v1, v6}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 97
    .local v1, "icon":Lcom/hz/gui/GGameIcon;
    sget-object v6, Lcom/hz/test/ui/TestCreatePerson;->personSet:Lcom/hz/image/ImageSet;

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v9, v7}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 98
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v6}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 100
    const/16 v6, -0x14

    invoke-virtual {v1, v9, v6}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 101
    invoke-virtual {v1, v4, v5, v3, v0}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 102
    invoke-virtual {v2, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 104
    return-object v2

    .line 89
    nop

    :array_0
    .array-data 4
        0x65b7b0
        0x65b7b0
    .end array-data
.end method

.method public static getWindow2()Lcom/hz/gui/GLinePanel;
    .locals 12

    .prologue
    .line 113
    new-instance v4, Lcom/hz/gui/GLinePanel;

    const/16 v7, 0x28

    new-array v7, v7, [I

    invoke-direct {v4, v7}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 114
    .local v4, "linePanel":Lcom/hz/gui/GLinePanel;
    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x2892b0

    aput v9, v7, v8

    const/4 v8, 0x1

    const v9, 0xb7d576

    aput v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 115
    const/4 v7, 0x0

    const/16 v8, 0x82

    sget v9, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    const/16 v10, 0x7a

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 116
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLinePanel;->SetNeedLayout(Z)V

    .line 118
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelPanel:[[I

    array-length v7, v7

    new-array v6, v7, [Lcom/hz/gui/GWindow;

    .line 119
    .local v6, "windowGroup":[Lcom/hz/gui/GWindow;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v6

    if-lt v0, v7, :cond_0

    .line 127
    const/4 v0, 0x0

    :goto_1
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelUnSelectName:[Ljava/lang/String;

    array-length v7, v7

    if-lt v0, v7, :cond_1

    .line 136
    const/4 v0, 0x0

    :goto_2
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelSelectName:[[Ljava/lang/String;

    array-length v7, v7

    if-lt v0, v7, :cond_2

    .line 183
    return-object v4

    .line 121
    :cond_0
    new-instance v7, Lcom/hz/gui/GWindow;

    const/16 v8, 0x28

    new-array v8, v8, [I

    invoke-direct {v7, v8}, Lcom/hz/gui/GWindow;-><init>([I)V

    aput-object v7, v6, v0

    .line 122
    aget-object v7, v6, v0

    sget-object v8, Lcom/hz/test/ui/TestCreatePerson;->labelPanel:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lcom/hz/test/ui/TestCreatePerson;->labelPanel:[[I

    aget-object v9, v9, v0

    const/4 v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    const/16 v11, 0x15

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 123
    aget-object v7, v6, v0

    invoke-virtual {v4, v7}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    new-instance v3, Lcom/hz/gui/GPixelLabel;

    const/16 v7, 0x28

    new-array v7, v7, [I

    const/16 v8, 0xc

    invoke-direct {v3, v7, v8}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 130
    .local v3, "labelUnsel":Lcom/hz/gui/GPixelLabel;
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelUnSelectName:[Ljava/lang/String;

    aget-object v7, v7, v0

    const v8, 0xbaf1fb

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 131
    const v7, 0x1c5470

    invoke-virtual {v3, v7}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 132
    sget v7, Lcom/hz/test/ui/TestCreatePerson;->labelUnSelectXY:I

    const/4 v8, 0x0

    sget-object v9, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    aget-object v9, v9, v0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    sget-object v10, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 133
    aget-object v7, v6, v0

    invoke-virtual {v7, v3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "labelUnsel":Lcom/hz/gui/GPixelLabel;
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelSelectName:[[Ljava/lang/String;

    aget-object v7, v7, v0

    array-length v7, v7

    if-lt v1, v7, :cond_3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :cond_3
    const/16 v7, 0x28

    new-array v5, v7, [I

    .line 145
    .local v5, "vmData":[I
    new-instance v2, Lcom/hz/gui/GPixelLabel;

    const/16 v7, 0xc

    invoke-direct {v2, v5, v7}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 146
    .local v2, "labelSel":Lcom/hz/gui/GPixelLabel;
    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    sget-object v8, Lcom/hz/test/ui/TestCreatePerson;->attrSet1:Lcom/hz/image/ImageSet;

    const/16 v9, 0x9

    invoke-virtual {v2, v7, v8, v9}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 147
    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 149
    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    invoke-virtual {v2, v7}, Lcom/hz/gui/GPixelLabel;->setFocusColorTable([I)V

    .line 151
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelSelectName:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    .line 152
    sget-object v8, Lcom/hz/test/ui/TestCreatePerson;->labelSelectColor:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    .line 153
    sget-object v9, Lcom/hz/test/ui/TestCreatePerson;->labelSelectColor2:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 154
    const/4 v10, 0x3

    .line 151
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/hz/gui/GPixelLabel;->setData(Ljava/lang/String;III)V

    .line 155
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelSelectColor:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Lcom/hz/gui/GPixelLabel;->setBorderColor(I)V

    .line 156
    sget-object v7, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-object v8, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    const/4 v9, 0x1

    aget v8, v8, v9

    sget-object v9, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    aget-object v9, v9, v0

    aget-object v9, v9, v1

    const/4 v10, 0x2

    aget v9, v9, v10

    sget-object v10, Lcom/hz/test/ui/TestCreatePerson;->labelSelectXY:[[[I

    aget-object v10, v10, v0

    aget-object v10, v10, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 158
    aget-object v7, v6, v0

    invoke-virtual {v7}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 160
    aget-object v7, v6, v0

    invoke-virtual {v7, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 146
    nop

    :array_0
    .array-data 4
        0x6984
        0x104a68
        0xa1cef0
        0x104a68
    .end array-data

    .line 147
    :array_1
    .array-data 4
        0xa4f1ff
        0x48da3
        0x48da3
        0xfff49e
        0xd3a000
        0xd3a000
    .end array-data

    .line 149
    :array_2
    .array-data 4
        0x7e9000
        0x104a68
        0xa1cef0
        0x104a68
    .end array-data
.end method

.method public static getWindow3()Lcom/hz/gui/GTextArea;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x5

    const/4 v5, 0x4

    .line 188
    new-instance v0, Lcom/hz/gui/GTextArea;

    const/16 v1, 0x28

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 189
    .local v0, "texta":Lcom/hz/gui/GTextArea;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/gui/GTextArea;->SetNeedLayout(Z)V

    .line 190
    const/4 v1, 0x0

    const/16 v2, 0xfc

    sget v3, Lcom/hz/test/ui/TestCreatePerson;->WINDOW_WIDTH:I

    const/16 v4, 0x44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GTextArea;->setBounds(IIII)V

    .line 191
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestCreatePerson;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v0, v1, v2, v5}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 192
    invoke-virtual {v0, v6, v6, v7, v7}, Lcom/hz/gui/GTextArea;->setBorder(IIII)V

    .line 193
    sget-object v1, Lcom/hz/test/ui/TestCreatePerson;->textAreaWord:Ljava/lang/String;

    const v2, 0x214570

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;I)V

    .line 195
    return-object v0

    .line 191
    nop

    :array_0
    .array-data 4
        0xe8f6f7
        0xb588c
        0x3ba9ce
        0xb588c
    .end array-data
.end method
