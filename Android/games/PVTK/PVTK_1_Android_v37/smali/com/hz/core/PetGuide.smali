.class public Lcom/hz/core/PetGuide;
.super Ljava/lang/Object;
.source "PetGuide.java"


# instance fields
.field public itemid:I

.field public itemslotPos:S

.field public vPetList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPetGuideList(Lcom/hz/core/Item;)V
    .locals 7
    .param p0, "item"    # Lcom/hz/core/Item;

    .prologue
    .line 32
    invoke-static {}, Lcom/hz/ui/UIHandler;->closeAllUI()V

    .line 34
    if-nez p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v1, Lcom/hz/net/Message;

    const/16 v6, 0x2f02

    invoke-direct {v1, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 44
    .local v1, "msg":Lcom/hz/net/Message;
    iget-short v6, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putShort(S)V

    .line 45
    iget v6, p0, Lcom/hz/core/Item;->id:I

    invoke-virtual {v1, v6}, Lcom/hz/net/Message;->putInt(I)V

    .line 47
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 63
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 65
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 74
    .local v5, "size":B
    new-instance v3, Lcom/hz/core/PetGuide;

    invoke-direct {v3}, Lcom/hz/core/PetGuide;-><init>()V

    .line 76
    .local v3, "petguide":Lcom/hz/core/PetGuide;
    iget-short v6, p0, Lcom/hz/core/Item;->slotPos:S

    iput-short v6, v3, Lcom/hz/core/PetGuide;->itemslotPos:S

    .line 77
    iget v6, p0, Lcom/hz/core/Item;->id:I

    iput v6, v3, Lcom/hz/core/PetGuide;->itemid:I

    .line 79
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, v3, Lcom/hz/core/PetGuide;->vPetList:Ljava/util/Vector;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_3

    .line 110
    invoke-static {v3}, Lcom/hz/ui/UIHandler;->createPetGuideUI(Lcom/hz/core/PetGuide;)V

    goto :goto_0

    .line 83
    :cond_3
    new-instance v2, Lcom/hz/actor/MyPet;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 85
    .local v2, "pet":Lcom/hz/actor/MyPet;
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/hz/actor/MyPet;->setId(I)V

    .line 86
    invoke-virtual {v1}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/hz/actor/MyPet;->setName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Lcom/hz/actor/MyPet;->setLevel(B)V

    .line 88
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Lcom/hz/actor/MyPet;->setJob(B)V

    .line 89
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v2, Lcom/hz/actor/MyPet;->compre:B

    .line 90
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v2, Lcom/hz/actor/MyPet;->grow:B

    .line 91
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/hz/actor/MyPet;->setIcon1(I)V

    .line 92
    invoke-virtual {v1}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v2, Lcom/hz/actor/MyPet;->grade:B

    .line 107
    iget-object v6, v3, Lcom/hz/core/PetGuide;->vPetList:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static doPetGuideSelect(SII)V
    .locals 6
    .param p0, "slotpos"    # S
    .param p1, "itemid"    # I
    .param p2, "petid"    # I

    .prologue
    .line 126
    invoke-static {}, Lcom/hz/main/SafeLock;->doSafeLockVerify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 131
    .local v3, "player":Lcom/hz/actor/Player;
    if-eqz v3, :cond_0

    .line 136
    iget-object v0, v3, Lcom/hz/actor/Player;->bag:Lcom/hz/core/PlayerBag;

    .line 137
    .local v0, "bag":Lcom/hz/core/PlayerBag;
    if-eqz v0, :cond_0

    .line 142
    new-instance v2, Lcom/hz/net/Message;

    const/16 v5, 0x2f00

    invoke-direct {v2, v5}, Lcom/hz/net/Message;-><init>(I)V

    .line 143
    .local v2, "msg":Lcom/hz/net/Message;
    invoke-virtual {v2, p0}, Lcom/hz/net/Message;->putShort(S)V

    .line 144
    invoke-virtual {v2, p1}, Lcom/hz/net/Message;->putInt(I)V

    .line 145
    invoke-virtual {v2, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 147
    invoke-static {v2}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 163
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 165
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 169
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, p0, v5}, Lcom/hz/core/PlayerBag;->removeBagItemByPos(SI)I

    .line 173
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v2, v5}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_1
    invoke-virtual {v2}, Lcom/hz/net/Message;->getBoolean()Z

    move-result v1

    .line 183
    .local v1, "isUpdate":Z
    invoke-static {}, Lcom/hz/ui/UIHandler;->updateWorldPlayerInfoUI()V

    .line 185
    if-eqz v1, :cond_0

    .line 188
    const/16 v5, 0x2be0

    invoke-static {v5}, Lcom/hz/ui/UIAction;->doMenuButton(I)V

    goto :goto_0

    .line 175
    .end local v1    # "isUpdate":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getPetByIndex(I)Lcom/hz/actor/MyPet;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/hz/core/PetGuide;->vPetList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/hz/core/PetGuide;->vPetList:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/hz/core/PetGuide;->vPetList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/actor/MyPet;

    goto :goto_0
.end method
