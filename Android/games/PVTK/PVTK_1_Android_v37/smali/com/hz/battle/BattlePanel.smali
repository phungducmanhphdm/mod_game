.class public Lcom/hz/battle/BattlePanel;
.super Ljava/lang/Object;
.source "BattlePanel.java"

# interfaces
.implements Lcom/hz/ui/UIListener;


# static fields
.field public static final CURSOR_OFFSET_Y:I = 0x32

.field public static final ICON_ATTACK:B = 0x0t

.field public static final ICON_AUTO:B = 0x3t

.field public static final ICON_ESCAPE:B = 0x5t

.field public static final ICON_ITEM:B = 0x2t

.field public static final ICON_SAY:B = 0x6t

.field public static final ICON_SKILL:B = 0x1t

.field public static final ICON_STATUS:B = 0x4t

.field public static final ORDER_ATTACK:B = 0x1t

.field public static final ORDER_AUTO:B = 0x4t

.field public static final ORDER_ESCAPE:B = 0x6t

.field public static final ORDER_INFO:B = 0x5t

.field public static final ORDER_ITEM:B = 0x3t

.field public static final ORDER_NONE:B = -0x1t

.field public static final ORDER_SKILL:B = 0x2t


# instance fields
.field battle:Lcom/hz/battle/Battle;

.field battleAni:Lcom/hz/battle/BattleAniEngine;

.field cursor:B

.field cusorSprite:Lcom/hz/sprite/GameSprite;

.field hlightSprite:Lcom/hz/sprite/GameSprite;

.field isEnable:Z

.field isOrderInit:Z

.field orderIndex:B

.field orderPanelUI:Lcom/hz/ui/UIHandler;

.field orderPet:Lcom/hz/actor/Player;

.field orderPlayer:Lcom/hz/actor/Player;

.field orderPopUI:Lcom/hz/ui/UIHandler;

.field petOrderIndex:B

.field petSelectItem:Lcom/hz/core/Item;

.field petSelectSkill:Lcom/hz/core/Skill;

.field planVector:Ljava/util/Vector;

.field selectItem:Lcom/hz/core/Item;

.field selectSkill:Lcom/hz/core/Skill;

.field targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;


# direct methods
.method public constructor <init>(Lcom/hz/battle/BattleAniEngine;)V
    .locals 4
    .param p1, "_battleAni"    # Lcom/hz/battle/BattleAniEngine;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    .line 311
    iput-byte v1, p0, Lcom/hz/battle/BattlePanel;->orderIndex:B

    .line 313
    iput-byte v1, p0, Lcom/hz/battle/BattlePanel;->petOrderIndex:B

    .line 339
    iput-boolean v3, p0, Lcom/hz/battle/BattlePanel;->isOrderInit:Z

    .line 810
    iput-boolean v2, p0, Lcom/hz/battle/BattlePanel;->isEnable:Z

    .line 830
    iput-object p1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    .line 831
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->getBattle()Lcom/hz/battle/Battle;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    .line 833
    const/16 v0, 0x4b9

    invoke-static {v0}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    .line 834
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->setCursorEnable(Z)V

    .line 836
    const/16 v0, 0x4bc

    invoke-static {v0}, Lcom/hz/sprite/GameSprite;->createBattleEffSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->hlightSprite:Lcom/hz/sprite/GameSprite;

    .line 839
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    .line 840
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 842
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0, v3}, Lcom/hz/main/WorldMessage;->initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V

    .line 845
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->initOrderPopUI()V

    .line 847
    sget-boolean v0, Lcom/hz/main/GameWorld;->TAG_IS_AUTO_FIGHT_FLAG:Z

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 849
    invoke-direct {p0, v2}, Lcom/hz/battle/BattlePanel;->updateAutoFightText(Z)V

    .line 851
    sget-object v0, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 855
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    .line 856
    return-void
.end method

.method private final addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V
    .locals 4
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "window"    # Lcom/hz/gui/GWindow;
    .param p3, "lib"    # Lcom/hz/gui/GContainer;
    .param p4, "hotKey"    # I
    .param p5, "icon"    # B
    .param p6, "textIndex"    # I
    .param p7, "eventType"    # I

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-virtual {p3}, Lcom/hz/gui/GContainer;->getClone()Lcom/hz/gui/GWidget;

    move-result-object p3

    .end local p3    # "lib":Lcom/hz/gui/GContainer;
    check-cast p3, Lcom/hz/gui/GContainer;

    .line 89
    .restart local p3    # "lib":Lcom/hz/gui/GContainer;
    const/16 v2, 0x16

    invoke-virtual {p3, v2}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GIcon;

    .line 91
    .local v0, "gicon":Lcom/hz/gui/GIcon;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p4}, Lcom/hz/gui/GIcon;->setIconIndex(I)V

    .line 95
    :cond_1
    const/16 v2, 0x17

    invoke-virtual {p3, v2}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .end local v0    # "gicon":Lcom/hz/gui/GIcon;
    check-cast v0, Lcom/hz/gui/GIcon;

    .line 96
    .restart local v0    # "gicon":Lcom/hz/gui/GIcon;
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0, p5}, Lcom/hz/gui/GIcon;->setIconIndex(I)V

    .line 100
    :cond_2
    const/16 v2, 0x18

    invoke-virtual {p3, v2}, Lcom/hz/gui/GContainer;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GLabel;

    .line 101
    .local v1, "label":Lcom/hz/gui/GLabel;
    if-eqz v1, :cond_5

    .line 104
    const/16 v2, 0x94

    if-eq p6, v2, :cond_3

    const/16 v2, 0x95

    if-eq p6, v2, :cond_3

    const/16 v2, 0x9e

    if-ne p6, v2, :cond_4

    .line 105
    :cond_3
    invoke-virtual {p3}, Lcom/hz/gui/GContainer;->getMinW()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/gui/GLabel;->setW(I)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/hz/gui/GLabel;->getY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/hz/gui/GLabel;->setPos(II)V

    .line 107
    const/4 v2, 0x3

    iput v2, v1, Lcom/hz/gui/GLabel;->anchor:I

    .line 110
    :cond_4
    invoke-static {p6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 114
    :cond_5
    invoke-virtual {p3, p7}, Lcom/hz/gui/GContainer;->setEventType(I)V

    .line 116
    invoke-virtual {p2, p3}, Lcom/hz/gui/GWindow;->add(Lcom/hz/gui/GWidget;)V

    .line 117
    return-void
.end method

.method private addPlan(B[B)V
    .locals 1
    .param p1, "pos"    # B
    .param p2, "plan"    # [B

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0, p1, p2}, Lcom/hz/battle/Battle;->setPlan(I[B)V

    .line 255
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final checkBackGWidgetShow(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 865
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 869
    .local v0, "backGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0, p1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0
.end method

.method private final checkSkipAnimeGWidgetShow(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 883
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0x3a4

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 887
    .local v0, "gw":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_2

    .line 888
    invoke-virtual {v0, p1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 900
    :cond_2
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0x2c37

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_0

    .line 902
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 903
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0

    .line 905
    :cond_3
    sget-boolean v1, Lcom/hz/main/GameWorld;->TAG_IS_AUTO_FIGHT_FLAG:Z

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0
.end method

.method private final doAutoFight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1514
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0}, Lcom/hz/battle/Battle;->isRemoteWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0}, Lcom/hz/battle/Battle;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    :cond_2
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v0

    if-nez v0, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1538
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1550
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1552
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v0

    if-nez v0, :cond_4

    .line 1553
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    invoke-direct {p0, v0}, Lcom/hz/battle/BattlePanel;->isUseSkillInitiative(Lcom/hz/actor/Player;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1554
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1558
    :cond_4
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->updatePlayerHpMpInfo()V

    .line 1559
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->doPlanData()V

    goto :goto_0

    .line 1542
    :cond_5
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-direct {p0, v0}, Lcom/hz/battle/BattlePanel;->isUseSkillInitiative(Lcom/hz/actor/Player;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1543
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->selectAutoFightTarget(Lcom/hz/actor/Player;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->setCursor(B)V

    .line 1544
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v3}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    goto :goto_1
.end method

.method private final doMenuAction(Lcom/hz/ui/UIHandler;I)Z
    .locals 7
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "eventType"    # I

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/16 v4, 0x1000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2645
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2646
    if-eq p2, v6, :cond_3

    .line 2647
    if-eq p2, v5, :cond_3

    .line 2648
    const/16 v2, 0x3bf

    if-eq p2, v2, :cond_3

    .line 2649
    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    .line 2650
    const/16 v2, 0x3a4

    if-eq p2, v2, :cond_3

    .line 2651
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->cleanTargetSelect()V

    .line 2793
    :cond_0
    :goto_0
    return v0

    .line 2657
    :cond_1
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v2}, Lcom/hz/battle/Battle;->isRemoteWaiting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2658
    if-eq p2, v6, :cond_2

    .line 2659
    if-eq p2, v5, :cond_2

    .line 2660
    const/16 v2, 0x3a5

    if-ne p2, v2, :cond_0

    .line 2666
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2668
    if-eq p2, v6, :cond_3

    .line 2669
    if-eq p2, v5, :cond_3

    .line 2670
    const/16 v2, 0x3a4

    if-eq p2, v2, :cond_3

    .line 2671
    const/16 v2, 0x2c37

    if-ne p2, v2, :cond_0

    .line 2679
    :cond_3
    sparse-switch p2, :sswitch_data_0

    :cond_4
    :goto_1
    move v0, v1

    .line 2793
    goto :goto_0

    .line 2684
    :sswitch_0
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2685
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v0}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 2687
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 2688
    invoke-virtual {p0, v1}, Lcom/hz/battle/BattlePanel;->changeOrder(B)V

    move v0, v1

    .line 2689
    goto :goto_0

    .line 2694
    :cond_5
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isCursorEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-eqz v0, :cond_6

    .line 2695
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v0, v1}, Lcom/hz/battle/TargetSelectPanel;->setFinshSelect(Z)V

    move v0, v1

    .line 2696
    goto :goto_0

    .line 2698
    :cond_6
    invoke-virtual {p0, v1}, Lcom/hz/battle/BattlePanel;->changeOrder(B)V

    goto :goto_1

    .line 2701
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->changeOrder(B)V

    goto :goto_1

    .line 2705
    :sswitch_2
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2706
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tr\u00e2n th\u00fa kh\u00f4ng th\u1ec3 d\u00f9ng v\u1eadt ph\u1ea9m!"

    invoke-static {v1, v2, v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2709
    :cond_7
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->changeOrder(B)V

    goto :goto_1

    .line 2712
    :sswitch_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->changeOrder(B)V

    goto :goto_1

    .line 2715
    :sswitch_4
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v4}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2716
    sput-boolean v1, Lcom/hz/main/GameWorld;->TAG_IS_AUTO_FIGHT_FLAG:Z

    .line 2717
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v4, v1}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 2718
    invoke-direct {p0, v1}, Lcom/hz/battle/BattlePanel;->updateAutoFightText(Z)V

    .line 2719
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->doAutoFight()V

    goto :goto_1

    .line 2729
    :sswitch_5
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2730
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tr\u00e2n th\u00fa kh\u00f4ng th\u1ec3 ch\u1ee7 \u0111\u1ed9ng b\u1ecf ch\u1ea1y!"

    invoke-static {v1, v2, v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 2734
    :cond_8
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/hz/battle/BattlePanel;->doOrderAction(B[B)V

    .line 2736
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->setOrderIndex(B)V

    goto/16 :goto_1

    .line 2746
    :sswitch_6
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChatRoom()V

    goto/16 :goto_1

    .line 2750
    :sswitch_7
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChat()V

    goto/16 :goto_1

    .line 2754
    :sswitch_8
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->gotoBattleMenu()V

    goto/16 :goto_1

    .line 2769
    :sswitch_9
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2}, Lcom/hz/battle/BattleAniEngine;->closePlayerAnimation()V

    .line 2770
    invoke-direct {p0, v0}, Lcom/hz/battle/BattlePanel;->checkSkipAnimeGWidgetShow(Z)V

    goto/16 :goto_1

    .line 2775
    :sswitch_a
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v4}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2776
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v2, v4, v0}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 2777
    sput-boolean v0, Lcom/hz/main/GameWorld;->TAG_IS_AUTO_FIGHT_FLAG:Z

    .line 2778
    invoke-direct {p0, v0}, Lcom/hz/battle/BattlePanel;->updateAutoFightText(Z)V

    .line 2779
    sget-object v0, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_1

    .line 2785
    :sswitch_b
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doChangePetAutoHand()V

    goto/16 :goto_1

    .line 2789
    :sswitch_c
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->doBattleSeeExit()V

    goto/16 :goto_1

    .line 2679
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_3
        0xc -> :sswitch_8
        0x3a4 -> :sswitch_9
        0x3a6 -> :sswitch_b
        0x3ac -> :sswitch_b
        0x3bf -> :sswitch_c
        0x2c37 -> :sswitch_a
    .end sparse-switch
