.class public Ljavax/microedition/media/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field public static final TONE_DEVICE_LOCATOR:Ljava/lang/String; = "tone_device"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 1
    .param p0, "ins"    # Ljava/io/InputStream;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 2
    .param p0, "locator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 17
    const-string v1, "tone_device"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v0, Ljavax/microedition/media/TonePlayer;

    invoke-direct {v0}, Ljavax/microedition/media/TonePlayer;-><init>()V

    .line 25
    .local v0, "player":Ljavax/microedition/media/Player;
    :goto_0
    return-object v0

    .line 23
    .end local v0    # "player":Ljavax/microedition/media/Player;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "player":Ljavax/microedition/media/Player;
    goto :goto_0
.end method

.method public static getSupportedContentTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static playTone(III)V
    .locals 0
    .param p0, "note"    # I
    .param p1, "duration"    # I
    .param p2, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method


# virtual methods
.method public getSupportedProtocols(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "content_type"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
