.class public Lcom/hz/core/ObjectData;
.super Ljava/lang/Object;
.source "ObjectData.java"


# static fields
.field public static final STATUS_IS_SELECT:I = 0x1


# instance fields
.field public byte0:B

.field public int0:I

.field public int1:I

.field public int2:I

.field private list0:Ljava/util/Vector;

.field public long0:J

.field private object0:Ljava/lang/Object;

.field private status:I

.field public str0:Ljava/lang/String;

.field public str1:Ljava/lang/String;

.field public str2:Ljava/lang/String;

.field public str3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWorldMapObject(ILjava/lang/String;Ljava/lang/String;IB)Lcom/hz/core/ObjectData;
    .locals 1
    .param p0, "mapID"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "_status"    # I
    .param p4, "isNeedItem"    # B

    .prologue
    .line 79
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 80
    .local v0, "data":Lcom/hz/core/ObjectData;
    iput p0, v0, Lcom/hz/core/ObjectData;->int0:I

    .line 81
    iput-object p1, v0, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 82
    iput-object p2, v0, Lcom/hz/core/ObjectData;->str1:Ljava/lang/String;

    .line 83
    iput p3, v0, Lcom/hz/core/ObjectData;->status:I

    .line 84
    iput-byte p4, v0, Lcom/hz/core/ObjectData;->byte0:B

    .line 85
    return-object v0
.end method

.method public static createWorldMapPosObject(IIILjava/lang/String;I)Lcom/hz/core/ObjectData;
    .locals 1
    .param p0, "id"    # I
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "_status"    # I

    .prologue
    .line 64
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 65
    .local v0, "data":Lcom/hz/core/ObjectData;
    iput p0, v0, Lcom/hz/core/ObjectData;->int0:I

    .line 66
    iput p1, v0, Lcom/hz/core/ObjectData;->int1:I

    .line 67
    iput p2, v0, Lcom/hz/core/ObjectData;->int2:I

    .line 68
    iput p4, v0, Lcom/hz/core/ObjectData;->status:I

    .line 69
    iput-object p3, v0, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 70
    return-object v0
.end method

