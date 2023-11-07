.class public Lcom/hz/main/GameStore;
.super Ljava/lang/Object;
.source "GameStore.java"


# static fields
.field public static final GUIDE_CARD_SCREENSHOT:I = 0x4

.field public static final GUIDE_INTO_CITY:I = 0x1

.field public static final GUIDE_PLAYER:I = 0x2

.field private static final RECORD_STORE:Ljava/lang/String; = "sjol"

.field private static final REC_SYSTEM:B

.field private static gameSetting:I

.field private static guideSetting:I

.field public static isFirstInstance:Z

.field public static newGameIP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    sput-object v0, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameSetting()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/hz/main/GameStore;->gameSetting:I

    return v0
.end method

.method public static getLoginSetting()I
    .locals 5

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "loginSetting":I
    const/16 v1, 0x12

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-le v1, v4, :cond_0

    .line 108
    return v2

    .line 101
    :cond_0
    const/4 v4, 0x1

    shl-int v3, v4, v1

    .line 103
    .local v3, "value":I
    sget v4, Lcom/hz/main/GameStore;->gameSetting:I

    invoke-static {v3, v4}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    .line 104
    .local v0, "flag":Z
    if-eqz v0, :cond_1

    .line 105
    or-int/2addr v2, v3

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isGameSetting(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 75
    sget v0, Lcom/hz/main/GameStore;->gameSetting:I

    invoke-static {p0, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public static isGuideSetting(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 57
    sget v0, Lcom/hz/main/GameStore;->guideSetting:I

    invoke-static {p0, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method public static loadRecord(Ljava/lang/String;I)[B
    .locals 4
    .param p0, "sRms"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 247
    const/4 v2, 0x0

    .line 249
    .local v2, "recordstore":Ljavax/microedition/rms/RecordStore;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 251
    .local v1, "j1":I
    if-eqz v1, :cond_0

    if-lt p1, v1, :cond_1

    .line 258
    :cond_0
    invoke-static {v2}, Lcom/hz/main/GameStore;->safeCloseRecord(Ljavax/microedition/rms/RecordStore;)V

    .line 260
    .end local v1    # "j1":I
    :goto_0
    return-object v0

    .line 254
    .restart local v1    # "j1":I
    :cond_1
    add-int/lit8 v3, p1, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 258
    .local v0, "abyte0":[B
    invoke-static {v2}, Lcom/hz/main/GameStore;->safeCloseRecord(Ljavax/microedition/rms/RecordStore;)V

    goto :goto_0

    .line 256
    .end local v0    # "abyte0":[B
    .end local v1    # "j1":I
    :catch_0
    move-exception v3

    .line 258
    invoke-static {v2}, Lcom/hz/main/GameStore;->safeCloseRecord(Ljavax/microedition/rms/RecordStore;)V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v3

    .line 258
    invoke-static {v2}, Lcom/hz/main/GameStore;->safeCloseRecord(Ljavax/microedition/rms/RecordStore;)V

    .line 259
    throw v3
.end method

.method public static readSystem()V
    .locals 7

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 121
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    const-string v5, "sjol"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hz/main/GameStore;->loadRecord(Ljava/lang/String;I)[B

    move-result-object v2

    .line 122
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 123
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/hz/main/GameWorld;->username:Ljava/lang/String;

    .line 127
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/hz/main/GameWorld;->isSave:Z

    .line 128
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/hz/main/GameWorld;->password:Ljava/lang/String;

    .line 130
    sget-object v5, Lcom/hz/main/GameWorld;->username:Ljava/lang/String;

    sput-object v5, Lcom/hz/main/GameWorld;->tempUsername:Ljava/lang/String;

    .line 131
    sget-object v5, Lcom/hz/main/GameWorld;->password:Ljava/lang/String;

    sput-object v5, Lcom/hz/main/GameWorld;->tempPassword:Ljava/lang/String;

    .line 134
    invoke-static {v4}, Lcom/hz/main/ServerInfo;->loadRMS(Ljava/io/DataInputStream;)V

    .line 136
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/hz/net/HttpConnector;->proxy:Z

    .line 138
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/hz/main/GameWorld;->lastPlayerID:I

    .line 140
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/hz/main/GameStore;->gameSetting:I

    .line 142
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/hz/main/GameStore;->guideSetting:I

    .line 144
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    .line 146
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/hz/main/GameStore;->isFirstInstance:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .line 152
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "data":[B
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 153
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 196
    return-void

    .line 149
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "data":[B
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_0
.end method

.method private static final safeCloseRecord(Ljavax/microedition/rms/RecordStore;)V
    .locals 1
    .param p0, "rs"    # Ljavax/microedition/rms/RecordStore;

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveRecord(Ljava/lang/String;I[B)V
    .locals 5
    .param p0, "sRms"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "array"    # [B

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, "recordstore":Ljavax/microedition/rms/RecordStore;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v0

    .line 273
    .local v0, "j1":I
    if-gt v0, p1, :cond_1

    .line 274
    :goto_0
    if-lt v0, p1, :cond_0

    .line 278
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "j1":I
    :goto_1
    invoke-static {v1}, Lcom/hz/main/GameStore;->safeCloseRecord(Ljavax/microedition/rms/RecordStore;)V

    .line 287
    return-void

    .line 275
    .restart local v0    # "j1":I
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3, v4}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, v2, p2, v3, v4}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 284
    .end local v0    # "j1":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static saveSetting()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 82
    .local v0, "player":Lcom/hz/actor/Player;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/hz/actor/Player;->getSetting()I

    move-result v1

    sput v1, Lcom/hz/main/GameStore;->gameSetting:I

    .line 87
    invoke-static {}, Lcom/hz/main/GameStore;->saveSystem()V

    goto :goto_0
.end method

.method public static saveSystem()V
    .locals 7

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 206
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 209
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    sget-object v4, Lcom/hz/main/GameWorld;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 211
    sget-boolean v4, Lcom/hz/main/GameWorld;->isSave:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 212
    sget-boolean v4, Lcom/hz/main/GameWorld;->isSave:Z

    if-eqz v4, :cond_0

    .line 213
    sget-object v4, Lcom/hz/main/GameWorld;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 219
    :goto_0
    invoke-static {v3}, Lcom/hz/main/ServerInfo;->saveRMS(Ljava/io/DataOutputStream;)V

    .line 221
    sget-boolean v4, Lcom/hz/net/HttpConnector;->proxy:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 223
    sget v4, Lcom/hz/main/GameWorld;->lastPlayerID:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    sget v4, Lcom/hz/main/GameStore;->gameSetting:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 227
    sget v4, Lcom/hz/main/GameStore;->guideSetting:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 229
    sget-object v4, Lcom/hz/main/GameStore;->newGameIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 231
    sget-boolean v4, Lcom/hz/main/GameStore;->isFirstInstance:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 233
    const-string v4, "sjol"

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/hz/main/GameStore;->saveRecord(Ljava/lang/String;I[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .line 236
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-static {v2}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 237
    invoke-static {v0}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V

    .line 238
    return-void

    .line 215
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_3
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static setGameSetting(I)V
    .locals 0
    .param p0, "setting"    # I

    .prologue
    .line 71
    sput p0, Lcom/hz/main/GameStore;->gameSetting:I

    .line 72
    return-void
.end method

.method public static setGuideSetting(ZI)V
    .locals 1
    .param p0, "flag"    # Z
    .param p1, "type"    # I

    .prologue
    .line 54
    sget v0, Lcom/hz/main/GameStore;->guideSetting:I

    invoke-static {p0, p1, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    sput v0, Lcom/hz/main/GameStore;->guideSetting:I

    .line 55
    return-void
.end method
