.class public Lcom/hz/ui/KeyUIAction;
.super Ljava/lang/Object;
.source "KeyUIAction.java"

# interfaces
.implements Lcom/hz/ui/UIListener;


# static fields
.field public static final ACTOR_BUY_CHOICE_JOB:B = 0x1t

.field public static final ACTOR_BUY_CHOICE_NAME:B = 0x4t

.field public static final ACTOR_BUY_CHOICE_SEX:B = 0x2t

.field public static final ACTOR_BUY_CHOICE_TYPE:B = 0x3t

.field public static final ACTOR_MASTER_CHOICE_ACCEPT:B = 0x1t

.field public static final ACTOR_MASTER_CHOICE_JOB:B = 0x2t

.field public static final ACTOR_MASTER_CHOICE_STATUS:B = 0x3t

.field private static final KEY_BAG_MENU_POS:I = 0x2

.field private static final KEY_COUNTRY_EVENT:[I

.field private static final KEY_COUNTRY_HOT:[I

.field private static final KEY_COUNTRY_MENU:[Ljava/lang/String;

.field private static final KEY_COUNTRY_MENU_POS:I = 0x5

.field private static final KEY_NOTICE_EVENT:[I

.field private static final KEY_NOTICE_HOT:[I

.field private static final KEY_NOTICE_MENU:[Ljava/lang/String;

.field private static final KEY_NOTICE_MENU_POS:I = 0x6

.field private static final KEY_PET_EVENT:[I

.field private static final KEY_PET_HOT:[I

.field private static final KEY_PET_MENU:[Ljava/lang/String;

.field private static final KEY_PET_MENU_POS:I = 0x4

.field private static final KEY_PLAYER_EVENT:[I

.field private static final KEY_PLAYER_HOT:[I

.field private static final KEY_PLAYER_MENU:[Ljava/lang/String;

.field private static final KEY_PLAYER_MENU_POS:I = 0x1

.field private static final KEY_RELATION_EVENT:[I

.field private static final KEY_RELATION_HOT:[I

.field private static final KEY_RELATION_MENU:[Ljava/lang/String;

.field private static final KEY_RELATION_MENU_POS:I = 0x3

.field private static final KEY_SHOP_EVENT:[I

.field private static final KEY_SHOP_HOT:[I

.field private static final KEY_SHOP_MENU:[Ljava/lang/String;

.field private static final KEY_SHOP_MENU_POS:I = 0x8

.field private static final KEY_SYSTEM_MENU_POS:I = 0x7

.field public static final PLAYER_RAIDERS_DEFAULT:B = 0x2t

.field public static final PLAYER_RAIDERS_JOB:B = 0x1t

.field public static final RANK_CHOICE_RANKMY:B = 0x3t

.field public static final RANK_CHOICE_RANKSUBTYPE:B = 0x2t

.field public static final RANK_CHOICE_RANKTYPE:B = 0x1t

.field private static instance:Lcom/hz/ui/KeyUIAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1485
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 1486
    const-string v1, "Thu\u1ed9c t\u00ednh"

    aput-object v1, v0, v6

    .line 1490
    const-string v1, "Th\u00e0nh t\u1ef1u"

    aput-object v1, v0, v3

    .line 1491
    const-string v1, "H\u00ecnh qu\u00e1i"

    aput-object v1, v0, v4

    .line 1493
    const-string v1, "H\u00ecnh"

    aput-object v1, v0, v5

    .line 1494
    const-string v1, "Thi\u1ec7p"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 1495
    const-string v2, "Hot album"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 1496
    const-string v2, "Ch\u1ee5p h\u00ecnh"

    aput-object v2, v0, v1

    .line 1485
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PLAYER_MENU:[Ljava/lang/String;

    .line 1499
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PLAYER_EVENT:[I

    .line 1527
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1529
    aput v3, v0, v3

    .line 1530
    aput v4, v0, v4

    .line 1532
    aput v5, v0, v5

    .line 1533
    aput v7, v0, v7

    const/4 v1, 0x5

    .line 1534
    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 1535
    const/4 v2, 0x6

    aput v2, v0, v1

    .line 1527
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PLAYER_HOT:[I

    .line 1572
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1573
    const/16 v1, 0x22

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1574
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1575
    const-string v1, "\u0110\u1ed9i"

    aput-object v1, v0, v4

    .line 1576
    const/16 v1, 0x7e

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1577
    const-string v1, "Th\u01b0"

    aput-object v1, v0, v7

    .line 1572
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_RELATION_MENU:[Ljava/lang/String;

    .line 1579
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_RELATION_EVENT:[I

    .line 1586
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1588
    aput v3, v0, v3

    .line 1589
    aput v4, v0, v4

    .line 1590
    aput v5, v0, v5

    .line 1591
    aput v7, v0, v7

    .line 1586
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_RELATION_HOT:[I

    .line 1596
    new-array v0, v4, [Ljava/lang/String;

    .line 1597
    const/16 v1, 0x4d

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1598
    const/16 v1, 0x58

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1596
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PET_MENU:[Ljava/lang/String;

    .line 1600
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PET_EVENT:[I

    .line 1604
    new-array v0, v4, [I

    .line 1606
    aput v3, v0, v3

    .line 1604
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PET_HOT:[I

    .line 1611
    new-array v0, v4, [Ljava/lang/String;

    .line 1612
    const-string v1, "Th\u00e0nh"

    aput-object v1, v0, v6

    .line 1613
    const-string v1, "Qu\u1ed1c gia"

    aput-object v1, v0, v3

    .line 1611
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_COUNTRY_MENU:[Ljava/lang/String;

    .line 1615
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_COUNTRY_EVENT:[I

    .line 1619
    new-array v0, v4, [I

    .line 1621
    aput v3, v0, v3

    .line 1619
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_COUNTRY_HOT:[I

    .line 1626
    new-array v0, v5, [Ljava/lang/String;

    .line 1627
    const-string v1, "S\u1ef1 ki\u1ec7n"

    aput-object v1, v0, v6

    .line 1628
    const-string v1, "Th\u00f4ng b\u00e1o game"

    aput-object v1, v0, v3

    .line 1629
    const-string v1, "Chi\u1ebfn l\u01b0\u1ee3c"

    aput-object v1, v0, v4

    .line 1626
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_NOTICE_MENU:[Ljava/lang/String;

    .line 1631
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_NOTICE_EVENT:[I

    .line 1636
    new-array v0, v5, [I

    .line 1638
    aput v3, v0, v3

    .line 1639
    aput v4, v0, v4

    .line 1636
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_NOTICE_HOT:[I

    .line 1674
    new-array v0, v5, [Ljava/lang/String;

    .line 1675
    const/16 v1, 0x89

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1676
    const/16 v1, 0x62

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1677
    const/16 v1, 0x54

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1674
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_SHOP_MENU:[Ljava/lang/String;

    .line 1679
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_SHOP_EVENT:[I

    .line 1684
    new-array v0, v5, [I

    .line 1686
    aput v3, v0, v3

    .line 1687
    aput v4, v0, v4

    .line 1684
    sput-object v0, Lcom/hz/ui/KeyUIAction;->KEY_SHOP_HOT:[I

    .line 1688
    return-void

    .line 1499
    :array_0
    .array-data 4
        0x2bc9
        0x2bd4
        0x2bd2
        0x2bd6
        0x2bd7
        0x2bd5
        0x2bed
    .end array-data

    .line 1579
    :array_1
    .array-data 4
        0x2bc5
        0x2bd9
        0x2bda
        0x2bd3
        0x2bc4
    .end array-data

    .line 1600
    :array_2
    .array-data 4
        0x2bc3
        0x2bcd
    .end array-data

    .line 1615
    :array_3
    .array-data 4
        0x2bcc
        0x2bcb
    .end array-data

    .line 1631
    :array_4
    .array-data 4
        0x2bd0
        0x2bdb
        0x2bd1
    .end array-data

    .line 1679
    :array_5
    .array-data 4
        0x2bd8
        0x2be4
        0x2be3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static createKeyLeftMenu()V
    .locals 12

    .prologue
    .line 1692
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1693
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1694
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1696
    .local v4, "keyList":Ljava/util/Vector;
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1698
    .local v11, "myPlayer":Lcom/hz/actor/Player;
    invoke-static {}, Lcom/hz/main/GameWorld;->isShowisChargeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1699
    const-string v1, "H\u0110 N\u1ea1p"

    const/16 v3, 0x2c59

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1702
    :cond_0
    invoke-static {}, Lcom/hz/main/GameWorld;->isShowOnLineReward()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1703
    const-string v1, "Qu\u00e0 online"

    const/16 v3, 0x2c54

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1706
    :cond_1
    invoke-static {}, Lcom/hz/main/GameWorld;->isNewPlayerEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1707
    const-string v1, "Tin m\u1edbi"

    const/16 v3, 0x2bf1

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1710
    :cond_2
    invoke-static {}, Lcom/hz/main/GameWorld;->isConsumerAccumulated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1711
    const-string v1, "T\u00edch ti\u00eau"

    const/16 v3, 0xb8

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1714
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/hz/actor/Player;->isShopMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1715
    const/16 v1, 0x75

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1718
    :cond_4
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1719
    const-string v1, "T\u00fai"

    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1730
    const/16 v1, 0x57

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1731
    const/16 v1, 0x27

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2bc7

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1732
    const/16 v1, 0x4d

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1734
    const/16 v1, 0x6a

    invoke-virtual {v11, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_5

    .line 1735
    const-string v1, "L\u00e3nh \u0111\u1ecba"

    const/4 v3, 0x5

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1740
    :cond_5
    const/16 v1, 0x6a

    invoke-virtual {v11, v1}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_6

    .line 1741
    const-string v1, "Th\u00f4ng b\u00e1o"

    const/4 v3, 0x6

    const/4 v5, 0x6

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1745
    :cond_6
    const-string v1, "B.\u0111\u1ed3"

    const/16 v3, 0x2c11

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1749
    invoke-static {}, Lcom/hz/core/SpriteGuide;->isSpriteGuideReach()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1750
    const-string v1, "Tr\u1ee3 th\u1ee7"

    const/16 v3, 0x2c36

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1753
    :cond_7
    const-string v1, "System"

    const/4 v3, 0x7

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1755
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/hz/actor/Player;->isPower()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v11, Lcom/hz/actor/Player;->playerTurnMonster:Lcom/hz/core/PlayerTurnMonster;

    if-eqz v1, :cond_9

    .line 1756
    :cond_8
    const-string v1, "Tr\u1ea1ng th\u00e1i "

    const/16 v3, 0x2c14

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1759
    :cond_9
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 1760
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 1761
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 1767
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    .line 1768
    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    .line 1769
    const/4 v10, 0x1

    .line 1763
    invoke-static/range {v5 .. v10}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    .line 1770
    return-void
.end method

.method public static doGoodMainMenu(I)Z
    .locals 5
    .param p0, "menuEvent"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 4610
    sparse-switch p0, :sswitch_data_0

    .line 4646
    :goto_0
    return v2

    .line 4613
    :sswitch_0
    const/16 v3, 0x2b12

    if-ne p0, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createKeyGoodSearchUI(Z)V

    goto :goto_0

    .line 4617
    :sswitch_1
    invoke-static {}, Lcom/hz/core/ShopItem;->doGoodsSellListMsg()Ljava/util/Vector;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v4, v3}, Lcom/hz/ui/UIHandler;->createShopItemUI(Ljava/util/Vector;Ljava/lang/Object;I)V

    goto :goto_0

    .line 4621
    :sswitch_2
    const/16 v1, 0x3d

    invoke-static {v4, v1}, Lcom/hz/ui/KeyUIAction;->gotoGoodTypeMenu(Lcom/hz/ui/UIHandler;B)V

    goto :goto_0

    .line 4625
    :sswitch_3
    invoke-static {v2, v2, v4, v4}, Lcom/hz/ui/UIHandler;->createKeyGoodListUI(BILjava/lang/Object;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 4629
    :sswitch_4
    invoke-static {v2, v4, v4}, Lcom/hz/ui/UIHandler;->createBagOperateUI(BLcom/hz/ui/UIHandler;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 4633
    :sswitch_5
    const/16 v1, 0x3c

    invoke-static {v4, v1}, Lcom/hz/ui/KeyUIAction;->gotoGoodTypeMenu(Lcom/hz/ui/UIHandler;B)V

    goto :goto_0

    .line 4637
    :sswitch_6
    invoke-static {v2}, Lcom/hz/core/ShopItem;->doGoodsPurchaseTypeListMsg(I)[Ljava/lang/Object;

    move-result-object v0

    .line 4638
    .local v0, "objectList":[Ljava/lang/Object;
    const/16 v3, 0x6a

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Vector;

    invoke-static {v3, v1, v2}, Lcom/hz/ui/UIHandler;->createKeyGoodTypeUI(ILjava/util/Vector;Z)V

    goto :goto_0

    .line 4642
    .end local v0    # "objectList":[Ljava/lang/Object;
    :sswitch_7
    invoke-static {}, Lcom/hz/ui/UIHandler;->createKeyGoodMyUI()V

    goto :goto_0

    .line 4610
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b12 -> :sswitch_0
        0x2b13 -> :sswitch_6
        0x2b14 -> :sswitch_3
        0x2b4e -> :sswitch_0
        0x2b4f -> :sswitch_1
        0x2b50 -> :sswitch_2
        0x2b51 -> :sswitch_4
        0x2b52 -> :sswitch_5
        0x2b53 -> :sswitch_7
    .end sparse-switch
.end method

.method public static doHotKeyMainMenu(III)V
    .locals 7
    .param p0, "menuEvent"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1777
    const/4 v6, 0x0

    .line 1778
    .local v6, "menuObj":[Ljava/lang/Object;
    packed-switch p0, :pswitch_data_0

    .line 1806
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 1807
    invoke-static {p0}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    .line 1810
    :goto_0
    return-void

    .line 1780
    :pswitch_0
    sget-object v0, Lcom/hz/ui/KeyUIAction;->KEY_SHOP_MENU:[Ljava/lang/String;

    sget-object v1, Lcom/hz/ui/KeyUIAction;->KEY_SHOP_EVENT:[I

    sget-object v2, Lcom/hz/ui/KeyUIAction;->KEY_SHOP_HOT:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1783
    :pswitch_1
    sget-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PLAYER_MENU:[Ljava/lang/String;

    sget-object v1, Lcom/hz/ui/KeyUIAction;->KEY_PLAYER_EVENT:[I

    sget-object v2, Lcom/hz/ui/KeyUIAction;->KEY_PLAYER_HOT:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1786
    :pswitch_2
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getKeyBagMenu()[Ljava/lang/Object;

    move-result-object v6

    .line 1787
    aget-object v0, v6, v0

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v6, v5

    check-cast v1, [I

    aget-object v2, v6, v2

    check-cast v2, [I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1790
    :pswitch_3
    sget-object v0, Lcom/hz/ui/KeyUIAction;->KEY_RELATION_MENU:[Ljava/lang/String;

    sget-object v1, Lcom/hz/ui/KeyUIAction;->KEY_RELATION_EVENT:[I

    sget-object v2, Lcom/hz/ui/KeyUIAction;->KEY_RELATION_HOT:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1793
    :pswitch_4
    sget-object v0, Lcom/hz/ui/KeyUIAction;->KEY_PET_MENU:[Ljava/lang/String;

    sget-object v1, Lcom/hz/ui/KeyUIAction;->KEY_PET_EVENT:[I

    sget-object v2, Lcom/hz/ui/KeyUIAction;->KEY_PET_HOT:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1796
    :pswitch_5
    sget-object v0, Lcom/hz/ui/KeyUIAction;->KEY_COUNTRY_MENU:[Ljava/lang/String;

    sget-object v1, Lcom/hz/ui/KeyUIAction;->KEY_COUNTRY_EVENT:[I

    sget-object v2, Lcom/hz/ui/KeyUIAction;->KEY_COUNTRY_HOT:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1799
    :pswitch_6
    sget-object v0, Lcom/hz/ui/KeyUIAction;->KEY_NOTICE_MENU:[Ljava/lang/String;

    sget-object v1, Lcom/hz/ui/KeyUIAction;->KEY_NOTICE_EVENT:[I

    sget-object v2, Lcom/hz/ui/KeyUIAction;->KEY_NOTICE_HOT:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1802
    :pswitch_7
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getSystemMenu()[Ljava/lang/Object;

    move-result-object v6

    .line 1803
    aget-object v0, v6, v0

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v6, v5

    check-cast v1, [I

    aget-object v2, v6, v2

    check-cast v2, [I

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIB)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1778
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public static doKeyCreateCardEvent(ILcom/hz/ui/UIHandler;)V
    .locals 3
    .param p0, "eventType"    # I
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3614
    if-nez p1, :cond_1

    .line 3653
    :cond_0
    :goto_0
    return-void

    .line 3617
    :cond_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    .line 3618
    .local v1, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v1, :cond_0

    .line 3621
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->getPlayerCard()Lcom/hz/core/PlayerCard;

    move-result-object v0

    .line 3622
    .local v0, "card":Lcom/hz/core/PlayerCard;
    if-eqz v0, :cond_0

    .line 3626
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 3650
    :sswitch_0
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->getPlayer()Lcom/hz/actor/Player;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto :goto_0

    .line 3628
    :sswitch_1
    invoke-virtual {v0, p1}, Lcom/hz/core/PlayerCard;->doChangeTitle(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3632
    :sswitch_2
    invoke-virtual {v0, p1}, Lcom/hz/core/PlayerCard;->doChangeBG(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3636
    :sswitch_3
    invoke-virtual {v0, p1}, Lcom/hz/core/PlayerCard;->doChangeSytle(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3640
    :sswitch_4
    invoke-virtual {v0, p1}, Lcom/hz/core/PlayerCard;->doEnterSignModify(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3644
    :sswitch_5
    invoke-virtual {v0}, Lcom/hz/core/PlayerCard;->doPlayerCardGenerate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3645
    invoke-virtual {v1}, Lcom/hz/ui/UIObject;->getPlayer()Lcom/hz/actor/Player;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/hz/ui/UIHandler;->createPlayerCardUI(Lcom/hz/actor/Model;Lcom/hz/core/PlayerCard;)V

    goto :goto_0

    .line 3626
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b1c -> :sswitch_0
        0x2b1d -> :sswitch_5
        0x2ba2 -> :sswitch_1
        0x2ba3 -> :sswitch_2
        0x2ba4 -> :sswitch_3
        0x2ba5 -> :sswitch_4
    .end sparse-switch
.end method

.method public static doKeyGoodSearchEvent(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventID"    # I

    .prologue
    .line 4050
    if-nez p0, :cond_0

    .line 4071
    :goto_0
    return-void

    .line 4053
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4055
    :pswitch_0
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/hz/core/ShopItem;->getGoodsFindDataByUI(Lcom/hz/ui/UIHandler;Z)[Ljava/lang/Object;

    move-result-object v0

    .line 4056
    .local v0, "parentObj":[Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/hz/ui/UIHandler;->createKeyGoodListUI(BILjava/lang/Object;Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 4059
    .end local v0    # "parentObj":[Ljava/lang/Object;
    :pswitch_1
    invoke-static {p0}, Lcom/hz/ui/KeyUIAction;->gotoGoodSelectGrade(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 4062
    :pswitch_2
    invoke-static {p0}, Lcom/hz/ui/KeyUIAction;->gotoGoodSelectLevel(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 4065
    :pswitch_3
    invoke-static {p0}, Lcom/hz/ui/KeyUIAction;->gotoGoodSelectType(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 4068
    :pswitch_4
    invoke-static {p0}, Lcom/hz/ui/KeyUIAction;->gotoGoodSelectName(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 4053
    :pswitch_data_0
    .packed-switch 0x3a9a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final getKeyBagMenu()[Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1543
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1544
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1545
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1547
    .local v4, "keyList":Ljava/util/Vector;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2bc8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1548
    const/16 v1, 0x75

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2bd8

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1549
    invoke-static {}, Lcom/hz/core/Enchant;->isOepn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    const-string v1, "S\u1ea1p Ph\u1ee5 Ma"

    const/16 v3, 0x2c5c

    const/4 v5, 0x6

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1554
    :cond_0
    invoke-static {}, Lcom/hz/main/GameWorld;->isShowResolveMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1555
    const/16 v1, 0x9f

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2c15

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1558
    :cond_1
    invoke-static {}, Lcom/hz/core/Enchant;->isOepn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1560
    const-string v1, "Ph\u1ee5 Ma"

    const/16 v3, 0x2c5a

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1563
    :cond_2
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v8

    .line 1564
    .local v8, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 1565
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 1567
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    const/4 v3, 0x1

    aput-object v6, v1, v3

    const/4 v3, 0x2

    aput-object v7, v1, v3

    return-object v1
.end method

.method private static final getSystemMenu()[Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1645
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1646
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1647
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1649
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "Nh\u00e2n v\u1eadt"

    const/16 v3, 0x2bdc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1650
    const-string v1, "System"

    const/16 v3, 0x2bc2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1651
    const-string v1, "C\u00e0i \u0111\u1eb7t"

    const/16 v3, 0x2bf8

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1652
    const-string v1, "Tho\u00e1t lag"

    const/16 v3, 0x2bde

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1653
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v3, 0x6a

    invoke-virtual {v1, v3}, Lcom/hz/actor/Player;->get(I)I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 1657
    const-string v1, "Kh\u00f3a an to\u00e0n"

    const/16 v3, 0x2c18

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1661
    const-string v1, "X\u1ebfp h\u1ea1ng"

    const/16 v3, 0x2c17

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1663
    :cond_0
    const-string v1, "R\u1eddi game"

    const/16 v3, 0x2bdf

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1665
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v8

    .line 1666
    .local v8, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 1667
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 1669
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    const/4 v3, 0x1

    aput-object v6, v1, v3

    const/4 v3, 0x2

    aput-object v7, v1, v3

    return-object v1
.end method

.method public static getUIActionInstance()Lcom/hz/ui/KeyUIAction;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/hz/ui/KeyUIAction;->instance:Lcom/hz/ui/KeyUIAction;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/hz/ui/KeyUIAction;

    invoke-direct {v0}, Lcom/hz/ui/KeyUIAction;-><init>()V

    sput-object v0, Lcom/hz/ui/KeyUIAction;->instance:Lcom/hz/ui/KeyUIAction;

    .line 87
    :cond_0
    sget-object v0, Lcom/hz/ui/KeyUIAction;->instance:Lcom/hz/ui/KeyUIAction;

    return-object v0
.end method

.method public static gotoAchieveListMenu(ILcom/hz/core/Achieve;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "tabType"    # I
    .param p1, "libAchieve"    # Lcom/hz/core/Achieve;
    .param p2, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1820
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1821
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1823
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0xb2

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x386

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1825
    if-eqz p1, :cond_0

    .line 1826
    const/16 v2, 0x4f

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x23f3

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1829
    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 1830
    if-eqz p1, :cond_1

    .line 1831
    const/16 v2, 0x43

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x23f6

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1833
    :cond_1
    const-string v2, "Nh\u1eadn m\u1ecdi ph\u1ea7n th\u01b0\u1edfng "

    const/16 v3, 0x23f2

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1836
    :cond_2
    const/16 v2, 0xb3

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x387

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1838
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1840
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    .line 1839
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1841
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p2}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1842
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hz/ui/UIObject;->setAchieve(Lcom/hz/core/Achieve;)Lcom/hz/ui/UIObject;

    .line 1843
    return-void
.end method

.method public static gotoAcotrSellListMenu(Lcom/hz/actor/ListPlayer;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/ListPlayer;
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1849
    if-nez p0, :cond_0

    .line 1867
    :goto_0
    return-void

    .line 1852
    :cond_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1853
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1855
    .local v1, "eventList":Ljava/util/Vector;
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1857
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1858
    const-string v2, "H\u1ea1 nh\u00e2n v\u1eadt "

    const/16 v3, 0x2bb7

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1863
    :goto_1
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1864
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1865
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x64

    move-object v5, p1

    .line 1864
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1866
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hz/ui/UIObject;->setListPlayer(Lcom/hz/actor/ListPlayer;)V

    goto :goto_0

    .line 1860
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    :cond_1
    const-string v2, "Treo b\u00e1n"

    const/16 v3, 0x2bb6

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1
.end method

.method public static gotoActorBuyMenu(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 639
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 640
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 641
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 643
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "L\u1ecdc ph\u00e1i"

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 644
    const-string v1, "L\u1ecdc gi\u1edbi"

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 645
    const-string v1, "L\u1ecdc \u0111i\u1ec1u ki\u1ec7n"

    const/4 v3, 0x3

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 646
    const-string v1, "T\u00ecm t\u00ean"

    const/4 v3, 0x4

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 648
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 650
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 653
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x65

    .line 654
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 652
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    .line 655
    return-void
.end method

.method public static gotoActorMasterMenu(Lcom/hz/ui/UIHandler;)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 604
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 605
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 606
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 608
    .local v4, "keyList":Ljava/util/Vector;
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 609
    .local v14, "player":Lcom/hz/actor/Player;
    if-nez v14, :cond_0

    .line 627
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v1, "Ta mu\u1ed1n thu \u0111\u1ed3"

    .line 613
    .local v1, "strAccept":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/hz/actor/Player;->getLevel()B

    move-result v3

    const/16 v8, 0x28

    if-ge v3, v8, :cond_1

    .line 614
    const-string v1, "Ta mu\u1ed1n b\u00e1i s\u01b0"

    .line 616
    :cond_1
    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 617
    const-string v7, "L\u1ecdc ph\u00e1i"

    const/4 v9, 0x2

    move-object v6, v0

    move-object v8, v2

    move-object v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 618
    const-string v7, "L\u1ecdc tr\u1ea1ng th\u00e1i"

    const/4 v9, 0x3

    move-object v6, v0

    move-object v8, v2

    move-object v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 620
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 622
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 625
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x6d

    .line 626
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 624
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoArenaMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 730
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 731
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 733
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 734
    const/16 v2, 0x22

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 735
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc8

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 736
    const/16 v2, 0x4d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 737
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc9

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 738
    const/16 v2, 0x56

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 739
    const-string v2, "\u0110i\u1ec3m"

    const/16 v3, 0x5016

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 740
    const-string v2, "R\u1eddi \u0111\u1ea5u tr\u01b0\u1eddng"

    const/16 v3, 0x5017

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 741
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 743
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 745
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x67

    move-object v5, p0

    .line 744
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 746
    return-void
.end method

.method public static gotoArenaSeeMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    const/16 v4, 0x5021

    .line 753
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 754
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 757
    .local v1, "eventList":Ljava/util/Vector;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-byte v2, p1, Lcom/hz/actor/Player;->arenaStutas:B

    sget-byte v3, Lcom/hz/core/Arena;->STATUS_NONE:B

    if-ne v2, v3, :cond_3

    .line 762
    const/16 v2, 0xd7

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 768
    :cond_2
    :goto_1
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 770
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 772
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x71

    move-object v5, p0

    .line 771
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 763
    .end local v0    # "menuStr":[Ljava/lang/String;
    :cond_3
    iget-byte v2, p1, Lcom/hz/actor/Player;->arenaStutas:B

    sget-byte v3, Lcom/hz/core/Arena;->STATUS_PK:B

    if-ne v2, v3, :cond_2

    .line 764
    const/16 v2, 0xb5

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 765
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x501a

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1
.end method

.method public static gotoArenaShortCutMenu(Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/16 v4, 0x5026

    .line 779
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 780
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v7, :cond_0

    .line 801
    :goto_0
    return-void

    .line 784
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 785
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 787
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Khi\u00eau chi\u1ebfn nhanh "

    const/16 v3, 0x5024

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 788
    const-string v2, "Xem chi\u1ebfn ng\u1eabu nhi\u00ean"

    const/16 v3, 0x5025

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 790
    iget v2, v7, Lcom/hz/ui/UIObject;->intValue1:I

    sget-byte v3, Lcom/hz/core/Arena;->STATUS_NONE:B

    if-ne v2, v3, :cond_1

    .line 791
    const-string v2, "\u0110\u1ed5i xem chi\u1ebfn"

    invoke-static {v6, v2, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 795
    :goto_1
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5023

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 796
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 798
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 800
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x72

    move-object v5, p0

    .line 799
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 793
    .end local v0    # "menuStr":[Ljava/lang/String;
    :cond_1
    const-string v2, "\u0110\u1ed5i khi\u00eau chi\u1ebfn"

    invoke-static {v6, v2, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1
.end method

.method public static gotoArmyUIBuildMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/WarBuild;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "warBuild"    # Lcom/hz/core/WarBuild;

    .prologue
    const/4 v2, -0x1

    .line 973
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 978
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 980
    .local v1, "eventList":Ljava/util/Vector;
    invoke-virtual {p1}, Lcom/hz/core/WarBuild;->isCanUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    const/16 v0, 0x8c

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3651

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 983
    :cond_2
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3650

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 984
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 986
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x60

    move-object v5, p0

    .line 986
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoArmyUICampMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, -0x1

    .line 895
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 896
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 898
    .local v1, "eventList":Ljava/util/Vector;
    const-string v0, "Y\u00eau c\u1ea7u tham chi\u1ebfn"

    const/16 v3, 0x353c

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 899
    const-string v0, "Qu\u1ed1c gia tuy\u00ean chi\u1ebfn"

    const/16 v3, 0x353d

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 900
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 902
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x5e

    move-object v5, p0

    .line 902
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 904
    return-void
.end method

.method public static gotoArmyUISoldierMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Lcom/hz/actor/Model;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 912
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 917
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v7, :cond_0

    .line 921
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 922
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 924
    .local v1, "eventList":Ljava/util/Vector;
    invoke-virtual {v7}, Lcom/hz/ui/UIObject;->isPrevPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    const/16 v0, 0xb2

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x386

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 928
    :cond_2
    const-string v0, "Th\u00e0nh vi\u00ean qu\u1ed1c chi\u1ebfn "

    const/16 v3, 0x35f2

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 929
    const-string v0, "D.s\u00e1ch l\u00ednh y\u00eau c\u1ea7u "

    const/16 v3, 0x35f3

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 930
    const-string v0, "D.s\u00e1ch vi\u1ec7n qu\u00e2n y\u00eau c\u1ea7u "

    const/16 v3, 0x35f4

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 932
    iget-byte v0, p1, Lcom/hz/core/Country;->soldierType:B

    if-ne v0, v4, :cond_5

    .line 933
    const-string v0, "L\u1ecdc"

    const/16 v3, 0x35eb

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 940
    :goto_1
    if-eqz p2, :cond_3

    .line 941
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2af8

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 942
    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b02

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 943
    iget-byte v0, p1, Lcom/hz/core/Country;->soldierType:B

    if-ne v0, v4, :cond_6

    .line 944
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7598

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 945
    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2bee

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 946
    const/16 v0, 0xb7

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2af9

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 947
    const/16 v0, 0x83

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2afa

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 948
    const/16 v0, 0x87

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2afd

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 949
    const/16 v0, 0xbe

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b1e

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 957
    :cond_3
    :goto_2
    invoke-virtual {v7}, Lcom/hz/ui/UIObject;->isNextPage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 958
    const/16 v0, 0xb3

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x387

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 961
    :cond_4
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 963
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x5f

    move-object v5, p0

    .line 963
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 936
    :cond_5
    const-string v0, "\u0110\u1ed3ng \u00fd t\u1ea5t"

    const/16 v3, 0x35ed

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 937
    const-string v0, "T\u1eeb ch\u1ed1i t\u1ea5t"

    const/16 v3, 0x35ee

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_1

    .line 952
    :cond_6
    const-string v0, "\u0110\u1ed3ng \u00fd"

    const/16 v3, 0x7553

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 953
    const/16 v0, 0x42

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7554

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_2
.end method

.method public static gotoChatUpMenu(Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 240
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 241
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 242
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 245
    .local v6, "keyList":Ljava/util/Vector;
    const/16 v2, 0x3ee5

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v7

    .line 246
    .local v7, "listWindow":Lcom/hz/gui/GWindow;
    if-nez v7, :cond_0

    .line 267
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v2, "\u0110\u1ea1p Ti\u00ean"

    const/16 v3, 0x3ee9

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 256
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 258
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 261
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x7d

    move-object v5, p0

    .line 260
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoCityInfoMenu(Lcom/hz/core/City;Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "city"    # Lcom/hz/core/City;
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4656
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4673
    :cond_0
    :goto_0
    return-void

    .line 4660
    :cond_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4661
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4663
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "S\u1eeda t\u00ean th\u00e0nh"

    const/16 v3, 0x2b84

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4664
    const-string v2, "S\u1eeda k\u00ed t\u00ean th\u00e0nh ch\u1ee7"

    const/16 v3, 0x2b85

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4665
    const-string v2, "Kim kh\u1ed1"

    const/16 v3, 0x2b86

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4666
    const-string v2, "V\u00e0o th\u00e0nh c\u00e1 nh\u00e2n"

    const/16 v3, 0x2b87

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4667
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e6

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4669
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4670
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4671
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x42

    move-object v5, p1

    .line 4670
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4672
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hz/ui/UIObject;->setCity(Lcom/hz/core/City;)V

    goto :goto_0
.end method

.method public static gotoColorBox(Lcom/hz/ui/UIHandler;)V
    .locals 5
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4727
    const/16 v4, 0x42cf

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 4728
    .local v2, "templistWindow":Lcom/hz/gui/GWindow;
    const/16 v4, 0x42d3

    invoke-virtual {p0, v4}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v3

    .line 4730
    .local v3, "templistWindow2":Lcom/hz/gui/GWindow;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 4751
    :cond_0
    :goto_0
    return-void

    .line 4734
    :cond_1
    iget-object v4, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v4, :cond_0

    .line 4738
    :cond_2
    const/4 v1, 0x0

    .line 4740
    .local v1, "focusGWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->canCatchKey()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4741
    iget-object v1, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 4746
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 4748
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 4749
    .local v0, "eventID":I
    invoke-static {p0, v0}, Lcom/hz/ui/UIAction;->processColorBoxLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 4742
    .end local v0    # "eventID":I
    :cond_4
    invoke-virtual {v3}, Lcom/hz/gui/GWindow;->canCatchKey()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4743
    iget-object v1, v3, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    goto :goto_1
.end method

.method public static gotoCopy(Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4702
    const/16 v3, 0x2e7d

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 4704
    .local v2, "templistWindow":Lcom/hz/gui/GWindow;
    if-nez v2, :cond_1

    .line 4720
    :cond_0
    :goto_0
    return-void

    .line 4708
    :cond_1
    iget-object v3, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v3, :cond_0

    .line 4713
    iget-object v1, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 4715
    .local v1, "focusGWidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 4717
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 4718
    .local v0, "eventID":I
    invoke-static {p0, v0}, Lcom/hz/ui/UIAction;->processCopyLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0
.end method

.method public static gotoCountryAssignMemberMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Lcom/hz/actor/ListPlayer;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    .line 1164
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1165
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1167
    .local v1, "eventList":Ljava/util/Vector;
    if-eqz p2, :cond_1

    .line 1168
    const-string v7, "\u1ee6y th\u00e1c th\u00e0nh vi\u00ean n\u00e0y"

    .line 1169
    .local v7, "menu":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcom/hz/core/Country;->isAssignMem(Lcom/hz/actor/Model;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1170
    const-string v7, "H\u1ee7y th\u00e0nh vi\u00ean n\u00e0y"

    .line 1172
    :cond_0
    const/16 v2, 0x264f

    invoke-static {v8, v7, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1174
    .end local v7    # "menu":Ljava/lang/String;
    :cond_1
    const-string v2, "Ho\u00e0n th\u00e0nh \u1ee7y th\u00e1c"

    const/16 v3, 0x264a

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1175
    const-string v2, "L\u1ecdc th\u00e0nh vi\u00ean"

    const/16 v3, 0x264b

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1176
    const-string v2, "L\u1ecdc b\u1eadc quan"

    const/16 v3, 0x264c

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1177
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1179
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1181
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x56

    const/4 v5, 0x0

    .line 1180
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1182
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1183
    return-void
.end method

.method public static gotoCountryBossMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 834
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 835
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 837
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 838
    const/16 v2, 0x22

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 839
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc8

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 840
    const/16 v2, 0x4d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 841
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc9

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 842
    const/16 v2, 0x56

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 843
    const-string v2, "Chi\u1ebfn b\u00e1o"

    const/16 v3, 0x2ee2

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 844
    const-string v2, "T\u00e0i nguy\u00ean chi\u1ebfn tr\u01b0\u1eddng"

    const/16 v3, 0x2eee

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 845
    const-string v2, "R\u1eddi ph\u00f3 b\u1ea3n"

    const/16 v3, 0x2ee3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 846
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 848
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 850
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x77

    move-object v5, p0

    .line 849
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 851
    return-void
.end method

.method public static gotoCountryInfoBaseMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1216
    if-nez p1, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1220
    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1221
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1223
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "V\u00e0o qu\u1ed1c gia"

    const/16 v3, 0x1d06

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1224
    iget v2, p1, Lcom/hz/core/Country;->id:I

    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v7, 0x1

    .line 1225
    .local v7, "isMyCountry":Z
    :goto_1
    if-eqz v7, :cond_2

    .line 1226
    const-string v2, "G\u00f3p v\u1eadt t\u01b0"

    const/16 v3, 0x1d17

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1230
    :goto_2
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1232
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1234
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x50

    const/4 v5, 0x0

    .line 1233
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1235
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 1224
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    .end local v7    # "isMyCountry":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1228
    .restart local v7    # "isMyCountry":Z
    :cond_2
    const-string v2, "Y\u00eau c\u1ea7u v\u00e0o n\u01b0\u1edbc"

    const/16 v3, 0x1d07

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_2
.end method

.method public static gotoCountryInfoBulidMenu(Lcom/hz/ui/UIHandler;II)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "id"    # I
    .param p2, "level"    # I

    .prologue
    .line 1244
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1245
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1247
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0x8e

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 1248
    .local v7, "menu":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 1249
    const/16 v2, 0x8c

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 1251
    :cond_0
    const/16 v2, 0x1d54

    invoke-static {v8, v7, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1252
    invoke-static {p1, p2}, Lcom/hz/core/Country;->isBuildingCanDelete(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1253
    const-string v2, "G\u1ee1 b\u1ecf"

    const/16 v3, 0x1d53

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1255
    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d55

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1256
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1258
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1260
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x51

    const/4 v5, 0x0

    .line 1259
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1261
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1262
    return-void
.end method

.method public static gotoCountryInfoMemberMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;Lcom/hz/actor/ListPlayer;)V
    .locals 12
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;
    .param p2, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v2, 0x1

    .line 1270
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1271
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1273
    .local v1, "eventList":Ljava/util/Vector;
    iget-byte v4, p1, Lcom/hz/core/Country;->searchMemberStatus:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v7, v2

    .line 1274
    .local v7, "isApplyList":Z
    :goto_0
    const/16 v4, 0xb2

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x386

    invoke-static {v9, v4, v1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1275
    const-string v4, "L\u1ecdc th\u00e0nh vi\u00ean"

    const/16 v5, 0x1e22

    invoke-static {v9, v4, v1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1276
    if-nez v7, :cond_0

    .line 1277
    const-string v4, "L\u1ecdc b\u1eadc quan"

    const/16 v5, 0x1e23

    invoke-static {v9, v4, v1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1279
    :cond_0
    if-eqz p2, :cond_1

    .line 1280
    const/16 v4, 0x23

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2af8

    invoke-static {v9, v4, v1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1281
    const/16 v4, 0xb4

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b02

    invoke-static {v9, v4, v1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1282
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v4}, Lcom/hz/actor/Player;->getCountryId()I

    move-result v4

    iget v5, p1, Lcom/hz/core/Country;->id:I

    if-ne v4, v5, :cond_3

    move v8, v2

    .line 1283
    .local v8, "isMyCountry":Z
    :goto_1
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 1284
    const-string v2, "\u0110\u1ed3ng \u00fd y\u00eau c\u1ea7u"

    const/16 v3, 0x7553

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1285
    const-string v2, "T\u1eeb ch\u1ed1i y\u00eau c\u1ea7u"

    const/16 v3, 0x7554

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1302
    .end local v8    # "isMyCountry":Z
    :cond_1
    :goto_2
    const/16 v2, 0xb3

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x387

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1303
    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1305
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1307
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x52

    const/4 v5, 0x0

    .line 1306
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1308
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1309
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/hz/ui/UIObject;->setListPlayer(Lcom/hz/actor/ListPlayer;)V

    .line 1310
    return-void

    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    .end local v7    # "isApplyList":Z
    :cond_2
    move v7, v3

    .line 1273
    goto/16 :goto_0

    .restart local v7    # "isApplyList":Z
    :cond_3
    move v8, v3

    .line 1282
    goto :goto_1

    .line 1287
    .restart local v8    # "isMyCountry":Z
    :cond_4
    if-eqz v8, :cond_1

    if-nez v7, :cond_1

    .line 1288
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getCountryRank()B

    move-result v10

    .line 1289
    .local v10, "rank":I
    if-lez v10, :cond_1

    invoke-virtual {p2}, Lcom/hz/actor/ListPlayer;->getCountryRank()B

    move-result v3

    if-ge v10, v3, :cond_1

    .line 1290
    if-lt v10, v2, :cond_5

    if-gt v10, v11, :cond_5

    .line 1291
    const/16 v3, 0xc5

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b0a

    invoke-static {v9, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1293
    :cond_5
    if-lt v10, v2, :cond_6

    if-ge v10, v11, :cond_6

    .line 1294
    const/16 v3, 0xc6

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b99

    invoke-static {v9, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1296
    :cond_6
    if-ne v10, v2, :cond_1

    .line 1297
    const/16 v2, 0xc7

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b9a

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_2
.end method

.method public static gotoCountryInfoMissionMenu(Lcom/hz/ui/UIHandler;[I)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "taskType"    # [I

    .prologue
    .line 1318
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1319
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1321
    .local v1, "eventList":Ljava/util/Vector;
    if-eqz p1, :cond_0

    .line 1322
    const-string v2, "B\u00e1o"

    const/16 v3, 0x290c

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1324
    :cond_0
    const-string v2, "\u1ee6y th\u00e1c"

    const/16 v3, 0x2907

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1325
    const-string v2, "Mai"

    const/16 v3, 0x2906

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1326
    const-string v2, "H\u00f4m nay"

    const/16 v3, 0x2905

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1327
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1329
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1331
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x53

    const/4 v5, 0x0

    .line 1330
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1332
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1333
    return-void
.end method

.method public static gotoCountryInfoPowerMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V
    .locals 10
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1341
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1342
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1344
    .local v1, "eventList":Ljava/util/Vector;
    const-string v8, "Chi\u00eau m\u1ed9"

    .line 1345
    .local v8, "menu":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/hz/core/Country;->isOpenRecruit:Z

    if-eqz v2, :cond_0

    .line 1346
    const-string v8, "\u0110\u00f3ng chi\u00eau m\u1ed9"

    .line 1348
    :cond_0
    const-string v7, "M\u1edf th\u00f4ng b\u00e1o online Qu\u1ea3n L\u00fd Qu\u1ed1c Gia"

    .line 1349
    .local v7, "countryOlineInformmenu":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/hz/core/Country;->onlineNotify:Z

    if-eqz v2, :cond_1

    .line 1350
    const-string v7, "\u0110\u00f3ng th\u00f4ng b\u00e1o online Qu\u1ea3n L\u00fd Qu\u1ed1c Gia"

    .line 1352
    :cond_1
    const/16 v2, 0x1edf

    invoke-static {v9, v8, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1353
    const/16 v2, 0x1f4c

    invoke-static {v9, v7, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1354
    const-string v2, "Thu\u1ebf"

    const/16 v3, 0x1ee1

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1355
    const-string v2, "Ch\u1ec9nh thu\u1ebf nh\u1eadp c\u1ea3nh"

    const/16 v3, 0x1ee2

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1356
    const-string v2, "Qu\u1ed1c v\u01b0\u01a1ng nh\u01b0\u1eddng ng\u00f4i"

    const/16 v3, 0x1ee0

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1357
    const-string v2, "D\u00f9ng Ch\u1ec9 L\u1ec7nh Th\u01b0"

    const/16 v3, 0x1ee6

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1358
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v9, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1360
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1362
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x54

    const/4 v5, 0x0

    .line 1361
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1363
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1364
    return-void
.end method

.method public static gotoCountryMissionMenu(Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1192
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1193
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1195
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0x4f

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25f2

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1196
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1197
    const-string v2, "\u1ee6y th\u00e1c"

    const/16 v3, 0x25f4

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1202
    :goto_0
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1204
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1206
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x55

    const/4 v5, 0x0

    .line 1205
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1207
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1208
    return-void

    .line 1199
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    :cond_0
    const-string v2, "Ch\u1ecdn"

    const/16 v3, 0x25f3

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1200
    const-string v2, "G\u1eedi nhi\u1ec7m v\u1ee5 l\u1ef1a ch\u1ecdn"

    const/16 v3, 0x25ed

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0
.end method

.method public static gotoCountryStatusListMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1425
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1426
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1428
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0xb2

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x386

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1429
    const-string v2, "L\u1ecdc"

    const/16 v3, 0x1f42

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1430
    if-eqz p1, :cond_1

    .line 1431
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f46

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1432
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1433
    :cond_0
    const-string v2, "Tuy\u00ean chi\u1ebfn"

    const/16 v3, 0x1f4a

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1438
    :cond_1
    :goto_0
    const/16 v2, 0xb3

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x387

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1439
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1441
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1443
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x46

    const/4 v5, 0x0

    .line 1442
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1444
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1445
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hz/ui/UIObject;->setCountry(Lcom/hz/core/Country;)V

    .line 1446
    return-void

    .line 1435
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    :cond_2
    const/16 v2, 0x9d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f47

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0
.end method

.method public static gotoCountryStatusMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "country"    # Lcom/hz/core/Country;

    .prologue
    .line 1392
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/hz/core/Country;->sellPlayer:Lcom/hz/actor/Player;

    if-eqz v2, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1399
    :cond_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1400
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1402
    .local v1, "eventList":Ljava/util/Vector;
    invoke-virtual {p1}, Lcom/hz/core/Country;->getStatus()B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1403
    const/16 v2, 0xd4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d08

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1405
    :cond_1
    const-string v2, "Qu\u1ed1c gia c\u1ee7a ta"

    const/16 v3, 0x2bce

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1406
    const-string v2, "Qu\u1ed1c chi\u1ebfn"

    const/16 v3, 0x2bcf

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1407
    const-string v2, "S\u1eeda th\u00f4ng b\u00e1o"

    const/16 v3, 0x1d05

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1408
    const-string v2, "V\u00e0o qu\u1ed1c gia"

    const/16 v3, 0x2b08

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1409
    const-string v2, "R\u1eddi qu\u1ed1c gia"

    const/16 v3, 0x2b0a

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1410
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1412
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1414
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x45

    const/4 v5, 0x0

    .line 1413
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1415
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method public static gotoCountryWarArmyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/WarArmy;)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "warArmy"    # Lcom/hz/core/WarArmy;

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 1036
    if-nez p0, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v7

    .line 1042
    .local v7, "subType":I
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    .line 1043
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v10, :cond_0

    .line 1047
    const/4 v8, -0x1

    .line 1048
    .local v8, "tabEvent":I
    const/16 v0, 0x3336

    invoke-virtual {p0, v0}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v9

    .line 1049
    .local v9, "tabWindow":Lcom/hz/gui/GWindow;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, v9, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v8

    .line 1053
    :cond_2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1054
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1056
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v0, 0x3337

    if-ne v8, v0, :cond_3

    .line 1057
    if-nez v7, :cond_6

    .line 1058
    const-string v0, "V\u00e0o qu\u00e2n \u0111\u1ed9i"

    const/16 v3, 0x7562

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1065
    :cond_3
    :goto_1
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->isPrevPage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    const/16 v0, 0xb2

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x386

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1069
    :cond_4
    invoke-static {p1, v6, v1, v8, v4}, Lcom/hz/core/WarArmy;->getMenuAndEvent(Lcom/hz/core/WarArmy;Ljava/util/Vector;Ljava/util/Vector;IZ)V

    .line 1071
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->isNextPage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1072
    const/16 v0, 0xb3

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x387

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1076
    :cond_5
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1080
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1082
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x5c

    move-object v5, p0

    .line 1082
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1060
    :cond_6
    if-ne v7, v4, :cond_3

    .line 1061
    const-string v0, "L\u1ecdc qu\u00e2n \u0111\u1ed9i"

    const/16 v3, 0x756a

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1
.end method

.method public static gotoCountryWarCommandMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/WarCommand;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "warCommand"    # Lcom/hz/core/WarCommand;

    .prologue
    const/4 v2, -0x1

    .line 1092
    if-nez p1, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1096
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1097
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1099
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7573

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1100
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7572

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1101
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1103
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x5d

    move-object v5, p0

    .line 1103
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoCountryWarMenu(Lcom/hz/ui/UIHandler;)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, -0x1

    .line 996
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    .line 997
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v10, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getCountryWar()Lcom/hz/core/CountryWar;

    move-result-object v8

    .line 1001
    .local v8, "countryWar":Lcom/hz/core/CountryWar;
    if-eqz v8, :cond_0

    .line 1004
    if-eqz v8, :cond_0

    .line 1008
    const/16 v0, 0x32c9

    invoke-virtual {p0, v0}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v7

    .line 1009
    .local v7, "buildWindow":Lcom/hz/gui/GWindow;
    invoke-static {v7}, Lcom/hz/core/CountryWar;->getWindowBuildPos(Lcom/hz/gui/GWindow;)I

    move-result v6

    .line 1011
    .local v6, "buildPos":I
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1012
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1014
    .local v1, "eventList":Ljava/util/Vector;
    const-string v0, "%U ki\u1ebfn tr\u00fac"

    invoke-virtual {v8, v6}, Lcom/hz/core/CountryWar;->getOpeBuildInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    const/16 v3, 0x7562

    .line 1014
    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1016
    const-string v0, "Qu\u00e2n \u0111\u1ed9i c\u1ee7a t\u00f4i"

    const/16 v3, 0x7567

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1017
    const/16 v0, 0x97

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2bc6

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1018
    const-string v0, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1019
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2bc8

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1020
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2bc9

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1021
    const/16 v0, 0x4d

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2bc3

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1022
    const-string v0, "R\u1eddi chi\u1ebfn tr\u01b0\u1eddng"

    const/16 v3, 0x7569

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1023
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1025
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1026
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x5b

    move-object v5, p0

    .line 1025
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static gotoCreateCardMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1139
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1140
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1142
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ch\u1ecdn danh hi\u1ec7u"

    const/16 v3, 0x2ba2

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1143
    const-string v2, "Ch\u1ecdn b\u1ed1i c\u1ea3nh"

    const/16 v3, 0x2ba3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1144
    const-string v2, "Ch\u1ecdn style "

    const/16 v3, 0x2ba4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1145
    const-string v2, "S\u1eeda k\u00ed t\u00ean"

    const/16 v3, 0x2ba5

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1146
    const-string v2, "T\u1ea1o thi\u1ec7p"

    const/16 v3, 0x2b1d

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1147
    const/16 v2, 0xd0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b1c

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1148
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1150
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1152
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x59

    move-object v5, p0

    .line 1151
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 1153
    return-void
.end method

.method public static gotoDeletePhotoSay(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 2166
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2167
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2169
    .local v2, "eventList":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/ui/UIObject;

    .line 2170
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v10, :cond_1

    .line 2201
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    const/4 v8, 0x0

    .line 2174
    .local v8, "photoModel":Lcom/hz/actor/Model;
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v8

    .line 2175
    if-eqz v8, :cond_0

    .line 2179
    const/4 v6, 0x0

    .line 2181
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 2183
    .local v9, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 2187
    const-string v0, "B\u00ecnh lu\u1eadn c\u1ee7a %U "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2188
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2189
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2191
    invoke-virtual {v8}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v3

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    .line 2192
    const-string v0, "Thao t\u00e1c kh\u00e1c"

    const/16 v3, 0x2c24

    invoke-static {v7, v0, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2194
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v7, v0, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2196
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 2197
    .local v1, "menuStr":[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2198
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x6c

    move-object v5, p0

    .line 2197
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2199
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto :goto_0
.end method

.method public static gotoEscortMenu(Lcom/hz/core/Escort;)V
    .locals 8
    .param p0, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1896
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1897
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1898
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1900
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "Nh\u00e2n v\u1eadt"

    const/16 v3, 0x2bc9

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1901
    const-string v1, "Trang b\u1ecb"

    const/16 v3, 0x2bc8

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1902
    const-string v1, "Th\u01b0"

    const/16 v3, 0x2bc4

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1903
    const-string v1, "Pet"

    const/16 v3, 0x2bc3

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1904
    const-string v1, "Xem"

    const/16 v3, 0x232d

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1905
    const-string v1, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1906
    const-string v1, "Nh\u1eadp chat"

    const/16 v3, 0x2bc6

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1907
    const-string v1, "R\u1eddi \u00e1p ti\u00eau"

    const/16 v3, 0x232b

    const/4 v5, 0x6

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 1910
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 1912
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v3

    .line 1913
    const/16 v5, 0x39

    const/4 v7, 0x0

    .line 1909
    invoke-static {v1, v2, v3, v5, v7}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;Ljava/util/Vector;[IBLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1914
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hz/ui/UIObject;->setEscort(Lcom/hz/core/Escort;)V

    .line 1915
    return-void
.end method

.method public static gotoEscortRobListMenu(Lcom/hz/core/Escort;)V
    .locals 8
    .param p0, "escort"    # Lcom/hz/core/Escort;

    .prologue
    .line 1875
    if-nez p0, :cond_0

    .line 1889
    :goto_0
    return-void

    .line 1879
    :cond_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1880
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1882
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "\u0110\u1ed9i ng\u0169 nhi\u1ec7m v\u1ee5"

    const/16 v3, 0x22c6

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1883
    const-string v2, "V\u00e0o t\u1ea5n c\u00f4ng"

    const/16 v3, 0x22c8

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1885
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1887
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    .line 1886
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1888
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hz/ui/UIObject;->setEscort(Lcom/hz/core/Escort;)V

    goto :goto_0
.end method

.method public static gotoFurnaceItemListsMenu(Lcom/hz/ui/UIHandler;)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 135
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 136
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 137
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 140
    .local v4, "keyList":Ljava/util/Vector;
    const/16 v1, 0x3265

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v14

    .line 141
    .local v14, "listWindow":Lcom/hz/gui/GWindow;
    if-nez v14, :cond_0

    .line 170
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v13, v14, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    check-cast v13, Lcom/hz/gui/GLinePanel;

    .line 149
    .local v13, "linepanel":Lcom/hz/gui/GLinePanel;
    if-eqz v13, :cond_1

    .line 151
    const/16 v3, 0x3268

    .local v3, "i":I
    :goto_1
    const/16 v1, 0x326b

    if-le v3, v1, :cond_2

    .line 164
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 166
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "menuStr":[Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v1, 0x28

    .line 169
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v8

    const/16 v9, 0x7c

    move-object v6, v2

    move-object v10, p0

    .line 168
    invoke-static/range {v5 .. v10}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 153
    .end local v5    # "menuStr":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v13, v3}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v11

    .line 154
    .local v11, "gicon":Lcom/hz/gui/GWidget;
    if-eqz v11, :cond_3

    .line 156
    invoke-virtual {v11}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hz/core/Item;

    .line 157
    .local v12, "gitem":Lcom/hz/core/Item;
    if-eqz v12, :cond_3

    .line 159
    iget-object v1, v12, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 151
    .end local v12    # "gitem":Lcom/hz/core/Item;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static gotoFurnaceMenu(Lcom/hz/ui/UIHandler;)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 117
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 118
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 119
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 121
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "M\u1edf luy\u1ec7n"

    const/16 v3, 0x3207

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 122
    const/16 v1, 0xb9

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3209

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 123
    const-string v1, "DS v\u1eadt ph\u1ea9m m\u1ee9c"

    const/16 v3, 0x3208

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 124
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 126
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "menuStr":[Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v1, 0x28

    .line 129
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v8

    const/16 v9, 0x7b

    move-object v6, v2

    move-object v10, p0

    .line 128
    invoke-static/range {v5 .. v10}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 130
    return-void
.end method

.method public static gotoGoodMainMenu(Z)V
    .locals 7
    .param p0, "isNew"    # Z

    .prologue
    .line 1922
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1923
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1925
    .local v1, "eventList":Ljava/util/Vector;
    if-eqz p0, :cond_0

    .line 1926
    const-string v2, "Thao t\u00e1c mua"

    const/16 v3, 0x2b12

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1931
    :goto_0
    const-string v2, "Thao t\u00e1c treo b\u00e1n"

    const/16 v3, 0x2b4f

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1933
    if-eqz p0, :cond_1

    .line 1934
    const-string v2, "B\u1ea3ng cung \u1ee9ng"

    const/16 v3, 0x2b14

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1939
    :goto_1
    const-string v2, "T\u00f4i c\u1ea7n cung \u1ee9ng"

    const/16 v3, 0x2b51

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1941
    if-eqz p0, :cond_2

    .line 1942
    const-string v2, "Thu mua"

    const/16 v3, 0x2b13

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1947
    :goto_2
    const-string v2, "\u0110\u01a1n h\u00e0ng c\u1ee7a t\u00f4i"

    const/16 v3, 0x2b53

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1949
    const-string v2, "R\u1eddi \u0111i"

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1951
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1953
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x37

    const/4 v5, 0x0

    .line 1952
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 1954
    return-void

    .line 1928
    .end local v0    # "menuStr":[Ljava/lang/String;
    :cond_0
    const-string v2, "Thao t\u00e1c mua"

    const/16 v3, 0x2b4e

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 1936
    :cond_1
    const-string v2, "B\u1ea3ng cung \u1ee9ng"

    const/16 v3, 0x2b50

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1

    .line 1944
    :cond_2
    const-string v2, "Thu mua"

    const/16 v3, 0x2b52

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_2
.end method

.method public static gotoGoodMyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 4586
    if-nez p1, :cond_0

    .line 4601
    :goto_0
    return-void

    .line 4590
    :cond_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4591
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4593
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "L\u1ea5y \u0111\u01a1n h\u00e0ng "

    const/16 v3, 0x2b72

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4594
    const-string v2, "H\u1ee7y \u0111\u01a1n h\u00e0ng "

    const/16 v3, 0x2b73

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4595
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4597
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4598
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4599
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x3f

    move-object v5, p0

    .line 4598
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4600
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    goto :goto_0
.end method

.method public static gotoGoodNewSelectGrade(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 4102
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 4103
    .local v12, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4104
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 4105
    .local v11, "keyList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4109
    .local v1, "objList":Ljava/util/Vector;
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    sget-object v3, Lcom/hz/core/Define;->gradeGoods:[B

    array-length v3, v3

    if-lt v10, v3, :cond_1

    .line 4116
    invoke-static {v12}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4118
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 4122
    .local v13, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 4124
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 4133
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0xd

    move-object v5, p0

    .line 4132
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v13

    .line 4136
    if-eqz v13, :cond_0

    .line 4137
    invoke-virtual {v13}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 4138
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    .line 4139
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v8, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 4172
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 4110
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v13    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    sget-object v3, Lcom/hz/core/Define;->gradeGoods:[B

    aget-byte v9, v3, v10

    .line 4111
    .local v9, "grade":B
    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4112
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4113
    const/4 v3, 0x0

    invoke-static {v9, v3}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4109
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static gotoGoodNewSelectLevel(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V
    .locals 12
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 4181
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4182
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 4183
    .local v9, "keyList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4185
    .local v1, "objList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/core/Define;->goodsLevelText:[Ljava/lang/String;

    .line 4186
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "level":I
    :goto_0
    array-length v3, v0

    if-lt v10, v3, :cond_1

    .line 4191
    const/4 v11, 0x0

    .line 4195
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 4197
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 4206
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0xe

    move-object v5, p0

    .line 4205
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 4209
    if-eqz v11, :cond_0

    .line 4210
    invoke-virtual {v11}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 4211
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    .line 4212
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v8, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 4246
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 4187
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v11    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    new-instance v3, Ljava/lang/Integer;

    int-to-byte v4, v10

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4188
    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v10

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4186
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static gotoGoodNewSelectType(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 4254
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 4255
    .local v11, "menuList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4256
    .local v7, "eventList":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 4257
    .local v10, "keyList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4259
    .local v1, "objList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/core/Define;->goodsTypeText:[Ljava/lang/String;

    .line 4260
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v3, v0

    if-lt v9, v3, :cond_1

    .line 4265
    const/4 v12, 0x0

    .line 4269
    .local v12, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 4271
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 4280
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x29

    move-object v5, p0

    .line 4279
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v12

    .line 4283
    if-eqz v12, :cond_0

    .line 4284
    invoke-virtual {v12}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v8

    .line 4285
    .local v8, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    .line 4286
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v8, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 4318
    .end local v8    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 4261
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v12    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    new-instance v3, Ljava/lang/Integer;

    int-to-byte v4, v9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4262
    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v9

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4260
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static gotoGoodNewTypeMenu(Lcom/hz/ui/UIHandler;BLcom/hz/gui/GWidget;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "subType"    # B
    .param p2, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 4419
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 4420
    .local v11, "menuList":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4421
    .local v6, "eventList":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 4423
    .local v9, "keyLIst":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4425
    .local v1, "objList":Ljava/util/Vector;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    const/4 v3, 0x5

    if-lt v8, v3, :cond_1

    .line 4435
    invoke-static {v11}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4437
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 4440
    .local v13, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 4441
    .local v2, "getWidth":I
    const/4 v10, -0x1

    .line 4450
    .local v10, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    move v4, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v13

    .line 4453
    if-eqz v13, :cond_0

    .line 4454
    invoke-virtual {v13}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    .line 4455
    .local v7, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    .line 4456
    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v7, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 4475
    .end local v7    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void

    .line 4426
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v2    # "getWidth":I
    .end local v10    # "maxWinHeight":I
    .end local v13    # "ui":Lcom/hz/ui/UIHandler;
    :cond_1
    invoke-static {v8}, Lcom/hz/core/Define;->getPurchaseTypeText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lcom/hz/core/Define;->getPurchaseType(I)B

    move-result v4

    invoke-static {v11, v3, v6, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4428
    sget-object v3, Lcom/hz/core/Define;->purchaseType:[B

    aget-byte v12, v3, v8

    .line 4429
    .local v12, "typeIndex":B
    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v12}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4425
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static gotoGoodOpeSellMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;Z)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "isBackSell"    # Z

    .prologue
    const/16 v4, 0x8

    .line 4391
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4392
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4393
    .local v2, "eventList":Ljava/util/Vector;
    if-eqz p2, :cond_0

    .line 4394
    const-string v1, "Ng\u1eebng"

    const/16 v3, 0x2b55

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4398
    :goto_0
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4400
    const/4 v0, 0x0

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 4401
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    move-object v5, p0

    .line 4400
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4403
    .local v6, "infoUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->deleteUI(Lcom/hz/ui/UIHandler;)V

    .line 4404
    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->getW()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {p1, v1}, Lcom/hz/core/Item;->getItemInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 4405
    .local v0, "strInfo":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 4406
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    move-object v5, p0

    .line 4405
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4410
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    .line 4411
    return-void

    .line 4396
    .end local v0    # "strInfo":Ljava/lang/String;
    .end local v6    # "infoUI":Lcom/hz/ui/UIHandler;
    :cond_0
    const-string v1, "Treo b\u00e1n"

    const/16 v3, 0x2b54

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0
.end method

.method public static gotoGoodOrderMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    const/16 v8, 0x2b71

    const/16 v4, 0x3e

    const/4 v7, 0x4

    const/4 v6, -0x1

    .line 4508
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 4509
    .local v12, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4511
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v11, 0x0

    .line 4513
    .local v11, "choiceUI":Lcom/hz/ui/UIHandler;
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4515
    if-eqz p1, :cond_0

    .line 4516
    const-string v3, "Thu mua"

    invoke-static {v12, v3, v2, v8}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4518
    :cond_0
    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v2, v6}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4520
    const-string v0, ""

    .line 4521
    .local v0, "info":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 4522
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v3}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v0

    .line 4524
    :cond_1
    invoke-static {v12}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 4526
    .local v1, "menuStr":[Ljava/lang/String;
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    move-object v5, p0

    .line 4525
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 4540
    .end local v0    # "info":Ljava/lang/String;
    :goto_0
    invoke-static {v11}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    .line 4541
    return-void

    .line 4529
    .end local v1    # "menuStr":[Ljava/lang/String;
    :cond_2
    const/16 v3, 0xb2

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x386

    invoke-static {v12, v3, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4530
    if-eqz p1, :cond_3

    .line 4531
    const-string v3, "Thu mua"

    invoke-static {v12, v3, v2, v8}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4533
    :cond_3
    const/16 v3, 0xb3

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x387

    invoke-static {v12, v3, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4534
    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v2, v6}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4536
    invoke-static {v12}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 4537
    .restart local v1    # "menuStr":[Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v7, v3, 0x28

    .line 4538
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v8

    move-object v5, v1

    move-object v6, v2

    move v9, v4

    move-object v10, p0

    .line 4537
    invoke-static/range {v5 .. v10}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v11

    goto :goto_0
.end method

.method public static gotoGoodSelectGrade(Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4326
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 4327
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4328
    .local v1, "objList":Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    sget-object v2, Lcom/hz/core/Define;->gradeGoods:[B

    array-length v2, v2

    if-lt v7, v2, :cond_0

    .line 4333
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4334
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4335
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0xd

    move-object v5, p0

    .line 4334
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 4336
    return-void

    .line 4329
    .end local v0    # "menuStr":[Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/hz/core/Define;->gradeGoods:[B

    aget-byte v6, v2, v7

    .line 4330
    .local v6, "grade":B
    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4331
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/hz/core/Define;->getGradeString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4328
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static gotoGoodSelectLevel(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4344
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4345
    .local v1, "objList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/core/Define;->goodsLevelText:[Ljava/lang/String;

    .line 4346
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "level":I
    :goto_0
    array-length v2, v0

    if-lt v6, v2, :cond_0

    .line 4349
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4350
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0xe

    move-object v5, p0

    .line 4349
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 4351
    return-void

    .line 4347
    :cond_0
    new-instance v2, Ljava/lang/Byte;

    int-to-byte v3, v6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4346
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static gotoGoodSelectName(Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4373
    const/4 v1, -0x1

    .line 4374
    .local v1, "opeEvent":I
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    const/16 v3, 0xcf

    if-ne v2, v3, :cond_2

    .line 4375
    :cond_0
    const/16 v1, 0x1a92

    .line 4379
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/hz/ui/UIHandler;->getStringByGWidgetEvent(Lcom/hz/ui/UIHandler;IZ)Ljava/lang/String;

    move-result-object v0

    .line 4380
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/main/GameForm;->createGoodsNameForm(Ljava/lang/String;)Lcom/hz/main/GameForm;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hz/main/GameForm;->setUI(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    .line 4381
    return-void

    .line 4376
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    const/16 v3, 0x96

    if-ne v2, v3, :cond_1

    .line 4377
    const/16 v1, 0x3a9e

    goto :goto_0
.end method

.method public static gotoGoodSelectType(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4359
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4360
    .local v1, "objList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/core/Define;->goodsTypeText:[Ljava/lang/String;

    .line 4361
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v2, v0

    if-lt v6, v2, :cond_0

    .line 4364
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4365
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x38

    move-object v5, p0

    .line 4364
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 4366
    return-void

    .line 4362
    :cond_0
    new-instance v2, Ljava/lang/Byte;

    int-to-byte v3, v6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4361
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static gotoGoodSupplyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "eventID"    # I

    .prologue
    .line 4549
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 4550
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4552
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v6, 0x0

    .line 4554
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    const/4 v8, 0x0

    .line 4555
    .local v8, "itemCount":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 4557
    .local v10, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 4558
    iget v7, p1, Lcom/hz/core/Item;->id:I

    .line 4559
    .local v7, "id":I
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v0, :cond_0

    .line 4560
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    invoke-virtual {v0, v7}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v8

    .line 4561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(Hi\u1ec7n c\u00f3 %U c\u00e1i)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4563
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4565
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v0}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4568
    .end local v7    # "id":I
    :cond_1
    if-eqz p1, :cond_2

    if-lez v8, :cond_2

    .line 4569
    const-string v0, "Cung \u1ee9ng"

    invoke-static {v9, v0, v2, p2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4571
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v9, v0, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4573
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 4574
    .local v1, "menuStr":[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4575
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x3d

    move-object v5, p0

    .line 4574
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4576
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    .line 4577
    return-void
.end method

.method public static gotoGoodTypeMenu(Lcom/hz/ui/UIHandler;B)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "subType"    # B

    .prologue
    .line 4483
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 4484
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4485
    .local v1, "eventList":Ljava/util/Vector;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v6, v2, :cond_0

    .line 4488
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4490
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4497
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x50

    .line 4498
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    move v4, p1

    move-object v5, p0

    .line 4497
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 4500
    return-void

    .line 4486
    .end local v0    # "menuStr":[Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/hz/core/Define;->getPurchaseTypeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/hz/core/Define;->getPurchaseType(I)B

    move-result v3

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4485
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static gotoIdentifySelectType(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V
    .locals 12
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 4926
    if-nez p0, :cond_1

    .line 4991
    :cond_0
    :goto_0
    return-void

    .line 4931
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4932
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 4933
    .local v9, "keyList":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 4935
    .local v10, "objList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/core/Authentication;->identifyCard:[Ljava/lang/String;

    .line 4936
    .local v0, "menuStr":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    array-length v3, v0

    if-lt v8, v3, :cond_2

    .line 4941
    const/4 v11, 0x0

    .line 4945
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 4947
    .local v2, "getWidth":I
    const/4 v6, -0x1

    .line 4956
    .local v6, "maxWinHeight":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x3b

    move-object v5, p0

    .line 4955
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 4959
    if-eqz v11, :cond_0

    .line 4960
    invoke-virtual {v11}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    .line 4961
    .local v7, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 4962
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v3

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v4

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v7, v3, v4}, Lcom/hz/gui/GContainer;->setPos(II)V

    goto :goto_0

    .line 4937
    .end local v2    # "getWidth":I
    .end local v6    # "maxWinHeight":I
    .end local v7    # "frameContainer":Lcom/hz/gui/GContainer;
    .end local v11    # "ui":Lcom/hz/ui/UIHandler;
    :cond_2
    new-instance v3, Ljava/lang/Integer;

    int-to-byte v4, v8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4938
    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v8

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4936
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static gotoLoginLotteryDrawMenu(Lcom/hz/ui/UIHandler;)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 175
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 176
    .local v10, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 177
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 180
    .local v7, "keyList":Ljava/util/Vector;
    const/16 v1, 0x3e81

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v8

    .line 181
    .local v8, "listWindow":Lcom/hz/gui/GWindow;
    if-nez v8, :cond_0

    .line 235
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v0, ""

    .line 191
    .local v0, "strinfo":Ljava/lang/String;
    iget-object v1, v8, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {v8}, Lcom/hz/gui/GWindow;->setFirstFocus()V

    .line 196
    :cond_1
    iget-object v6, v8, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 198
    .local v6, "gicon":Lcom/hz/gui/GWidget;
    if-eqz v6, :cond_2

    .line 200
    invoke-virtual {v6}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v12

    .line 201
    .local v12, "tempObj":Ljava/lang/Object;
    if-eqz v12, :cond_2

    instance-of v1, v12, Lcom/hz/core/LoginLotteryDraw;

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {v6}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hz/core/LoginLotteryDraw;

    .line 205
    .local v9, "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    iget-boolean v1, v9, Lcom/hz/core/LoginLotteryDraw;->isItem:Z

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, v9, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    iget-object v3, v3, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lcom/hz/core/LoginLotteryDraw;->item:Lcom/hz/core/Item;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .end local v9    # "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    .end local v12    # "tempObj":Ljava/lang/Object;
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/hz/core/LoginLotteryDraw;->isRun:Z

    if-nez v1, :cond_3

    .line 222
    const-string v1, "R\u00fat"

    const/16 v3, 0x2c51

    invoke-static {v10, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 224
    :cond_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v10, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 226
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v11

    .line 232
    .local v11, "menuStr":[Ljava/lang/String;
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x3c

    move-object v5, p0

    .line 231
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 215
    .end local v11    # "menuStr":[Ljava/lang/String;
    .restart local v9    # "loginLotteryDrawdata":Lcom/hz/core/LoginLotteryDraw;
    .restart local v12    # "tempObj":Ljava/lang/Object;
    :cond_4
    iget-object v0, v9, Lcom/hz/core/LoginLotteryDraw;->desc2:Ljava/lang/String;

    goto :goto_1
.end method

.method public static gotoLotteryDrawMenu(Lcom/hz/ui/UIHandler;)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 546
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 547
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 548
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 550
    .local v4, "keyList":Ljava/util/Vector;
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 551
    .local v14, "player":Lcom/hz/actor/Player;
    if-nez v14, :cond_0

    .line 566
    :goto_0
    return-void

    .line 555
    :cond_0
    const-string v1, "Th\u1eed v\u1eadn may "

    const/16 v3, 0x2c2b

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 556
    const-string v1, "Xem th\u01b0\u1edfng "

    const/16 v3, 0x51a9

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 557
    const-string v1, "Th\u01b0\u1edfng h\u00f4m qua"

    const/16 v3, 0x51ae

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 559
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 561
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 564
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x6e

    .line 565
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 563
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoMailReceMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v2, -0x1

    .line 2008
    if-nez p1, :cond_1

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2012
    :cond_1
    const/16 v0, 0x157d

    invoke-virtual {p0, v0}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v8

    .line 2013
    .local v8, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v8, :cond_0

    .line 2017
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 2018
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2020
    .local v1, "eventList":Ljava/util/Vector;
    const/4 v7, 0x0

    .line 2021
    .local v7, "item":Lcom/hz/core/Item;
    iget-object v0, v8, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2022
    const-string v0, "Xem"

    const/16 v3, 0x38e

    invoke-static {v9, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2023
    iget-object v0, v8, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "item":Lcom/hz/core/Item;
    check-cast v7, Lcom/hz/core/Item;

    .line 2026
    .restart local v7    # "item":Lcom/hz/core/Item;
    :cond_2
    invoke-static {p1, v9, v1}, Lcom/hz/core/Mail;->getMailOperateMenu(Lcom/hz/core/Mail;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2028
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2030
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2031
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x36

    move-object v5, p0

    .line 2030
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2032
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    new-instance v10, Lcom/hz/ui/UIObject;

    invoke-direct {v10, v6}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 2033
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v10, p1}, Lcom/hz/ui/UIObject;->setMail(Lcom/hz/core/Mail;)V

    .line 2034
    invoke-virtual {v10, v7}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    goto :goto_0
.end method

.method public static gotoMercenaryListMenu(Lcom/hz/ui/UIHandler;Ljava/lang/Object;S)V
    .locals 13
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "subType"    # S

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/16 v12, 0x34

    const/4 v11, 0x4

    .line 2376
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2464
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2380
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x0

    .line 2381
    .local v9, "mercenary":Lcom/hz/actor/Mercenary;
    instance-of v4, p1, Lcom/hz/actor/Mercenary;

    if-eqz v4, :cond_2

    move-object v9, p1

    .line 2382
    check-cast v9, Lcom/hz/actor/Mercenary;

    .line 2384
    :cond_2
    const/4 v10, 0x0

    .line 2386
    .local v10, "pet":Lcom/hz/actor/MyPet;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 2387
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2389
    .local v1, "eventList":Ljava/util/Vector;
    instance-of v4, p1, Lcom/hz/actor/MyPet;

    if-eqz v4, :cond_3

    move-object v10, p1

    .line 2390
    check-cast v10, Lcom/hz/actor/MyPet;

    .line 2392
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v4

    if-ne v4, v12, :cond_3

    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-object v5, v10, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-eq v4, v5, :cond_3

    .line 2395
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    if-ne v0, v12, :cond_0

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v0

    if-ne v0, v11, :cond_0

    .line 2396
    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3e6

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2397
    const-string v0, "H\u1ee3p th\u00e0nh ngay"

    const/16 v3, 0x2c3f

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2398
    const-string v0, "Ch\u1ecdn t\u00e0i li\u1ec7u"

    const/16 v3, 0x2c40

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2400
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2401
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x78

    move-object v5, p0

    .line 2400
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2402
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    check-cast p1, Lcom/hz/actor/Model;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto :goto_0

    .line 2412
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e6

    invoke-static {v8, v4, v1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2415
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v4

    if-ne v4, v12, :cond_4

    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-object v5, v10, Lcom/hz/actor/MyPet;->owner:Lcom/hz/actor/Player;

    if-ne v4, v5, :cond_4

    .line 2416
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v4

    if-ne v4, v11, :cond_4

    .line 2417
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2418
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x78

    move-object v5, p0

    .line 2417
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2419
    .restart local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    check-cast p1, Lcom/hz/actor/Model;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto/16 :goto_0

    .line 2424
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    if-eqz p2, :cond_6

    if-eq p2, v11, :cond_6

    .line 2425
    const/4 v7, 0x0

    .line 2426
    .local v7, "isEquip":Z
    if-eqz v9, :cond_c

    .line 2427
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iget-short v5, v9, Lcom/hz/actor/Mercenary;->groupId:S

    invoke-virtual {v4, v5}, Lcom/hz/actor/Player;->getMercenaryById(I)Lcom/hz/actor/Model;

    move-result-object v4

    if-eqz v4, :cond_b

    move v7, v0

    .line 2431
    :cond_5
    :goto_1
    if-eqz v7, :cond_e

    const-string v3, "Ngh\u1ec9"

    move-object v4, v3

    .line 2432
    :goto_2
    if-eqz v7, :cond_f

    const/16 v3, 0x2b7c

    .line 2431
    :goto_3
    invoke-static {v8, v4, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2434
    .end local v7    # "isEquip":Z
    :cond_6
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_10

    .line 2436
    const-string v3, "C.Ti\u1ebft"

    const/16 v4, 0x2b7d

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2447
    :cond_7
    :goto_4
    if-nez p2, :cond_11

    .line 2448
    const-string v0, "Thu\u00ea"

    const/16 v3, 0x2b80

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2454
    :cond_8
    :goto_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 2455
    const-string v0, "S\u1eeda"

    const/16 v3, 0x2b7a

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2457
    :cond_9
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_a

    .line 2458
    const-string v0, "P.\u1ea4n"

    const/16 v3, 0x2c65

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2461
    :cond_a
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2462
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x33

    move-object v5, p0

    .line 2461
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2463
    .restart local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    check-cast p1, Lcom/hz/actor/Model;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto/16 :goto_0

    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    .restart local v7    # "isEquip":Z
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_b
    move v7, v3

    .line 2427
    goto :goto_1

    .line 2428
    :cond_c
    if-eqz v10, :cond_5

    .line 2429
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v4}, Lcom/hz/actor/Player;->getPet()Lcom/hz/actor/Model;

    move-result-object v4

    if-ne v4, v10, :cond_d

    move v7, v0

    :goto_6
    goto :goto_1

    :cond_d
    move v7, v3

    goto :goto_6

    .line 2431
    :cond_e
    const-string v3, "Chi\u1ebfn"

    move-object v4, v3

    goto :goto_2

    .line 2432
    :cond_f
    const/16 v3, 0x2b7b

    goto :goto_3

    .line 2438
    .end local v7    # "isEquip":Z
    :cond_10
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v3

    if-ne v3, v12, :cond_7

    .line 2439
    const-string v3, "\u0110\u1ea1o c\u1ee5"

    const/16 v4, 0x2b7f

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2440
    const-string v3, "T.T\u1ee7y"

    const/16 v4, 0x2b82

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2441
    const-string v3, "T.Sinh"

    const/16 v4, 0x2b81

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2442
    const-string v3, "T.n\u0103ng"

    const/16 v4, 0x2b83

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2443
    const-string v3, "Chi ti\u1ebft"

    const/16 v4, 0x2bff

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_4

    .line 2449
    :cond_11
    if-ne p2, v0, :cond_12

    .line 2450
    const-string v0, "Kh\u00f4ng thu\u00ea"

    const/16 v3, 0x2b7e

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_5

    .line 2451
    :cond_12
    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 2452
    const-string v0, "P.sinh"

    const/16 v3, 0x2b7e

    invoke-static {v8, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto/16 :goto_5
.end method

.method public static gotoOnAutoSellMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 382
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 384
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Th\u00f4ng tin VP"

    const/16 v3, 0x40db

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 385
    const-string v2, "X\u00e1c nh\u1eadn b\u00e1n (h\u1ebft)"

    const/16 v3, 0x40de

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 386
    const-string v2, "Gi\u1eef l\u1ea1i (kh\u00f4ng b\u00e1n)"

    const/16 v3, 0x40dc

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 388
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 390
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 393
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x82

    move-object v5, p0

    .line 392
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnChargeMenu(Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 399
    if-nez p0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 405
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_0

    .line 409
    const/16 v2, 0x413d

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v7

    .line 410
    .local v7, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v7, :cond_0

    .line 415
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 416
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 418
    .local v1, "eventList":Ljava/util/Vector;
    iget-object v2, v7, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_2

    .line 420
    iget-object v2, v7, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/core/ChargeActivity;

    .line 421
    .local v6, "chargeActivity":Lcom/hz/core/ChargeActivity;
    if-eqz v6, :cond_2

    iget-object v2, v6, Lcom/hz/core/ChargeActivity;->item:Lcom/hz/core/Item;

    if-eqz v2, :cond_2

    .line 423
    const-string v2, "Xem v\u1eadt ph\u1ea9m"

    const/16 v3, 0x413f

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 425
    const/4 v2, 0x1

    iget-byte v3, v6, Lcom/hz/core/ChargeActivity;->status:B

    if-ne v2, v3, :cond_2

    .line 427
    const-string v2, "Nh\u1eadn"

    const/16 v3, 0x4140

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 431
    .end local v6    # "chargeActivity":Lcom/hz/core/ChargeActivity;
    :cond_2
    const-string v2, "N\u1ea1p ngay"

    const/16 v3, 0x4144

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 433
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 435
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 438
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x83

    move-object v5, p0

    .line 437
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnConsumer(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4901
    if-nez p0, :cond_0

    .line 4917
    :goto_0
    return-void

    .line 4906
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4907
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4909
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Nh\u1eadn th\u01b0\u1edfng"

    const/16 v3, 0x47ea

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4910
    const-string v2, "Th\u00f4ng tin VP"

    const/16 v3, 0x47e6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4911
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4913
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4915
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4916
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x89

    move-object v5, p0

    .line 4915
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnEnChantMenu(Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 444
    if-nez p0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 450
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_0

    .line 455
    const/16 v2, 0x4e86

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v7

    .line 456
    .local v7, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v7, :cond_0

    .line 464
    iget-object v2, v7, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_2

    .line 466
    iget-object v2, v7, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, v7, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/core/Item;

    .line 469
    .local v6, "item":Lcom/hz/core/Item;
    if-eqz v6, :cond_0

    .line 480
    .end local v6    # "item":Lcom/hz/core/Item;
    :cond_2
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 481
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 483
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ph\u1ee5 Ma"

    const/16 v3, 0x4e89

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 484
    const-string v2, "Th\u00f4ng tin VP"

    const/16 v3, 0x4e8c

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 485
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e6

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 487
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 490
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x84

    move-object v5, p0

    .line 489
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnEvolveMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 361
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 363
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ti\u1ebfn h\u00f3a"

    const/16 v3, 0x4076

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 365
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 367
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 370
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x81

    move-object v5, p0

    .line 369
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnIdentifyFocu(Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4853
    const/16 v3, 0x4400

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v2

    .line 4855
    .local v2, "templistWindow":Lcom/hz/gui/GWindow;
    if-nez v2, :cond_1

    .line 4876
    :cond_0
    :goto_0
    return-void

    .line 4859
    :cond_1
    iget-object v3, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v3, :cond_0

    .line 4863
    const/4 v1, 0x0

    .line 4865
    .local v1, "focusGWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GWindow;->canCatchKey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4866
    iget-object v1, v2, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 4869
    :cond_2
    if-eqz v1, :cond_0

    .line 4871
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 4872
    .local v0, "eventID":I
    invoke-static {p0, v0}, Lcom/hz/ui/UIAction;->processIdentifyLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0
.end method

.method public static gotoOnIdentifyMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4881
    if-nez p0, :cond_0

    .line 4896
    :goto_0
    return-void

    .line 4886
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4887
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4889
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ch\u1ecdn lo\u1ea1i ch\u1ee9ng nh\u1eadn"

    const/16 v3, 0x43ff

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4890
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4892
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4894
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4895
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x88

    move-object v5, p0

    .line 4894
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnMountGuideMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 334
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 340
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 342
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Nh\u1eadn"

    const/16 v3, 0x4012

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 344
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 346
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 349
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x80

    move-object v5, p0

    .line 348
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnNewArenaMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4756
    if-nez p0, :cond_0

    .line 4786
    :goto_0
    return-void

    .line 4761
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4762
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4764
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0xb2

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x386

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4765
    const-string v2, "Chi ti\u1ebft"

    const/16 v3, 0x43ab

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4766
    const-string v2, "Khi\u00eau chi\u1ebfn"

    const/16 v3, 0x43a2

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4767
    const-string v2, "Th\u00f4ng tin"

    const/16 v3, 0x43aa

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4768
    const-string v2, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4769
    const/16 v2, 0x22

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4770
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc8

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4771
    const/16 v2, 0x4d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4772
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc9

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4773
    const/16 v2, 0x56

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4774
    const-string v2, "\u0110i\u1ec1u ch\u1ec9nh"

    const/16 v3, 0x4399

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4775
    const-string v2, "T\u0103ng l\u1ea7n khi\u00eau chi\u1ebfn"

    const/16 v3, 0x43a8

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4776
    const-string v2, "X\u00f3a CD"

    const/16 v3, 0x43a7

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4777
    const-string v2, "BXH"

    const/16 v3, 0x439a

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4778
    const-string v2, "L\u00e0m m\u1edbi"

    const/16 v3, 0x43a3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4779
    const/16 v2, 0xb3

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x387

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4780
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4782
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4784
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4785
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x85

    move-object v5, p0

    .line 4784
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static gotoOnNewArenaRankMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4791
    if-nez p0, :cond_0

    .line 4811
    :goto_0
    return-void

    .line 4796
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4797
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4799
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0xb2

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x386

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4800
    const-string v2, "S\u00e0n l\u1ecdc XH"

    const/16 v3, 0x4466

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4801
    const-string v2, "H\u1ea1ng c\u00e1 nh\u00e2n"

    const/16 v3, 0x4463

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4802
    const-string v2, "Nh\u1eadn th\u01b0\u1edfng"

    const/16 v3, 0x4464

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4803
    const/16 v2, 0xb3

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x387

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4805
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4807
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4809
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4810
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x86

    move-object v5, p0

    .line 4809
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnNewArenaRewardMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/NewArenaReward;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "newArenaReward"    # Lcom/hz/core/NewArenaReward;

    .prologue
    .line 4816
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4845
    :cond_0
    :goto_0
    return-void

    .line 4821
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4822
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4825
    .local v1, "eventList":Ljava/util/Vector;
    iget-byte v2, p1, Lcom/hz/core/NewArenaReward;->rwState:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 4827
    const-string v2, "Nh\u1eadn th\u01b0\u1edfng"

    const/16 v3, 0x44c6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4835
    :cond_2
    iget-object v2, p1, Lcom/hz/core/NewArenaReward;->rwItemList:Ljava/util/Vector;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/hz/core/NewArenaReward;->rwItemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4837
    const-string v2, "Xem v\u1eadt ph\u1ea9m"

    const/16 v3, 0x44c7

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4839
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4841
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4843
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4844
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x87

    move-object v5, p0

    .line 4843
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnPetGuideMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 319
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 321
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Nh\u1eadn"

    const/16 v3, 0x3fae

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 323
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 325
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 328
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x7f

    move-object v5, p0

    .line 327
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOnlineRewardMenu(Lcom/hz/ui/UIHandler;)V
    .locals 10
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 273
    if-nez p0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 278
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_0

    .line 282
    iget-object v8, v9, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    check-cast v8, Lcom/hz/core/OnLineReWard;

    .line 283
    .local v8, "onlineReWard":Lcom/hz/core/OnLineReWard;
    if-eqz v8, :cond_0

    .line 288
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 289
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 290
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 292
    .local v6, "keyList":Ljava/util/Vector;
    iget-wide v2, v8, Lcom/hz/core/OnLineReWard;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 294
    const-string v2, "Nh\u1eadn qu\u00e0"

    const/16 v3, 0x3f4d

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 297
    :cond_2
    iget-object v2, v8, Lcom/hz/core/OnLineReWard;->item:Lcom/hz/core/Item;

    if-eqz v2, :cond_3

    .line 299
    const-string v2, "Xem v\u1eadt ph\u1ea9m"

    const/16 v3, 0x3f49

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 302
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 304
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 307
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x7e

    move-object v5, p0

    .line 306
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoOpenVipMenu(Lcom/hz/ui/UIHandler;)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 495
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 496
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 497
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 499
    .local v4, "keyList":Ljava/util/Vector;
    const-string v14, "M\u1edf VIP"

    .line 504
    .local v14, "stropen":Ljava/lang/String;
    const/16 v1, 0xb9

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e1a

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 505
    const/16 v3, 0x2e1d

    move-object v1, v14

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 506
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 508
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v13

    .line 509
    .local v13, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v11

    .line 510
    .local v11, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v12

    .line 515
    .local v12, "KEY_MAIN_HOT":[I
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "menuStr":[Ljava/lang/String;
    invoke-static {v5}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v1, 0x28

    .line 517
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v8

    const/16 v9, 0x76

    move-object v6, v2

    move-object v10, p0

    .line 516
    invoke-static/range {v5 .. v10}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 518
    return-void
.end method

.method public static gotoPayDescribe(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 4680
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 4681
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4683
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "N\u1ea1p th\u1ebb "

    const/16 v3, 0x2d5a

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4684
    const-string v2, "Chi ti\u1ebft tr\u00e2n th\u00fa"

    const/16 v3, 0x2d53

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4685
    const-string v2, "Chi ti\u1ebft th\u00fa c\u01b0\u1ee1i"

    const/16 v3, 0x2d5b

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4686
    const-string v2, "Chi ti\u1ebft th\u1eddi trang"

    const/16 v3, 0x2d5c

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4687
    const-string v2, "Xem"

    const/16 v3, 0x2c38

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4688
    const-string v2, "L\u0129nh th\u01b0\u1edfng"

    const/16 v3, 0x2d58

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4689
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4691
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 4693
    .local v0, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 4694
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x70

    move-object v5, p0

    .line 4693
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 4695
    return-void
.end method

.method public static gotoPetCompositeDataMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/PetComposite;Z)V
    .locals 11
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "petcompositedata"    # Lcom/hz/core/PetComposite;
    .param p2, "isLeftKey"    # Z

    .prologue
    .line 2322
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2367
    :cond_0
    :goto_0
    return-void

    .line 2326
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    .line 2327
    .local v10, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v10, :cond_0

    .line 2334
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getPetcomposite()Lcom/hz/core/PetComposite;

    move-result-object v8

    .line 2335
    .local v8, "petcomposite":Lcom/hz/core/PetComposite;
    if-eqz v8, :cond_0

    .line 2342
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2343
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2345
    .local v1, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e6

    invoke-static {v7, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2347
    const-string v9, "C\u00e0i \u0111\u1eb7t ch\u1ecdn"

    .line 2348
    .local v9, "strselect":Ljava/lang/String;
    iget-boolean v0, p1, Lcom/hz/core/PetComposite;->ischoice:Z

    if-eqz v0, :cond_2

    .line 2349
    const-string v9, "H\u1ee7y ch\u1ecdn"

    .line 2353
    :cond_2
    if-nez p2, :cond_3

    .line 2354
    const/16 v0, 0x2f47

    invoke-static {v7, v9, v1, v0}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2364
    :goto_1
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2365
    const/4 v2, -0x1

    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x79

    move-object v5, p0

    .line 2364
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2367
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    goto :goto_0

    .line 2358
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    :cond_3
    invoke-virtual {v8}, Lcom/hz/core/PetComposite;->isFullFit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2359
    const-string v0, "Ch\u1ecdn h\u1ee3p th\u00e0nh"

    const/16 v2, 0x2f4a

    invoke-static {v7, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2361
    :cond_4
    const-string v0, "C.Ti\u1ebft"

    const/16 v2, 0x2f49

    invoke-static {v7, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1
.end method

.method public static gotoPhotoAlbumsListMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Model;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    .line 1114
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1115
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1117
    .local v1, "eventList":Ljava/util/Vector;
    if-eqz p1, :cond_0

    .line 1118
    const-string v2, "V\u00e0o album"

    const/16 v3, 0x20d5

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1120
    const-string v2, "B\u1ea3ng ng\u01b0\u1eddi ch\u01a1i"

    const/16 v3, 0x20d2

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1122
    :cond_0
    const-string v2, "T\u00ecm album "

    const/16 v3, 0x20d6

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1123
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v7, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1125
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1127
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x5a

    move-object v5, p0

    .line 1126
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1128
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    .line 1129
    return-void
.end method

.method public static gotoPhotoAlbumsMenu(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 523
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 524
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 525
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 527
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "Hot"

    const/16 v3, 0x20d7

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 528
    const-string v1, "Hi\u1ec7n t\u1ea1i"

    const/16 v3, 0x20d8

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 529
    const-string v1, "M\u1edbi"

    const/16 v3, 0x20d9

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 531
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 533
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 536
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x68

    .line 537
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 535
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    .line 538
    return-void
.end method

.method public static gotoPhotoCommentMenu(Lcom/hz/actor/Model;Lcom/hz/core/Photo;Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "photo"    # Lcom/hz/core/Photo;
    .param p2, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, -0x1

    .line 2130
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 2138
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2139
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2140
    .local v1, "eventList":Ljava/util/Vector;
    const-string v0, "Th\u00edch "

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2141
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b17

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2142
    const-string v0, "Gh\u00e9t"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2143
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b18

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2144
    const-string v0, "Y\u00eau th\u1ea7m"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2145
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b19

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2146
    const-string v0, "B\u00ecnh lu\u1eadn"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2147
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b1a

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2148
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2149
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2151
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2152
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x58

    const/4 v5, 0x0

    .line 2151
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2153
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p2}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 2154
    new-instance v8, Lcom/hz/ui/UIObject;

    invoke-direct {v8, v6}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 2155
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v8, p1}, Lcom/hz/ui/UIObject;->setPhoto(Lcom/hz/core/Photo;)V

    .line 2156
    invoke-virtual {v8, p0}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto :goto_0
.end method

.method public static gotoPhotoListMenu(Lcom/hz/core/Photo;Lcom/hz/actor/Model;Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "photo"    # Lcom/hz/core/Photo;
    .param p1, "model"    # Lcom/hz/actor/Model;
    .param p2, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, -0x1

    .line 2091
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2096
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2097
    .local v1, "eventList":Ljava/util/Vector;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 2098
    const-string v0, "X\u00f3a \u1ea3nh"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2099
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b15

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2101
    :cond_2
    const-string v0, "Th\u00edch "

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2102
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b17

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2103
    const-string v0, "Gh\u00e9t"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2104
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b18

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2105
    const-string v0, "Y\u00eau th\u1ea7m"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2106
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b19

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2107
    const-string v0, "B\u00ecnh lu\u1eadn"

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2108
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b1a

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2109
    const-string v0, "B\u00ecnh lu\u1eadn kh\u00e1c "

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2110
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b1b

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2111
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2112
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2114
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 2115
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x34

    const/4 v5, 0x0

    .line 2114
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2116
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p2}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 2117
    new-instance v8, Lcom/hz/ui/UIObject;

    invoke-direct {v8, v6}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 2118
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v8, p0}, Lcom/hz/ui/UIObject;->setPhoto(Lcom/hz/core/Photo;)V

    .line 2119
    invoke-virtual {v8, p1}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto/16 :goto_0
.end method

.method public static gotoPlayerListMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "listPlayer"    # Lcom/hz/actor/ListPlayer;

    .prologue
    const/4 v4, 0x4

    .line 1455
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1456
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1459
    .local v1, "eventList":Ljava/util/Vector;
    invoke-static {}, Lcom/hz/main/GameCanvas;->isHasPrevPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1460
    const/16 v2, 0xb2

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x386

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1463
    :cond_0
    invoke-static {}, Lcom/hz/main/GameCanvas;->isHasNextPage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1464
    const/16 v2, 0xb3

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x387

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1466
    :cond_1
    const-string v2, "V\u1ec1 giao di\u1ec7n ch\u00ednh"

    const/4 v3, 0x7

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1467
    if-eqz p1, :cond_3

    .line 1468
    const-string v7, "X\u00f3a nh\u00e2n v\u1eadt"

    .line 1469
    .local v7, "menu":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/hz/actor/ListPlayer;->isStatusBit(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1470
    const-string v7, "Kh\u00f4i ph\u1ee5c"

    .line 1472
    :cond_2
    invoke-static {v8, v7, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1474
    .end local v7    # "menu":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1476
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1478
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x43

    const/4 v5, 0x0

    .line 1477
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1479
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6, p0}, Lcom/hz/ui/UIHandler;->setParent(Lcom/hz/ui/UIHandler;)V

    .line 1480
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hz/ui/UIObject;->setListPlayer(Lcom/hz/actor/ListPlayer;)V

    .line 1481
    return-void
.end method

.method public static gotoPlayerRaidersMenu(Lcom/hz/ui/UIHandler;)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 575
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 576
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 577
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 579
    .local v4, "keyList":Ljava/util/Vector;
    sget-object v14, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 580
    .local v14, "player":Lcom/hz/actor/Player;
    if-nez v14, :cond_0

    .line 594
    :goto_0
    return-void

    .line 584
    :cond_0
    const-string v1, "L\u1ecdc ph\u00e1i"

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 585
    const-string v1, "\u0111\u1ec1 ngh\u1ecb ch\u00ednh th\u1ee9c"

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 587
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 589
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 592
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x7a

    .line 593
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 591
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoRankMenu(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 96
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 97
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 98
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 100
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "X\u1ebfp h\u1ea1ng kh\u00e1c"

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 101
    const-string v1, "Xem l\u1ef1a ch\u1ecdn"

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 102
    const-string v1, "X\u1ebfp h\u1ea1ng c\u1ee7a t\u00f4i"

    const/4 v3, 0x3

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 104
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 106
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 109
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x63

    .line 110
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 108
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    .line 111
    return-void
.end method

.method public static gotoSeeAchieveMenu(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 661
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 662
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 663
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 665
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "M\u1ecdi th\u00e0nh t\u1ef1u"

    const/16 v3, 0x507a

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 666
    const-string v1, "So th\u00e0nh t\u1ef1u"

    const/16 v3, 0x507b

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 667
    const-string v1, "Chi ti\u1ebft"

    const/16 v3, 0x507d

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 669
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 671
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 674
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x66

    .line 675
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 673
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    .line 676
    return-void
.end method

.method public static gotoServiceMailReceKeyMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 1961
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1962
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1964
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v2, 0x38

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 1965
    const/16 v3, 0x10

    .line 1964
    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1967
    const/16 v2, 0xd8

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 1968
    const/16 v3, 0xa

    .line 1967
    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1970
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 1971
    const/4 v3, -0x1

    .line 1970
    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1973
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 1975
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x73

    move-object v5, p0

    .line 1974
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 1976
    return-void
.end method

.method public static gotoServiceMailReceMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;)V
    .locals 9
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "mail"    # Lcom/hz/core/Mail;

    .prologue
    const/4 v2, -0x1

    .line 1982
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1983
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1985
    .local v1, "eventList":Ljava/util/Vector;
    const/16 v0, 0xd9

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1986
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2c8b

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1988
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1989
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x2b4c

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1991
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 1994
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 1995
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x6f

    move-object v5, p0

    .line 1994
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 1996
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    new-instance v8, Lcom/hz/ui/UIObject;

    invoke-direct {v8, v6}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 1997
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v8, p1}, Lcom/hz/ui/UIObject;->setMail(Lcom/hz/core/Mail;)V

    .line 1998
    return-void
.end method

.method public static gotoSettingMenu(Lcom/hz/ui/UIHandler;II)V
    .locals 15
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "setting"    # I
    .param p2, "index"    # I

    .prologue
    .line 2044
    sget-object v8, Lcom/hz/ui/UIHandler;->SETTING_MENU:[[I

    .line 2045
    .local v8, "SETTING_MENU":[[I
    sget-object v7, Lcom/hz/ui/UIHandler;->SETTING_EXPLAIN:[Ljava/lang/String;

    .line 2046
    .local v7, "SETTING_EXPLAIN":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v1, v8

    move/from16 v0, p2

    if-lt v0, v1, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    if-ltz p2, :cond_0

    array-length v1, v7

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 2053
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 2054
    .local v14, "menuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 2056
    .local v3, "eventList":Ljava/util/Vector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    aget-object v1, v8, p2

    array-length v1, v1

    if-lt v12, v1, :cond_2

    .line 2071
    :goto_2
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2072
    new-instance v1, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2074
    invoke-static {v14}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 2076
    .local v2, "menuStr":[Ljava/lang/String;
    aget-object v1, v7, p2

    .line 2077
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v4

    const/16 v5, 0x12

    move-object v6, p0

    .line 2076
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v9

    .line 2082
    .local v9, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v9}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    move/from16 v0, p1

    iput v0, v1, Lcom/hz/ui/UIObject;->intValue1:I

    goto :goto_0

    .line 2057
    .end local v2    # "menuStr":[Ljava/lang/String;
    .end local v9    # "choiceUI":Lcom/hz/ui/UIHandler;
    :cond_2
    aget-object v1, v8, p2

    aget v10, v1, v12

    .line 2058
    .local v10, "eventType":I
    const/4 v1, 0x0

    invoke-static {v10, v1}, Lcom/hz/ui/UIHandler;->getSettingText(II)Ljava/lang/String;

    move-result-object v13

    .line 2059
    .local v13, "info":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/UIHandler;->isMultiple(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2060
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/hz/ui/UIHandler;->getSettingIndex(II)Z

    move-result v11

    .line 2061
    .local v11, "flag":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "M\u1edf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2062
    new-instance v4, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    const/4 v1, -0x1

    :goto_3
    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u0110\u00f3ng"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2064
    new-instance v1, Ljava/lang/Integer;

    if-eqz v11, :cond_4

    .end local v10    # "eventType":I
    :goto_4
    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .restart local v10    # "eventType":I
    :cond_3
    move v1, v10

    .line 2062
    goto :goto_3

    .line 2064
    :cond_4
    const/4 v10, -0x1

    goto :goto_4

    .line 2067
    .end local v11    # "flag":Z
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v10, v4}, Lcom/hz/ui/UIHandler;->getSettingText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2068
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2056
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method

.method public static gotoShopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;Z)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "isBuy"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x4

    .line 2498
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2499
    .local v7, "menuList":Ljava/util/Vector;
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2500
    if-eqz p2, :cond_1

    iget v1, p1, Lcom/hz/core/Item;->stackNum:I

    if-le v1, v2, :cond_1

    .line 2501
    const/16 v1, 0x3d

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2502
    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2503
    const/16 v1, 0x3b

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2516
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 2517
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    move-object v2, p1

    move-object v5, p0

    .line 2516
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2519
    .local v6, "infoUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->getW()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/hz/core/Item;->getItemInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 2520
    .local v0, "strInfo":Ljava/lang/String;
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->deleteUI(Lcom/hz/ui/UIHandler;)V

    .line 2521
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 2522
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    move-object v2, p1

    move-object v5, p0

    .line 2521
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2524
    return-void

    .line 2504
    .end local v0    # "strInfo":Ljava/lang/String;
    .end local v6    # "infoUI":Lcom/hz/ui/UIHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 2505
    const/16 v1, 0x3e

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2506
    :cond_2
    if-nez p2, :cond_3

    iget-short v1, p1, Lcom/hz/core/Item;->quantity:S

    if-le v1, v2, :cond_3

    .line 2507
    const/16 v1, 0x24

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2508
    const/16 v1, 0x26

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2510
    const-string v1, "B\u00e1n th\u00f4ng minh"

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2511
    :cond_3
    if-nez p2, :cond_0

    .line 2512
    const/16 v1, 0x3f

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2514
    const-string v1, "B\u00e1n th\u00f4ng minh"

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static gotoSkillShopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Z)V
    .locals 15
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "skill"    # Lcom/hz/core/Skill;
    .param p3, "isFirst"    # Z

    .prologue
    .line 2253
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lcom/hz/core/Skill;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/hz/actor/Player;->getSkillLevelByID(I)I

    move-result v11

    .line 2260
    .local v11, "playerSkillLevel":I
    move-object/from16 v0, p2

    iget-byte v2, v0, Lcom/hz/core/Skill;->level:B

    if-lt v11, v2, :cond_3

    const/4 v9, 0x1

    .line 2262
    .local v9, "isNoLearn":Z
    :goto_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 2263
    .local v10, "menuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 2264
    .local v3, "eventList":Ljava/util/Vector;
    if-nez v9, :cond_2

    .line 2265
    move-object/from16 v0, p2

    iget-byte v12, v0, Lcom/hz/core/Skill;->level:B

    .line 2266
    .local v12, "skillLevel":I
    const/4 v2, 0x1

    if-le v12, v2, :cond_4

    const-string v2, "H\u1ecdc Lv %U "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2267
    new-instance v2, Ljava/lang/Integer;

    const/16 v4, 0x2b0d

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2269
    .end local v12    # "skillLevel":I
    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2270
    new-instance v2, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2273
    if-eqz p3, :cond_5

    .line 2274
    const/4 v7, 0x0

    .line 2279
    .local v7, "areaUI":Lcom/hz/ui/UIHandler;
    const-string v1, ""

    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 2280
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v4

    const/4 v5, 0x5

    move-object v6, p0

    .line 2279
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v7

    .line 2282
    const/4 v2, 0x1

    invoke-virtual {v7}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hz/gui/GContainer;->getW()I

    move-result v4

    add-int/lit8 v4, v4, -0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, "strInfo":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/ui/UIHandler;->deleteUI(Lcom/hz/ui/UIHandler;)V

    .line 2290
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 2291
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v4

    const/4 v5, 0x5

    move-object v6, p0

    .line 2290
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v7

    .line 2296
    new-instance v14, Lcom/hz/ui/UIObject;

    invoke-direct {v14, v7}, Lcom/hz/ui/UIObject;-><init>(Lcom/hz/ui/UIHandler;)V

    .line 2297
    .local v14, "uiObj":Lcom/hz/ui/UIObject;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/hz/ui/UIObject;->setPlayer(Lcom/hz/actor/Player;)V

    .line 2298
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/hz/ui/UIObject;->setSkill(Lcom/hz/core/Skill;)V

    .line 2299
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hz/ui/UIObject;->getPageObjList()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/hz/ui/UIObject;->setPageObjList(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 2260
    .end local v1    # "strInfo":Ljava/lang/String;
    .end local v3    # "eventList":Ljava/util/Vector;
    .end local v7    # "areaUI":Lcom/hz/ui/UIHandler;
    .end local v9    # "isNoLearn":Z
    .end local v10    # "menuList":Ljava/util/Vector;
    .end local v14    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2266
    .restart local v3    # "eventList":Ljava/util/Vector;
    .restart local v9    # "isNoLearn":Z
    .restart local v10    # "menuList":Ljava/util/Vector;
    .restart local v12    # "skillLevel":I
    :cond_4
    const-string v2, "B\u1eaft \u0111\u1ea7u h\u1ecdc"

    goto :goto_2

    .line 2303
    .end local v12    # "skillLevel":I
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hz/gui/GContainer;->getW()I

    move-result v4

    add-int/lit8 v4, v4, -0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Lcom/hz/core/Skill;->getDesc(ZI)Ljava/lang/String;

    move-result-object v8

    .line 2304
    .local v8, "info":Ljava/lang/String;
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v8, v2, v3}, Lcom/hz/ui/UIHandler;->updateAreaMessageWindowInfo(Lcom/hz/ui/UIHandler;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    .line 2305
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v14

    .line 2306
    .restart local v14    # "uiObj":Lcom/hz/ui/UIObject;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/hz/ui/UIObject;->setPlayer(Lcom/hz/actor/Player;)V

    .line 2307
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/hz/ui/UIObject;->setSkill(Lcom/hz/core/Skill;)V

    .line 2309
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v13

    check-cast v13, Lcom/hz/gui/GTextArea;

    .line 2310
    .local v13, "textArea":Lcom/hz/gui/GTextArea;
    if-eqz v13, :cond_0

    .line 2311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ch\u00fac m\u1eebng mi h\u1ecdc c\u1ea5p %U"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2312
    add-int/lit8 v5, v11, -0x1

    div-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v5

    .line 2311
    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2312
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2311
    invoke-virtual {v13, v2}, Lcom/hz/gui/GTextArea;->setAlertText(Ljava/lang/String;)V

    .line 2313
    const/16 v2, 0x1e

    invoke-virtual {v13, v2}, Lcom/hz/gui/GTextArea;->setAlertCount(I)V

    goto/16 :goto_0
.end method

.method public static gotoSkyArenaMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 683
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 684
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 686
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 687
    const/16 v2, 0x22

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 688
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc8

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 689
    const/16 v2, 0x4d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 690
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc9

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 691
    const/16 v2, 0x56

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 693
    const-string v2, "R\u1eddi \u0111\u1ea5u tr\u01b0\u1eddng"

    const/16 v3, 0x2dc1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 694
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 696
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 698
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x74

    move-object v5, p0

    .line 697
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 699
    return-void
.end method

.method public static gotoSkyArenaShortCutMenu(Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 706
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-nez v7, :cond_0

    .line 722
    :goto_0
    return-void

    .line 710
    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 711
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 713
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ti\u1ebfn \u0111\u1ed9"

    const/16 v3, 0x2dbf

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 714
    const-string v2, "\u0110\u1ecbch t\u00ecnh"

    const/16 v3, 0x2dbe

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 715
    const-string v2, "Khi\u00eau chi\u1ebfn"

    const/16 v3, 0x2dbd

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 717
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 719
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 721
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x75

    move-object v5, p0

    .line 720
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static gotoStallBuyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 2471
    if-nez p1, :cond_0

    .line 2488
    :goto_0
    return-void

    .line 2475
    :cond_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2476
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2478
    .local v2, "eventList":Ljava/util/Vector;
    const-string v0, "Mua"

    const/16 v1, 0x2b6d

    invoke-static {v7, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2479
    invoke-virtual {p1}, Lcom/hz/core/Item;->isPetType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2480
    const-string v0, "C.Ti\u1ebft"

    const/16 v1, 0x2b6e

    invoke-static {v7, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2482
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-static {v7, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2484
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {p1, v0}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v0

    .line 2485
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 2486
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0xb

    move-object v5, p0

    .line 2484
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 2487
    .local v6, "areaUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    goto :goto_0
.end method

.method private gotoStallEndMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3779
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 3780
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 3782
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "\u0110\u00f3ng b\u00e0y b\u00e1n"

    const/16 v3, 0x2be3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3783
    const-string v2, "Log ti\u00eau th\u1ee5"

    const/16 v3, 0x2be4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3784
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3786
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 3787
    .local v0, "choices":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 3788
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x41

    move-object v5, p1

    .line 3787
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 3789
    return-void
.end method

.method public static gotoTeamBossMenu(Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 810
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 811
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 813
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "Ph\u00f2ng chat"

    const/16 v3, 0x2bc5

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 814
    const/16 v2, 0x22

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc6

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 815
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc8

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 816
    const/16 v2, 0x4d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc3

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 817
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc9

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 818
    const/16 v2, 0x56

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2bc4

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 819
    const-string v2, "\u0110i\u1ec3m"

    const/16 v3, 0x4e22

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 820
    const-string v2, "R\u1eddi ph\u00f3 b\u1ea3n"

    const/16 v3, 0x4e23

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 821
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v6, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 823
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 825
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x62

    move-object v5, p0

    .line 824
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 826
    return-void
.end method

.method private static gotoTeamMenu(Lcom/hz/actor/Model;Lcom/hz/ui/UIHandler;)V
    .locals 9
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3832
    if-nez p0, :cond_0

    .line 3855
    :goto_0
    return-void

    .line 3836
    :cond_0
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->isLeader()Z

    move-result v7

    .line 3838
    .local v7, "isLeader":Z
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 3839
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 3841
    .local v1, "eventList":Ljava/util/Vector;
    const-string v2, "C.Ti\u1ebft"

    const/16 v3, 0x2b02

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3842
    if-eqz v7, :cond_1

    .line 3843
    const-string v2, "Gi\u1ea3i t\u00e1n"

    const/16 v3, 0x2b04

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3844
    const-string v2, "K\u00edch"

    const/16 v3, 0x2b06

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3845
    const-string v2, "Th\u0103ng l\u00e0m \u0111\u1ed9i tr\u01b0\u1edfng"

    const/16 v3, 0x2b07

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3849
    :goto_1
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e6

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3851
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 3852
    .local v0, "choices":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    .line 3853
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x40

    move-object v5, p1

    .line 3852
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 3854
    .local v6, "choiceUI":Lcom/hz/ui/UIHandler;
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hz/ui/UIObject;->setModel(Lcom/hz/actor/Model;)V

    goto :goto_0

    .line 3847
    .end local v0    # "choices":[Ljava/lang/String;
    .end local v6    # "choiceUI":Lcom/hz/ui/UIHandler;
    :cond_1
    const-string v2, "R\u1eddi \u0111\u1ed9i"

    const/16 v3, 0x2b05

    invoke-static {v8, v2, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_1
.end method

.method public static gotoUnionListMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "lib_c"    # Lcom/hz/core/Country;

    .prologue
    const/4 v2, -0x1

    .line 860
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 865
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v7, :cond_0

    .line 869
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 870
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 876
    .local v1, "eventList":Ljava/util/Vector;
    const-string v0, "Xem th\u1ebf l\u1ef1c"

    const/16 v3, 0x378f

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 877
    const-string v0, "Y\u00eau c\u1ea7u v\u00e0o th\u1ebf l\u1ef1c"

    const/16 v3, 0x3790

    invoke-static {v6, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 883
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 885
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v3

    const/16 v4, 0x61

    move-object v5, p0

    .line 885
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method private final processAreaMessageWinLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 12
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3413
    if-nez p1, :cond_1

    .line 3516
    :cond_0
    :goto_0
    return-void

    .line 3417
    :cond_1
    if-nez p2, :cond_0

    .line 3420
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v4

    .line 3423
    .local v4, "parentUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v8

    .line 3424
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v8, :cond_0

    .line 3428
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GWindow;

    .line 3429
    .local v3, "menuWindow":Lcom/hz/gui/GWindow;
    if-eqz v3, :cond_0

    .line 3433
    iget v1, v3, Lcom/hz/gui/GWindow;->focusIndex:I

    .line 3434
    .local v1, "focusIndex":I
    invoke-virtual {v3}, Lcom/hz/gui/GWindow;->getObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 3435
    .local v0, "eventList":Ljava/util/Vector;
    invoke-static {v1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3440
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 3441
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 3446
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3449
    .local v2, "menuEvent":I
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v7

    .line 3454
    .local v7, "subType":I
    const/16 v9, 0x12

    if-ne v7, v9, :cond_4

    .line 3455
    if-eqz v4, :cond_0

    if-eqz v8, :cond_0

    .line 3458
    move v5, v2

    .line 3459
    .local v5, "setEvent":I
    iget v6, v8, Lcom/hz/ui/UIObject;->intValue1:I

    .line 3460
    .local v6, "setting":I
    if-lez v5, :cond_3

    .line 3461
    invoke-static {v6, v5}, Lcom/hz/ui/UIHandler;->setSettingIndex(II)I

    move-result v6

    .line 3462
    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    iput v6, v9, Lcom/hz/ui/UIObject;->intValue1:I

    .line 3463
    const/16 v9, 0x77

    invoke-virtual {v4, v9}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3514
    .end local v5    # "setEvent":I
    .end local v6    # "setting":I
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 3468
    :cond_4
    const/4 v9, 0x5

    if-ne v7, v9, :cond_5

    .line 3469
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getPlayer()Lcom/hz/actor/Player;

    move-result-object v9

    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getSkill()Lcom/hz/core/Skill;

    move-result-object v10

    invoke-static {p1, v9, v10, v2}, Lcom/hz/core/Skill;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3470
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getPlayer()Lcom/hz/actor/Player;

    move-result-object v9

    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getSkill()Lcom/hz/core/Skill;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p1, v9, v10, v11}, Lcom/hz/ui/KeyUIAction;->gotoSkillShopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Lcom/hz/core/Skill;Z)V

    goto :goto_0

    .line 3476
    :cond_5
    const/16 v9, 0xc

    if-ne v7, v9, :cond_6

    .line 3477
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v9

    invoke-static {v4, v9, v2}, Lcom/hz/core/ShopItem;->doGoodMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)Z

    goto :goto_1

    .line 3481
    :cond_6
    const/16 v9, 0xb

    if-ne v7, v9, :cond_7

    .line 3482
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v9

    invoke-static {v4, v2, v9}, Lcom/hz/ui/UIAction;->doItemMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/core/Item;)V

    goto :goto_1

    .line 3486
    :cond_7
    const/4 v9, 0x6

    if-eq v7, v9, :cond_3

    .line 3491
    const/16 v9, 0x8

    if-ne v7, v9, :cond_8

    .line 3492
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v9

    invoke-static {v4, v9, v2}, Lcom/hz/core/ShopItem;->doGoodMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)Z

    goto :goto_1

    .line 3496
    :cond_8
    const/16 v9, 0x3e

    if-eq v7, v9, :cond_9

    const/16 v9, 0x3d

    if-ne v7, v9, :cond_a

    .line 3497
    :cond_9
    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 3500
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v9

    invoke-static {v4, v9, v2}, Lcom/hz/core/ShopItem;->doGoodMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)Z

    goto :goto_1

    .line 3505
    :cond_a
    const/16 v9, 0x6c

    if-ne v7, v9, :cond_3

    .line 3506
    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 3509
    invoke-virtual {v4}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hz/ui/UIObject;->getPhoto()Lcom/hz/core/Photo;

    move-result-object v9

    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v10

    invoke-static {v4, v2, v9, v10}, Lcom/hz/core/Photo;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/core/Photo;Lcom/hz/actor/Model;)Z

    goto :goto_1
.end method

.method private processKeyCreateCardLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3589
    return-void
.end method

.method private processKeyGoodListLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 12
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 3932
    if-nez p1, :cond_1

    .line 4020
    :cond_0
    :goto_0
    return-void

    .line 3935
    :cond_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v10

    .line 3937
    .local v10, "subType":I
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hz/ui/UIObject;

    .line 3938
    .local v11, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v11, :cond_0

    .line 3943
    if-ne p2, v3, :cond_3

    .line 3944
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3945
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3947
    :cond_2
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 3951
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    .line 3952
    if-nez v10, :cond_5

    .line 3953
    invoke-static {p1}, Lcom/hz/ui/KeyUIAction;->processKeyGoodNewSearchLayer(Lcom/hz/ui/UIHandler;)V

    .line 3964
    :cond_4
    :goto_1
    const/16 v1, 0x3afd

    invoke-virtual {p1, v1}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v8

    .line 3965
    .local v8, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v1, :cond_0

    .line 3970
    const/16 v1, 0x71

    if-ne p2, v1, :cond_7

    .line 3971
    invoke-virtual {v11}, Lcom/hz/ui/UIObject;->doRequestPageUpdate()V

    goto :goto_0

    .line 3954
    .end local v8    # "listWindow":Lcom/hz/gui/GWindow;
    :cond_5
    if-ne v10, v3, :cond_4

    .line 3956
    const/16 v1, 0x6b

    invoke-static {p1, v1, v0}, Lcom/hz/ui/KeyUIAction;->gotoGoodNewTypeMenu(Lcom/hz/ui/UIHandler;BLcom/hz/gui/GWidget;)V

    goto :goto_1

    .line 3960
    :cond_6
    const/16 v1, 0x10

    if-ne p2, v1, :cond_4

    .line 3961
    invoke-static {p1}, Lcom/hz/ui/UIAction;->processGoodsSearchName(Lcom/hz/ui/UIHandler;)V

    goto :goto_1

    .line 3982
    .restart local v8    # "listWindow":Lcom/hz/gui/GWindow;
    :cond_7
    invoke-virtual {v11, p2}, Lcom/hz/ui/UIObject;->doUpAndDownPageAction(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3987
    if-nez p2, :cond_0

    .line 3989
    iget-object v1, v8, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/core/Item;

    .line 3990
    .local v7, "item":Lcom/hz/core/Item;
    if-eqz v7, :cond_0

    .line 3995
    if-nez v10, :cond_9

    .line 3996
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 3997
    .local v9, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 3998
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v9, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 3999
    const-string v1, "Mua"

    const/16 v3, 0x2b70

    invoke-static {v9, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4000
    invoke-virtual {v7}, Lcom/hz/core/Item;->isPetType()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4001
    const-string v1, "Chi ti\u1ebft"

    const/16 v3, 0x2b61

    invoke-static {v9, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 4003
    :cond_8
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4006
    .local v6, "infoUI":Lcom/hz/ui/UIHandler;
    invoke-virtual {v6}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->getW()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {v7, v1}, Lcom/hz/core/Item;->getItemInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 4007
    .local v0, "strInfo":Ljava/lang/String;
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->deleteUI(Lcom/hz/ui/UIHandler;)V

    .line 4008
    invoke-static {v9}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v6

    .line 4013
    invoke-static {v6}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    goto/16 :goto_0

    .line 4016
    .end local v0    # "strInfo":Ljava/lang/String;
    .end local v2    # "eventList":Ljava/util/Vector;
    .end local v6    # "infoUI":Lcom/hz/ui/UIHandler;
    .end local v9    # "menuList":Ljava/util/Vector;
    :cond_9
    if-ne v10, v3, :cond_0

    .line 4017
    const/16 v1, 0x2b74

    invoke-static {p1, v7, v1}, Lcom/hz/ui/KeyUIAction;->gotoGoodSupplyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)V

    goto/16 :goto_0
.end method

.method private processKeyGoodMyLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 3
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3859
    if-nez p1, :cond_1

    .line 3879
    :cond_0
    :goto_0
    return-void

    .line 3864
    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 3865
    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/hz/ui/UIHandler;->updateDataToGoodsPurchase(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 3869
    :cond_3
    const/16 v2, 0x1aa9

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 3870
    .local v1, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_0

    .line 3873
    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Item;

    .line 3876
    .local v0, "item":Lcom/hz/core/Item;
    if-nez p2, :cond_0

    .line 3877
    invoke-static {p1, v0}, Lcom/hz/ui/KeyUIAction;->gotoGoodMyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;)V

    goto :goto_0
.end method

.method public static processKeyGoodNewSearchLayer(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, -0x1

    .line 4079
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4080
    .local v0, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 4081
    .local v2, "eventList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4083
    .local v4, "keyList":Ljava/util/Vector;
    const-string v1, "Lo\u1ea1i"

    const/16 v3, 0x3a9d

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 4084
    const-string v1, "Ph\u1ea9m ch\u1ea5t"

    const/16 v3, 0x3a9b

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 4085
    const-string v1, "Lv"

    const/16 v3, 0x3a9c

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 4086
    const-string v1, "T\u00ecm"

    const/16 v3, 0x3a9e

    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;ILjava/util/Vector;I)V

    .line 4088
    invoke-static {v0}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    .line 4089
    .local v5, "KEY_MAIN_MENU":[Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v6

    .line 4090
    .local v6, "KEY_MAIN_EVENT":[I
    invoke-static {v4}, Lcom/hz/common/Tool;->getIntArrayByVector(Ljava/util/Vector;)[I

    move-result-object v7

    .line 4093
    .local v7, "KEY_MAIN_HOT":[I
    const/4 v8, 0x0

    sget v9, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    const/16 v10, 0x69

    .line 4094
    invoke-static {}, Lcom/hz/ui/KeyUIAction;->getUIActionInstance()Lcom/hz/ui/KeyUIAction;

    move-result-object v12

    move-object v11, p0

    move-object v13, v2

    .line 4092
    invoke-static/range {v5 .. v13}, Lcom/hz/ui/UIHandler;->createHotChoiceMenu([Ljava/lang/String;[I[IIIBLcom/hz/ui/UIHandler;Lcom/hz/ui/UIListener;Ljava/lang/Object;)Lcom/hz/ui/UIHandler;

    .line 4095
    return-void
.end method

.method private processKeyGoodSearchLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 3
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 4029
    if-nez p1, :cond_1

    .line 4046
    :cond_0
    :goto_0
    return-void

    .line 4033
    :cond_1
    const/16 v2, 0x10

    if-ne p2, v2, :cond_2

    .line 4034
    invoke-static {p1}, Lcom/hz/ui/UIAction;->processGoodsSearchName(Lcom/hz/ui/UIHandler;)V

    .line 4037
    :cond_2
    const/16 v2, 0x3a99

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 4038
    .local v1, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    .line 4041
    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v0

    .line 4043
    .local v0, "focusEvent":I
    if-nez p2, :cond_0

    .line 4044
    invoke-static {p1, v0}, Lcom/hz/ui/KeyUIAction;->doKeyGoodSearchEvent(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0
.end method

.method private processKeyGoodTypeLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 4
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3888
    if-nez p1, :cond_1

    .line 3923
    :cond_0
    :goto_0
    return-void

    .line 3892
    :cond_1
    const/16 v2, 0x3bc5

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v1

    .line 3893
    .local v1, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_0

    .line 3896
    iget-object v2, v1, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Item;

    .line 3899
    .local v0, "item":Lcom/hz/core/Item;
    const/16 v2, 0x13

    if-ne p2, v2, :cond_2

    .line 3900
    invoke-static {v0, p1}, Lcom/hz/core/ShopItem;->doGoodPublishOrder(Ljava/lang/Object;Lcom/hz/ui/UIHandler;)Z

    goto :goto_0

    .line 3905
    :cond_2
    if-nez p2, :cond_3

    .line 3906
    invoke-static {p1, v0}, Lcom/hz/ui/KeyUIAction;->gotoGoodOrderMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;)V

    goto :goto_0

    .line 3909
    :cond_3
    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    .line 3910
    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/hz/ui/KeyUIAction;->gotoGoodNewTypeMenu(Lcom/hz/ui/UIHandler;BLcom/hz/gui/GWidget;)V

    goto :goto_0

    .line 3913
    :cond_4
    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 3914
    :cond_5
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/hz/ui/UIObject;->doUpAndDownPageAction(I)Z

    goto :goto_0

    .line 3916
    :cond_6
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 3917
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3918
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 3920
    :cond_7
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0
.end method

.method private processKeyStallLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 13
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 3663
    if-nez p1, :cond_1

    .line 3772
    :cond_0
    :goto_0
    return-void

    .line 3666
    :cond_1
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v4

    .line 3668
    .local v4, "subType":I
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v5

    .line 3669
    .local v5, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v5, :cond_0

    .line 3673
    invoke-virtual {v5}, Lcom/hz/ui/UIObject;->getPlayer()Lcom/hz/actor/Player;

    move-result-object v3

    .line 3674
    .local v3, "player":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 3679
    if-eq p2, v8, :cond_2

    const/16 v7, 0xe

    if-ne p2, v7, :cond_4

    .line 3680
    :cond_2
    invoke-static {v3, v11}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    .line 3681
    invoke-static {v3, v9}, Lcom/hz/core/PlayerBag;->clearBagAllItemStatus(Lcom/hz/actor/Player;I)Z

    .line 3682
    invoke-virtual {v3}, Lcom/hz/actor/Player;->isShopMode()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3683
    sput-object v10, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    .line 3685
    :cond_3
    sput-object v10, Lcom/hz/main/GameWorld;->tempList:Ljava/util/Vector;

    .line 3686
    sput-object v10, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    .line 3687
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 3692
    :cond_4
    const/16 v7, 0x32

    if-eq p2, v7, :cond_5

    const/16 v7, 0x96

    if-ne p2, v7, :cond_6

    .line 3693
    :cond_5
    invoke-static {p1, v11}, Lcom/hz/ui/UIHandler;->updateDataToKeyStallUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 3698
    :cond_6
    const/4 v7, 0x6

    if-ne p2, v7, :cond_c

    .line 3700
    if-ne v4, v8, :cond_8

    .line 3701
    invoke-virtual {v3}, Lcom/hz/actor/Player;->isShopMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3702
    invoke-direct {p0, p1}, Lcom/hz/ui/KeyUIAction;->gotoStallEndMenu(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3704
    :cond_7
    const/16 v7, 0x2be2

    invoke-static {p1, v7}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3708
    :cond_8
    if-ne v4, v12, :cond_9

    .line 3709
    invoke-static {p1}, Lcom/hz/main/GameWorld;->doItemIntegral_1(Lcom/hz/ui/UIHandler;)Z

    goto :goto_0

    .line 3712
    :cond_9
    if-ne v4, v9, :cond_a

    .line 3713
    invoke-static {p1, v8}, Lcom/hz/core/Enchant;->doItemEnChant(Lcom/hz/ui/UIHandler;B)Z

    goto :goto_0

    .line 3716
    :cond_a
    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 3717
    invoke-virtual {v3}, Lcom/hz/actor/Player;->isShopMode()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3718
    invoke-direct {p0, p1}, Lcom/hz/ui/KeyUIAction;->gotoStallEndMenu(Lcom/hz/ui/UIHandler;)V

    goto :goto_0

    .line 3720
    :cond_b
    const/16 v7, 0x2be2

    invoke-static {p1, v7}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3728
    :cond_c
    if-nez p2, :cond_0

    .line 3730
    const/16 v7, 0x29

    invoke-virtual {p1, v7}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v6

    .line 3731
    .local v6, "upWindow":Lcom/hz/gui/GWindow;
    const/16 v7, 0x22

    invoke-virtual {p1, v7}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 3733
    .local v0, "bagWindow":Lcom/hz/gui/GWindow;
    const/4 v1, 0x0

    .line 3734
    .local v1, "focusGWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v6}, Lcom/hz/gui/GWindow;->canCatchKey()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3735
    iget-object v1, v6, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 3741
    :cond_d
    :goto_1
    if-eqz v1, :cond_0

    .line 3745
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/Item;

    .line 3746
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_0

    .line 3751
    if-ne v4, v8, :cond_f

    .line 3753
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hz/gui/GWindow;->getEventType()I

    move-result v7

    const/16 v8, 0x75

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 3752
    invoke-static {p1, v2, v7, v8}, Lcom/hz/ui/UIAction;->createPlayerEquipPopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3737
    .end local v2    # "item":Lcom/hz/core/Item;
    :cond_e
    invoke-virtual {v0}, Lcom/hz/gui/GWindow;->canCatchKey()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3738
    iget-object v1, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    goto :goto_1

    .line 3756
    .restart local v2    # "item":Lcom/hz/core/Item;
    :cond_f
    if-ne v4, v12, :cond_10

    .line 3758
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hz/gui/GWindow;->getEventType()I

    move-result v7

    const/16 v8, 0x9f

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 3757
    invoke-static {p1, v2, v7, v8}, Lcom/hz/ui/UIAction;->createPlayerEquipPopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3761
    :cond_10
    if-ne v4, v9, :cond_11

    .line 3763
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hz/gui/GWindow;->getEventType()I

    move-result v7

    const-string v8, "Ph\u1ee5 Ma"

    .line 3762
    invoke-static {p1, v2, v7, v8}, Lcom/hz/ui/UIAction;->createPlayerEquipPopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3766
    :cond_11
    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 3768
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hz/gui/GWindow;->getEventType()I

    move-result v7

    const/16 v8, 0x75

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 3767
    invoke-static {p1, v2, v7, v8}, Lcom/hz/ui/UIAction;->createPlayerEquipPopMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processKeyTeamLayer(Lcom/hz/ui/UIHandler;I)V
    .locals 3
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3798
    if-nez p1, :cond_1

    .line 3824
    :cond_0
    :goto_0
    return-void

    .line 3802
    :cond_1
    const/16 v2, 0x74

    if-ne p2, v2, :cond_2

    .line 3803
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/hz/ui/UIHandler;->updateDataToKeyTeamUI(Lcom/hz/ui/UIHandler;Z)V

    .line 3804
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v2}, Lcom/hz/actor/Player;->isPlayerTeam()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3805
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 3810
    :cond_2
    const/4 v2, 0x4

    if-eq p2, v2, :cond_3

    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 3811
    :cond_3
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/hz/ui/UIHandler;->updateDataToKeyTeamUI(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 3815
    :cond_4
    if-nez p2, :cond_0

    .line 3817
    const/16 v2, 0x3c29

    invoke-virtual {p1, v2}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 3818
    .local v0, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-eqz v2, :cond_0

    .line 3821
    iget-object v2, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 3822
    .local v1, "model":Lcom/hz/actor/Model;
    invoke-static {v1, p1}, Lcom/hz/ui/KeyUIAction;->gotoTeamMenu(Lcom/hz/actor/Model;Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 1
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 3520
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3573
    :goto_0
    return-void

    .line 3524
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processObjectChoiceMenuAction(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3530
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processAreaMessageWinLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3535
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyGoodSearchLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3540
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyGoodListLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3545
    :sswitch_4
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyGoodTypeLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3550
    :sswitch_5
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyGoodMyLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3555
    :sswitch_6
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyTeamLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3560
    :sswitch_7
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyStallLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3568
    :sswitch_8
    invoke-direct {p0, p1, p2}, Lcom/hz/ui/KeyUIAction;->processKeyCreateCardLayer(Lcom/hz/ui/UIHandler;I)V

    goto :goto_0

    .line 3520
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0x28 -> :sswitch_1
        0x43 -> :sswitch_7
        0x96 -> :sswitch_2
        0x97 -> :sswitch_3
        0x98 -> :sswitch_5
        0x99 -> :sswitch_4
        0x9a -> :sswitch_6
        0x9b -> :sswitch_8
    .end sparse-switch
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 3577
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 3578
    return-void
.end method

.method public processObjectChoiceMenuAction(Lcom/hz/ui/UIHandler;I)V
    .locals 28
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 2563
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v18

    .line 2566
    .local v18, "parentUI":Lcom/hz/ui/UIHandler;
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v23

    .line 2569
    .local v23, "uiObj":Lcom/hz/ui/UIObject;
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v11

    .line 2570
    .local v11, "listWindow":Lcom/hz/gui/GWindow;
    if-nez v11, :cond_1

    .line 3404
    :cond_0
    :goto_0
    return-void

    .line 2575
    :cond_1
    iget-object v7, v11, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 2576
    .local v7, "focusGWidget":Lcom/hz/gui/GWidget;
    if-eqz v7, :cond_0

    move-object/from16 v24, v7

    .line 2579
    check-cast v24, Lcom/hz/gui/GLabel;

    invoke-virtual/range {v24 .. v24}, Lcom/hz/gui/GLabel;->getText()Ljava/lang/String;

    move-result-object v4

    .line 2580
    .local v4, "actionText":Ljava/lang/String;
    if-eqz v4, :cond_2

    const/16 v24, 0x4

    invoke-static/range {v24 .. v24}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2582
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 2587
    :cond_3
    invoke-virtual {v11}, Lcom/hz/gui/GWindow;->getObj()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Vector;

    .line 2588
    .local v14, "objList":Ljava/util/Vector;
    const/4 v15, 0x0

    .line 2589
    .local v15, "object":Ljava/lang/Object;
    if-eqz v14, :cond_7c

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v24

    if-ltz v24, :cond_7c

    .line 2590
    iget v8, v11, Lcom/hz/gui/GWindow;->focusIndex:I

    .line 2591
    .local v8, "focusIndex":I
    invoke-static {v8, v14}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 2592
    invoke-virtual {v14, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    .line 2596
    .end local v15    # "object":Ljava/lang/Object;
    :cond_4
    if-nez v15, :cond_5

    .line 2597
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    :cond_5
    move-object/from16 v24, v15

    .line 2603
    .end local v8    # "focusIndex":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getSubType()S

    move-result v22

    .line 2607
    .local v22, "subType":I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 2608
    if-eqz p2, :cond_6

    const/16 v24, 0x3

    move/from16 v0, p2

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 2609
    :cond_6
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/hz/gui/GContainer;->getW()I

    move-result v25

    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v26

    invoke-static/range {v24 .. v26}, Lcom/hz/ui/KeyUIAction;->doHotKeyMainMenu(III)V

    goto :goto_0

    .line 2610
    :cond_7
    const/16 v24, 0x2

    move/from16 v0, p2

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 2611
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto :goto_0

    .line 2616
    :cond_8
    const/16 v25, 0x7a

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 2617
    if-eqz v18, :cond_0

    .line 2621
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 2622
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2625
    :cond_9
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2626
    .local v5, "eventID":I
    packed-switch v5, :pswitch_data_0

    .line 2760
    .end local v5    # "eventID":I
    :cond_a
    :goto_2
    if-nez p2, :cond_0

    .line 2766
    const/16 v25, 0x64

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 2767
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v25

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 2770
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v25

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/hz/actor/ListPlayer;->doActorSellMyMenuAction(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;I)V

    .line 3403
    :cond_b
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2628
    .restart local v5    # "eventID":I
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getPlayerraiders()Lcom/hz/core/PlayerRaiders;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/core/PlayerRaiders;->doPlayerraidersKeyMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/PlayerRaiders;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2632
    :pswitch_1
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getPlayerraiders()Lcom/hz/core/PlayerRaiders;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/core/PlayerRaiders;->doPlayerraidersSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/core/PlayerRaiders;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2638
    .end local v5    # "eventID":I
    :cond_c
    const/16 v25, 0x63

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 2639
    if-eqz v18, :cond_0

    .line 2643
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 2644
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2647
    :cond_d
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2648
    .restart local v5    # "eventID":I
    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 2650
    :pswitch_2
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getInfoData()Lcom/hz/core/InfoData;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/core/InfoData;->doRankSelectType(Lcom/hz/ui/UIHandler;Lcom/hz/core/InfoData;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2653
    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getInfoData()Lcom/hz/core/InfoData;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/core/InfoData;->doRankSelectSubType(Lcom/hz/ui/UIHandler;Lcom/hz/core/InfoData;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2656
    :pswitch_4
    const/16 v25, 0x4eee

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doRankEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_2

    .line 2664
    .end local v5    # "eventID":I
    :cond_e
    const/16 v25, 0x6e

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 2665
    if-eqz v18, :cond_0

    .line 2669
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 2670
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2673
    :cond_f
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2674
    .restart local v5    # "eventID":I
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/hz/ui/UIAction;->doLotteryDraw(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_2

    .line 2680
    .end local v5    # "eventID":I
    :cond_10
    const/16 v25, 0x6d

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 2681
    if-eqz v18, :cond_0

    .line 2685
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 2686
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2689
    :cond_11
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2690
    .restart local v5    # "eventID":I
    packed-switch v5, :pswitch_data_2

    goto/16 :goto_2

    .line 2692
    :pswitch_5
    invoke-static/range {v18 .. v18}, Lcom/hz/actor/ListPlayer;->doMasterListAcceptInfo(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_2

    .line 2695
    :pswitch_6
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/actor/ListPlayer;->doMasterSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2698
    :pswitch_7
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/actor/ListPlayer;->doMasterSelectStatus(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2706
    .end local v5    # "eventID":I
    :cond_12
    const/16 v25, 0x65

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 2707
    if-eqz v18, :cond_0

    .line 2711
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 2712
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2715
    :cond_13
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2716
    .restart local v5    # "eventID":I
    packed-switch v5, :pswitch_data_3

    goto/16 :goto_2

    .line 2718
    :pswitch_8
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/actor/ListPlayer;->doActorSelectJob(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2721
    :pswitch_9
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/actor/ListPlayer;->doActorSelectSex(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2724
    :pswitch_a
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/hz/actor/ListPlayer;->doActorSelectSort(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2727
    :pswitch_b
    const/16 v25, 0x4fbd

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doActorBuyEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_2

    .line 2733
    .end local v5    # "eventID":I
    :cond_14
    const/16 v25, 0x69

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 2734
    if-eqz v18, :cond_0

    .line 2738
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 2739
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 2742
    :cond_15
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2743
    .restart local v5    # "eventID":I
    packed-switch v5, :pswitch_data_4

    goto/16 :goto_2

    .line 2745
    :pswitch_c
    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/hz/ui/KeyUIAction;->gotoGoodNewSelectGrade(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2748
    :pswitch_d
    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/hz/ui/KeyUIAction;->gotoGoodNewSelectLevel(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2751
    :pswitch_e
    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/hz/ui/KeyUIAction;->gotoGoodNewSelectType(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V

    goto/16 :goto_0

    .line 2754
    :pswitch_f
    invoke-static/range {v18 .. v18}, Lcom/hz/ui/KeyUIAction;->gotoGoodSelectName(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_2

    .line 2775
    .end local v5    # "eventID":I
    :cond_16
    const/16 v25, 0x66

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 2776
    if-eqz v18, :cond_0

    .line 2779
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 2780
    .restart local v5    # "eventID":I
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/hz/ui/UIAction;->doSeeAchieveEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2784
    .end local v5    # "eventID":I
    :cond_17
    const/16 v25, 0x61

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 2785
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2788
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doWarUnionEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2792
    :cond_18
    const/16 v25, 0x5e

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_19

    .line 2793
    const/16 v25, 0x5f

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_19

    .line 2794
    const/16 v25, 0x60

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 2795
    :cond_19
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2798
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doWarArmyEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2802
    :cond_1a
    const/16 v25, 0x5b

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 2803
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2806
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doCountryWarEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2810
    :cond_1b
    const/16 v25, 0x5c

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 2811
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2814
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doCountryWarArmyListEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2818
    :cond_1c
    const/16 v25, 0x5d

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 2819
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2822
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doCountryWarCommandEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2827
    :cond_1d
    const/16 v25, 0x5a

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 2828
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    .line 2831
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIAction;->doPhotoAlbumsListEvent(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto/16 :goto_3

    .line 2835
    :cond_1e
    const/16 v25, 0x59

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 2836
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2839
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/hz/ui/KeyUIAction;->doKeyCreateCardEvent(ILcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2844
    :cond_1f
    const/16 v25, 0x57

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 2845
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2848
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 2849
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    goto/16 :goto_3

    .line 2853
    :cond_20
    const/16 v25, 0x56

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    .line 2854
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 2857
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doCountryAssignMemberEvent(ILcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2861
    :cond_21
    const/16 v25, 0x55

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    .line 2862
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 2865
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doCountryMissionEvent(ILcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2869
    :cond_22
    const/16 v25, 0x50

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    .line 2870
    const/16 v25, 0x51

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    .line 2871
    const/16 v25, 0x52

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    .line 2872
    const/16 v25, 0x53

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    .line 2873
    const/16 v25, 0x54

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    .line 2874
    :cond_23
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 2877
    const/16 v17, 0x0

    .line 2878
    .local v17, "operateObj":Ljava/lang/Object;
    const/16 v25, 0x52

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    if-eqz v23, :cond_25

    .line 2879
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v17

    .line 2884
    .end local v17    # "operateObj":Ljava/lang/Object;
    :cond_24
    :goto_4
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIAction;->doCountryInfoEvent(ILcom/hz/ui/UIHandler;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2881
    .restart local v17    # "operateObj":Ljava/lang/Object;
    :cond_25
    const/16 v25, 0x53

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    if-eqz v23, :cond_24

    .line 2882
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    move-object/from16 v17, v0

    goto :goto_4

    .line 2888
    .end local v17    # "operateObj":Ljava/lang/Object;
    :cond_26
    const/16 v25, 0x44

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_27

    .line 2889
    const/16 v25, 0x45

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_27

    .line 2890
    const/16 v25, 0x46

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_29

    .line 2891
    :cond_27
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 2894
    const/4 v10, 0x0

    .line 2895
    .local v10, "libCountry":Lcom/hz/core/Country;
    if-eqz v23, :cond_28

    .line 2896
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getCountry()Lcom/hz/core/Country;

    move-result-object v10

    .line 2898
    :cond_28
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/hz/ui/UIAction;->doCountryStatusEvent(ILcom/hz/ui/UIHandler;Lcom/hz/core/Country;)V

    goto/16 :goto_3

    .line 2902
    .end local v10    # "libCountry":Lcom/hz/core/Country;
    :cond_29
    const/16 v25, 0x43

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 2903
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    if-eqz v23, :cond_0

    .line 2906
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2907
    .local v6, "eventType":I
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v6, v0, :cond_2a

    .line 2908
    const/16 v24, 0x5

    invoke-static/range {v24 .. v24}, Lcom/hz/main/GameWorld;->changeStage(I)V

    goto/16 :goto_3

    .line 2909
    :cond_2a
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v6, v0, :cond_2b

    .line 2910
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getListPlayer()Lcom/hz/actor/ListPlayer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doPlayerListDelete(Lcom/hz/ui/UIHandler;Lcom/hz/actor/ListPlayer;)V

    goto/16 :goto_3

    .line 2911
    :cond_2b
    const/16 v24, 0x386

    move/from16 v0, v24

    if-eq v6, v0, :cond_2c

    const/16 v24, 0x387

    move/from16 v0, v24

    if-ne v6, v0, :cond_b

    .line 2912
    :cond_2c
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/hz/ui/UIAction;->processPlayerChangePageAction(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2917
    .end local v6    # "eventType":I
    :cond_2d
    const/16 v25, 0x42

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e

    .line 2918
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    if-eqz v18, :cond_0

    .line 2921
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getCity()Lcom/hz/core/City;

    move-result-object v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/hz/core/City;->doCityMenuButton(ILcom/hz/core/City;Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2925
    :cond_2e
    const/16 v25, 0x41

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f

    .line 2926
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 2929
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 2933
    :cond_2f
    const/16 v25, 0x40

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_30

    .line 2934
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    if-eqz v18, :cond_0

    .line 2937
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto/16 :goto_3

    .line 2941
    :cond_30
    const/16 v25, 0x3f

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 2942
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    .line 2945
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v25

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/hz/core/ShopItem;->doGoodMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)Z

    goto/16 :goto_3

    .line 2949
    :cond_31
    const/16 v25, 0x3e

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_32

    .line 2950
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    if-eqz v18, :cond_0

    .line 2953
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v25

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/hz/core/ShopItem;->doGoodMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)Z

    goto/16 :goto_3

    .line 2957
    :cond_32
    const/16 v25, 0x3d

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_33

    .line 2958
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2961
    const/16 v25, 0x1

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/hz/ui/UIHandler;->createKeyGoodListUI(BILjava/lang/Object;Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2965
    :cond_33
    const/16 v25, 0x6b

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_35

    .line 2966
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-nez v25, :cond_34

    if-nez v18, :cond_0

    .line 2969
    :cond_34
    const/16 v25, 0x1

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/hz/ui/UIHandler;->updateDataToKeyNewGoodListUI(BILjava/lang/Object;Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2973
    :cond_35
    const/16 v25, 0x3c

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 2974
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2977
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/hz/core/ShopItem;->doGoodsPurchaseTypeListMsg(I)[Ljava/lang/Object;

    move-result-object v16

    .line 2978
    .local v16, "objectList":[Ljava/lang/Object;
    const/16 v25, 0x3c

    const/16 v24, 0x0

    aget-object v24, v16, v24

    check-cast v24, Ljava/util/Vector;

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->createKeyGoodTypeUI(ILjava/util/Vector;Z)V

    goto/16 :goto_3

    .line 2982
    .end local v16    # "objectList":[Ljava/lang/Object;
    :cond_36
    const/16 v25, 0x6a

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_38

    .line 2983
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-nez v25, :cond_37

    if-nez v18, :cond_0

    .line 2986
    :cond_37
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/hz/core/ShopItem;->doGoodsPurchaseTypeListMsg(I)[Ljava/lang/Object;

    move-result-object v16

    .line 2987
    .restart local v16    # "objectList":[Ljava/lang/Object;
    const/16 v25, 0x3c

    const/16 v24, 0x0

    aget-object v24, v16, v24

    check-cast v24, Ljava/util/Vector;

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->updateDataToGoodNewTypeUI(Lcom/hz/ui/UIHandler;ILjava/util/Vector;)V

    goto/16 :goto_3

    .line 2991
    .end local v16    # "objectList":[Ljava/lang/Object;
    :cond_38
    const/16 v25, 0x3b

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_39

    .line 2992
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    if-eqz v23, :cond_0

    .line 2995
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getAchieve()Lcom/hz/core/Achieve;

    move-result-object v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/hz/core/Achieve;->doEventAchieveList(ILcom/hz/core/Achieve;Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 2999
    :cond_39
    const/16 v25, 0x3a

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_3a

    .line 3000
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getEscort()Lcom/hz/core/Escort;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 3003
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getEscort()Lcom/hz/core/Escort;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/hz/core/Escort;->doEventEscortRobList(ILcom/hz/core/Escort;)V

    goto/16 :goto_3

    .line 3007
    :cond_3a
    const/16 v25, 0x39

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_3b

    .line 3008
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getEscort()Lcom/hz/core/Escort;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 3011
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getEscort()Lcom/hz/core/Escort;

    move-result-object v25

    const/16 v26, -0x1

    invoke-static/range {v24 .. v26}, Lcom/hz/core/Escort;->doEventEscort(ILcom/hz/core/Escort;I)V

    goto/16 :goto_3

    .line 3015
    :cond_3b
    const/16 v25, 0x37

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_3c

    .line 3016
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3019
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3020
    .local v13, "menuEvent":I
    invoke-static {v13}, Lcom/hz/ui/KeyUIAction;->doGoodMainMenu(I)Z

    goto/16 :goto_0

    .line 3026
    .end local v13    # "menuEvent":I
    :cond_3c
    const/16 v25, 0x34

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_3d

    const/16 v25, 0x58

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_3f

    .line 3027
    :cond_3d
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    .line 3031
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getPhoto()Lcom/hz/core/Photo;

    move-result-object v19

    .line 3032
    .local v19, "photo":Lcom/hz/core/Photo;
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3033
    .restart local v5    # "eventID":I
    const/16 v24, 0x2b15

    move/from16 v0, v24

    if-eq v5, v0, :cond_3e

    .line 3034
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getPhoto()Lcom/hz/core/Photo;

    move-result-object v19

    .line 3036
    :cond_3e
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v5, v1, v2}, Lcom/hz/core/Photo;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/core/Photo;Lcom/hz/actor/Model;)Z

    goto/16 :goto_3

    .line 3041
    .end local v5    # "eventID":I
    .end local v19    # "photo":Lcom/hz/core/Photo;
    :cond_3f
    const/16 v25, 0x33

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_40

    const/16 v25, 0x78

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_41

    .line 3042
    :cond_40
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    if-eqz v18, :cond_0

    .line 3045
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v25

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIAction;->doMerPetMenuButton(Ljava/lang/Object;Lcom/hz/ui/UIHandler;I)Z

    goto/16 :goto_3

    .line 3049
    :cond_41
    const/16 v25, 0x79

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_42

    .line 3050
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3053
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processPetCompostieDataLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3057
    :cond_42
    const/16 v25, 0x35

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_43

    .line 3058
    if-eqz v18, :cond_0

    if-eqz v23, :cond_0

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3061
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 3062
    .local v20, "setEvent":I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/hz/ui/UIObject;->intValue1:I

    move/from16 v21, v0

    .line 3063
    .local v21, "setting":I
    if-lez v20, :cond_b

    .line 3064
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->setSettingIndex(II)I

    move-result v21

    .line 3065
    invoke-virtual/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v24

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lcom/hz/ui/UIObject;->intValue1:I

    .line 3066
    const/16 v24, 0x77

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto/16 :goto_3

    .line 3071
    .end local v20    # "setEvent":I
    .end local v21    # "setting":I
    :cond_43
    const/16 v25, 0x36

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_44

    .line 3072
    if-eqz v18, :cond_0

    if-eqz v23, :cond_0

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3075
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getMail()Lcom/hz/core/Mail;

    move-result-object v12

    .line 3076
    .local v12, "mail":Lcom/hz/core/Mail;
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getItem()Lcom/hz/core/Item;

    move-result-object v9

    .line 3077
    .local v9, "item":Lcom/hz/core/Item;
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3078
    .restart local v6    # "eventType":I
    move-object/from16 v0, v18

    invoke-static {v0, v12, v9, v6}, Lcom/hz/core/Mail;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;Lcom/hz/core/Item;I)Z

    goto/16 :goto_3

    .line 3082
    .end local v6    # "eventType":I
    .end local v9    # "item":Lcom/hz/core/Item;
    .end local v12    # "mail":Lcom/hz/core/Mail;
    :cond_44
    const/16 v25, 0x6f

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_45

    .line 3083
    if-eqz v18, :cond_0

    if-eqz v23, :cond_0

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3086
    invoke-virtual/range {v23 .. v23}, Lcom/hz/ui/UIObject;->getMail()Lcom/hz/core/Mail;

    move-result-object v12

    .line 3087
    .restart local v12    # "mail":Lcom/hz/core/Mail;
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3088
    .restart local v6    # "eventType":I
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1, v6}, Lcom/hz/core/Mail;->doMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Mail;Lcom/hz/core/Item;I)Z

    goto/16 :goto_3

    .line 3092
    .end local v6    # "eventType":I
    .end local v12    # "mail":Lcom/hz/core/Mail;
    :cond_45
    const/16 v25, 0x73

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_46

    .line 3093
    if-eqz v18, :cond_0

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3096
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3097
    .restart local v6    # "eventType":I
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/hz/ui/UIAction;->doMailListLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3101
    .end local v6    # "eventType":I
    :cond_46
    const/16 v25, 0x38

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_47

    .line 3102
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Byte;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3105
    const/16 v25, 0x3a9d

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/hz/gui/GWidget;->setObj(Ljava/lang/Object;)V

    .line 3106
    invoke-static/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->updateDataToKeyGoodSearchUI(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_3

    .line 3111
    :cond_47
    const/16 v25, 0x62

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_48

    .line 3112
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3115
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doTeamBossEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3117
    :cond_48
    const/16 v25, 0x77

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_49

    .line 3118
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3121
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doCountryBossEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3125
    :cond_49
    const/16 v25, 0x74

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_4a

    const/16 v25, 0x75

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_4b

    .line 3126
    :cond_4a
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3129
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doSkyArenaEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3134
    :cond_4b
    const/16 v25, 0x67

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_4c

    .line 3135
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3138
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doArenaEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3141
    :cond_4c
    const/16 v25, 0x71

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_4d

    const/16 v25, 0x72

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_4e

    .line 3142
    :cond_4d
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3145
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->doArenaEvent(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3149
    :cond_4e
    const/16 v25, 0x68

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_4f

    .line 3150
    if-eqz v18, :cond_0

    .line 3153
    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v5

    .line 3154
    .restart local v5    # "eventID":I
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/hz/core/Photo;->doChangePhotoAlbumList(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3159
    .end local v5    # "eventID":I
    :cond_4f
    const/16 v25, 0x70

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_50

    .line 3160
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3164
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processPayDescribeLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3168
    :cond_50
    const/16 v25, 0x76

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_51

    .line 3169
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    if-eqz v18, :cond_0

    .line 3173
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processOpenVipLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3177
    :cond_51
    const/16 v25, 0x7b

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_53

    .line 3178
    if-eqz v18, :cond_0

    .line 3182
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_52

    .line 3183
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3186
    :cond_52
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processFurnaceLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3190
    :cond_53
    const/16 v25, 0x7c

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_55

    .line 3191
    if-eqz v18, :cond_0

    .line 3195
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_54

    .line 3196
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3199
    :cond_54
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processFurnaceItemListLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3203
    :cond_55
    const/16 v25, 0x7d

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_58

    .line 3204
    if-nez v18, :cond_56

    .line 3205
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3209
    :cond_56
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_57

    .line 3210
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3213
    :cond_57
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processChatUpLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3216
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3220
    :cond_58
    const/16 v25, 0x7e

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_5b

    .line 3221
    if-nez v18, :cond_59

    .line 3222
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3226
    :cond_59
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_5a

    .line 3227
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3230
    :cond_5a
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processOnLineReWardLayer(Lcom/hz/ui/UIHandler;I)V

    goto/16 :goto_3

    .line 3234
    :cond_5b
    const/16 v25, 0x7f

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_5e

    .line 3235
    if-nez v18, :cond_5c

    .line 3236
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3240
    :cond_5c
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_5d

    .line 3241
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3244
    :cond_5d
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processPetGuideLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3245
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3249
    :cond_5e
    const/16 v25, 0x80

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_61

    .line 3250
    if-nez v18, :cond_5f

    .line 3251
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3255
    :cond_5f
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_60

    .line 3256
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3259
    :cond_60
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processMountGuideLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3260
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3264
    :cond_61
    const/16 v25, 0x81

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_64

    .line 3265
    if-nez v18, :cond_62

    .line 3266
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3270
    :cond_62
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_63

    .line 3271
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3274
    :cond_63
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processPetEvolveLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3275
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3279
    :cond_64
    const/16 v25, 0x82

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_67

    .line 3280
    if-nez v18, :cond_65

    .line 3281
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3285
    :cond_65
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_66

    .line 3286
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3289
    :cond_66
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processAutoSellLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3290
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3294
    :cond_67
    const/16 v25, 0x83

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_6a

    .line 3295
    if-nez v18, :cond_68

    .line 3296
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3300
    :cond_68
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_69

    .line 3301
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3304
    :cond_69
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processChangeActivityLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3305
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3309
    :cond_6a
    const/16 v25, 0x84

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_6d

    .line 3310
    if-nez v18, :cond_6b

    .line 3311
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3315
    :cond_6b
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_6c

    .line 3316
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3319
    :cond_6c
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processEnchantLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3320
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3324
    :cond_6d
    const/16 v25, 0x85

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_70

    .line 3325
    if-nez v18, :cond_6e

    .line 3326
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3330
    :cond_6e
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_6f

    .line 3331
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3334
    :cond_6f
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processNewArenaLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3335
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3339
    :cond_70
    const/16 v25, 0x86

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_73

    .line 3340
    if-nez v18, :cond_71

    .line 3341
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3345
    :cond_71
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_72

    .line 3346
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3349
    :cond_72
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processNewArenaRankLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3350
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3354
    :cond_73
    const/16 v25, 0x87

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_76

    .line 3355
    if-nez v18, :cond_74

    .line 3356
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3360
    :cond_74
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_75

    .line 3361
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3364
    :cond_75
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processNewArenaRewardLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3365
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3369
    :cond_76
    const/16 v25, 0x88

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_79

    .line 3371
    if-nez v18, :cond_77

    .line 3372
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3376
    :cond_77
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_78

    .line 3377
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3380
    :cond_78
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processIdentifyLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3381
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .line 3386
    :cond_79
    const/16 v25, 0x89

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 3388
    if-nez v18, :cond_7a

    .line 3389
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3393
    :cond_7a
    const/16 v25, 0x2

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_7b

    .line 3394
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_0

    .line 3397
    :cond_7b
    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/hz/ui/UIAction;->processCostRewardLayer(Lcom/hz/ui/UIHandler;I)V

    .line 3398
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    goto/16 :goto_3

    .end local v22    # "subType":I
    .restart local v15    # "object":Ljava/lang/Object;
    :cond_7c
    move-object/from16 v24, v15

    goto/16 :goto_1

    .line 2626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2648
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2690
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2716
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2743
    :pswitch_data_4
    .packed-switch 0x3a9b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
