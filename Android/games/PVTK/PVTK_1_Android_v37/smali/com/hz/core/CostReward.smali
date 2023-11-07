.class public Lcom/hz/core/CostReward;
.super Ljava/lang/Object;
.source "CostReward.java"


# static fields
.field public static final COSTREWARD_STATUS_0:B = 0x0t

.field public static final COSTREWARD_STATUS_1:B = 0x1t

.field public static final COSTREWARD_STATUS_2:B = 0x2t

.field public static isCostRewardOPen:Z


# instance fields
.field public count:I

.field public endtime:Ljava/lang/String;

.field public id:I

.field public needmoney:I

.field public needmoneytype:B

.field public rewarItem:Lcom/hz/core/Item;

.field public rewardtype:I

.field public rewardtypeid:I

.field public starttime:Ljava/lang/String;

.field public status:B

.field public totalmoney1:I

.field public totalmoney2:I

.field public totalmoney3:I

.field public typearray:[B

.field public vCostReward:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCostRewardLists()V
    .locals 25

    .prologue
    .line 55
    sget-boolean v23, Lcom/hz/core/CostReward;->isCostRewardOPen:Z

    if-nez v23, :cond_1

    .line 206
    .local v9, "msg":Lcom/hz/net/Message;
    .local v21, "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_0
    :goto_0
    return-void

    .line 60
    .end local v9    # "msg":Lcom/hz/net/Message;
    .end local v21    # "uiHandler":Lcom/hz/ui/UIHandler;
    :cond_1
    const/16 v23, 0xb8

    invoke-static/range {v23 .. v23}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v21

    .line 62
    .restart local v21    # "uiHandler":Lcom/hz/ui/UIHandler;
    new-instance v9, Lcom/hz/net/Message;

    const/16 v23, 0x2b8e

    move/from16 v0, v23

    invoke-direct {v9, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 64
    .restart local v9    # "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 67
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 68
    if-eqz v9, :cond_0

    .line 72
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v14

    .line 77
    .local v14, "rs":B
    if-gez v14, :cond_3

    .line 78
    if-eqz v21, :cond_2

    .line 80
    invoke-virtual/range {v21 .. v21}, Lcom/hz/ui/UIHandler;->close()V

    .line 83
    :cond_2
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 87
    :cond_3
    new-instance v3, Lcom/hz/core/CostReward;

    invoke-direct {v3}, Lcom/hz/core/CostReward;-><init>()V

    .line 88
    .local v3, "costReward":Lcom/hz/core/CostReward;
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    .line 90
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v16

    .line 91
    .local v16, "totalMoney1":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v17

    .line 92
    .local v17, "totalMoney2":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v18

    .line 94
    .local v18, "totalMoney3":I
    move/from16 v0, v16

    iput v0, v3, Lcom/hz/core/CostReward;->totalmoney1:I

    .line 95
    move/from16 v0, v17

    iput v0, v3, Lcom/hz/core/CostReward;->totalmoney2:I

    .line 96
    move/from16 v0, v18

    iput v0, v3, Lcom/hz/core/CostReward;->totalmoney3:I

    .line 98
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/hz/core/CostReward;->starttime:Ljava/lang/String;

    .line 99
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/hz/core/CostReward;->endtime:Ljava/lang/String;

    .line 101
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 110
    .local v2, "allsize":B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v2, :cond_4

    .line 171
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v20

    .line 177
    .local v20, "typesize":B
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/hz/core/CostReward;->typearray:[B

    .line 179
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    move/from16 v0, v20

    if-lt v8, v0, :cond_7

    .line 191
    if-eqz v21, :cond_8

    .line 193
    invoke-virtual/range {v21 .. v21}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v22

    .line 194
    .local v22, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v22, :cond_0

    .line 196
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/hz/ui/UIObject;->setCostReward(Lcom/hz/core/CostReward;)V

    .line 198
    invoke-static/range {v21 .. v21}, Lcom/hz/ui/UIHandler;->updateDataToCostReward(Lcom/hz/ui/UIHandler;)V

    goto/16 :goto_0

    .line 112
    .end local v8    # "j":I
    .end local v20    # "typesize":B
    .end local v22    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_4
    new-instance v4, Lcom/hz/core/CostReward;

    invoke-direct {v4}, Lcom/hz/core/CostReward;-><init>()V

    .line 114
    .local v4, "costRewarddata":Lcom/hz/core/CostReward;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 115
    .local v7, "id":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 116
    .local v11, "needtype":B
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 117
    .local v10, "needmoney":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v12

    .line 118
    .local v12, "rewardtype":I
    if-lez v12, :cond_5

    .line 122
    :try_start_0
    new-instance v23, Lcom/hz/core/Item;

    invoke-direct/range {v23 .. v23}, Lcom/hz/core/Item;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/hz/core/CostReward;->rewarItem:Lcom/hz/core/Item;

    .line 123
    iget-object v0, v4, Lcom/hz/core/CostReward;->rewarItem:Lcom/hz/core/Item;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 127
    iget-object v0, v4, Lcom/hz/core/CostReward;->rewarItem:Lcom/hz/core/Item;

    move-object/from16 v23, v0

    iget-object v0, v4, Lcom/hz/core/CostReward;->rewarItem:Lcom/hz/core/Item;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-short v0, v0, Lcom/hz/core/Item;->durMax:S

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-short v0, v1, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_5
    :goto_3
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 137
    .local v5, "count":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v13

    .line 138
    .local v13, "rewardtypeid":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v15

    .line 140
    .local v15, "status":B
    if-lez v12, :cond_6

    .line 142
    iget-object v0, v4, Lcom/hz/core/CostReward;->rewarItem:Lcom/hz/core/Item;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 144
    iget-object v0, v4, Lcom/hz/core/CostReward;->rewarItem:Lcom/hz/core/Item;

    move-object/from16 v23, v0

    int-to-short v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-short v0, v1, Lcom/hz/core/Item;->quantity:S

    .line 160
    :cond_6
    iput v7, v4, Lcom/hz/core/CostReward;->id:I

    .line 161
    iput-byte v11, v4, Lcom/hz/core/CostReward;->needmoneytype:B

    .line 162
    iput v10, v4, Lcom/hz/core/CostReward;->needmoney:I

    .line 163
    iput v12, v4, Lcom/hz/core/CostReward;->rewardtype:I

    .line 164
    iput v5, v4, Lcom/hz/core/CostReward;->count:I

    .line 165
    iput v13, v4, Lcom/hz/core/CostReward;->rewardtypeid:I

    .line 166
    iput-byte v15, v4, Lcom/hz/core/CostReward;->status:B

    .line 168
    iget-object v0, v3, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 181
    .end local v4    # "costRewarddata":Lcom/hz/core/CostReward;
    .end local v5    # "count":I
    .end local v7    # "id":I
    .end local v10    # "needmoney":I
    .end local v11    # "needtype":B
    .end local v12    # "rewardtype":I
    .end local v13    # "rewardtypeid":I
    .end local v15    # "status":B
    .restart local v8    # "j":I
    .restart local v20    # "typesize":B
    :cond_7
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v19

    .line 187
    .local v19, "type":B
    iget-object v0, v3, Lcom/hz/core/CostReward;->typearray:[B

    move-object/from16 v23, v0

    aput-byte v19, v23, v8

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 204
    .end local v19    # "type":B
    :cond_8
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createCostRewardUI(Lcom/hz/core/CostReward;)V

    goto/16 :goto_0

    .line 129
    .end local v8    # "j":I
    .end local v20    # "typesize":B
    .restart local v4    # "costRewarddata":Lcom/hz/core/CostReward;
    .restart local v7    # "id":I
    .restart local v10    # "needmoney":I
    .restart local v11    # "needtype":B
    .restart local v12    # "rewardtype":I
    :catch_0
    move-exception v23

    goto :goto_3
.end method


# virtual methods
.method public doGetReward(Lcom/hz/core/CostReward;)Z
    .locals 14
    .param p1, "costReward"    # Lcom/hz/core/CostReward;

    .prologue
    .line 216
    const/4 v9, 0x0

    .line 217
    .local v9, "tempnum":I
    const-string v8, ""

    .line 219
    .local v8, "strnum":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v11, p0, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 243
    const/4 v11, 0x2

    if-lt v9, v11, :cond_4

    .line 246
    const/16 v11, 0xf

    invoke-static {v11}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 247
    const-string v12, "Th\u01b0\u1edfng m\u00e3 code %U kh\u00f4ng th\u1ec3 nh\u1eadn c\u00f9ng l\u00fac trong H\u0110, ch\u1ec9 \u0111\u01b0\u1ee3c nh\u1eadn 1, nh\u1eadn th\u01b0\u1edfng?"

    invoke-static {v12, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 246
    invoke-static {v11, v12, v13}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v1

    .line 248
    .local v1, "askResult":I
    const/16 v11, 0xa

    if-eq v1, v11, :cond_4

    .line 249
    const/4 v11, 0x0

    .line 326
    .end local v1    # "askResult":I
    :goto_1
    return v11

    .line 221
    :cond_0
    iget-object v11, p0, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    invoke-virtual {v11, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/CostReward;

    .line 222
    .local v2, "costRewarddata":Lcom/hz/core/CostReward;
    if-nez v2, :cond_2

    .line 219
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_2
    iget v11, p1, Lcom/hz/core/CostReward;->rewardtypeid:I

    iget v12, v2, Lcom/hz/core/CostReward;->rewardtypeid:I

    if-ne v11, v12, :cond_1

    .line 229
    add-int/lit8 v9, v9, 0x1

    .line 230
    invoke-static {v8}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 233
    goto :goto_2

    .line 236
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u3001"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 253
    .end local v2    # "costRewarddata":Lcom/hz/core/CostReward;
    :cond_4
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 254
    .local v5, "player":Lcom/hz/actor/Player;
    if-nez v5, :cond_5

    .line 256
    const/4 v11, 0x0

    goto :goto_1

    .line 260
    :cond_5
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v11

    if-nez v11, :cond_6

    .line 261
    const/4 v11, 0x0

    goto :goto_1

    .line 264
    :cond_6
    new-instance v4, Lcom/hz/net/Message;

    const/16 v11, 0x2b8f

    invoke-direct {v4, v11}, Lcom/hz/net/Message;-><init>(I)V

    .line 266
    .local v4, "msg":Lcom/hz/net/Message;
    iget v11, p1, Lcom/hz/core/CostReward;->id:I

    invoke-virtual {v4, v11}, Lcom/hz/net/Message;->putInt(I)V

    .line 268
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 269
    const/4 v11, 0x0

    goto :goto_1

    .line 271
    :cond_7
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 272
    if-nez v4, :cond_8

    .line 273
    const/4 v11, 0x0

    goto :goto_1

    .line 276
    :cond_8
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 281
    .local v6, "rs":B
    if-gez v6, :cond_9

    .line 282
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 283
    const/4 v11, 0x0

    goto :goto_1

    .line 286
    :cond_9
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 291
    .local v10, "type":I
    const-string v7, ""

    .line 293
    .local v7, "strinfo":Ljava/lang/String;
    if-lez v10, :cond_b

    .line 295
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    invoke-static {v4, v12}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 324
    :cond_a
    :goto_3
    const-string v11, "Nh\u1eadn \u0111\u01b0\u1ee3c: \n%U"

    invoke-static {v11, v7}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 326
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 299
    :cond_b
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 304
    .local v0, "addmoney":I
    const/4 v11, -0x1

    if-ne v11, v10, :cond_c

    .line 306
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "KNB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 308
    iget v11, v5, Lcom/hz/actor/Player;->money1:I

    add-int/2addr v11, v0

    iput v11, v5, Lcom/hz/actor/Player;->money1:I

    goto :goto_3

    .line 310
    :cond_c
    const/4 v11, -0x2

    if-ne v11, v10, :cond_d

    .line 312
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "L\u00e1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 314
    iget v11, v5, Lcom/hz/actor/Player;->money2:I

    add-int/2addr v11, v0

    iput v11, v5, Lcom/hz/actor/Player;->money2:I

    goto :goto_3

    .line 316
    :cond_d
    const/4 v11, -0x3

    if-ne v11, v10, :cond_a

    .line 318
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "B\u1ea1c"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 320
    iget v11, v5, Lcom/hz/actor/Player;->money3:I

    add-int/2addr v11, v0

    iput v11, v5, Lcom/hz/actor/Player;->money3:I

    goto :goto_3
.end method

.method public getFromTypeArrayIsCanGet(B)Z
    .locals 4
    .param p1, "index"    # B

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v3, p0, Lcom/hz/core/CostReward;->typearray:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/CostReward;->typearray:[B

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v2

    .line 353
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/CostReward;->typearray:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/hz/core/CostReward;->typearray:[B

    aget-byte v1, v3, v0

    .line 356
    .local v1, "tempi":B
    if-ne v1, p1, :cond_2

    .line 358
    const/4 v2, 0x1

    goto :goto_0

    .line 353
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getVCostRewardByIndex(I)Lcom/hz/core/CostReward;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/hz/core/CostReward;->vCostReward:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/CostReward;

    goto :goto_0
.end method
