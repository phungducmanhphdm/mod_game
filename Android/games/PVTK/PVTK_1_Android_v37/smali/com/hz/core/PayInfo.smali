.class public Lcom/hz/core/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"


# static fields
.field public static final CHARGE_DEFINE_TYPE_TENCENT_NEWPLAT:B = 0x17t

.field public static final CHARGE_DEFINE_TYPE_TENCENT_QB:B = 0x6t

.field public static final CHARGE_DEFINE_TYPE_TENCENT_QB_SELF:B = 0x7t

.field public static final CHARGE_DEFINE_TYPE_TENCENT_QK:B = 0x8t

.field public static final CHARGE_DEFINE_TYPE_TENCENT_SMS:B = 0xat

.field public static final CHARGE_DEFINE_TYPE_TENCENT_SZ:B = 0x9t

.field public static final CHARGE_TYPE_91:B = 0x5t

.field public static final CHARGE_TYPE_BANK:B = 0x3t

.field public static final CHARGE_TYPE_CARD:B = 0x1t

.field public static final CHARGE_TYPE_CGAME_YN:B = 0x77t

.field public static final CHARGE_TYPE_CGAME_YN_ORDER:B = 0x76t

.field public static final CHARGE_TYPE_CGAME_YN_ORDER_NEW:B = 0x7bt

.field public static final CHARGE_TYPE_GFAN:B = 0x6t

.field public static final CHARGE_TYPE_GOOGLEPLAY:B = 0x38t

.field public static final CHARGE_TYPE_QIHOO:B = 0x13t

.field public static final CHARGE_TYPE_TENCENT:B = 0x4t

.field public static final CHARGE_TYPE_UC_ANDRIOD:B = 0x8t

.field public static final CHARGE_TYPE_UC_JAVA:B = 0x7t

.field public static final CHARGE_TYPE_ZHIFUBAO:B = 0x2t

.field public static isMo9AutoPayOpen:Z

.field public static nopenType:Ljava/lang/String;


# instance fields
.field aliInfo:Ljava/lang/String;

.field aliURL:Ljava/lang/String;

.field billList:Ljava/util/Vector;

.field defineId:Ljava/lang/String;

.field gameMoney1:Ljava/lang/String;

.field id:I

.field info:Ljava/lang/String;

.field public isNew:Z

.field public isValid:I

.field linkId:Ljava/lang/String;

.field money:I

.field needht:Ljava/util/Hashtable;

.field nowht:Ljava/util/Hashtable;

.field opeType:B

.field openType:Ljava/lang/String;

.field public processId:I

.field remark:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hz/core/PayInfo;->isMo9AutoPayOpen:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/hz/core/PayInfo;->opeType:B

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/hz/core/PayInfo;->linkId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PayInfo;
    .locals 6
    .param p0, "msg"    # Lcom/hz/net/Message;

    .prologue
    .line 963
    new-instance v3, Lcom/hz/core/PayInfo;

    invoke-direct {v3}, Lcom/hz/core/PayInfo;-><init>()V

    .line 965
    .local v3, "payInfo":Lcom/hz/core/PayInfo;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 967
    .local v2, "maps":Ljava/util/Hashtable;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 968
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 972
    const-string v4, "title"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    .line 973
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    .line 974
    const-string v4, "processId"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/hz/core/PayInfo;->processId:I

    .line 975
    const-string v4, "openType"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    .line 979
    iget-object v4, v3, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x38

    if-ne v4, v5, :cond_1

    .line 980
    const/16 v4, 0x77

    iput-byte v4, v3, Lcom/hz/core/PayInfo;->opeType:B

    .line 984
    :goto_1
    iget-object v4, v3, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->info:Ljava/lang/String;

    .line 985
    iget-object v4, v3, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    sput-object v4, Lcom/hz/core/PayInfo;->nopenType:Ljava/lang/String;

    .line 990
    return-object v3

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    :cond_1
    iget-object v4, v3, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    iput-byte v4, v3, Lcom/hz/core/PayInfo;->opeType:B

    goto :goto_1
