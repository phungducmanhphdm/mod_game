.class public Lcom/hz/core/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field public armyStrength:I

.field public cityBranch:B

.field public cityName:Ljava/lang/String;

.field public cityScaleName:Ljava/lang/String;

.field public citySign:Ljava/lang/String;

.field public cityStatus:B

.field public cityStatusName:Ljava/lang/String;

.field public icon1:I

.field public icon2:I

.field public icon3:I

.field public isOtherPlayer:Z

.field public masterCountryName:Ljava/lang/String;

.field public masterId:I

.field public masterLevel:B

.field public masterName:Ljava/lang/String;

.field public masterUnionName:Ljava/lang/String;

.field public money1:I

.field public money2:I

.field public money3:I

.field public prosperityDegree:I

.field public race:B

.field sprite:Lcom/hz/sprite/GameSprite;

.field public storageNum:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/hz/core/City;->isOtherPlayer:Z

    .line 27
    iput-byte v1, p0, Lcom/hz/core/City;->race:B

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->cityScaleName:Ljava/lang/String;

    .line 33
    iput-byte v1, p0, Lcom/hz/core/City;->cityBranch:B

    .line 35
    iput-byte v1, p0, Lcom/hz/core/City;->cityStatus:B

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->cityStatusName:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/hz/core/City;->prosperityDegree:I

    .line 39
    iput v1, p0, Lcom/hz/core/City;->armyStrength:I

    .line 42
    iput v1, p0, Lcom/hz/core/City;->money1:I

    .line 43
    iput v1, p0, Lcom/hz/core/City;->money2:I

    .line 44
    iput v1, p0, Lcom/hz/core/City;->money3:I

    .line 46
    iput-byte v1, p0, Lcom/hz/core/City;->storageNum:B

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->cityName:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->citySign:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/hz/core/City;->icon1:I

    .line 53
    iput v1, p0, Lcom/hz/core/City;->icon2:I

    .line 54
    iput v1, p0, Lcom/hz/core/City;->icon3:I

    .line 55
    iput-byte v1, p0, Lcom/hz/core/City;->masterLevel:B

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->masterName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->masterCountryName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/City;->masterUnionName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static doCityMenuButton(ILcom/hz/core/City;Lcom/hz/ui/UIHandler;)V
    .locals 4
    .param p0, "eventType"    # I
    .param p1, "city"    # Lcom/hz/core/City;
    .param p2, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v3, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    .line 250
    .local v0, "isSuccess":Z
    packed-switch p0, :pswitch_data_0

    .line 273
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 275
    invoke-static {p2, p1, v3}, Lcom/hz/ui/UIHandler;->updateCityInfoUI(Lcom/hz/ui/UIHandler;Lcom/hz/core/City;Z)V

    goto :goto_0

    .line 252
    :pswitch_0
    invoke-virtual {p1}, Lcom/hz/core/City;->doCityNameModify()Z

    move-result v0

    .line 253
    goto :goto_1

    .line 256
    :pswitch_1
    invoke-virtual {p1}, Lcom/hz/core/City;->doCitySignModify()Z

    move-result v0

    .line 257
    goto :goto_1

    .line 260
    :pswitch_2
    invoke-virtual {p1}, Lcom/hz/core/City;->doGetMoney()Z

    move-result v0

    .line 261
    goto :goto_1

    .line 265
    :pswitch_3
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/hz/ui/UIObject;->setStatusBit(ZI)V

    .line 267
    invoke-virtual {p2}, Lcom/hz/ui/UIHandler;->getFrameContainer()Lcom/hz/gui/GContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/core/MessageFrame;->clearUIMsgFrame(Lcom/hz/gui/GContainer;)V

    .line 269
    :cond_2
    invoke-virtual {p1}, Lcom/hz/core/City;->getMasterId()I

    move-result v1

    invoke-static {v1}, Lcom/hz/core/City;->doEnterCity(I)Z

    goto :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2b84
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static doEnterCity(I)Z
    .locals 3
    .param p0, "targetId"    # I

    .prologue
    .line 233
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/hz/main/MsgHandler;->createJumpCityMessage(II)Lcom/hz/net/Message;

    move-result-object v0

    .line 234
    .local v0, "msg":Lcom/hz/net/Message;
    const/16 v1, 0x5a

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;II)Z

    move-result v1

    return v1
.end method

