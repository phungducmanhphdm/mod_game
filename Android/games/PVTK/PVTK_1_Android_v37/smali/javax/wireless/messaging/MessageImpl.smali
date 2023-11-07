.class public Ljavax/wireless/messaging/MessageImpl;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Ljavax/wireless/messaging/Message;


# instance fields
.field protected address:Ljava/lang/String;

.field protected timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Ljavax/wireless/messaging/MessageImpl;->timestamp:Ljava/util/Date;

    .line 12
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Ljavax/wireless/messaging/MessageImpl;->setAddress(Ljava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Ljavax/wireless/messaging/MessageImpl;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljavax/wireless/messaging/MessageImpl;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v1, "sms://"

    .line 29
    .local v1, "s1":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "i":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 34
    .end local v0    # "i":I
    :cond_0
    iput-object p1, p0, Ljavax/wireless/messaging/MessageImpl;->address:Ljava/lang/String;

    .line 35
    return-void
.end method
