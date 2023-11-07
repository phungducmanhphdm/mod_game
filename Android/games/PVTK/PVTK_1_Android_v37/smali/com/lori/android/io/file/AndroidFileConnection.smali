.class public Lcom/lori/android/io/file/AndroidFileConnection;
.super Ljava/lang/Object;
.source "AndroidFileConnection.java"

# interfaces
.implements Ljavax/microedition/io/file/FileConnection;


# static fields
.field private static final SPECIAL_CHARACTERS:Ljava/lang/String; = "*.^?[]\\"


# instance fields
.field private file:Ljava/io/File;

.field private open:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file1"    # Ljava/io/File;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->open:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p1}, Lcom/lori/android/io/file/AndroidFileConnection;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lori/android/io/file/AndroidFileConnection;-><init>(Ljava/io/File;)V

    .line 22
    return-void
.end method

.method private static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 27
    .local v1, "i":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    .local v4, "stringbuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 31
    .local v2, "j":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 32
    .local v3, "k":I
    if-ge v2, v3, :cond_1

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 35
    .local v0, "c":C
    const-string v5, "*.^?[]\\"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 36
    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 41
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getDirectorySize(Ljava/io/File;Z)J
    .locals 12
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "flag"    # Z

    .prologue
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .local v4, "l":J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "afile":[Ljava/io/File;
    array-length v2, v0

    .line 51
    .local v2, "i":I
    const/4 v3, 0x0

    .line 52
    .local v3, "j":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 69
    return-wide v4

    .line 54
    :cond_0
    aget-object v1, v0, v3

    .line 55
    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 57
    if-eqz p2, :cond_1

    .line 59
    invoke-direct {p0, v1, p2}, Lcom/lori/android/io/file/AndroidFileConnection;->getDirectorySize(Ljava/io/File;Z)J

    move-result-wide v6

    .line 60
    .local v6, "l1":J
    const-wide/16 v10, 0xa

    add-long/2addr v4, v10

    .line 67
    .end local v6    # "l1":J
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 65
    .local v8, "l2":J
    const-wide/16 v10, 0xd

    add-long/2addr v4, v10

    goto :goto_1
.end method

.method public static final getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 75
    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v1
.end method

.method public static final getParentDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p0, "file1"    # Ljava/io/File;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "s":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 83
    .local v7, "s1":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 86
    .local v2, "j":I
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    .line 87
    .local v3, "k":I
    sub-int v4, v2, v3

    .line 88
    .local v4, "l":I
    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 90
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v4    # "l":I
    :cond_0
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    .line 91
    .local v8, "s2":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, "i1":I
    if-ltz v1, :cond_1

    .line 95
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "s3":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .end local v9    # "s3":Ljava/lang/String;
    :goto_0
    check-cast v5, Ljava/io/File;

    return-object v5

    .line 99
    :cond_1
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "obj":Ljava/lang/Integer;
    goto :goto_0
.end method


# virtual methods
.method public availableSize()J
    .locals 2

    .prologue
    .line 106
    const-wide/32 v0, 0xffff

    return-wide v0
.end method

.method public canRead()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->open:Z

    .line 123
    return-void
.end method

.method public create()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/IOException;

    const-string v1, "file creation failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/io/IOException;

    const-string v1, "file deletion failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    return-void
.end method

.method public directorySize(Z)J
    .locals 3
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 147
    .local v0, "file1":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/lori/android/io/file/AndroidFileConnection;->getDirectorySize(Ljava/io/File;Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public fileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->open:Z

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lori/android/io/file/AndroidFileConnection;->list(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p1, :cond_2

    .line 211
    const-string v11, "\\*"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "as":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 213
    .local v4, "i":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 214
    .local v10, "stringbuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 217
    .local v5, "j":I
    :goto_0
    array-length v6, v0

    .line 218
    .local v6, "k":I
    if-lt v5, v6, :cond_0

    .line 226
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 231
    .end local v0    # "as":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v10    # "stringbuffer":Ljava/lang/StringBuffer;
    .local v8, "pattern":Ljava/util/regex/Pattern;
    :goto_1
    move-object v3, v8

    .line 232
    .local v3, "filterPattern":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 235
    .local v1, "file1":Ljava/io/File;
    new-instance v2, Lcom/lori/android/io/file/AndroidFileConnection$1;

    invoke-direct {v2, p0, v3}, Lcom/lori/android/io/file/AndroidFileConnection$1;-><init>(Lcom/lori/android/io/file/AndroidFileConnection;Ljava/util/regex/Pattern;)V

    .line 245
    .local v2, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 246
    .local v7, "list1":Ljava/util/List;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11, v7}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v11

    return-object v11

    .line 220
    .end local v1    # "file1":Ljava/io/File;
    .end local v2    # "filter":Ljava/io/FilenameFilter;
    .end local v3    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v7    # "list1":Ljava/util/List;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    .restart local v0    # "as":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "k":I
    .restart local v10    # "stringbuffer":Ljava/lang/StringBuffer;
    :cond_0
    aget-object v11, v0, v5

    invoke-static {v11}, Lcom/lori/android/io/file/AndroidFileConnection;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "s1":Ljava/lang/String;
    if-lez v5, :cond_1

    .line 222
    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    add-int/lit8 v5, v5, 0x1

    .line 225
    goto :goto_0

    .line 229
    .end local v0    # "as":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v9    # "s1":Ljava/lang/String;
    .end local v10    # "stringbuffer":Ljava/lang/StringBuffer;
    :cond_2
    const-string v11, ".*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .restart local v8    # "pattern":Ljava/util/regex/Pattern;
    goto :goto_1
.end method

.method public mkdir()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to create directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/lori/android/io/file/AndroidFileConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 262
    .local v0, "inputstream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/lori/android/io/file/AndroidFileConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 269
    .local v0, "outputstream":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 276
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lori/android/io/file/AndroidFileConnection;->openOutputStream(J)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream(J)Ljava/io/OutputStream;
    .locals 6
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 301
    .local v1, "flag":Z
    :goto_0
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 302
    .local v0, "file1":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v4

    .line 295
    .end local v0    # "file1":Ljava/io/File;
    .end local v1    # "flag":Z
    :cond_0
    iget-object v4, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 296
    .local v2, "l1":J
    const-wide/16 v4, 0x6

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 297
    const/4 v1, 0x1

    .restart local v1    # "flag":Z
    goto :goto_0

    .line 299
    .end local v1    # "flag":Z
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "offsets not supported"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public rename(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v2, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/lori/android/io/file/AndroidFileConnection;->getParentDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 309
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v1, "file2":Ljava/io/File;
    iget-object v2, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 311
    return-void
.end method

.method public setFileConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v3, ".."

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    iget-object v3, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/lori/android/io/file/AndroidFileConnection;->getParentDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 319
    .local v0, "file1":Ljava/io/File;
    if-nez v0, :cond_0

    .line 320
    new-instance v3, Ljava/io/IOException;

    const-string v4, "no parent dir"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    :cond_0
    iput-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 328
    .end local v0    # "file1":Ljava/io/File;
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    .line 325
    .local v1, "file2":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v2, "file3":Ljava/io/File;
    iput-object v2, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadable(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWritable(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public totalSize()J
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public truncate(J)V
    .locals 2
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usedSize()J
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