.end method

.method public static fromCGAMEBillingBytes(Lcom/hz/net/Message;Ljava/lang/String;)Lcom/hz/core/PayInfo;
    .locals 7
    .param p0, "msg"    # Lcom/hz/net/Message;
    .param p1, "atype"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x38

    .line 915
    new-instance v3, Lcom/hz/core/PayInfo;

    invoke-direct {v3}, Lcom/hz/core/PayInfo;-><init>()V

    .line 917
    .local v3, "payInfo":Lcom/hz/core/PayInfo;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 919
    .local v2, "map":Ljava/util/Hashtable;
    invoke-virtual {p0}, Lcom/hz/net/Message;->getInt()I

    move-result v0

    .line 920
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 924
    const-string v4, "defineId"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->defineId:Ljava/lang/String;

    .line 926
    const-string v4, "processId"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/hz/core/PayInfo;->processId:I

    .line 928
    iput-object p1, v3, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    .line 929
    const-string v4, "isValid"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/hz/core/PayInfo;->isValid:I

    .line 931
    const-string v4, "title"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    .line 933
    const-string v4, "remark"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->remark:Ljava/lang/String;

    .line 935
    const-string v4, "gameMoney1"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->gameMoney1:Ljava/lang/String;

    .line 937
    const-string v4, "money"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/hz/core/PayInfo;->money:I

    .line 939
    const-string v4, "openType"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    .line 941
    iget-object v4, v3, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 942
    iput-byte v6, v3, Lcom/hz/core/PayInfo;->opeType:B

    .line 949
    :goto_1
    const-string v4, "info"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/hz/core/PayInfo;->info:Ljava/lang/String;

    .line 954
    return-object v3

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 944
    :cond_1
    const/16 v4, 0x76

    iput-byte v4, v3, Lcom/hz/core/PayInfo;->opeType:B

    goto :goto_1
.end method

