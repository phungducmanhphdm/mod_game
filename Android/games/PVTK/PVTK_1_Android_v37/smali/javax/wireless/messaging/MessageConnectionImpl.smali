.class public Ljavax/wireless/messaging/MessageConnectionImpl;
.super Landroid/content/BroadcastReceiver;
.source "MessageConnectionImpl.java"

# interfaces
.implements Ljavax/wireless/messaging/MessageConnection;


# static fields
.field private static final ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private isListeningForMessages:Z

.field private messageListener:Ljavax/wireless/messaging/MessageListener;

.field private port:S

.field private final receiveLock:Ljava/lang/Object;

.field private final receivedMessages:Ljava/util/ArrayList;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const-string v8, "sms://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    .line 22
    .local v1, "j":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->url:Ljava/lang/String;

    .line 24
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    .line 26
    const/16 v8, 0x3a

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 28
    .local v3, "k":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 33
    .local v5, "l":I
    if-ge v3, v5, :cond_0

    .line 38
    add-int/lit8 v0, v3, 0x1

    .line 39
    .local v0, "i1":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "s1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 44
    .local v2, "j1":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 45
    .local v4, "k1":I
    if-lt v2, v4, :cond_2

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-short v7, v8

    .line 48
    .local v7, "word0":S
    iput-short v7, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->port:S

    goto :goto_0

    .line 52
    .end local v7    # "word0":S
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-short v7, v8

    .line 61
    .restart local v7    # "word0":S
    iput-short v7, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->port:S

    goto :goto_0
.end method

