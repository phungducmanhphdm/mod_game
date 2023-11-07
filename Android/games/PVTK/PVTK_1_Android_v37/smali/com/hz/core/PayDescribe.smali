.class public Lcom/hz/core/PayDescribe;
.super Ljava/lang/Object;
.source "PayDescribe.java"


# static fields
.field public static final PAYDESCRIBE_CANGET:B = 0x1t

.field public static final PAYDESCRIBE_HASGET:B = 0x2t

.field public static final PAYDESCRIBE_NOT_REACH:B = 0x3t


# instance fields
.field public achieveID:I

.field public achieveMoney:I

.field public achievementInfo:Ljava/util/Vector;

.field public bottomDesc:Ljava/lang/String;

.field public category:B

.field public chargeMoney:I

.field public count:I

.field public exp:I

.field public gainValue:I

.field public iscanType:B

.field public item:Lcom/hz/core/Item;

.field public item1:Lcom/hz/core/Item;

.field public item2:Lcom/hz/core/Item;

.field public itemType:Ljava/util/Vector;

.field public itemfalsh:Ljava/util/Vector;

.field public mypet:Lcom/hz/actor/MyPet;

.field public paydescribeList:Ljava/util/Vector;

.field public reqLevel:B

.field public topDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPayDesList(Lcom/hz/ui/UIHandler;)V
    .locals 6
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-static {}, Lcom/hz/main/MsgHandler;->createPayDescribe()Lcom/hz/net/Message;

    move-result-object v1

    .line 146
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 156
    .local v0, "flag":Z
    if-eqz v0, :cond_3

    .line 157
    invoke-static {v1}, Lcom/hz/core/PayDescribe;->processPayDes(Lcom/hz/net/Message;)Lcom/hz/core/PayDescribe;

    move-result-object v2

    .line 159
    .local v2, "payDescObject":Lcom/hz/core/PayDescribe;
    if-eqz p0, :cond_2

    .line 160
    invoke-static {p0}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v3

    .line 161
    .local v3, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v3, v2}, Lcom/hz/ui/UIObject;->setPaydescribe(Lcom/hz/core/PayDescribe;)V

    .line 164
    invoke-static {p0, v5, v5}, Lcom/hz/ui/UIHandler;->updateDataToPayDescribe(Lcom/hz/ui/UIHandler;IZ)V

    goto :goto_0

    .line 167
    .end local v3    # "uiObj":Lcom/hz/ui/UIObject;
    :cond_2
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createPayDescribeUI(Lcom/hz/core/PayDescribe;)V

    goto :goto_0

    .line 171
    .end local v2    # "payDescObject":Lcom/hz/core/PayDescribe;
    :cond_3
    invoke-static {}, Lcom/hz/ui/UIHandler;->createPayInfoListUI()V

    goto :goto_0
.end method

