.class public Lcom/lori/android/media/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static playerMrg:Ljava/util/Vector;


# instance fields
.field file:Ljava/io/File;

.field public mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    .local v6, "s1":Ljava/lang/String;
    const-string v7, "--New SoundPlayer"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "file1":Ljava/io/File;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 33
    .local v3, "fileinputstream":Ljava/io/FileInputStream;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 34
    .local v4, "mediaplayer":Landroid/media/MediaPlayer;
    iput-object v4, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    iget-object v5, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .local v5, "mediaplayer1":Landroid/media/MediaPlayer;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 37
    .local v2, "filedescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 38
    iget-object v7, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 39
    iget-object v7, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 40
    iget-object v7, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 41
    iget-object v7, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 42
    iget-object v7, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "filedescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .end local v4    # "mediaplayer":Landroid/media/MediaPlayer;
    .end local v5    # "mediaplayer1":Landroid/media/MediaPlayer;
    :goto_1
    return-void

    .line 28
    .end local v1    # "file1":Ljava/io/File;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lori/android/media/SoundPlayer;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .restart local v1    # "file1":Ljava/io/File;
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static pauseAll()V
    .locals 3

    .prologue
    .line 50
    sget-object v2, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 51
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 54
    return-void

    .line 52
    :cond_0
    sget-object v2, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lori/android/media/SoundPlayer;

    invoke-virtual {v2}, Lcom/lori/android/media/SoundPlayer;->pause()V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static resumeAll()V
    .locals 3

    .prologue
    .line 58
    sget-object v2, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 59
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    sget-object v2, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lori/android/media/SoundPlayer;

    invoke-virtual {v2}, Lcom/lori/android/media/SoundPlayer;->resume()V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 68
    sget-object v1, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    .line 69
    .local v1, "vector":Ljava/util/Vector;
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    .local v0, "mediaplayer":Landroid/media/MediaPlayer;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 74
    .end local v0    # "mediaplayer":Landroid/media/MediaPlayer;
    .end local v1    # "vector":Ljava/util/Vector;
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 16
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v10, 0x0

    .line 89
    .local v10, "flag":Z
    const/4 v12, 0x0

    .line 90
    .local v12, "inputstream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 91
    .local v9, "fileoutputstream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 93
    .local v3, "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    sget-object v7, Lcom/lori/app/PipActivity;->baseDir:Ljava/io/File;

    .line 94
    .local v7, "file1":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v8, "file2":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 147
    .end local v8    # "file2":Ljava/io/File;
    :goto_0
    return-object v8

    .line 100
    .restart local v8    # "file2":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 101
    if-nez v12, :cond_4

    .line 127
    if-eqz v3, :cond_1

    .line 128
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 135
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 142
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 102
    :cond_3
    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    .line 105
    :cond_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 106
    sget-object v2, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 107
    .local v2, "activity":Landroid/app/Activity;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 108
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    .end local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .local v4, "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    const/16 v5, 0x2000

    .line 110
    .local v5, "c":C
    :try_start_5
    new-array v1, v5, [B

    .line 112
    .local v1, "abyte0":[B
    :goto_4
    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v11

    .line 114
    .local v11, "i":I
    if-gtz v11, :cond_8

    .line 127
    if-eqz v4, :cond_5

    .line 128
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 134
    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    .line 135
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 141
    :cond_6
    :goto_6
    if-eqz v12, :cond_7

    .line 142
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_7
    move-object v3, v4

    .line 120
    .end local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 117
    .end local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    :cond_8
    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v4, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 118
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 122
    .end local v1    # "abyte0":[B
    .end local v11    # "i":I
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 123
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .end local v5    # "c":C
    .restart local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .local v6, "ex":Ljava/lang/Exception;
    :goto_8
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 127
    if-eqz v3, :cond_9

    .line 128
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 134
    :cond_9
    :goto_9
    if-eqz v9, :cond_a

    .line 135
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 141
    :cond_a
    :goto_a
    if-eqz v12, :cond_b

    .line 142
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 147
    :cond_b
    :goto_b
    const/4 v8, 0x0

    goto :goto_0

    .line 124
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 127
    :goto_c
    if-eqz v3, :cond_c

    .line 128
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 134
    :cond_c
    :goto_d
    if-eqz v9, :cond_d

    .line 135
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 141
    :cond_d
    :goto_e
    if-eqz v12, :cond_e

    .line 142
    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 146
    :cond_e
    :goto_f
    throw v13

    .line 129
    :catch_1
    move-exception v13

    goto :goto_1

    .line 136
    :catch_2
    move-exception v13

    goto :goto_2

    .line 143
    :catch_3
    move-exception v13

    goto :goto_3

    .line 129
    .end local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "abyte0":[B
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "c":C
    .restart local v11    # "i":I
    :catch_4
    move-exception v13

    goto :goto_5

    .line 136
    :catch_5
    move-exception v13

    goto :goto_6

    .line 143
    :catch_6
    move-exception v13

    goto :goto_7

    .line 129
    .end local v1    # "abyte0":[B
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .end local v5    # "c":C
    .end local v11    # "i":I
    .restart local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_7
    move-exception v13

    goto :goto_9

    .line 136
    :catch_8
    move-exception v13

    goto :goto_a

    .line 143
    :catch_9
    move-exception v13

    goto :goto_b

    .line 129
    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_a
    move-exception v14

    goto :goto_d

    .line 136
    :catch_b
    move-exception v14

    goto :goto_e

    .line 143
    :catch_c
    move-exception v14

    goto :goto_f

    .line 124
    .end local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "c":C
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedoutputstream":Ljava/io/BufferedOutputStream;
    goto :goto_c

    .line 122
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v5    # "c":C
    :catch_d
    move-exception v6

    goto :goto_8
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public notifyVM(Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .prologue
    .line 222
    const-string v0, "OnBufferingUpdate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/lori/android/media/SoundPlayer;->notifyVM(Ljava/lang/String;II)V

    .line 223
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 227
    const-string v0, "OnCompletion"

    invoke-virtual {p0, v0, v1, v1}, Lcom/lori/android/media/SoundPlayer;->notifyVM(Ljava/lang/String;II)V

    .line 228
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 232
    const-string v0, "OnError"

    invoke-virtual {p0, v0, p2, p3}, Lcom/lori/android/media/SoundPlayer;->notifyVM(Ljava/lang/String;II)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 238
    const-string v0, "onPrepared"

    invoke-virtual {p0, v0, v1, v1}, Lcom/lori/android/media/SoundPlayer;->notifyVM(Ljava/lang/String;II)V

    .line 239
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 244
    return-void
.end method

.method public play(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 250
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 251
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 252
    sget-object v0, Lcom/lori/android/media/SoundPlayer;->playerMrg:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 258
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 263
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 268
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 272
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lori/android/media/SoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 277
    return-void
.end method
