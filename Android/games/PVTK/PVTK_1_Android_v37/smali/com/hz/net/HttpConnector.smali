.class public Lcom/hz/net/HttpConnector;
.super Ljava/lang/Object;
.source "HttpConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static BUFFER:[B = null

.field public static final BUFFER_SIZE:I = 0x100

.field public static final HTTP_RETRY_TIME:I = 0x5

.field public static errorCounter:B

.field public static isConnSucess:Z

.field private static postSendCounter:B

.field public static proxy:Z

.field public static referer:Ljava/lang/String;

.field public static repeatSendTest:Z

.field public static sendCounter:B


# instance fields
.field public isRunning:Z

.field random:Ljava/util/Random;

.field public requestQueue:Ljava/util/Vector;

.field public result:Ljava/util/Vector;

.field private sleeping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lcom/hz/net/HttpConnector;->repeatSendTest:Z

    .line 27
    sput-boolean v1, Lcom/hz/net/HttpConnector;->isConnSucess:Z

    .line 33
    sput-boolean v1, Lcom/hz/net/HttpConnector;->proxy:Z

    .line 47
    sput-byte v1, Lcom/hz/net/HttpConnector;->sendCounter:B

    .line 49
    sput-byte v1, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/hz/net/HttpConnector;->referer:Ljava/lang/String;

    .line 69
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/hz/net/HttpConnector;->BUFFER:[B

    .line 369
    sput-byte v1, Lcom/hz/net/HttpConnector;->postSendCounter:B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/hz/net/HttpConnector;->sleeping:Z

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hz/net/HttpConnector;->isRunning:Z

    .line 77
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    .line 82
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    .line 188
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/hz/net/HttpConnector;->random:Ljava/util/Random;

    .line 86
    sput-byte v2, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 88
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public static changeProxy()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/hz/net/HttpConnector;->isConnSucess:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-boolean v0, Lcom/hz/net/HttpConnector;->proxy:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/hz/net/HttpConnector;->proxy:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static postHttpRequest(Lcom/hz/net/HttpRequest;[B)V
    .locals 14
    .param p0, "httpRequest"    # Lcom/hz/net/HttpRequest;
    .param p1, "postData"    # [B

    .prologue
    const/16 v13, 0x400

    const/4 v12, 0x1

    .line 372
    if-nez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    if-eqz p0, :cond_0

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, "conn":Ljavax/microedition/io/HttpConnection;
    const/4 v8, 0x0

    .line 385
    .local v8, "os":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 386
    .local v6, "is":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 395
    .local v9, "url":Ljava/lang/String;
    const/4 v10, 0x3

    const/4 v11, 0x1

    :try_start_0
    invoke-static {v9, v10, v11}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    move-object v3, v0

    .line 397
    const-string v10, "POST"

    invoke-interface {v3, v10}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 398
    const-string v10, "Connection"

    const-string v11, "close"

    invoke-interface {v3, v10, v11}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v10, "User-Agent"

    const-string v11, "Profile/MIDP-2.0 Configuration/CLDC-1.0"

    invoke-interface {v3, v10, v11}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v10, "Content-Type"

    const-string v11, "application/octet-stream"

    invoke-interface {v3, v10, v11}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v10, "Content-Length"

    array-length v11, p1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 404
    invoke-virtual {v8, p1}, Ljava/io/OutputStream;->write([B)V

    .line 405
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 409
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v10

    iput v10, p0, Lcom/hz/net/HttpRequest;->responseCode:I

    .line 410
    iget v10, p0, Lcom/hz/net/HttpRequest;->responseCode:I

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_3

    .line 411
    sget-byte v10, Lcom/hz/net/HttpConnector;->postSendCounter:B

    if-gt v10, v12, :cond_2

    .line 412
    sget-byte v10, Lcom/hz/net/HttpConnector;->postSendCounter:B

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    sput-byte v10, Lcom/hz/net/HttpConnector;->postSendCounter:B

    .line 413
    invoke-static {p0, p1}, Lcom/hz/net/HttpConnector;->postHttpRequest(Lcom/hz/net/HttpRequest;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_1
    if-eqz v3, :cond_0

    .line 460
    :try_start_1
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v10

    goto :goto_0

    .line 419
    :cond_2
    const/4 v10, 0x0

    :try_start_2
    sput-byte v10, Lcom/hz/net/HttpConnector;->postSendCounter:B

    .line 420
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 448
    :catch_1
    move-exception v4

    .line 454
    .local v4, "e":Ljava/io/IOException;
    const/16 v10, 0x63

    :try_start_3
    iput v10, p0, Lcom/hz/net/HttpRequest;->responseCode:I

    .line 455
    const/4 v10, 0x0

    sput-byte v10, Lcom/hz/net/HttpConnector;->postSendCounter:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    if-eqz v3, :cond_0

    .line 460
    :try_start_4
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 461
    :catch_2
    move-exception v10

    goto :goto_0

    .line 423
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v10, 0x0

    :try_start_5
    sput-byte v10, Lcom/hz/net/HttpConnector;->postSendCounter:B

    .line 426
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 427
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 429
    .local v2, "bufferByte":[B
    const/4 v5, 0x0

    .line 430
    .local v5, "index":I
    const/4 v7, 0x0

    .line 432
    .local v7, "lenth":I
    :cond_4
    :goto_2
    rsub-int v10, v5, 0x400

    invoke-virtual {v6, v2, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 433
    if-gez v7, :cond_5

    .line 443
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, p0, Lcom/hz/net/HttpRequest;->response:[B

    .line 445
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 446
    invoke-static {v8}, Lcom/hz/common/Tool;->safeCloseOutputStream(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 458
    if-eqz v3, :cond_0

    .line 460
    :try_start_6
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 461
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 436
    :cond_5
    :try_start_7
    invoke-virtual {v1, v2, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 437
    add-int/2addr v5, v7

    .line 439
    if-lt v5, v13, :cond_4

    .line 440
    const/4 v5, 0x0

    .line 431
    goto :goto_2

    .line 457
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bufferByte":[B
    .end local v5    # "index":I
    .end local v7    # "lenth":I
    :catchall_0
    move-exception v10

    .line 458
    if-eqz v3, :cond_6

    .line 460
    :try_start_8
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 467
    :cond_6
    :goto_3
    throw v10

    .line 461
    :catch_4
    move-exception v11

    goto :goto_3
.end method

.method public static sendHttpRequest(Lcom/hz/net/HttpRequest;Z)V
    .locals 19
    .param p0, "httpRequest"    # Lcom/hz/net/HttpRequest;
    .param p1, "isWappay"    # Z

    .prologue
    .line 480
    if-nez p0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 486
    .local v13, "tempUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 487
    .local v3, "conn":Ljavax/microedition/io/HttpConnection;
    const/4 v6, 0x0

    .line 488
    .local v6, "in":Ljava/io/InputStream;
    const/4 v11, -0x1

    .line 489
    .local v11, "responseCode":I
    const/4 v10, 0x0

    .line 490
    .local v10, "request":Ljava/lang/String;
    const/4 v7, 0x0

    .line 491
    .local v7, "index":I
    const/4 v5, 0x0

    .line 495
    .local v5, "errorPos":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 507
    :cond_2
    sget-boolean v17, Lcom/hz/net/HttpConnector;->proxy:Z

    if-eqz v17, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 511
    .local v12, "suffix":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "http://10.0.0.172:80"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 517
    .end local v12    # "suffix":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x1

    .line 525
    const/16 v17, 0x1

    .line 526
    const/16 v18, 0x1

    .line 525
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    move-object v3, v0

    .line 532
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/hz/net/HttpRequest;->isTabStatus(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 533
    move-object v0, v3

    check-cast v0, Lcom/lori/android/io/AndroidURLConnection;

    move-object/from16 v17, v0

    const/16 v18, 0x2710

    invoke-virtual/range {v17 .. v18}, Lcom/lori/android/io/AndroidURLConnection;->setConnectTimeout(I)V

    .line 537
    :cond_3
    const/4 v5, 0x2

    .line 538
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 540
    const/4 v5, 0x3

    .line 541
    sget-boolean v17, Lcom/hz/net/HttpConnector;->proxy:Z

    if-eqz v17, :cond_4

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "ip":Ljava/lang/String;
    const-string v17, "X-Online-Host"

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v8}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .end local v8    # "ip":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    .line 600
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v11

    .line 601
    move-object/from16 v0, p0

    iput v11, v0, Lcom/hz/net/HttpRequest;->responseCode:I

    .line 603
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 605
    const/4 v5, 0x5

    .line 609
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    const/16 v17, 0x12e

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    .line 616
    sget-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sput-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 618
    move-object/from16 v0, p0

    iput v11, v0, Lcom/hz/net/HttpRequest;->responseCode:I

    .line 621
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_0

    .line 808
    :try_start_1
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 809
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 514
    :cond_5
    :try_start_2
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "http://"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 627
    :cond_6
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v11, v0, :cond_8

    .line 632
    const-string v17, "Location"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 642
    .local v16, "url":Ljava/lang/String;
    sget-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sput-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 643
    sget-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_0

    .line 808
    :try_start_3
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 809
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 648
    :cond_7
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 649
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/hz/net/HttpConnector;->sendHttpRequest(Lcom/hz/net/HttpRequest;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_0

    .line 808
    :try_start_5
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 809
    :catch_2
    move-exception v17

    goto/16 :goto_0

    .line 666
    .end local v16    # "url":Ljava/lang/String;
    :cond_8
    :try_start_6
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->getType()Ljava/lang/String;

    move-result-object v15

    .line 686
    .local v15, "type":Ljava/lang/String;
    if-eqz v15, :cond_a

    const-string v17, "audio/midi"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    if-nez p1, :cond_a

    .line 691
    sget-byte v17, Lcom/hz/net/HttpConnector;->sendCounter:B

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 693
    const/16 v17, 0x0

    sput-byte v17, Lcom/hz/net/HttpConnector;->sendCounter:B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_0

    .line 808
    :try_start_7
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 809
    :catch_3
    move-exception v17

    goto/16 :goto_0

    .line 696
    :cond_9
    :try_start_8
    sget-byte v17, Lcom/hz/net/HttpConnector;->sendCounter:B

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sput-byte v17, Lcom/hz/net/HttpConnector;->sendCounter:B

    .line 697
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    .line 698
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/hz/net/HttpConnector;->sendHttpRequest(Lcom/hz/net/HttpRequest;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_0

    .line 808
    :try_start_9
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 809
    :catch_4
    move-exception v17

    goto/16 :goto_0

    .line 702
    :cond_a
    const/16 v17, 0x0

    :try_start_a
    sput-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 705
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 708
    const/4 v5, 0x6

    .line 709
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 712
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 713
    const/4 v9, 0x0

    .line 714
    .local v9, "len":I
    const/4 v14, 0x0

    .line 718
    .local v14, "total":I
    :goto_2
    sget-object v17, Lcom/hz/net/HttpConnector;->BUFFER:[B

    rsub-int v0, v7, 0x100

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 719
    if-gez v9, :cond_c

    .line 740
    const/4 v5, 0x7

    .line 742
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/net/HttpRequest;->response:[B

    .line 744
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_b

    .line 808
    :try_start_b
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 816
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "len":I
    .end local v14    # "total":I
    .end local v15    # "type":Ljava/lang/String;
    :cond_b
    :goto_3
    const/16 v17, 0x0

    sput-byte v17, Lcom/hz/net/HttpConnector;->sendCounter:B

    goto/16 :goto_0

    .line 723
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "len":I
    .restart local v14    # "total":I
    .restart local v15    # "type":Ljava/lang/String;
    :cond_c
    :try_start_c
    sget-object v17, Lcom/hz/net/HttpConnector;->BUFFER:[B

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 724
    add-int/2addr v7, v9

    .line 727
    const/16 v17, 0x100

    move/from16 v0, v17

    if-lt v7, v0, :cond_d

    .line 729
    add-int/2addr v14, v7

    .line 730
    const/4 v7, 0x0

    .line 731
    const/4 v9, 0x0

    .line 735
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 747
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "len":I
    .end local v14    # "total":I
    .end local v15    # "type":Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 750
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d
    sget-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sput-byte v17, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 797
    const/16 v17, 0x63

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/net/HttpRequest;->responseCode:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_b

    .line 808
    :try_start_e
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_3

    .line 809
    :catch_6
    move-exception v17

    goto :goto_3

    .line 800
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 802
    invoke-static {v6}, Lcom/hz/common/Tool;->safeCloseInputStream(Ljava/io/InputStream;)V

    .line 804
    if-eqz v3, :cond_e

    .line 808
    :try_start_f
    invoke-interface {v3}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 813
    :cond_e
    :goto_4
    throw v17

    .line 809
    :catch_7
    move-exception v18

    goto :goto_4

    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "len":I
    .restart local v14    # "total":I
    .restart local v15    # "type":Ljava/lang/String;
    :catch_8
    move-exception v17

    goto :goto_3
.end method

.method public static setConnSucess()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hz/net/HttpConnector;->isConnSucess:Z

    .line 30
    return-void
.end method


# virtual methods
.method public doSend(Lcom/hz/net/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/hz/net/HttpRequest;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/hz/net/HttpRequest;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/hz/net/HttpConnector;->notifyMe()V

    goto :goto_0
.end method

.method equalData([B[B)Z
    .locals 6
    .param p1, "data1"    # [B
    .param p2, "data2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 339
    if-eqz p2, :cond_2

    .line 363
    :cond_0
    :goto_0
    return v3

    .line 345
    :cond_1
    if-eqz p2, :cond_0

    .line 349
    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_0

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-lt v0, v4, :cond_3

    .line 363
    .end local v0    # "i":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 355
    .restart local v0    # "i":I
    :cond_3
    aget-byte v1, p1, v0

    .line 356
    .local v1, "x":I
    aget-byte v2, p2, v0

    .line 358
    .local v2, "y":I
    if-ne v1, v2, :cond_0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getResponses()[Lcom/hz/net/Message;
    .locals 8

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "msgList":[Lcom/hz/net/Message;
    iget-object v7, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    monitor-enter v7

    .line 135
    :try_start_0
    iget-object v6, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "offsetIndex":I
    const/4 v5, 0x0

    .line 140
    .local v5, "responseList":[Lcom/hz/net/Message;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 161
    iget-object v6, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->removeAllElements()V

    .line 133
    .end local v0    # "i":I
    .end local v3    # "offsetIndex":I
    .end local v5    # "responseList":[Lcom/hz/net/Message;
    :cond_0
    monitor-exit v7

    .line 165
    return-object v2

    .line 141
    .restart local v0    # "i":I
    .restart local v3    # "offsetIndex":I
    .restart local v5    # "responseList":[Lcom/hz/net/Message;
    :cond_1
    iget-object v6, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/net/HttpRequest;

    .line 142
    .local v4, "request":Lcom/hz/net/HttpRequest;
    invoke-virtual {v4}, Lcom/hz/net/HttpRequest;->parse()[Lcom/hz/net/Message;

    move-result-object v5

    .line 143
    if-eqz v5, :cond_2

    array-length v6, v5

    if-gtz v6, :cond_3

    .line 140
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_3
    array-length v6, v5

    add-int/2addr v6, v3

    new-array v2, v6, [Lcom/hz/net/Message;

    .line 148
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 150
    array-length v6, v2

    if-ge v3, v6, :cond_2

    .line 156
    aget-object v6, v5, v1

    aput-object v6, v2, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v3    # "offsetIndex":I
    .end local v4    # "request":Lcom/hz/net/HttpRequest;
    .end local v5    # "responseList":[Lcom/hz/net/Message;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInResult(Lcom/hz/net/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lcom/hz/net/HttpRequest;

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized notifyMe()V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hz/net/HttpConnector;->sleeping:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rand(I)I
    .locals 1
    .param p1, "range"    # I

    .prologue
    .line 198
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/net/HttpConnector;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xc8

    const/4 v4, 0x0

    .line 208
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/hz/net/HttpConnector;->isRunning:Z

    if-nez v1, :cond_1

    .line 334
    :goto_1
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x0

    .line 212
    .local v0, "request":Lcom/hz/net/HttpRequest;
    monitor-enter p0

    .line 215
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v1, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "request":Lcom/hz/net/HttpRequest;
    check-cast v0, Lcom/hz/net/HttpRequest;

    .line 252
    .restart local v0    # "request":Lcom/hz/net/HttpRequest;
    invoke-static {v0, v4}, Lcom/hz/net/HttpConnector;->sendHttpRequest(Lcom/hz/net/HttpRequest;Z)V

    .line 283
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/hz/net/HttpRequest;->responseCode:I

    if-eq v1, v5, :cond_5

    .line 286
    sget-byte v1, Lcom/hz/net/HttpConnector;->errorCounter:B

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 288
    iget-object v1, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 289
    sput-byte v4, Lcom/hz/net/HttpConnector;->errorCounter:B

    .line 292
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->toNetWorkError(I)V

    goto :goto_0

    .line 221
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/hz/net/HttpConnector;->sleeping:Z

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hz/net/HttpConnector;->sleeping:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/hz/net/HttpConnector;->isRunning:Z

    if-nez v1, :cond_2

    .line 234
    monitor-exit p0

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 296
    :cond_4
    const-string v1, "M\u1ea1ng kh\u00f4ng \u1ed5n \u0111\u1ecbnh, g\u1eedi l\u1ea1i [%U]"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-byte v3, Lcom/hz/net/HttpConnector;->errorCounter:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hz/common/Utilities;->manageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hz/main/WorldMessage;->addSystemChat(Ljava/lang/String;)V

    .line 297
    sget-byte v1, Lcom/hz/net/HttpConnector;->errorCounter:B

    shl-int v1, v5, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/hz/common/Tool;->sleep(J)V

    goto :goto_0

    .line 303
    :cond_5
    if-eqz v0, :cond_6

    .line 305
    iget-object v2, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    monitor-enter v2

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/hz/net/HttpConnector;->result:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 305
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    sget-byte v1, Lcom/hz/main/MsgHandler;->MSG_RECEIVE_HTTP:B

    sput-byte v1, Lcom/hz/main/MsgHandler;->msgReceiveTag:B

    .line 315
    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/hz/net/HttpConnector;->requestQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 327
    sget-byte v1, Lcom/hz/net/HttpConnector;->errorCounter:B

    shl-int v1, v5, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 305
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 227
    :catch_1
    move-exception v1

    goto :goto_2
.end method
