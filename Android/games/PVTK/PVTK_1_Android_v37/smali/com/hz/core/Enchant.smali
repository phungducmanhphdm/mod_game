.class public Lcom/hz/core/Enchant;
.super Ljava/lang/Object;
.source "Enchant.java"


# static fields
.field public static final ENCHANT_OPEN_LEVEL:B = 0x14t

.field public static final ENCHANT_TYPE_SEE:B = 0x1t

.field public static final ENCHANT_TYPE_SURE:B = 0x2t

.field public static final EVENT_TYPE_COMMON_SELL:B = 0x1t

.field public static final EVENT_TYPE_ENCHANT_SELL:B = 0x2t

.field public static isOpen:Z

.field public static final shoptype:[Ljava/lang/String;


# instance fields
.field public enchantplayerid:I

.field public enchantshopitem:Lcom/hz/core/Item;

.field public item:Lcom/hz/core/Item;

.field public vItemList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    sput-boolean v2, Lcom/hz/core/Enchant;->isOpen:Z

    .line 656
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 657
    const-string v1, "S\u1ea1p Th\u01b0\u1eddng"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 658
    const-string v2, "S\u1ea1p Ph\u1ee5 Ma"

    aput-object v2, v0, v1

    .line 656
    sput-object v0, Lcom/hz/core/Enchant;->shoptype:[Ljava/lang/String;

    .line 659
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    .line 34
    iput-object v0, p0, Lcom/hz/core/Enchant;->vItemList:Ljava/util/Vector;

    .line 40
    iput-object v0, p0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    .line 31
    return-void
.end method

.method public static doChangeShopType(Lcom/hz/ui/UIHandler;I)V
    .locals 12
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "eventType"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000

    .line 727
    if-nez p0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hz/gui/GContainer;->getObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/actor/Player;

    .line 736
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 740
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 741
    .local v3, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 746
    invoke-virtual {v3}, Lcom/hz/actor/Player;->isShopMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 748
    if-ne v11, p1, :cond_2

    invoke-virtual {p0, v9}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 749
    :cond_2
    const/4 v6, 0x2

    if-ne v6, p1, :cond_3

    invoke-virtual {p0, v9}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 754
    :cond_3
    const-string v6, "Trong s\u1ea1p kh\u00f4ng th\u1ec3 \u0111\u1ed5i lo\u1ea1i s\u1ea1p! C\u1ea7n k\u1ebft th\u00fac s\u1ea1p hi\u1ec7n t\u1ea1i."

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 760
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 763
    :pswitch_0
    invoke-virtual {p0, v9}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 783
    :cond_5
    sget-object v6, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 786
    const/16 v6, 0xf

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 788
    const-string v7, "Sau khi \u0111\u1ed5i lo\u1ea1i s\u1ea1p, v\u1eadt ph\u1ea9m treo b\u00e1n b\u1ecb g\u1ee1 xu\u1ed1ng, ti\u1ebfp t\u1ee5c?"

    .line 789
    const/4 v8, 0x6

    .line 786
    invoke-static {v6, v7, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 790
    .local v0, "askResult":I
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 794
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v6, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_7

    .line 809
    const/4 v6, 0x0

    sput-object v6, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    .line 812
    .end local v0    # "askResult":I
    .end local v2    # "i":I
    :cond_6
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 815
    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 816
    invoke-virtual {p0, v10, v9}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    .line 843
    :goto_2
    invoke-static {p0, v4, v10}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 771
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .line 796
    .restart local v0    # "askResult":I
    .restart local v2    # "i":I
    :cond_7
    sget-object v6, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/Item;

    .line 797
    .local v5, "tempitem":Lcom/hz/core/Item;
    if-eqz v5, :cond_8

    .line 800
    if-eqz v3, :cond_8

    iget-object v6, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-eqz v6, :cond_8

    .line 801
    iget-object v6, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    iget-short v7, v5, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v6, v7}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v1

    .line 802
    .local v1, "bagItem":Lcom/hz/core/Item;
    if-eqz v1, :cond_8

    .line 803
    invoke-virtual {v1, v10}, Lcom/hz/core/Item;->setSelling(Z)V

    .line 794
    .end local v1    # "bagItem":Lcom/hz/core/Item;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 824
    .end local v0    # "askResult":I
    .end local v2    # "i":I
    .end local v5    # "tempitem":Lcom/hz/core/Item;
    :pswitch_3
    invoke-virtual {p0, v9}, Lcom/hz/ui/UIHandler;->isStatusFlag(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 825
    invoke-virtual {p0, v11, v9}, Lcom/hz/ui/UIHandler;->setStatusFlag(ZI)V

    goto :goto_2

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 812
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static doChangeShopTypeMenu(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V
    .locals 12
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "actionGWidget"    # Lcom/hz/gui/GWidget;

    .prologue
    const/4 v3, 0x1

    .line 667
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 668
    .local v10, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 669
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 676
    .local v9, "keyList":Ljava/util/Vector;
    sget-object v0, Lcom/hz/core/Enchant;->shoptype:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v10, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 677
    sget-object v0, Lcom/hz/core/Enchant;->shoptype:[Ljava/lang/String;

    aget-object v0, v0, v3

    const/4 v2, 0x2

    invoke-static {v10, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 681
    sget-object v0, Lcom/hz/core/Enchant;->shoptype:[Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v8

    .line 683
    .local v8, "getWidth":I
    const/4 v6, -0x1

    .line 693
    .local v6, "maxWinHeight":I
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v8, 0x28

    .line 694
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x38

    move-object v5, p0

    .line 693
    invoke-static/range {v0 .. v6}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;I)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 698
    .local v11, "ui":Lcom/hz/ui/UIHandler;
    if-eqz v11, :cond_0

    .line 699
    invoke-virtual {v11}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v7

    .line 700
    .local v7, "frameContainer":Lcom/hz/gui/GContainer;
    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v0

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v2

    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v7, v0, v2}, Lcom/hz/gui/GContainer;->setPos(II)V

    .line 718
    .end local v7    # "frameContainer":Lcom/hz/gui/GContainer;
    :cond_0
    return-void
.end method

.method public static doEnchantGetLists(Lcom/hz/core/Item;ZLcom/hz/ui/UIHandler;)V
    .locals 25
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "isshop"    # Z
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 244
    if-nez p0, :cond_1

    .line 376
    .end local p0    # "item":Lcom/hz/core/Item;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local p0    # "item":Lcom/hz/core/Item;
    :cond_1
    sget-object v16, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 250
    .local v16, "player":Lcom/hz/actor/Player;
    if-eqz v16, :cond_0

    .line 255
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 256
    .local v8, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v8, :cond_0

    .line 262
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    new-instance v15, Lcom/hz/net/Message;

    const/16 v2, 0x2d01

    invoke-direct {v15, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 268
    .local v15, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v15, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 270
    invoke-static {v15}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v15

    .line 276
    if-eqz v15, :cond_0

    .line 281
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    .line 286
    .local v17, "rs":B
    if-gez v17, :cond_2

    .line 288
    invoke-virtual {v15}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 293
    :cond_2
    new-instance v9, Lcom/hz/core/Enchant;

    invoke-direct {v9}, Lcom/hz/core/Enchant;-><init>()V

    .line 294
    .local v9, "enchant":Lcom/hz/core/Enchant;
    move-object/from16 v0, p0

    iput-object v0, v9, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    .line 295
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v9, Lcom/hz/core/Enchant;->vItemList:Ljava/util/Vector;

    .line 297
    invoke-virtual {v15}, Lcom/hz/net/Message;->getByte()B

    move-result v18

    .line 302
    .local v18, "size":B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v18

    if-lt v10, v0, :cond_4

    .line 313
    iget-object v2, v9, Lcom/hz/core/Enchant;->vItemList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 315
    if-eqz p1, :cond_9

    .line 318
    invoke-virtual/range {p2 .. p2}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/hz/ui/UIObject;

    .line 319
    .local v24, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v24, :cond_0

    .line 323
    invoke-virtual/range {v24 .. v24}, Lcom/hz/ui/UIObject;->getModel()Lcom/hz/actor/Model;

    move-result-object v14

    .line 324
    .local v14, "model":Lcom/hz/actor/Model;
    if-eqz v14, :cond_0

    .line 329
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 330
    .local v13, "menuList":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 332
    .local v4, "eventList":Ljava/util/Vector;
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v13, v2, v4, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 335
    if-eqz p0, :cond_3

    .line 337
    new-instance v21, Lcom/hz/core/Enchant;

    invoke-direct/range {v21 .. v21}, Lcom/hz/core/Enchant;-><init>()V

    .line 338
    .local v21, "tempenchant":Lcom/hz/core/Enchant;
    const-string v2, "Th\u00f4ng tin VP"

    invoke-virtual {v13, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    .line 341
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 344
    .end local v21    # "tempenchant":Lcom/hz/core/Enchant;
    :cond_3
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_2
    iget-object v2, v9, Lcom/hz/core/Enchant;->vItemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v12, v2, :cond_6

    .line 367
    const-string v2, "Gi\u00e1 b\u00e1n: %U\nNh\u1ea5p \u0111\u00fap \u0111\u1ec3 mua! Thao t\u00e1c n\u00e0y kh\u00f4ng t\u1ed1n \u0111i\u1ec3m Ph\u1ee5 Ma"

    .line 368
    check-cast p0, Lcom/hz/core/ShopItem;

    .end local p0    # "item":Lcom/hz/core/Item;
    invoke-virtual/range {p0 .. p0}, Lcom/hz/core/ShopItem;->getMoneyString()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v13}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v5

    const/16 v6, 0x3f

    move-object/from16 v7, p2

    .line 367
    invoke-static/range {v2 .. v7}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 304
    .end local v4    # "eventList":Ljava/util/Vector;
    .end local v12    # "k":I
    .end local v13    # "menuList":Ljava/util/Vector;
    .end local v14    # "model":Lcom/hz/actor/Model;
    .end local v24    # "uiObj":Lcom/hz/ui/UIObject;
    .restart local p0    # "item":Lcom/hz/core/Item;
    :cond_4
    invoke-virtual {v15}, Lcom/hz/net/Message;->getShort()S

    move-result v19

    .line 305
    .local v19, "slotpos":S
    invoke-virtual {v15}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 307
    .local v11, "itemid":I
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v22

    .line 308
    .local v22, "tempitem2":Lcom/hz/core/Item;
    if-eqz v22, :cond_5

    .line 309
    iget-object v2, v9, Lcom/hz/core/Enchant;->vItemList:Ljava/util/Vector;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 302
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 346
    .end local v11    # "itemid":I
    .end local v19    # "slotpos":S
    .end local v22    # "tempitem2":Lcom/hz/core/Item;
    .restart local v4    # "eventList":Ljava/util/Vector;
    .restart local v12    # "k":I
    .restart local v13    # "menuList":Ljava/util/Vector;
    .restart local v14    # "model":Lcom/hz/actor/Model;
    .restart local v24    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_6
    iget-object v2, v9, Lcom/hz/core/Enchant;->vItemList:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/hz/core/Item;

    .line 347
    .local v23, "tempitem3":Lcom/hz/core/Item;
    if-nez v23, :cond_7

    .line 344
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 352
    :cond_7
    new-instance v21, Lcom/hz/core/Enchant;

    invoke-direct/range {v21 .. v21}, Lcom/hz/core/Enchant;-><init>()V

    .line 353
    .restart local v21    # "tempenchant":Lcom/hz/core/Enchant;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    .line 354
    invoke-virtual {v14}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Lcom/hz/core/Enchant;->enchantplayerid:I

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    .line 358
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/hz/core/Item;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 359
    .local v20, "strname":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/hz/core/Item;->isUpgradeItem:Z

    if-eqz v2, :cond_8

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(Ti\u1ebfn b\u1eadc)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 363
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 364
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 373
    .end local v4    # "eventList":Ljava/util/Vector;
    .end local v12    # "k":I
    .end local v13    # "menuList":Ljava/util/Vector;
    .end local v14    # "model":Lcom/hz/actor/Model;
    .end local v20    # "strname":Ljava/lang/String;
    .end local v21    # "tempenchant":Lcom/hz/core/Enchant;
    .end local v23    # "tempitem3":Lcom/hz/core/Item;
    .end local v24    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_9
    invoke-static {v9}, Lcom/hz/ui/UIHandler;->createEnchantUI(Lcom/hz/core/Enchant;)V

    goto/16 :goto_0
.end method

.method public static doEnchantItemUse(Lcom/hz/core/Item;Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V
    .locals 13
    .param p0, "sourceitem"    # Lcom/hz/core/Item;
    .param p1, "descItem"    # Lcom/hz/core/Item;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 383
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-short v8, p1, Lcom/hz/core/Item;->enchantPower1:S

    if-eqz v8, :cond_2

    iget-short v8, p1, Lcom/hz/core/Item;->enchantPowerValue1:S

    if-nez v8, :cond_3

    .line 389
    :cond_2
    iget-short v8, p1, Lcom/hz/core/Item;->enchantPower2:S

    if-eqz v8, :cond_5

    iget-short v8, p1, Lcom/hz/core/Item;->enchantPowerValue2:S

    if-eqz v8, :cond_5

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/hz/core/Item;->clone()Lcom/hz/core/Item;

    move-result-object v6

    .line 392
    .local v6, "tempitem":Lcom/hz/core/Item;
    iget-short v8, p0, Lcom/hz/core/Item;->power2:S

    iput-short v8, v6, Lcom/hz/core/Item;->enchantPower1:S

    .line 393
    iget-short v8, p0, Lcom/hz/core/Item;->powerValue2:S

    iput-short v8, v6, Lcom/hz/core/Item;->enchantPowerValue1:S

    .line 394
    iget-short v8, p0, Lcom/hz/core/Item;->power3:S

    iput-short v8, v6, Lcom/hz/core/Item;->enchantPower2:S

    .line 395
    iget-short v8, p0, Lcom/hz/core/Item;->powerValue3:S

    iput-short v8, v6, Lcom/hz/core/Item;->enchantPowerValue2:S

    .line 399
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 401
    const-string v9, "V\u1eadt ph\u1ea9m n\u00e0y \u0111\u00e3 c\u00f3 %U\n%U m\u1edbi\n\u0110\u1ed5i th\u00e0nh thu\u1ed9c t\u00ednh ph\u1ee5 ma m\u1edbi?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/hz/core/Item;->getEnchantInfo()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Lcom/hz/core/Item;->getEnchantInfo()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 402
    const/4 v10, 0x6

    .line 399
    invoke-static {v8, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 403
    .local v0, "askResult":I
    const/16 v8, 0xa

    if-ne v0, v8, :cond_0

    .line 417
    .end local v0    # "askResult":I
    .end local v6    # "tempitem":Lcom/hz/core/Item;
    :cond_4
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->close()V

    .line 419
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 420
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 425
    iget-object v2, v4, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 426
    .local v2, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v2, :cond_0

    .line 431
    new-instance v3, Lcom/hz/net/Message;

    const/16 v8, 0x2d00

    invoke-direct {v3, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 432
    .local v3, "msg":Lcom/hz/net/Message;
    iget-short v8, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 433
    iget v8, p1, Lcom/hz/core/Item;->id:I

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putInt(I)V

    .line 434
    iget-short v8, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 435
    iget v8, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v3, v8}, Lcom/hz/net/Message;->putInt(I)V

    .line 437
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 442
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 443
    if-eqz v3, :cond_0

    .line 448
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 453
    .local v5, "rs":B
    if-gez v5, :cond_6

    .line 455
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 410
    .end local v2    # "bag":Lcom/hz/core/PlayerBag;
    .end local v3    # "msg":Lcom/hz/net/Message;
    .end local v4    # "player":Lcom/hz/actor/Player;
    .end local v5    # "rs":B
    :cond_5
    const-string v8, "Ph\u1ee5 Ma"

    .line 411
    const-string v9, "X\u00e1c nh\u1eadn ph\u1ee5 ma trang b\u1ecb?"

    .line 412
    const/4 v10, 0x3

    .line 410
    invoke-static {v8, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v1

    .line 413
    .local v1, "askResult0":I
    const/16 v8, 0x14

    if-ne v1, v8, :cond_4

    goto/16 :goto_0

    .line 460
    .end local v1    # "askResult0":I
    .restart local v2    # "bag":Lcom/hz/core/PlayerBag;
    .restart local v3    # "msg":Lcom/hz/net/Message;
    .restart local v4    # "player":Lcom/hz/actor/Player;
    .restart local v5    # "rs":B
    :cond_6
    iget-short v8, p0, Lcom/hz/core/Item;->slotPos:S

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 464
    :try_start_0
    invoke-static {p1, v3}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_1
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/hz/actor/Player;->setEnchantValue(I)V

    .line 474
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v7

    .line 475
    .local v7, "xmlui":Lcom/hz/ui/UIHandler;
    if-eqz v7, :cond_7

    .line 477
    const/16 v8, 0x96

    invoke-virtual {v7, v8}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 480
    :cond_7
    const-string v8, "Ph\u1ee5 ma trang b\u1ecb th\u00e0nh c\u00f4ng!"

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 465
    .end local v7    # "xmlui":Lcom/hz/ui/UIHandler;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static doEnchantShopBuy(Lcom/hz/core/Enchant;Lcom/hz/ui/UIHandler;)V
    .locals 23
    .param p0, "enchant"    # Lcom/hz/core/Enchant;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 488
    if-nez p0, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v10

    .line 505
    .local v10, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v10, :cond_0

    .line 514
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    check-cast v17, Lcom/hz/core/ShopItem;

    invoke-virtual/range {v17 .. v17}, Lcom/hz/core/ShopItem;->getMoneyString()Ljava/lang/String;

    move-result-object v13

    .line 519
    .local v13, "strmoneydesc":Ljava/lang/String;
    const-string v14, ""

    .line 520
    .local v14, "strneed":Ljava/lang/String;
    invoke-static {v13}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 522
    const-string v17, "T\u1ed1n %U."

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 525
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->enchantPower1:S

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->enchantPowerValue1:S

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 526
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->enchantPower2:S

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->enchantPowerValue2:S

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 528
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/hz/core/Item;->clone()Lcom/hz/core/Item;

    move-result-object v15

    .line 529
    .local v15, "tempitem":Lcom/hz/core/Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->power2:S

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v15, Lcom/hz/core/Item;->enchantPower1:S

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue2:S

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v15, Lcom/hz/core/Item;->enchantPowerValue1:S

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->power3:S

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v15, Lcom/hz/core/Item;->enchantPower2:S

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->powerValue3:S

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v15, Lcom/hz/core/Item;->enchantPowerValue2:S

    .line 536
    const/16 v17, 0xf

    invoke-static/range {v17 .. v17}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v17

    .line 537
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 539
    const-string v19, "V\u1eadt ph\u1ea9m n\u00e0y \u0111\u00e3 c\u00f3 %U\n%U m\u1edbi\n\u0110\u1ed5i th\u00e0nh thu\u1ed9c t\u00ednh ph\u1ee5 ma m\u1edbi?"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/hz/core/Item;->getEnchantInfo()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v15}, Lcom/hz/core/Item;->getEnchantInfo()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 537
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 540
    const/16 v19, 0x6

    .line 536
    invoke-static/range {v17 .. v19}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v2

    .line 541
    .local v2, "askResult":I
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_0

    .line 556
    .end local v2    # "askResult":I
    .end local v15    # "tempitem":Lcom/hz/core/Item;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/hz/core/ShopItem;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    check-cast v17, Lcom/hz/core/ShopItem;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/hz/core/ShopItem;->money1:I

    .line 561
    .local v6, "localmoney1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    check-cast v17, Lcom/hz/core/ShopItem;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/hz/core/ShopItem;->money2:I

    .line 562
    .local v7, "localmoney2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    check-cast v17, Lcom/hz/core/ShopItem;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/hz/core/ShopItem;->money3:I

    .line 563
    .local v8, "localmoney3":I
    invoke-static {v6, v7, v8}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 568
    .end local v6    # "localmoney1":I
    .end local v7    # "localmoney2":I
    .end local v8    # "localmoney3":I
    :cond_6
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 569
    .local v11, "player":Lcom/hz/actor/Player;
    if-eqz v11, :cond_0

    .line 574
    iget-object v4, v11, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 575
    .local v4, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v4, :cond_0

    .line 580
    new-instance v9, Lcom/hz/net/Message;

    const/16 v17, 0x2d04

    move/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 592
    .local v9, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/core/Enchant;->enchantplayerid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/hz/core/Item;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->slotPos:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/hz/core/Item;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 598
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 603
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 604
    if-eqz v9, :cond_0

    .line 609
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 613
    .local v12, "rs":B
    if-gez v12, :cond_8

    .line 615
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 548
    .end local v4    # "bag":Lcom/hz/core/PlayerBag;
    .end local v9    # "msg":Lcom/hz/net/Message;
    .end local v11    # "player":Lcom/hz/actor/Player;
    .end local v12    # "rs":B
    :cond_7
    const-string v17, "Ph\u1ee5 Ma"

    .line 549
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "X\u00e1c nh\u1eadn ph\u1ee5 ma trang b\u1ecb?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 550
    const/16 v19, 0x3

    .line 548
    invoke-static/range {v17 .. v19}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v3

    .line 551
    .local v3, "askResult0":I
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ne v3, v0, :cond_5

    goto/16 :goto_0

    .line 619
    .end local v3    # "askResult0":I
    .restart local v4    # "bag":Lcom/hz/core/PlayerBag;
    .restart local v9    # "msg":Lcom/hz/net/Message;
    .restart local v11    # "player":Lcom/hz/actor/Player;
    .restart local v12    # "rs":B
    :cond_8
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/hz/actor/Player;->money1:I

    .line 620
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/hz/actor/Player;->money3:I

    .line 624
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/core/Item;Lcom/hz/net/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_1
    invoke-virtual {v10}, Lcom/hz/ui/UIHandler;->getObj()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/hz/ui/UIObject;

    .line 639
    .local v16, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v16, :cond_a

    .line 640
    invoke-virtual/range {v16 .. v16}, Lcom/hz/ui/UIObject;->getPageObjList()Ljava/util/Vector;

    move-result-object v5

    .line 641
    .local v5, "itemList":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->quantity:S

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-short v0, v1, Lcom/hz/core/Item;->quantity:S

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/hz/core/Item;->quantity:S

    move/from16 v17, v0

    if-gtz v17, :cond_9

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/Enchant;->enchantshopitem:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 646
    :cond_9
    const/16 v17, 0x6c

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 649
    .end local v5    # "itemList":Ljava/util/Vector;
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Ph\u1ee5 ma trang b\u1ecb th\u00e0nh c\u00f4ng!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 625
    .end local v16    # "uiObj":Lcom/hz/ui/UIObject;
    :catch_0
    move-exception v17

    goto :goto_1
.end method

.method public static doItemEnChant(Lcom/hz/ui/UIHandler;B)Z
    .locals 17
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "type"    # B

    .prologue
    .line 122
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 125
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 236
    :goto_0
    return v2

    .line 130
    :cond_0
    sget-object v9, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    .line 131
    .local v9, "itemList":Ljava/util/Vector;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    :cond_1
    const-string v2, "H\u00e3y \u0111\u1eb7t trang b\u1ecb c\u1ea7n h\u1ea5p th\u1ee5!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 133
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    :cond_2
    sget-object v12, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 137
    .local v12, "player":Lcom/hz/actor/Player;
    if-nez v12, :cond_3

    .line 139
    const/4 v2, 0x0

    goto :goto_0

    .line 142
    :cond_3
    iget-object v7, v12, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 143
    .local v7, "bag":Lcom/hz/core/PlayerBag;
    if-nez v7, :cond_4

    .line 145
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :cond_4
    const-string v1, ""

    .line 150
    .local v1, "info":Ljava/lang/String;
    new-instance v11, Lcom/hz/net/Message;

    const/16 v2, 0x2cff

    invoke-direct {v11, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 151
    .local v11, "msg":Lcom/hz/net/Message;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 152
    sget-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v11, v2}, Lcom/hz/net/Message;->putByte(B)V

    .line 153
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v8, v2, :cond_5

    .line 169
    invoke-static {v11}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 171
    const/4 v2, 0x0

    goto :goto_0

    .line 155
    :cond_5
    sget-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/hz/core/Item;

    .line 156
    .local v15, "tempitem":Lcom/hz/core/Item;
    if-nez v15, :cond_7

    .line 153
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 160
    :cond_7
    iget-short v2, v15, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v11, v2}, Lcom/hz/net/Message;->putShort(S)V

    .line 161
    iget v2, v15, Lcom/hz/core/Item;->id:I

    invoke-virtual {v11, v2}, Lcom/hz/net/Message;->putInt(I)V

    .line 163
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_6

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 174
    .end local v15    # "tempitem":Lcom/hz/core/Item;
    :cond_8
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v11

    .line 175
    if-nez v11, :cond_9

    .line 177
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 180
    :cond_9
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 185
    .local v13, "rs":I
    if-gez v13, :cond_a

    .line 187
    invoke-virtual {v11}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 189
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    :cond_a
    invoke-virtual {v11}, Lcom/hz/net/Message;->getInt()I

    move-result v14

    .line 197
    .local v14, "tempenchant":I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_b

    .line 199
    const-string v2, "/cFF0000Ch\u00fa \u00fd h\u1ea5p th\u1ee5 xong trang b\u1ecb kh\u00f4ng th\u1ec3 kh\u00f4i ph\u1ee5c!/p\nNh\u1eadn: \u0110i\u1ec3m Ph\u1ee5 Ma/cc45712%U/p\nDanh s\u00e1ch trang b\u1ecb h\u1ea5p th\u1ee5: %U"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 202
    .local v10, "menuList":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 203
    .local v3, "eventList":Ljava/util/Vector;
    const-string v2, "H\u1ea5p th\u1ee5 h\u1ebft"

    const/16 v4, 0x2bbe

    invoke-static {v10, v2, v3, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 204
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v10, v2, v3, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 206
    invoke-static {v10}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v4

    const/16 v5, 0x3d

    move-object/from16 v6, p0

    .line 206
    invoke-static/range {v1 .. v6}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 210
    .end local v3    # "eventList":Ljava/util/Vector;
    .end local v10    # "menuList":Ljava/util/Vector;
    :cond_b
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v2, v0, :cond_c

    .line 212
    const-string v2, "H\u1ea5p th\u1ee5 th\u00e0nh c\u00f4ng! Nh\u1eadn \u0111i\u1ec3m Ph\u1ee5 Ma /cc45712%U/p"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 214
    invoke-virtual {v12, v14}, Lcom/hz/actor/Player;->setEnchantValue(I)V

    .line 216
    const/4 v8, 0x0

    :goto_3
    sget-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v8, v2, :cond_d

    .line 227
    sget-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 228
    const/4 v2, 0x0

    sput-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    .line 231
    if-eqz p0, :cond_c

    .line 232
    const/16 v2, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 236
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 218
    :cond_d
    sget-object v2, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/hz/core/Item;

    .line 219
    .restart local v15    # "tempitem":Lcom/hz/core/Item;
    if-nez v15, :cond_e

    .line 216
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 224
    :cond_e
    iget-short v2, v15, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v7, v2}, Lcom/hz/core/PlayerBag;->removeItem(S)I

    goto :goto_4
.end method

.method public static doItemEnChantOnUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;Z)Z
    .locals 3
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "isUp"    # Z

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    sget-object v1, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    if-nez v1, :cond_2

    .line 85
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    .line 90
    :cond_2
    if-eqz p2, :cond_5

    .line 91
    sget-object v1, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    .line 92
    const-string v1, "V\u1eadt ph\u1ea9m trang b\u1ecb h\u1ea5p th\u1ee5 kh\u00f4ng th\u1ec3 tr\u00ean 30 \u00f4!"

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 95
    :cond_3
    sget-object v0, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    :goto_1
    invoke-virtual {p1, p2}, Lcom/hz/core/Item;->setIntegral(Z)V

    .line 101
    if-eqz p0, :cond_4

    .line 102
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 105
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_5
    sget-object v0, Lcom/hz/main/GameWorld;->tempEnChantList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static isOepn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 49
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLevel()B

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 58
    sget-boolean v2, Lcom/hz/core/Enchant;->isOpen:Z

    if-eqz v2, :cond_0

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method
