.class public Lcom/hz/core/AniResourceSave;
.super Ljava/lang/Object;
.source "AniResourceSave.java"


# static fields
.field public static final ANIRESOURCESAVE_ANI_PATH:Ljava/lang/String; = "sjolani/"

.field public static isHasGetNewAniResource:Z

.field public static isJavaSupport:Z

.field public static strAniFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    .line 24
    sput-boolean v1, Lcom/hz/core/AniResourceSave;->isHasGetNewAniResource:Z

    .line 26
    sput-boolean v1, Lcom/hz/core/AniResourceSave;->isJavaSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheckHasFold(Z)V
    .locals 7
    .param p0, "isDel"    # Z

    .prologue
    .line 63
    invoke-static {}, Ljavax/microedition/io/file/FileSystemRegistry;->listRoots()Ljava/util/Enumeration;

    move-result-object v3

    .line 64
    .local v3, "rootEnum":Ljava/util/Enumeration;
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "root":Ljava/lang/String;
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file:///"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sjolani/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 75
    .local v1, "fc":Ljavax/microedition/io/file/FileConnection;
    const/4 v5, 0x3

    :try_start_0
    invoke-static {v4, v5}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljavax/microedition/io/file/FileConnection;

    move-object v1, v0

    .line 77
    if-eqz p0, :cond_2

    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    invoke-static {v4}, Lcom/hz/core/AniResourceSave;->doDelDirFiles(Ljava/lang/String;)V

    .line 86
    :cond_2
    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->mkdir()V

    .line 91
    :cond_3
    sput-object v4, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    .line 93
    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    :try_start_1
    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v5

    goto :goto_0

    .line 95
    :catch_1
    move-exception v5

    .line 101
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    :try_start_2
    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 104
    :catch_2
    move-exception v5

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v5

    .line 101
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    :try_start_3
    invoke-interface {v1}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 110
    :cond_4
    :goto_1
    throw v5

    .line 104
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method public static doDelDirFiles(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/4 v2, 0x0

    .line 475
    .local v2, "fc":Ljavax/microedition/io/file/FileConnection;
    const/4 v3, 0x3

    :try_start_0
    invoke-static {p0, v3}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/microedition/io/file/FileConnection;

    move-object v2, v0

    .line 477
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 479
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    .line 480
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljavax/microedition/io/file/FileConnection;->setReadable(Z)V

    .line 483
    :cond_2
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 484
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->list()Ljava/util/Enumeration;

    move-result-object v1

    .line 485
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_4

    .line 495
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    :try_start_1
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v3

    goto :goto_0

    .line 486
    .restart local v1    # "e":Ljava/util/Enumeration;
    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/core/AniResourceSave;->doDelDirFiles(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 497
    .end local v1    # "e":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 503
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    :try_start_3
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 506
    :catch_2
    move-exception v3

    goto :goto_0

    .line 491
    :cond_5
    :try_start_4
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->delete()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 502
    :catchall_0
    move-exception v3

    .line 503
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 505
    :try_start_5
    invoke-interface {v2}, Ljavax/microedition/io/file/FileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 512
    :cond_6
    :goto_3
    throw v3

    .line 506
    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method public static doGetAniResourceFromBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-object v0, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lori/common/Tool;->doGetDataFromFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static doGetAniResourceVersion(Ljavax/microedition/io/file/FileConnection;Ljava/lang/String;)I
    .locals 8
    .param p0, "fc"    # Ljavax/microedition/io/file/FileConnection;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 328
    const/4 v4, 0x0

    .line 342
    .local v4, "version":I
    invoke-static {p1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    .line 373
    .end local v4    # "version":I
    .local v5, "version":I
    :goto_0
    return v5

    .line 349
    .end local v5    # "version":I
    .restart local v4    # "version":I
    :cond_0
    const/4 v1, 0x0

    .line 350
    .local v1, "strinfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 356
    .local v0, "b":[B
    sget-object v6, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/lori/common/Tool;->doGetDataFromFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 359
    if-nez v0, :cond_1

    move v5, v4

    .line 360
    .end local v4    # "version":I
    .restart local v5    # "version":I
    goto :goto_0

    .line 362
    .end local v5    # "version":I
    .restart local v4    # "version":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1    # "strinfo":Ljava/lang/String;
    array-length v6, v0

    invoke-direct {v1, v0, v7, v6}, Ljava/lang/String;-><init>([BII)V

    .line 364
    .restart local v1    # "strinfo":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, "tempa":I
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "temps":Ljava/lang/String;
    invoke-static {v3}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 367
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_2
    move v5, v4

    .line 373
    .end local v4    # "version":I
    .restart local v5    # "version":I
    goto :goto_0
.end method

.method public static doGetNewAniResource()V
    .locals 16

    .prologue
    .line 131
    sget-boolean v14, Lcom/hz/core/AniResourceSave;->isHasGetNewAniResource:Z

    if-eqz v14, :cond_1

    .line 263
    .local v10, "resmsg":Lcom/hz/net/Message;
    .local v13, "tempversion":I
    :cond_0
    :goto_0
    return-void

    .line 159
    .end local v10    # "resmsg":Lcom/hz/net/Message;
    .end local v13    # "tempversion":I
    :cond_1
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/lori/common/Tool;->doCheckHasFold(Z)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    .line 160
    const/4 v14, 0x0

    const-string v15, "version.txt"

    invoke-static {v14, v15}, Lcom/hz/core/AniResourceSave;->doGetAniResourceVersion(Ljavax/microedition/io/file/FileConnection;Ljava/lang/String;)I

    move-result v13

    .line 167
    .restart local v13    # "tempversion":I
    new-instance v10, Lcom/hz/net/Message;

    const/16 v14, 0x2927

    invoke-direct {v10, v14}, Lcom/hz/net/Message;-><init>(I)V

    .line 169
    .restart local v10    # "resmsg":Lcom/hz/net/Message;
    invoke-virtual {v10, v13}, Lcom/hz/net/Message;->putInt(I)V

    .line 171
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 175
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 176
    if-eqz v10, :cond_0

    .line 180
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 185
    .local v2, "datasize":B
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 187
    .local v12, "tempv":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_2

    .line 197
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v14

    if-lt v5, v14, :cond_3

    .line 262
    const/4 v14, 0x1

    sput-boolean v14, Lcom/hz/core/AniResourceSave;->isHasGetNewAniResource:Z

    goto :goto_0

    .line 189
    .end local v5    # "j":I
    :cond_2
    invoke-virtual {v10}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    .line 194
    .local v9, "resid":I
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v9    # "resid":I
    .restart local v5    # "j":I
    :cond_3
    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 200
    .local v8, "obj":Ljava/lang/Object;
    if-nez v8, :cond_5

    .line 197
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 205
    .restart local v8    # "obj":Ljava/lang/Object;
    :cond_5
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 210
    .local v11, "tempresid":I
    new-instance v6, Lcom/hz/net/Message;

    const/16 v14, 0x2926

    invoke-direct {v6, v14}, Lcom/hz/net/Message;-><init>(I)V

    .line 212
    .local v6, "msg":Lcom/hz/net/Message;
    invoke-virtual {v6, v13}, Lcom/hz/net/Message;->putInt(I)V

    .line 213
    invoke-virtual {v6, v11}, Lcom/hz/net/Message;->putInt(I)V

    .line 215
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 219
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 220
    if-eqz v6, :cond_0

    .line 224
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v4

    .line 228
    .local v4, "isHasResource":Z
    if-eqz v4, :cond_4

    .line 235
    if-nez v5, :cond_6

    .line 237
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/lori/common/Tool;->doCheckHasFold(Z)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    .line 241
    :cond_6
    invoke-virtual {v6}, Lcom/hz/net/Message;->getShort()S

    move-result v0

    .line 245
    .local v0, "allsize":S
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 246
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v1

    .line 255
    .local v1, "data":[B
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/hz/core/AniResourceSave;->strAniFilePath:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/lori/common/Tool;->doSavedataFile(Ljava/lang/String;[B)V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static doSetFileData(Ljavax/microedition/io/file/FileConnection;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "fc"    # Ljavax/microedition/io/file/FileConnection;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 279
    invoke-static {p1}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :cond_0
    return-void
.end method
