.class public Lcom/hz/test/ui/TestArmCompareView;
.super Ljava/lang/Object;
.source "TestArmCompareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hz/test/ui/TestArmCompareView$ArmInfo;
    }
.end annotation


# static fields
.field static WINDOW_HEIGHT:I

.field static WINDOW_WIDTH:I

.field static armDetail:Ljava/lang/String;

.field static attrSet1:Lcom/hz/image/ImageSet;

.field static attrSet2:Lcom/hz/image/ImageSet;

.field static buttomName:[Ljava/lang/String;

.field static currentPage:I

.field static fontHeight:I

.field static personSet:Lcom/hz/image/ImageSet;

.field static totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 24
    const/16 v0, 0xf0

    sput v0, Lcom/hz/test/ui/TestArmCompareView;->WINDOW_WIDTH:I

    .line 25
    const/16 v0, 0x140

    sput v0, Lcom/hz/test/ui/TestArmCompareView;->WINDOW_HEIGHT:I

    .line 27
    const/16 v0, 0xc

    sput v0, Lcom/hz/test/ui/TestArmCompareView;->fontHeight:I

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/hz/test/ui/TestArmCompareView;->armDetail:Ljava/lang/String;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u88c5\u5907"

    aput-object v2, v0, v1

    const-string v1, "\u5b9d\u77f3\u9576\u5d4c"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\u4e22\u5f03"

    aput-object v2, v0, v1

    const-string v1, "\u88c5\u5907\u6bd4\u8f83"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "\u79fb\u52a8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hz/test/ui/TestArmCompareView;->buttomName:[Ljava/lang/String;

    .line 35
    sput v3, Lcom/hz/test/ui/TestArmCompareView;->currentPage:I

    .line 36
    sput v4, Lcom/hz/test/ui/TestArmCompareView;->totalPage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestArmCompareView1()V
    .locals 16

    .prologue
    const/16 v15, 0xc8

    const/16 v5, 0x64

    .line 39
    const-string v2, "/common/"

    invoke-static {v2, v5}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v2

    sput-object v2, Lcom/hz/test/ui/TestArmCompareView;->attrSet1:Lcom/hz/image/ImageSet;

    .line 40
    const-string v2, "/common/"

    const/16 v3, 0x65

    invoke-static {v2, v3}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v2

    sput-object v2, Lcom/hz/test/ui/TestArmCompareView;->attrSet2:Lcom/hz/image/ImageSet;

    .line 41
    const-string v2, "/common/"

    const/16 v3, 0x66

    invoke-static {v2, v3}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v2

    sput-object v2, Lcom/hz/test/ui/TestArmCompareView;->personSet:Lcom/hz/image/ImageSet;

    .line 43
    new-instance v0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;

    const-string v1, "\u96ea\u72d0\u5251"

    const-string v2, "00"

    const-string v3, "\u5251"

    const/16 v4, 0xa

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 44
    .local v0, "armCurrent":Lcom/hz/test/ui/TestArmCompareView$ArmInfo;
    new-instance v1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;

    const-string v2, "\u65e0\u53cc\u5251"

    const-string v3, "02"

    const-string v4, "\u5251"

    const/16 v5, 0x14

    const/16 v6, 0x32

    move v7, v15

    move v8, v15

    move v9, v15

    move v10, v15

    move v11, v15

    invoke-direct/range {v1 .. v11}, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 45
    .local v1, "armAfter":Lcom/hz/test/ui/TestArmCompareView$ArmInfo;
    invoke-static {v0, v1}, Lcom/hz/test/ui/TestArmCompareView;->setArmCompareData(Lcom/hz/test/ui/TestArmCompareView$ArmInfo;Lcom/hz/test/ui/TestArmCompareView$ArmInfo;)V

    .line 47
    new-instance v12, Lcom/hz/gui/GWindow;

    const/16 v2, 0x28

    new-array v2, v2, [I

    invoke-direct {v12, v2}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 48
    .local v12, "baseWin":Lcom/hz/gui/GWindow;
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v3, Lcom/hz/test/ui/TestArmCompareView;->WINDOW_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 49
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v4, Lcom/hz/test/ui/TestArmCompareView;->WINDOW_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 50
    sget v4, Lcom/hz/test/ui/TestArmCompareView;->WINDOW_WIDTH:I

    sget v5, Lcom/hz/test/ui/TestArmCompareView;->WINDOW_HEIGHT:I

    .line 48
    invoke-virtual {v12, v2, v3, v4, v5}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 51
    invoke-static {}, Lcom/hz/test/ui/TestArmCompareView;->getTopWindow()Lcom/hz/gui/GWindow;

    move-result-object v14

    .line 53
    .local v14, "window1":Lcom/hz/gui/GWindow;
    sget-object v2, Lcom/hz/test/ui/TestArmCompareView;->buttomName:[Ljava/lang/String;

    invoke-static {v2}, Lcom/hz/test/ui/TestArmCompareView;->getButtomGroup([Ljava/lang/String;)Lcom/hz/gui/GWindow;

    move-result-object v13

    .line 54
    .local v13, "buttomWin":Lcom/hz/gui/GWindow;
    const/16 v2, 0x9

    const/16 v3, 0xe6

    invoke-virtual {v13, v2, v3}, Lcom/hz/gui/GWindow;->setPos(II)V

    .line 55
    invoke-virtual {v12, v13}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 56
    invoke-virtual {v12, v14}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 58
    invoke-virtual {v12}, Lcom/hz/gui/GWindow;->layout()V

    .line 59
    invoke-virtual {v12}, Lcom/hz/gui/GWindow;->setAbs()V

    .line 60
    invoke-static {v12}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 61
    return-void
.end method

.method public static getButtomGroup([Ljava/lang/String;)Lcom/hz/gui/GWindow;
    .locals 21
    .param p0, "buttomName"    # [Ljava/lang/String;

    .prologue
    .line 178
    const/4 v6, 0x3

    .line 179
    .local v6, "cols":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    div-int v10, v17, v6

    .line 180
    .local v10, "rows":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    rem-int v17, v17, v6

    if-eqz v17, :cond_0

    .line 181
    add-int/lit8 v10, v10, 0x1

    .line 183
    :cond_0
    const/16 v5, 0x3c

    .local v5, "buttomW":I
    const/16 v4, 0x19

    .line 184
    .local v4, "buttomH":I
    const/16 v12, 0x15

    .local v12, "spaceW":I
    const/4 v11, 0x3

    .line 185
    .local v11, "spaceH":I
    const/16 v15, 0xde

    .line 186
    .local v15, "winW":I
    mul-int/lit8 v17, v10, 0x1c

    sub-int v14, v17, v11

    .line 187
    .local v14, "winH":I
    new-instance v16, Lcom/hz/gui/GWindow;

    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 188
    .local v16, "window":Lcom/hz/gui/GWindow;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 189
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v10, :cond_1

    .line 208
    return-object v16

    .line 191
    :cond_1
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-lt v8, v6, :cond_3

    .line 189
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 193
    :cond_3
    mul-int v17, v7, v6

    add-int v17, v17, v8

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 195
    const/16 v17, 0x28

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 198
    .local v13, "vmData":[I
    new-instance v9, Lcom/hz/gui/GPixelLabel;

    sget v17, Lcom/hz/test/ui/TestArmCompareView;->fontHeight:I

    move/from16 v0, v17

    invoke-direct {v9, v13, v0}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 199
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

    .line 200
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

    .line 201
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/gui/GPixelLabel;->setFocusColorTable([I)V

    .line 202
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 203
    mul-int/lit8 v17, v8, 0x51

    mul-int/lit8 v18, v7, 0x1c

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1, v5, v4}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 204
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 200
    nop

    :array_0
    .array-data 4
        0x48cb0
        0x2734
    .end array-data

    .line 201
    :array_1
    .array-data 4
        0x85b912
        0x2734
    .end array-data

    .line 202
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

.method public static getPersonCompare()Lcom/hz/gui/GLinePanel;
    .locals 13

    .prologue
    .line 126
    new-instance v6, Lcom/hz/gui/GLinePanel;

    const/16 v9, 0x28

    new-array v9, v9, [I

    invoke-direct {v6, v9}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 127
    .local v6, "linePanel":Lcom/hz/gui/GLinePanel;
    const/4 v9, 0x4

    const/4 v10, 0x2

    const/16 v11, 0xe2

    const/16 v12, 0x4f

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 128
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->personSet:Lcom/hz/image/ImageSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v8

    .line 129
    .local v8, "width":I
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->personSet:Lcom/hz/image/ImageSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v2

    .line 130
    .local v2, "height":I
    new-instance v3, Lcom/hz/gui/GGameIcon;

    const/16 v9, 0x28

    new-array v9, v9, [I

    invoke-direct {v3, v9}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 131
    .local v3, "icon":Lcom/hz/gui/GGameIcon;
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->personSet:Lcom/hz/image/ImageSet;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v3, v9, v10, v11}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 132
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 133
    const/4 v9, 0x0

    const/4 v10, -0x5

    invoke-virtual {v3, v9, v10}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 134
    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v8, v2}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 136
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->attrSet2:Lcom/hz/image/ImageSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v1

    .line 137
    .local v1, "arrowW":I
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->attrSet2:Lcom/hz/image/ImageSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v0

    .line 138
    .local v0, "arrowH":I
    const/16 v9, 0x28

    new-array v7, v9, [I

    .line 141
    .local v7, "vmData2":[I
    new-instance v5, Lcom/hz/gui/GIcon;

    invoke-direct {v5, v7}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 142
    .local v5, "iconRight":Lcom/hz/gui/GIcon;
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->attrSet2:Lcom/hz/image/ImageSet;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 143
    invoke-virtual {v6}, Lcom/hz/gui/GLinePanel;->getW()I

    move-result v9

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6}, Lcom/hz/gui/GLinePanel;->getH()I

    move-result v10

    sub-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v5, v9, v10, v1, v0}, Lcom/hz/gui/GIcon;->setBounds(IIII)V

    .line 145
    new-instance v4, Lcom/hz/gui/GGameIcon;

    const/16 v9, 0x28

    new-array v9, v9, [I

    invoke-direct {v4, v9}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 146
    .local v4, "icon1":Lcom/hz/gui/GGameIcon;
    sget-object v9, Lcom/hz/test/ui/TestArmCompareView;->personSet:Lcom/hz/image/ImageSet;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v4, v9, v10, v11}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 147
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v9}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 148
    const/4 v9, 0x0

    const/4 v10, -0x5

    invoke-virtual {v4, v9, v10}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 149
    rsub-int v9, v8, 0xe2

    add-int/lit8 v9, v9, -0xf

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v8, v2}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 151
    invoke-virtual {v6, v3}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 152
    invoke-virtual {v6, v4}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 153
    invoke-virtual {v6, v5}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 154
    return-object v6
.end method

.method public static getTextArea()Lcom/hz/gui/GTextArea;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 159
    const/16 v2, 0x28

    new-array v0, v2, [I

    .line 166
    .local v0, "data":[I
    new-instance v1, Lcom/hz/gui/GTextArea;

    invoke-direct {v1, v0}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 167
    .local v1, "text":Lcom/hz/gui/GTextArea;
    const/4 v2, 0x3

    const/16 v3, 0x53

    const/16 v4, 0xe2

    const/16 v5, 0x74

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hz/gui/GTextArea;->setBounds(IIII)V

    .line 168
    const/16 v2, 0x8

    const/16 v3, 0x11

    invoke-virtual {v1, v8, v8, v2, v3}, Lcom/hz/gui/GTextArea;->setBorder(IIII)V

    .line 169
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v6, v2, v6, v3}, Lcom/hz/gui/GScrollBar;->getScrollBar(IIII)Lcom/hz/gui/GScrollBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/gui/GTextArea;->addScrollBar(Lcom/hz/gui/GScrollBar;)V

    .line 170
    const v2, 0xb4b4b4

    invoke-virtual {v1, v2}, Lcom/hz/gui/GTextArea;->setLineColor(I)V

    .line 171
    sget-object v2, Lcom/hz/test/ui/TestArmCompareView;->armDetail:Ljava/lang/String;

    const v3, 0x214570

    invoke-virtual {v1, v2, v3}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;I)V

    .line 172
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    sget-object v3, Lcom/hz/test/ui/TestArmCompareView;->attrSet1:Lcom/hz/image/ImageSet;

    invoke-virtual {v1, v2, v3, v7}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 173
    return-object v1

    .line 172
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

    .line 116
    new-instance v0, Lcom/hz/gui/GPixelLabel;

    const/16 v1, 0x28

    new-array v1, v1, [I

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hz/gui/GPixelLabel;-><init>([II)V

    .line 117
    .local v0, "label":Lcom/hz/gui/GPixelLabel;
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/hz/test/ui/TestArmCompareView;->attrSet1:Lcom/hz/image/ImageSet;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hz/gui/GPixelLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    .line 118
    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x26b71

    aput v2, v1, v5

    const v2, 0x6629f

    aput v2, v1, v6

    invoke-virtual {v0, v1, v6}, Lcom/hz/gui/GPixelLabel;->setLineColorTable([IZ)V

    .line 119
    const/16 v1, 0xe8

    const/16 v2, 0x16

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/hz/gui/GPixelLabel;->setBounds(IIII)V

    .line 120
    return-object v0

    .line 117
    :array_0
    .array-data 4
        0x3b4b
        0x5c5a41
        0x73ada6
    .end array-data
.end method

.method public static getTopWindow()Lcom/hz/gui/GWindow;
    .locals 10

    .prologue
    const/16 v9, 0xe8

    const/16 v8, 0x28

    const/4 v7, 0x0

    .line 95
    new-instance v3, Lcom/hz/gui/GWindow;

    new-array v5, v8, [I

    invoke-direct {v3, v5}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 97
    .local v3, "window":Lcom/hz/gui/GWindow;
    const/4 v5, 0x3

    const/16 v6, 0xee

    invoke-virtual {v3, v5, v7, v9, v6}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 99
    invoke-static {}, Lcom/hz/test/ui/TestArmCompareView;->getTopLabel()Lcom/hz/gui/GPixelLabel;

    move-result-object v1

    .line 101
    .local v1, "plabel":Lcom/hz/gui/GPixelLabel;
    new-instance v4, Lcom/hz/gui/GWindow;

    new-array v5, v8, [I

    invoke-direct {v4, v5}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 102
    .local v4, "window2":Lcom/hz/gui/GWindow;
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/hz/gui/GWindow;->setData([ILcom/hz/image/ImageSet;I)V

    .line 103
    const/16 v5, 0x16

    const/16 v6, 0xcc

    invoke-virtual {v4, v7, v5, v9, v6}, Lcom/hz/gui/GWindow;->setBounds(IIII)V

    .line 105
    invoke-static {}, Lcom/hz/test/ui/TestArmCompareView;->getPersonCompare()Lcom/hz/gui/GLinePanel;

    move-result-object v0

    .line 106
    .local v0, "linePanel":Lcom/hz/gui/GLinePanel;
    invoke-static {}, Lcom/hz/test/ui/TestArmCompareView;->getTextArea()Lcom/hz/gui/GTextArea;

    move-result-object v2

    .line 107
    .local v2, "textArea2":Lcom/hz/gui/GTextArea;
    invoke-virtual {v4, v0}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 108
    invoke-virtual {v4, v2}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 110
    invoke-virtual {v3, v1}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 111
    invoke-virtual {v3, v4}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 112
    return-object v3

    .line 102
    nop

    :array_0
    .array-data 4
        0x597a7
        0xc3e9f0
    .end array-data
.end method

.method public static setArmCompareData(Lcom/hz/test/ui/TestArmCompareView$ArmInfo;Lcom/hz/test/ui/TestArmCompareView$ArmInfo;)V
    .locals 14
    .param p0, "armCurrent"    # Lcom/hz/test/ui/TestArmCompareView$ArmInfo;
    .param p1, "armAfter"    # Lcom/hz/test/ui/TestArmCompareView$ArmInfo;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    const-string v3, ""

    .line 70
    .local v3, "head":Ljava/lang/String;
    const-string v2, "/p"

    .line 71
    .local v2, "end":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->iconID:Ljava/lang/String;

    invoke-static {v8}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v9, v9}, Lcom/hz/string/PowerString;->makeItemIconString(III)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/cff0000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/p  ->  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->iconID:Ljava/lang/String;

    invoke-static {v8}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v9, v9}, Lcom/hz/string/PowerString;->makeItemIconString(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/c00ff00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/p\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 72
    const-string v8, "\u6b66\u5668\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  ->  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 73
    const-string v8, "\u7b49\u7ea7\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->needLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  ->  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->needLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/hz/test/ui/TestArmCompareView;->armDetail:Ljava/lang/String;

    .line 75
    const/4 v7, 0x6

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "\u751f\u547d\uff1a"

    aput-object v7, v5, v9

    const-string v7, "\u901f\u5ea6\uff1a"

    aput-object v7, v5, v10

    const-string v7, "\u7269\u653b\uff1a"

    aput-object v7, v5, v11

    const-string v7, "\u7269\u9632\uff1a"

    aput-object v7, v5, v12

    const-string v7, "\u9b54\u653b\uff1a"

    aput-object v7, v5, v13

    const/4 v7, 0x5

    const-string v8, "\u9b54\u9632\uff1a"

    aput-object v8, v5, v7

    .line 76
    .local v5, "name":[Ljava/lang/String;
    const/4 v7, 0x6

    new-array v1, v7, [I

    iget v7, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addHP:I

    aput v7, v1, v9

    iget v7, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addSP:I

    aput v7, v1, v10

    iget v7, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addAP:I

    aput v7, v1, v11

    .line 77
    iget v7, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addAD:I

    aput v7, v1, v12

    iget v7, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addMP:I

    aput v7, v1, v13

    const/4 v7, 0x5

    iget v8, p0, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addMD:I

    aput v8, v1, v7

    .line 78
    .local v1, "armCurrentInfo":[I
    const/4 v7, 0x6

    new-array v0, v7, [I

    iget v7, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addHP:I

    aput v7, v0, v9

    iget v7, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addSP:I

    aput v7, v0, v10

    iget v7, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addAP:I

    aput v7, v0, v11

    .line 79
    iget v7, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addAD:I

    aput v7, v0, v12

    iget v7, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addMP:I

    aput v7, v0, v13

    const/4 v7, 0x5

    iget v8, p1, Lcom/hz/test/ui/TestArmCompareView$ArmInfo;->addMD:I

    aput v8, v0, v7

    .line 81
    .local v0, "armAfterInfo":[I
    const-string v6, ""

    .line 82
    .local v6, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v5

    if-lt v4, v7, :cond_0

    .line 92
    return-void

    .line 84
    :cond_0
    aget v7, v1, v4

    aget v8, v0, v4

    if-le v7, v8, :cond_1

    .line 85
    const-string v3, "/cff0000"

    .line 88
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v5, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  ->  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    sget-object v7, Lcom/hz/test/ui/TestArmCompareView;->armDetail:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/hz/test/ui/TestArmCompareView;->armDetail:Ljava/lang/String;

    .line 90
    const-string v6, ""

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v3, "/c00ff00"

    goto :goto_1
.end method
