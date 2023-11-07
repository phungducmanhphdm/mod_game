.class public Lcom/lori/common/TxNetGameManager;
.super Ljava/lang/Object;
.source "TxNetGameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lori/common/TxNetGameManager$InstallThread;,
        Lcom/lori/common/TxNetGameManager$UpdateUIHandler;
    }
.end annotation


# static fields
.field private static final LOGIN_ACTION:Ljava/lang/String; = "tx_netgame_login"

.field private static final LOGIN_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.wapgame.netgame.android.EnterActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.tencent.wapgame.netgame.android"

.field private static final QBCARDPAY_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.wapgame.netgame.android.QBCardPayActivity"

.field private static final QBCPAY_ACTION:Ljava/lang/String; = "tx_netgame_qbcpay"

.field private static final QBPAY_ACTION:Ljava/lang/String; = "tx_netgame_qbpay"

.field private static final QBPAY_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.wapgame.netgame.android.QBPayActivity"

.field public static final RESULT_LOGIN_SUCCEED:I = 0x8

.field public static final RESULT_QBCARD_ERROR:I = 0x7

.field public static final RESULT_QBCARD_SUCCEED:I = 0x6

.field public static final RESULT_QB_ERROR:I = 0x1

.field public static final RESULT_QB_SUCCEED:I = 0x0

.field public static final RESULT_SMS_ERROR:I = 0x3

.field public static final RESULT_SMS_SUCCEED:I = 0x2

.field public static final RESULT_SZF_ERROR:I = 0x5

.field public static final RESULT_SZF_SUCCEED:I = 0x4

.field private static final SMSPAY_ACTION:Ljava/lang/String; = "tx_netgame_smspay"

.field private static final SMSPAY_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.wapgame.netgame.android.SMSPayActivity"

.field private static final SZFPAY_ACTION:Ljava/lang/String; = "tx_netgame_szfpay"

.field private static final SZXPAY_ACTIVITY_NAME:Ljava/lang/String; = "com.tencent.wapgame.netgame.android.SZXPayActivity"

.field private static final UPDATE_UI_MESSAGE_DIALOG:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private connectionDialog:Landroid/app/ProgressDialog;

.field private inst:Lcom/lori/common/TxNetGameManager$InstallThread;

.field private updateUIHandler:Lcom/lori/common/TxNetGameManager$UpdateUIHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/lori/common/TxNetGameManager;->inst:Lcom/lori/common/TxNetGameManager$InstallThread;

    .line 64
    iput-object v1, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    .line 65
    iput-object v1, p0, Lcom/lori/common/TxNetGameManager;->updateUIHandler:Lcom/lori/common/TxNetGameManager$UpdateUIHandler;

    .line 67
    iput-object v1, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    .line 74
    iput-object p1, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    .line 75
    new-instance v0, Lcom/lori/common/TxNetGameManager$InstallThread;

    invoke-direct {v0, p0, v1}, Lcom/lori/common/TxNetGameManager$InstallThread;-><init>(Lcom/lori/common/TxNetGameManager;Lcom/lori/common/TxNetGameManager$InstallThread;)V

    iput-object v0, p0, Lcom/lori/common/TxNetGameManager;->inst:Lcom/lori/common/TxNetGameManager$InstallThread;

    .line 76
    new-instance v0, Lcom/lori/common/TxNetGameManager$UpdateUIHandler;

    invoke-direct {v0, p0}, Lcom/lori/common/TxNetGameManager$UpdateUIHandler;-><init>(Lcom/lori/common/TxNetGameManager;)V

    iput-object v0, p0, Lcom/lori/common/TxNetGameManager;->updateUIHandler:Lcom/lori/common/TxNetGameManager$UpdateUIHandler;

    .line 78
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    .line 79
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 80
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    const-string v1, "\ufffd\ufffd\u02be"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    const-string v1, "\ufffd\ufffd\ufffd\u0630\ufffd\u05f0\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u0234\ufffd..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 83
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/lori/common/TxNetGameManager;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->connectionDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lori/common/TxNetGameManager;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/lori/common/TxNetGameManager;->showMessageDialog(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lori/common/TxNetGameManager;)Lcom/lori/common/TxNetGameManager$InstallThread;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lori/common/TxNetGameManager;->inst:Lcom/lori/common/TxNetGameManager$InstallThread;

    return-object v0
