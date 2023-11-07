.class public Lcom/hz/core/ChargeActivity;
.super Ljava/lang/Object;
.source "ChargeActivity.java"


# static fields
.field public static final STATUS_CANNOT_GET:B = 0x0t

.field public static final STATUS_CAN_GET:B = 0x1t

.field public static final STATUS_HAS_GET:B = 0x2t

.field public static isChargeActivityOpen:Z


# instance fields
.field public chargeTotal:I

.field public demand:I

.field public desc:Ljava/lang/String;

.field public item:Lcom/hz/core/Item;

.field public maxChargeTotal:I

.field public status:B

.field public vChangeActivityLists:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/core/ChargeActivity;->isChargeActivityOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetChargeActivityLists()V
    .locals 8

    .prologue
    .line 38
    new-instance v3, Lcom/hz/net/Message;

    const/16 v6, 0x2b70

    invoke-direct {v3, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 40
    .local v3, "msg":Lcom/hz/net/Message;
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v3

    .line 46
    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v4

    .line 56
    .local v4, "rs":B
    if-gez v4, :cond_2

    .line 58
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 62
    :cond_2
    new-instance v0, Lcom/hz/core/ChargeActivity;

    invoke-direct {v0}, Lcom/hz/core/ChargeActivity;-><init>()V

    .line 64
    .local v0, "chargeActivity":Lcom/hz/core/ChargeActivity;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v0, Lcom/hz/core/ChargeActivity;->chargeTotal:I

    .line 65
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v0, Lcom/hz/core/ChargeActivity;->maxChargeTotal:I

    .line 66
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, v0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    .line 68
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 77
    .local v5, "size":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 110
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/hz/core/ChargeActivity;->desc:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->createChargeActivityUI(Lcom/hz/core/ChargeActivity;)V

    goto :goto_0

    .line 79
    :cond_3
    new-instance v1, Lcom/hz/core/ChargeActivity;

    invoke-direct {v1}, Lcom/hz/core/ChargeActivity;-><init>()V

    .line 80
    .local v1, "chargeActivitydata":Lcom/hz/core/ChargeActivity;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    iput v6, v1, Lcom/hz/core/ChargeActivity;->demand:I

    .line 81
    new-instance v6, Lcom/hz/core/Item;

    invoke-direct {v6}, Lcom/hz/core/Item;-><init>()V

    iput-object v6, v1, Lcom/hz/core/ChargeActivity;->item:Lcom/hz/core/Item;

    .line 84
    :try_start_0
    iget-object v6, v1, Lcom/hz/core/ChargeActivity;->item:Lcom/hz/core/Item;

    invoke-static {v6, v3}, Lcom/hz/core/Item;->fromBytesAtts2(Lcom/hz/core/Item;Lcom/hz/net/Message;)V

    .line 85
    iget-object v6, v1, Lcom/hz/core/ChargeActivity;->item:Lcom/hz/core/Item;

    invoke-virtual {v3}, Lcom/hz/net/Message;->getInt()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/hz/core/Item;->quantity:S

    .line 88
    iget-object v6, v1, Lcom/hz/core/ChargeActivity;->item:Lcom/hz/core/Item;

    iget-object v7, v1, Lcom/hz/core/ChargeActivity;->item:Lcom/hz/core/Item;

    iget-short v7, v7, Lcom/hz/core/Item;->durMax:S

    iput-short v7, v6, Lcom/hz/core/Item;->durability:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    invoke-virtual {v3}, Lcom/hz/net/Message;->getByte()B

    move-result v6

    iput-byte v6, v1, Lcom/hz/core/ChargeActivity;->status:B

    .line 107
    iget-object v6, v0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :catch_0
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public doGetChargeActivityItem(Lcom/hz/ui/UIHandler;IB)V
    .locals 6
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "itemid"    # I
    .param p3, "index"    # B

    .prologue
    const/4 v5, 0x2

    .line 120
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v0, Lcom/hz/net/Message;

    const/16 v4, 0x2b71

    invoke-direct {v0, v4}, Lcom/hz/net/Message;-><init>(I)V

    .line 129
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-virtual {v0, p2}, Lcom/hz/net/Message;->putInt(I)V

    .line 130
    invoke-virtual {v0, p3}, Lcom/hz/net/Message;->putByte(B)V

    .line 136
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/hz/net/Message;->getByte()B

    move-result v1

    .line 152
    .local v1, "rs":B
    if-gez v1, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v0, v5}, Lcom/hz/main/MsgHandler;->processAddItemMsg(Lcom/hz/net/Message;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 161
    invoke-virtual {p0, p3}, Lcom/hz/core/ChargeActivity;->getChargeActivity(I)Lcom/hz/core/ChargeActivity;

    move-result-object v2

    .line 162
    .local v2, "tempchargeActivity":Lcom/hz/core/ChargeActivity;
    if-eqz v2, :cond_3

    .line 164
    iput-byte v5, v2, Lcom/hz/core/ChargeActivity;->status:B

    .line 166
    iget-object v4, p0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    invoke-virtual {v4, v2, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 169
    :cond_3
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->getUIObject()Lcom/hz/ui/UIObject;

    move-result-object v3

    .line 170
    .local v3, "uiObj":Lcom/hz/ui/UIObject;
    if-eqz v3, :cond_0

    .line 172
    iput-object p0, v3, Lcom/hz/ui/UIObject;->object:Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Lcom/hz/ui/UIHandler;->updateDatatoChargeActivityUI(Lcom/hz/ui/UIHandler;)V

    goto :goto_0
.end method

.method public getChargeActivity(I)Lcom/hz/core/ChargeActivity;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    invoke-static {p1, v1}, Lcom/hz/common/Tool;->isArrayIndexOutOfBounds(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/hz/core/ChargeActivity;->vChangeActivityLists:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/ChargeActivity;

    goto :goto_0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    const-string v0, ""

    .line 204
    .local v0, "str":Ljava/lang/String;
    iget-byte v1, p0, Lcom/hz/core/ChargeActivity;->status:B

    packed-switch v1, :pswitch_data_0

    .line 216
    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    const-string v0, "Ch\u01b0a nh\u1eadn"

    .line 208
    goto :goto_0

    .line 210
    :pswitch_1
    const-string v0, "Nh\u1eadn"

    .line 211
    goto :goto_0

    .line 213
    :pswitch_2
    const-string v0, "\u0110\u00e3 nh\u1eadn"

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
