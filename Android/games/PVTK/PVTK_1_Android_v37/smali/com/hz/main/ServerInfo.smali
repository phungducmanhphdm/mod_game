.class public Lcom/hz/main/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# static fields
.field public static final CONN_FAILD:B = 0x2t

.field public static final CONN_NONE:B = 0x0t

.field public static final CONN_SUCESS:B = 0x1t

.field public static final HTTP_START_TIME:J = 0x2ee0L

.field public static final SERVER_STATE_BUSYNESS:B = 0x1t

.field public static final SERVER_STATE_CLOSE:B = 0x6t

.field public static final SERVER_STATE_FREE:B = 0x0t

.field public static final SERVER_STATE_FULL:B = 0x3t

.field public static final SERVER_STATE_HOT:B = 0x2t

.field public static final SERVER_STATE_MIX:B = 0x7t

.field public static final SERVER_STATE_STOP:B = 0x4t

.field public static final SERVER_STATE_TEST:B = 0x5t

.field public static final TYPE_SERVER_AREA:B = 0x0t

.field public static final TYPE_SERVER_LINE:B = 0x1t

.field public static gameAreaList:Ljava/util/Vector;

.field public static lastLoginAreaId:S

.field public static lastLoginAreaName:Ljava/lang/String;

.field public static lastLoginLineId:S

.field public static lastLoginLineName:Ljava/lang/String;


# instance fields
.field public actorCount:B

.field areaServer:Lcom/hz/main/ServerInfo;

.field public connResult:B

.field public httpConnStartTime:J

.field public httpUrl:Ljava/lang/String;

.field public id:S

.field public isNeedSpecialCode:Z

.field lineList:Ljava/util/Vector;

.field public name:Ljava/lang/String;

.field public sockUrl:Ljava/lang/String;

.field public state:B

.field public stateStr:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field private type:B

.field public wapSocketUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 40
    sput-short v1, Lcom/hz/main/ServerInfo;->lastLoginAreaId:S

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/hz/main/ServerInfo;->lastLoginAreaName:Ljava/lang/String;

    .line 42
    sput-short v1, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/hz/main/ServerInfo;->lastLoginLineName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-byte v1, p0, Lcom/hz/main/ServerInfo;->connResult:B

    .line 88
    iput-byte v1, p0, Lcom/hz/main/ServerInfo;->type:B

    .line 100
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/hz/main/ServerInfo;->id:S

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->stateStr:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/hz/main/ServerInfo;->isNeedSpecialCode:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->tag:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->sockUrl:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->wapSocketUrl:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->httpUrl:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2
    .param p1, "_type"    # B

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-byte v1, p0, Lcom/hz/main/ServerInfo;->connResult:B

    .line 88
    iput-byte v1, p0, Lcom/hz/main/ServerInfo;->type:B

    .line 100
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/hz/main/ServerInfo;->id:S

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->stateStr:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/hz/main/ServerInfo;->isNeedSpecialCode:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->tag:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->sockUrl:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->wapSocketUrl:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/main/ServerInfo;->httpUrl:Ljava/lang/String;

    .line 179
    iput-byte p1, p0, Lcom/hz/main/ServerInfo;->type:B

    .line 180
    return-void
.end method

.method public static createAreaInfo()Lcom/hz/main/ServerInfo;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/hz/main/ServerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hz/main/ServerInfo;-><init>(B)V

    return-object v0
.end method

.method public static createConnectInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/ServerInfo;
    .locals 2
    .param p0, "htpUrl"    # Ljava/lang/String;
    .param p1, "socketUrl"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Lcom/hz/main/ServerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hz/main/ServerInfo;-><init>(B)V

    .line 190
    .local v0, "serverInfo":Lcom/hz/main/ServerInfo;
    iput-object p0, v0, Lcom/hz/main/ServerInfo;->httpUrl:Ljava/lang/String;

    .line 191
    iput-object p1, v0, Lcom/hz/main/ServerInfo;->sockUrl:Ljava/lang/String;

    .line 192
    return-object v0
