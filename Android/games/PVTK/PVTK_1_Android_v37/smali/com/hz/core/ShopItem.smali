.class public Lcom/hz/core/ShopItem;
.super Lcom/hz/core/Item;
.source "ShopItem.java"


# static fields
.field public static isEnterAutoSell:Z


# instance fields
.field public allCount:S

.field public arenaPoint:I

.field public combinItemID:I

.field public combintype:B

.field public enchantNeed:I

.field public enchantType:B

.field public extraList:Ljava/util/Vector;

.field public goodId:J

.field public goodPurchaseCount:S

.field public honor:I

.field public hotTypeOrNewItem:B

.field public integral:I

.field isSystemShopItem:Z

.field public maxBuy:S

.field public money1:I

.field public money2:I

.field public money3:I

.field public skyarenaPoint:I

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/core/ShopItem;->isEnterAutoSell:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Lcom/hz/core/Item;-><init>()V

    .line 40
    iput-short v0, p0, Lcom/hz/core/ShopItem;->maxBuy:S

    .line 41
    iput-short v0, p0, Lcom/hz/core/ShopItem;->allCount:S

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hz/core/ShopItem;->isSystemShopItem:Z

    .line 83
    return-void
.end method

.method public static checkTwiceMoney(IIILjava/lang/StringBuffer;)Z
    .locals 4
    .param p0, "money1"    # I
    .param p1, "money2"    # I
    .param p2, "money3"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1333
    const-string v0, ""

    .line 1334
    .local v0, "tempStr":Ljava/lang/String;
    if-lez p0, :cond_0

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KNB"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xffff00

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1337
    :cond_0
    if-lez p1, :cond_1

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "L\u00e1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x9acaff

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1340
    :cond_1
    if-lez p2, :cond_2

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "B\u1ea1c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xc45712

    invoke-static {v2, v3}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1344
    :cond_2
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1345
    const-string v1, "Mua v\u1eadt ph\u1ea9m n\u00e0y c\u1ea7n \n%U \u0111\u1ed3ng \u00fd mua kh\u00f4ng? "

    invoke-static {v1, v0}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1346
    const/4 v1, 0x1

    .line 1348
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static doGoodMenuButton(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I)Z
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "goodItem"    # Lcom/hz/core/Item;
    .param p2, "opeEvent"    # I

    .prologue
    const/4 v3, 0x1

    .line 1750
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v0

    .line 1752
    .local v0, "uiObj":Lcom/hz/ui/UIObject;
    sparse-switch p2, :sswitch_data_0

    .line 1806
    .end local p1    # "goodItem":Lcom/hz/core/Item;
    :cond_0
    :goto_0
    return v3

    .line 1754
    .restart local p1    # "goodItem":Lcom/hz/core/Item;
    :sswitch_0
    if-eqz p1, :cond_0

    .line 1755
    iget-short v1, p1, Lcom/hz/core/Item;->quantity:S

    invoke-static {v1}, Lcom/hz/main/GameForm;->createGoodsHandSellForm(I)Lcom/hz/main/GameForm;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hz/main/GameForm;->setUI(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hz/ui/UIObject;->setItem(Lcom/hz/core/Item;)V

    goto :goto_0

    :sswitch_1
    move-object v1, p1

    .line 1760
    check-cast v1, Lcom/hz/core/ShopItem;

    invoke-static {v1}, Lcom/hz/core/ShopItem;->doGoodsSellRetrieveMsg(Lcom/hz/core/ShopItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1761
    invoke-virtual {v0, p1}, Lcom/hz/ui/UIObject;->removePageObj(Ljava/lang/Object;)V

    .line 1762
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    goto :goto_0

    .line 1767
    :sswitch_2
    invoke-static {p1, p0}, Lcom/hz/main/GameWorld;->doGoodPetDetail(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)Z

    goto :goto_0

    :sswitch_3
    move-object v1, p1

    .line 1771
    check-cast v1, Lcom/hz/core/ShopItem;

    invoke-static {v1}, Lcom/hz/core/ShopItem;->doGoodsSellBuyMsg(Lcom/hz/core/ShopItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1772
    const/16 v1, 0x200

    invoke-virtual {p1, v3, v1}, Lcom/hz/core/Item;->setStatusBit(ZI)V

    .line 1773
    const/16 v1, 0x71

    invoke-virtual {p0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 1774
    const-string v1, "Ch\u00fac m\u1eebng mi"

    const-string v2, "Mua v\u1eadt ph\u1ea9m S\u1edf G.D\u1ecbch th\u00e0nh c\u00f4ng"

    invoke-static {v1, v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1779
    :sswitch_4
    if-eqz p1, :cond_0

    .line 1780
    invoke-static {}, Lcom/hz/main/GameForm;->createGoodsPurchaseForm()Lcom/hz/main/GameForm;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hz/main/GameForm;->setUI(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    goto :goto_0

    .line 1785
    :sswitch_5
    check-cast p1, Lcom/hz/core/ShopItem;

    .end local p1    # "goodItem":Lcom/hz/core/Item;
    invoke-static {p1}, Lcom/hz/core/ShopItem;->doGoodsPurchaseGetMsg(Lcom/hz/core/ShopItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    invoke-static {p0, v3}, Lcom/hz/ui/UIHandler;->updateDataToGoodsPurchase(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 1791
    .restart local p1    # "goodItem":Lcom/hz/core/Item;
    :sswitch_6
    check-cast p1, Lcom/hz/core/ShopItem;

    .end local p1    # "goodItem":Lcom/hz/core/Item;
    invoke-static {p1}, Lcom/hz/core/ShopItem;->doGoodsPurchaseCancelMsg(Lcom/hz/core/ShopItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1792
    invoke-static {p0, v3}, Lcom/hz/ui/UIHandler;->updateDataToGoodsPurchase(Lcom/hz/ui/UIHandler;Z)V

    goto :goto_0

    .line 1797
    .restart local p1    # "goodItem":Lcom/hz/core/Item;
    :sswitch_7
    check-cast p1, Lcom/hz/core/ShopItem;

    .end local p1    # "goodItem":Lcom/hz/core/Item;
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/hz/core/ShopItem;->doGoodsProvideMsg(Lcom/hz/ui/UIHandler;Lcom/hz/core/ShopItem;I)Z

    goto :goto_0

    .line 1802
    .restart local p1    # "goodItem":Lcom/hz/core/Item;
    :sswitch_8
    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/hz/ui/UIAction;->doMenuButton(Lcom/hz/ui/UIHandler;ILcom/hz/actor/Model;)V

    goto :goto_0

    .line 1752
    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_8
        0x387 -> :sswitch_8
        0x2b54 -> :sswitch_0
        0x2b55 -> :sswitch_1
        0x2b61 -> :sswitch_2
        0x2b70 -> :sswitch_3
        0x2b71 -> :sswitch_4
        0x2b72 -> :sswitch_5
        0x2b73 -> :sswitch_6
        0x2b74 -> :sswitch_7
    .end sparse-switch
.end method

.method public static doGoodPublishOrder(Ljava/lang/Object;Lcom/hz/ui/UIHandler;)Z
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v1, 0x0

    .line 1817
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/hz/main/GameForm;->getInputMsg(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 1818
    .local v0, "formMsg":Lcom/hz/net/Message;
    if-nez v0, :cond_1

    .line 1844
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 1822
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 1823
    .local v2, "money1":I
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 1824
    .local v3, "money3":I
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 1825
    .local v4, "num":I
    if-gtz v2, :cond_2

    if-lez v3, :cond_0

    :cond_2
    if-lez v4, :cond_0

    .line 1829
    if-eqz p0, :cond_0

    instance-of v5, p0, Lcom/hz/core/Item;

    if-eqz v5, :cond_0

    .line 1833
    check-cast p0, Lcom/hz/core/Item;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0, v2, v3, v4}, Lcom/hz/core/ShopItem;->doGoodsPurchaseSubmitMsg(Lcom/hz/core/Item;III)Z

    move-result v1

    .line 1834
    .local v1, "isSuccess":Z
    if-eqz v1, :cond_0

    .line 1840
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/hz/ui/UIHandler;->updateDataToPlayerMoney(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;Z)V

    .line 1842
    const-string v5, "G\u1eedi \u0111\u01a1n \u0111\u1eb7t h\u00e0ng th\u00e0nh c\u00f4ng!"

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doGoodsAutoProvideMsg(Lcom/hz/core/Item;I[I)I
    .locals 15
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "num"    # I
    .param p2, "money"    # [I

    .prologue
    .line 1509
    if-nez p0, :cond_1

    .line 1510
    const/4 v7, -0x1

    .line 1565
    :cond_0
    :goto_0
    return v7

    .line 1513
    :cond_1
    invoke-static/range {p0 .. p2}, Lcom/hz/main/MsgHandler;->createGoodsAutoProvide(Lcom/hz/core/Item;I[I)Lcom/hz/net/Message;

    move-result-object v8

    .line 1514
    .local v8, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1515
    const/4 v7, -0x1

    goto :goto_0

    .line 1518
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 1519
    .local v6, "receiveMsg":Lcom/hz/net/Message;
    if-nez v6, :cond_3

    .line 1520
    const/4 v7, -0x1

    goto :goto_0

    .line 1523
    :cond_3
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 1524
    .local v7, "result":B
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    .line 1525
    .local v1, "count":S
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 1526
    .local v3, "money1":I
    invoke-virtual {v6}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 1532
    .local v4, "money3":I
    if-nez v7, :cond_8

    .line 1533
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1534
    .local v5, "player":Lcom/hz/actor/Player;
    if-nez v5, :cond_4

    .line 1535
    const/4 v7, -0x1

    goto :goto_0

    .line 1538
    :cond_4
    iget-object v0, v5, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 1539
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-nez v0, :cond_5

    .line 1540
    const/4 v7, -0x1

    goto :goto_0

    .line 1543
    :cond_5
    iget-short v10, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v10, v1}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    move-result v2

    .line 1550
    .local v2, "isSuccess":I
    const/16 v10, 0xb

    invoke-virtual {v5, v10, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 1551
    const/16 v10, 0xd

    invoke-virtual {v5, v10, v4}, Lcom/hz/actor/Player;->addValue(II)V

    .line 1553
    new-instance v11, Ljava/lang/StringBuilder;

    if-lez v3, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v12, 0xb

    invoke-static {v12}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v4, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v12, 0xd

    invoke-static {v12}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1554
    .local v9, "strmoney":Ljava/lang/String;
    const-string v10, "T\u1ef1 \u0111\u1ed9ng cung \u1ee9ng v\u1eadt ph\u1ea9m %U c\u00e1i, nh\u1eadn \u0111\u01b0\u1ee3c %U"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 1553
    .end local v9    # "strmoney":Ljava/lang/String;
    :cond_6
    const-string v10, ""

    goto :goto_1

    :cond_7
    const-string v10, ""

    goto :goto_2

    .line 1559
    .end local v0    # "bag":Lcom/hz/core/PlayerBag;
    .end local v2    # "isSuccess":I
    .end local v5    # "player":Lcom/hz/actor/Player;
    :cond_8
    const/4 v10, 0x1

    if-eq v7, v10, :cond_9

    const/4 v10, 0x2

    if-ne v7, v10, :cond_0

    .line 1560
    :cond_9
    const/4 v10, 0x0

    aput v3, p2, v10

    .line 1561
    const/4 v10, 0x1

    aput v4, p2, v10

    .line 1562
    const/4 v10, 0x2

    aput v1, p2, v10

    goto/16 :goto_0
.end method

.method public static doGoodsProvideMsg(Lcom/hz/ui/UIHandler;Lcom/hz/core/ShopItem;I)Z
    .locals 7
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "shopItem"    # Lcom/hz/core/ShopItem;
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1463
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return v3

    .line 1467
    :cond_1
    if-eqz p1, :cond_0

    .line 1471
    if-gtz p2, :cond_2

    iget-short v5, p1, Lcom/hz/core/ShopItem;->quantity:S

    if-le v5, v4, :cond_2

    .line 1473
    const/16 v5, 0x1a

    const/4 v6, 0x4

    invoke-static {p2, v5, v6}, Lcom/hz/main/GameForm;->createGoodsProvideForm(III)Lcom/hz/main/GameForm;

    move-result-object v1

    .line 1474
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v1}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v0

    .line 1475
    .local v0, "formMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 1478
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result p2

    .line 1482
    .end local v0    # "formMsg":Lcom/hz/net/Message;
    .end local v1    # "gameForm":Lcom/hz/main/GameForm;
    :cond_2
    if-gtz p2, :cond_3

    .line 1483
    const/4 p2, 0x1

    .line 1485
    :cond_3
    iget-wide v5, p1, Lcom/hz/core/ShopItem;->goodId:J

    invoke-static {v5, v6, p2}, Lcom/hz/main/MsgHandler;->createGoodsProvideMsg(JI)Lcom/hz/net/Message;

    move-result-object v2

    .line 1486
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1490
    iget-short v3, p1, Lcom/hz/core/ShopItem;->quantity:S

    if-gt v3, p2, :cond_5

    .line 1491
    const/16 v3, 0x200

    invoke-virtual {p1, v4, v3}, Lcom/hz/core/ShopItem;->setStatusBit(ZI)V

    .line 1495
    :goto_1
    if-eqz p0, :cond_4

    .line 1496
    const/16 v3, 0x71

    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    :cond_4
    move v3, v4

    .line 1499
    goto :goto_0

    .line 1493
    :cond_5
    iget-short v3, p1, Lcom/hz/core/ShopItem;->quantity:S

    sub-int/2addr v3, p2

    int-to-short v3, v3

    iput-short v3, p1, Lcom/hz/core/ShopItem;->quantity:S

    goto :goto_1
.end method

.method public static doGoodsPurchaseCancelMsg(Lcom/hz/core/ShopItem;)Z
    .locals 4
    .param p0, "shopItem"    # Lcom/hz/core/ShopItem;

    .prologue
    const/4 v1, 0x0

    .line 1692
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return v1

    .line 1696
    :cond_1
    if-eqz p0, :cond_0

    .line 1700
    iget-wide v2, p0, Lcom/hz/core/ShopItem;->goodId:J

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createGoodsPurchaseCancel(J)Lcom/hz/net/Message;

    move-result-object v0

    .line 1701
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1705
    sget-object v1, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1707
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static doGoodsPurchaseGetMsg(Lcom/hz/core/ShopItem;)Z
    .locals 4
    .param p0, "shopItem"    # Lcom/hz/core/ShopItem;

    .prologue
    const/4 v1, 0x0

    .line 1718
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1738
    :cond_0
    :goto_0
    return v1

    .line 1722
    :cond_1
    if-eqz p0, :cond_0

    .line 1726
    iget-wide v2, p0, Lcom/hz/core/ShopItem;->goodId:J

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createGoodsPurchaseGet(J)Lcom/hz/net/Message;

    move-result-object v0

    .line 1727
    .local v0, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1731
    iget-short v2, p0, Lcom/hz/core/ShopItem;->goodPurchaseCount:S

    iget-short v3, p0, Lcom/hz/core/ShopItem;->quantity:S

    if-lt v2, v3, :cond_2

    .line 1732
    sget-object v1, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1738
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1734
    :cond_2
    iput-short v1, p0, Lcom/hz/core/ShopItem;->goodPurchaseCount:S

    .line 1735
    iget-short v1, p0, Lcom/hz/core/ShopItem;->quantity:S

    iget-short v2, p0, Lcom/hz/core/ShopItem;->goodPurchaseCount:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/hz/core/ShopItem;->quantity:S

    goto :goto_1
.end method

.method public static doGoodsPurchaseListMsg(ILcom/hz/core/Item;II)[Ljava/lang/Object;
    .locals 12
    .param p0, "type"    # I
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "pageSize"    # I
    .param p3, "pageNum"    # I

    .prologue
    .line 1360
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/hz/core/Item;->id:I

    .line 1363
    .local v1, "itemid":I
    :goto_0
    int-to-byte v0, p0

    const/4 v2, 0x1

    .line 1364
    const/4 v3, 0x1

    int-to-short v4, p2

    move v5, p3

    .line 1363
    invoke-static/range {v0 .. v5}, Lcom/hz/main/MsgHandler;->createGoodsPurchaseList(BIBBSI)Lcom/hz/net/Message;

    move-result-object v10

    .line 1365
    .local v10, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1366
    const/4 v0, 0x0

    .line 1389
    :goto_1
    return-object v0

    .line 1360
    .end local v1    # "itemid":I
    .end local v10    # "sendMsg":Lcom/hz/net/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1369
    .restart local v1    # "itemid":I
    .restart local v10    # "sendMsg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 1370
    .local v9, "receiveMsg":Lcom/hz/net/Message;
    if-nez v9, :cond_2

    .line 1371
    const/4 v0, 0x0

    goto :goto_1

    .line 1374
    :cond_2
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1376
    .local v8, "itemList":Ljava/util/Vector;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 1378
    .local v6, "allSize":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 1382
    .local v11, "size":S
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-lt v7, v11, :cond_3

    .line 1387
    invoke-static {v8}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    .line 1389
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    goto :goto_1

    .line 1383
    :cond_3
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/hz/core/ShopItem;->fromBytesGoodsPurchaseItem(Lcom/hz/net/Message;Z)Lcom/hz/core/ShopItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1382
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static doGoodsPurchaseMyListMsg()Ljava/util/Vector;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1574
    invoke-static {}, Lcom/hz/main/MsgHandler;->createGoodsPurchaseMyList()Lcom/hz/net/Message;

    move-result-object v3

    .line 1575
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-object v1

    .line 1579
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1580
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 1584
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1586
    .local v1, "itemList":Ljava/util/Vector;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1590
    .local v4, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_2

    .line 1595
    invoke-static {v1}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    goto :goto_0

    .line 1591
    :cond_2
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/hz/core/ShopItem;->fromBytesGoodsPurchaseItem(Lcom/hz/net/Message;Z)Lcom/hz/core/ShopItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static doGoodsPurchaseSubmitMsg(Lcom/hz/core/Item;III)Z
    .locals 5
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "money1"    # I
    .param p2, "money3"    # I
    .param p3, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 1660
    if-nez p0, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return v2

    .line 1664
    :cond_1
    if-gtz p1, :cond_2

    if-lez p2, :cond_0

    :cond_2
    if-lez p3, :cond_0

    .line 1668
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1669
    .local v0, "player":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 1673
    iget v3, p0, Lcom/hz/core/Item;->id:I

    int-to-short v4, p3

    invoke-static {v3, v4, p1, p2}, Lcom/hz/main/MsgHandler;->createGoodsPurchaseSubmit(ISII)Lcom/hz/net/Message;

    move-result-object v1

    .line 1674
    .local v1, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1678
    const/16 v2, 0xb

    mul-int v3, p1, p3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 1679
    const/16 v2, 0xd

    mul-int v3, p2, p3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/hz/actor/Player;->addValue(II)V

    .line 1681
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static doGoodsPurchaseTypeListMsg(I)[Ljava/lang/Object;
    .locals 9
    .param p0, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 1607
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createGoodsPurchaseTypeList(I)Lcom/hz/net/Message;

    move-result-object v4

    .line 1608
    .local v4, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return-object v6

    .line 1612
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 1613
    .local v3, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v3, :cond_0

    .line 1617
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1618
    .local v2, "itemList":Ljava/util/Vector;
    const/4 v5, 0x0

    .line 1622
    .local v5, "size":S
    :try_start_0
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_2

    .line 1647
    .end local v0    # "i":I
    :goto_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 1628
    .restart local v0    # "i":I
    :cond_2
    :try_start_1
    new-instance v1, Lcom/hz/core/ShopItem;

    invoke-direct {v1}, Lcom/hz/core/ShopItem;-><init>()V

    .line 1636
    .local v1, "item":Lcom/hz/core/ShopItem;
    invoke-static {v1, v3}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 1637
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1627
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1640
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/hz/core/ShopItem;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static doGoodsSellBuyMsg(Lcom/hz/core/ShopItem;)Z
    .locals 12
    .param p0, "shopItem"    # Lcom/hz/core/ShopItem;

    .prologue
    const/4 v8, 0x0

    .line 1293
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return v8

    .line 1297
    :cond_1
    if-eqz p0, :cond_0

    .line 1302
    iget-wide v1, p0, Lcom/hz/core/ShopItem;->goodId:J

    .line 1303
    .local v1, "goodsId":J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_0

    .line 1308
    iget v3, p0, Lcom/hz/core/ShopItem;->money1:I

    .line 1309
    .local v3, "localmoney1":I
    iget v4, p0, Lcom/hz/core/ShopItem;->money2:I

    .line 1310
    .local v4, "localmoney2":I
    iget v5, p0, Lcom/hz/core/ShopItem;->money3:I

    .line 1312
    .local v5, "localmoney3":I
    invoke-static {v3, v4, v5}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1317
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1318
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-static {v3, v4, v5, v6}, Lcom/hz/core/ShopItem;->checkTwiceMoney(IIILjava/lang/StringBuffer;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1319
    const-string v9, "Mua S\u1edf G.D\u1ecbch"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v9, v10, v11}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 1320
    .local v0, "askResult":I
    const/16 v9, 0x14

    if-eq v0, v9, :cond_0

    .line 1325
    .end local v0    # "askResult":I
    :cond_2
    invoke-static {v1, v2}, Lcom/hz/main/MsgHandler;->createGoodsSellBuy(J)Lcom/hz/net/Message;

    move-result-object v7

    .line 1326
    .local v7, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v7}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1330
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static doGoodsSellFindMsg([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 17
    .param p0, "object"    # [Ljava/lang/Object;
    .param p1, "_pageSize"    # I
    .param p2, "_pageNum"    # I

    .prologue
    .line 1114
    if-nez p0, :cond_0

    .line 1118
    const/4 v7, 0x0

    .line 1163
    :goto_0
    return-object v7

    .line 1121
    :cond_0
    move-object/from16 v0, p0

    array-length v7, v0

    const/4 v8, 0x6

    if-eq v7, v8, :cond_1

    .line 1125
    const/4 v7, 0x0

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v7, 0x0

    aget-object v7, p0, v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 1130
    .local v1, "_type":B
    invoke-static {v1}, Lcom/hz/core/Define;->getGoodsType(I)B

    move-result v1

    .line 1131
    const/4 v7, 0x1

    aget-object v7, p0, v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 1132
    .local v2, "_grade":B
    const/4 v7, 0x2

    aget-object v7, p0, v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 1133
    .local v3, "_level":B
    const/4 v7, 0x3

    aget-object v7, p0, v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    .line 1134
    .local v4, "_sortObj":B
    const/4 v7, 0x4

    aget-object v7, p0, v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 1135
    .local v5, "_sortType":B
    const/4 v7, 0x5

    aget-object v6, p0, v7

    check-cast v6, Ljava/lang/String;

    .line 1137
    .local v6, "_name":Ljava/lang/String;
    move/from16 v0, p1

    int-to-short v7, v0

    move/from16 v8, p2

    invoke-static/range {v1 .. v8}, Lcom/hz/main/MsgHandler;->createGoodsSellFind(BBBBBLjava/lang/String;SI)Lcom/hz/net/Message;

    move-result-object v13

    .line 1138
    .local v13, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v13}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1139
    const/4 v7, 0x0

    goto :goto_0

    .line 1142
    :cond_2
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v12

    .line 1143
    .local v12, "receiveMsg":Lcom/hz/net/Message;
    if-nez v12, :cond_3

    .line 1144
    const/4 v7, 0x0

    goto :goto_0

    .line 1147
    :cond_3
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 1149
    .local v9, "allSize":I
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1151
    .local v11, "itemList":Ljava/util/Vector;
    invoke-virtual {v12}, Lcom/hz/net/Message;->getShort()S

    move-result v15

    .line 1155
    .local v15, "size":S
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v15, :cond_4

    .line 1161
    invoke-static {v11}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    .line 1163
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    const/4 v8, 0x1

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v7, v8

    goto :goto_0

    .line 1156
    :cond_4
    invoke-static {v12}, Lcom/hz/core/ShopItem;->fromBytesGoodsItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;

    move-result-object v14

    .line 1157
    .local v14, "shopItem":Lcom/hz/core/ShopItem;
    invoke-virtual {v11, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1155
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static doGoodsSellListMsg()Ljava/util/Vector;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1172
    invoke-static {}, Lcom/hz/main/MsgHandler;->createGoodsSellList()Lcom/hz/net/Message;

    move-result-object v3

    .line 1173
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-object v1

    .line 1177
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 1178
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 1182
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1184
    .local v1, "itemList":Ljava/util/Vector;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 1189
    .local v4, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_2

    .line 1194
    invoke-static {v1}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    goto :goto_0

    .line 1190
    :cond_2
    invoke-static {v2}, Lcom/hz/core/ShopItem;->fromBytesGoodsItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static doGoodsSellRetrieveMsg(Lcom/hz/core/ShopItem;)Z
    .locals 6
    .param p0, "shopItem"    # Lcom/hz/core/ShopItem;

    .prologue
    const/4 v3, 0x0

    .line 1255
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return v3

    .line 1259
    :cond_1
    if-eqz p0, :cond_0

    .line 1263
    iget-wide v0, p0, Lcom/hz/core/ShopItem;->goodId:J

    .line 1267
    .local v0, "goodsId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1271
    invoke-static {v0, v1}, Lcom/hz/main/MsgHandler;->createGoodsSellRetrieve(J)Lcom/hz/net/Message;

    move-result-object v2

    .line 1272
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1277
    sget-object v3, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 1278
    sget-object v3, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    invoke-virtual {v3, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1281
    :cond_2
    const-string v3, "H\u1ee7y treo b\u00e1n th\u00e0nh c\u00f4ng!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1282
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static doGoodsSellSubmitMsg(Lcom/hz/actor/Player;Lcom/hz/core/Item;BII)Z
    .locals 5
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "num"    # B
    .param p3, "money1"    # I
    .param p4, "money3"    # I

    .prologue
    const/4 v3, 0x0

    .line 1209
    if-nez p0, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return v3

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 1214
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 1218
    if-eqz p1, :cond_0

    .line 1222
    invoke-static {p1, p2, p3, p4}, Lcom/hz/main/MsgHandler;->createGoodsSellSubmit(Lcom/hz/core/Item;BII)Lcom/hz/net/Message;

    move-result-object v2

    .line 1223
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1228
    iget-short v3, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v3, p2}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    move-result v1

    .line 1243
    .local v1, "result":I
    const-string v3, "Treo b\u00e1n th\u00e0nh c\u00f4ng!"

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1244
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static final doItemShopBuyMsg(Lcom/hz/actor/Player;Lcom/hz/core/ShopItem;ILcom/hz/ui/UIHandler;)Z
    .locals 36
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "shopItem"    # Lcom/hz/core/ShopItem;
    .param p2, "count"    # I
    .param p3, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 515
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v30

    if-nez v30, :cond_0

    .line 516
    const/16 v30, 0x0

    .line 728
    :goto_0
    return v30

    .line 519
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 520
    :cond_1
    const/16 v30, 0x0

    goto :goto_0

    .line 523
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/hz/core/ShopItem;

    move/from16 v30, v0

    if-nez v30, :cond_3

    .line 524
    const/16 v30, 0x0

    goto :goto_0

    .line 526
    :cond_3
    sget-short v23, Lcom/hz/main/GameWorld;->shopID:S

    .line 528
    .local v23, "shopID":S
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/ShopItem;->money1:I

    move/from16 v30, v0

    mul-int v12, p2, v30

    .line 529
    .local v12, "localmoney1":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/ShopItem;->money2:I

    move/from16 v30, v0

    mul-int v13, p2, v30

    .line 530
    .local v13, "localmoney2":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/ShopItem;->money3:I

    move/from16 v30, v0

    mul-int v14, p2, v30

    .line 531
    .local v14, "localmoney3":I
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 534
    .local v22, "sb":Ljava/lang/StringBuffer;
    const/16 v30, 0x1

    move/from16 v0, p2

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    if-gtz v12, :cond_5

    :cond_4
    const/16 v30, 0x28

    move/from16 v0, v30

    if-ge v12, v0, :cond_5

    const/16 v30, 0x64

    move/from16 v0, v30

    if-lt v13, v0, :cond_9

    .line 535
    :cond_5
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 536
    .local v19, "moneysb":Ljava/lang/StringBuffer;
    if-lez v12, :cond_6

    .line 537
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "KNB"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    :cond_6
    if-lez v13, :cond_7

    .line 540
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, " L\u00e1"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    :cond_7
    if-lez v14, :cond_8

    .line 543
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, " B\u1ea1c"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    :cond_8
    const/16 v30, 0xf

    invoke-static/range {v30 .. v30}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v30

    .line 547
    const-string v31, "Mua/cFFFF00%U/p c\u00e1i, c\u1ea7n ti\u00eau hao /cff0000%U/p , \u0111\u1ed3ng \u00fd kh\u00f4ng?"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/hz/core/ShopItem;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    .line 546
    invoke-static/range {v30 .. v32}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v18

    .line 548
    .local v18, "moneyask":I
    const/16 v30, 0x14

    move/from16 v0, v18

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 549
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 554
    .end local v18    # "moneyask":I
    .end local v19    # "moneysb":Ljava/lang/StringBuffer;
    :cond_9
    invoke-static {v12, v13, v14}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v30

    if-nez v30, :cond_a

    .line 555
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 581
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 582
    .local v6, "bag":Lcom/hz/core/PlayerBag;
    if-nez v6, :cond_b

    .line 583
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 586
    :cond_b
    move/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/hz/main/MsgHandler;->createItemShopBuy(SLcom/hz/core/ShopItem;I)Lcom/hz/net/Message;

    move-result-object v20

    .line 587
    .local v20, "msg":Lcom/hz/net/Message;
    invoke-static/range {v20 .. v20}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 588
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 591
    :cond_c
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v20

    .line 592
    if-nez v20, :cond_d

    .line 593
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 596
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getByte()B

    move-result v21

    .line 602
    .local v21, "result":B
    if-gez v21, :cond_15

    .line 603
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v25

    .line 604
    .local v25, "str":Ljava/lang/String;
    const/16 v30, -0xe

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 606
    const-string v27, "VIP"

    .line 611
    .local v27, "strvip":Ljava/lang/String;
    const-string v30, "B\u1ea1n kh\u00f4ng ph\u1ea3i %U, kh\u00f4ng th\u1ec3 mua v\u1eadt ph\u1ea9m %U. C\u00f3 m\u1edf \u0111\u1eb7c quy\u1ec1n %U?"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    const/16 v32, 0x1

    aput-object v27, v31, v32

    const/16 v32, 0x2

    aput-object v27, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 613
    .local v26, "strContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    move-object/from16 v30, v0

    if-nez v30, :cond_e

    .line 614
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 616
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    move-object/from16 v30, v0

    const/16 v31, 0x11

    invoke-virtual/range {v30 .. v31}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v8

    .line 617
    .local v8, "item":Lcom/hz/core/Item;
    if-nez v8, :cond_f

    .line 618
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 620
    :cond_f
    iget-wide v0, v8, Lcom/hz/core/Item;->expireTime:J

    move-wide/from16 v30, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v28, v30, v32

    .line 621
    .local v28, "viptime":J
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->getVipLevel()B

    move-result v30

    if-lez v30, :cond_10

    const-wide/16 v30, 0x0

    cmp-long v30, v28, v30

    if-gtz v30, :cond_10

    .line 622
    const-string v30, "\u0110\u1eb7c quy\u1ec1n %U c\u1ee7a b\u1ea1n \u0111\u00e3 qu\u00e1 h\u1ea1n, duy tr\u00ec xong c\u00f3 th\u1ec3 ti\u1ebfp t\u1ee5c h\u01b0\u1edfng quy\u1ec1n %U! C\u00f3 duy tr\u00ec %U kh\u00f4ng?"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    const/16 v32, 0x1

    aput-object v27, v31, v32

    const/16 v32, 0x2

    aput-object v27, v31, v32

    invoke-static/range {v30 .. v31}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 625
    :cond_10
    const-wide/16 v30, 0x0

    cmp-long v30, v28, v30

    if-gtz v30, :cond_12

    .line 627
    const/16 v30, 0xf

    .line 626
    invoke-static/range {v30 .. v30}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v30

    .line 627
    const/16 v31, 0x3

    .line 626
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v5

    .line 628
    .local v5, "askResult":I
    const/16 v30, 0x14

    move/from16 v0, v30

    if-ne v5, v0, :cond_11

    .line 629
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 631
    :cond_11
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 632
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-static {v8, v0}, Lcom/hz/actor/ListPlayer;->doOpenVIP(Lcom/hz/core/Item;Lcom/hz/ui/UIHandler;)V

    .line 642
    .end local v5    # "askResult":I
    .end local v8    # "item":Lcom/hz/core/Item;
    .end local v26    # "strContent":Ljava/lang/String;
    .end local v27    # "strvip":Ljava/lang/String;
    .end local v28    # "viptime":J
    :cond_12
    :goto_1
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 636
    :cond_13
    const/16 v30, -0x13

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 637
    invoke-static {}, Lcom/hz/actor/ListPlayer;->doSuperQQNotice()V

    goto :goto_1

    .line 640
    :cond_14
    invoke-static/range {v25 .. v25}, Lcom/hz/ui/UIHandler;->errorMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_1

    .line 646
    .end local v25    # "str":Ljava/lang/String;
    :cond_15
    const/16 v30, 0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    .line 647
    if-eqz p3, :cond_17

    .line 648
    invoke-virtual/range {p3 .. p3}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v30

    if-eqz v30, :cond_16

    .line 649
    invoke-virtual/range {p3 .. p3}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v30

    sget-short v31, Lcom/hz/main/GameWorld;->shopID:S

    invoke-static/range {v31 .. v31}, Lcom/hz/core/ShopItem;->getShopItemList(S)Ljava/util/Vector;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/hz/ui/UIObject;->tempObjList:Ljava/util/Vector;

    .line 651
    :cond_16
    const/16 v30, 0x6c

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/hz/ui/UIHandler;->notifyLayerAction(I)V

    .line 653
    :cond_17
    const-string v30, "Ng\u01b0\u1eddi qu\u1ea3n l\u00fd \u0111\u00e3 \u0111i\u1ec1u ch\u1ec9nh thu\u1ebf su\u1ea5t khi\u1ebfn gi\u00e1 ti\u1ec1n thay \u0111\u1ed5i, m\u1eddi b\u1ea1n xem!"

    invoke-static/range {v30 .. v30}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 654
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 658
    :cond_18
    const/16 v30, 0x2

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 660
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/ShopItem;->id:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/hz/core/Define;->isHairItem(I)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 661
    invoke-virtual/range {p0 .. p1}, Lcom/hz/actor/Player;->updateHair(Lcom/hz/core/Item;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->refreshWorldSprite()V

    .line 668
    :cond_19
    :goto_2
    new-instance v22, Ljava/lang/StringBuffer;

    .end local v22    # "sb":Ljava/lang/StringBuffer;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    .restart local v22    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v30

    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 671
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getShort()S

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-short v0, v1, Lcom/hz/core/ShopItem;->maxBuy:S

    .line 672
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getShort()S

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-short v0, v1, Lcom/hz/core/ShopItem;->allCount:S

    .line 674
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Mua th\u00e0nh c\u00f4ng"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/ShopItem;->getNameInfo()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, "desc":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 676
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 664
    .end local v7    # "desc":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/ShopItem;->id:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/hz/core/Define;->isFaceItem(I)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 665
    invoke-virtual/range {p0 .. p1}, Lcom/hz/actor/Player;->updateFace(Lcom/hz/core/Item;)V

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/hz/actor/Player;->refreshWorldSprite()V

    goto :goto_2

    .line 680
    :cond_1b
    if-eqz v21, :cond_1c

    .line 681
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 684
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 685
    .local v10, "itemID":I
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 686
    .local v11, "itemPos":S
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 687
    .local v9, "itemCount":B
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v15

    .line 688
    .local v15, "money1":I
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 689
    .local v16, "money2":I
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    .line 691
    .local v17, "money3":I
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getShort()S

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-short v0, v1, Lcom/hz/core/ShopItem;->maxBuy:S

    .line 692
    invoke-virtual/range {v20 .. v20}, Lcom/hz/net/Message;->getShort()S

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-short v0, v1, Lcom/hz/core/ShopItem;->allCount:S

    .line 700
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/ShopItem;->id:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v10, v0, :cond_1d

    move/from16 v0, p2

    if-eq v9, v0, :cond_1e

    .line 705
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 708
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/ShopItem;->clone()Lcom/hz/core/Item;

    move-result-object v4

    .line 709
    .local v4, "addItem":Lcom/hz/core/Item;
    move-object/from16 v0, p1

    iget-short v0, v0, Lcom/hz/core/ShopItem;->status:S

    move/from16 v30, v0

    move/from16 v0, v30

    iput-short v0, v4, Lcom/hz/core/Item;->status:S

    .line 710
    iget v0, v4, Lcom/hz/core/Item;->ownTime:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/hz/core/Item;->setExpireTime(I)V

    .line 712
    move/from16 v0, p2

    int-to-short v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v6, v4, v0}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;S)I

    move-result v24

    .line 722
    .local v24, "slotPos":I
    new-instance v22, Ljava/lang/StringBuffer;

    .end local v22    # "sb":Ljava/lang/StringBuffer;
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 723
    .restart local v22    # "sb":Ljava/lang/StringBuffer;
    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v15, v0, v1, v2}, Lcom/hz/actor/Model;->setPlayerMoney(IIILjava/lang/StringBuffer;)Z

    .line 725
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Mua th\u00e0nh c\u00f4ng"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hz/core/ShopItem;->getNameInfo()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x40

    invoke-static/range {v31 .. v31}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 726
    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 725
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 727
    .restart local v7    # "desc":Ljava/lang/String;
    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 728
    const/16 v30, 0x1

    goto/16 :goto_0
.end method

.method public static final doItemshopSellMsg(Lcom/hz/actor/Player;Lcom/hz/core/Item;I)Z
    .locals 8
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 737
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v4

    if-nez v4, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v3

    .line 741
    :cond_1
    if-eqz p1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 746
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 759
    iget-byte v4, p1, Lcom/hz/core/Item;->grade:B

    if-lt v4, v7, :cond_2

    .line 760
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 761
    const-string v5, "\u0110\u1ed3ng \u00fd b\u00e1n %U kh\u00f4ng?"

    invoke-virtual {p1}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 760
    invoke-static {v4, v5, v7}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 762
    .local v0, "askResult":I
    const/16 v4, 0x14

    if-eq v0, v4, :cond_0

    .line 767
    .end local v0    # "askResult":I
    :cond_2
    sget-short v4, Lcom/hz/main/GameWorld;->shopID:S

    iget v5, p1, Lcom/hz/core/Item;->id:I

    iget-short v6, p1, Lcom/hz/core/Item;->slotPos:S

    int-to-byte v7, p2

    invoke-static {v4, v5, v6, v7}, Lcom/hz/main/MsgHandler;->createItemShopSell(SISB)Lcom/hz/net/Message;

    move-result-object v2

    .line 768
    .local v2, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    iget-short v3, p1, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v1, v3, p2}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "B\u00e1n th\u00e0nh c\u00f4ng"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 774
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 776
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static doPlayerShopBuyMsg(Lcom/hz/actor/Model;Lcom/hz/core/Item;I)Z
    .locals 6
    .param p0, "model"    # Lcom/hz/actor/Model;
    .param p1, "oldItem"    # Lcom/hz/core/Item;
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x0

    .line 1012
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v4

    .line 1016
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 1017
    .local v2, "player":Lcom/hz/actor/Player;
    if-eqz v2, :cond_0

    .line 1021
    iget-object v0, v2, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 1022
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p1}, Lcom/hz/core/Item;->clone()Lcom/hz/core/Item;

    move-result-object v1

    .line 1028
    .local v1, "newItem":Lcom/hz/core/Item;
    invoke-virtual {p1, v1}, Lcom/hz/core/Item;->setVarItemDataTo(Lcom/hz/core/Item;)V

    .line 1029
    invoke-virtual {v1, v4}, Lcom/hz/core/Item;->setShopLocked(Z)V

    .line 1030
    int-to-short v5, p2

    iput-short v5, v1, Lcom/hz/core/Item;->quantity:S

    .line 1032
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v5

    invoke-static {v5, v1}, Lcom/hz/main/MsgHandler;->createPlayerShopBuyMsg(ILcom/hz/core/Item;)Lcom/hz/net/Message;

    move-result-object v3

    .line 1033
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1038
    invoke-virtual {v0, v1}, Lcom/hz/core/PlayerBag;->addItem(Lcom/hz/core/Item;)I

    .line 1039
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static doPlayerShopListMsg(Lcom/hz/actor/Model;)Z
    .locals 10
    .param p0, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 933
    if-nez p0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v7

    .line 937
    :cond_1
    const/4 v3, 0x0

    .line 939
    .local v3, "sendMsg":Lcom/hz/net/Message;
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getShoptype()B

    move-result v9

    if-nez v9, :cond_4

    .line 941
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/hz/main/MsgHandler;->createPlayerShopItemListMsg(I)Lcom/hz/net/Message;

    move-result-object v3

    .line 948
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 953
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 957
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 958
    .local v2, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v2, :cond_0

    .line 962
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    .line 964
    .local v5, "shopName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 969
    .local v6, "size":B
    if-lez v6, :cond_0

    .line 973
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 974
    .local v1, "itemList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v6, :cond_5

    .line 980
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    if-gtz v9, :cond_6

    .line 981
    :cond_3
    const-string v8, "Kh\u00f4ng c\u00f3 v\u1eadt ph\u1ea9m b\u00e0y b\u00e1n "

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 943
    .end local v0    # "i":I
    .end local v1    # "itemList":Ljava/util/Vector;
    .end local v2    # "receiveMsg":Lcom/hz/net/Message;
    .end local v5    # "shopName":Ljava/lang/String;
    .end local v6    # "size":B
    :cond_4
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getShoptype()B

    move-result v9

    if-ne v8, v9, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/hz/main/MsgHandler;->createPlayerEnchantShopItemListMsg(I)Lcom/hz/net/Message;

    move-result-object v3

    goto :goto_1

    .line 975
    .restart local v0    # "i":I
    .restart local v1    # "itemList":Ljava/util/Vector;
    .restart local v2    # "receiveMsg":Lcom/hz/net/Message;
    .restart local v5    # "shopName":Ljava/lang/String;
    .restart local v6    # "size":B
    :cond_5
    invoke-static {v2}, Lcom/hz/core/ShopItem;->fromBytesPlayerShopItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;

    move-result-object v4

    .line 976
    .local v4, "shopItem":Lcom/hz/core/ShopItem;
    invoke-virtual {v4, v7}, Lcom/hz/core/ShopItem;->setShopLocked(Z)V

    .line 977
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 986
    .end local v4    # "shopItem":Lcom/hz/core/ShopItem;
    :cond_6
    invoke-static {v1}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    .line 988
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getShoptype()B

    move-result v9

    if-nez v9, :cond_7

    .line 990
    invoke-static {v1, p0, v8}, Lcom/hz/ui/UIHandler;->createShopItemUI(Ljava/util/Vector;Ljava/lang/Object;I)V

    :goto_3
    move v7, v8

    .line 1001
    goto :goto_0

    .line 992
    :cond_7
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getShoptype()B

    move-result v9

    if-ne v8, v9, :cond_0

    .line 994
    const/4 v7, 0x3

    invoke-static {v1, p0, v7}, Lcom/hz/ui/UIHandler;->createShopItemUI(Ljava/util/Vector;Ljava/lang/Object;I)V

    goto :goto_3
.end method

.method public static doPlayerShopStartMsg(Ljava/lang/String;Lcom/hz/actor/Player;Z)Z
    .locals 9
    .param p0, "shopName"    # Ljava/lang/String;
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isenchantshop"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 861
    sget-object v3, Lcom/hz/main/GameWorld;->shopList:Ljava/util/Vector;

    .line 862
    .local v3, "itemList":Ljava/util/Vector;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v6

    .line 866
    :cond_1
    if-eqz p1, :cond_0

    .line 870
    iget-object v0, p1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 871
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 875
    const/4 v4, 0x0

    .line 877
    .local v4, "sendMsg":Lcom/hz/net/Message;
    if-eqz p2, :cond_2

    .line 879
    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->createPlayerEnchantShopStartMsg(Ljava/lang/String;Ljava/util/Vector;)Lcom/hz/net/Message;

    move-result-object v4

    .line 886
    :goto_1
    if-eqz v4, :cond_0

    .line 889
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 894
    invoke-virtual {p1, v7}, Lcom/hz/actor/Player;->setShopMode(Z)V

    .line 895
    iput-object p0, p1, Lcom/hz/actor/Player;->shopName:Ljava/lang/String;

    .line 898
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 911
    if-eqz p2, :cond_6

    .line 913
    invoke-virtual {p1, v7}, Lcom/hz/actor/Player;->setShoptype(B)V

    .line 914
    const-string v6, "B\u00e0y s\u1ea1p ph\u1ee5 ma th\u00e0nh c\u00f4ng! Ng\u01b0\u1eddi kh\u00e1c c\u00f3 th\u1ec3 d\u00f9ng s\u1ea1p c\u1ee7a b\u1ea1n \u0111\u1ec3 ph\u1ee5 ma."

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 922
    :goto_3
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint()V

    move v6, v7

    .line 924
    goto :goto_0

    .line 883
    .end local v1    # "i":I
    :cond_2
    invoke-static {p0, v3}, Lcom/hz/main/MsgHandler;->createPlayerShopStartMsg(Ljava/lang/String;Ljava/util/Vector;)Lcom/hz/net/Message;

    move-result-object v4

    goto :goto_1

    .line 899
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hz/core/Item;

    .line 900
    .local v5, "shopItem":Lcom/hz/core/Item;
    if-nez v5, :cond_5

    .line 898
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 904
    :cond_5
    iget-short v8, v5, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v0, v8}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v2

    .line 905
    .local v2, "item":Lcom/hz/core/Item;
    if-eqz v2, :cond_4

    .line 908
    invoke-virtual {v2, v7}, Lcom/hz/core/Item;->setShopLocked(Z)V

    goto :goto_4

    .line 918
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v5    # "shopItem":Lcom/hz/core/Item;
    :cond_6
    invoke-virtual {p1, v6}, Lcom/hz/actor/Player;->setShoptype(B)V

    .line 919
    const/16 v6, 0x53

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "B\u00e0y b\u00e1n \u0111\u00e3 b\u1eaft \u0111\u1ea7u, ng\u01b0\u1eddi kh\u00e1c c\u00f3 th\u1ec3 mua v\u1eadt ph\u1ea9m c\u1ee7a mi!"

    invoke-static {v6, v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_3
.end method

.method public static fromBytesCountryStoreItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;
    .locals 4
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 198
    :try_start_0
    new-instance v1, Lcom/hz/core/ShopItem;

    invoke-direct {v1}, Lcom/hz/core/ShopItem;-><init>()V

    .line 199
    .local v1, "shopItem":Lcom/hz/core/ShopItem;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hz/core/ShopItem;->uid:J

    .line 200
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v1, Lcom/hz/core/ShopItem;->honor:I

    .line 201
    invoke-static {v1, p0}, Lcom/hz/core/Item;->fromBytesAtts1(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 202
    invoke-static {v1, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 203
    const/4 v2, -0x1

    iput-short v2, v1, Lcom/hz/core/ShopItem;->slotPos:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "shopItem":Lcom/hz/core/ShopItem;
    :goto_0
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromBytesGoodsItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 313
    new-instance v0, Lcom/hz/core/ShopItem;

    invoke-direct {v0}, Lcom/hz/core/ShopItem;-><init>()V

    .line 317
    .local v0, "shopItem":Lcom/hz/core/ShopItem;
    :try_start_0
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytesAtts1(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 318
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 319
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hz/core/ShopItem;->goodId:J

    .line 320
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->quantity:S

    .line 321
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money1:I

    .line 322
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money3:I

    .line 323
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hz/core/ShopItem;->expireTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fromBytesGoodsPurchaseItem(Lcom/hz/net/Message;Z)Lcom/hz/core/ShopItem;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "isMy"    # Z

    .prologue
    .line 341
    new-instance v0, Lcom/hz/core/ShopItem;

    invoke-direct {v0}, Lcom/hz/core/ShopItem;-><init>()V

    .line 345
    .local v0, "shopItem":Lcom/hz/core/ShopItem;
    :try_start_0
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 346
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hz/core/ShopItem;->goodId:J

    .line 347
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->quantity:S

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->goodPurchaseCount:S

    .line 350
    iget-short v1, v0, Lcom/hz/core/ShopItem;->quantity:S

    iget-short v2, v0, Lcom/hz/core/ShopItem;->goodPurchaseCount:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->quantity:S

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money1:I

    .line 353
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money3:I

    .line 354
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/hz/core/ShopItem;->expireTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fromBytesPlayerShopItem(Lcom/hz/net/Message;)Lcom/hz/core/ShopItem;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 286
    new-instance v0, Lcom/hz/core/ShopItem;

    invoke-direct {v0}, Lcom/hz/core/ShopItem;-><init>()V

    .line 290
    .local v0, "shopItem":Lcom/hz/core/ShopItem;
    :try_start_0
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytesAtts1(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 291
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 292
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->quantity:S

    .line 293
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money1:I

    .line 294
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money3:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fromBytesShopItem(Lcom/hz/net/Message;S)Lcom/hz/core/ShopItem;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "shopID"    # S

    .prologue
    .line 249
    new-instance v0, Lcom/hz/core/ShopItem;

    invoke-direct {v0}, Lcom/hz/core/ShopItem;-><init>()V

    .line 250
    .local v0, "shopItem":Lcom/hz/core/ShopItem;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hz/core/ShopItem;->isSystemShopItem:Z

    .line 253
    :try_start_0
    invoke-static {v0, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 254
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money1:I

    .line 255
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money2:I

    .line 256
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/ShopItem;->money3:I

    .line 259
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->status:S

    .line 262
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->maxBuy:S

    .line 263
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/ShopItem;->allCount:S

    .line 265
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/ShopItem;->hotTypeOrNewItem:B

    .line 267
    iget-short v1, v0, Lcom/hz/core/ShopItem;->durMax:S

    iput-short v1, v0, Lcom/hz/core/ShopItem;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getGoodsFindDataByUI(Lcom/hz/ui/UIHandler;Z)[Ljava/lang/Object;
    .locals 11
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "isNew"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1047
    if-nez p0, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-object v6

    .line 1053
    :cond_1
    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v10}, Ljava/lang/Byte;-><init>(B)V

    .line 1054
    .local v3, "_type":Ljava/lang/Byte;
    if-eqz p1, :cond_4

    .line 1055
    const/16 v7, 0x3a9d

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 1056
    .local v4, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v4, :cond_2

    .line 1057
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v3

    .line 1074
    .end local v3    # "_type":Ljava/lang/Byte;
    .end local v4    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 1075
    const/16 v7, 0x50dd

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 1076
    .restart local v4    # "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1079
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v3

    .line 1082
    .end local v4    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_3
    const/16 v7, 0x1a94

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 1083
    .restart local v4    # "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1087
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 1089
    .local v0, "_grade":Ljava/lang/Object;
    const/16 v7, 0x1a96

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 1090
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1094
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 1096
    .local v1, "_level":Ljava/lang/Object;
    const/16 v7, 0x1a92

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 1097
    if-eqz v4, :cond_0

    .line 1101
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v2

    .line 1103
    .local v2, "_name":Ljava/lang/Object;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v10

    aput-object v0, v6, v9

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    .line 1104
    new-instance v8, Ljava/lang/Byte;

    invoke-direct {v8, v9}, Ljava/lang/Byte;-><init>(B)V

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/Byte;

    invoke-direct {v8, v9}, Ljava/lang/Byte;-><init>(B)V

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v2, v6, v7

    goto :goto_0

    .line 1060
    .end local v0    # "_grade":Ljava/lang/Object;
    .end local v1    # "_level":Ljava/lang/Object;
    .end local v2    # "_name":Ljava/lang/Object;
    .end local v4    # "gwidget":Lcom/hz/gui/GWidget;
    .restart local v3    # "_type":Ljava/lang/Byte;
    :cond_4
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getActionGWidget()Lcom/hz/gui/GWidget;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v7

    const/16 v8, 0x1a93

    if-eq v7, v8, :cond_2

    .line 1062
    const/16 v7, 0x1a91

    invoke-virtual {p0, v7}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v5

    .line 1063
    .local v5, "listWindow":Lcom/hz/gui/GWindow;
    if-eqz v5, :cond_0

    .line 1066
    iget-object v4, v5, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 1067
    .restart local v4    # "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1071
    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getObj()Ljava/lang/Object;

    move-result-object v3

    .local v3, "_type":Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method public static getGoodsProvideInfo(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;)V
    .locals 5
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 1398
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget-short v2, p1, Lcom/hz/core/Item;->quantity:S

    .line 1403
    .local v2, "num":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1404
    const/16 v3, 0x13

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/hz/main/GameForm;->createGoodsProvideForm(III)Lcom/hz/main/GameForm;

    move-result-object v1

    .line 1405
    .local v1, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v1}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v0

    .line 1406
    .local v0, "formMsg":Lcom/hz/net/Message;
    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {v0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 1411
    .end local v0    # "formMsg":Lcom/hz/net/Message;
    .end local v1    # "gameForm":Lcom/hz/main/GameForm;
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [I

    invoke-static {p0, p1, v2, v3}, Lcom/hz/core/ShopItem;->getGoodsProvideInfo(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I[I)V

    goto :goto_0
.end method

.method public static getGoodsProvideInfo(Lcom/hz/ui/UIHandler;Lcom/hz/core/Item;I[I)V
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "item"    # Lcom/hz/core/Item;
    .param p2, "num"    # I
    .param p3, "money"    # [I

    .prologue
    const/16 v7, 0x60

    const/16 v5, 0x44

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1418
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    const/16 v3, 0xcf

    if-eq v2, v3, :cond_2

    .line 1423
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1427
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/hz/core/ShopItem;->doGoodsAutoProvideMsg(Lcom/hz/core/Item;I[I)I

    move-result v6

    .line 1428
    .local v6, "result":I
    if-gtz v6, :cond_5

    .line 1429
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    const/16 v3, 0xcf

    if-ne v2, v3, :cond_4

    .line 1430
    :cond_3
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {p0, v2, v4}, Lcom/hz/ui/UIHandler;->updateDataToPlayerEquipUI(Lcom/hz/ui/UIHandler;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1431
    :cond_4
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getType()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1432
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {p0, v2}, Lcom/hz/ui/UIHandler;->updateDataToMyPlayerBag(Lcom/hz/ui/UIHandler;Lcom/hz/actor/Player;)V

    goto :goto_0

    .line 1437
    :cond_5
    const-string v2, "B\u00e1n: %U  Gi\u00e1:  %U"

    new-array v3, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x40

    invoke-static {v7}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, p3, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1438
    new-instance v5, Ljava/lang/StringBuilder;

    aget v7, p3, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, p3, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0xd

    invoke-static {v7}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .line 1437
    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "info":Ljava/lang/String;
    if-ne v6, v8, :cond_7

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Gi\u00e1 v\u1eadt ph\u1ea9m c\u00f3 th\u1ec3 c\u00f3 dao \u0111\u1ed9ng 10%, gi\u00e1 giao d\u1ecbch c\u00f3 th\u1ec3 cao h\u01a1n ho\u1eb7c th\u1eadp ho\u0103n gi\u00e1 b\u00ean tr\u00ean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    :cond_6
    :goto_1
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1449
    const/16 v2, 0x7d

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 1450
    .local v1, "menuStr":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p3, v2, v8

    .line 1451
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    move-object v5, p0

    .line 1450
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 1444
    .end local v1    # "menuStr":[Ljava/lang/String;
    :cond_7
    if-ne v6, v9, :cond_6

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Gi\u00e1 v\u1eadt ph\u1ea9m dao \u0111\u1ed9ng qu\u00e1 10%, h\u00e3y x\u00e1c nh\u1eadn l\u1ea1i gi\u00e1 giao d\u1ecbch."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getShopItemList(S)Ljava/util/Vector;
    .locals 6
    .param p0, "shopID"    # S

    .prologue
    const/4 v3, 0x0

    .line 791
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createItemShopListMsg(S)Lcom/hz/net/Message;

    move-result-object v1

    .line 792
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 815
    :cond_0
    return-object v3

    .line 796
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 797
    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 802
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 809
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 810
    .local v3, "shopList":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 811
    invoke-static {v1, p0}, Lcom/hz/core/ShopItem;->fromBytesShopItem(Lcom/hz/net/Message;S)Lcom/hz/core/ShopItem;

    move-result-object v2

    .line 812
    .local v2, "shopItem":Lcom/hz/core/ShopItem;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final openItemShop(S)V
    .locals 3
    .param p0, "shopID"    # S

    .prologue
    .line 825
    invoke-static {p0}, Lcom/hz/core/ShopItem;->getShopItemList(S)Ljava/util/Vector;

    move-result-object v0

    .line 826
    .local v0, "shopList":Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 834
    :cond_0
    sput-short p0, Lcom/hz/main/GameWorld;->shopID:S

    .line 844
    invoke-static {v0}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    .line 847
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/hz/ui/UIHandler;->createShopItemUI(Ljava/util/Vector;Ljava/lang/Object;I)V

    .line 849
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hz/core/ShopItem;->isEnterAutoSell:Z

    goto :goto_0
.end method

.method public static reduceMoney(Lcom/hz/actor/Player;III)V
    .locals 1
    .param p0, "player"    # Lcom/hz/actor/Player;
    .param p1, "money1"    # I
    .param p2, "money2"    # I
    .param p3, "money3"    # I

    .prologue
    .line 499
    if-nez p0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 503
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/hz/actor/Player;->addValue(II)V

    .line 504
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 505
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p3}, Lcom/hz/actor/Player;->addValue(II)V

    goto :goto_0
.end method


# virtual methods
.method public getCombinDesc(Lcom/hz/actor/Player;Z)Ljava/lang/String;
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isAll"    # Z

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hz/core/ShopItem;->getCombinDesc(Lcom/hz/actor/Player;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCombinDesc(Lcom/hz/actor/Player;ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isAll"    # Z
    .param p3, "isUpgradeItem"    # Z

    .prologue
    .line 415
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hz/core/ShopItem;->getCombinDesc(Lcom/hz/actor/Player;ZZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCombinDesc(Lcom/hz/actor/Player;ZZI)Ljava/lang/String;
    .locals 11
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "isAll"    # Z
    .param p3, "isUpgradeItem"    # Z
    .param p4, "num"    # I

    .prologue
    .line 426
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    if-nez v6, :cond_2

    .line 427
    :cond_0
    const-string v2, ""

    .line 471
    :cond_1
    :goto_0
    return-object v2

    .line 430
    :cond_2
    const-string v2, "V\u1eadt li\u1ec7u y\u00eau c\u1ea7u: \n"

    .line 432
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, p4}, Lcom/hz/core/ShopItem;->getMoneyStringByQuantity(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "moneyInfo":Ljava/lang/String;
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    :cond_3
    iget-object v6, p0, Lcom/hz/core/ShopItem;->extraList:Ljava/util/Vector;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/hz/core/ShopItem;->extraList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/hz/core/ShopItem;->extraList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_6

    .line 456
    .end local v1    # "i":I
    :cond_4
    if-eqz p2, :cond_1

    .line 457
    const-string v5, "C\u01b0\u1eddng h\u00f3a trang b\u1ecb sau khi h\u1ee3p th\u00e0nh: "

    .line 459
    .local v5, "strall":Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 460
    const-string v5, "Sau khi ti\u1ebfn b\u1eadc c\u01b0\u1eddng h\u00f3a trang b\u1ecb:"

    .line 463
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hz/core/ShopItem;->getNameInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    if-eqz p3, :cond_1

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\nL\u1ea7n \u0111\u1ea7u ti\u1ebfn b\u1eadc s\u1ebd nh\u1eadn thu\u1ed9c t\u00ednh ti\u1ebfn b\u1eadc, sau \u0111\u00f3 c\u00f3 50% t\u1ef7 l\u1ec7 nh\u1eadn thu\u1ed9c t\u00ednh ti\u1ebfn b\u1eadc m\u1edbi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 439
    .end local v5    # "strall":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/hz/core/ShopItem;->extraList:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/core/Item;

    .line 440
    .local v3, "item":Lcom/hz/core/Item;
    if-eqz v3, :cond_7

    .line 441
    iget-object v6, p1, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    iget v7, v3, Lcom/hz/core/Item;->id:I

    invoke-virtual {v6, v7}, Lcom/hz/core/PlayerBag;->getItemNumByID(I)I

    move-result v0

    .line 442
    .local v0, "hasCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, v3, Lcom/hz/core/Item;->quantity:S

    mul-int/2addr v8, p4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-byte v8, v3, Lcom/hz/core/Item;->grade:B

    invoke-static {v8}, Lcom/hz/core/Define;->getGradeColor(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-short v6, v3, Lcom/hz/core/Item;->quantity:S

    if-le v6, v0, :cond_8

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "(Hi\u1ec7n c\u00f3 %U)"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 446
    const/high16 v8, 0xff0000

    .line 445
    invoke-static {v7, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .end local v0    # "hasCount":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 449
    .restart local v0    # "hasCount":I
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(Hi\u1ec7n c\u00f3 %U)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getDesc(Lcom/hz/actor/Player;I)Ljava/lang/String;
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "halfW"    # I

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hz/core/ShopItem;->getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;
    .locals 7
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "halfW"    # I
    .param p3, "isShowName"    # Z

    .prologue
    const/high16 v2, 0xff0000

    const v3, 0xff00

    .line 371
    const-string v0, ""

    .line 372
    .local v0, "tempStr":Ljava/lang/String;
    iget v1, p0, Lcom/hz/core/ShopItem;->money1:I

    if-lez v1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/hz/core/ShopItem;->money1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0xffff00

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    iget v1, p0, Lcom/hz/core/ShopItem;->money2:I

    if-lez v1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/hz/core/ShopItem;->money2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x9acaff

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_1
    iget v1, p0, Lcom/hz/core/ShopItem;->money3:I

    if-lez v1, :cond_2

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/hz/actor/Model;->getMoneyText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/hz/core/ShopItem;->money3:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0xc45712

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_2
    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 382
    const-string v1, "\u00d4: %U"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_3
    iget-short v1, p0, Lcom/hz/core/ShopItem;->maxBuy:S

    if-ltz v1, :cond_4

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Gi\u1edbi h\u1ea1n mua:  %U"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/ShopItem;->maxBuy:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-short v1, p0, Lcom/hz/core/ShopItem;->maxBuy:S

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    invoke-static {v6, v1}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_4
    iget-short v1, p0, Lcom/hz/core/ShopItem;->allCount:S

    if-ltz v1, :cond_5

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Trong kho: %U c\u00e1i"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/ShopItem;->allCount:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-short v6, p0, Lcom/hz/core/ShopItem;->allCount:S

    if-nez v6, :cond_7

    :goto_1
    invoke-static {v5, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    move v1, v3

    .line 385
    goto :goto_0

    :cond_7
    move v2, v3

    .line 388
    goto :goto_1
.end method

.method public getItemDesc(Lcom/hz/actor/Player;I)Ljava/lang/String;
    .locals 1
    .param p1, "player"    # Lcom/hz/actor/Player;
    .param p2, "halfW"    # I

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMoneyIconIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 116
    iget v1, p0, Lcom/hz/core/ShopItem;->money1:I

    if-lez v1, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget v1, p0, Lcom/hz/core/ShopItem;->money2:I

    if-lez v1, :cond_2

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    iget v1, p0, Lcom/hz/core/ShopItem;->money3:I

    if-gtz v1, :cond_0

    .line 125
    iget v1, p0, Lcom/hz/core/ShopItem;->integral:I

    if-lez v1, :cond_3

    .line 126
    const/4 v0, 0x3

    goto :goto_0

    .line 128
    :cond_3
    iget v1, p0, Lcom/hz/core/ShopItem;->arenaPoint:I

    if-lez v1, :cond_4

    .line 129
    const/4 v0, 0x4

    goto :goto_0

    .line 131
    :cond_4
    iget v1, p0, Lcom/hz/core/ShopItem;->skyarenaPoint:I

    if-lez v1, :cond_0

    .line 132
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getMoneyString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/hz/core/ShopItem;->money1:I

    if-lez v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KNB"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/ShopItem;->money1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_0
    iget v1, p0, Lcom/hz/core/ShopItem;->money2:I

    if-lez v1, :cond_1

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L\u00e1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/ShopItem;->money2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9acaff

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_1
    iget v1, p0, Lcom/hz/core/ShopItem;->money3:I

    if-lez v1, :cond_2

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B\u1ea1c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/ShopItem;->money3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc45712

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMoneyStringByQuantity(I)Ljava/lang/String;
    .locals 3
    .param p1, "quantity"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/hz/core/ShopItem;->money1:I

    if-lez v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KNB"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/ShopItem;->money1:I

    mul-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff00

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    iget v1, p0, Lcom/hz/core/ShopItem;->money2:I

    if-lez v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L\u00e1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/ShopItem;->money2:I

    mul-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9acaff

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_1
    iget v1, p0, Lcom/hz/core/ShopItem;->money3:I

    if-lez v1, :cond_2

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B\u1ea1c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hz/core/ShopItem;->money3:I

    mul-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xc45712

    invoke-static {v1, v2}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMoneyType()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/hz/core/ShopItem;->money1:I

    if-lez v0, :cond_0

    .line 143
    const/16 v0, 0xb

    .line 154
    :goto_0
    return v0

    .line 145
    :cond_0
    iget v0, p0, Lcom/hz/core/ShopItem;->money2:I

    if-lez v0, :cond_1

    .line 146
    const/16 v0, 0xc

    goto :goto_0

    .line 148
    :cond_1
    iget v0, p0, Lcom/hz/core/ShopItem;->money3:I

    if-lez v0, :cond_2

    .line 149
    const/16 v0, 0xd

    goto :goto_0

    .line 151
    :cond_2
    iget v0, p0, Lcom/hz/core/ShopItem;->integral:I

    if-lez v0, :cond_3

    .line 152
    const/16 v0, 0x44

    goto :goto_0

    .line 154
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected getPowerDesc(IS)Ljava/lang/String;
    .locals 1
    .param p1, "power"    # I
    .param p2, "value"    # S

    .prologue
    .line 237
    invoke-static {p1, p2}, Lcom/hz/core/Define;->getPowerDesc(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/hz/core/ShopItem;->money1:I

    if-lez v0, :cond_0

    .line 91
    iget v0, p0, Lcom/hz/core/ShopItem;->money1:I

    .line 108
    :goto_0
    return v0

    .line 93
    :cond_0
    iget v0, p0, Lcom/hz/core/ShopItem;->money2:I

    if-lez v0, :cond_1

    .line 94
    iget v0, p0, Lcom/hz/core/ShopItem;->money2:I

    goto :goto_0

    .line 96
    :cond_1
    iget v0, p0, Lcom/hz/core/ShopItem;->money3:I

    if-lez v0, :cond_2

    .line 97
    iget v0, p0, Lcom/hz/core/ShopItem;->money3:I

    goto :goto_0

    .line 99
    :cond_2
    iget v0, p0, Lcom/hz/core/ShopItem;->integral:I

    if-lez v0, :cond_3

    .line 100
    iget v0, p0, Lcom/hz/core/ShopItem;->integral:I

    goto :goto_0

    .line 102
    :cond_3
    iget v0, p0, Lcom/hz/core/ShopItem;->arenaPoint:I

    if-lez v0, :cond_4

    .line 103
    iget v0, p0, Lcom/hz/core/ShopItem;->arenaPoint:I

    goto :goto_0

    .line 105
    :cond_4
    iget v0, p0, Lcom/hz/core/ShopItem;->skyarenaPoint:I

    if-lez v0, :cond_5

    .line 106
    iget v0, p0, Lcom/hz/core/ShopItem;->skyarenaPoint:I

    goto :goto_0

    .line 108
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTimeStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/hz/core/ShopItem;->isSystemShopItem:Z

    if-eqz v1, :cond_0

    .line 229
    iget v1, p0, Lcom/hz/core/ShopItem;->ownTime:I

    .line 230
    const/4 v2, 0x1

    .line 228
    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/hz/core/Item;->getTimeStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCombin_AtoA()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/hz/core/ShopItem;->combinItemID:I

    iget v1, p0, Lcom/hz/core/ShopItem;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMoney(BI)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "value"    # I

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iput p2, p0, Lcom/hz/core/ShopItem;->money1:I

    goto :goto_0

    .line 46
    :pswitch_1
    iput p2, p0, Lcom/hz/core/ShopItem;->money2:I

    goto :goto_0

    .line 47
    :pswitch_2
    iput p2, p0, Lcom/hz/core/ShopItem;->money3:I

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
