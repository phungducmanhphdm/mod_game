.class public Ljavax/microedition/io/file/FileConnectionImpl;
.super Ljava/lang/Object;
.source "FileConnectionImpl.java"

# interfaces
.implements Ljavax/microedition/io/file/FileConnection;


# instance fields
.field dis:Ljava/io/DataInputStream;

.field dos:Ljava/io/DataOutputStream;

.field file:Ljava/io/File;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->url:Ljava/lang/String;

    .line 15
    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 16
    .local v1, "j":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "s1":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "file1":Ljava/io/File;
    iput-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    .line 19
    return-void
.end method


# virtual methods
.method public availableSize()J
    .locals 6

    .prologue
    .line 23
    invoke-virtual {p0}, Ljavax/microedition/io/file/FileConnectionImpl;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    .local v3, "statfs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 26
    .local v0, "i":I
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 27
    .local v1, "j":I
    mul-int v4, v0, v1

    int-to-long v4, v4

    return-wide v4
.end method

.method public canRead()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 47
    iput-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dos:Ljava/io/DataOutputStream;

    .line 49
    :cond_0
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 52
    iput-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dis:Ljava/io/DataInputStream;

    .line 54
    :cond_1
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 57
    iput-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    .line 59
    :cond_2
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 62
    iput-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->is:Ljava/io/InputStream;

    .line 64
    :cond_3
    return-void
.end method

.method public create()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 70
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    return-void
.end method

.method public directorySize(Z)J
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

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
    .line 92
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    iget-object v3, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "s":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 100
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 101
    move-object v2, v1

    .line 104
    .local v2, "s1":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 103
    .end local v2    # "s1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "s1":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    iget-object v3, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "s":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 112
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 113
    move-object v2, v1

    .line 116
    .local v2, "s1":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 115
    .end local v2    # "s1":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "s1":Ljava/lang/String;
    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ljavax/microedition/io/file/FileConnectionImpl;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 137
    iget-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dos:Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->is:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()Ljava/util/Enumeration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v6, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "as":[Ljava/lang/String;
    array-length v1, v0

    .line 166
    .local v1, "i":I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v1}, Ljava/util/Vector;-><init>(I)V

    .line 167
    .local v5, "vector":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 170
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    .line 171
    .local v3, "k":I
    if-ge v2, v3, :cond_0

    .line 173
    aget-object v4, v0, v2

    .line 174
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 176
    goto :goto_0

    .line 178
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    return-object v6
.end method

.method public list(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public mkdir()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 193
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Ljavax/microedition/io/file/FileConnectionImpl;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 199
    .local v1, "inputstream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v0, "datainputstream":Ljava/io/DataInputStream;
    iput-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dis:Ljava/io/DataInputStream;

    .line 201
    iget-object v2, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dis:Ljava/io/DataInputStream;

    return-object v2
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Ljavax/microedition/io/file/FileConnectionImpl;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 208
    .local v1, "outputstream":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v0, "dataoutputstream":Ljava/io/DataOutputStream;
    iput-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dos:Ljava/io/DataOutputStream;

    .line 210
    iget-object v2, p0, Ljavax/microedition/io/file/FileConnectionImpl;->dos:Ljava/io/DataOutputStream;

    return-object v2
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    .line 217
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 218
    .local v1, "fileinputstream":Ljava/io/FileInputStream;
    iput-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->is:Ljava/io/InputStream;

    .line 219
    iget-object v2, p0, Ljavax/microedition/io/file/FileConnectionImpl;->is:Ljava/io/InputStream;

    return-object v2
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    .line 226
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 227
    .local v1, "fileoutputstream":Ljava/io/FileOutputStream;
    iput-object v1, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    .line 228
    iget-object v2, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    return-object v2
.end method

.method public openOutputStream(J)Ljava/io/OutputStream;
    .locals 4
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    .line 235
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v1, "randomaccessfile":Ljava/io/RandomAccessFile;
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 237
    new-instance v2, Ljavax/microedition/io/file/RandomAccessFileOutputStream;

    invoke-direct {v2, v1}, Ljavax/microedition/io/file/RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    .line 238
    .local v2, "randomaccessfileoutputstream":Ljavax/microedition/io/file/RandomAccessFileOutputStream;
    iput-object v2, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    .line 239
    iget-object v3, p0, Ljavax/microedition/io/file/FileConnectionImpl;->os:Ljava/io/OutputStream;

    return-object v3
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
    .line 245
    invoke-virtual {p0}, Ljavax/microedition/io/file/FileConnectionImpl;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "s1":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v0, "file1":Ljava/io/File;
    iget-object v2, p0, Ljavax/microedition/io/file/FileConnectionImpl;->file:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 248
    return-void
.end method

.method public setFileConnection(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    return-void
.end method

.method public setReadable(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method public setWritable(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public totalSize()J
    .locals 2

    .prologue
    .line 272
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public truncate(J)V
    .locals 0
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public usedSize()J
    .locals 2

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    return-wide v0
.end method