.end method

.method public static createLineInfo()Lcom/hz/main/ServerInfo;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/hz/main/ServerInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hz/main/ServerInfo;-><init>(B)V

    return-object v0
.end method

.method public static fromAreaBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 206
    invoke-static {}, Lcom/hz/main/ServerInfo;->createAreaInfo()Lcom/hz/main/ServerInfo;

    move-result-object v0

    .line 208
    .local v0, "areaServer":Lcom/hz/main/ServerInfo;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/main/ServerInfo;->id:S

    .line 209
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/main/ServerInfo;->actorCount:B

    .line 211
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/main/ServerInfo;->state:B

    .line 212
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->stateStr:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->tag:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/hz/main/ServerInfo;->isNeedSpecialCode:Z

    .line 215
    return-object v0
.end method

.method public static fromLineBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 220
    invoke-static {}, Lcom/hz/main/ServerInfo;->createLineInfo()Lcom/hz/main/ServerInfo;

    move-result-object v0

    .line 221
    .local v0, "lineServer":Lcom/hz/main/ServerInfo;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/hz/main/ServerInfo;->id:S

    .line 222
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->sockUrl:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->wapSocketUrl:Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->httpUrl:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/main/ServerInfo;->state:B

    .line 227
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/main/ServerInfo;->stateStr:Ljava/lang/String;

    .line 233
    return-object v0
.end method

.method public static fromTouristBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/hz/main/ServerInfo;->fromAreaBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;

    move-result-object v0

    .line 198
    .local v0, "areaServer":Lcom/hz/main/ServerInfo;
    invoke-static {p0}, Lcom/hz/main/ServerInfo;->fromLineBytes(Lcom/hz/net/Message;)Lcom/hz/main/ServerInfo;

    move-result-object v1

    .line 199
    .local v1, "lineServer":Lcom/hz/main/ServerInfo;
    invoke-virtual {v0, v1}, Lcom/hz/main/ServerInfo;->addLine(Lcom/hz/main/ServerInfo;)V

    .line 201
    return-object v0
.end method

.method public static getLastLoginName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/hz/main/ServerInfo;->lastLoginAreaName:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "--"

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/hz/main/ServerInfo;->lastLoginAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastServerInfo()Lcom/hz/main/ServerInfo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 58
    sget-object v5, Lcom/hz/main/ServerInfo;->gameAreaList:Ljava/util/Vector;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 83
    .local v0, "i":I
    :cond_0
    :goto_0
    return-object v3

    .line 61
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v5, Lcom/hz/main/ServerInfo;->gameAreaList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    move-object v3, v4

    .line 83
    goto :goto_0

    .line 62
    :cond_2
    sget-object v5, Lcom/hz/main/ServerInfo;->gameAreaList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/main/ServerInfo;

    .line 63
    .local v2, "serverInfo":Lcom/hz/main/ServerInfo;
    if-nez v2, :cond_4

    .line 61
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_4
    iget-short v5, v2, Lcom/hz/main/ServerInfo;->id:S

    sget-short v6, Lcom/hz/main/ServerInfo;->lastLoginAreaId:S

    if-ne v5, v6, :cond_3

    .line 69
    iget-object v5, v2, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    if-eqz v5, :cond_3

    .line 72
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v5, v2, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 73
    iget-object v5, v2, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/main/ServerInfo;

    .line 74
    .local v3, "serverInfo2":Lcom/hz/main/ServerInfo;
    if-nez v3, :cond_5

    .line 72
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    :cond_5
    iget-short v5, v3, Lcom/hz/main/ServerInfo;->id:S

    sget-short v6, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    if-eq v5, v6, :cond_0

    goto :goto_3
.end method

