.class public Lcom/hz/core/NewArenaReward;
.super Ljava/lang/Object;
.source "NewArenaReward.java"


# static fields
.field public static final STATUS_CANNOT_GET:B = 0x1t

.field public static final STATUS_CAN_GET:B = 0x3t

.field public static final STATUS_HAS_GET:B = 0x2t


# instance fields
.field public allList:Ljava/util/Vector;

.field public item:Lcom/hz/core/Item;

.field public rwId:I

.field public rwItemList:Ljava/util/Vector;

.field public rwMoney1:S

.field public rwMoney2:S

.field public rwMoney3:S

.field public rwState:B

.field public rwTotalScore:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkScoreReward(Lcom/hz/ui/UIHandler;)V
    .locals 12
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 49
    new-instance v5, Lcom/hz/net/Message;

    const/16 v11, 0x30f1

    invoke-direct {v5, v11}, Lcom/hz/net/Message;-><init>(I)V

    .line 50
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 55
    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 64
    .local v7, "rs":B
    if-gez v7, :cond_2

    .line 65
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 69
    :cond_2
    new-instance v6, Lcom/hz/core/NewArenaReward;

    invoke-direct {v6}, Lcom/hz/core/NewArenaReward;-><init>()V

    .line 70
    .local v6, "newArenaReward":Lcom/hz/core/NewArenaReward;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v6, Lcom/hz/core/NewArenaReward;->allList:Ljava/util/Vector;

    .line 72
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    .line 77
    .local v9, "size":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v9, :cond_3

    .line 138
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->createNewArenaRewardUI(Lcom/hz/core/NewArenaReward;)V

    goto :goto_0

    .line 78
    :cond_3
    new-instance v10, Lcom/hz/core/NewArenaReward;

    invoke-direct {v10}, Lcom/hz/core/NewArenaReward;-><init>()V

    .line 79
    .local v10, "tempNewArenaReward":Lcom/hz/core/NewArenaReward;
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v10, Lcom/hz/core/NewArenaReward;->rwId:I

    .line 80
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    iput v11, v10, Lcom/hz/core/NewArenaReward;->rwTotalScore:I

    .line 81
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-byte v11, v10, Lcom/hz/core/NewArenaReward;->rwState:B

    .line 83
    invoke-virtual {v5}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 90
    .local v1, "isHasReward":Z
    if-eqz v1, :cond_4

    .line 93
    :try_start_0
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 99
    .local v8, "rwSize":B
    if-lez v8, :cond_4

    .line 100
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 105
    .local v3, "itemnum":B
    if-lez v3, :cond_6

    .line 106
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v10, Lcom/hz/core/NewArenaReward;->rwItemList:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-lt v4, v3, :cond_5

    .line 135
    .end local v3    # "itemnum":B
    .end local v4    # "j":I
    .end local v8    # "rwSize":B
    :cond_4
    :goto_3
    iget-object v11, v6, Lcom/hz/core/NewArenaReward;->allList:Ljava/util/Vector;

    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .restart local v3    # "itemnum":B
    .restart local v4    # "j":I
    .restart local v8    # "rwSize":B
    :cond_5
    :try_start_1
    new-instance v2, Lcom/hz/core/Item;

    invoke-direct {v2}, Lcom/hz/core/Item;-><init>()V

    .line 109
    .local v2, "item":Lcom/hz/core/Item;
    invoke-static {v2, v5}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 110
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-short v11, v2, Lcom/hz/core/Item;->quantity:S

    .line 113
    iget-short v11, v2, Lcom/hz/core/Item;->durMax:S

    iput-short v11, v2, Lcom/hz/core/Item;->durability:S

    .line 115
    iget-object v11, v10, Lcom/hz/core/NewArenaReward;->rwItemList:Ljava/util/Vector;

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 118
    .end local v2    # "item":Lcom/hz/core/Item;
    .end local v4    # "j":I
    :cond_6
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    iput-short v11, v10, Lcom/hz/core/NewArenaReward;->rwMoney1:S

    .line 119
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    iput-short v11, v10, Lcom/hz/core/NewArenaReward;->rwMoney2:S

    .line 120
    invoke-virtual {v5}, Lcom/hz/net/Message;->getShort()S

    move-result v11

    iput-short v11, v10, Lcom/hz/core/NewArenaReward;->rwMoney3:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 128
    .end local v3    # "itemnum":B
    .end local v8    # "rwSize":B
    :catch_0
    move-exception v11

    goto :goto_3
.end method