.end method

.method private copyApkToSd([B)Z
    .locals 17
    .param p1, "data"    # [B

    .prologue
    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 271
    .local v10, "sdcardDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "sdcardDirPath":Ljava/lang/String;
    new-instance v12, Landroid/os/StatFs;

    invoke-direct {v12, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 274
    .local v12, "sf":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v3, v13

    .line 275
    .local v3, "blockSize":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v1, v13

    .line 277
    .local v1, "availCount":J
    const-string v13, "QQLog"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "TxNetGameManager.copyApkToSd() sdcardDirPath="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " blockSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " availCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    mul-long v13, v1, v3

    move-object/from16 v0, p1

    array-length v15, v0

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    .line 279
    const-string v13, "\ufffd\u6d22\ufffd\u057c\u4cbb\ufffd\ufffd\ufffd\ufffd"

    const-string v14, "\ufffd\ufffd\ufffd\ufffd"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lori/common/TxNetGameManager;->showMessageDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v13, 0x0

    .line 304
    :goto_0
    return v13

    .line 282
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/txngm.apk"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 285
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 286
    :cond_1
    const/4 v8, 0x0

    .line 288
    .local v8, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 289
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    if-eqz v9, :cond_2

    .line 299
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 304
    :cond_2
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 291
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 292
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    const-string v13, "\u0434\ufffd\ufffd\ufffd\ufffd\ufffd"

    const-string v14, "\ufffd\ufffd\ufffd\ufffd"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lori/common/TxNetGameManager;->showMessageDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    if-eqz v8, :cond_3

    .line 299
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 295
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    const/4 v13, 0x0

    goto :goto_0

    .line 300
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 301
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 296
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 297
    :goto_4
    if-eqz v8, :cond_4

    .line 299
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 303
    :cond_4
    :goto_5
    throw v13

    .line 300
    :catch_2
    move-exception v5

    .line 301
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 300
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 301
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 296
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 291
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v8, v9

    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private downLoadFile(Ljava/lang/String;)[B
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 315
    .local v3, "din":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 318
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 319
    .local v7, "urlName":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 320
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 321
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v3    # "din":Ljava/io/InputStream;
    .local v4, "din":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 323
    .local v6, "len":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v8, -0x1

    if-gt v6, v8, :cond_3

    .line 326
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 331
    if-eqz v1, :cond_0

    .line 333
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 338
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 340
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 345
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v3, v4

    .line 349
    .end local v4    # "din":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "urlName":Ljava/net/URL;
    .restart local v3    # "din":Ljava/io/InputStream;
    :goto_3
    return-object v8

    .line 324
    .end local v3    # "din":Ljava/io/InputStream;
    .restart local v4    # "din":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "urlName":Ljava/net/URL;
    :cond_3
    :try_start_4
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 328
    .end local v4    # "din":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "urlName":Ljava/net/URL;
    .restart local v3    # "din":Ljava/io/InputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\ufffd\ufffd\ufffd\u0634\ufffd\ufffd\ufffd"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\ufffd\ufffd\ufffd\ufffd"

    invoke-direct {p0, v8, v9}, Lcom/lori/common/TxNetGameManager;->showMessageDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    if-eqz v1, :cond_4

    .line 333
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 338
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 340
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 345
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 346
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 349
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 334
    .end local v3    # "din":Ljava/io/InputStream;
    .restart local v4    # "din":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "urlName":Ljava/net/URL;
    :catch_1
    move-exception v5

    .line 335
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 341
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 342
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 334
    .end local v4    # "din":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "urlName":Ljava/net/URL;
    .restart local v3    # "din":Ljava/io/InputStream;
    .local v5, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 335
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 341
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 342
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 330
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 331
    :goto_7
    if-eqz v1, :cond_7

    .line 333
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 338
    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    .line 340
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 345
    :cond_8
    :goto_9
    if-eqz v2, :cond_9

    .line 346
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 348
    :cond_9
    throw v8

    .line 334
    :catch_5
    move-exception v5

    .line 335
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 341
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 342
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 330
    .end local v3    # "din":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "din":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "urlName":Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "din":Ljava/io/InputStream;
    .restart local v3    # "din":Ljava/io/InputStream;
    goto :goto_7

    .line 327
    .end local v6    # "len":I
    .end local v7    # "urlName":Ljava/net/URL;
    :catch_7
    move-exception v5

    goto :goto_4
.end method

.method private installApk()V
    .locals 4

    .prologue
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/txngm.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method private isTxNetGameManagerInstalled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v3, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 222
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.tencent.wapgame.netgame.android"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showInstallAlertDialog()V
    .locals 4

    .prologue
    .line 234
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "textView":Landroid/widget/TextView;
    const-string v2, "\ufffd\ufffd\u04aa\ufffd\ufffd\u05f0\ufffd\ufffd\u0476\ufffd\ufffd\ufffd\ufffd\ufffd\u02fb\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u01f7\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd?"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 238
    const-string v2, "\ufffd\ufffd\u02be"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 240
    const-string v2, "\u0237\ufffd\ufffd"

    new-instance v3, Lcom/lori/common/TxNetGameManager$1;

    invoke-direct {v3, p0}, Lcom/lori/common/TxNetGameManager$1;-><init>(Lcom/lori/common/TxNetGameManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    const-string v2, "\u0221\ufffd\ufffd"

    new-instance v3, Lcom/lori/common/TxNetGameManager$2;

    invoke-direct {v3, p0}, Lcom/lori/common/TxNetGameManager$2;-><init>(Lcom/lori/common/TxNetGameManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 252
    return-void
.end method

.method private showMessageDialog(Landroid/os/Message;)V
    .locals 5
    .param p1, "mess"    # Landroid/os/Message;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 372
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "message":Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 378
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 380
    return-void
.end method

.method private showMessageDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 365
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 366
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 367
    iget-object v2, p0, Lcom/lori/common/TxNetGameManager;->updateUIHandler:Lcom/lori/common/TxNetGameManager$UpdateUIHandler;

    invoke-virtual {v2, v1}, Lcom/lori/common/TxNetGameManager$UpdateUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method


# virtual methods
.method public Login(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->isTxNetGameManagerInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cpid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "gameid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.wapgame.netgame.android"

    const-string v4, "com.tencent.wapgame.netgame.android.EnterActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, "comp":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "tx_netgame_login"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->showInstallAlertDialog()V

    goto :goto_0
.end method

.method public QBCardPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "goodsid"    # Ljava/lang/String;
    .param p4, "linkid"    # Ljava/lang/String;
    .param p5, "requestCode"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->isTxNetGameManagerInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cpid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "gameid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "goodsid"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "linkid"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.wapgame.netgame.android"

    const-string v4, "com.tencent.wapgame.netgame.android.QBCardPayActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v1, "comp":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "tx_netgame_qbcpay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    iget-object v3, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->showInstallAlertDialog()V

    goto :goto_0
.end method

.method public QBPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "goodsid"    # Ljava/lang/String;
    .param p4, "goodcount"    # Ljava/lang/String;
    .param p5, "linkid"    # Ljava/lang/String;
    .param p6, "requestCode"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->isTxNetGameManagerInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cpid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "gameid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "goodsid"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "goodcount"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "linkid"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.wapgame.netgame.android"

    const-string v4, "com.tencent.wapgame.netgame.android.QBPayActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v1, "comp":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "tx_netgame_qbpay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, p6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->showInstallAlertDialog()V

    goto :goto_0
.end method

.method public SMSPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "goodsid"    # Ljava/lang/String;
    .param p4, "linkid"    # Ljava/lang/String;
    .param p5, "requestCode"    # I

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->isTxNetGameManagerInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cpid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "gameid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "goodsid"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "linkid"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.wapgame.netgame.android"

    const-string v4, "com.tencent.wapgame.netgame.android.SMSPayActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v1, "comp":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "tx_netgame_smspay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->showInstallAlertDialog()V

    goto :goto_0
.end method

.method public SZFPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cpid"    # Ljava/lang/String;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "goodsid"    # Ljava/lang/String;
    .param p4, "linkid"    # Ljava/lang/String;
    .param p5, "requestCode"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->isTxNetGameManagerInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cpid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "gameid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "goodsid"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "linkid"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.wapgame.netgame.android"

    const-string v4, "com.tencent.wapgame.netgame.android.SZXPayActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v1, "comp":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "tx_netgame_szfpay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 182
    iget-object v3, p0, Lcom/lori/common/TxNetGameManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/lori/common/TxNetGameManager;->showInstallAlertDialog()V

    goto :goto_0
.end method
