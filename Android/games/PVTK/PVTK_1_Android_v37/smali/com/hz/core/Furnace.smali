.class public Lcom/hz/core/Furnace;
.super Ljava/lang/Object;
.source "Furnace.java"


# instance fields
.field public cancreatenum:B

.field public costMoney1:I

.field public costMoney2:I

.field public costMoney3:I

.field public firstdesc:Ljava/lang/String;

.field public furnaceLevel:B

.field public furnaceQuality:I

.field public incTotalRefineNumCost:I

.field public isFirst:Z

.field public item:Lcom/hz/core/Item;

.field public maxRefineNum:B

.field public maxTodayRefineNum:I

.field public moneytype:B

.field public moneyvalue:I

.field public refineNum:B

.field public tips:Ljava/lang/String;

.field public todayRefineNum:I

.field public vCraftsman:Ljava/util/Vector;

.field public vItem:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hz/core/Furnace;->isFirst:Z

    .line 26
    return-void
.end method

.method public static doIncreateFurnaceNum(Lcom/hz/ui/UIHandler;Lcom/hz/core/Furnace;)V
    .locals 13
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "temfurnace"    # Lcom/hz/core/Furnace;

    .prologue
    const/4 v12, 0x0

    .line 558
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v5

    .line 567
    .local v5, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v5, :cond_0

    .line 575
    invoke-virtual {v5}, Lcom/hz/ui/UIObject;->getFurnace()Lcom/hz/core/Furnace;

    move-result-object v1

    .line 576
    .local v1, "furnace":Lcom/hz/core/Furnace;
    if-eqz v1, :cond_0

    .line 584
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 585
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_0

    .line 591
    const/16 v6, 0xf

    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 592
    const-string v7, "\u0110\u00e3 h\u1ebft s\u1ed1 l\u1ea7n, c\u1ea7n t\u0103ng l\u1ea7n \u0111\u1ec3 luy\u1ec7n ti\u1ebfp, t\u0103ng /c00FF00%U/p l\u1ea7n c\u1ea7n /cFF0000%U/p, t\u0103ng kh\u00f4ng?"

    .line 593
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-byte v10, p1, Lcom/hz/core/Furnace;->cancreatenum:B

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/hz/core/Furnace;->incTotalRefineNumCost:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "KNB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 592
    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 594
    const/4 v8, 0x3

    .line 591
    invoke-static {v6, v7, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 595
    .local v0, "askResult":I
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 600
    iget v6, p1, Lcom/hz/core/Furnace;->incTotalRefineNumCost:I

    invoke-static {v6, v12, v12}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 605
    new-instance v3, Lcom/hz/net/Message;

    const/16 v6, 0x2cfc

    invoke-direct {v3, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 606
    .local v3, "msg":Lcom/hz/net/Message;
    sget-short v6, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v3, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 607
    iget v6, p1, Lcom/hz/core/Furnace;->incTotalRefineNumCost:I

    invoke-virtual {v3, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 613
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 618
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 619
    if-eqz v3, :cond_0

    .line 625
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v1, Lcom/hz/core/Furnace;->maxTodayRefineNum:I

    .line 626
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/hz/core/Furnace;->tips:Ljava/lang/String;

    .line 627
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v4, Lcom/hz/actor/Player;->money1:I

    .line 628
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "info":Ljava/lang/String;
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 632
    invoke-virtual {v5, v1}, Lcom/hz/ui/UIObject;->setFurnace(Lcom/hz/core/Furnace;)V

    .line 633
    invoke-static {p0, v12}, Lcom/hz/ui/UIHandler;->updateDatatoFurNaceUI(Lcom/hz/ui/UIHandler;Z)V

    .line 635
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0
.end method

.method public static doOpenCraftsman(Lcom/hz/ui/UIHandler;Lcom/hz/core/Craftsman;)V
    .locals 13
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "craftsman"    # Lcom/hz/core/Craftsman;

    .prologue
    const/4 v12, 0x0

    .line 240
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v7

    .line 249
    .local v7, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v7, :cond_0

    .line 257
    invoke-virtual {v7}, Lcom/hz/ui/UIObject;->getFurnace()Lcom/hz/core/Furnace;

    move-result-object v2

    .line 258
    .local v2, "furnace":Lcom/hz/core/Furnace;
    if-eqz v2, :cond_0

    .line 266
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 267
    .local v5, "player":Lcom/hz/actor/Player;
    if-eqz v5, :cond_0

    .line 279
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 280
    const-string v9, "Ti\u1ebfp t\u1ee5c c\u1ea7n th\u00eam /cFF0000%U V\u00e0ng/p, x\u00e1c nh\u1eadn?"

    new-instance v10, Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/hz/core/Craftsman;->price:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 279
    invoke-static {v8, v9, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 281
    .local v0, "askResult":I
    const/16 v8, 0xa

    if-ne v0, v8, :cond_0

    .line 286
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 291
    iget v8, p1, Lcom/hz/core/Craftsman;->price:I

    invoke-static {v8, v12, v12}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 295
    new-instance v4, Lcom/hz/net/Message;

    const/16 v8, 0x2cfd

    invoke-direct {v4, v8}, Lcom/hz/net/Message;-><init>(I)V

    .line 296
    .local v4, "msg":Lcom/hz/net/Message;
    sget-short v8, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v4, v8}, Lcom/hz/net/Message;->putShort(S)V

    .line 297
    iget v8, p1, Lcom/hz/core/Craftsman;->price:I

    invoke-virtual {v4, v8}, Lcom/hz/net/Message;->putInt(I)V

    .line 303
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 309
    if-eqz v4, :cond_0

    .line 314
    iget-object v8, v2, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    if-nez v8, :cond_2

    .line 316
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v2, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    .line 320
    :cond_2
    iget-object v8, v2, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->removeAllElements()V

    .line 322
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 323
    .local v6, "size":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v6, :cond_3

    .line 332
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, v5, Lcom/hz/actor/Player;->money1:I

    .line 334
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 338
    invoke-virtual {v7, v2}, Lcom/hz/ui/UIObject;->setFurnace(Lcom/hz/core/Furnace;)V

    .line 340
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 342
    invoke-static {p0, v12}, Lcom/hz/ui/UIHandler;->updateDatatoFurNaceUI(Lcom/hz/ui/UIHandler;Z)V

    goto/16 :goto_0

    .line 325
    :cond_3
    invoke-static {v4}, Lcom/hz/core/Furnace;->getCraftsmanfrombyte(Lcom/hz/net/Message;)Lcom/hz/core/Craftsman;

    move-result-object v1

    .line 327
    .local v1, "craftsmandata":Lcom/hz/core/Craftsman;
    if-nez v1, :cond_4

    .line 323
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    :cond_4
    iget-object v8, v2, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doOpenCraftsmanMenu(Lcom/hz/ui/UIHandler;Lcom/hz/core/Craftsman;)V
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "craftsman"    # Lcom/hz/core/Craftsman;

    .prologue
    .line 188
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v8

    .line 197
    .local v8, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v8, :cond_0

    .line 205
    invoke-virtual {v8}, Lcom/hz/ui/UIObject;->getFurnace()Lcom/hz/core/Furnace;

    move-result-object v6

    .line 206
    .local v6, "furnace":Lcom/hz/core/Furnace;
    if-eqz v6, :cond_0

    .line 214
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 215
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 217
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v7, v1, v2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 219
    iget-object v0, p1, Lcom/hz/core/Craftsman;->desc:Ljava/lang/String;

    .line 222
    .local v0, "strinfo":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/hz/core/Furnace;->isCraftsmanOpenAll()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    const-string v1, "Ng\u1eabu nhi\u00ean m\u1edf \u0110\u1ea1i S\u01b0"

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 227
    const-string v1, "%U\n\nB\u1ea1n c\u00f3 th\u1ec3 tr\u1ea3 ph\u00ed /cFF0000%U V\u00e0ng/p, ng\u1eabu nhi\u00ean m\u1edf \u0110\u1ea1i S\u01b0 L\u00f2 Luy\u1ec7n, t\u0103ng ph\u1ea9m ch\u1ea5t luy\u1ec7n."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/hz/core/Craftsman;->desc:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/hz/core/Craftsman;->price:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_2
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x3b

    move-object v5, p0

    .line 230
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doOpenFurnaceShop(S)V
    .locals 9
    .param p0, "shopId"    # S

    .prologue
    .line 72
    new-instance v4, Lcom/hz/net/Message;

    const/16 v7, 0x2cfa

    invoke-direct {v4, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 73
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-virtual {v4, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 74
    sput-short p0, Lcom/hz/main/GameWorld;->shopID:S

    .line 80
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_0

    .line 91
    new-instance v1, Lcom/hz/core/Furnace;

    invoke-direct {v1}, Lcom/hz/core/Furnace;-><init>()V

    .line 93
    .local v1, "furnace":Lcom/hz/core/Furnace;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Furnace;->refineNum:B

    .line 94
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Furnace;->maxRefineNum:B

    .line 95
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->todayRefineNum:I

    .line 96
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->maxTodayRefineNum:I

    .line 97
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->furnaceQuality:I

    .line 98
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Furnace;->furnaceLevel:B

    .line 99
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->costMoney1:I

    .line 100
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->costMoney2:I

    .line 101
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->costMoney3:I

    .line 102
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    iput v7, v1, Lcom/hz/core/Furnace;->incTotalRefineNumCost:I

    .line 103
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/hz/core/Furnace;->tips:Ljava/lang/String;

    .line 115
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, v1, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    .line 116
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 121
    .local v5, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 131
    invoke-virtual {v4}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 136
    .local v3, "isHasItem":Z
    if-eqz v3, :cond_2

    .line 139
    :try_start_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 141
    .local v6, "temv":Ljava/util/Vector;
    new-instance v7, Lcom/hz/core/Item;

    invoke-direct {v7}, Lcom/hz/core/Item;-><init>()V

    iput-object v7, v1, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    .line 143
    iget-object v7, v1, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    invoke-static {v7, v4}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 144
    iget-object v7, v1, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    iget-object v8, v1, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    iget-short v8, v8, Lcom/hz/core/Item;->durMax:S

    iput-short v8, v7, Lcom/hz/core/Item;->durability:S

    .line 146
    iget-object v7, v1, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 148
    invoke-static {v6}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v6    # "temv":Ljava/util/Vector;
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    iput-byte v7, v1, Lcom/hz/core/Furnace;->cancreatenum:B

    .line 161
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/hz/core/Furnace;->firstdesc:Ljava/lang/String;

    .line 163
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createFurNaceUI(Lcom/hz/core/Furnace;)V

    goto/16 :goto_0

    .line 123
    .end local v3    # "isHasItem":Z
    :cond_3
    invoke-static {v4}, Lcom/hz/core/Furnace;->getCraftsmanfrombyte(Lcom/hz/net/Message;)Lcom/hz/core/Craftsman;

    move-result-object v0

    .line 125
    .local v0, "craftsman":Lcom/hz/core/Craftsman;
    if-nez v0, :cond_4

    .line 121
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_4
    iget-object v7, v1, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 149
    .end local v0    # "craftsman":Lcom/hz/core/Craftsman;
    .restart local v3    # "isHasItem":Z
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public static doOperateFurnace(Lcom/hz/ui/UIHandler;Lcom/hz/core/Furnace;)V
    .locals 22
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "tempfurnace"    # Lcom/hz/core/Furnace;

    .prologue
    .line 350
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v16

    .line 359
    .local v16, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v16, :cond_0

    .line 367
    invoke-virtual/range {v16 .. v16}, Lcom/hz/ui/UIObject;->getFurnace()Lcom/hz/core/Furnace;

    move-result-object v4

    .line 368
    .local v4, "furnace":Lcom/hz/core/Furnace;
    if-eqz v4, :cond_0

    .line 376
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 377
    .local v11, "player":Lcom/hz/actor/Player;
    if-eqz v11, :cond_0

    .line 383
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 388
    iget v0, v4, Lcom/hz/core/Furnace;->todayRefineNum:I

    move/from16 v17, v0

    iget v0, v4, Lcom/hz/core/Furnace;->maxTodayRefineNum:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 390
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/hz/core/Furnace;->doIncreateFurnaceNum(Lcom/hz/ui/UIHandler;Lcom/hz/core/Furnace;)V

    goto :goto_0

    .line 394
    :cond_2
    const-string v14, ""

    .line 397
    .local v14, "strmoneytype":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/hz/core/Furnace;->moneytype:B

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 422
    :cond_3
    iget-boolean v0, v4, Lcom/hz/core/Furnace;->isFirst:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 424
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/hz/core/Furnace;->isFirst:Z

    .line 427
    const/16 v17, 0xf

    invoke-static/range {v17 .. v17}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v17

    .line 428
    const-string v18, "\u0110ang m\u1eb7c \u0111\u1ecbnh d\u00f9ng /cFF0000%U/p ti\u1ebfn h\u00e0nh luy\u1ec7n, ti\u1ebfp t\u1ee5c?\n%U"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    iget-object v0, v4, Lcom/hz/core/Furnace;->firstdesc:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    .line 427
    invoke-static/range {v17 .. v19}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v2

    .line 429
    .local v2, "askResult":I
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_0

    .line 435
    .end local v2    # "askResult":I
    :cond_4
    new-instance v10, Lcom/hz/net/Message;

    const/16 v17, 0x2cfb

    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 436
    .local v10, "msg":Lcom/hz/net/Message;
    sget-short v17, Lcom/hz/main/GameWorld;->shopID:S

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 437
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/hz/core/Furnace;->moneytype:B

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 438
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Furnace;->moneyvalue:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 446
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 451
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 452
    if-eqz v10, :cond_0

    .line 457
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v6

    .line 458
    .local v6, "isDone":Z
    const/4 v13, 0x0

    .line 459
    .local v13, "strinfo":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 461
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v13

    .line 463
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v8

    .line 464
    .local v8, "ishasitem":Z
    if-eqz v8, :cond_5

    .line 467
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v10, v0}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 471
    .end local v8    # "ishasitem":Z
    :cond_5
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    move/from16 v0, v17

    iput-byte v0, v4, Lcom/hz/core/Furnace;->refineNum:B

    .line 472
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    move/from16 v0, v17

    iput-byte v0, v4, Lcom/hz/core/Furnace;->maxRefineNum:B

    .line 473
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/hz/core/Furnace;->todayRefineNum:I

    .line 474
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/hz/core/Furnace;->maxTodayRefineNum:I

    .line 475
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/hz/core/Furnace;->furnaceQuality:I

    .line 476
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v17

    move/from16 v0, v17

    iput-byte v0, v4, Lcom/hz/core/Furnace;->furnaceLevel:B

    .line 477
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/hz/core/Furnace;->tips:Ljava/lang/String;

    .line 486
    iget-object v0, v4, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 488
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    .line 492
    :cond_6
    iget-object v0, v4, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->removeAllElements()V

    .line 495
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v12

    .line 496
    .local v12, "size":B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v12, :cond_8

    .line 506
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v7

    .line 507
    .local v7, "isHasItem":Z
    if-eqz v7, :cond_a

    .line 510
    :try_start_0
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 512
    .local v15, "temv":Ljava/util/Vector;
    new-instance v17, Lcom/hz/core/Item;

    invoke-direct/range {v17 .. v17}, Lcom/hz/core/Item;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    .line 514
    iget-object v0, v4, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 515
    iget-object v0, v4, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/hz/core/Item;->durMax:S

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-short v0, v1, Lcom/hz/core/Item;->durability:S

    .line 517
    iget-object v0, v4, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 519
    invoke-static {v15}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v15    # "temv":Ljava/util/Vector;
    :goto_2
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/hz/actor/Player;->money1:I

    .line 531
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/hz/actor/Player;->money2:I

    .line 532
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/hz/actor/Player;->money3:I

    .line 536
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v9

    .line 537
    .local v9, "ismeet":Z
    if-eqz v9, :cond_7

    .line 539
    invoke-virtual {v10}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 543
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/hz/ui/UIObject;->setFurnace(Lcom/hz/core/Furnace;)V

    .line 545
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 547
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/hz/ui/UIHandler;->updateDatatoFurNaceUI(Lcom/hz/ui/UIHandler;Z)V

    .line 550
    invoke-static {v13}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto/16 :goto_0

    .line 400
    .end local v5    # "i":I
    .end local v6    # "isDone":Z
    .end local v7    # "isHasItem":Z
    .end local v9    # "ismeet":Z
    .end local v10    # "msg":Lcom/hz/net/Message;
    .end local v12    # "size":B
    .end local v13    # "strinfo":Ljava/lang/String;
    :pswitch_0
    const-string v14, "KNB"

    .line 402
    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Furnace;->moneyvalue:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v17

    if-nez v17, :cond_3

    goto/16 :goto_0

    .line 407
    :pswitch_1
    const-string v14, "L\u00e1"

    .line 409
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Furnace;->moneyvalue:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v17

    if-nez v17, :cond_3

    goto/16 :goto_0

    .line 414
    :pswitch_2
    const-string v14, "B\u1ea1c"

    .line 416
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/hz/core/Furnace;->moneyvalue:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v17

    if-nez v17, :cond_3

    goto/16 :goto_0

    .line 498
    .restart local v5    # "i":I
    .restart local v6    # "isDone":Z
    .restart local v10    # "msg":Lcom/hz/net/Message;
    .restart local v12    # "size":B
    .restart local v13    # "strinfo":Ljava/lang/String;
    :cond_8
    invoke-static {v10}, Lcom/hz/core/Furnace;->getCraftsmanfrombyte(Lcom/hz/net/Message;)Lcom/hz/core/Craftsman;

    move-result-object v3

    .line 500
    .local v3, "craftsmandata":Lcom/hz/core/Craftsman;
    if-nez v3, :cond_9

    .line 496
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 502
    :cond_9
    iget-object v0, v4, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 527
    .end local v3    # "craftsmandata":Lcom/hz/core/Craftsman;
    .restart local v7    # "isHasItem":Z
    :cond_a
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/hz/core/Furnace;->item:Lcom/hz/core/Item;

    goto/16 :goto_2

    .line 520
    :catch_0
    move-exception v17

    goto/16 :goto_2

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static doSeeFurnaceItemLists()V
    .locals 10

    .prologue
    .line 643
    new-instance v6, Lcom/hz/net/Message;

    const/16 v9, 0x2cfe

    invoke-direct {v6, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 644
    .local v6, "msg":Lcom/hz/net/Message;
    sget-short v9, Lcom/hz/main/GameWorld;->shopID:S

    invoke-virtual {v6, v9}, Lcom/hz/net/Message;->putShort(S)V

    .line 650
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 656
    if-eqz v6, :cond_0

    .line 661
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 664
    .local v8, "vList":Ljava/util/Vector;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 669
    .local v0, "allsize":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 709
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 711
    invoke-static {v8}, Lcom/hz/ui/UIHandler;->createFurNaceItemListUI(Ljava/util/Vector;)V

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 672
    .local v5, "level":B
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 674
    .local v7, "size":B
    new-instance v1, Lcom/hz/core/Furnace;

    invoke-direct {v1}, Lcom/hz/core/Furnace;-><init>()V

    .line 675
    .local v1, "furnace":Lcom/hz/core/Furnace;
    iput-byte v5, v1, Lcom/hz/core/Furnace;->furnaceLevel:B

    .line 676
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v1, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    .line 682
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-lt v4, v7, :cond_3

    .line 703
    iget-object v9, v1, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    invoke-static {v9}, Lcom/hz/main/GameWorld;->doGetItemSuit(Ljava/util/Vector;)V

    .line 705
    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 685
    :cond_3
    new-instance v3, Lcom/hz/core/Item;

    invoke-direct {v3}, Lcom/hz/core/Item;-><init>()V

    .line 687
    .local v3, "item":Lcom/hz/core/Item;
    :try_start_0
    invoke-static {v3, v6}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 688
    iget-short v9, v3, Lcom/hz/core/Item;->durMax:S

    iput-short v9, v3, Lcom/hz/core/Item;->durability:S

    .line 694
    iget-object v9, v1, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 695
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public static getCraftsmanfrombyte(Lcom/hz/net/Message;)Lcom/hz/core/Craftsman;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 168
    new-instance v0, Lcom/hz/core/Craftsman;

    invoke-direct {v0}, Lcom/hz/core/Craftsman;-><init>()V

    .line 169
    .local v0, "craftsman":Lcom/hz/core/Craftsman;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Craftsman;->id:B

    .line 170
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/hz/core/Craftsman;->isOpen:Z

    .line 171
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Craftsman;->price:I

    .line 172
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Craftsman;->name:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/Craftsman;->desc:Ljava/lang/String;

    .line 180
    return-object v0
.end method


# virtual methods
.method public doGetFurnaceItemFromV(I)Lcom/hz/core/Item;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-object v0

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/hz/core/Furnace;->vItem:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Item;

    goto :goto_0
.end method

.method public isCraftsmanOpenAll()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 54
    iget-object v3, p0, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/hz/core/Furnace;->vCraftsman:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Craftsman;

    .line 62
    .local v0, "craftsman":Lcom/hz/core/Craftsman;
    if-nez v0, :cond_3

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_3
    iget-boolean v3, v0, Lcom/hz/core/Craftsman;->isOpen:Z

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0
.end method