.method public static doViewCityInfo(I)Lcom/hz/core/City;
    .locals 3
    .param p0, "modelID"    # I

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-static {p0}, Lcom/hz/main/MsgHandler;->createBrowseCityInfoMsg(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 218
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 222
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 226
    invoke-static {v0}, Lcom/hz/core/City;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/City;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/City;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 79
    new-instance v0, Lcom/hz/core/City;

    invoke-direct {v0}, Lcom/hz/core/City;-><init>()V

    .line 81
    .local v0, "city":Lcom/hz/core/City;
    :try_start_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->cityName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->cityScaleName:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->cityStatusName:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->citySign:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->masterId:I

    .line 92
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->masterName:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/City;->masterLevel:B

    .line 94
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->icon1:I

    .line 95
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->icon2:I

    .line 96
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->icon3:I

    .line 98
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->prosperityDegree:I

    .line 99
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->armyStrength:I

    .line 101
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->masterCountryName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/City;->masterUnionName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->money1:I

    .line 106
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->money2:I

    .line 107
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/City;->money3:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public doCityNameModify()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 164
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v5

    .line 169
    :cond_1
    const/16 v0, 0xb

    .line 170
    const-string v1, "S\u1eeda t\u00ean th\u00e0nh"

    const-string v2, "T\u00ean th\u00e0nh"

    iget-object v3, p0, Lcom/hz/core/City;->cityName:Ljava/lang/String;

    const/16 v4, 0x14

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 171
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 172
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-eqz v7, :cond_0

    .line 175
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "newCityName":Ljava/lang/String;
    iget v0, p0, Lcom/hz/core/City;->masterId:I

    invoke-static {v0, v9}, Lcom/hz/main/MsgHandler;->createModifyCityNameMsg(ILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v8

    .line 178
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iput-object v9, p0, Lcom/hz/core/City;->cityName:Ljava/lang/String;

    .line 184
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public doCitySignModify()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 192
    const/16 v0, 0xc

    .line 193
    const-string v1, "S\u1eeda k\u00ed t\u00ean th\u00e0nh"

    const-string v2, "N\u1ed9i dung k\u00ed t\u00ean"

    iget-object v3, p0, Lcom/hz/core/City;->citySign:Ljava/lang/String;

    const/16 v4, 0x64

    .line 192
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 194
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 195
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-nez v7, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v5

    .line 198
    :cond_1
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "newCitySign":Ljava/lang/String;
    iget v0, p0, Lcom/hz/core/City;->masterId:I

    invoke-static {v0, v9}, Lcom/hz/main/MsgHandler;->createModifyCitySignMsg(ILjava/lang/String;)Lcom/hz/net/Message;

    move-result-object v8

    .line 201
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iput-object v9, p0, Lcom/hz/core/City;->citySign:Ljava/lang/String;

    .line 207
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public doGetMoney()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 124
    iget v7, p0, Lcom/hz/core/City;->money1:I

    if-nez v7, :cond_1

    iget v7, p0, Lcom/hz/core/City;->money2:I

    if-nez v7, :cond_1

    iget v7, p0, Lcom/hz/core/City;->money3:I

    if-nez v7, :cond_1

    .line 125
    const-string v7, "Kim Kh\u1ed1 \u0111\u00e3 h\u1ebft ti\u1ec1n \u0111\u1ec3 l\u1ea5y!"

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 154
    :cond_0
    :goto_0
    return v6

    .line 129
    :cond_1
    iget v7, p0, Lcom/hz/core/City;->masterId:I

    invoke-static {v7}, Lcom/hz/main/MsgHandler;->createGetCityMoneyMsg(I)Lcom/hz/net/Message;

    move-result-object v3

    .line 130
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 135
    .local v5, "reciveMsg":Lcom/hz/net/Message;
    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 140
    .local v0, "_money1":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 141
    .local v1, "_money2":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 143
    .local v2, "_money3":I
    iget v6, p0, Lcom/hz/core/City;->money1:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/hz/core/City;->money1:I

    .line 144
    iget v6, p0, Lcom/hz/core/City;->money2:I

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/hz/core/City;->money2:I

    .line 145
    iget v6, p0, Lcom/hz/core/City;->money3:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/hz/core/City;->money3:I

    .line 147
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 148
    .local v4, "player":Lcom/hz/actor/Player;
    if-eqz v4, :cond_2

    .line 149
    const/16 v6, 0xb

    invoke-virtual {v4, v6, v0}, Lcom/hz/actor/Player;->addValue(II)V

    .line 150
    const/16 v6, 0xc

    invoke-virtual {v4, v6, v1}, Lcom/hz/actor/Player;->addValue(II)V

    .line 151
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v2}, Lcom/hz/actor/Player;->addValue(II)V

    .line 154
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getMasterId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/hz/core/City;->masterId:I

    return v0
.end method

.method public getMasterSprite()Lcom/hz/sprite/GameSprite;
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hz/core/City;->sprite:Lcom/hz/sprite/GameSprite;

    if-nez v0, :cond_0

    .line 73
    iget v0, p0, Lcom/hz/core/City;->icon1:I

    iget v1, p0, Lcom/hz/core/City;->icon2:I

    iget v2, p0, Lcom/hz/core/City;->icon3:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/hz/sprite/GameSprite;->createSpriteByIcon(IIIZ)Lcom/hz/sprite/GameSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/City;->sprite:Lcom/hz/sprite/GameSprite;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/hz/core/City;->sprite:Lcom/hz/sprite/GameSprite;

    return-object v0
.end method
