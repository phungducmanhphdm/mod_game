.class public Lcom/hz/test/ui/TestImageNumber;
.super Ljava/lang/Object;
.source "TestImageNumber.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TestGImageNumber()V
    .locals 15

    .prologue
    .line 15
    const-string v4, "/common/"

    const/16 v5, 0x7d1

    invoke-static {v4, v5}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v1

    .line 17
    .local v1, "numSet":Lcom/hz/image/ImageSet;
    const/16 v4, 0x28

    new-array v12, v4, [I

    .line 18
    .local v12, "iconData":[I
    const/4 v4, 0x2

    const/16 v5, 0xa

    aput v5, v12, v4

    .line 19
    const/4 v4, 0x3

    const/16 v5, 0x32

    aput v5, v12, v4

    .line 20
    const/4 v4, 0x4

    const/16 v5, 0x18

    aput v5, v12, v4

    .line 21
    const/4 v4, 0x5

    const/4 v5, 0x7

    aput v5, v12, v4

    .line 22
    new-instance v0, Lcom/hz/gui/GImageNumer;

    invoke-direct {v0, v12}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 23
    .local v0, "gNum":Lcom/hz/gui/GImageNumer;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;ZIIII)V

    .line 24
    const-string v4, "1300"

    invoke-virtual {v0, v4}, Lcom/hz/gui/GImageNumer;->setNumerString(Ljava/lang/String;)V

    .line 25
    const/4 v4, 0x2

    aget v4, v12, v4

    const/4 v5, 0x3

    aget v5, v12, v5

    invoke-virtual {v0, v4, v5}, Lcom/hz/gui/GImageNumer;->setPos(II)V

    .line 26
    const/16 v4, 0x64

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Lcom/hz/gui/GImageNumer;->setMinSize(II)V

    .line 27
    const/16 v4, 0x64

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Lcom/hz/gui/GImageNumer;->setSize(II)V

    .line 29
    const/16 v4, 0x28

    new-array v13, v4, [I

    .line 30
    .local v13, "iconData2":[I
    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, v12, v5

    invoke-virtual {v0}, Lcom/hz/gui/GImageNumer;->getW()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v13, v4

    .line 31
    const/4 v4, 0x3

    const/16 v5, 0x32

    aput v5, v13, v4

    .line 32
    new-instance v2, Lcom/hz/gui/GImageNumer;

    invoke-direct {v2, v13}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 33
    .local v2, "gNum2":Lcom/hz/gui/GImageNumer;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x14

    move-object v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;ZIIII)V

    .line 34
    const-string v4, "2450"

    invoke-virtual {v2, v4}, Lcom/hz/gui/GImageNumer;->setNumerString(Ljava/lang/String;)V

    .line 35
    const/4 v4, 0x2

    aget v4, v13, v4

    const/4 v5, 0x3

    aget v5, v13, v5

    invoke-virtual {v2, v4, v5}, Lcom/hz/gui/GImageNumer;->setPos(II)V

    .line 36
    const/16 v4, 0x64

    const/16 v5, 0x1e

    invoke-virtual {v2, v4, v5}, Lcom/hz/gui/GImageNumer;->setMinSize(II)V

    .line 37
    const/16 v4, 0x64

    const/16 v5, 0x1e

    invoke-virtual {v2, v4, v5}, Lcom/hz/gui/GImageNumer;->setSize(II)V

    .line 39
    const/16 v4, 0x28

    new-array v14, v4, [I

    .line 40
    .local v14, "iconData3":[I
    const/4 v4, 0x2

    const/16 v5, 0x14

    aput v5, v14, v4

    .line 41
    const/4 v4, 0x3

    const/16 v5, 0x46

    aput v5, v14, v4

    .line 42
    new-instance v3, Lcom/hz/gui/GImageNumer;

    invoke-direct {v3, v14}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 43
    .local v3, "gNum3":Lcom/hz/gui/GImageNumer;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;ZIIII)V

    .line 44
    const-string v4, "0123456789"

    invoke-virtual {v3, v4}, Lcom/hz/gui/GImageNumer;->setNumerString(Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x2

    aget v4, v14, v4

    const/4 v5, 0x3

    aget v5, v14, v5

    invoke-virtual {v3, v4, v5}, Lcom/hz/gui/GImageNumer;->setPos(II)V

    .line 46
    const/16 v4, 0xc8

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5}, Lcom/hz/gui/GImageNumer;->setMinSize(II)V

    .line 47
    const/16 v4, 0xc8

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5}, Lcom/hz/gui/GImageNumer;->setSize(II)V

    .line 49
    const/16 v4, 0x28

    new-array v11, v4, [I

    .line 50
    .local v11, "containerData":[I
    new-instance v10, Lcom/hz/gui/GContainer;

    invoke-direct {v10, v11}, Lcom/hz/gui/GContainer;-><init>([I)V

    .line 51
    .local v10, "container":Lcom/hz/gui/GContainer;
    invoke-virtual {v10, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 52
    invoke-virtual {v10, v2}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 53
    invoke-virtual {v10, v3}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 54
    invoke-static {v10}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 55
    return-void
.end method
