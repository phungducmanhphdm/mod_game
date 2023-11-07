.class public Lcom/lori/common/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "sjad.db"

.field public static final JIFENG_CHARGE:I = 0x321

.field public static final JIFENG_PAY:I = 0x320

.field public static final PHOTO_MAX_HEIGHT:I = 0xf0

.field public static final PHOTO_MAX_WIDTH:I = 0x140

.field public static final QQ_LOGIN_RESULT:I = 0x2bc

.field public static final QQ_PAY_QB:I = 0x2bd

.field public static final QQ_PAY_QBCARD:I = 0x2be

.field public static final QQ_PAY_SMS:I = 0x2c0

.field public static final QQ_PAY_SZF:I = 0x2bf

.field public static final SELECT_PICTURE_FROM_CAMERA:I = 0x258

.field public static final SELECT_PICTURE_FROM_FILE:I = 0x25d

.field public static final TAB:Ljava/lang/String; = "WORLD"

.field private static final TABLE_CPID:Ljava/lang/String; = "adcpid"

.field private static final TABLE_DESC:Ljava/lang/String; = "addesc"

.field private static final TABLE_ID:Ljava/lang/String; = "_id"

.field private static final TABLE_IMG:Ljava/lang/String; = "imgdata"

.field private static final TABLE_NAME:Ljava/lang/String; = "table1"

.field private static final TABLE_SCREEN:Ljava/lang/String; = "adscreen"

.field private static final TABLE_TYPE:Ljava/lang/String; = "adtype"

.field private static final TABLE_URL:Ljava/lang/String; = "adurl"

.field public static final UC_LOGIN:I = 0x384

.field public static cameraLister:Lcom/lori/common/CameraListener;

.field public static cameraPhotoFileName:Ljava/lang/String;

.field public static cameraPhotoPath:Ljava/lang/String;

.field public static filePath:Ljava/lang/String;

.field public static gameListener:Lcom/lori/common/GameListener;

.field public static googlePayListener:Lcom/lori/common/GooglePayListener;

.field public static isconnect:Z

.field private static mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field static manager:Landroid/net/ConnectivityManager;

