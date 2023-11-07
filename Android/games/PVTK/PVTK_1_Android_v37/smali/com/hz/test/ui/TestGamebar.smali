.class public Lcom/hz/test/ui/TestGamebar;
.super Ljava/lang/Object;
.source "TestGamebar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static testCase1()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0x57

    const/16 v10, 0xb

    const/16 v9, 0x15

    const/16 v8, 0x14

    .line 12
    new-array v3, v9, [I

    .line 13
    .local v3, "panelData":[I
    new-instance v2, Lcom/hz/gui/GLinePanel;

    invoke-direct {v2, v3}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 15
    .local v2, "panel":Lcom/hz/gui/GLinePanel;
    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 16
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x2992b0

    aput v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 19
    new-array v0, v9, [I

    .line 20
    .local v0, "barData":[I
    new-instance v1, Lcom/hz/gui/GGameBar;

    invoke-direct {v1, v0}, Lcom/hz/gui/GGameBar;-><init>([I)V

    .line 21
    .local v1, "gameBar":Lcom/hz/gui/GGameBar;
    invoke-virtual {v1, v8, v8, v12, v10}, Lcom/hz/gui/GGameBar;->setBounds(IIII)V

    .line 23
    const v4, 0x42d7dc

    const/16 v5, 0x364c

    const/16 v6, 0x3f50

    invoke-virtual {v1, v4, v5, v6}, Lcom/hz/gui/GGameBar;->setBgColor(III)V

    .line 24
    const v4, 0xf4aa63

    const v5, 0xf00202

    const v6, 0xbb1d11

    invoke-virtual {v1, v4, v5, v6}, Lcom/hz/gui/GGameBar;->setFgColor(III)V

    .line 26
    const/16 v4, 0xbb

    invoke-virtual {v1, v4, v11}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 27
    invoke-virtual {v2, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 31
    new-array v0, v9, [I

    .line 32
    new-instance v1, Lcom/hz/gui/GGameBar;

    .end local v1    # "gameBar":Lcom/hz/gui/GGameBar;
    invoke-direct {v1, v0}, Lcom/hz/gui/GGameBar;-><init>([I)V

    .line 33
    .restart local v1    # "gameBar":Lcom/hz/gui/GGameBar;
    const/16 v4, 0x28

    invoke-virtual {v1, v8, v4, v12, v10}, Lcom/hz/gui/GGameBar;->setBounds(IIII)V

    .line 34
    const v4, 0x42d7dc

    const/16 v5, 0x364c

    const/16 v6, 0x3f50

    invoke-virtual {v1, v4, v5, v6}, Lcom/hz/gui/GGameBar;->setBgColor(III)V

    .line 35
    const v4, 0x65d3f7

    const v5, 0x261f0

    const v6, 0x9459f

    invoke-virtual {v1, v4, v5, v6}, Lcom/hz/gui/GGameBar;->setFgColor(III)V

    .line 37
    const/16 v4, 0xbb

    invoke-virtual {v1, v4, v11}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 38
    invoke-virtual {v2, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 42
    new-array v0, v9, [I

    .line 43
    new-instance v1, Lcom/hz/gui/GGameBar;

    .end local v1    # "gameBar":Lcom/hz/gui/GGameBar;
    invoke-direct {v1, v0}, Lcom/hz/gui/GGameBar;-><init>([I)V

    .line 44
    .restart local v1    # "gameBar":Lcom/hz/gui/GGameBar;
    const/16 v4, 0x3c

    invoke-virtual {v1, v8, v4, v12, v10}, Lcom/hz/gui/GGameBar;->setBounds(IIII)V

    .line 45
    const v4, 0x42d7dc

    const/16 v5, 0x364c

    const/16 v6, 0x3f50

    invoke-virtual {v1, v4, v5, v6}, Lcom/hz/gui/GGameBar;->setBgColor(III)V

    .line 46
    const v4, 0xd8f463

    const v5, 0xf0a802

    const v6, 0xac7c0d

    invoke-virtual {v1, v4, v5, v6}, Lcom/hz/gui/GGameBar;->setFgColor(III)V

    .line 47
    const/16 v4, 0xbb

    invoke-virtual {v1, v4, v11}, Lcom/hz/gui/GGameBar;->setValue(II)V

    .line 48
    invoke-virtual {v2, v1}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 51
    invoke-virtual {v2}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 52
    invoke-virtual {v2}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 54
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 55
    return-void
.end method
