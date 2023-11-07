.class public Ljavax/microedition/media/TonePlayer;
.super Ljava/lang/Object;
.source "TonePlayer.java"

# interfaces
.implements Ljavax/microedition/media/Player;
.implements Ljavax/microedition/media/control/ToneControl;
.implements Ljavax/microedition/media/Controllable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 0
    .param p1, "playerListener"    # Ljavax/microedition/media/PlayerListener;

    .prologue
    .line 31
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public deallocate()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControl(Ljava/lang/String;)Ljavax/microedition/media/Control;
    .locals 1
    .param p1, "controlType"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "ToneControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    .end local p0    # "this":Ljavax/microedition/media/TonePlayer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Ljavax/microedition/media/TonePlayer;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getControls()[Ljavax/microedition/media/Control;
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/microedition/media/Control;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaTime()J
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public prefetch()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public realize()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 0
    .param p1, "playerListener"    # Ljavax/microedition/media/PlayerListener;

    .prologue
    .line 85
    return-void
.end method

.method public setLoopCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 91
    return-void
.end method

.method public setMediaTime(J)J
    .locals 2
    .param p1, "now"    # J

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setSequence([B)V
    .locals 0
    .param p1, "sequence"    # [B

    .prologue
    .line 114
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
