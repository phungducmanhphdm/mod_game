.class public Lcom/hz/core/WarArmy;
.super Ljava/lang/Object;
.source "WarArmy.java"


# static fields
.field public static final STATUS_IS_DEL:B = 0x1t

.field public static final STATUS_IS_REMOVE:B = 0x2t


# instance fields
.field public armyPlayerNum:B

.field public armyStatus:B

.field public buildPos:B

.field public leader:Lcom/hz/actor/Model;

.field public modelList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/WarArmy;
    .locals 5
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 56
    new-instance v3, Lcom/hz/core/WarArmy;

    invoke-direct {v3}, Lcom/hz/core/WarArmy;-><init>()V

    .line 57
    .local v3, "warArmy":Lcom/hz/core/WarArmy;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, v3, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    .line 59
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 60
    .local v2, "size":B
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, v3, Lcom/hz/core/WarArmy;->buildPos:B

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 78
    return-object v3

    .line 64
    :cond_0
    new-instance v1, Lcom/hz/actor/Player;

    invoke-direct {v1}, Lcom/hz/actor/Player;-><init>()V

    .line 65
    .local v1, "player":Lcom/hz/actor/Player;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setId(I)V

    .line 66
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setLevel(B)V

    .line 68
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setJob(B)V

    .line 69
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setIcon1(I)V

    .line 70
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setIcon2(I)V

    .line 71
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/hz/actor/Player;->setIcon3(I)V

    .line 72
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, v1, Lcom/hz/actor/Player;->hp:I

    .line 73
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    iput v4, v1, Lcom/hz/actor/Player;->hpMax:I

    .line 75
    iget-object v4, v3, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMenuAndEvent(Lcom/hz/core/WarArmy;Ljava/util/Vector;Ljava/util/Vector;IZ)V
    .locals 8
    .param p0, "warArmy"    # Lcom/hz/core/WarArmy;
    .param p1, "menuList"    # Ljava/util/Vector;
    .param p2, "eventList"    # Ljava/util/Vector;
    .param p3, "tabEvent"    # I
    .param p4, "isRemove"    # Z

    .prologue
    const/16 v7, 0x7570

    const/16 v6, 0x9c

    const/4 v3, -0x1

    const/16 v5, 0x7563

    const/16 v4, 0x4f

    .line 267
    if-nez p0, :cond_1

    .line 319
    :cond_0
    return-void

    .line 272
    :cond_1
    sget-object v2, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-static {v2}, Lcom/hz/core/CountryWar;->isOpeArmy(Lcom/hz/actor/Player;)Z

    move-result v1

    .line 276
    .local v1, "isOperArmy":Z
    const/16 v2, 0x3337

    if-ne p3, v2, :cond_5

    .line 278
    if-eqz v1, :cond_4

    .line 279
    const/16 v2, 0x9a

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    const/16 v3, 0x756e

    .line 279
    invoke-static {p1, v2, p2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 281
    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v7}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 283
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 310
    :cond_2
    :goto_0
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 313
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 314
    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 315
    invoke-virtual {p2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 312
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 287
    .end local v0    # "i":I
    :cond_4
    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 288
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 294
    :cond_5
    const/16 v2, 0x3338

    if-ne p3, v2, :cond_2

    .line 295
    if-eqz v1, :cond_6

    .line 296
    const/16 v2, 0x9b

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    const/16 v3, 0x756f

    .line 296
    invoke-static {p1, v2, p2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 298
    invoke-static {v6}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v7}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 300
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0

    .line 304
    :cond_6
    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 305
    invoke-static {v4}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    goto :goto_0
.end method


# virtual methods
.method public getArmyID()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 135
    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 141
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getArmyInfo1()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 207
    const-string v1, "[%U ng\u01b0\u1eddi]%U"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/WarArmy;->getArmyPlayerNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/hz/core/WarArmy;->getLeaderName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "info":Ljava/lang/String;
    iget-byte v1, p0, Lcom/hz/core/WarArmy;->buildPos:B

    if-ltz v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u3010"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/hz/core/WarArmy;->buildPos:B

    invoke-static {v2, v6}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    return-object v0
.end method

.method public getArmyInfo2()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u3010"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/hz/core/WarArmy;->buildPos:B

    invoke-static {v2, v7}, Lcom/hz/core/CountryWar;->getBuildName(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "info":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[%U ng\u01b0\u1eddi]%U"

    .line 222
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/hz/core/WarArmy;->armyPlayerNum:B

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/hz/core/WarArmy;->leader:Lcom/hz/actor/Model;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/WarArmy;->leader:Lcom/hz/actor/Model;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v7

    .line 221
    invoke-static {v3, v4}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0

    .line 222
    :cond_0
    const-string v1, "Ch\u01b0a bi\u1ebft"

    goto :goto_0
.end method

.method public getArmyPlayerNum()I
    .locals 3

    .prologue
    .line 177
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 186
    :cond_1
    return v0

    .line 180
    :cond_2
    const/4 v0, 0x0

    .line 181
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 181
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLeader()Lcom/hz/actor/Model;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Model;

    goto :goto_0
.end method

.method public getLeaderID()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hz/core/WarArmy;->leader:Lcom/hz/actor/Model;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, -0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/WarArmy;->leader:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getLeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/hz/core/WarArmy;->getLeader()Lcom/hz/actor/Model;

    move-result-object v0

    .line 166
    .local v0, "model":Lcom/hz/actor/Model;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "(Ch\u01b0a bi\u1ebft)"

    goto :goto_0
.end method

.method public getModel(I)Lcom/hz/actor/Model;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/Model;

    goto :goto_0
.end method

.method public getModelArray()[Lcom/hz/actor/Model;
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/hz/actor/Model;

    .line 103
    .local v1, "modelArray":[Lcom/hz/actor/Model;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 106
    return-object v1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/actor/Model;

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getModelId(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/hz/core/WarArmy;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 247
    .local v0, "model":Lcom/hz/actor/Model;
    if-nez v0, :cond_0

    .line 248
    const/4 v1, -0x1

    .line 250
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getId()I

    move-result v1

    goto :goto_0
.end method

.method public getModelInfo(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/hz/core/WarArmy;->getModel(I)Lcom/hz/actor/Model;

    move-result-object v0

    .line 233
    .local v0, "model":Lcom/hz/actor/Model;
    if-nez v0, :cond_0

    .line 234
    const-string v1, "null"

    .line 236
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getLevel()B

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {v0}, Lcom/hz/actor/Model;->getJob()B

    move-result v2

    invoke-static {v2}, Lcom/hz/core/Define;->getJobString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isMyArmy()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 120
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 121
    const/4 v2, 0x1

    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isStatus(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/hz/core/WarArmy;->armyStatus:B

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public refreshSprite()V
    .locals 3

    .prologue
    .line 85
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/hz/core/WarArmy;->modelList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 90
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v2

    if-nez v2, :cond_2

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->createSprite(Z)Lcom/hz/sprite/GameSprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setPlayerSprite(Lcom/hz/sprite/GameSprite;)V

    .line 88
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setStatus(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/hz/core/WarArmy;->armyStatus:B

    invoke-static {p2, p1, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/hz/core/WarArmy;->armyStatus:B

    .line 46
    return-void
.end method
