.class public interface abstract Ljavax/microedition/io/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljavax/microedition/io/ContentConnection;


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_EXPECT_FAILED:I = 0x1a1

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_TEMP_REDIRECT:I = 0x133

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNSUPPORTED_RANGE:I = 0x1a0

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VERSION:I = 0x1f9

.field public static final POST:Ljava/lang/String; = "POST"


# virtual methods
.method public abstract getDate()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getExpiration()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFile()Ljava/lang/String;
.end method

.method public abstract getHeaderField(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderFieldDate(Ljava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderFieldInt(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderFieldKey(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLastModified()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public abstract getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseMessage()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setRequestMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
