.class public Lcom/hz/core/Marry;
.super Ljava/lang/Object;
.source "Marry.java"


# static fields
.field public static final WEDDING_CARD_TYPE_LUXURY:B = 0x2t

.field public static final WEDDING_CARD_TYPE_ORDINARY:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doMarryInvitationCard(B)V
    .locals 12
    .param p0, "type"    # B

    .prologue
    const/4 v11, 0x0

    .line 30
    sget-object v4, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 31
    .local v4, "player":Lcom/hz/actor/Player;
    if-nez v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v3, Lcom/hz/net/Message;

    const/16 v9, 0x34ef

    invoke-direct {v3, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 38
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-virtual {v3, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 40
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 46
    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v7

    .line 56
    .local v7, "rs":B
    if-gez v7, :cond_2

    .line 58
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 63
    .local v2, "moneyType":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 64
    .local v1, "money":I
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "strinfo":Ljava/lang/String;
    const/16 v9, 0xf

    invoke-static {v9}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v9, v8, v10}, Lcom/hz/ui/UIHandler;->waitForTwiceSureUI(Ljava/lang/String;Ljava/lang/String;I)S

    move-result v0

    .line 74
    .local v0, "askResult":I
    const/16 v9, 0x14

    if-eq v0, v9, :cond_0

    .line 79
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    packed-switch v2, :pswitch_data_0

    .line 102
    :cond_3
    new-instance v5, Lcom/hz/net/Message;

    const/16 v9, 0x34f0

    invoke-direct {v5, v9}, Lcom/hz/net/Message;-><init>(I)V

    .line 103
    .local v5, "reqmsg":Lcom/hz/net/Message;
    invoke-virtual {v5, p0}, Lcom/hz/net/Message;->putByte(B)V

    .line 105
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 110
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 111
    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v5}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    .line 121
    .local v6, "reqrs":B
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 123
    if-ltz v6, :cond_0

    .line 129
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/actor/Player;->money1:I

    .line 130
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/actor/Player;->money2:I

    .line 131
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    iput v9, v4, Lcom/hz/actor/Player;->money3:I

    goto :goto_0

    .line 86
    .end local v5    # "reqmsg":Lcom/hz/net/Message;
    .end local v6    # "reqrs":B
    :pswitch_0
    invoke-static {v1, v11, v11}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_0

    .line 91
    :pswitch_1
    invoke-static {v11, v1, v11}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_0

    .line 95
    :pswitch_2
    invoke-static {v11, v11, v1}, Lcom/hz/actor/Model;->checkEnoughMoney(III)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
