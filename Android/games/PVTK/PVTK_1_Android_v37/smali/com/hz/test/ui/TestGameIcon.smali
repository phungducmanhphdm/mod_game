.class public Lcom/hz/test/ui/TestGameIcon;
.super Ljava/lang/Object;
.source "TestGameIcon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static testCase1()V
    .locals 15

    .prologue
    const/16 v14, 0x15

    const/16 v13, 0x14

    const/16 v10, 0xa

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 17
    new-array v5, v14, [I

    .line 18
    .local v5, "panelData":[I
    new-instance v4, Lcom/hz/gui/GLinePanel;

    invoke-direct {v4, v5}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 20
    .local v4, "panel":Lcom/hz/gui/GLinePanel;
    const/16 v8, 0xc8

    const/16 v9, 0xc8

    invoke-virtual {v4, v10, v10, v8, v9}, Lcom/hz/gui/GLinePanel;->setBounds(IIII)V

    .line 21
    new-array v8, v12, [I

    const v9, 0x2992b0

    aput v9, v8, v11

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v4, v8, v9, v10}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;I)V

    .line 24
    const-string v8, "/common/"

    const/16 v9, 0x66

    invoke-static {v8, v9}, Lcom/hz/image/ImageSet;->createImageSet(Ljava/lang/String;S)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 25
    .local v3, "imageSet":Lcom/hz/image/ImageSet;
    new-array v2, v14, [I

    .line 26
    .local v2, "iconData":[I
    new-instance v0, Lcom/hz/gui/GGameIcon;

    invoke-direct {v0, v2}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 28
    .local v0, "gameIcon":Lcom/hz/gui/GGameIcon;
    sget-object v8, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v8}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v6

    .line 30
    .local v6, "sprite":Lcom/hz/sprite/GameSprite;
    const/16 v7, 0x28

    .line 31
    .local v7, "width":I
    const/16 v1, 0x3c

    .line 32
    .local v1, "height":I
    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v3, v11}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v7

    .line 34
    invoke-virtual {v3, v11}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v1

    .line 36
    :cond_0
    invoke-virtual {v0, v13, v13, v7, v1}, Lcom/hz/gui/GGameIcon;->setBounds(IIII)V

    .line 37
    invoke-virtual {v0, v6, v12}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    .line 38
    const/4 v8, 0x3

    invoke-virtual {v0, v3, v11, v8}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    .line 39
    const/16 v8, -0xa

    invoke-virtual {v0, v11, v8}, Lcom/hz/gui/GGameIcon;->setOffsetXY(II)V

    .line 41
    invoke-virtual {v4, v0}, Lcom/hz/gui/GLinePanel;->add(Lcom/hz/gui/GWidget;)V

    .line 43
    invoke-virtual {v4}, Lcom/hz/gui/GLinePanel;->layout()V

    .line 44
    invoke-virtual {v4}, Lcom/hz/gui/GLinePanel;->setAbs()V

    .line 46
    invoke-static {v4}, Lcom/hz/ui/UIHandler;->createUI(Lcom/hz/gui/GContainer;)Lcom/hz/ui/UIHandler;

    .line 47
    return-void
.end method
