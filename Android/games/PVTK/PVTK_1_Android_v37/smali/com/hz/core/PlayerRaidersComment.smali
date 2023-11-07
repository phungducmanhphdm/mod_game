.class public Lcom/hz/core/PlayerRaidersComment;
.super Ljava/lang/Object;
.source "PlayerRaidersComment.java"


# instance fields
.field public actorid:I

.field public actorjob:B

.field public actorname:Ljava/lang/String;

.field public conent:Ljava/lang/String;

.field public gmcomment:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public publisherid:I

.field public publishname:Ljava/lang/String;

.field vRaidersCommentList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCommentKeyMenu(Lcom/hz/ui/UIHandler;)V
    .locals 8
    .param p0, "parentUI"    # Lcom/hz/ui/UIHandler;

    .prologue
    const/4 v2, -0x1

    .line 193
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 194
    .local v7, "menuList":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 195
    .local v1, "eventList":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 197
    .local v6, "keyList":Ljava/util/Vector;
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 198
    const-string v0, "B\u00ecnh lu\u1eadn"

    const/16 v3, 0x313d

    invoke-static {v7, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 199
    const-string v0, "GM b\u00ecnh lu\u1eadn"

    const/16 v3, 0x313c

    invoke-static {v7, v0, v1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 201
    invoke-static {v7}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    .line 203
    const/16 v4, 0x37

    move-object v5, p0

    .line 201
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createChoiceMenu([Ljava/lang/String;Ljava/lang/Object;ILcom/hz/ui/UIListener;SLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    .line 204
    return-void
.end method

.method public static doPlayerRaidersCommentGetData(Lcom/hz/core/PlayerRaidersComment;II)[Ljava/lang/Object;
    .locals 8
    .param p0, "playerraiderscom"    # Lcom/hz/core/PlayerRaidersComment;
    .param p1, "pageSize"    # I
    .param p2, "pageNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 35
    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v5

    .line 38
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x3e8e

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 40
    .local v2, "msg":Lcom/hz/net/Message;
    int-to-short v6, p1

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 41
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 42
    iget-byte v6, p0, Lcom/hz/core/PlayerRaidersComment;->actorjob:B

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 43
    iget v6, p0, Lcom/hz/core/PlayerRaidersComment;->actorid:I

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 50
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 64
    .local v0, "allsize":I
    if-gez v0, :cond_2

    .line 66
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/hz/core/PlayerRaidersComment;->gmcomment:Ljava/lang/String;

    .line 72
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    .line 74
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 79
    .local v4, "size":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 86
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {v2}, Lcom/hz/core/PlayerRaidersComment;->getPlayerRaidersComfromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerRaidersComment;

    move-result-object v3

    .line 81
    .local v3, "raidercommentdata":Lcom/hz/core/PlayerRaidersComment;
    if-eqz v3, :cond_4

    .line 82
    iget-object v5, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getPlayerRaidersComfromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PlayerRaidersComment;
    .locals 2
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-instance v0, Lcom/hz/core/PlayerRaidersComment;

    invoke-direct {v0}, Lcom/hz/core/PlayerRaidersComment;-><init>()V

    .line 99
    .local v0, "praidercomment":Lcom/hz/core/PlayerRaidersComment;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/PlayerRaidersComment;->publishname:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/PlayerRaidersComment;->conent:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hz/core/PlayerRaidersComment;->id:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    iput v1, v0, Lcom/hz/core/PlayerRaidersComment;->publisherid:I

    goto :goto_0
.end method


# virtual methods
.method public doCommentPlayer(Lcom/hz/ui/UIHandler;)V
    .locals 14
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/16 v0, 0x3d

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "<N\u1ed9i dung>"

    const-string v3, ""

    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameForm;->createInputForm(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hz/main/GameForm;

    move-result-object v6

    .line 127
    .local v6, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v6}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v7

    .line 128
    .local v7, "inputMsg":Lcom/hz/net/Message;
    if-eqz v7, :cond_0

    .line 132
    invoke-virtual {v7}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "strinfo":Ljava/lang/String;
    invoke-static {v12}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v8, Lcom/hz/net/Message;

    const/16 v0, 0x3e8d

    invoke-direct {v8, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 140
    .local v8, "msg":Lcom/hz/net/Message;
    invoke-virtual {v8, v12}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 141
    iget-byte v0, p0, Lcom/hz/core/PlayerRaidersComment;->actorjob:B

    invoke-virtual {v8, v0}, Lcom/hz/net/Message;->putByte(B)V

    .line 142
    iget v0, p0, Lcom/hz/core/PlayerRaidersComment;->actorid:I

    invoke-virtual {v8, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 144
    invoke-static {v8}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v8

    .line 149
    if-eqz v8, :cond_0

    .line 153
    invoke-virtual {v8}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 158
    .local v11, "rs":B
    invoke-virtual {v8}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 160
    if-ltz v11, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v13

    .line 165
    .local v13, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v13, :cond_2

    .line 166
    invoke-virtual {v13}, Lcom/hz/ui/UIObject;->getPageData()Z

    .line 169
    :cond_2
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getParent()Lcom/hz/ui/UIHandler;

    move-result-object v9

    .line 170
    .local v9, "parentUI":Lcom/hz/ui/UIHandler;
    if-eqz v9, :cond_0

    .line 171
    invoke-virtual {v9}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v10

    .line 172
    .local v10, "puiObj":Lcom/hz/ui/UIObject;
    invoke-virtual {v10}, Lcom/hz/ui/UIObject;->getPageData()Z

    goto :goto_0
.end method

.method public doGetRaidersCommentfromV(I)Lcom/hz/core/PlayerRaidersComment;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/hz/core/PlayerRaidersComment;->vRaidersCommentList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PlayerRaidersComment;

    goto :goto_0
.end method