.method public static processPayDes(Lcom/hz/net/Message;)Lcom/hz/core/PayDescribe;
    .locals 11
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 62
    new-instance v4, Lcom/hz/core/PayDescribe;

    invoke-direct {v4}, Lcom/hz/core/PayDescribe;-><init>()V

    .line 63
    .local v4, "paydesc":Lcom/hz/core/PayDescribe;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->itemType:Ljava/util/Vector;

    .line 64
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->itemfalsh:Ljava/util/Vector;

    .line 65
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->achievementInfo:Ljava/util/Vector;

    .line 69
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/core/PayDescribe;->chargeMoney:I

    .line 70
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->topDesc:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->bottomDesc:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 75
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 76
    sget-object v9, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {p0, v9}, Lcom/hz/actor/MyPet;->fromBytesInfo(Lcom/hz/net/Message;Lcom/hz/actor/Player;)Lcom/hz/actor/MyPet;

    move-result-object v9

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->mypet:Lcom/hz/actor/MyPet;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 84
    :try_start_0
    new-instance v9, Lcom/hz/core/Item;

    invoke-direct {v9}, Lcom/hz/core/Item;-><init>()V

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->item1:Lcom/hz/core/Item;

    .line 85
    iget-object v9, v4, Lcom/hz/core/PayDescribe;->item1:Lcom/hz/core/Item;

    invoke-static {v9, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 86
    iget-object v9, v4, Lcom/hz/core/PayDescribe;->item1:Lcom/hz/core/Item;

    iget-object v10, v4, Lcom/hz/core/PayDescribe;->item1:Lcom/hz/core/Item;

    iget-short v10, v10, Lcom/hz/core/Item;->durMax:S

    iput-short v10, v9, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 95
    :try_start_1
    new-instance v9, Lcom/hz/core/Item;

    invoke-direct {v9}, Lcom/hz/core/Item;-><init>()V

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->item2:Lcom/hz/core/Item;

    .line 96
    iget-object v9, v4, Lcom/hz/core/PayDescribe;->item2:Lcom/hz/core/Item;

    invoke-static {v9, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 97
    iget-object v9, v4, Lcom/hz/core/PayDescribe;->item2:Lcom/hz/core/Item;

    iget-object v10, v4, Lcom/hz/core/PayDescribe;->item2:Lcom/hz/core/Item;

    iget-short v10, v10, Lcom/hz/core/Item;->durMax:S

    iput-short v10, v9, Lcom/hz/core/Item;->durability:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 102
    .local v7, "rs":B
    if-eqz v7, :cond_3

    .line 103
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v7, :cond_4

    .line 112
    .end local v3    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/core/PayDescribe;->achieveMoney:I

    .line 113
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v4, Lcom/hz/core/PayDescribe;->reqLevel:B

    .line 115
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/core/PayDescribe;->count:I

    .line 116
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/core/PayDescribe;->exp:I

    .line 118
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    .line 119
    .local v8, "size":I
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v4, Lcom/hz/core/PayDescribe;->paydescribeList:Ljava/util/Vector;

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-lt v1, v8, :cond_5

    .line 140
    return-object v4

    .line 104
    .end local v1    # "i":I
    .end local v8    # "size":I
    .restart local v3    # "j":I
    :cond_4
    new-instance v5, Lcom/hz/core/PayDescribe;

    invoke-direct {v5}, Lcom/hz/core/PayDescribe;-><init>()V

    .line 105
    .local v5, "paydesc3":Lcom/hz/core/PayDescribe;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v5, Lcom/hz/core/PayDescribe;->achieveID:I

    .line 106
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v5, Lcom/hz/core/PayDescribe;->category:B

    .line 107
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v5, Lcom/hz/core/PayDescribe;->gainValue:I

    .line 108
    iget-object v9, v4, Lcom/hz/core/PayDescribe;->achievementInfo:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    .end local v3    # "j":I
    .end local v5    # "paydesc3":Lcom/hz/core/PayDescribe;
    .restart local v1    # "i":I
    .restart local v8    # "size":I
    :cond_5
    new-instance v6, Lcom/hz/core/PayDescribe;

    invoke-direct {v6}, Lcom/hz/core/PayDescribe;-><init>()V

    .line 124
    .local v6, "paydescribedata":Lcom/hz/core/PayDescribe;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v6, Lcom/hz/core/PayDescribe;->iscanType:B

    .line 125
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v9

    iput v9, v6, Lcom/hz/core/PayDescribe;->achieveID:I

    .line 126
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v9

    iput-byte v9, v6, Lcom/hz/core/PayDescribe;->category:B

    .line 127
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 128
    .local v2, "ishasitem":Z
    if-eqz v2, :cond_6

    .line 129
    new-instance v9, Lcom/hz/core/Item;

    invoke-direct {v9}, Lcom/hz/core/Item;-><init>()V

    iput-object v9, v6, Lcom/hz/core/PayDescribe;->item:Lcom/hz/core/Item;

    .line 130
    iget-object v9, v6, Lcom/hz/core/PayDescribe;->item:Lcom/hz/core/Item;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v10

    iput-short v10, v9, Lcom/hz/core/Item;->quantity:S

    .line 132
    :try_start_2
    iget-object v9, v6, Lcom/hz/core/PayDescribe;->item:Lcom/hz/core/Item;

    invoke-static {v9, p0}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 133
    iget-object v9, v6, Lcom/hz/core/PayDescribe;->item:Lcom/hz/core/Item;

    iget-object v10, v6, Lcom/hz/core/PayDescribe;->item:Lcom/hz/core/Item;

    iget-short v10, v10, Lcom/hz/core/Item;->durMax:S

    iput-short v10, v9, Lcom/hz/core/Item;->durability:S
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :cond_6
    :goto_4
    iget-object v9, v4, Lcom/hz/core/PayDescribe;->paydescribeList:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 134
    :catch_0
    move-exception v9

    goto :goto_4

    .line 98
    .end local v1    # "i":I
    .end local v2    # "ishasitem":Z
    .end local v6    # "paydescribedata":Lcom/hz/core/PayDescribe;
    .end local v7    # "rs":B
    .end local v8    # "size":I
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 87
    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public isCanGet()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    iget-byte v1, p0, Lcom/hz/core/PayDescribe;->iscanType:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasGet()Z
    .locals 2

    .prologue
    .line 51
    iget-byte v0, p0, Lcom/hz/core/PayDescribe;->iscanType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotReach()Z
    .locals 2

    .prologue
    .line 56
    iget-byte v0, p0, Lcom/hz/core/PayDescribe;->iscanType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