.method public static fromCountryAllMissionBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 137
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 139
    .local v0, "data":Lcom/hz/core/ObjectData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 140
    .local v2, "leftSize":B
    invoke-virtual {v0, v2}, Lcom/hz/core/ObjectData;->setCountryLeftNum(I)V

    .line 141
    const-string v4, ""

    .line 142
    .local v4, "remark":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 148
    invoke-virtual {v0, v4}, Lcom/hz/core/ObjectData;->setCountryRemark(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    iput-byte v5, v0, Lcom/hz/core/ObjectData;->byte0:B

    .line 152
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    invoke-virtual {v0, v5}, Lcom/hz/core/ObjectData;->setCountryRightNum(I)V

    .line 154
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v3

    .line 155
    .local v3, "mission":Lcom/hz/core/Mission;
    invoke-virtual {v0, v3}, Lcom/hz/core/ObjectData;->setCountryMission(Lcom/hz/core/Mission;)V

    .line 162
    return-object v0

    .line 143
    .end local v3    # "mission":Lcom/hz/core/Mission;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    add-int/lit8 v5, v2, -0x1

    if-ne v1, v5, :cond_1

    .line 145
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromCountryAppointListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 177
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 178
    .local v0, "data":Lcom/hz/core/ObjectData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v2

    .line 179
    .local v2, "leftValue":I
    invoke-virtual {v0, v2}, Lcom/hz/core/ObjectData;->setCountryLeftNum(I)V

    .line 180
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    iput-byte v4, v0, Lcom/hz/core/ObjectData;->byte0:B

    .line 181
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/hz/core/ObjectData;->setCountryRightNum(I)V

    .line 182
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hz/core/ObjectData;->setCountryMission(Lcom/hz/core/Mission;)V

    .line 183
    const-string v3, ""

    .line 184
    .local v3, "remark":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 190
    iput-object v3, v0, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 191
    return-object v0

    .line 185
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_1

    .line 187
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromCountryNotValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 167
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 168
    .local v0, "data":Lcom/hz/core/ObjectData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hz/core/ObjectData;->setStatus(ZI)V

    .line 169
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hz/core/ObjectData;->setCountryRightNum(I)V

    .line 170
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/hz/core/ObjectData;->byte0:B

    .line 171
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hz/core/ObjectData;->setCountryMission(Lcom/hz/core/Mission;)V

    .line 172
    return-object v0
.end method

.method public static fromCountryValidListBytes(Lcom/hz/net/Message;)Lcom/hz/core/ObjectData;
    .locals 8
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 112
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 114
    .local v0, "data":Lcom/hz/core/ObjectData;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    iput-byte v5, v0, Lcom/hz/core/ObjectData;->byte0:B

    .line 115
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    invoke-virtual {v0, v5}, Lcom/hz/core/ObjectData;->setCountryLeftNum(I)V

    .line 116
    invoke-virtual {p0}, Lcom/hz/net/Message;->getShort()S

    move-result v5

    invoke-virtual {v0, v5}, Lcom/hz/core/ObjectData;->setCountryRightNum(I)V

    .line 118
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v2

    .line 119
    .local v2, "mission":Lcom/hz/core/Mission;
    invoke-virtual {v0, v2}, Lcom/hz/core/ObjectData;->setCountryMission(Lcom/hz/core/Mission;)V

    .line 121
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v0, Lcom/hz/core/ObjectData;->list0:Ljava/util/Vector;

    .line 122
    const-string v3, ""

    .line 123
    .local v3, "remark":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 124
    .local v4, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 131
    invoke-virtual {v0, v3}, Lcom/hz/core/ObjectData;->setCountryRemark(Ljava/lang/String;)V

    .line 132
    return-object v0

    .line 125
    :cond_0
    iget-object v5, v0, Lcom/hz/core/ObjectData;->list0:Ljava/util/Vector;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_1

    .line 128
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromPlayerEventBytes(IIBJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/core/ObjectData;
    .locals 1
    .param p0, "eventID"    # I
    .param p1, "sendID"    # I
    .param p2, "type"    # B
    .param p3, "time"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "info"    # Ljava/lang/String;
    .param p7, "left"    # Ljava/lang/String;
    .param p8, "right"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/hz/core/ObjectData;

    invoke-direct {v0}, Lcom/hz/core/ObjectData;-><init>()V

    .line 97
    .local v0, "data":Lcom/hz/core/ObjectData;
    iput p0, v0, Lcom/hz/core/ObjectData;->int0:I

    .line 98
    iput p1, v0, Lcom/hz/core/ObjectData;->int1:I

    .line 99
    iput-byte p2, v0, Lcom/hz/core/ObjectData;->byte0:B

    .line 100
    iput-wide p3, v0, Lcom/hz/core/ObjectData;->long0:J

    .line 101
    iput-object p5, v0, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 102
    iput-object p6, v0, Lcom/hz/core/ObjectData;->str1:Ljava/lang/String;

    .line 103
    iput-object p7, v0, Lcom/hz/core/ObjectData;->str2:Ljava/lang/String;

    .line 104
    iput-object p8, v0, Lcom/hz/core/ObjectData;->str3:Ljava/lang/String;

    .line 105
    return-object v0
.end method


# virtual methods
.method public getCountryAssignIds()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/hz/core/ObjectData;->list0:Ljava/util/Vector;

    return-object v0
.end method

.method public getCountryLeftNum()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/hz/core/ObjectData;->int0:I

    return v0
.end method

.method public getCountryMission()Lcom/hz/core/Mission;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/hz/core/ObjectData;->object0:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/core/ObjectData;->object0:Ljava/lang/Object;

    instance-of v0, v0, Lcom/hz/core/Mission;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hz/core/ObjectData;->object0:Ljava/lang/Object;

    check-cast v0, Lcom/hz/core/Mission;

    goto :goto_0
.end method

.method public getCountryMissionDesc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/ObjectData;->getCountryMission()Lcom/hz/core/Mission;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hz/core/Mission;->getDetails(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {p0}, Lcom/hz/core/ObjectData;->getCountryRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "M\u1ecdi ng\u01b0\u1eddi"

    .line 256
    .local v0, "desc":Ljava/lang/String;
    :goto_0
    const-string v2, "Th\u00e0nh vi\u00ean \u1ee7y th\u00e1c: %U"

    invoke-static {v2, v0}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 255
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/hz/core/ObjectData;->getCountryRemark()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCountryRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryRightNum()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/hz/core/ObjectData;->int1:I

    return v0
.end method

.method public getMapStatus()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/hz/core/ObjectData;->status:I

    return v0
.end method

.method public getUpperBoundDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/hz/core/ObjectData;->getCountryRightNum()I

    move-result v0

    if-gtz v0, :cond_0

    .line 247
    const-string v0, "Kh\u00f4ng gi\u1edbi h\u1ea1n"

    .line 249
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/core/ObjectData;->getCountryLeftNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hz/core/ObjectData;->getCountryRightNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isStatus(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 30
    iget v0, p0, Lcom/hz/core/ObjectData;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public setCountryAssignInfo(Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "assignModelList"    # Ljava/util/Hashtable;

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hz/core/ObjectData;->setCountryLeftNum(I)V

    .line 233
    const-string v3, ""

    .line 234
    .local v3, "remark":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "_en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    invoke-virtual {p0, v3}, Lcom/hz/core/ObjectData;->setCountryRemark(Ljava/lang/String;)V

    .line 243
    return-void

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 236
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 237
    .local v1, "assignModel":Lcom/hz/actor/Model;
    if-eqz v1, :cond_0

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setCountryLeftNum(I)V
    .locals 0
    .param p1, "leftNum"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/hz/core/ObjectData;->int0:I

    .line 197
    return-void
.end method

.method public setCountryMission(Lcom/hz/core/Mission;)V
    .locals 0
    .param p1, "mission"    # Lcom/hz/core/Mission;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/hz/core/ObjectData;->object0:Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public setCountryRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/hz/core/ObjectData;->str0:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setCountryRightNum(I)V
    .locals 0
    .param p1, "rightNum"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/hz/core/ObjectData;->int1:I

    .line 205
    return-void
.end method

.method public setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "type"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/hz/core/ObjectData;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/ObjectData;->status:I

    .line 28
    return-void
.end method
