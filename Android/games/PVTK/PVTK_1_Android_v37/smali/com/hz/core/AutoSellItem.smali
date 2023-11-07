.class public Lcom/hz/core/AutoSellItem;
.super Ljava/lang/Object;
.source "AutoSellItem.java"


# instance fields
.field public allpices:I

.field public vItemLists:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetItemLists()V
    .locals 15

    .prologue
    .line 26
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 27
    .local v7, "player":Lcom/hz/actor/Player;
    if-nez v7, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v1, v7, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 33
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 38
    new-instance v5, Lcom/hz/net/Message;

    const/16 v14, 0x2f04

    invoke-direct {v5, v14}, Lcom/hz/net/Message;-><init>(I)V

    .line 40
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 45
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 47
    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 57
    .local v10, "size":B
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    .line 62
    new-instance v0, Lcom/hz/core/AutoSellItem;

    invoke-direct {v0}, Lcom/hz/core/AutoSellItem;-><init>()V

    .line 63
    .local v0, "autoSellItem":Lcom/hz/core/AutoSellItem;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    iput-object v14, v0, Lcom/hz/core/AutoSellItem;->vItemLists:Ljava/util/Vector;

    .line 66
    const-string v12, ""

    .line 68
    .local v12, "strinfo":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v10, :cond_2

    .line 117
    iget-object v14, v0, Lcom/hz/core/AutoSellItem;->vItemLists:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 119
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createAutoSellUI(Lcom/hz/core/AutoSellItem;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    .line 90
    .local v9, "quantity":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 91
    .local v2, "grade":B
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    .line 92
    .local v11, "slotpos":S
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 93
    .local v4, "id":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 105
    .local v8, "price":I
    invoke-virtual {v1, v11}, Lcom/hz/core/PlayerBag;->getItem(I)Lcom/hz/core/Item;

    move-result-object v13

    .line 106
    .local v13, "tempItem":Lcom/hz/core/Item;
    if-eqz v13, :cond_3

    .line 108
    iput-short v9, v13, Lcom/hz/core/Item;->quantity:S

    .line 109
    iput v8, v13, Lcom/hz/core/Item;->price:I

    .line 111
    iget v14, v0, Lcom/hz/core/AutoSellItem;->allpices:I

    add-int/2addr v14, v8

    iput v14, v0, Lcom/hz/core/AutoSellItem;->allpices:I

    .line 113
    iget-object v14, v0, Lcom/hz/core/AutoSellItem;->vItemLists:Ljava/util/Vector;

    invoke-virtual {v14, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public doSellItem()V
    .locals 23

    .prologue
    .line 125
    sget-object v11, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 126
    .local v11, "player":Lcom/hz/actor/Player;
    if-nez v11, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, v11, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 132
    .local v1, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 149
    new-instance v12, Lcom/hz/net/Message;

    const/16 v18, 0x2f05

    move/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 151
    .local v12, "reqmsg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/AutoSellItem;->vItemLists:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 153
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/AutoSellItem;->vItemLists:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_2

    .line 164
    invoke-static {v12}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 169
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v12

    .line 171
    if-eqz v12, :cond_0

    .line 176
    invoke-virtual {v12}, Lcom/hz/net/Message;->getByte()B

    move-result v16

    .line 182
    .local v16, "tempsize":B
    if-gez v16, :cond_4

    .line 184
    invoke-virtual {v12}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 155
    .end local v16    # "tempsize":B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/AutoSellItem;->vItemLists:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/hz/core/Item;

    .line 156
    .local v14, "tempItem":Lcom/hz/core/Item;
    if-eqz v14, :cond_3

    .line 158
    iget v0, v14, Lcom/hz/core/Item;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 159
    iget-short v0, v14, Lcom/hz/core/Item;->slotPos:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 160
    iget-short v0, v14, Lcom/hz/core/Item;->quantity:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hz/net/Message;->putShort(S)V

    .line 153
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 188
    .end local v14    # "tempItem":Lcom/hz/core/Item;
    .restart local v16    # "tempsize":B
    :cond_4
    const-string v13, ""

    .line 190
    .local v13, "strAlertinfo":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    move/from16 v0, v16

    if-lt v6, v0, :cond_6

    .line 212
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 213
    .local v8, "money1":I
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 214
    .local v9, "money2":I
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 215
    .local v10, "money3":I
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 224
    .local v2, "getmoney":I
    iput v8, v11, Lcom/hz/actor/Player;->money1:I

    .line 225
    iput v9, v11, Lcom/hz/actor/Player;->money2:I

    .line 226
    iput v10, v11, Lcom/hz/actor/Player;->money3:I

    .line 228
    const-string v18, "B\u00e1n th\u00e0nh c\u00f4ng: %U\nNh\u1eadn: %U \u0110\u1ed3ng"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 230
    const/16 v17, 0x0

    .line 240
    .local v17, "xmlUI":Lcom/hz/ui/UIHandler;
    const/16 v18, 0x2a

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/hz/ui/UIHandler;->getUIByType(II)Lcom/hz/ui/UIHandler;

    move-result-object v17

    .line 241
    if-eqz v17, :cond_5

    .line 243
    invoke-static/range {v17 .. v17}, Lcom/hz/ui/UIHandler;->updateDataToShopItemUI(Lcom/hz/ui/UIHandler;)V

    .line 247
    :cond_5
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    goto/16 :goto_0

    .line 192
    .end local v2    # "getmoney":I
    .end local v8    # "money1":I
    .end local v9    # "money2":I
    .end local v10    # "money3":I
    .end local v17    # "xmlUI":Lcom/hz/ui/UIHandler;
    :cond_6
    invoke-virtual {v12}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 193
    .local v4, "itemid":I
    invoke-virtual {v12}, Lcom/hz/net/Message;->getShort()S

    move-result v3

    .line 194
    .local v3, "itemcount":S
    invoke-virtual {v12}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    .line 203
    .local v5, "itempos":S
    invoke-virtual {v1, v5}, Lcom/hz/core/PlayerBag;->getBagItemBySlotPos(S)Lcom/hz/core/Item;

    move-result-object v15

    .line 204
    .local v15, "tempitem":Lcom/hz/core/Item;
    if-eqz v15, :cond_7

    .line 206
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "X"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 209
    :cond_7
    invoke-virtual {v1, v5, v3}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method
