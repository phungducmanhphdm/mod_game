.class public Lcom/hz/core/ActorLoginReward;
.super Ljava/lang/Object;
.source "ActorLoginReward.java"


# instance fields
.field public actorLoginRewardList:Ljava/util/Vector;

.field public isAcquire:Z

.field public isGet:Z

.field public itemList:Ljava/util/Vector;

.field public reqDay:I

.field public reqLevel:I

.field public rewItemSize:I

.field public rewardmoney2:I

.field public rewardmoney3:I

.field public sumDay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doActorLoginRewardGet(Lcom/hz/ui/UIHandler;Lcom/hz/core/ActorLoginReward;)V
    .locals 12
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "actorLoginReward"    # Lcom/hz/core/ActorLoginReward;

    .prologue
    .line 222
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 227
    .local v5, "player":Lcom/hz/actor/Player;
    if-eqz v5, :cond_0

    .line 231
    new-instance v3, Lcom/hz/net/Message;

    const/16 v10, 0x2b41

    invoke-direct {v3, v10}, Lcom/hz/net/Message;-><init>(I)V

    .line 233
    .local v3, "msg":Lcom/hz/net/Message;
    iget v10, p1, Lcom/hz/core/ActorLoginReward;->reqDay:I

    invoke-virtual {v3, v10}, Lcom/hz/net/Message;->putInt(I)V

    .line 235
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 238
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_0

    .line 242
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 249
    .local v0, "allsize":S
    if-gez v0, :cond_2

    .line 250
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 260
    .local v7, "size":I
    if-lez v7, :cond_3

    .line 261
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 263
    .local v4, "num":B
    const-string v8, ""

    .line 264
    .local v8, "strGainItem":Ljava/lang/String;
    if-lez v4, :cond_4

    .line 268
    const/4 v10, 0x2

    invoke-static {v3, v10}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    .end local v4    # "num":B
    .end local v8    # "strGainItem":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v9

    .line 294
    .local v9, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v9, :cond_0

    .line 298
    invoke-static {}, Lcom/hz/core/ActorLoginReward;->doActorLoginRewardList()Lcom/hz/core/ActorLoginReward;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hz/ui/UIObject;->setActorloginreward(Lcom/hz/core/ActorLoginReward;)V

    .line 299
    invoke-static {p0}, Lcom/hz/ui/UIHandler;->updteDataToActorLoginReward(Lcom/hz/ui/UIHandler;)V

    .line 301
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 271
    .end local v9    # "uiObj":Lcom/hz/ui/UIObject;
    .restart local v4    # "num":B
    .restart local v8    # "strGainItem":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 272
    .local v1, "money2":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 277
    .local v2, "money3":I
    const/16 v10, 0xc

    invoke-virtual {v5, v10, v1}, Lcom/hz/actor/Player;->addValue(II)V

    .line 278
    const/16 v10, 0xd

    invoke-virtual {v5, v10, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 284
    if-lez v1, :cond_5

    .line 285
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "L\u00e1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_5
    if-lez v2, :cond_3

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "B\u1ea1c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static doActorLoginRewardList()Lcom/hz/core/ActorLoginReward;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 40
    new-instance v4, Lcom/hz/net/Message;

    const/16 v9, 0x2b3f

    invoke-direct {v4, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 42
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v0, v8

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 46
    if-nez v4, :cond_2

    move-object v0, v8

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Lcom/hz/core/ActorLoginReward;

    invoke-direct {v0}, Lcom/hz/core/ActorLoginReward;-><init>()V

    .line 52
    .local v0, "actorLoginReward":Lcom/hz/core/ActorLoginReward;
    invoke-virtual {v4}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 58
    .local v2, "allsize":S
    if-gez v2, :cond_3

    .line 59
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    move-object v0, v8

    .line 60
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 71
    .local v6, "size":I
    if-lez v6, :cond_0

    .line 72
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 73
    .local v7, "sumday":I
    iput v7, v0, Lcom/hz/core/ActorLoginReward;->sumDay:I

    .line 75
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 80
    .local v5, "nowsie":B
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v0, Lcom/hz/core/ActorLoginReward;->actorLoginRewardList:Ljava/util/Vector;

    .line 82
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 83
    invoke-static {v4}, Lcom/hz/core/ActorLoginReward;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/ActorLoginReward;

    move-result-object v1

    .line 84
    .local v1, "actorLoginRewardData":Lcom/hz/core/ActorLoginReward;
    if-nez v1, :cond_4

    .line 82
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_4
    iget-object v8, v0, Lcom/hz/core/ActorLoginReward;->actorLoginRewardList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static doActorLoginRewardMenu(Lcom/hz/core/ActorLoginReward;Lcom/hz/ui/UIHandler;)V
    .locals 7
    .param p0, "actorLoginReward"    # Lcom/hz/core/ActorLoginReward;
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 308
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 313
    .local v6, "menuList":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 315
    .local v2, "eventList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 317
    iget-boolean v0, p0, Lcom/hz/core/ActorLoginReward;->isGet:Z

    if-eqz v0, :cond_2

    .line 318
    const/16 v0, 0x43

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c31

    invoke-static {v6, v0, v2, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/ActorLoginReward;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x2f

    move-object v5, p1

    .line 327
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/ActorLoginReward;
    .locals 12
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 97
    if-nez p0, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v0, Lcom/hz/core/ActorLoginReward;

    invoke-direct {v0}, Lcom/hz/core/ActorLoginReward;-><init>()V

    .line 103
    .local v0, "actorLoginReward":Lcom/hz/core/ActorLoginReward;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 105
    .local v6, "reqlevel":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    .line 106
    .local v7, "reqnum":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 107
    .local v2, "isGet":Z
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 109
    .local v1, "isAcquire":Z
    iput v6, v0, Lcom/hz/core/ActorLoginReward;->reqLevel:I

    .line 111
    iput v7, v0, Lcom/hz/core/ActorLoginReward;->reqDay:I

    .line 112
    iput-boolean v2, v0, Lcom/hz/core/ActorLoginReward;->isGet:Z

    .line 113
    iput-boolean v1, v0, Lcom/hz/core/ActorLoginReward;->isAcquire:Z

    .line 119
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 121
    .local v8, "rewItemSize":B
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v0, Lcom/hz/core/ActorLoginReward;->itemList:Ljava/util/Vector;

    .line 126
    iput v8, v0, Lcom/hz/core/ActorLoginReward;->rewItemSize:I

    .line 128
    if-lez v8, :cond_4

    .line 129
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v8, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v3

    .line 136
    .local v3, "ishasRewItem":Z
    if-eqz v3, :cond_2

    .line 137
    invoke-static {p0}, Lcom/hz/core/ActorLoginReward;->fromBytesLogicRewardItem(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v4

    .line 138
    .local v4, "item":Lcom/hz/core/Item;
    if-nez v4, :cond_3

    .line 129
    .end local v4    # "item":Lcom/hz/core/Item;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    .restart local v4    # "item":Lcom/hz/core/Item;
    :cond_3
    iget-object v11, v0, Lcom/hz/core/ActorLoginReward;->itemList:Ljava/util/Vector;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 145
    .end local v3    # "ishasRewItem":Z
    .end local v4    # "item":Lcom/hz/core/Item;
    .end local v5    # "j":I
    :cond_4
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 146
    .local v9, "rewmoney2":I
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v10

    .line 147
    .local v10, "rewmoney3":I
    iput v9, v0, Lcom/hz/core/ActorLoginReward;->rewardmoney2:I

    .line 148
    iput v10, v0, Lcom/hz/core/ActorLoginReward;->rewardmoney3:I

    goto :goto_0
.end method

.method public static fromBytesLogicRewardItem(Lcom/hz/net/Message;)Lcom/hz/core/Item;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    .line 166
    :cond_0
    new-instance v1, Lcom/hz/core/Item;

    invoke-direct {v1}, Lcom/hz/core/Item;-><init>()V

    .line 169
    .local v1, "item":Lcom/hz/core/Item;
    :try_start_0
    invoke-static {v1, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 170
    iget-short v2, v1, Lcom/hz/core/Item;->durMax:S

    iput-short v2, v1, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 179
    .local v0, "count":S
    iput-short v0, v1, Lcom/hz/core/Item;->quantity:S

    goto :goto_0

    .line 171
    .end local v0    # "count":S
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 193
    const-string v2, ""

    .line 195
    .local v2, "strInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/ActorLoginReward;->itemList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/hz/core/ActorLoginReward;->itemList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 201
    iget v3, p0, Lcom/hz/core/ActorLoginReward;->rewardmoney2:I

    if-lez v3, :cond_0

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/hz/core/ActorLoginReward;->rewardmoney2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "L\u00e1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    :cond_0
    iget v3, p0, Lcom/hz/core/ActorLoginReward;->rewardmoney3:I

    if-lez v3, :cond_1

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/hz/core/ActorLoginReward;->rewardmoney3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "B\u1ea1c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_1
    const-string v3, "T\u1edbi c\u1ea5p %U, li\u00ean t\u1ee5c \u0111\u0103ng nh\u1eadp %U ng\u00e0y,\n c\u00f3 th\u1ec3 nh\u1eadn \u0111\u01b0\u1ee3c %U"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/ActorLoginReward;->reqLevel:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/ActorLoginReward;->reqDay:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    iget-boolean v3, p0, Lcom/hz/core/ActorLoginReward;->isAcquire:Z

    if-eqz v3, :cond_2

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd3

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/hz/core/ActorLoginReward;->reqDay:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(/cff0000\u0110\u00e3 nh\u1eadn /p)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    :cond_2
    return-object v2

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/hz/core/ActorLoginReward;->itemList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/Item;

    .line 197
    .local v1, "item":Lcom/hz/core/Item;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hz/core/Item;->getRewardDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
