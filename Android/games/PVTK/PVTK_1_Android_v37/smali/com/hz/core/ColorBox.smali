.class public Lcom/hz/core/ColorBox;
.super Ljava/lang/Object;
.source "ColorBox.java"


# instance fields
.field public days:B

.field public isCanGet:Z

.field public item:Lcom/hz/core/Item;

.field public maxDay:B

.field public player:Lcom/hz/actor/Player;

.field public thatDay:B

.field public vColorBox:Ljava/util/Vector;

.field public vItemsData:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doColorBoxLookUp(Lcom/hz/core/Item;Lcom/hz/actor/Player;)V
    .locals 12
    .param p0, "item"    # Lcom/hz/core/Item;
    .param p1, "player"    # Lcom/hz/actor/Player;

    .prologue
    .line 37
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-object v7, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    .line 44
    .local v7, "myplayer":Lcom/hz/actor/Player;
    new-instance v6, Lcom/hz/net/Message;

    const/16 v11, 0x2b7a

    invoke-direct {v6, v11}, Lcom/hz/net/Message;-><init>(I)V

    .line 45
    .local v6, "msg":Lcom/hz/net/Message;
    iget-short v11, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-virtual {v6, v11}, Lcom/hz/net/Message;->putShort(S)V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "actorid":I
    if-eq p1, v7, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/hz/actor/Player;->getId()I

    move-result v0

    .line 52
    :cond_2
    invoke-virtual {v6, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 54
    invoke-static {v6}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 57
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v6

    .line 58
    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v8

    .line 67
    .local v8, "rs":B
    if-gez v8, :cond_3

    .line 68
    invoke-virtual {v6}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 72
    :cond_3
    new-instance v1, Lcom/hz/core/ColorBox;

    invoke-direct {v1}, Lcom/hz/core/ColorBox;-><init>()V

    .line 73
    .local v1, "colorBox":Lcom/hz/core/ColorBox;
    iput-object p0, v1, Lcom/hz/core/ColorBox;->item:Lcom/hz/core/Item;

    .line 74
    iput-object p1, v1, Lcom/hz/core/ColorBox;->player:Lcom/hz/actor/Player;

    .line 75
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v1, Lcom/hz/core/ColorBox;->vColorBox:Ljava/util/Vector;

    .line 77
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-byte v11, v1, Lcom/hz/core/ColorBox;->thatDay:B

    .line 78
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-byte v11, v1, Lcom/hz/core/ColorBox;->maxDay:B

    .line 80
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v2

    .line 86
    .local v2, "daySize":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_4

    .line 125
    invoke-virtual {v1}, Lcom/hz/core/ColorBox;->doSetCanGet()V

    .line 126
    invoke-static {v1}, Lcom/hz/ui/UIHandler;->createColorBox(Lcom/hz/core/ColorBox;)V

    goto :goto_0

    .line 87
    :cond_4
    new-instance v9, Lcom/hz/core/ColorBox;

    invoke-direct {v9}, Lcom/hz/core/ColorBox;-><init>()V

    .line 89
    .local v9, "tempcolorBox":Lcom/hz/core/ColorBox;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-byte v11, v9, Lcom/hz/core/ColorBox;->days:B

    .line 91
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/hz/core/ColorBox;->isCanGet:Z

    .line 93
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 98
    .local v4, "itsSize":B
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v9, Lcom/hz/core/ColorBox;->vItemsData:Ljava/util/Vector;

    .line 100
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-lt v5, v4, :cond_5

    .line 122
    iget-object v11, v1, Lcom/hz/core/ColorBox;->vColorBox:Ljava/util/Vector;

    invoke-virtual {v11, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    :cond_5
    :try_start_0
    new-instance v10, Lcom/hz/core/Item;

    invoke-direct {v10}, Lcom/hz/core/Item;-><init>()V

    .line 103
    .local v10, "tempitem":Lcom/hz/core/Item;
    invoke-virtual {v6}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    iput-short v11, v10, Lcom/hz/core/Item;->quantity:S

    .line 104
    invoke-static {v10, v6}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 107
    iget-short v11, v10, Lcom/hz/core/Item;->durMax:S

    iput-short v11, v10, Lcom/hz/core/Item;->durability:S

    .line 109
    iget-object v11, v9, Lcom/hz/core/ColorBox;->vItemsData:Ljava/util/Vector;

    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v10    # "tempitem":Lcom/hz/core/Item;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 114
    :catch_0
    move-exception v11

    goto :goto_3
.end method


# virtual methods
.method public doSetCanGet()V
    .locals 4

    .prologue
    .line 132
    iget-object v2, p0, Lcom/hz/core/ColorBox;->vColorBox:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/hz/core/ColorBox;->vColorBox:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/hz/core/ColorBox;->vColorBox:Ljava/util/Vector;

    invoke-static {v0, v2}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/hz/core/ColorBox;->vColorBox:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/ColorBox;

    .line 144
    .local v1, "tempcolorBox":Lcom/hz/core/ColorBox;
    if-eqz v1, :cond_2

    .line 146
    iget-byte v2, p0, Lcom/hz/core/ColorBox;->thatDay:B

    iget-byte v3, v1, Lcom/hz/core/ColorBox;->days:B

    if-lt v2, v3, :cond_2

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/hz/core/ColorBox;->isCanGet:Z

    goto :goto_0
.end method