# virtual methods
.method public doGetScoreReward(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;)V
    .locals 17
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "gw"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 236
    .end local p2    # "gw":Lcom/hz/gui/GWidget;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local p2    # "gw":Lcom/hz/gui/GWidget;
    :cond_1
    new-instance v8, Lcom/hz/net/Message;

    const/16 v12, 0x30f0

    invoke-direct {v8, v12}, Lcom/hz/net/Message;-><init>(I)V

    .line 156
    .local v8, "msg":Lcom/hz/net/Message;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hz/core/NewArenaReward;->rwId:I

    invoke-virtual {v8, v12}, Lcom/hz/net/Message;->putInt(I)V

    .line 157
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 161
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 162
    if-eqz v8, :cond_0

    .line 167
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 169
    .local v9, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v9, :cond_0

    .line 174
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 178
    .local v10, "rs":B
    if-gez v10, :cond_2

    .line 179
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 184
    .local v11, "rsReturnSize":B
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 185
    .local v4, "itemnum":B
    if-lez v4, :cond_5

    .line 187
    const/4 v12, 0x2

    :try_start_0
    invoke-static {v8, v12}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "itemMsg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Nh\u1eadn \u0111\u01b0\u1ee3c: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 189
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput-byte v12, v0, Lcom/hz/core/NewArenaReward;->rwState:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "itemMsg":Ljava/lang/String;
    :goto_1
    move-object/from16 v12, p2

    .line 218
    check-cast v12, Lcom/hz/gui/GLinePanel;

    const/16 v13, 0x44c5

    invoke-virtual {v12, v13}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GLabel;

    .line 219
    .local v1, "gl":Lcom/hz/gui/GLabel;
    if-eqz v1, :cond_3

    .line 221
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/hz/gui/GLabel;->setShow(Z)V

    :cond_3
    move-object/from16 v12, p2

    .line 224
    check-cast v12, Lcom/hz/gui/GLinePanel;

    const/16 v13, 0x44cc

    invoke-virtual {v12, v13}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .end local v1    # "gl":Lcom/hz/gui/GLabel;
    check-cast v1, Lcom/hz/gui/GLabel;

    .line 225
    .restart local v1    # "gl":Lcom/hz/gui/GLabel;
    if-eqz v1, :cond_4

    .line 227
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/hz/gui/GLabel;->setShow(Z)V

    .line 230
    :cond_4
    check-cast p2, Lcom/hz/gui/GLinePanel;

    .end local p2    # "gw":Lcom/hz/gui/GWidget;
    const/16 v12, 0x44c6

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/hz/gui/GLinePanel;->getJavaChildByEvent(I)Lcom/hz/gui/GWidget;

    move-result-object v1

    .end local v1    # "gl":Lcom/hz/gui/GLabel;
    check-cast v1, Lcom/hz/gui/GLabel;

    .line 231
    .restart local v1    # "gl":Lcom/hz/gui/GLabel;
    if-eqz v1, :cond_0

    .line 233
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/hz/gui/GLabel;->setShow(Z)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "gl":Lcom/hz/gui/GLabel;
    .restart local p2    # "gw":Lcom/hz/gui/GWidget;
    :cond_5
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 198
    .local v5, "money1":I
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 199
    .local v6, "money2":I
    invoke-virtual {v8}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 204
    .local v7, "money3":I
    const-string v12, "Ch\u00fac m\u1eebng nh\u1eadn: V\u00e0ng %U, L\u00e1 %U, \u0110\u1ed3ng %U"

    .line 205
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/NewArenaReward;->rwMoney1:S

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const v16, 0xff00

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 206
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/NewArenaReward;->rwMoney2:S

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const v16, 0xff00

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 207
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/hz/core/NewArenaReward;->rwMoney3:S

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const v16, 0xff00

    invoke-static/range {v15 .. v16}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 204
    invoke-static {v12, v13}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "info":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 211
    iput v5, v9, Lcom/hz/actor/Player;->money1:I

    .line 212
    iput v6, v9, Lcom/hz/actor/Player;->money2:I

    .line 213
    iput v7, v9, Lcom/hz/actor/Player;->money3:I

    goto/16 :goto_1

    .line 190
    .end local v2    # "info":Ljava/lang/String;
    .end local v5    # "money1":I
    .end local v6    # "money2":I
    .end local v7    # "money3":I
    :catch_0
    move-exception v12

    goto/16 :goto_1
.end method

.method public getNewArenaReward(I)Lcom/hz/core/NewArenaReward;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/hz/core/NewArenaReward;->allList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/NewArenaReward;->allList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/hz/core/NewArenaReward;->allList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/hz/core/NewArenaReward;->allList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/NewArenaReward;

    goto :goto_0
.end method