.field private static shotBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    sput-object v2, Lcom/lori/common/Tool;->cameraLister:Lcom/lori/common/CameraListener;

    .line 88
    sput-object v2, Lcom/lori/common/Tool;->cameraPhotoPath:Ljava/lang/String;

    .line 89
    sput-object v2, Lcom/lori/common/Tool;->cameraPhotoFileName:Ljava/lang/String;

    .line 92
    sput-object v2, Lcom/lori/common/Tool;->gameListener:Lcom/lori/common/GameListener;

    .line 98
    sput-object v2, Lcom/lori/common/Tool;->googlePayListener:Lcom/lori/common/GooglePayListener;

    .line 384
    sput-object v2, Lcom/lori/common/Tool;->manager:Landroid/net/ConnectivityManager;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lori/common/Tool;->filePath:Ljava/lang/String;

    .line 557
    sput-object v2, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 752
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lori/common/Tool;->isconnect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNetIp()Ljava/lang/String;
    .locals 16

    .prologue
    .line 932
    const/4 v8, 0x0

    .line 933
    .local v8, "infoUrl":Ljava/net/URL;
    const/4 v7, 0x0

    .line 940
    .local v7, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v14, "http://www.ip.cn/"

    invoke-direct {v9, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 941
    .end local v8    # "infoUrl":Ljava/net/URL;
    .local v9, "infoUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 942
    .local v4, "connection":Ljava/net/URLConnection;
    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 943
    .local v6, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 944
    .local v12, "responseCode":I
    const/16 v14, 0xc8

    if-ne v12, v14, :cond_3

    .line 946
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 947
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "utf-8"

    invoke-direct {v14, v7, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 948
    .local v11, "reader":Ljava/io/BufferedReader;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .local v13, "strber":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 950
    .local v10, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 974
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 984
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v9    # "infoUrl":Ljava/net/URL;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "responseCode":I
    .end local v13    # "strber":Ljava/lang/StringBuilder;
    :goto_1
    return-object v10

    .line 952
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v9    # "infoUrl":Ljava/net/URL;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "responseCode":I
    .restart local v13    # "strber":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 953
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    const-string v14, "\u5f53"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 962
    .local v3, "checkS":I
    if-ltz v3, :cond_0

    .line 964
    const-string v14, "\u6765"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 965
    .local v2, "checkE":I
    if-ltz v2, :cond_0

    .line 967
    add-int/lit8 v14, v3, 0xc

    add-int/lit8 v15, v2, -0xd

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 968
    const-string v14, "."

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 969
    .local v1, "check":I
    if-gez v1, :cond_1

    goto :goto_0

    .line 978
    .end local v1    # "check":I
    .end local v2    # "checkE":I
    .end local v3    # "checkS":I
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v9    # "infoUrl":Ljava/net/URL;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "responseCode":I
    .end local v13    # "strber":Ljava/lang/StringBuilder;
    .restart local v8    # "infoUrl":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 979
    .local v5, "e":Ljava/net/MalformedURLException;
    :goto_2
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 984
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :goto_3
    const/4 v10, 0x0

    goto :goto_1

    .line 981
    :catch_1
    move-exception v5

    .line 982
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 981
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "infoUrl":Ljava/net/URL;
    .restart local v9    # "infoUrl":Ljava/net/URL;
    :catch_2
    move-exception v5

    move-object v8, v9

    .end local v9    # "infoUrl":Ljava/net/URL;
    .restart local v8    # "infoUrl":Ljava/net/URL;
    goto :goto_4

    .line 978
    .end local v8    # "infoUrl":Ljava/net/URL;
    .restart local v9    # "infoUrl":Ljava/net/URL;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9    # "infoUrl":Ljava/net/URL;
    .restart local v8    # "infoUrl":Ljava/net/URL;
    goto :goto_2

    .end local v8    # "infoUrl":Ljava/net/URL;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v9    # "infoUrl":Ljava/net/URL;
    .restart local v12    # "responseCode":I
    :cond_3
    move-object v8, v9

    .end local v9    # "infoUrl":Ljava/net/URL;
    .restart local v8    # "infoUrl":Ljava/net/URL;
    goto :goto_3
.end method

.method public static compressImage(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 185
    :try_start_0
    invoke-static {p1}, Lcom/lori/common/Tool;->getSizeOpt(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 187
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "compressImage() (80)options.inSampleSize = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "compressImage() (80)options.outWidth = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "compressImage() (80)options.outHeight = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 192
    .local v4, "inputstream":Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 195
    if-nez v1, :cond_0

    move-object v3, v6

    .line 216
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "inputstream":Ljava/io/InputStream;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 200
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "inputstream":Ljava/io/InputStream;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v1, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 202
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 204
    .local v3, "getData":[B
    if-nez v3, :cond_1

    move-object v3, v6

    .line 206
    goto :goto_0

    .line 209
    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "compressImage() "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "getData":[B
    .end local v4    # "inputstream":Ljava/io/InputStream;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v6

    .line 216
    goto :goto_0
.end method

.method public static delDataTable()V
    .locals 5

    .prologue
    .line 626
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-eqz v1, :cond_0

    .line 627
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const-string v2, "sjad.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/lori/app/PipActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 630
    :cond_0
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 633
    const-string v0, "drop table table1"

    .line 637
    .local v0, "sql":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    invoke-static {v1, v2}, Lcom/lori/common/Tool;->tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_1
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 646
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 650
    :cond_2
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 645
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 646
    sget-object v1, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 644
    :catchall_0
    move-exception v1

    .line 645
    sget-object v2, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 646
    sget-object v2, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 648
    :cond_3
    throw v1
.end method

.method public static distoryBitmap(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 378
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    :cond_0
    return-void
.end method

.method public static doCheckHasFold(Z)Ljava/lang/String;
    .locals 4
    .param p0, "isDel"    # Z

    .prologue
    .line 1031
    sget-object v2, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-nez v2, :cond_0

    .line 1033
    const/4 v1, 0x0

    .line 1054
    :goto_0
    return-object v1

    .line 1036
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v3}, Lcom/lori/app/PipActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/sjolani/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "strpath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, "folder":Ljava/io/File;
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    invoke-static {v0}, Lcom/lori/common/Tool;->doDelFoldFiles(Ljava/io/File;)V

    .line 1045
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1047
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1048
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Tool.doCheckHasFold()() !folder.exists()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Tool.doCheckHasFold()() folder.exists()222222"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doCheckNetWorking()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 783
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-eqz v1, :cond_0

    .line 814
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-static {v1}, Lcom/lori/common/Tool;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 817
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 818
    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 819
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 820
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/lori/common/Tool$4;

    invoke-direct {v3}, Lcom/lori/common/Tool$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 834
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 840
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static doDelFoldFiles(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1061
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1070
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1072
    .local v0, "childFile":[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_4

    .line 1073
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1076
    :cond_4
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_5

    .line 1079
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1076
    :cond_5
    aget-object v1, v0, v2

    .line 1077
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/lori/common/Tool;->doDelFoldFiles(Ljava/io/File;)V

    .line 1076
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static doGetDataFromFile(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1113
    if-eqz p0, :cond_0

    const-string v8, ""

    if-ne p0, v8, :cond_1

    :cond_0
    move-object v1, v7

    .line 1161
    :goto_0
    return-object v1

    .line 1117
    :cond_1
    sget-object v8, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-nez v8, :cond_2

    move-object v1, v7

    .line 1119
    goto :goto_0

    .line 1125
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v1, v7

    .line 1128
    goto :goto_0

    .line 1131
    :cond_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1135
    .local v4, "inStream":Ljava/io/FileInputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 1136
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 1138
    .local v5, "len":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1140
    .local v6, "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    .line 1147
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1149
    .local v1, "data":[B
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1150
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1152
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    .line 1154
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    move-object v1, v7

    .line 1161
    goto :goto_0

    .line 1143
    .restart local v0    # "buffer":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1156
    .end local v0    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 1157
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static doInitAd(II)Ljava/util/Vector;
    .locals 12
    .param p0, "cpid"    # I
    .param p1, "screentype"    # I

    .prologue
    .line 575
    const/4 v6, 0x0

    .line 578
    .local v6, "v":Ljava/util/Vector;
    :try_start_0
    sget-object v8, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-eqz v8, :cond_2

    .line 579
    sget-object v8, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const-string v9, "sjad.db"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lori/app/PipActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sput-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 582
    sget-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "table1"

    invoke-static {v8, v9}, Lcom/lori/common/Tool;->tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 583
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v6    # "v":Ljava/util/Vector;
    .local v7, "v":Ljava/util/Vector;
    :try_start_1
    sget-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SELECT * FROM table1 where adtype = 0 and adcpid = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adscreen"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 588
    .local v5, "cur":Landroid/database/Cursor;
    if-eqz v5, :cond_5

    .line 589
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 591
    :cond_0
    const-string v8, "imgdata"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 592
    .local v2, "adimg":[B
    const-string v8, "addesc"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "addesc":Ljava/lang/String;
    const-string v8, "adurl"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "adurl":Ljava/lang/String;
    const-string v8, "adtype"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 597
    .local v3, "adtype":I
    array-length v8, v2

    if-lez v8, :cond_1

    .line 598
    new-instance v0, Lcom/lori/common/AndAdvertisement;

    invoke-direct {v0}, Lcom/lori/common/AndAdvertisement;-><init>()V

    .line 599
    .local v0, "ad":Lcom/lori/common/AndAdvertisement;
    iput-object v2, v0, Lcom/lori/common/AndAdvertisement;->adImgData:[B

    .line 600
    iput-object v1, v0, Lcom/lori/common/AndAdvertisement;->adDesc:Ljava/lang/String;

    .line 601
    iput-object v4, v0, Lcom/lori/common/AndAdvertisement;->adUrl:Ljava/lang/String;

    .line 602
    iput v3, v0, Lcom/lori/common/AndAdvertisement;->adtype:I

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 607
    .end local v0    # "ad":Lcom/lori/common/AndAdvertisement;
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-nez v8, :cond_0

    move-object v6, v7

    .line 614
    .end local v1    # "addesc":Ljava/lang/String;
    .end local v2    # "adimg":[B
    .end local v3    # "adtype":I
    .end local v4    # "adurl":Ljava/lang/String;
    .end local v5    # "cur":Landroid/database/Cursor;
    .end local v7    # "v":Ljava/util/Vector;
    .restart local v6    # "v":Ljava/util/Vector;
    :cond_2
    :goto_0
    sget-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v8, :cond_3

    .line 615
    sget-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 619
    :cond_3
    :goto_1
    return-object v6

    .line 612
    :catch_0
    move-exception v8

    .line 614
    :goto_2
    sget-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v8, :cond_3

    .line 615
    sget-object v8, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 613
    :catchall_0
    move-exception v8

    .line 614
    :goto_3
    sget-object v9, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v9, :cond_4

    .line 615
    sget-object v9, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 617
    :cond_4
    throw v8

    .line 613
    .end local v6    # "v":Ljava/util/Vector;
    .restart local v7    # "v":Ljava/util/Vector;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "v":Ljava/util/Vector;
    .restart local v6    # "v":Ljava/util/Vector;
    goto :goto_3

    .line 612
    .end local v6    # "v":Ljava/util/Vector;
    .restart local v7    # "v":Ljava/util/Vector;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "v":Ljava/util/Vector;
    .restart local v6    # "v":Ljava/util/Vector;
    goto :goto_2

    .end local v6    # "v":Ljava/util/Vector;
    .restart local v5    # "cur":Landroid/database/Cursor;
    .restart local v7    # "v":Ljava/util/Vector;
    :cond_5
    move-object v6, v7

    .end local v7    # "v":Ljava/util/Vector;
    .restart local v6    # "v":Ljava/util/Vector;
    goto :goto_0
.end method

.method public static doNetWorking()Z
    .locals 2

    .prologue
    .line 758
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-eqz v0, :cond_0

    .line 759
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v0}, Lcom/lori/app/PipActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lori/common/Tool$3;

    invoke-direct {v1}, Lcom/lori/common/Tool$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    :cond_0
    sget-boolean v0, Lcom/lori/common/Tool;->isconnect:Z

    return v0
.end method

.method public static doSaveDataToTable(Ljava/util/Vector;)V
    .locals 9
    .param p0, "vList"    # Ljava/util/Vector;

    .prologue
    const/4 v8, 0x0

    .line 657
    invoke-static {}, Lcom/lori/common/Tool;->delDataTable()V

    .line 659
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    sget-object v5, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    if-eqz v5, :cond_2

    .line 664
    sget-object v5, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const-string v6, "sjad.db"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Lcom/lori/app/PipActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sput-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 667
    :cond_2
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_0

    .line 680
    const-string v3, "CREATE TABLE IF NOT EXISTS table1 (_id INTEGER PRIMARY KEY,imgdata BLOB,addesc TEXT,adurl TEXT,adtype INTERGER,adcpid INTERGER,adscreen INTERGER)"

    .line 686
    .local v3, "sql":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 692
    :goto_1
    :try_start_1
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "table1"

    invoke-static {v5, v6}, Lcom/lori/common/Tool;->tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 696
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lt v2, v5, :cond_5

    .line 710
    .end local v2    # "i":I
    :cond_3
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_4

    .line 711
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 715
    :cond_4
    :goto_3
    const-string v5, "testSeedDB"

    const-string v6, "CreateSeedTable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    .restart local v2    # "i":I
    :cond_5
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lori/common/AndAdvertisement;

    .line 698
    .local v0, "ad":Lcom/lori/common/AndAdvertisement;
    if-eqz v0, :cond_6

    .line 700
    const-string v4, "INSERT INTO table1(imgdata, addesc ,adurl ,adtype ,adcpid ,adscreen) values(?,?,?,?,?,?)"

    .line 701
    .local v4, "strsql":Ljava/lang/String;
    const/4 v5, 0x6

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/lori/common/AndAdvertisement;->adImgData:[B

    aput-object v6, v1, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/lori/common/AndAdvertisement;->adDesc:Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    iget-object v6, v0, Lcom/lori/common/AndAdvertisement;->adUrl:Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget v6, v0, Lcom/lori/common/AndAdvertisement;->adtype:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    iget v6, v0, Lcom/lori/common/AndAdvertisement;->adcpid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget v6, v0, Lcom/lori/common/AndAdvertisement;->adscreen:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 702
    .local v1, "args":[Ljava/lang/Object;
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    const-string v5, "sjad"

    const-string v6, "CreateTable iiiiiiii "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v4    # "strsql":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 708
    .end local v0    # "ad":Lcom/lori/common/AndAdvertisement;
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    .line 710
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_4

    .line 711
    sget-object v5, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 709
    :catchall_0
    move-exception v5

    .line 710
    sget-object v6, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_7

    .line 711
    sget-object v6, Lcom/lori/common/Tool;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 713
    :cond_7
    throw v5

    .line 688
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static doSavedataFile(Ljava/lang/String;[B)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 1089
    if-eqz p0, :cond_0

    const-string v4, ""

    if-ne p0, v4, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    const/4 v2, 0x0

    .line 1095
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .local v3, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1101
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1102
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1103
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1103
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static dotakeScreenShot(Ljavax/microedition/lcdui/Image;II)Ljava/lang/String;
    .locals 6
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 438
    if-nez p0, :cond_0

    .line 439
    const-string v4, ""

    .line 462
    :goto_0
    return-object v4

    .line 442
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 443
    .local v0, "currHeight":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    .line 444
    .local v1, "currWidth":I
    if-ge v0, p2, :cond_1

    .line 445
    move p2, v0

    .line 447
    :cond_1
    if-ge v1, p1, :cond_2

    .line 448
    move p1, v1

    .line 450
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v5, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/lori/common/Tool;->shotBitmap:Landroid/graphics/Bitmap;

    .line 452
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd_HH-mm-ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 453
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "fileName":Ljava/lang/String;
    sget-object v4, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v4}, Lcom/lori/app/PipActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/lori/common/Tool$1;

    invoke-direct {v5, v2}, Lcom/lori/common/Tool$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lori/common/Tool;->filePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static drawZoomImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZ)V
    .locals 0
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I
    .param p4, "isRate"    # Z

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawZoomImage(Ljavax/microedition/lcdui/Image;IIZ)V

    .line 334
    return-void
.end method

.method public static enterCamera(Lcom/lori/common/CameraListener;)Z
    .locals 8
    .param p0, "listener"    # Lcom/lori/common/CameraListener;

    .prologue
    .line 110
    :try_start_0
    sput-object p0, Lcom/lori/common/Tool;->cameraLister:Lcom/lori/common/CameraListener;

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 113
    .local v5, "sdCardExist":Z
    if-eqz v5, :cond_2

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/shijie/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lori/common/Tool;->cameraPhotoPath:Ljava/lang/String;

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lori/common/Tool;->cameraPhotoPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "camera.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lori/common/Tool;->cameraPhotoFileName:Ljava/lang/String;

    .line 120
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/lori/common/Tool;->cameraPhotoPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_0
    sget-object v2, Lcom/lori/common/Tool;->cameraPhotoFileName:Ljava/lang/String;

    .line 125
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 130
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "output"

    sget-object v7, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-static {v7, v1}, Lcom/lori/common/Tool;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    sget-object v6, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const/16 v7, 0x258

    invoke-virtual {v6, v4, v7}, Lcom/lori/app/PipActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "folder":Ljava/io/File;
    :goto_0
    const/4 v6, 0x1

    .line 146
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "sdCardExist":Z
    :goto_1
    return v6

    .line 136
    .restart local v5    # "sdCardExist":Z
    :cond_2
    const/4 v6, 0x0

    sput-object v6, Lcom/lori/common/Tool;->cameraPhotoPath:Ljava/lang/String;

    .line 137
    const/4 v6, 0x0

    sput-object v6, Lcom/lori/common/Tool;->cameraPhotoFileName:Ljava/lang/String;

    .line 139
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v4    # "intent":Landroid/content/Intent;
    sget-object v6, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const/16 v7, 0x258

    invoke-virtual {v6, v4, v7}, Lcom/lori/app/PipActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "sdCardExist":Z
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static enterPictureDir()Z
    .locals 4

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    sget-object v2, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    .line 172
    const/16 v3, 0x25d

    .line 171
    invoke-virtual {v2, v1, v3}, Lcom/lori/app/PipActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v2, 0x1

    .line 176
    :goto_0
    return v2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 907
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 923
    :goto_0
    const-string v5, ""

    :goto_1
    return-object v5

    .line 908
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 910
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 911
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 912
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 914
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 918
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/net/SocketException;
    const-string v5, "WifiPreference IpAddress---error-"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocalMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 875
    sget-object v2, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/lori/app/PipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 876
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 877
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getOptRatio(Ljava/io/InputStream;)D
    .locals 13
    .param p0, "inputstream"    # Ljava/io/InputStream;

    .prologue
    .line 269
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    const/4 v10, 0x0

    invoke-static {p0, v10, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 277
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 285
    .local v8, "optionWidth":I
    iget v7, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 287
    .local v7, "optionHeight":I
    const/16 v5, 0x140

    .line 288
    .local v5, "displayWidth":I
    const/16 v4, 0xf0

    .line 289
    .local v4, "displayHeight":I
    if-le v7, v8, :cond_0

    .line 290
    const/16 v4, 0x140

    .line 291
    const/16 v5, 0xf0

    .line 294
    :cond_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "compressImage() displayWidth = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", displayHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "compressImage() optionWidth = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", optionHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    if-gt v8, v5, :cond_2

    if-gt v7, v4, :cond_2

    .line 300
    const-wide/16 v2, 0x0

    .line 323
    :cond_1
    :goto_1
    return-wide v2

    .line 279
    .end local v4    # "displayHeight":I
    .end local v5    # "displayWidth":I
    .end local v7    # "optionHeight":I
    .end local v8    # "optionWidth":I
    :catch_0
    move-exception v6

    .line 281
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v4    # "displayHeight":I
    .restart local v5    # "displayWidth":I
    .restart local v7    # "optionHeight":I
    .restart local v8    # "optionWidth":I
    :cond_2
    if-le v8, v7, :cond_3

    .line 309
    div-int v10, v8, v5

    int-to-double v2, v10

    .line 311
    .local v2, "d2":D
    div-int v10, v7, v4

    int-to-double v0, v10

    .line 319
    .local v0, "d":D
    :goto_2
    cmpl-double v10, v2, v0

    if-nez v10, :cond_1

    move-wide v2, v0

    .line 323
    goto :goto_1

    .line 314
    .end local v0    # "d":D
    .end local v2    # "d2":D
    :cond_3
    div-int v10, v7, v5

    int-to-double v2, v10

    .line 316
    .restart local v2    # "d2":D
    div-int v10, v8, v4

    int-to-double v0, v10

    .restart local v0    # "d":D
    goto :goto_2
.end method

.method public static getPhone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 896
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/lori/app/PipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 897
    .local v0, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 992
    const-string v0, ""

    .line 993
    .local v0, "model":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 994
    return-object v0
.end method

.method public static getPhoneStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSizeOpt(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 224
    sget-object v8, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v8}, Lcom/lori/app/PipActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 227
    .local v3, "inputstream":Ljava/io/InputStream;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/lori/common/Tool;->getOptRatio(Ljava/io/InputStream;)D

    move-result-wide v8

    double-to-int v6, v8

    .line 231
    .local v6, "k":I
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 232
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 234
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 235
    .local v4, "inputstream1":Ljava/io/InputStream;
    invoke-static {v4, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 236
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 240
    const/16 v2, 0x140

    .line 241
    .local v2, "displayWidth":I
    const/16 v1, 0xf0

    .line 242
    .local v1, "displayHeight":I
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v8, v9, :cond_0

    .line 243
    const/16 v1, 0x140

    .line 244
    const/16 v2, 0xf0

    .line 251
    :cond_0
    :goto_0
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v8, v2, :cond_1

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v8, v1, :cond_1

    .line 253
    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 254
    return-object v7

    .line 257
    :cond_1
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 260
    .local v5, "inputstream2":Ljava/io/InputStream;
    invoke-static {v5, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 261
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private static getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 151
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 155
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 160
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 158
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getgetDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 887
    sget-object v1, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v1}, Lcom/lori/app/PipActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "ANDROID_ID":Ljava/lang/String;
    return-object v0
.end method

.method public static gettargetSdkVersion(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1203
    const/4 v2, 0x0

    .line 1205
    .local v2, "targetSdkVersion":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1206
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isConnect(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 851
    .line 852
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 851
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 853
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 856
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 859
    const/4 v3, 0x1

    .line 868
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 863
    :catch_0
    move-exception v1

    .line 865
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 868
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isConnectAble()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    sget-object v2, Lcom/lori/common/Tool;->manager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 394
    sget-object v2, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Lcom/lori/app/PipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/lori/common/Tool;->manager:Landroid/net/ConnectivityManager;

    .line 395
    sget-object v2, Lcom/lori/common/Tool;->manager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    move v2, v3

    .line 417
    .local v0, "isMobile":Z
    .local v1, "isWifi":Z
    :goto_0
    return v2

    .line 408
    .end local v0    # "isMobile":Z
    .end local v1    # "isWifi":Z
    :cond_0
    sget-object v2, Lcom/lori/common/Tool;->manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 410
    .restart local v0    # "isMobile":Z
    sget-object v2, Lcom/lori/common/Tool;->manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 411
    .restart local v1    # "isWifi":Z
    const-string v2, "WORLD"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tool.isConnectAble() isMobile="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isWifi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v2, v3

    .line 414
    goto :goto_0

    :cond_1
    move v2, v4

    .line 417
    goto :goto_0
.end method

.method public static lacksPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "mContexts"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1169
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 1174
    :goto_1
    return v1

    .line 1169
    :cond_0
    aget-object v0, p1, v2

    .line 1170
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/lori/common/Tool;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1171
    const/4 v1, 0x1

    goto :goto_1

    .line 1169
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static microBlogShare(ILjava/lang/String;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "strbitmap"    # Ljava/lang/String;

    .prologue
    .line 534
    packed-switch p0, :pswitch_data_0

    .line 553
    :goto_0
    return-void

    .line 536
    :pswitch_0
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    invoke-virtual {v0}, Lcom/lori/app/PipActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lori/common/Tool$2;

    invoke-direct {v1}, Lcom/lori/common/Tool$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static savePic(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 508
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 509
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 512
    :cond_1
    const/4 v2, 0x0

    .line 514
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 515
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_2

    .line 516
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 517
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 518
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 527
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 520
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 522
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1183
    const/4 v0, 0x1

    .line 1184
    .local v0, "result":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_0

    .line 1185
    invoke-static {p0}, Lcom/lori/common/Tool;->gettargetSdkVersion(Landroid/content/Context;)I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 1188
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1195
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 1188
    goto :goto_0

    .line 1191
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static setDoGoogleCheck(Lcom/lori/common/GooglePayListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/lori/common/GooglePayListener;

    .prologue
    .line 100
    sput-object p0, Lcom/lori/common/Tool;->googlePayListener:Lcom/lori/common/GooglePayListener;

    .line 101
    return-void
.end method

.method public static setGameListener(Lcom/lori/common/GameListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/lori/common/GameListener;

    .prologue
    .line 94
    sput-object p0, Lcom/lori/common/Tool;->gameListener:Lcom/lori/common/GameListener;

    .line 95
    return-void
.end method

.method public static setTextField(Ljavax/microedition/lcdui/TextField;Ljava/lang/String;)V
    .locals 0
    .param p0, "filed"    # Ljavax/microedition/lcdui/TextField;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 426
    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/TextField;->setThreadString(Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method

.method public static tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 725
    const/4 v2, 0x0

    .line 727
    .local v2, "result":Z
    if-nez p0, :cond_1

    move v4, v2

    .line 749
    :cond_0
    :goto_0
    return v4

    .line 730
    :cond_1
    if-eqz p1, :cond_0

    .line 734
    const/4 v1, 0x0

    .line 737
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 739
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 740
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 741
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 742
    const/4 v2, 0x1

    .end local v0    # "count":I
    .end local v3    # "sql":Ljava/lang/String;
    :cond_2
    :goto_1
    move v4, v2

    .line 749
    goto :goto_0

    .line 746
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static takeScreenShot(Ljava/lang/String;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 470
    :try_start_0
    sget-object v0, Lcom/lori/app/PipActivity;->DEFAULT_ACTIVITY:Lcom/lori/app/PipActivity;

    .line 471
    .local v0, "activity":Lcom/lori/app/PipActivity;
    if-nez v0, :cond_0

    .line 495
    .end local v0    # "activity":Lcom/lori/app/PipActivity;
    :goto_0
    return-void

    .line 478
    .restart local v0    # "activity":Lcom/lori/app/PipActivity;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 479
    const-string v3, "mounted"

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 479
    if-eqz v2, :cond_2

    .line 481
    sget-object v2, Lcom/lori/common/Tool;->shotBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/lori/common/Tool;->filePath:Ljava/lang/String;

    invoke-static {v2, v3, p0}, Lcom/lori/common/Tool;->savePic(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u622a\u56fe\u6210\u529f(\u8def\u5f84:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lori/common/Tool;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 490
    :goto_1
    const/4 v2, 0x0

    sput-object v2, Lcom/lori/common/Tool;->shotBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    .end local v0    # "activity":Lcom/lori/app/PipActivity;
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "activity":Lcom/lori/app/PipActivity;
    :cond_1
    :try_start_1
    const-string v2, "\u622a\u56fe\u5931\u8d25"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 487
    :cond_2
    const-string v2, "\u622a\u56fe\u524d\u8bf7\u63d2\u5165SD\u5361"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static zoomImage(Ljavax/microedition/lcdui/Image;IIZ)Ljavax/microedition/lcdui/Image;
    .locals 10
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "isRate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 349
    if-nez p0, :cond_0

    move-object v1, v2

    .line 369
    :goto_0
    return-object v1

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, "bgimage":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 357
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 358
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 359
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    int-to-float v6, v3

    div-float v9, v2, v6

    .line 360
    .local v9, "scaleWidth":F
    int-to-float v2, p2

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 361
    .local v8, "scaleHeight":F
    if-eqz p3, :cond_3

    .line 362
    cmpl-float v2, v9, v8

    if-lez v2, :cond_2

    move v9, v8

    .line 363
    :cond_2
    cmpl-float v2, v8, v9

    if-lez v2, :cond_3

    move v8, v9

    .line 365
    :cond_3
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 367
    const/4 v6, 0x1

    move v2, v1

    .line 366
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 369
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v7}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
