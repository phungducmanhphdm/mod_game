.class public Lcom/lori/android/io/AndroidURLConnection;
.super Ljava/lang/Object;
.source "AndroidURLConnection.java"

# interfaces
.implements Ljavax/microedition/io/HttpConnection;
.implements Ljavax/microedition/io/OutputConnection;
.implements Ljavax/microedition/io/InputConnection;
.implements Ljavax/microedition/io/Connection;


# instance fields
.field protected connected:Z

.field protected connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/lori/android/io/AndroidURLConnection;-><init>(Ljava/net/URL;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpurlconnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 20
    iput-object p1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 28
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 29
    .local v0, "httpurlconnection":Ljava/net/HttpURLConnection;
    iput-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 30
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 31
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    const v2, 0x9c40

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 32
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 49
    :cond_1
    return-void
.end method

.method public getDate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    :try_start_0
    const-string v2, "content-encoding"

    invoke-virtual {p0, v2}, Lcom/lori/android/io/AndroidURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ioexception":Ljava/io/IOException;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public getExpiration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 94
    .local v0, "obj":Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    .end local v0    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 97
    .restart local v0    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 169
    .local v0, "obj":Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .end local v0    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 172
    .restart local v0    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLength()J
    .locals 6

    .prologue
    .line 192
    :try_start_0
    const-string v4, "content-length"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/lori/android/io/AndroidURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    .local v1, "i":I
    int-to-long v2, v1

    .line 196
    .end local v1    # "i":I
    :goto_0
    return-wide v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    const-wide/32 v2, 0xffff

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 203
    .local v0, "byte0":B
    iget-object v2, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 204
    .local v2, "obj":Ljava/net/HttpURLConnection;
    if-nez v2, :cond_0

    .line 215
    .end local v0    # "byte0":B
    .end local v2    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    return v0

    .line 209
    .restart local v0    # "byte0":B
    .restart local v2    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v3, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 210
    .local v2, "obj":Ljava/net/URL;
    check-cast v2, Ljava/net/URL;

    .end local v2    # "obj":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 211
    .local v1, "i":I
    if-ne v1, v0, :cond_1

    .line 212
    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 228
    .local v0, "obj":Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 229
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    .end local v0    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 231
    .restart local v0    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRef()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 238
    .local v0, "obj":Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 239
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 242
    .end local v0    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 241
    .restart local v0    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 249
    .local v1, "obj":Ljava/net/HttpURLConnection;
    if-nez v1, :cond_1

    .line 258
    .end local v1    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-object v2

    .line 254
    .restart local v1    # "obj":Ljava/net/HttpURLConnection;
    :cond_1
    iget-object v3, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v3, v3, Ljava/net/HttpURLConnection;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 255
    .local v1, "obj":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v3, v3, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    .line 256
    iget-object v2, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 266
    .local v0, "obj":Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 267
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 270
    .end local v0    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 269
    .restart local v0    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 277
    .local v1, "httpurlconnection":Ljava/net/HttpURLConnection;
    if-nez v1, :cond_0

    .line 278
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 280
    .local v0, "flag":Z
    if-nez v0, :cond_1

    .line 282
    iget-object v3, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 283
    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v3, Ljava/net/HttpURLConnection;

    .line 288
    if-eqz v0, :cond_2

    .line 289
    iget-object v3, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 292
    .local v2, "i":I
    :goto_0
    return v2

    .line 291
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 299
    .local v1, "obj":Ljava/net/HttpURLConnection;
    if-nez v1, :cond_0

    .line 300
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 302
    .local v0, "flag":Z
    if-nez v0, :cond_1

    .line 304
    iget-object v2, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 305
    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v2, Ljava/net/HttpURLConnection;

    .line 309
    if-eqz v0, :cond_2

    .line 310
    iget-object v2, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 312
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    :try_start_0
    const-string v2, "content-type"

    invoke-virtual {p0, v2}, Lcom/lori/android/io/AndroidURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    :goto_0
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, "ioexception":Ljava/io/IOException;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 332
    .local v0, "obj":Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 333
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 336
    .end local v0    # "obj":Ljava/net/HttpURLConnection;
    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 335
    .restart local v0    # "obj":Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v1, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/lori/android/io/AndroidURLConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 343
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
    .line 349
    invoke-virtual {p0}, Lcom/lori/android/io/AndroidURLConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 350
    .local v0, "outputstream":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 361
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 362
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    .line 375
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 38
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 384
    :cond_0
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 388
    :cond_2
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connected:Z

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/lori/android/io/AndroidURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method