.method public static loadRMS(Ljava/io/DataInputStream;)V
    .locals 1
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    sput-short v0, Lcom/hz/main/ServerInfo;->lastLoginAreaId:S

    .line 169
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hz/main/ServerInfo;->lastLoginAreaName:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    sput-short v0, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    .line 171
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hz/main/ServerInfo;->lastLoginLineName:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static saveRMS(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    sget-short v0, Lcom/hz/main/ServerInfo;->lastLoginAreaId:S

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 163
    sget-object v0, Lcom/hz/main/ServerInfo;->lastLoginAreaName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 164
    sget-short v0, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 165
    sget-object v0, Lcom/hz/main/ServerInfo;->lastLoginLineName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static setLastLogin(Lcom/hz/main/ServerInfo;)V
    .locals 2
    .param p0, "server"    # Lcom/hz/main/ServerInfo;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    iget-byte v0, p0, Lcom/hz/main/ServerInfo;->type:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->areaServer:Lcom/hz/main/ServerInfo;

    iget-short v0, v0, Lcom/hz/main/ServerInfo;->id:S

    sput-short v0, Lcom/hz/main/ServerInfo;->lastLoginAreaId:S

    .line 152
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->areaServer:Lcom/hz/main/ServerInfo;

    iget-object v0, v0, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/hz/main/ServerInfo;->lastLoginAreaName:Ljava/lang/String;

    .line 153
    iget-short v0, p0, Lcom/hz/main/ServerInfo;->id:S

    sput-short v0, Lcom/hz/main/ServerInfo;->lastLoginLineId:S

    .line 154
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/hz/main/ServerInfo;->lastLoginLineName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addLine(Lcom/hz/main/ServerInfo;)V
    .locals 1
    .param p1, "lineInfo"    # Lcom/hz/main/ServerInfo;

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-byte v0, p0, Lcom/hz/main/ServerInfo;->type:B

    if-nez v0, :cond_0

    .line 251
    iput-object p0, p1, Lcom/hz/main/ServerInfo;->areaServer:Lcom/hz/main/ServerInfo;

    .line 252
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doSelectLineMenu()V
    .locals 9

    .prologue
    .line 285
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 286
    .local v8, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 288
    .local v1, "eventList":Ljava/util/Vector;
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v8, v3, v1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 290
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v6, v3, :cond_0

    .line 299
    invoke-static {v8}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "menuStr":[Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/common/Utilities;->getMenuWidth([Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 303
    .local v2, "getWidth":I
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    const/16 v4, 0x31

    const/4 v5, 0x0

    .line 302
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 304
    return-void

    .line 291
    .end local v0    # "menuStr":[Ljava/lang/String;
    .end local v2    # "getWidth":I
    :cond_0
    iget-object v3, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hz/main/ServerInfo;

    .line 292
    .local v7, "line":Lcom/hz/main/ServerInfo;
    if-nez v7, :cond_1

    .line 290
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 295
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/hz/main/ServerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/hz/main/ServerInfo;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public equal(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "server"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 275
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/hz/main/ServerInfo;

    if-nez v1, :cond_1

    .line 278
    .end local p1    # "server":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "server":Ljava/lang/Object;
    :cond_1
    iget-short v1, p0, Lcom/hz/main/ServerInfo;->id:S

    check-cast p1, Lcom/hz/main/ServerInfo;

    .end local p1    # "server":Ljava/lang/Object;
    iget-short v2, p1, Lcom/hz/main/ServerInfo;->id:S

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAreaServer()Lcom/hz/main/ServerInfo;
    .locals 1

    .prologue
    .line 134
    iget-byte v0, p0, Lcom/hz/main/ServerInfo;->type:B

    if-nez v0, :cond_0

    .line 138
    .end local p0    # "this":Lcom/hz/main/ServerInfo;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/hz/main/ServerInfo;
    :cond_0
    iget-object p0, p0, Lcom/hz/main/ServerInfo;->areaServer:Lcom/hz/main/ServerInfo;

    goto :goto_0
.end method

.method public getLineList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->stateStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->stateStr:Ljava/lang/String;

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/hz/main/ServerInfo;->tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hz/main/ServerInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isSingleLineArea()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/main/ServerInfo;->lineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