.end method

.method private final doPlanData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2016
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->cleanTargetSelect()V

    .line 2018
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2021
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->setPetRound(Z)V

    .line 2023
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0}, Lcom/hz/battle/Battle;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2029
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    .line 2034
    :goto_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->clearPlan(I)V

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-eqz v0, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->clearPlan(I)V

    .line 2044
    :cond_1
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2046
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->setOrderInit(Z)V

    .line 2047
    return-void

    .line 2026
    :pswitch_0
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleRoundLogic()V

    goto :goto_0

    .line 2023
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static drawBattleBar(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 4
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "coordx"    # I
    .param p2, "coordy"    # I
    .param p3, "color"    # I
    .param p4, "value"    # I
    .param p5, "maxValue"    # I

    .prologue
    .line 1272
    const/16 v2, 0x1e

    .line 1273
    .local v2, "width":I
    const/4 v1, 0x7

    .line 1275
    .local v1, "height":I
    const v3, 0xf2e0e5

    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1276
    invoke-virtual {p0, p1, p2, v2, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1278
    add-int/lit8 p1, p1, 0x1

    .line 1279
    add-int/lit8 p2, p2, 0x1

    .line 1280
    add-int/lit8 v2, v2, -0x2

    .line 1281
    add-int/lit8 v1, v1, -0x2

    .line 1282
    const v3, 0x3e012e

    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1283
    invoke-virtual {p0, p1, p2, v2, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1285
    add-int/lit8 p1, p1, 0x1

    .line 1286
    add-int/lit8 p2, p2, 0x1

    .line 1287
    add-int/lit8 v2, v2, -0x2

    .line 1288
    add-int/lit8 v1, v1, -0x2

    .line 1290
    mul-int/lit8 v3, p4, 0x1a

    div-int v0, v3, p5

    .line 1291
    .local v0, "endbar_width":I
    if-lez p4, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1293
    :cond_0
    const v3, 0x91424f

    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1294
    invoke-virtual {p0, p1, p2, v2, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1296
    invoke-virtual {p0, p3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 1297
    invoke-virtual {p0, p1, p2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 1299
    return-void
.end method

.method private final drawCurMsg(Ljavax/microedition/lcdui/Graphics;IIIZZ)V
    .locals 27
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "pos"    # I
    .param p3, "cursorX"    # I
    .param p4, "cursorY"    # I
    .param p5, "isDrawName"    # Z
    .param p6, "isDrawBuff"    # Z

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v26

    .line 1197
    .local v26, "curPlayer":Lcom/hz/actor/Player;
    if-eqz v26, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    add-int/lit8 v2, p3, -0xf

    .line 1202
    .local v2, "coordx":I
    add-int/lit8 v3, p4, -0x3

    .line 1205
    .local v3, "coordy":I
    move-object/from16 v0, v26

    iget v1, v0, Lcom/hz/actor/Player;->hp:I

    if-lez v1, :cond_2

    .line 1208
    const/16 v1, 0x1d

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v6

    .line 1209
    .local v6, "maxHp":I
    const v4, 0xffd329

    move-object/from16 v0, v26

    iget v5, v0, Lcom/hz/actor/Player;->hp:I

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/hz/battle/BattlePanel;->drawBattleBar(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 1212
    if-eqz p6, :cond_2

    .line 1213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    iget-object v7, v1, Lcom/hz/battle/BattleAniEngine;->buffSet:Lcom/hz/image/ImageSet;

    .line 1214
    .local v7, "buffSet":Lcom/hz/image/ImageSet;
    if-eqz v7, :cond_0

    .line 1217
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/hz/image/ImageSet;->getFrameHeight(I)I

    move-result v24

    .line 1219
    .local v24, "bufferHeight":I
    move v10, v2

    .line 1220
    .local v10, "addBuffX":I
    sub-int v1, v3, v24

    add-int/lit8 v11, v1, -0x1

    .line 1222
    .local v11, "addBuffY":I
    move v15, v2

    .line 1223
    .local v15, "defBuffX":I
    move/from16 v16, v3

    .line 1224
    .local v16, "defBuffY":I
    const/16 v25, 0x1

    .local v25, "bufferID":I
    :goto_1
    const/16 v1, 0x1e

    move/from16 v0, v25

    if-le v0, v1, :cond_3

    .line 1251
    .end local v6    # "maxHp":I
    .end local v7    # "buffSet":Lcom/hz/image/ImageSet;
    .end local v10    # "addBuffX":I
    .end local v11    # "addBuffY":I
    .end local v15    # "defBuffX":I
    .end local v16    # "defBuffY":I
    .end local v24    # "bufferHeight":I
    .end local v25    # "bufferID":I
    :cond_2
    if-eqz p5, :cond_0

    .line 1252
    const/16 v18, 0x7670

    const v19, 0xd1ebd6

    invoke-virtual/range {v26 .. v26}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1253
    add-int/lit8 v22, v3, 0x5

    const/16 v23, 0x11

    move-object/from16 v17, p1

    move/from16 v21, p3

    .line 1252
    invoke-static/range {v17 .. v23}, Lcom/hz/main/GameView;->drawBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_0

    .line 1227
    .restart local v6    # "maxHp":I
    .restart local v7    # "buffSet":Lcom/hz/image/ImageSet;
    .restart local v10    # "addBuffX":I
    .restart local v11    # "addBuffY":I
    .restart local v15    # "defBuffX":I
    .restart local v16    # "defBuffY":I
    .restart local v24    # "bufferHeight":I
    .restart local v25    # "bufferID":I
    :cond_3
    const/16 v1, 0x19

    move/from16 v0, v25

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    move/from16 v0, v25

    if-ne v0, v1, :cond_5

    .line 1224
    :cond_4
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1231
    :cond_5
    invoke-static/range {v25 .. v25}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1234
    invoke-static/range {v25 .. v25}, Lcom/hz/battle/BattleAniEngine;->getBufferImageIndex(I)I

    move-result v9

    .line 1237
    .local v9, "buffImgIndex":I
    invoke-static/range {v25 .. v25}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v1

    const/16 v4, 0x19

    if-ne v1, v4, :cond_6

    .line 1238
    const/4 v12, 0x0

    const/16 v13, 0x21

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 1239
    invoke-virtual {v7, v9}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1240
    goto :goto_2

    .line 1243
    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x21

    move-object v12, v7

    move-object/from16 v13, p1

    move v14, v9

    invoke-virtual/range {v12 .. v18}, Lcom/hz/image/ImageSet;->drawFrame(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 1244
    invoke-virtual {v7, v9}, Lcom/hz/image/ImageSet;->getFrameWidth(I)I

    move-result v1

    add-int/2addr v15, v1

    goto :goto_2
.end method

.method private final drawInfoMsg(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 8
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "curPos"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1178
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v0, v0, Lcom/hz/battle/Battle;->playerList:[Lcom/hz/actor/Player;

    array-length v0, v0

    if-lt v2, v0, :cond_0

    .line 1185
    return-void

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v2, v7}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v3

    .line 1181
    .local v3, "coordX":I
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0, v2, v6}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v4

    .line 1183
    .local v4, "coordY":I
    if-ne v2, p2, :cond_1

    move v5, v6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/hz/battle/BattlePanel;->drawCurMsg(Ljavax/microedition/lcdui/Graphics;IIIZZ)V

    .line 1178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 1183
    goto :goto_1
.end method

.method public static getBufferdescInfo(II)Ljava/lang/String;
    .locals 4
    .param p0, "imgIndex"    # I
    .param p1, "bufferID"    # I

    .prologue
    .line 3141
    const-string v0, ""

    .line 3142
    .local v0, "buffDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v2, p0}, Lcom/hz/string/PowerString;->makeIconString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3144
    invoke-static {p1}, Lcom/hz/core/Define;->getBufferType(I)B

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 3145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xff00

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3150
    :goto_0
    return-object v0

    .line 3147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hz/core/Define;->getBufferString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0xff0000

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final getPlayerBufferMsg(Lcom/hz/actor/Player;)Ljava/lang/String;
    .locals 10
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 3078
    if-nez p1, :cond_0

    .line 3079
    const-string v8, ""

    .line 3133
    :goto_0
    return-object v8

    .line 3082
    :cond_0
    const-string v1, ""

    .line 3083
    .local v1, "buffDesc":Ljava/lang/String;
    const-string v0, ""

    .line 3084
    .local v0, "bornbuffDesc":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "bufferID":I
    :goto_1
    const/16 v8, 0x1e

    if-le v2, v8, :cond_3

    .line 3125
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3126
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tr\u1ea1ng th\u00e1i \n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3129
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3130
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tr\u1ea1ng th\u00e1i b\u1ea9m sinh \n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3133
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 3088
    :cond_3
    const/16 v8, 0x19

    if-eq v2, v8, :cond_4

    const/16 v8, 0x1a

    if-ne v2, v8, :cond_5

    .line 3084
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3092
    :cond_5
    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/hz/actor/Player;->isBattleStatus(I)Z

    move-result v3

    .line 3093
    .local v3, "flag":Z
    if-eqz v3, :cond_4

    .line 3097
    invoke-static {v2}, Lcom/hz/battle/BattleAniEngine;->getBufferImageIndex(I)I

    move-result v4

    .line 3099
    .local v4, "imgIndex":I
    const/4 v5, 0x0

    .line 3102
    .local v5, "isbornstatus":Z
    instance-of v8, p1, Lcom/hz/actor/Monster;

    if-eqz v8, :cond_6

    move-object v6, p1

    .line 3103
    check-cast v6, Lcom/hz/actor/Monster;

    .line 3104
    .local v6, "monster":Lcom/hz/actor/Monster;
    iget v8, v6, Lcom/hz/actor/Monster;->bornStatus:I

    if-eqz v8, :cond_6

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/hz/actor/Monster;->isBornStatus(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3105
    const/4 v5, 0x1

    .line 3110
    .end local v6    # "monster":Lcom/hz/actor/Monster;
    :cond_6
    instance-of v8, p1, Lcom/hz/actor/MyPet;

    if-eqz v8, :cond_7

    move-object v7, p1

    .line 3111
    check-cast v7, Lcom/hz/actor/MyPet;

    .line 3112
    .local v7, "mypet":Lcom/hz/actor/MyPet;
    iget v8, v7, Lcom/hz/actor/MyPet;->bornStatus:I

    if-eqz v8, :cond_7

    invoke-static {v2}, Lcom/hz/core/Define;->getBufferBitValue(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/hz/actor/MyPet;->isBornStatus(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3113
    const/4 v5, 0x1

    .line 3118
    .end local v7    # "mypet":Lcom/hz/actor/MyPet;
    :cond_7
    if-eqz v5, :cond_8

    .line 3119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/hz/battle/BattlePanel;->getBufferdescInfo(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3120
    goto :goto_2

    .line 3121
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/hz/battle/BattlePanel;->getBufferdescInfo(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private getTargetSelectPanel()Lcom/hz/battle/TargetSelectPanel;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2237
    const/4 v2, 0x0

    .line 2239
    .local v2, "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2278
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 2279
    invoke-virtual {v2}, Lcom/hz/battle/TargetSelectPanel;->init()V

    .line 2281
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/hz/battle/BattlePanel;->checkBackGWidgetShow(Z)V

    .line 2284
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    :cond_0
    move-object v3, v2

    .line 2286
    :cond_1
    return-object v3

    .line 2243
    :pswitch_1
    new-instance v2, Lcom/hz/battle/TargetSelectPanel;

    .end local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    invoke-direct {v2, p0, v5}, Lcom/hz/battle/TargetSelectPanel;-><init>(Lcom/hz/battle/BattlePanel;B)V

    .line 2244
    .restart local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    goto :goto_0

    .line 2248
    :pswitch_2
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getSelectSkill()Lcom/hz/core/Skill;

    move-result-object v1

    .line 2249
    .local v1, "selectSkill":Lcom/hz/core/Skill;
    if-eqz v1, :cond_1

    .line 2255
    new-instance v2, Lcom/hz/battle/TargetSelectPanel;

    .end local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    iget-byte v3, v1, Lcom/hz/core/Skill;->area:B

    invoke-direct {v2, p0, v3}, Lcom/hz/battle/TargetSelectPanel;-><init>(Lcom/hz/battle/BattlePanel;B)V

    .line 2256
    .restart local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    invoke-virtual {v2, v1}, Lcom/hz/battle/TargetSelectPanel;->setSelectSkill(Lcom/hz/core/Skill;)V

    goto :goto_0

    .line 2261
    .end local v1    # "selectSkill":Lcom/hz/core/Skill;
    :pswitch_3
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getSelectItem()Lcom/hz/core/Item;

    move-result-object v0

    .line 2262
    .local v0, "selectItem":Lcom/hz/core/Item;
    if-eqz v0, :cond_1

    .line 2268
    new-instance v2, Lcom/hz/battle/TargetSelectPanel;

    .end local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    iget-byte v3, v0, Lcom/hz/core/Item;->area:B

    invoke-direct {v2, p0, v3}, Lcom/hz/battle/TargetSelectPanel;-><init>(Lcom/hz/battle/BattlePanel;B)V

    .line 2269
    .restart local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    invoke-virtual {v2, v0}, Lcom/hz/battle/TargetSelectPanel;->setSelectItem(Lcom/hz/core/Item;)V

    goto :goto_0

    .line 2274
    .end local v0    # "selectItem":Lcom/hz/core/Item;
    :pswitch_4
    new-instance v2, Lcom/hz/battle/TargetSelectPanel;

    .end local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    invoke-direct {v2, p0, v5}, Lcom/hz/battle/TargetSelectPanel;-><init>(Lcom/hz/battle/BattlePanel;B)V

    .restart local v2    # "targetSelectPanel":Lcom/hz/battle/TargetSelectPanel;
    goto :goto_0

    .line 2239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final handleKey(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v0, p1}, Lcom/hz/battle/TargetSelectPanel;->handleKey(I)V

    .line 1681
    :goto_0
    return-void

    .line 1671
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1674
    :sswitch_0
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->gotoBattleMenu()V

    goto :goto_0

    .line 1678
    :sswitch_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChat()V

    goto :goto_0

    .line 1671
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch
.end method

.method private final handleOrderPanelMouse(II)Z
    .locals 4
    .param p1, "releaseX"    # I
    .param p2, "releaseY"    # I

    .prologue
    const/4 v2, 0x0

    .line 1339
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v3, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return v2

    .line 1343
    :cond_1
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 1344
    .local v0, "frame":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {v0, p1, p2}, Lcom/hz/gui/GContainer;->searchPressGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 1350
    .local v1, "orderGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 1353
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3, v1}, Lcom/hz/ui/UIHandler;->setActionGWidget(Lcom/hz/gui/GWidget;)V

    .line 1354
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1355
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handlerMouseDragged()V
    .locals 0

    .prologue
    .line 1307
    return-void
.end method

.method private handlerMousePressed()V
    .locals 0

    .prologue
    .line 1303
    return-void
.end method

.method private handlerMouseReleased()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1313
    sget v3, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v3}, Lcom/hz/main/GameCanvas;->getXFromPointer(I)I

    move-result v1

    .line 1314
    .local v1, "releaseX":I
    sget v3, Lcom/hz/main/GameCanvas;->pointReleasedFlag:I

    invoke-static {v3}, Lcom/hz/main/GameCanvas;->getYFromPointer(I)I

    move-result v2

    .line 1316
    .local v2, "releaseY":I
    if-eq v1, v4, :cond_0

    if-ne v2, v4, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/hz/battle/BattlePanel;->handleOrderPanelMouse(II)Z

    move-result v0

    .line 1322
    .local v0, "isHandle":Z
    if-nez v0, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-eqz v3, :cond_0

    .line 1328
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v3, v1, v2}, Lcom/hz/battle/TargetSelectPanel;->handlerMouse(II)V

    goto :goto_0
.end method

.method private initAttackOrder()V
    .locals 4

    .prologue
    const/16 v1, 0x14

    const/4 v3, 0x1

    .line 481
    invoke-direct {p0, v3}, Lcom/hz/battle/BattlePanel;->setFoucsGWidgetToOrder(I)V

    .line 483
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v0

    .line 484
    .local v0, "_orderPlayer":Lcom/hz/actor/Player;
    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-byte v2, v0, Lcom/hz/actor/Player;->position:B

    if-ge v2, v1, :cond_1

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattlePanel;->setCursor(B)V

    .line 493
    invoke-virtual {p0, v3}, Lcom/hz/battle/BattlePanel;->changeOrder(B)V

    goto :goto_0

    .line 492
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initItemListPanel()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v5, -0x1

    const/4 v11, 0x0

    .line 2089
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getMyPlayer()Lcom/hz/actor/Player;

    move-result-object v9

    .line 2091
    .local v9, "myPlayer":Lcom/hz/actor/Player;
    if-nez v9, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    iget-object v4, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v4, :cond_0

    .line 2105
    iget-object v4, v9, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v4, v13}, Lcom/hz/core/PlayerBag;->getCanUseItemList(I)Ljava/util/Vector;

    move-result-object v2

    .line 2108
    .local v2, "useItem":Ljava/util/Vector;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 2109
    :cond_2
    const-string v4, "Kh\u00f4ng c\u00f3 v\u1eadt ph\u1ea9m c\u00f3 th\u1ec3 d\u00f9ng"

    const-string v5, "Kh\u00f4ng c\u00f3 v\u1eadt ph\u1ea9m c\u00f3 th\u1ec3 d\u00f9ng trong chi\u1ebfn \u0111\u1ea5u!"

    invoke-static {v4, v5, v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2114
    :cond_3
    invoke-static {v2, v11}, Lcom/hz/main/GameWorld;->getItemNameInfo(Ljava/util/Vector;Z)[Ljava/lang/String;

    move-result-object v1

    .line 2116
    .local v1, "itemList":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 2117
    .local v3, "keyList":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v7, v4, :cond_6

    .line 2140
    const/4 v0, 0x0

    .line 2141
    .local v0, "itemDesc":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/core/Item;

    .line 2142
    .local v8, "item":Lcom/hz/core/Item;
    if-eqz v8, :cond_4

    .line 2143
    invoke-virtual {v8, v6}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v4, p0

    .line 2146
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[ILcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v10

    .line 2148
    .local v10, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v10, :cond_5

    .line 2149
    invoke-virtual {v10, v11}, Lcom/hz/ui/UIHandler;->setShowLastLayer(Z)V

    .line 2150
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v10, v4}, Lcom/hz/ui/UIHandler;->setInnerUIHandler(Lcom/hz/ui/UIHandler;)V

    .line 2152
    :cond_5
    invoke-direct {p0, v12}, Lcom/hz/battle/BattlePanel;->checkBackGWidgetShow(Z)V

    goto :goto_0

    .line 2118
    .end local v0    # "itemDesc":Ljava/lang/String;
    .end local v8    # "item":Lcom/hz/core/Item;
    .end local v10    # "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_6
    packed-switch v7, :pswitch_data_0

    .line 2135
    aput v5, v3, v7

    .line 2117
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2120
    :pswitch_0
    aput v11, v3, v7

    goto :goto_2

    .line 2123
    :pswitch_1
    aput v12, v3, v7

    goto :goto_2

    .line 2126
    :pswitch_2
    aput v13, v3, v7

    goto :goto_2

    .line 2129
    :pswitch_3
    const/4 v4, 0x3

    aput v4, v3, v7

    goto :goto_2

    .line 2132
    :pswitch_4
    const/4 v4, 0x5

    aput v4, v3, v7

    goto :goto_2

    .line 2118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final initOrderPopUI()V
    .locals 4

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v1, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v0

    .line 1040
    .local v0, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0}, Lcom/hz/gui/GContainer;->getEventType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 1055
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createUIFromXML(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    .line 1056
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1, p0}, Lcom/hz/ui/UIHandler;->setListener(Lcom/hz/ui/UIListener;)V

    .line 1060
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->setInnerUIHandler(Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method private initSkillListPanel()V
    .locals 13

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v8

    .line 2161
    .local v8, "player":Lcom/hz/actor/Player;
    if-nez v8, :cond_0

    .line 2228
    :goto_0
    return-void

    .line 2169
    :cond_0
    iget-object v4, v8, Lcom/hz/actor/Player;->skillList:Ljava/util/Vector;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/hz/actor/Player;->getSkillListByType(Ljava/util/Vector;B)Ljava/util/Vector;

    move-result-object v2

    .line 2172
    .local v2, "activeSkill":Ljava/util/Vector;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 2173
    :cond_1
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 2174
    const/16 v5, 0x29

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2173
    invoke-static {v4, v5, v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2179
    :cond_2
    const/4 v0, 0x0

    .line 2180
    .local v0, "skillDesc":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 2181
    .local v1, "activeList":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 2182
    .local v3, "keyList":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v7, v4, :cond_4

    .line 2222
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v4, p0

    .line 2221
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[ILcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 2223
    .local v11, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v11, :cond_3

    .line 2224
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/hz/ui/UIHandler;->setShowLastLayer(Z)V

    .line 2225
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v11, v4}, Lcom/hz/ui/UIHandler;->setInnerUIHandler(Lcom/hz/ui/UIHandler;)V

    .line 2227
    :cond_3
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/hz/battle/BattlePanel;->checkBackGWidgetShow(Z)V

    goto :goto_0

    .line 2183
    .end local v11    # "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_4
    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/core/Skill;

    .line 2184
    .local v10, "skill":Lcom/hz/core/Skill;
    if-nez v10, :cond_6

    .line 2182
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2188
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xb1

    invoke-static {v5}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-byte v12, v10, Lcom/hz/core/Skill;->level:B

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 2190
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 2192
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-static {v8, v10, v9}, Lcom/hz/core/Skill;->isCanUse(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2193
    aget-object v4, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 2196
    :cond_7
    packed-switch v7, :pswitch_data_0

    .line 2213
    const/4 v4, -0x1

    aput v4, v3, v7

    .line 2217
    :goto_3
    if-nez v0, :cond_5

    .line 2218
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/hz/core/Skill;->getDesc(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2198
    :pswitch_0
    const/4 v4, 0x0

    aput v4, v3, v7

    goto :goto_3

    .line 2201
    :pswitch_1
    const/4 v4, 0x1

    aput v4, v3, v7

    goto :goto_3

    .line 2204
    :pswitch_2
    const/4 v4, 0x2

    aput v4, v3, v7

    goto :goto_3

    .line 2207
    :pswitch_3
    const/4 v4, 0x3

    aput v4, v3, v7

    goto :goto_3

    .line 2210
    :pswitch_4
    const/4 v4, 0x5

    aput v4, v3, v7

    goto :goto_3

    .line 2196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final isRemoteWaitting()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1455
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2, v3}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return v0

    .line 1462
    :cond_1
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-nez v2, :cond_2

    move v0, v1

    .line 1463
    goto :goto_0

    .line 1467
    :cond_2
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1468
    goto :goto_0

    .line 1472
    :cond_3
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    invoke-virtual {v2, v3}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1477
    goto :goto_0
.end method

.method private final isUseSkillInitiative(Lcom/hz/actor/Player;)Z
    .locals 7
    .param p1, "orderPlayer"    # Lcom/hz/actor/Player;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1566
    if-nez p1, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return v3

    .line 1569
    :cond_1
    iget v5, p1, Lcom/hz/actor/Player;->autoSkillID_Initiative:I

    invoke-virtual {p1, v5}, Lcom/hz/actor/Player;->getSkillByID(I)Lcom/hz/core/Skill;

    move-result-object v0

    .line 1571
    .local v0, "activeSkillInitiative":Lcom/hz/core/Skill;
    if-eqz v0, :cond_0

    const/4 v5, 0x0

    invoke-static {p1, v0, v5}, Lcom/hz/core/Skill;->isCanUse(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/lang/StringBuffer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v1

    .line 1573
    .local v1, "oldcursor":B
    const/4 v2, -0x1

    .line 1574
    .local v2, "targetCursor":I
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-byte v5, v0, Lcom/hz/core/Skill;->area:B

    invoke-virtual {v3, p1, v5, v4}, Lcom/hz/battle/Battle;->searchAICursor(Lcom/hz/actor/Player;BZ)I

    move-result v2

    .line 1575
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Lcom/hz/battle/BattlePanel;->setCursor(B)V

    .line 1576
    iget-byte v3, p1, Lcom/hz/actor/Player;->position:B

    const/4 v5, 0x2

    iget v6, v0, Lcom/hz/core/Skill;->id:I

    int-to-short v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(BS)[B

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1577
    invoke-virtual {p0, v1}, Lcom/hz/battle/BattlePanel;->setCursor(B)V

    move v3, v4

    .line 1581
    goto :goto_0
.end method

.method private final logicTargetSelect()V
    .locals 3

    .prologue
    .line 1628
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v1, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->action()V

    .line 1631
    :cond_0
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->hlightSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v1, :cond_1

    .line 1632
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->hlightSprite:Lcom/hz/sprite/GameSprite;

    invoke-virtual {v1}, Lcom/hz/sprite/GameSprite;->action()V

    .line 1635
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-eqz v1, :cond_2

    .line 1636
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v1}, Lcom/hz/battle/TargetSelectPanel;->logic()V

    .line 1637
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v1}, Lcom/hz/battle/TargetSelectPanel;->isFinshSelect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1639
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v1}, Lcom/hz/battle/TargetSelectPanel;->getTargetPos()[B

    move-result-object v0

    .line 1641
    .local v0, "targetPos":[B
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 1642
    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->doViewPlayerInfo([B)V

    .line 1643
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/battle/TargetSelectPanel;->setFinshSelect(Z)V

    .line 1651
    .end local v0    # "targetPos":[B
    :cond_2
    :goto_0
    return-void

    .line 1647
    .restart local v0    # "targetPos":[B
    :cond_3
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hz/battle/BattlePanel;->doOrderAction(B[B)V

    goto :goto_0
.end method

.method private processInfoList(Lcom/hz/ui/UIHandler;I)V
    .locals 10
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/4 v9, 0x4

    .line 2894
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWindow;

    .line 2895
    .local v0, "gwindow":Lcom/hz/gui/GWindow;
    if-nez v0, :cond_1

    .line 2972
    :cond_0
    :goto_0
    return-void

    .line 2899
    :cond_1
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->getObj()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 2900
    .local v3, "list":Ljava/util/Vector;
    if-eqz v3, :cond_0

    .line 2904
    iget v7, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 2905
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 2912
    if-eq p2, v9, :cond_2

    const/4 v7, 0x5

    if-ne p2, v7, :cond_5

    .line 2914
    :cond_2
    const-string v1, ""

    .line 2915
    .local v1, "info":Ljava/lang/String;
    instance-of v7, v4, Lcom/hz/core/Skill;

    if-eqz v7, :cond_4

    move-object v6, v4

    .line 2917
    check-cast v6, Lcom/hz/core/Skill;

    .line 2918
    .local v6, "skill":Lcom/hz/core/Skill;
    iget v7, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    iput v7, v0, Lcom/hz/gui/GWindow;->oldFocusIndex:I

    .line 2919
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/hz/core/Skill;->getDesc(Z)Ljava/lang/String;

    move-result-object v1

    .line 2929
    .end local v6    # "skill":Lcom/hz/core/Skill;
    :cond_3
    :goto_1
    invoke-static {p1, v1}, Lcom/hz/ui/UIHandler;->updateAreaMessageTextAreaInfo(Lcom/hz/ui/UIHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 2921
    :cond_4
    instance-of v7, v4, Lcom/hz/core/Item;

    if-eqz v7, :cond_3

    move-object v2, v4

    .line 2923
    check-cast v2, Lcom/hz/core/Item;

    .line 2924
    .local v2, "item":Lcom/hz/core/Item;
    iget v7, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    iput v7, v0, Lcom/hz/gui/GWindow;->oldFocusIndex:I

    .line 2925
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2933
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "item":Lcom/hz/core/Item;
    :cond_5
    if-nez p2, :cond_0

    .line 2937
    instance-of v7, v4, Lcom/hz/core/Skill;

    if-eqz v7, :cond_8

    move-object v6, v4

    .line 2939
    check-cast v6, Lcom/hz/core/Skill;

    .line 2941
    .restart local v6    # "skill":Lcom/hz/core/Skill;
    iget v7, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    iget v8, v0, Lcom/hz/gui/GWindow;->oldFocusIndex:I

    if-ne v7, v8, :cond_7

    .line 2942
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2943
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v7

    invoke-static {v7, v6, v5}, Lcom/hz/core/Skill;->isCanUse(Lcom/hz/actor/Player;Lcom/hz/core/Skill;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2944
    const/16 v7, 0xe

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 2948
    :cond_6
    invoke-virtual {p0, v6}, Lcom/hz/battle/BattlePanel;->setSelectSkill(Lcom/hz/core/Skill;)V

    .line 2949
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->getTargetSelectPanel()Lcom/hz/battle/TargetSelectPanel;

    move-result-object v7

    iput-object v7, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    .line 2951
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 2955
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    invoke-virtual {p1, v9}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 2958
    .end local v6    # "skill":Lcom/hz/core/Skill;
    :cond_8
    instance-of v7, v4, Lcom/hz/core/Item;

    if-eqz v7, :cond_0

    move-object v2, v4

    .line 2960
    check-cast v2, Lcom/hz/core/Item;

    .line 2961
    .restart local v2    # "item":Lcom/hz/core/Item;
    iget v7, v0, Lcom/hz/gui/GWindow;->focusIndex:I

    iget v8, v0, Lcom/hz/gui/GWindow;->oldFocusIndex:I

    if-ne v7, v8, :cond_9

    .line 2962
    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->setSelectItem(Lcom/hz/core/Item;)V

    .line 2963
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->getTargetSelectPanel()Lcom/hz/battle/TargetSelectPanel;

    move-result-object v7

    iput-object v7, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    .line 2965
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2969
    :cond_9
    invoke-virtual {p1, v9}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto/16 :goto_0
.end method

.method private processOrderPanel(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 2614
    if-eqz p2, :cond_1

    .line 2636
    :cond_0
    :goto_0
    return-void

    .line 2618
    :cond_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 2619
    .local v1, "orderGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 2624
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 2625
    .local v2, "window":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_2

    .line 2626
    invoke-virtual {v2, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    .line 2629
    :cond_2
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 2632
    .local v0, "event":I
    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    .line 2633
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 2635
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/hz/battle/BattlePanel;->doMenuAction(Lcom/hz/ui/UIHandler;I)Z

    goto :goto_0
.end method

.method private final removeBagUseItem(B)V
    .locals 5
    .param p1, "_orderIndex"    # B

    .prologue
    .line 1985
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getMyPlayer()Lcom/hz/actor/Player;

    move-result-object v2

    .line 1990
    .local v2, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 1997
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v3}, Lcom/hz/battle/Battle;->getType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1999
    iget-object v1, v2, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 2000
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 2004
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getSelectItem()Lcom/hz/core/Item;

    move-result-object v0

    .line 2005
    .local v0, "_selectItem":Lcom/hz/core/Item;
    if-eqz v0, :cond_0

    .line 2009
    iget-short v3, v0, Lcom/hz/core/Item;->slotPos:S

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    goto :goto_0
.end method

.method private final setAttackMenuGuide1()V
    .locals 6

    .prologue
    .line 570
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-nez v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 581
    .local v0, "guideGwidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 584
    const-string v1, "Nh\u1ea5n v\u00e0o \u0111\u00e2yCh\u1ecdn t\u1ea5n c\u00f4ng"

    .line 585
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/hz/core/MessageFrame;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/hz/core/MessageFrame;-><init>(I)V

    sput-object v2, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    .line 596
    sget-object v2, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    .line 598
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getW()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 599
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    .line 600
    const/4 v5, 0x4

    .line 596
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/hz/core/MessageFrame;->doUpdateGuide(Ljava/lang/String;III)V

    .line 603
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v2

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v3

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getW()I

    move-result v4

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/hz/main/GameWorld;->setGuideRect(IIII)V

    .line 604
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/hz/main/GameWorld;->setGuide(I)V

    goto :goto_0
.end method

.method private final setAttackMenuGuide2()V
    .locals 7

    .prologue
    .line 607
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-nez v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 618
    .local v2, "window":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 622
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/hz/gui/GWindow;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 623
    .local v0, "guideGwidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 626
    const-string v1, "Nh\u1ea5n v\u00e0o \u0111\u00e2yCh\u1ecdn t\u1ea5n c\u00f4ng"

    .line 628
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Lcom/hz/core/MessageFrame;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/hz/core/MessageFrame;-><init>(I)V

    sput-object v3, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    .line 629
    sget-object v3, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    .line 631
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v4

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getW()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 632
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    .line 633
    const/4 v6, 0x4

    .line 629
    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/hz/core/MessageFrame;->doUpdateGuide(Ljava/lang/String;III)V

    .line 634
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getW()I

    move-result v5

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getH()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/hz/main/GameWorld;->setGuideRect(IIII)V

    .line 635
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/hz/main/GameWorld;->setGuide(I)V

    goto :goto_0
.end method

.method private final setAttackTargetGuide()V
    .locals 14

    .prologue
    const/16 v13, 0x400

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 518
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-nez v9, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v9, :cond_0

    .line 524
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v13}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 527
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v13, v10}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 528
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v9, 0x22

    if-ge v3, v9, :cond_0

    .line 529
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v9, v3}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v5

    .line 530
    .local v5, "player":Lcom/hz/actor/Player;
    if-nez v5, :cond_3

    .line 528
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 533
    :cond_3
    iget-object v9, v5, Lcom/hz/actor/Player;->battleSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v9, :cond_2

    .line 536
    invoke-virtual {v5}, Lcom/hz/actor/Player;->getType()B

    move-result v9

    if-ne v9, v12, :cond_2

    .line 538
    const-string v4, "Nh\u1ea5n v\u00e0o \u0111\u00e2yT\u1ea5n c\u00f4ng m\u1ee5c ti\u00eau"

    .line 539
    .local v4, "message":Ljava/lang/String;
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v3, v10}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v0

    .line 540
    .local v0, "coordX":I
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v3, v11}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v1

    .line 543
    .local v1, "coordY":I
    invoke-static {v3}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 544
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v12}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1e

    .line 545
    .local v6, "w":I
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v10}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v2

    .line 550
    .local v2, "h":I
    :goto_2
    div-int/lit8 v9, v6, 0x2

    sub-int v7, v0, v9

    .line 551
    .local v7, "x":I
    sub-int v8, v1, v2

    .line 553
    .local v8, "y":I
    new-instance v9, Lcom/hz/core/MessageFrame;

    invoke-direct {v9, v11}, Lcom/hz/core/MessageFrame;-><init>(I)V

    sput-object v9, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    .line 554
    sget-object v9, Lcom/hz/main/GameWorld;->guideFrame:Lcom/hz/core/MessageFrame;

    .line 558
    const/4 v10, 0x4

    .line 554
    invoke-virtual {v9, v4, v0, v8, v10}, Lcom/hz/core/MessageFrame;->doUpdateGuide(Ljava/lang/String;III)V

    .line 559
    invoke-static {v7, v8, v6, v2}, Lcom/hz/main/GameWorld;->setGuideRect(IIII)V

    .line 560
    const/4 v9, 0x6

    invoke-static {v9}, Lcom/hz/main/GameWorld;->setGuide(I)V

    goto :goto_0

    .line 547
    .end local v2    # "h":I
    .end local v6    # "w":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_4
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1e

    .line 548
    .restart local v6    # "w":I
    iget-object v9, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v9, v11}, Lcom/hz/battle/BattleAniEngine;->getPosData(I)I

    move-result v2

    .restart local v2    # "h":I
    goto :goto_2
.end method

.method private setFoucsGWidgetToOrder(I)V
    .locals 4
    .param p1, "orderIndex"    # I

    .prologue
    .line 440
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v3, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v0, -0x1

    .line 445
    .local v0, "event":I
    packed-switch p1, :pswitch_data_0

    .line 459
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/hz/battle/BattlePanel;->setOrderIndex(B)V

    .line 460
    const/4 v0, 0x2

    .line 464
    :goto_1
    if-ltz v0, :cond_0

    .line 468
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v3, v0}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 469
    .local v1, "gw":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 474
    .local v2, "window":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {v2, v1}, Lcom/hz/gui/GWindow;->setFocus(Lcom/hz/gui/GWidget;)V

    goto :goto_0

    .line 447
    .end local v1    # "gw":Lcom/hz/gui/GWidget;
    .end local v2    # "window":Lcom/hz/gui/GWindow;
    :pswitch_0
    const/4 v0, 0x2

    .line 448
    goto :goto_1

    .line 451
    :pswitch_1
    const/4 v0, 0x3

    .line 452
    goto :goto_1

    .line 455
    :pswitch_2
    const/4 v0, 0x4

    .line 456
    goto :goto_1

    .line 445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateAutoFightText(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 912
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v1, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0x3a4

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 918
    .local v0, "gw":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_0

    .line 922
    instance-of v1, v0, Lcom/hz/gui/GLabel;

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0x2c37

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_0

    .line 940
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0

    .line 943
    :cond_2
    sget-boolean v1, Lcom/hz/main/GameWorld;->TAG_IS_AUTO_FIGHT_FLAG:Z

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0
.end method

.method private final updatePlayerHpMpInfo()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget v1, v1, Lcom/hz/actor/Player;->hp:I

    iput v1, v0, Lcom/hz/actor/Player;->hpDisplay:I

    .line 503
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget v1, v1, Lcom/hz/actor/Player;->mp:I

    iput v1, v0, Lcom/hz/actor/Player;->mpDisplay:I

    .line 504
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget v1, v1, Lcom/hz/actor/Player;->hp:I

    iput v1, v0, Lcom/hz/actor/Player;->hpDisplay:I

    .line 506
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget v1, v1, Lcom/hz/actor/Player;->mp:I

    iput v1, v0, Lcom/hz/actor/Player;->mpDisplay:I

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->updateBattlePlayerInfo(B)V

    goto :goto_0
.end method


# virtual methods
.method public changeOrder(B)V
    .locals 1
    .param p1, "ordertype"    # B

    .prologue
    .line 1690
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattlePanel;->setOrderIndex(B)V

    .line 1692
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->cleanTargetSelect()V

    .line 1694
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1716
    :goto_0
    :pswitch_0
    return-void

    .line 1697
    :pswitch_1
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->getTargetSelectPanel()Lcom/hz/battle/TargetSelectPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    .line 1700
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->setAttackTargetGuide()V

    goto :goto_0

    .line 1705
    :pswitch_2
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->initSkillListPanel()V

    goto :goto_0

    .line 1709
    :pswitch_3
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->initItemListPanel()V

    goto :goto_0

    .line 1713
    :pswitch_4
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->getTargetSelectPanel()Lcom/hz/battle/TargetSelectPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    goto :goto_0

    .line 1694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected checkPetGWidgetShow()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 986
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-nez v4, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-eqz v4, :cond_0

    .line 994
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-eqz v4, :cond_0

    .line 999
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    .line 1002
    .local v2, "isHavePet":Z
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v3

    .line 1005
    .local v3, "isPetAuto":Z
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v6, 0x3a6

    invoke-virtual {v4, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 1006
    .local v0, "autoGWidget":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_2

    .line 1008
    if-eqz v2, :cond_4

    .line 1009
    if-eqz v3, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 1017
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v6, 0x3ac

    invoke-virtual {v4, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 1018
    .local v1, "handGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 1019
    if-eqz v2, :cond_5

    .line 1020
    invoke-virtual {v1, v3}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0

    .line 1009
    .end local v1    # "handGWidget":Lcom/hz/gui/GWidget;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 1012
    :cond_4
    invoke-virtual {v0, v5}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_2

    .line 1023
    .restart local v1    # "handGWidget":Lcom/hz/gui/GWidget;
    :cond_5
    invoke-virtual {v1, v5}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0
.end method

.method public cleanPlanVector()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 260
    return-void
.end method

.method public cleanTargetSelect()V
    .locals 1

    .prologue
    .line 2295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->setCursorEnable(Z)V

    .line 2298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    .line 2300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hz/battle/BattlePanel;->checkBackGWidgetShow(Z)V

    .line 2301
    return-void
.end method

.method public doBattleChat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2869
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getMyPlayer()Lcom/hz/actor/Player;

    move-result-object v0

    .line 2870
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    if-nez v0, :cond_0

    .line 2885
    :goto_0
    return-void

    .line 2879
    :cond_0
    invoke-virtual {v0}, Lcom/hz/actor/Player;->isPlayerTeam()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2880
    const/4 v1, 0x4

    invoke-static {v1, v2}, Lcom/hz/main/GameForm;->createChatForm(IZ)Lcom/hz/main/GameForm;

    goto :goto_0

    .line 2883
    :cond_1
    const/4 v1, -0x1

    invoke-static {v1, v2}, Lcom/hz/main/GameForm;->createChatForm(IZ)Lcom/hz/main/GameForm;

    goto :goto_0
.end method

.method public doBattleChatRoom()V
    .locals 3

    .prologue
    .line 2848
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getMyPlayer()Lcom/hz/actor/Player;

    move-result-object v1

    .line 2849
    .local v1, "myPlayer":Lcom/hz/actor/Player;
    if-nez v1, :cond_0

    .line 2863
    :goto_0
    return-void

    .line 2857
    :cond_0
    const/4 v0, -0x1

    .line 2858
    .local v0, "channel":I
    invoke-virtual {v1}, Lcom/hz/actor/Player;->isPlayerTeam()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2859
    const/4 v0, 0x4

    .line 2862
    :cond_1
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createChatMsgUI(I)V

    goto :goto_0
.end method

.method public doBattleRoundLogic()V
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0}, Lcom/hz/battle/Battle;->logicRound()V

    .line 1896
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v0}, Lcom/hz/battle/BattleAniEngine;->makeBattleAni()V

    .line 1897
    return-void
.end method

.method protected doChangePetAutoHand()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2800
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-nez v3, :cond_1

    .line 2841
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v0

    .line 2806
    .local v0, "isAuto":Z
    if-eqz v0, :cond_4

    move v0, v1

    .line 2808
    :goto_1
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3, v4}, Lcom/hz/actor/Player;->clearSettingBit(I)V

    .line 2810
    if-eqz v0, :cond_2

    .line 2811
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3, v4}, Lcom/hz/actor/Player;->setSettingBit(I)V

    .line 2814
    :cond_2
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->checkPetGWidgetShow()V

    .line 2817
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2819
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-eqz v3, :cond_0

    .line 2823
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v3}, Lcom/hz/battle/Battle;->isRemoteWaiting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2827
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    invoke-virtual {v3, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2836
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    invoke-direct {p0, v2}, Lcom/hz/battle/BattlePanel;->isUseSkillInitiative(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2837
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v2, v2, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v1}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 2839
    :cond_3
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->doPlanData()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2806
    goto :goto_1
.end method

.method public doOrderAction(B[B)V
    .locals 5
    .param p1, "_orderIndex"    # B
    .param p2, "targetPos"    # [B

    .prologue
    const/4 v4, 0x1

    .line 1911
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderPlayer()Lcom/hz/actor/Player;

    move-result-object v1

    .line 1913
    .local v1, "player":Lcom/hz/actor/Player;
    if-nez v1, :cond_0

    .line 1976
    :goto_0
    return-void

    .line 1922
    :cond_0
    const/4 v0, 0x0

    .line 1923
    .local v0, "planData":[B
    packed-switch p1, :pswitch_data_0

    .line 1953
    :cond_1
    :goto_1
    :pswitch_0
    iget-byte v2, v1, Lcom/hz/actor/Player;->position:B

    invoke-direct {p0, v2, v0}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1957
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-eqz v2, :cond_3

    .line 1960
    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    invoke-virtual {v2, v3}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1961
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    invoke-direct {p0, v2}, Lcom/hz/battle/BattlePanel;->isUseSkillInitiative(Lcom/hz/actor/Player;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1962
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v2, v2, Lcom/hz/actor/Player;->position:B

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1975
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->doPlanData()V

    goto :goto_0

    .line 1926
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v0

    .line 1927
    goto :goto_1

    .line 1930
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v0

    .line 1931
    goto :goto_1

    .line 1934
    :pswitch_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v0

    .line 1936
    if-eqz v0, :cond_1

    .line 1937
    invoke-direct {p0, p1}, Lcom/hz/battle/BattlePanel;->removeBagUseItem(B)V

    goto :goto_1

    .line 1942
    :pswitch_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v0

    .line 1943
    goto :goto_1

    .line 1967
    :cond_4
    invoke-virtual {p0, v4}, Lcom/hz/battle/BattlePanel;->setPetRound(Z)V

    goto :goto_2

    .line 1923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public doViewPlayerInfo([B)V
    .locals 5
    .param p1, "targetPos"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1719
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    aget-byte v2, p1, v4

    invoke-virtual {v1, v2}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v0

    .line 1724
    .local v0, "p":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 1728
    const-string v1, "Th\u00f4ng tin nh\u00e2n v\u1eadt "

    invoke-virtual {p0, v0}, Lcom/hz/battle/BattlePanel;->getPlayerDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3, v4, v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;IBZ)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public drawCursor(Ljavax/microedition/lcdui/Graphics;)V
    .locals 18
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-nez v2, :cond_0

    .line 1170
    :goto_0
    return-void

    .line 1111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v4

    .line 1112
    .local v4, "pos":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v5

    .line 1113
    .local v5, "coordX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v6

    .line 1115
    .local v6, "coordY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    add-int/lit8 v3, v6, -0x32

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5, v3}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/hz/battle/BattlePanel;->drawInfoMsg(Ljavax/microedition/lcdui/Graphics;I)V

    goto :goto_0

    .line 1122
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/hz/battle/BattlePanel;->drawCurMsg(Ljavax/microedition/lcdui/Graphics;IIIZZ)V

    .line 1125
    const v8, 0x2b1906

    .local v8, "borderColor":I
    const v9, 0xfca103

    .line 1126
    .local v9, "mainColor":I
    const/16 v13, 0x21

    .line 1127
    .local v13, "anchor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1128
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    .line 1129
    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    .line 1154
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1157
    :pswitch_0
    const-string v10, "C\u00f4ng th\u01b0\u1eddng"

    move-object/from16 v7, p1

    move v11, v5

    move v12, v6

    .line 1156
    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto :goto_0

    .line 1131
    :cond_2
    const/16 v16, 0x3c

    .line 1132
    .local v16, "panelHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v14

    .line 1133
    .local v14, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v14, :cond_3

    .line 1134
    invoke-virtual {v14}, Lcom/hz/gui/GWidget;->getH()I

    move-result v16

    .line 1136
    :cond_3
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 1137
    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sub-int v6, v2, v16

    .line 1138
    const/16 v13, 0x28

    goto :goto_1

    .line 1160
    .end local v14    # "gwidget":Lcom/hz/gui/GWidget;
    .end local v16    # "panelHeight":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/BattlePanel;->getSelectSkill()Lcom/hz/core/Skill;

    move-result-object v17

    .line 1162
    .local v17, "skill":Lcom/hz/core/Skill;
    const-string v3, "K\u0129 n\u0103ng-%U"

    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/hz/core/Skill;->name:Ljava/lang/String;

    :goto_2
    invoke-static {v3, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p1

    move v11, v5

    move v12, v6

    .line 1161
    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 1162
    :cond_4
    const-string v2, ""

    goto :goto_2

    .line 1165
    .end local v17    # "skill":Lcom/hz/core/Skill;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/hz/battle/BattlePanel;->getSelectItem()Lcom/hz/core/Item;

    move-result-object v15

    .line 1167
    .local v15, "item":Lcom/hz/core/Item;
    const-string v3, "V\u1eadt ph\u1ea9m-%U"

    if-eqz v15, :cond_5

    iget-object v2, v15, Lcom/hz/core/Item;->name:Ljava/lang/String;

    :goto_3
    invoke-static {v3, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p1

    move v11, v5

    move v12, v6

    .line 1166
    invoke-static/range {v7 .. v13}, Lcom/hz/main/GameView;->drawSimpleBorderString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 1167
    :cond_5
    const-string v2, ""

    goto :goto_3

    .line 1154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawHLights(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1078
    iget-object v5, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-nez v5, :cond_1

    .line 1099
    :cond_0
    return-void

    .line 1082
    :cond_1
    iget-object v5, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v5}, Lcom/hz/battle/TargetSelectPanel;->getTargetPos()[B

    move-result-object v4

    .line 1084
    .local v4, "targetPos":[B
    if-eqz v4, :cond_0

    .line 1088
    iget-object v5, p0, Lcom/hz/battle/BattlePanel;->hlightSprite:Lcom/hz/sprite/GameSprite;

    if-eqz v5, :cond_0

    .line 1092
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 1093
    aget-byte v3, v4, v2

    .line 1094
    .local v3, "pos":B
    iget-object v5, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v0

    .line 1095
    .local v0, "coordX":I
    iget-object v5, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/hz/battle/BattleAniEngine;->getPosition(II)S

    move-result v1

    .line 1097
    .local v1, "coordY":I
    iget-object v5, p0, Lcom/hz/battle/BattlePanel;->hlightSprite:Lcom/hz/sprite/GameSprite;

    add-int/lit8 v6, v1, -0x3

    invoke-virtual {v5, p1, v0, v6}, Lcom/hz/sprite/GameSprite;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    .line 1092
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBattlePlanData(B)[B
    .locals 1
    .param p1, "planType"    # B

    .prologue
    .line 1732
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(BS)[B

    move-result-object v0

    return-object v0
.end method

.method public getBattlePlanData(BS)[B
    .locals 4
    .param p1, "planType"    # B
    .param p2, "skillId"    # S

    .prologue
    .line 1737
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1738
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1742
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1743
    packed-switch p1, :pswitch_data_0

    .line 1774
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1782
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 1783
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 1780
    :goto_1
    return-object v3

    .line 1749
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1775
    :catch_0
    move-exception v2

    .line 1782
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 1783
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 1780
    const/4 v3, 0x0

    goto :goto_1

    .line 1752
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1753
    if-lez p2, :cond_0

    .line 1754
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1781
    :catchall_0
    move-exception v3

    .line 1782
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 1783
    invoke-static {v1}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 1784
    throw v3

    .line 1757
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getSelectSkill()Lcom/hz/core/Skill;

    move-result-object v3

    iget v3, v3, Lcom/hz/core/Skill;->id:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 1761
    :pswitch_3
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getCursor()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1762
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getSelectItem()Lcom/hz/core/Item;

    move-result-object v3

    iget-short v3, v3, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getCursor()B
    .locals 1

    .prologue
    .line 807
    iget-byte v0, p0, Lcom/hz/battle/BattlePanel;->cursor:B

    return v0
.end method

.method protected getMyPlayer()Lcom/hz/actor/Player;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    return-object v0
.end method

.method protected getOrderIndex()B
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-byte v0, p0, Lcom/hz/battle/BattlePanel;->petOrderIndex:B

    .line 330
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/hz/battle/BattlePanel;->orderIndex:B

    goto :goto_0
.end method

.method protected getOrderPlayer()Lcom/hz/actor/Player;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    .line 740
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    goto :goto_0
.end method

.method public getPlanData(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getPlayerDesc(Lcom/hz/actor/Player;)Ljava/lang/String;
    .locals 5
    .param p1, "p"    # Lcom/hz/actor/Player;

    .prologue
    .line 3006
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3007
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/Player;->getLevel()B

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3008
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3009
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Lcom/hz/actor/Player;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3011
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H\u1ed9 thu\u1eabn mi\u1ec5n th\u01b0\u01a1ng:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/hz/actor/Player;->keepout_atk_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3016
    invoke-direct {p0, p1}, Lcom/hz/battle/BattlePanel;->getPlayerBufferMsg(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3018
    iget-object v1, p1, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    if-eqz v1, :cond_0

    .line 3020
    iget-object v1, p1, Lcom/hz/actor/Player;->formationSkill:Lcom/hz/core/Skill;

    invoke-virtual {v1}, Lcom/hz/core/Skill;->getFormationInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3073
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSelectItem()Lcom/hz/core/Item;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->petSelectItem:Lcom/hz/core/Item;

    .line 798
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->selectItem:Lcom/hz/core/Item;

    goto :goto_0
.end method

.method protected getSelectSkill()Lcom/hz/core/Skill;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->petSelectSkill:Lcom/hz/core/Skill;

    .line 782
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->selectSkill:Lcom/hz/core/Skill;

    goto :goto_0
.end method

.method public getSequenceList()Ljava/util/Vector;
    .locals 9

    .prologue
    .line 1805
    :try_start_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1807
    .local v6, "resultList":Ljava/util/Vector;
    iget-object v8, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v8, v8, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    if-nez v8, :cond_0

    .line 1881
    .end local v6    # "resultList":Ljava/util/Vector;
    :goto_0
    return-object v6

    .line 1811
    .restart local v6    # "resultList":Ljava/util/Vector;
    :cond_0
    const/4 v4, 0x0

    .line 1812
    .local v4, "lastPos":I
    const/4 v5, 0x0

    .line 1814
    .local v5, "pos":I
    const/4 v1, 0x0

    .line 1816
    .local v1, "effectStatus":I
    const/4 v7, 0x0

    .line 1817
    .local v7, "subVector":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v8, v8, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 1859
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->cleanTargetSelect()V

    .line 1860
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1862
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/hz/battle/BattlePanel;->setOrderInit(Z)V

    .line 1865
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/hz/battle/BattlePanel;->setPetRound(Z)V

    .line 1868
    iget-object v8, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v8}, Lcom/hz/battle/Battle;->getType()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1869
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->cleanPlanVector()V

    .line 1872
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/hz/battle/BattlePanel;->checkSkipAnimeGWidgetShow(Z)V

    goto :goto_0

    .line 1877
    .end local v1    # "effectStatus":I
    .end local v3    # "i":I
    .end local v4    # "lastPos":I
    .end local v5    # "pos":I
    .end local v6    # "resultList":Ljava/util/Vector;
    .end local v7    # "subVector":Ljava/util/Vector;
    :catch_0
    move-exception v2

    .line 1881
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0

    .line 1818
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "effectStatus":I
    .restart local v3    # "i":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "pos":I
    .restart local v6    # "resultList":Ljava/util/Vector;
    .restart local v7    # "subVector":Ljava/util/Vector;
    :cond_2
    iget-object v8, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v8, v8, Lcom/hz/battle/Battle;->resultControlList:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/main/Control;

    .line 1819
    .local v0, "aniControl":Lcom/hz/main/Control;
    if-nez v0, :cond_3

    .line 1817
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1823
    :cond_3
    move v4, v5

    .line 1825
    iget-byte v5, v0, Lcom/hz/main/Control;->byte0:B

    .line 1827
    iget v1, v0, Lcom/hz/main/Control;->counter:I

    .line 1829
    iget v8, v0, Lcom/hz/main/Control;->type:I

    packed-switch v8, :pswitch_data_0

    .line 1850
    :cond_4
    :goto_3
    if-nez v7, :cond_5

    .line 1851
    new-instance v7, Ljava/util/Vector;

    .end local v7    # "subVector":Ljava/util/Vector;
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1852
    .restart local v7    # "subVector":Ljava/util/Vector;
    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1855
    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 1834
    :pswitch_0
    invoke-static {v4, v5}, Lcom/hz/battle/Battle;->isSameSide(II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1835
    new-instance v7, Ljava/util/Vector;

    .end local v7    # "subVector":Ljava/util/Vector;
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1836
    .restart local v7    # "subVector":Ljava/util/Vector;
    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1842
    :pswitch_1
    const/16 v8, 0x10

    invoke-static {v1, v8}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v8, 0x200

    invoke-static {v1, v8}, Lcom/hz/battle/Battle;->isEffectStatus(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1843
    :cond_6
    new-instance v7, Ljava/util/Vector;

    .end local v7    # "subVector":Ljava/util/Vector;
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1844
    .restart local v7    # "subVector":Ljava/util/Vector;
    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1829
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public gotoBattleMenu()V
    .locals 10

    .prologue
    .line 163
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->cleanTargetSelect()V

    .line 169
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWindow;

    .line 170
    .local v2, "window":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GContainer;

    .line 178
    .local v3, "lib":Lcom/hz/gui/GContainer;
    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->clear()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/hz/gui/GWindow;->setMinHeight(I)V

    .line 188
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 189
    .local v1, "v":Ljava/util/Vector;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x59

    const/4 v7, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 190
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x5a

    const/4 v7, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 192
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    const/4 v4, 0x2

    const/4 v5, 0x2

    const/16 v6, 0x5b

    const/4 v7, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 196
    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v6, 0x5d

    const/16 v7, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 198
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/16 v6, 0x5e

    const/4 v7, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 202
    :cond_3
    const/4 v4, 0x4

    const/4 v5, -0x1

    const/16 v6, 0x22

    const/16 v7, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 203
    const/4 v4, 0x6

    const/4 v5, 0x6

    const/16 v6, 0x97

    const/16 v7, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 207
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x94

    const/16 v7, 0x3ac

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 219
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x9e

    const/4 v7, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    .line 223
    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v8, v0, [I

    .line 224
    .local v8, "hotKeyTable":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v9, v0, :cond_7

    .line 227
    invoke-virtual {v2, v8}, Lcom/hz/gui/GWindow;->setHotKeyTable([I)V

    .line 228
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/hz/gui/GWindow;->setCatchHotKey(Z)V

    .line 229
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 230
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0}, Lcom/hz/ui/UIHandler;->show()V

    .line 232
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 233
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->addUI(Lcom/hz/ui/UIHandler;)V

    .line 236
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->setAttackMenuGuide2()V

    goto/16 :goto_0

    .line 214
    .end local v8    # "hotKeyTable":[I
    .end local v9    # "i":I
    :cond_6
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x95

    const/16 v7, 0x3a6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hz/battle/BattlePanel;->addBattleMenu(Ljava/util/Vector;Lcom/hz/gui/GWindow;Lcom/hz/gui/GContainer;IBII)V

    goto :goto_1

    .line 225
    .restart local v8    # "hotKeyTable":[I
    .restart local v9    # "i":I
    :cond_7
    invoke-virtual {v1, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v8, v9

    .line 224
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method protected gotoPopMenu()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public handlerMouse()V
    .locals 0

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->handlerMousePressed()V

    .line 1361
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->handlerMouseDragged()V

    .line 1363
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->handlerMouseReleased()V

    .line 1364
    return-void
.end method

.method public initRoundStartOrder()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isOrderInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    invoke-virtual {p0, v4}, Lcom/hz/battle/BattlePanel;->setOrderInit(Z)V

    .line 649
    invoke-direct {p0, v3}, Lcom/hz/battle/BattlePanel;->checkSkipAnimeGWidgetShow(Z)V

    .line 651
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->doAutoFight()V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->setAttackMenuGuide1()V

    .line 661
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->updatePlayerHpMpInfo()V

    .line 664
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    invoke-direct {p0, v3}, Lcom/hz/battle/BattlePanel;->checkBackGWidgetShow(Z)V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v1, v2}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 671
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    invoke-virtual {v1, v2}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 674
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v2, v2, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v1, v2}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v1

    if-nez v1, :cond_3

    .line 675
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v3}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 678
    :cond_3
    invoke-virtual {p0, v4}, Lcom/hz/battle/BattlePanel;->setPetRound(Z)V

    .line 683
    :cond_4
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPopUI:Lcom/hz/ui/UIHandler;

    if-eqz v1, :cond_5

    .line 684
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->gotoBattleMenu()V

    goto :goto_0

    .line 692
    :cond_5
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 693
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->initAttackOrder()V

    goto :goto_0

    .line 699
    :cond_6
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->getOrderIndex()B

    move-result v0

    .line 702
    .local v0, "lastOrderIndex":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 703
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->initAttackOrder()V

    goto :goto_0

    .line 708
    :cond_7
    invoke-direct {p0, v0}, Lcom/hz/battle/BattlePanel;->setFoucsGWidgetToOrder(I)V

    .line 710
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->getTargetSelectPanel()Lcom/hz/battle/TargetSelectPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    .line 711
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isCursorEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->initAttackOrder()V

    goto :goto_0
.end method

.method public isCursorEnable()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/hz/battle/BattlePanel;->isEnable:Z

    return v0
.end method

.method isOrderInit()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/hz/battle/BattlePanel;->isOrderInit:Z

    return v0
.end method

.method isPetAuto()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v0

    goto :goto_0
.end method

.method isPetRound()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    return v0
.end method

.method isReady()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v3}, Lcom/hz/battle/Battle;->getType()I

    move-result v3

    if-nez v3, :cond_4

    .line 390
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    if-nez v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    .line 400
    .local v0, "isHavePet":Z
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v4, v4, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v3, v4}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v3

    if-nez v3, :cond_2

    move v1, v2

    .line 401
    goto :goto_0

    .line 404
    :cond_2
    if-eqz v0, :cond_0

    .line 406
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-nez v3, :cond_3

    move v1, v2

    .line 412
    goto :goto_0

    .line 415
    :cond_3
    iget-object v3, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v4, v4, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v3, v4}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    .line 416
    goto :goto_0

    .line 423
    .end local v0    # "isHavePet":Z
    :cond_4
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isRomoteReady()Z

    move-result v1

    goto :goto_0
.end method

.method public isRomoteReady()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    if-nez v4, :cond_1

    move v2, v3

    .line 283
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    .line 269
    goto :goto_0

    .line 271
    :cond_3
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    if-nez v4, :cond_4

    move v2, v3

    .line 272
    goto :goto_0

    .line 276
    :cond_4
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    .line 278
    .local v0, "isHavePet":Z
    if-eqz v0, :cond_5

    const/4 v1, 0x2

    .line 279
    .local v1, "planSize":I
    :goto_1
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->planVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    .line 280
    goto :goto_0

    .end local v1    # "planSize":I
    :cond_5
    move v1, v2

    .line 278
    goto :goto_1
.end method

.method public logic(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 1587
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0}, Lcom/hz/battle/Battle;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 1590
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v0}, Lcom/hz/battle/Battle;->getPlanTime()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPlayer:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v1, v1, Lcom/hz/actor/Player;->position:B

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->getPlanData(I)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    iget-byte v0, v0, Lcom/hz/actor/Player;->position:B

    invoke-virtual {p0, v2}, Lcom/hz/battle/BattlePanel;->getBattlePlanData(B)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hz/battle/BattlePanel;->addPlan(B[B)V

    .line 1605
    :cond_1
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->updatePlayerHpMpInfo()V

    .line 1606
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->doPlanData()V

    .line 1625
    :goto_0
    return-void

    .line 1612
    :cond_2
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->isRemoteWaitting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1613
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->updatePlayerHpMpInfo()V

    .line 1614
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hz/battle/Battle;->setRemoteWaiting(Z)V

    goto :goto_0

    .line 1620
    :cond_3
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->initRoundStartOrder()V

    .line 1621
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->handlerMouse()V

    .line 1622
    invoke-direct {p0, p1}, Lcom/hz/battle/BattlePanel;->handleKey(I)V

    .line 1623
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->logicTargetSelect()V

    goto :goto_0
.end method

.method public logicAnimePlaying(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 1376
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->handlerMouse()V

    .line 1379
    sparse-switch p1, :sswitch_data_0

    .line 1397
    :goto_0
    return-void

    .line 1382
    :sswitch_0
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChatRoom()V

    goto :goto_0

    .line 1386
    :sswitch_1
    const/16 v0, 0x3a4

    invoke-direct {p0, v1, v0}, Lcom/hz/battle/BattlePanel;->doMenuAction(Lcom/hz/ui/UIHandler;I)Z

    goto :goto_0

    .line 1390
    :sswitch_2
    const/16 v0, 0x2c37

    invoke-direct {p0, v1, v0}, Lcom/hz/battle/BattlePanel;->doMenuAction(Lcom/hz/ui/UIHandler;I)Z

    goto :goto_0

    .line 1394
    :sswitch_3
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChat()V

    goto :goto_0

    .line 1379
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_0
        0x23 -> :sswitch_3
        0x2a -> :sswitch_0
        0x35 -> :sswitch_2
    .end sparse-switch
.end method

.method public logicBattleSee(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->initRoundStartOrder()V

    .line 1407
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->targetSelectPanel:Lcom/hz/battle/TargetSelectPanel;

    invoke-virtual {v0, p1}, Lcom/hz/battle/TargetSelectPanel;->handleKey(I)V

    .line 1420
    :goto_0
    return-void

    .line 1413
    :cond_0
    const/16 v0, 0x35

    if-ne p1, v0, :cond_1

    .line 1414
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->gotoPopMenu()V

    goto :goto_0

    .line 1418
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattlePanel;->logicRemoteWaiting(I)V

    .line 1419
    invoke-direct {p0}, Lcom/hz/battle/BattlePanel;->logicTargetSelect()V

    goto :goto_0
.end method

.method public logicRemoteWaiting(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 1432
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->handlerMouse()V

    .line 1435
    sparse-switch p1, :sswitch_data_0

    .line 1445
    :goto_0
    return-void

    .line 1438
    :sswitch_0
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChatRoom()V

    goto :goto_0

    .line 1442
    :sswitch_1
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->doBattleChat()V

    goto :goto_0

    .line 1435
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIHandler;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 1069
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hz/battle/BattlePanel;->drawCursor(Ljavax/microedition/lcdui/Graphics;)V

    .line 1070
    return-void
.end method

.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 2976
    if-nez p1, :cond_0

    .line 2999
    :goto_0
    return-void

    .line 2980
    :cond_0
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2983
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/hz/battle/BattlePanel;->processInfoList(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 2987
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/battle/BattlePanel;->processOrderPanel(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 2991
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/hz/battle/BattlePanel;->processOrderPopPanel(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 2996
    :sswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/hz/battle/BattlePanel;->processPopMenu(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 2980
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x10 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3002
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 3003
    return-void
.end method

.method public processOrderPopPanel(Lcom/hz/ui/UIHandler;I)V
    .locals 5
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 2580
    if-eqz p2, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2584
    :cond_1
    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v3

    .line 2585
    .local v3, "window":Lcom/hz/gui/GWindow;
    if-eqz v3, :cond_0

    .line 2590
    iget-object v1, v3, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 2591
    .local v1, "gWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 2595
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 2597
    .local v0, "event":I
    invoke-direct {p0, p1, v0}, Lcom/hz/battle/BattlePanel;->doMenuAction(Lcom/hz/ui/UIHandler;I)Z

    .line 2600
    const/16 v4, 0x3a6

    if-eq v0, v4, :cond_2

    .line 2601
    const/16 v4, 0x3ac

    if-ne v0, v4, :cond_0

    .line 2603
    :cond_2
    instance-of v4, v1, Lcom/hz/gui/GLinePanel;

    if-eqz v4, :cond_0

    .line 2604
    check-cast v1, Lcom/hz/gui/GLinePanel;

    .end local v1    # "gWidget":Lcom/hz/gui/GWidget;
    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GLabel;

    .line 2605
    .local v2, "label":Lcom/hz/gui/GLabel;
    if-eqz v2, :cond_0

    .line 2606
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetAuto()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x94

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x95

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public processPopMenu(Lcom/hz/ui/UIHandler;I)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 2546
    return-void
.end method

.method public selectAutoFightTarget(Lcom/hz/actor/Player;)I
    .locals 5
    .param p1, "battlePlayer"    # Lcom/hz/actor/Player;

    .prologue
    .line 1485
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    if-nez v4, :cond_1

    .line 1486
    const/4 v2, 0x0

    .line 1509
    :cond_0
    :goto_0
    return v2

    .line 1490
    :cond_1
    const/4 v3, 0x0

    .line 1491
    .local v3, "startPos":I
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v4}, Lcom/hz/battle/Battle;->getLeftPosNum()I

    move-result v0

    .line 1494
    .local v0, "endPos":I
    iget-byte v4, p1, Lcom/hz/actor/Player;->position:B

    invoke-static {v4}, Lcom/hz/battle/Battle;->isLeftSide(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1495
    const/16 v3, 0x14

    .line 1496
    const/16 v0, 0x22

    .line 1499
    :cond_2
    move v2, v3

    .local v2, "pos":I
    :goto_1
    if-lt v2, v0, :cond_3

    move v2, v3

    .line 1509
    goto :goto_0

    .line 1501
    :cond_3
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v4, v2}, Lcom/hz/battle/Battle;->getPlayerByPos(I)Lcom/hz/actor/Player;

    move-result-object v1

    .line 1502
    .local v1, "player":Lcom/hz/actor/Player;
    iget-object v4, p0, Lcom/hz/battle/BattlePanel;->battle:Lcom/hz/battle/Battle;

    invoke-virtual {v4, v1}, Lcom/hz/battle/Battle;->isValidBattlePlayer(Lcom/hz/actor/Player;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1499
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setCursor(B)V
    .locals 0
    .param p1, "pos"    # B

    .prologue
    .line 804
    iput-byte p1, p0, Lcom/hz/battle/BattlePanel;->cursor:B

    .line 805
    return-void
.end method

.method public setCursorEnable(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, -0x1

    .line 817
    iput-boolean p1, p0, Lcom/hz/battle/BattlePanel;->isEnable:Z

    .line 819
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_0

    .line 827
    :goto_0
    return-void

    .line 822
    :cond_0
    if-eqz p1, :cond_1

    .line 823
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    goto :goto_0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/hz/battle/BattlePanel;->cusorSprite:Lcom/hz/sprite/GameSprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/hz/sprite/GameSprite;->setCurAnimation(II)V

    goto :goto_0
.end method

.method setOrderIndex(B)V
    .locals 1
    .param p1, "_index"    # B

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iput-byte p1, p0, Lcom/hz/battle/BattlePanel;->petOrderIndex:B

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iput-byte p1, p0, Lcom/hz/battle/BattlePanel;->orderIndex:B

    goto :goto_0
.end method

.method setOrderInit(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/hz/battle/BattlePanel;->isOrderInit:Z

    .line 342
    return-void
.end method

.method protected setOrderPet(Lcom/hz/actor/Player;)V
    .locals 0
    .param p1, "pet"    # Lcom/hz/actor/Player;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/hz/battle/BattlePanel;->orderPet:Lcom/hz/actor/Player;

    .line 729
    return-void
.end method

.method setPetRound(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 348
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, p1}, Lcom/hz/battle/BattleAniEngine;->setTag(IZ)V

    .line 350
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 357
    .local v1, "isPlayerMenuShow":Z
    :goto_1
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 358
    .local v0, "gw":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_3

    .line 364
    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 367
    :cond_3
    iget-object v2, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0

    .line 354
    .end local v0    # "gw":Lcom/hz/gui/GWidget;
    .end local v1    # "isPlayerMenuShow":Z
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected setSeeBattleGwidgetShow(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 954
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    if-nez v1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0x3bf

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 960
    .local v0, "gw":Lcom/hz/gui/GWidget;
    if-eqz v0, :cond_2

    .line 961
    invoke-virtual {v0, p1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 965
    :cond_2
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->battleAni:Lcom/hz/battle/BattleAniEngine;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/hz/battle/BattleAniEngine;->isTag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/hz/battle/BattlePanel;->orderPanelUI:Lcom/hz/ui/UIHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0, p1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    goto :goto_0
.end method

.method protected setSelectItem(Lcom/hz/core/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iput-object p1, p0, Lcom/hz/battle/BattlePanel;->petSelectItem:Lcom/hz/core/Item;

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    iput-object p1, p0, Lcom/hz/battle/BattlePanel;->selectItem:Lcom/hz/core/Item;

    goto :goto_0
.end method

.method protected setSelectSkill(Lcom/hz/core/Skill;)V
    .locals 1
    .param p1, "skill"    # Lcom/hz/core/Skill;

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/hz/battle/BattlePanel;->isPetRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iput-object p1, p0, Lcom/hz/battle/BattlePanel;->petSelectSkill:Lcom/hz/core/Skill;

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    iput-object p1, p0, Lcom/hz/battle/BattlePanel;->selectSkill:Lcom/hz/core/Skill;

    goto :goto_0
.end method
