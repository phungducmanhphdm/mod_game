.class public Lcom/hz/test/ui/TestGIconLayout;
.super Ljava/lang/Object;
.source "TestGIconLayout.java"


# static fields
.field public static LAYOUTTYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/hz/test/ui/TestGIconLayout;->LAYOUTTYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static testGLabel1()V
    .locals 15

    .prologue
    .line 15
    const-string v3, "/common/"

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v14

    .line 17
    .local v14, "imageSet":Lcom/hz/image/ImageSet;
    const-string v3, "/common/"

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    .line 19
    .local v1, "numSet":Lcom/hz/image/ImageSet;
    const/16 v3, 0x3c

    new-array v12, v3, [Lcom/hz/gui/GIcon;

    .line 21
    .local v12, "iconArray":[Lcom/hz/gui/GIcon;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v3, v12

    if-lt v11, v3, :cond_0

    .line 36
    const/16 v3, 0x28

    new-array v10, v3, [I

    .line 37
    .local v10, "containerData":[I
    const/4 v3, 0x2

    const/16 v4, 0x14

    aput v4, v10, v3

    .line 38
    const/4 v3, 0x3

    const/16 v4, 0x14

    aput v4, v10, v3

    .line 39
    const/4 v3, 0x4

    const/16 v4, 0xc8

    aput v4, v10, v3

    .line 40
    const/4 v3, 0x5

    const/16 v4, 0xa0

    aput v4, v10, v3

    .line 41
    new-instance v2, Lcom/hz/gui/GContainer;

    invoke-direct {v2, v10}, Lcom/hz/gui/GContainer;-><init>([I)V

    .line 44
    .local v2, "container":Lcom/hz/gui/GContainer;
    const/4 v3, 0x4

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x2

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x4

    const/16 v8, 0xa

    .line 43
    invoke-virtual/range {v2 .. v8}, Lcom/hz/gui/GContainer;->setLayoutMode(IIIIII)V

    .line 49
    const/4 v11, 0x0

    :goto_1
    array-length v3, v12

    if-lt v11, v3, :cond_1

    .line 53
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->layout()V

    .line 54
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 55
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 56
    return-void

    .line 23
    .end local v2    # "container":Lcom/hz/gui/GContainer;
    .end local v10    # "containerData":[I
    :cond_0
    const/16 v3, 0x50

    new-array v13, v3, [I

    .line 24
    .local v13, "iconData":[I
    const/4 v3, 0x4

    const/16 v4, 0x14

    aput v4, v13, v3

    .line 25
    const/4 v3, 0x5

    const/16 v4, 0x14

    aput v4, v13, v3

    .line 27
    new-instance v0, Lcom/hz/gui/GIcon;

    invoke-direct {v0, v13}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 28
    .local v0, "icon":Lcom/hz/gui/GIcon;
    const/4 v3, 0x4

    new-array v9, v3, [I

    const/4 v3, 0x1

    const v4, 0x123456

    aput v4, v9, v3

    const/4 v3, 0x2

    const v4, 0x236543

    aput v4, v9, v3

    const/4 v3, 0x3

    const v4, 0x888888

    aput v4, v9, v3

    .line 29
    .local v9, "colorTable":[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v9, v3, v4}, Lcom/hz/gui/GIcon;->setBack([ILcom/hz/image/ImageSet;I)V

    .line 30
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v14, v3, v4, v5}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    .line 31
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/hz/gui/GIcon;->setNumberData(Lcom/hz/image/ImageSet;IIII)V

    .line 32
    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GIcon;->setNumber(I)V

    .line 33
    aput-object v0, v12, v11

    .line 21
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "icon":Lcom/hz/gui/GIcon;
    .end local v9    # "colorTable":[I
    .end local v13    # "iconData":[I
    .restart local v2    # "container":Lcom/hz/gui/GContainer;
    .restart local v10    # "containerData":[I
    :cond_1
    aget-object v3, v12, v11

    invoke-virtual {v2, v3}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 49
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
