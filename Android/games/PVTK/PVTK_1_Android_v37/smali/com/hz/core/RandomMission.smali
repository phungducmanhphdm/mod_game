.class public Lcom/hz/core/RandomMission;
.super Lcom/hz/core/Mission;
.source "RandomMission.java"


# static fields
.field public static final STATUS_END_1:B = 0x3t

.field public static final STATUS_END_2:B = 0x4t

.field public static final STATUS_START_1:B = 0x0t

.field public static final STATUS_START_2:B = 0x1t

.field public static final STATUS_WAIT:B = 0x2t

.field public static final TYPE_ITEM:B = 0x1t

.field public static final TYPE_MONSTER:B


# instance fields
.field public maxCount:B

.field public money:I

.field public moneyType:I

.field public myCount:B

.field public objName:Ljava/lang/String;

.field public rItemcount:B

.field public rhaveCount:S

.field public rmissionStatus:B

.field public rmissionTime:J

.field public rmissionType:B

.field public rneedCount:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "id"    # S

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/hz/core/Mission;-><init>(S)V

    .line 37
    return-void
.end method

.method public static doRandomMissionAccept(Lcom/hz/core/Mission;Z)Z
    .locals 10
    .param p0, "_mission"    # Lcom/hz/core/Mission;
    .param p1, "isflash"    # Z

    .prologue
    const/4 v5, 0x0

    .line 207
    move-object v1, p0

    check-cast v1, Lcom/hz/core/RandomMission;

    .line 208
    .local v1, "mission":Lcom/hz/core/RandomMission;
    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v5

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    .line 218
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    const-string v6, "C\u1eadp nh\u1eadt nhi\u1ec7m v\u1ee5 khi\u00eau chi\u1ebfn "

    .line 226
    const-string v7, "C\u00e0i l\u1ea1i nhi\u1ec7m v\u1ee5 c\u00f3 th\u1ec3 l\u1eadp t\u1ee9c nh\u1eadn nhi\u1ec7m v\u1ee5 khi\u00eau chi\u1ebfu m\u1edbi, nh\u01b0ng tr\u1ea3 /cFF0000%U/p, \u0111\u1ed3ng \u00fd kh\u00f4ng? "

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/hz/core/RandomMission;->money:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/hz/core/RandomMission;->moneyType:I

    invoke-static {v9}, Lcom/hz/actor/Player;->getMoneyText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    const/4 v8, 0x3

    .line 222
    invoke-static {v6, v7, v8}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 229
    .local v0, "askResult":I
    const/16 v6, 0x14

    if-eq v0, v6, :cond_0

    .line 234
    iget v6, v1, Lcom/hz/core/RandomMission;->money:I

    invoke-static {v5, v6, v5}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    .end local v0    # "askResult":I
    :cond_2
    new-instance v4, Lcom/hz/net/Message;

    const/16 v6, 0x38c3

    invoke-direct {v4, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 245
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-virtual {v4, p1}, Lcom/hz/net/Message;->putBoolean(Z)V

    .line 247
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_0

    .line 255
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 256
    .local v2, "money1":I
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 261
    .local v3, "money2":I
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput v2, v5, Lcom/hz/actor/Player;->money1:I

    .line 262
    sget-object v5, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput v3, v5, Lcom/hz/actor/Player;->money2:I

    .line 264
    invoke-direct {v1, v4}, Lcom/hz/core/RandomMission;->fromRandomMission(Lcom/hz/net/Message;)V

    .line 265
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static doRandomMissionGiveUp(Lcom/hz/core/Mission;)Z
    .locals 7
    .param p0, "_mission"    # Lcom/hz/core/Mission;

    .prologue
    const/4 v3, 0x0

    .line 274
    move-object v1, p0

    check-cast v1, Lcom/hz/core/RandomMission;

    .line 275
    .local v1, "mission":Lcom/hz/core/RandomMission;
    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v3

    .line 280
    :cond_1
    const/16 v4, 0x1d

    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    const-string v5, "H\u1ee7y nhi\u1ec7m v\u1ee5 khi\u00eau chi\u1ebfnc\u1ea7n \u0111\u1ee3i 15 ph\u00fat m\u1edbi c\u00f3 th\u1ec3 nh\u1eadn m\u1edbi \n(D\u00f9ng Kim Di\u1ec7p c\u00f3 th\u1ec3 l\u1eadp t\u1ee9c c\u1eadp nh\u1eadt)\n"

    .line 285
    const/4 v6, 0x6

    .line 280
    invoke-static {v4, v5, v6}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 286
    .local v0, "ask":I
    const/16 v4, 0x14

    if-eq v0, v4, :cond_0

    .line 290
    new-instance v2, Lcom/hz/net/Message;

    const/16 v4, 0x38c5

    invoke-direct {v2, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 291
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static doRandomMissionInfo()Lcom/hz/core/RandomMission;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 171
    new-instance v1, Lcom/hz/net/Message;

    const/16 v2, 0x38c6

    invoke-direct {v1, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 172
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Lcom/hz/core/RandomMission;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/hz/core/RandomMission;-><init>(S)V

    .line 181
    .local v0, "mission":Lcom/hz/core/RandomMission;
    iget v2, v0, Lcom/hz/core/RandomMission;->setting:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/hz/core/RandomMission;->setting:I

    .line 184
    invoke-direct {v0, v1}, Lcom/hz/core/RandomMission;->fromRandomMission(Lcom/hz/net/Message;)V

    .line 187
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/RandomMission;->moneyType:I

    .line 188
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    iput v2, v0, Lcom/hz/core/RandomMission;->money:I

    .line 189
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v0, Lcom/hz/core/RandomMission;->myCount:B

    .line 190
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    iput-byte v2, v0, Lcom/hz/core/RandomMission;->maxCount:B

    goto :goto_0
.end method

.method public static doRandomMissionSumbit()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 301
    new-instance v0, Lcom/hz/net/Message;

    const/16 v3, 0x38c4

    invoke-direct {v0, v3}, Lcom/hz/net/Message;-><init>(I)V

    .line 302
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 306
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 311
    sget-object v1, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 313
    .local v1, "player":Lcom/hz/actor/Player;
    invoke-static {v1, v2, v0}, Lcom/hz/main/MsgHandler;->processMissionReward(Lcom/hz/actor/Player;ILcom/hz/net/Message;)Ljava/lang/String;

    .line 315
    const-string v2, "Tr\u1ea3 nhi\u1ec7m v\u1ee5 th\u00e0nh c\u00f4ng!"

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 316
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final fromRandomMission(Lcom/hz/net/Message;)V
    .locals 11
    .param p1, "msg"    # Lcom/hz/net/Message;

    .prologue
    const/4 v10, 0x2

    .line 75
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    .line 77
    iget-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    iget-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    iget-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    if-ne v8, v10, :cond_2

    .line 79
    :cond_0
    iget-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    if-ne v8, v10, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/hz/core/RandomMission;->rmissionTime:J

    .line 160
    :cond_1
    return-void

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/RandomMission;->desc:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    iput-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionType:B

    .line 89
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/RandomMission;->objName:Ljava/lang/String;

    .line 91
    const-string v7, ""

    .line 93
    .local v7, "strName":Ljava/lang/String;
    iget-byte v8, p0, Lcom/hz/core/RandomMission;->rmissionType:B

    if-nez v8, :cond_3

    .line 95
    const-string v7, "Ti\u00eau di\u1ec7t"

    .line 100
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/hz/core/RandomMission;->objName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/hz/core/RandomMission;->name:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p0, Lcom/hz/core/RandomMission;->rneedCount:S

    .line 103
    invoke-virtual {p1}, Lcom/hz/net/Message;->getShort()S

    move-result v8

    iput-short v8, p0, Lcom/hz/core/RandomMission;->rhaveCount:S

    .line 106
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/RandomMission;->exp:I

    .line 107
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/RandomMission;->money2:I

    .line 108
    invoke-virtual {p1}, Lcom/hz/net/Message;->getInt()I

    move-result v8

    iput v8, p0, Lcom/hz/core/RandomMission;->money3:I

    .line 124
    const/4 v6, 0x0

    .line 126
    .local v6, "size":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 128
    iput-byte v6, p0, Lcom/hz/core/RandomMission;->rItemcount:B

    .line 130
    if-lez v6, :cond_1

    .line 132
    new-array v8, v6, [Lcom/hz/core/Item;

    iput-object v8, p0, Lcom/hz/core/RandomMission;->rewardItems:[Lcom/hz/core/Item;

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 136
    new-instance v3, Lcom/hz/core/Item;

    invoke-direct {v3}, Lcom/hz/core/Item;-><init>()V

    .line 138
    .local v3, "item":Lcom/hz/core/Item;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 140
    .local v5, "quantity":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v0

    .line 141
    .local v0, "bagIcon":B
    invoke-virtual {p1}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 143
    .local v1, "grade":B
    iput-object v4, v3, Lcom/hz/core/Item;->name:Ljava/lang/String;

    .line 144
    int-to-short v8, v5

    iput-short v8, v3, Lcom/hz/core/Item;->quantity:S

    .line 145
    int-to-short v8, v0

    iput-short v8, v3, Lcom/hz/core/Item;->bagIcon:S

    .line 146
    iput-byte v1, v3, Lcom/hz/core/Item;->grade:B

    .line 148
    iget-object v8, p0, Lcom/hz/core/RandomMission;->rewardItems:[Lcom/hz/core/Item;

    aput-object v3, v8, v2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "bagIcon":B
    .end local v1    # "grade":B
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/hz/core/Item;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "quantity":B
    .end local v6    # "size":B
    :cond_3
    const-string v7, "T\u00ecm"

    goto :goto_0
.end method

.method public static getRandomMissionDoingDesc(Lcom/hz/core/RandomMission;)Ljava/lang/String;
    .locals 9
    .param p0, "mission"    # Lcom/hz/core/RandomMission;

    .prologue
    const v8, 0xffff00

    const/high16 v7, 0xff0000

    .line 326
    if-nez p0, :cond_0

    .line 327
    const-string v5, ""

    .line 360
    :goto_0
    return-object v5

    .line 330
    :cond_0
    iget-byte v5, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    iget-byte v5, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 331
    iget-byte v5, p0, Lcom/hz/core/RandomMission;->rmissionStatus:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 332
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 335
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 339
    .local v3, "strName":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/core/RandomMission;->rmissionType:B

    if-nez v5, :cond_4

    .line 341
    const-string v3, "Ti\u00eau di\u1ec7t"

    .line 346
    :goto_1
    iget-object v4, p0, Lcom/hz/core/RandomMission;->objName:Ljava/lang/String;

    .line 347
    .local v4, "tempStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "M\u1ee5c ti\u00eau: "

    invoke-static {v6, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 350
    invoke-static {v4, v8}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/RandomMission;->rneedCount:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "needCound":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-short v6, p0, Lcom/hz/core/RandomMission;->rhaveCount:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "haveCount":Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 343
    .end local v0    # "haveCount":Ljava/lang/String;
    .end local v1    # "needCound":Ljava/lang/String;
    .end local v4    # "tempStr":Ljava/lang/String;
    :cond_4
    const-string v3, "T\u00ecm"

    goto :goto_1
.end method


# virtual methods
.method public getDetails(Z)Ljava/lang/String;
    .locals 6
    .param p1, "isInPlayer"    # Z

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v1, "sb":Ljava/lang/StringBuffer;
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 55
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_0

    .line 56
    const-string v3, ""

    .line 70
    :goto_0
    return-object v3

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/hz/core/RandomMission;->desc:Ljava/lang/String;

    const-string v4, ""

    if-eq v3, v4, :cond_1

    .line 59
    iget-object v3, p0, Lcom/hz/core/RandomMission;->desc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/hz/core/RandomMission;->submitCondition:[Lcom/hz/core/Condition;

    invoke-virtual {p0, v3}, Lcom/hz/core/RandomMission;->getConditionDesc([Lcom/hz/core/Condition;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "tempStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "M\u1ee5c ti\u00eau: "

    const v5, 0xffff00

    invoke-static {v4, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/hz/core/RandomMission;->getMissionRewardString(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRandomMissionCount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    const-string v0, ""

    .line 389
    .local v0, "strCount":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/hz/core/RandomMission;->myCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/hz/core/RandomMission;->maxCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    return-object v0
.end method

.method public getRandomMissionTime()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 366
    const-string v1, "0 ph\u00fat"

    .line 367
    .local v1, "strTime":Ljava/lang/String;
    iget-wide v2, p0, Lcom/hz/core/RandomMission;->rmissionTime:J

    .line 369
    .local v2, "time":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 370
    div-long v4, v2, v9

    long-to-int v0, v4

    .line 371
    .local v0, "min":I
    rem-long v4, v2, v9

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 372
    add-int/lit8 v0, v0, 0x1

    .line 374
    :cond_0
    invoke-static {v0, v8}, Lcom/hz/common/Utilities;->getTimeStrByMin(IZ)Ljava/lang/String;

    move-result-object v1

    .line 381
    .end local v0    # "min":I
    :cond_1
    const-string v4, "C\u00f2n %U mi m\u1edbi c\u00f3 th\u1ec3 nh\u1eadn l\u1ea1i nhi\u1ec7m v\u1ee5 khi\u00eau chi\u1ebfn \nHo\u1eb7c c\u00f3 th\u1ec3 tr\u1ea3 /cFF0000%U/p l\u1eadp t\u1ee9c c\u1eadp nh\u1eadt nhi\u1ec7m v\u1ee5."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hz/core/RandomMission;->moneyType:I

    invoke-static {v7}, Lcom/hz/actor/Player;->getMoneyText(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/hz/core/RandomMission;->money:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    return-object v1
.end method
