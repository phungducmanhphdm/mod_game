.class public Lcom/lori/android/io/LogOutputStream;
.super Ljava/io/OutputStream;
.source "LogOutputStream.java"


# static fields
.field public static final LOG_LEVEL:I = 0x2


# instance fields
.field private bos:Ljava/io/ByteArrayOutputStream;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .local v0, "bytearrayoutputstream":Ljava/io/ByteArrayOutputStream;
    iput-object v0, p0, Lcom/lori/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    .line 13
    iput-object p1, p0, Lcom/lori/android/io/LogOutputStream;->name:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 21
    iget-object v3, p0, Lcom/lori/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 22
    .local v0, "abyte0":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 23
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/lori/android/io/LogOutputStream;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v1, "bytearrayoutputstream":Ljava/io/ByteArrayOutputStream;
    iput-object v1, p0, Lcom/lori/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    .line 30
    .end local v0    # "abyte0":[B
    .end local v1    # "bytearrayoutputstream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/lori/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
