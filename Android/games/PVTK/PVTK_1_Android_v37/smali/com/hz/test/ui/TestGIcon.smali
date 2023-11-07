.class public Lcom/hz/test/ui/TestGIcon;
.super Ljava/lang/Object;
.source "TestGIcon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestGIcon1()V
    .locals 16

    .prologue
    const/4 v9, 0x0

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 50
    const/4 v4, 0x3

    .line 51
    .local v4, "dis":I
    const/16 v0, 0x1e

    .line 52
    .local v0, "x":I
    const/16 v1, 0xa

    .line 53
    .local v1, "y":I
    const/4 v2, 0x2

    .line 54
    .local v2, "rows":I
    const/16 v3, 0x8

    .line 55
    .local v3, "cols":I
    const/16 v5, 0x3e8

    .line 56
    .local v5, "imgSetID":S
    const/16 v10, 0x10

    new-array v6, v10, [S

    aput-short v12, v6, v12

    aput-short v13, v6, v13

    aput-short v14, v6, v14

    aput-short v15, v6, v15

    const/4 v10, 0x6

    aput-short v12, v6, v10

    const/4 v10, 0x7

    aput-short v13, v6, v10

    const/16 v10, 0x8

    aput-short v14, v6, v10

    const/16 v10, 0x9

    aput-short v15, v6, v10

    const/16 v10, 0xb

    aput-short v12, v6, v10

    const/16 v10, 0xc

    aput-short v13, v6, v10

    const/16 v10, 0xd

    aput-short v14, v6, v10

    const/16 v10, 0xe

    aput-short v15, v6, v10

    .line 57
    .local v6, "imgSetIndex":[S
    const/16 v7, 0x3ea

    .line 58
    .local v7, "numSetID":S
    const/16 v10, 0x10

    new-array v8, v10, [S

    fill-array-data v8, :array_0

    .line 59
    .local v8, "numSetIndex":[S
    new-array v11, v15, [I

    const v10, 0x123456

    aput v10, v11, v12

    const v10, 0x236543

    aput v10, v11, v13

    const v10, 0x888888

    aput v10, v11, v14

    .local v11, "colorTable":[I
    move v10, v9

    .line 60
    invoke-static/range {v0 .. v11}, Lcom/hz/test/ui/TestGIcon;->setIconGroup(IIIIIS[SS[SII[I)V

    .line 61
    return-void

    .line 58
    :array_0
    .array-data 2
        0x3s
        0xbs
        0x16s
        0x3s
        0x4s
        0x1s
        0x1s
        0x2s
        0x3s
        0x4s
        0x6s
        0x1s
        0x2s
        0x3s
        0x4s
        0xas
    .end array-data
.end method

.method public static setIconGroup(IIIIIS[SS[SII[I)V
    .locals 13
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "rows"    # I
    .param p3, "cols"    # I
    .param p4, "dis"    # I
    .param p5, "imgSetID"    # S
    .param p6, "imgSetIndex"    # [S
    .param p7, "numSetID"    # S
    .param p8, "numSetIndex"    # [S
    .param p9, "w"    # I
    .param p10, "h"    # I
    .param p11, "colorTable"    # [I

    .prologue
    .line 66
    const/16 v3, 0x28

    new-array v8, v3, [I

    .line 67
    .local v8, "containerData":[I
    new-instance v7, Lcom/hz/gui/GContainer;

    invoke-direct {v7, v8}, Lcom/hz/gui/GContainer;-><init>([I)V

    .line 68
    .local v7, "container":Lcom/hz/gui/GContainer;
    const-string v3, "/common/"

    move/from16 v0, p5

    invoke-static {v3, v0}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v11

    .line 70
    .local v11, "imageSet":Lcom/hz/image/ImageSet;
    const-string v3, "/common/"

    move/from16 v0, p7

    invoke-static {v3, v0}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v2

    .line 71
    .local v2, "numSet":Lcom/hz/image/ImageSet;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, p2, :cond_0

    .line 94
    invoke-static {v7}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 95
    return-void

    .line 73
    :cond_0
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move/from16 v0, p3

    if-lt v12, v0, :cond_1

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/16 v3, 0x28

    new-array v10, v3, [I

    .line 77
    .local v10, "iconData":[I
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v4

    add-int v4, v4, p4

    mul-int/2addr v4, v12

    add-int/2addr v4, p0

    aput v4, v10, v3

    .line 78
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v4

    add-int v4, v4, p4

    mul-int/2addr v4, v9

    add-int/2addr v4, p1

    aput v4, v10, v3

    .line 79
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    aput v4, v10, v3

    .line 80
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    aput v4, v10, v3

    .line 82
    new-instance v1, Lcom/hz/gui/GIcon;

    invoke-direct {v1, v10}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 83
    .local v1, "icon":Lcom/hz/gui/GIcon;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v1, v0, v3, v4}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 84
    mul-int v3, v9, p3

    add-int/2addr v3, v12

    aget-short v3, p6, v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v11, v3, v4, v5}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 85
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/hz/gui/GIcon;->setNumberData(Lcom/hz/image/ImageSet;IIII)V

    .line 86
    mul-int v3, v9, p3

    add-int/2addr v3, v12

    aget-short v3, p8, v3

    invoke-virtual {v1, v3}, Lcom/hz/gui/GIcon;->setNumber(I)V

    .line 87
    const/4 v3, 0x2

    aget v3, v10, v3

    const/4 v4, 0x3

    aget v4, v10, v4

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GIcon;->setPos(II)V

    .line 88
    const/4 v3, 0x1

    if-ne v9, v3, :cond_2

    .line 89
    const/4 v3, 0x1

    const/high16 v4, -0x71000000

    invoke-virtual {v1, v3, v4}, Lcom/hz/gui/GIcon;->setMask(ZI)V

    .line 91
    :cond_2
    invoke-virtual {v7, v1}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 73
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method