.method private setupMessageReceiver()V
    .locals 2

    .prologue
    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    .line 81
    .local v0, "obj1":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 78
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-boolean v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    .line 88
    :cond_0
    return-void

    .line 78
    .end local v0    # "obj1":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public newMessage(Ljava/lang/String;)Ljavax/wireless/messaging/Message;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->url:Ljava/lang/String;

    .line 93
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljavax/wireless/messaging/MessageConnectionImpl;->newMessage(Ljava/lang/String;Ljava/lang/String;)Ljavax/wireless/messaging/Message;

    move-result-object v1

    return-object v1
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/String;)Ljavax/wireless/messaging/Message;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v2, "text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Ljavax/wireless/messaging/TextMessageImpl;

    invoke-direct {v1, p2}, Ljavax/wireless/messaging/TextMessageImpl;-><init>(Ljava/lang/String;)V

    .line 110
    :goto_0
    check-cast v1, Ljavax/wireless/messaging/Message;

    return-object v1

    .line 105
    :cond_0
    const-string v2, "binary"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    new-instance v1, Ljavax/wireless/messaging/BinaryMessageImpl;

    invoke-direct {v1, p2}, Ljavax/wireless/messaging/BinaryMessageImpl;-><init>(Ljava/lang/String;)V

    .local v1, "obj":Ljavax/wireless/messaging/BinaryMessageImpl;
    goto :goto_0

    .line 108
    .end local v1    # "obj":Ljavax/wireless/messaging/BinaryMessageImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public numberOfSegments(Ljavax/wireless/messaging/Message;)I
    .locals 7
    .param p1, "message"    # Ljavax/wireless/messaging/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 115
    const/4 v1, 0x1

    .line 116
    .local v1, "flag":Z
    instance-of v2, p1, Ljavax/wireless/messaging/TextMessage;

    .line 118
    .local v2, "flag1":Z
    if-eqz v2, :cond_2

    .line 120
    check-cast p1, Ljavax/wireless/messaging/TextMessage;

    .end local p1    # "message":Ljavax/wireless/messaging/Message;
    invoke-interface {p1}, Ljavax/wireless/messaging/TextMessage;->getPayloadText()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 123
    if-eqz v1, :cond_0

    .line 147
    .end local v4    # "s":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    return v3

    .end local v3    # "i":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 123
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit16 v3, v5, 0xa0

    .line 127
    .restart local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_0

    .line 131
    .end local v3    # "i":I
    .end local v4    # "s":Ljava/lang/String;
    .restart local p1    # "message":Ljavax/wireless/messaging/Message;
    :cond_2
    instance-of v6, p1, Ljavax/wireless/messaging/BinaryMessage;

    if-eqz v6, :cond_5

    .line 133
    check-cast p1, Ljavax/wireless/messaging/BinaryMessage;

    .end local p1    # "message":Ljavax/wireless/messaging/Message;
    invoke-interface {p1}, Ljavax/wireless/messaging/BinaryMessage;->getPayloadData()[B

    move-result-object v0

    .line 134
    .local v0, "abyte0":[B
    if-nez v0, :cond_4

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .restart local v3    # "i":I
    :goto_1
    goto :goto_0

    .end local v3    # "i":I
    :cond_3
    move v3, v5

    .line 136
    goto :goto_1

    .line 139
    :cond_4
    array-length v5, v0

    div-int/lit16 v3, v5, 0x8c

    .line 140
    .restart local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    .line 142
    goto :goto_0

    .line 144
    .end local v0    # "abyte0":[B
    .end local v3    # "i":I
    .restart local p1    # "message":Ljavax/wireless/messaging/Message;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "pdus"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 153
    .local v0, "aobj":[Ljava/lang/Object;
    move-object v1, v0

    .line 154
    .local v1, "aobj1":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 157
    .local v4, "j":I
    :goto_0
    array-length v3, v1

    .line 158
    .local v3, "i":I
    if-ge v4, v3, :cond_1

    .line 160
    aget-object v11, v1, v4

    check-cast v11, [B

    invoke-static {v11}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v9

    .line 161
    .local v9, "smsmessage":Landroid/telephony/gsm/SmsMessage;
    invoke-virtual {v9}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    .line 163
    .local v5, "l":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 164
    .local v2, "date":Ljava/util/Date;
    new-instance v10, Ljavax/wireless/messaging/TextMessageImpl;

    invoke-direct {v10, v8, v2}, Ljavax/wireless/messaging/TextMessageImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 165
    .local v10, "textmessageimpl":Ljavax/wireless/messaging/TextMessageImpl;
    iget-object v11, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v12, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    monitor-enter v12

    .line 168
    :try_start_0
    iget-object v7, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    .line 169
    .local v7, "obj1":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v11, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->messageListener:Ljavax/wireless/messaging/MessageListener;

    if-eqz v11, :cond_0

    .line 173
    iget-object v11, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->messageListener:Ljavax/wireless/messaging/MessageListener;

    invoke-interface {v11, p0}, Ljavax/wireless/messaging/MessageListener;->notifyIncomingMessage(Ljavax/wireless/messaging/MessageConnection;)V

    .line 175
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 176
    goto :goto_0

    .line 166
    .end local v7    # "obj1":Ljava/lang/Object;
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 178
    .end local v2    # "date":Ljava/util/Date;
    .end local v5    # "l":J
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "smsmessage":Landroid/telephony/gsm/SmsMessage;
    .end local v10    # "textmessageimpl":Ljavax/wireless/messaging/TextMessageImpl;
    :cond_1
    return-void
.end method

.method public receive()Ljavax/wireless/messaging/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "i":I
    iget-boolean v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    .line 189
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 190
    invoke-direct {p0}, Ljavax/wireless/messaging/MessageConnectionImpl;->setupMessageReceiver()V

    .line 191
    :cond_0
    iget-object v6, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    .line 193
    .local v6, "obj":Ljava/lang/Object;
    monitor-enter v6

    .line 194
    :try_start_0
    iget-object v8, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 195
    .local v3, "j":I
    if-gtz v3, :cond_2

    .line 199
    :try_start_1
    iget-object v7, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    .line 200
    .local v7, "obj1":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v7    # "obj1":Ljava/lang/Object;
    :goto_0
    :try_start_2
    iget-object v8, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 205
    iget-object v8, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/wireless/messaging/Message;

    .line 208
    .local v4, "message":Ljavax/wireless/messaging/Message;
    monitor-exit v6

    move-object v5, v4

    .line 213
    .end local v4    # "message":Ljavax/wireless/messaging/Message;
    .local v5, "message":Ljavax/wireless/messaging/Message;
    :goto_1
    return-object v5

    .line 207
    .end local v5    # "message":Ljavax/wireless/messaging/Message;
    :cond_1
    new-instance v8, Ljava/io/InterruptedIOException;

    invoke-direct {v8}, Ljava/io/InterruptedIOException;-><init>()V

    throw v8

    .line 193
    .end local v3    # "j":I
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 211
    .restart local v3    # "j":I
    :cond_2
    :try_start_3
    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    .line 212
    .local v0, "arraylist":Ljava/util/ArrayList;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/wireless/messaging/Message;

    .line 213
    .restart local v4    # "message":Ljavax/wireless/messaging/Message;
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v4

    .end local v4    # "message":Ljavax/wireless/messaging/Message;
    .restart local v5    # "message":Ljavax/wireless/messaging/Message;
    goto :goto_1

    .line 202
    .end local v0    # "arraylist":Ljava/util/ArrayList;
    .end local v5    # "message":Ljavax/wireless/messaging/Message;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public send(Ljavax/wireless/messaging/Message;)V
    .locals 17
    .param p1, "message"    # Ljavax/wireless/messaging/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, "s":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljavax/wireless/messaging/Message;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "s1":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v10, v0, Ljavax/wireless/messaging/TextMessage;

    if-eqz v10, :cond_0

    .line 225
    check-cast p1, Ljavax/wireless/messaging/TextMessage;

    .end local p1    # "message":Ljavax/wireless/messaging/Message;
    invoke-interface/range {p1 .. p1}, Ljavax/wireless/messaging/TextMessage;->getPayloadText()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "s2":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    .line 227
    .local v1, "smsmanager":Landroid/telephony/gsm/SmsManager;
    move-object v12, v3

    .line 228
    .local v12, "obj":Ljava/lang/Object;
    move-object v13, v3

    .local v13, "obj1":Ljava/lang/Object;
    move-object v5, v12

    .line 229
    check-cast v5, Landroid/app/PendingIntent;

    move-object v6, v13

    check-cast v6, Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 246
    .end local v1    # "smsmanager":Landroid/telephony/gsm/SmsManager;
    .end local v4    # "s2":Ljava/lang/String;
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v13    # "obj1":Ljava/lang/Object;
    :goto_0
    return-void

    .line 231
    .restart local p1    # "message":Ljavax/wireless/messaging/Message;
    :cond_0
    move-object/from16 v0, p1

    instance-of v10, v0, Ljavax/wireless/messaging/BinaryMessage;

    if-eqz v10, :cond_1

    .line 233
    check-cast p1, Ljavax/wireless/messaging/BinaryMessage;

    .end local p1    # "message":Ljavax/wireless/messaging/Message;
    invoke-interface/range {p1 .. p1}, Ljavax/wireless/messaging/BinaryMessage;->getPayloadData()[B

    move-result-object v9

    .line 234
    .local v9, "abyte0":[B
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v5

    .line 235
    .local v5, "smsmanager1":Landroid/telephony/gsm/SmsManager;
    move-object/from16 v0, p0

    iget-short v8, v0, Ljavax/wireless/messaging/MessageConnectionImpl;->port:S

    .line 236
    .local v8, "word0":S
    move-object v6, v2

    .line 237
    .local v6, "s3":Ljava/lang/String;
    move-object v7, v3

    .line 238
    .local v7, "s4":Ljava/lang/Object;
    move-object v14, v3

    .line 239
    .local v14, "s5":Ljava/lang/Object;
    move-object v15, v3

    .line 240
    .local v15, "s6":Ljava/lang/Object;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/telephony/gsm/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 243
    .end local v5    # "smsmanager1":Landroid/telephony/gsm/SmsManager;
    .end local v6    # "s3":Ljava/lang/String;
    .end local v7    # "s4":Ljava/lang/Object;
    .end local v8    # "word0":S
    .end local v9    # "abyte0":[B
    .end local v14    # "s5":Ljava/lang/Object;
    .end local v15    # "s6":Ljava/lang/Object;
    .restart local p1    # "message":Ljavax/wireless/messaging/Message;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 244
    .local v16, "s7":Ljava/lang/String;
    new-instance v10, Ljava/io/IOException;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public setMessageListener(Ljavax/wireless/messaging/MessageListener;)V
    .locals 1
    .param p1, "messagelistener"    # Ljavax/wireless/messaging/MessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-boolean v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Ljavax/wireless/messaging/MessageConnectionImpl;->setupMessageReceiver()V

    .line 253
    :cond_0
    iput-object p1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->messageListener:Ljavax/wireless/messaging/MessageListener;

    .line 254
    return-void
.end method