.method public static getNewOnlyInstance(Lcom/hz/core/PayInfo;ZZ)Lcom/hz/core/PayInfo;
    .locals 23
    .param p0, "payInfo"    # Lcom/hz/core/PayInfo;
    .param p1, "isfirst"    # Z
    .param p2, "isNew"    # Z

    .prologue
    .line 107
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 109
    const/16 p0, 0x0

    .line 324
    .end local p0    # "payInfo":Lcom/hz/core/PayInfo;
    :cond_0
    :goto_0
    return-object p0

    .line 112
    .restart local p0    # "payInfo":Lcom/hz/core/PayInfo;
    :cond_1
    new-instance v9, Lcom/hz/net/Message;

    const/16 v21, 0x4269

    move/from16 v0, v21

    invoke-direct {v9, v0}, Lcom/hz/net/Message;-><init>(I)V

    .line 116
    .local v9, "msg":Lcom/hz/net/Message;
    const/16 v20, 0x2

    .line 121
    .local v20, "type":B
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    .line 126
    const/4 v14, 0x1

    .line 127
    .local v14, "tempcount":B
    if-eqz p2, :cond_2

    .line 129
    const/4 v14, 0x2

    .line 131
    :cond_2
    invoke-virtual {v9, v14}, Lcom/hz/net/Message;->putInt(I)V

    .line 134
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 136
    const-string v21, "clientType"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 137
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 139
    const-string v21, "version"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 140
    const-string v21, "350524"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 188
    .end local v14    # "tempcount":B
    :goto_1
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 189
    const/16 p0, 0x0

    goto :goto_0

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/core/PayInfo;->processId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 149
    const/16 v18, 0x0

    .line 151
    .local v18, "tempsize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Hashtable;->size()I

    move-result v21

    add-int v18, v18, v21

    .line 156
    :cond_4
    add-int/lit8 v18, v18, 0x3

    .line 158
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putInt(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Hashtable;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v15

    .line 165
    .local v15, "tempe":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-nez v21, :cond_6

    .line 177
    .end local v15    # "tempe":Ljava/util/Enumeration;
    :cond_5
    const-string v21, "channelType"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 178
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/hz/core/PayInfo;->opeType:B

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 180
    const-string v21, "clientType"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 181
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 183
    const-string v21, "money"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 184
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/core/PayInfo;->money:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    .restart local v15    # "tempe":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 168
    .local v17, "tempkey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 169
    .local v19, "tempvalue":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/hz/net/Message;->putString(Ljava/lang/String;)V

    goto :goto_2

    .line 192
    .end local v15    # "tempe":Ljava/util/Enumeration;
    .end local v17    # "tempkey":Ljava/lang/String;
    .end local v18    # "tempsize":I
    .end local v19    # "tempvalue":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 193
    if-nez v9, :cond_8

    .line 194
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 197
    :cond_8
    if-nez p0, :cond_9

    .line 198
    new-instance p0, Lcom/hz/core/PayInfo;

    .end local p0    # "payInfo":Lcom/hz/core/PayInfo;
    invoke-direct/range {p0 .. p0}, Lcom/hz/core/PayInfo;-><init>()V

    .line 201
    .restart local p0    # "payInfo":Lcom/hz/core/PayInfo;
    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hz/core/PayInfo;->isNew:Z

    .line 202
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v11

    .line 203
    .local v11, "rs":I
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 208
    .local v3, "allsize":I
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    .line 210
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-lt v6, v3, :cond_b

    .line 270
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/core/PayInfo;->processId:I

    .line 271
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v18

    .line 276
    .restart local v18    # "tempsize":I
    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    .line 278
    .local v16, "temphashtable":Ljava/util/Hashtable;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    move/from16 v0, v18

    if-lt v8, v0, :cond_17

    .line 295
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/core/PayInfo;

    .line 298
    .local v10, "payinfodata":Lcom/hz/core/PayInfo;
    if-nez v10, :cond_1a

    .line 295
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 212
    .end local v5    # "h":I
    .end local v8    # "k":I
    .end local v10    # "payinfodata":Lcom/hz/core/PayInfo;
    .end local v16    # "temphashtable":Ljava/util/Hashtable;
    .end local v18    # "tempsize":I
    :cond_b
    new-instance v10, Lcom/hz/core/PayInfo;

    invoke-direct {v10}, Lcom/hz/core/PayInfo;-><init>()V

    .line 214
    .restart local v10    # "payinfodata":Lcom/hz/core/PayInfo;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getInt()I

    move-result v4

    .line 215
    .local v4, "datasize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    if-lt v7, v4, :cond_c

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 217
    :cond_c
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    .line 218
    .local v12, "strkey":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "strvalue":Ljava/lang/String;
    invoke-static {v12}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_d

    invoke-static {v13}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 225
    :cond_d
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "continue;"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    :cond_e
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 230
    :cond_f
    const-string v21, "openType"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 232
    invoke-static {v13}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput-byte v0, v10, Lcom/hz/core/PayInfo;->opeType:B

    goto :goto_7

    .line 234
    :cond_10
    const-string v21, "defineId"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 236
    invoke-static {v13}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/hz/core/PayInfo;->id:I

    goto :goto_7

    .line 238
    :cond_11
    const-string v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 240
    iput-object v13, v10, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    goto :goto_7

    .line 242
    :cond_12
    const-string v21, "info"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 244
    iput-object v13, v10, Lcom/hz/core/PayInfo;->info:Ljava/lang/String;

    goto :goto_7

    .line 246
    :cond_13
    const-string v21, "money"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 248
    invoke-static {v13}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/hz/core/PayInfo;->money:I

    goto :goto_7

    .line 250
    :cond_14
    const-string v21, "gameMoney1"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 253
    const-string v21, "remark"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 255
    iput-object v13, v10, Lcom/hz/core/PayInfo;->remark:Ljava/lang/String;

    goto :goto_7

    .line 257
    :cond_15
    const-string v21, "processId"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 259
    invoke-static {v13}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/hz/core/PayInfo;->processId:I

    goto/16 :goto_7

    .line 261
    :cond_16
    const-string v21, "isValid"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 263
    invoke-static {v13}, Lcom/hz/common/Tool;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/hz/core/PayInfo;->isValid:I

    goto/16 :goto_7

    .line 280
    .end local v4    # "datasize":I
    .end local v7    # "j":I
    .end local v10    # "payinfodata":Lcom/hz/core/PayInfo;
    .end local v12    # "strkey":Ljava/lang/String;
    .end local v13    # "strvalue":Ljava/lang/String;
    .restart local v8    # "k":I
    .restart local v16    # "temphashtable":Ljava/util/Hashtable;
    .restart local v18    # "tempsize":I
    :cond_17
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v12

    .line 281
    .restart local v12    # "strkey":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v13

    .line 286
    .restart local v13    # "strvalue":Ljava/lang/String;
    invoke-static {v12}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_18

    invoke-static {v13}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 278
    :cond_18
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 291
    :cond_19
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 303
    .end local v12    # "strkey":Ljava/lang/String;
    .end local v13    # "strvalue":Ljava/lang/String;
    .restart local v5    # "h":I
    .restart local v10    # "payinfodata":Lcom/hz/core/PayInfo;
    :cond_1a
    new-instance v21, Ljava/util/Hashtable;

    invoke-direct/range {v21 .. v21}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v10, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    .line 305
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->size()I

    move-result v21

    if-lez v21, :cond_a

    .line 307
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v15

    .line 308
    .restart local v15    # "tempe":Ljava/util/Enumeration;
    :cond_1b
    :goto_9
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 310
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 311
    .restart local v17    # "tempkey":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 315
    .restart local v19    # "tempvalue":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1b

    invoke-static/range {v19 .. v19}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1b

    .line 319
    iget-object v0, v10, Lcom/hz/core/PayInfo;->needht:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public static getOnlyInstance()Lcom/hz/core/PayInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-static {}, Lcom/hz/main/MsgHandler;->createPayInfoList()Lcom/hz/net/Message;

    move-result-object v1

    .line 342
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    :cond_0
    return-object v2

    .line 345
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 350
    new-instance v2, Lcom/hz/core/PayInfo;

    invoke-direct {v2}, Lcom/hz/core/PayInfo;-><init>()V

    .line 351
    .local v2, "payInfo":Lcom/hz/core/PayInfo;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, v2, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    .line 353
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    .line 354
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 368
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 369
    iget-object v4, v2, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/PayInfo;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doBillAction()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 881
    iget-object v7, p0, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    iget-object v8, p0, Lcom/hz/core/PayInfo;->remark:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/hz/main/GameForm;->createBillForm(Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;

    move-result-object v4

    .line 882
    .local v4, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v4}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v3

    .line 883
    .local v3, "formMsg":Lcom/hz/net/Message;
    if-nez v3, :cond_1

    .line 905
    :cond_0
    :goto_0
    return v6

    .line 887
    :cond_1
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "cardNumber":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "cardPassword":Ljava/lang/String;
    iget v7, p0, Lcom/hz/core/PayInfo;->id:I

    invoke-static {v7, v1, v2}, Lcom/hz/main/MsgHandler;->createPayInfoBill(ILjava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v5

    .line 891
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 895
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 896
    if-eqz v5, :cond_0

    .line 901
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "alertMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 905
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public doCGAMEAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "payType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 999
    iget-object v8, p0, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    iget-object v9, p0, Lcom/hz/core/PayInfo;->remark:Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/hz/main/GameForm;->createBillForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/main/GameForm;

    move-result-object v4

    .line 1000
    .local v4, "gameForm":Lcom/hz/main/GameForm;
    invoke-static {v4}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v3

    .line 1002
    .local v3, "formMsg":Lcom/hz/net/Message;
    if-nez v3, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return v7

    .line 1006
    :cond_1
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, "cardNumber":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, "cardPassword":Ljava/lang/String;
    iget-object v8, p0, Lcom/hz/core/PayInfo;->defineId:Ljava/lang/String;

    sget-object v9, Lcom/hz/core/PayInfo;->nopenType:Ljava/lang/String;

    invoke-static {v1, v2, v8, p2, v9}, Lcom/hz/main/MsgHandler;->createCGAMEInGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v5

    .line 1010
    .local v5, "msg":Lcom/hz/net/Message;
    invoke-static {v5}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1014
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v5

    .line 1015
    if-eqz v5, :cond_0

    .line 1019
    invoke-virtual {v5}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 1021
    .local v6, "result":I
    invoke-virtual {v5}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "alertMsg":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1023
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1030
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public doCGAMEAction2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "payType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1037
    const-string v8, ""

    const-string v9, ""

    iget-object v10, p0, Lcom/hz/core/PayInfo;->defineId:Ljava/lang/String;

    iget-object v11, p0, Lcom/hz/core/PayInfo;->openType:Ljava/lang/String;

    invoke-static {v8, v9, v10, p2, v11}, Lcom/hz/main/MsgHandler;->createCGAMEInGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hz/net/Message;

    move-result-object v4

    .line 1038
    .local v4, "msg":Lcom/hz/net/Message;
    invoke-static {v4}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return v7

    .line 1042
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 1043
    if-eqz v4, :cond_0

    .line 1047
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v6

    .line 1048
    .local v6, "result":I
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " result = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "alertMsg":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1052
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 1056
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "*******"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 1059
    .local v1, "dataSize":I
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 1060
    .local v3, "maps":Ljava/util/Hashtable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 1063
    const-string v7, "url"

    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1064
    .local v5, "payURL":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "***********payURL="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1066
    invoke-static {v5}, Lcom/hz/common/Tool;->platformRequest(Ljava/lang/String;)Z

    .line 1069
    const/4 v7, 0x1

    goto :goto_0

    .line 1061
    .end local v5    # "payURL":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public doCGAMEBillingAction(I)Z
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 1079
    invoke-static {p1}, Lcom/hz/main/MsgHandler;->createCGAMEBilling(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 1081
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return v5

    .line 1085
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1086
    if-eqz v1, :cond_0

    .line 1089
    new-instance v2, Lcom/hz/core/PayInfo;

    invoke-direct {v2}, Lcom/hz/core/PayInfo;-><init>()V

    .line 1090
    .local v2, "payInfo":Lcom/hz/core/PayInfo;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v2, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    .line 1091
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    .line 1092
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 1093
    .local v3, "size":I
    new-array v4, v3, [Ljava/lang/String;

    .line 1094
    .local v4, "stype":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 1098
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1099
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createGooglePayInfoListUI(Lcom/hz/core/PayInfo;)V

    .line 1101
    const/4 v5, 0x1

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v5, v2, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    invoke-static {v1}, Lcom/hz/core/PayInfo;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/PayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1096
    iget-object v5, v2, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public doCGAMEBillingAction2(ILjava/lang/String;)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "atype"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1111
    invoke-static {p1}, Lcom/hz/main/MsgHandler;->createCGAMEBilling(I)Lcom/hz/net/Message;

    move-result-object v1

    .line 1113
    .local v1, "msg":Lcom/hz/net/Message;
    invoke-static {v1}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return v4

    .line 1117
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v1

    .line 1118
    if-eqz v1, :cond_0

    .line 1121
    new-instance v2, Lcom/hz/core/PayInfo;

    invoke-direct {v2}, Lcom/hz/core/PayInfo;-><init>()V

    .line 1122
    .local v2, "payInfo":Lcom/hz/core/PayInfo;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, v2, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    .line 1123
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    .line 1124
    invoke-virtual {v1}, Lcom/hz/net/Message;->getInt()I

    move-result v3

    .line 1126
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 1130
    invoke-static {v2}, Lcom/hz/ui/UIHandler;->createGooglePayInfoListUI(Lcom/hz/core/PayInfo;)V

    .line 1132
    const/4 v4, 0x1

    goto :goto_0

    .line 1127
    :cond_2
    iput v0, v2, Lcom/hz/core/PayInfo;->id:I

    .line 1128
    iget-object v4, v2, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    invoke-static {v1, p2}, Lcom/hz/core/PayInfo;->fromCGAMEBillingBytes(Lcom/hz/net/Message;Ljava/lang/String;)Lcom/hz/core/PayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public doGoogleplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 1142
    return-void
.end method

.method public doMenuAction()Z
    .locals 2

    .prologue
    .line 408
    iget-byte v0, p0, Lcom/hz/core/PayInfo;->opeType:B

    sparse-switch v0, :sswitch_data_0

    .line 538
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 410
    :sswitch_0
    iget v0, p0, Lcom/hz/core/PayInfo;->processId:I

    invoke-virtual {p0, v0}, Lcom/hz/core/PayInfo;->doCGAMEBillingAction(I)Z

    move-result v0

    goto :goto_1

    .line 413
    :sswitch_1
    invoke-virtual {p0}, Lcom/hz/core/PayInfo;->doZhiFuBaoAction()Z

    move-result v0

    goto :goto_1

    .line 416
    :sswitch_2
    const-string v0, "Ch\u1ee9c n\u0103ng \u0111ang nghi\u00ean c\u1ee9u!"

    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 423
    :sswitch_3
    iget v0, p0, Lcom/hz/core/PayInfo;->processId:I

    iget-object v1, p0, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/PayInfo;->doCGAMEBillingAction2(ILjava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 428
    :sswitch_4
    const-string v0, ""

    iget-object v1, p0, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/PayInfo;->doCGAMEAction(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 433
    :sswitch_5
    const-string v0, ""

    iget-object v1, p0, Lcom/hz/core/PayInfo;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/hz/core/PayInfo;->doCGAMEAction2(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 437
    :sswitch_6
    iget-object v0, p0, Lcom/hz/core/PayInfo;->remark:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hz/core/PayInfo;->doGoogleplay(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x38 -> :sswitch_6
        0x76 -> :sswitch_4
        0x77 -> :sswitch_3
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method public doZhiFuBaoAction()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1158
    iget-object v3, p0, Lcom/hz/core/PayInfo;->aliInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    .line 1160
    iget v3, p0, Lcom/hz/core/PayInfo;->id:I

    invoke-static {v3}, Lcom/hz/main/MsgHandler;->createPayInfoZhiFuBao(I)Lcom/hz/net/Message;

    move-result-object v0

    .line 1161
    .local v0, "msg":Lcom/hz/net/Message;
    invoke-static {v0}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return v2

    .line 1165
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {v0}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/hz/common/Tool;->platformRequest(Ljava/lang/String;)Z

    .line 1181
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBillList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/hz/core/PayInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getPayListInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 382
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 395
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 385
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/hz/core/PayInfo;->billList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/core/PayInfo;

    .line 386
    .local v1, "info":Lcom/hz/core/PayInfo;
    if-nez v1, :cond_2

    .line 384
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_2
    iget-object v3, v1, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    iget-object v3, v1, Lcom/hz/core/PayInfo;->info:Ljava/lang/String;

    const v4, 0xffff00

    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/hz/core/PayInfo;->title:Ljava/lang/String;

    return-object v0
.end method
