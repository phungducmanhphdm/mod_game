.class public Lcom/hz/core/Boss;
.super Ljava/lang/Object;
.source "Boss.java"


# instance fields
.field public icon:B

.field public id:B

.field public iron:I

.field public level:B

.field public model:Lcom/hz/actor/Model;

.field public money1:I

.field public money3:I

.field public num:S

.field public rock:I

.field public uiPos:B

.field public wood:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytesByArena(Lcom/hz/net/Message;)Lcom/hz/core/Boss;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 44
    new-instance v0, Lcom/hz/core/Boss;

    invoke-direct {v0}, Lcom/hz/core/Boss;-><init>()V

    .line 45
    .local v0, "boss":Lcom/hz/core/Boss;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Boss;->id:B

    .line 46
    new-instance v1, Lcom/hz/actor/Model;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/hz/actor/Model;-><init>(B)V

    iput-object v1, v0, Lcom/hz/core/Boss;->model:Lcom/hz/actor/Model;

    .line 47
    iget-object v1, v0, Lcom/hz/core/Boss;->model:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setId(I)V

    .line 48
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Boss;->num:S

    .line 49
    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/hz/core/Boss;->uiPos:B

    .line 55
    return-object v0
.end method

.method public static fromBytesByCountryBoss(Lcom/hz/net/Message;)Lcom/hz/core/Boss;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 140
    new-instance v0, Lcom/hz/core/Boss;

    invoke-direct {v0}, Lcom/hz/core/Boss;-><init>()V

    .line 141
    .local v0, "boss":Lcom/hz/core/Boss;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Boss;->id:B

    .line 142
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Boss;->level:B

    .line 143
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Boss;->num:S

    .line 144
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Boss;->icon:B

    .line 146
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Boss;->money1:I

    .line 147
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Boss;->money3:I

    .line 148
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Boss;->iron:I

    .line 149
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Boss;->wood:I

    .line 150
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/Boss;->rock:I

    .line 151
    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/hz/core/Boss;->uiPos:B

    .line 157
    return-object v0
.end method

.method public static fromBytesByTeamBoss(Lcom/hz/net/Message;)Lcom/hz/core/Boss;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 118
    new-instance v0, Lcom/hz/core/Boss;

    invoke-direct {v0}, Lcom/hz/core/Boss;-><init>()V

    .line 119
    .local v0, "boss":Lcom/hz/core/Boss;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Boss;->id:B

    .line 120
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/Boss;->level:B

    .line 121
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/core/Boss;->num:S

    .line 122
    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/hz/core/Boss;->uiPos:B

    .line 127
    return-object v0
.end method


# virtual methods
.method public getModelID()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hz/core/Boss;->model:Lcom/hz/actor/Model;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hz/core/Boss;->model:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSourceInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    const-string v0, ""

    .line 167
    .local v0, "getsourceinfo":Ljava/lang/String;
    iget v1, p0, Lcom/hz/core/Boss;->iron:I

    if-lez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "S\u1eaft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Boss;->iron:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    iget v1, p0, Lcom/hz/core/Boss;->rock:I

    if-lez v1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \n\u0110\u00e1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Boss;->rock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1
    iget v1, p0, Lcom/hz/core/Boss;->wood:I

    if-lez v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \nG\u1ed7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Boss;->wood:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_2
    iget v1, p0, Lcom/hz/core/Boss;->money1:I

    if-lez v1, :cond_3

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \nKNB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Boss;->money1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_3
    iget v1, p0, Lcom/hz/core/Boss;->money3:I

    if-lez v1, :cond_4

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \nB\u1ea1c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hz/core/Boss;->money3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_4
    return-object v0
.end method

.method public isHasModel()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hz/core/Boss;->model:Lcom/hz/actor/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/Boss;->model:Lcom/hz/actor/Model;

    invoke-virtual {v0}, Lcom/hz/actor/Model;->getId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasPlayerWait()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/hz/core/Boss;->isHasModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/hz/core/Boss;->num:S

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOver()Z
    .locals 1

    .prologue
    .line 135
    iget-short v0, p0, Lcom/hz/core/Boss;->num:S

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwnModel(Lcom/hz/core/Arena;)Z
    .locals 5
    .param p1, "arena"    # Lcom/hz/core/Arena;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 72
    .local v0, "myPlayer":Lcom/hz/actor/Player;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/hz/actor/Player;->isMember()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getLeaderID()I

    move-result v3

    invoke-virtual {p0}, Lcom/hz/core/Boss;->getModelID()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 78
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/hz/core/Boss;->getModelID()I

    move-result v3

    invoke-static {}, Lcom/hz/main/GameWorld;->getPlayerID()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method
