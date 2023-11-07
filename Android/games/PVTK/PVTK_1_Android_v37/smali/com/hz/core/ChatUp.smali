.class public Lcom/hz/core/ChatUp;
.super Ljava/lang/Object;
.source "ChatUp.java"


# static fields
.field public static chatUp:Lcom/hz/core/ChatUp;

.field public static isShowGlint:Z

.field public static vChatUp:Ljava/util/Vector;


# instance fields
.field public isNew:Z

.field public player:Lcom/hz/actor/Model;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/core/ChatUp;->isShowGlint:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doChatUp(I)V
    .locals 3
    .param p0, "actionid"    # I

    .prologue
    .line 56
    new-instance v0, Lcom/hz/net/Message;

    const/16 v2, 0x2b67

    invoke-direct {v0, v2}, Lcom/hz/net/Message;-><init>(I)V

    .line 57
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p0}, Lcom/hz/net/Message;->putInt(I)V

    .line 62
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 77
    .local v1, "rs":B
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public static doChatUpRefresh(Lcom/hz/net/Message;)V
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v0

    .line 39
    .local v0, "ishasNew":Z
    const/16 v2, 0xa1

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v1

    .line 40
    .local v1, "xmlUI":Lcom/hz/ui/UIHandler;
    if-eqz v0, :cond_0

    .line 42
    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/hz/core/ChatUp;->doSeeChatUpLists()V

    .line 48
    :cond_0
    invoke-static {v0}, Lcom/hz/core/ChatUp;->doSetSpriteGuideGlintShow(Z)V

    .line 49
    return-void
.end method

.method public static doSeeChatUpLists()V
    .locals 8

    .prologue
    .line 85
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/hz/core/ChatUp;->doSetSpriteGuideGlintShow(Z)V

    .line 87
    new-instance v3, Lcom/hz/net/Message;

    const/16 v7, 0x2b69

    invoke-direct {v3, v7}, Lcom/hz/net/Message;-><init>(I)V

    .line 88
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 103
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 105
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 109
    :cond_2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 111
    .local v6, "vList":Ljava/util/Vector;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v5

    .line 116
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 128
    invoke-static {v6}, Lcom/hz/ui/UIHandler;->createChatUpListUI(Ljava/util/Vector;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v3}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v2

    .line 119
    .local v2, "ishascon":Z
    if-eqz v2, :cond_4

    .line 121
    invoke-static {v3}, Lcom/hz/core/ChatUp;->getChatUpfromByte(Lcom/hz/net/Message;)Lcom/hz/core/ChatUp;

    move-result-object v0

    .line 122
    .local v0, "chatUpdata":Lcom/hz/core/ChatUp;
    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    .end local v0    # "chatUpdata":Lcom/hz/core/ChatUp;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static doSetSpriteGuideGlintShow(Z)V
    .locals 1
    .param p0, "isShow"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/hz/core/ChatUp;->isShowGlint:Z

    .line 179
    sget-object v0, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->updateWorldIconPoint(Lcom/hz/ui/UIHandler;)V

    .line 180
    return-void
.end method

.method public static getChatUpfromByte(Lcom/hz/net/Message;)Lcom/hz/core/ChatUp;
    .locals 3
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lcom/hz/core/ChatUp;

    invoke-direct {v0}, Lcom/hz/core/ChatUp;-><init>()V

    .line 144
    .local v0, "chatUp":Lcom/hz/core/ChatUp;
    new-instance v1, Lcom/hz/actor/Model;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/hz/actor/Model;-><init>(B)V

    iput-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    .line 145
    iget-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setId(I)V

    .line 146
    iget-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setSex(B)V

    .line 148
    iget-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setIcon1(I)V

    .line 149
    iget-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setIcon2(I)V

    .line 150
    iget-object v1, v0, Lcom/hz/core/ChatUp;->player:Lcom/hz/actor/Model;

    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hz/actor/Model;->setIcon3(I)V

    .line 151
    invoke-virtual {p0}, Lcom/hz/net/Message;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hz/core/ChatUp;->time:J

    .line 152
    invoke-virtual {p0}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/hz/core/ChatUp;->isNew:Z

    goto :goto_0
.end method
