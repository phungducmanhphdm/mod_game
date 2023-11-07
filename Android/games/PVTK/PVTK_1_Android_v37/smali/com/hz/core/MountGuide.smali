.class public Lcom/hz/core/MountGuide;
.super Ljava/lang/Object;
.source "MountGuide.java"


# instance fields
.field public itemid:I

.field public itemslotPos:S

.field public vItemList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetMountGuideItemList(Lcom/hz/core/Item;)V
    .locals 7
    .param p0, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 29
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 31
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v2, Lcom/hz/net/Message;

    const/16 v6, 0x2f03

    invoke-direct {v2, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 41
    .local v2, "msg":Lcom/hz/net/Message;
    iget-short v6, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 42
    iget v6, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v2, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 44
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v3

    .line 60
    .local v3, "rs":B
    if-gez v3, :cond_2

    .line 62
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 71
    .local v4, "size":B
    new-instance v1, Lcom/hz/core/MountGuide;

    invoke-direct {v1}, Lcom/hz/core/MountGuide;-><init>()V

    .line 72
    .local v1, "mountguide":Lcom/hz/core/MountGuide;
    iget v6, p0, Lcom/hz/core/Item;->id:I

    iput v6, v1, Lcom/hz/core/MountGuide;->itemid:I

    .line 73
    iget-short v6, p0, Lcom/hz/core/Item;->slotPos:S

    iput-short v6, v1, Lcom/hz/core/MountGuide;->itemslotPos:S

    .line 74
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, v1, Lcom/hz/core/MountGuide;->vItemList:Ljava/util/Vector;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_3

    .line 94
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createMountGuideUI(Lcom/hz/core/MountGuide;)V

    goto :goto_0

    .line 79
    :cond_3
    :try_start_0
    new-instance v5, Lcom/hz/core/Item;

    invoke-direct {v5}, Lcom/hz/core/Item;-><init>()V

    .line 80
    .local v5, "tempitem":Lcom/hz/core/Item;
    invoke-static {v5, v2}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 82
    iget-short v6, v5, Lcom/hz/core/Item;->durMax:S

    iput-short v6, v5, Lcom/hz/core/Item;->durability:S

    .line 84
    iget-object v6, v1, Lcom/hz/core/MountGuide;->vItemList:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v5    # "tempitem":Lcom/hz/core/Item;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static doMountGuideSelect(SII)V
    .locals 6
    .param p0, "slotpos"    # S
    .param p1, "itemid"    # I
    .param p2, "getitemid"    # I

    .prologue
    .line 111
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 116
    .local v3, "player":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 121
    iget-object v0, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 122
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 127
    new-instance v2, Lcom/hz/net/Message;

    const/16 v5, 0x2f01

    invoke-direct {v2, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 128
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 129
    invoke-virtual {v2, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 130
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 132
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 148
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 150
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 154
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, p0, v5}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 158
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v2, v5}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 168
    .local v1, "isUpdate":Z
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 170
    if-eqz v1, :cond_0

    .line 173
    const/16 v5, 0x2be0

    invoke-static {v5}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    goto :goto_0

    .line 160
    .end local v1    # "isUpdate":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getPetByIndex(I)Lcom/hz/core/Item;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/hz/core/MountGuide;->vItemList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/hz/core/MountGuide;->vItemList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/hz/core/MountGuide;->vItemList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/Item;

    goto :goto_0
.end method
