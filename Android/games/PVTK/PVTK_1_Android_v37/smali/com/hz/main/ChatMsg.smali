.class public Lcom/hz/main/ChatMsg;
.super Ljava/lang/Object;
.source "ChatMsg.java"


# static fields
.field public static final COLOR_SEX_FEMALE:I = 0xfe5f5f

.field public static final COLOR_SEX_MALE:I = 0xe0fb

.field public static final COLOR_VIP9:I = 0xff3366

.field public static final FLAG_BIND_PHONE:B = 0x20t

.field public static final FLAG_COUNTRY:S = 0x80s

.field public static final FLAG_IS_GM:S = 0x400s

.field public static final FLAG_IS_PHOTO:B = 0x1t

.field public static final FLAG_IS_TEACHER:S = 0x800s

.field public static final FLAG_ITEM:B = 0x4t

.field public static final FLAG_MISSION:B = 0x8t

.field public static final FLAG_PRIVATE_TARGET:B = 0x2t

.field public static final FLAG_RED_PACEKT:I = 0x8000

.field public static final FLAG_SEX_FAMALE:B = 0x10t

.field public static final FLAG_TITEL:S = 0x2000s

.field public static final FLAG_VIP:S = 0x100s

.field public static final FLAG_VIP_CQ:S = 0x1000s

.field public static final FLAG_VIP_TIME_OUT:S = 0x200s

.field public static final FLAG_WAR_END:B = 0x40t

.field public static final MAX_CHAT:I = 0x28

.field public static final MAX_OTHER_CHAT:I = 0xa

.field public static MAX_TEMP_TALK_NUM:I = 0x0

.field public static final MAX_WORLD_CHAT:I = 0x14

.field public static final MSG_COLOR_COUNTRY:I = 0xffde26

.field public static final MSG_COLOR_CS:I = 0xffff

.field public static final MSG_COLOR_MAP:I = 0xf6f6f6

.field public static final MSG_COLOR_PRIVATE:I = 0xff99ff

.field public static final MSG_COLOR_SERVER:I = 0x800080

.field public static final MSG_COLOR_SPEAKER:I = 0xffff00

.field public static final MSG_COLOR_SYSTEM:I = 0xff0000

.field public static final MSG_COLOR_TEAM:I = 0xff00

.field public static final MSG_COLOR_UNION:I = 0xfa0690

.field public static final MSG_COLOR_WORLD:I = 0xff9900

.field public static allChatMsg:Ljava/util/Vector;

.field public static countryChatMsg:Ljava/util/Vector;

.field public static intValue1:I

.field public static privateChatMsg:Ljava/util/Vector;

.field public static tempTalkMsgList:Ljava/util/Vector;

.field public static unionChatMsg:Ljava/util/Vector;

.field public static worldChatMsg:Ljava/util/Vector;


# instance fields
.field public VIPLevel2:B

.field public channel:B

.field public countryID:I

.field public flag:S

.field public itemIDList:[S

.field private itemList:Ljava/util/Vector;

.field public luckMoneyID:J

.field public missionIDList:[S

.field private missionList:Ljava/util/Vector;

.field name:Ljava/lang/String;

.field parseTextMsg:[Lcom/hz/string/PowerString;

.field parseTextTotalHeight:I

.field remark:Ljava/lang/String;

.field senderID:I

.field public serverName:Ljava/lang/String;

.field text:Ljava/lang/String;

.field vipLevel:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/ChatMsg;->allChatMsg:Ljava/util/Vector;

    .line 126
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/ChatMsg;->countryChatMsg:Ljava/util/Vector;

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/ChatMsg;->privateChatMsg:Ljava/util/Vector;

    .line 128
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/ChatMsg;->worldChatMsg:Ljava/util/Vector;

    .line 129
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/ChatMsg;->unionChatMsg:Ljava/util/Vector;

    .line 248
    const/4 v0, 0x4

    sput v0, Lcom/hz/main/ChatMsg;->MAX_TEMP_TALK_NUM:I

    .line 249
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    .line 595
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p1, "_channel"    # I
    .param p2, "_senderID"    # I
    .param p3, "_name"    # Ljava/lang/String;
    .param p4, "_text"    # Ljava/lang/String;
    .param p5, "_vipLevel"    # B

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/hz/main/ChatMsg;->channel:B

    .line 376
    iput p2, p0, Lcom/hz/main/ChatMsg;->senderID:I

    .line 378
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    iput-object p3, p0, Lcom/hz/main/ChatMsg;->name:Ljava/lang/String;

    .line 381
    :cond_0
    iput-object p4, p0, Lcom/hz/main/ChatMsg;->text:Ljava/lang/String;

    .line 382
    iput-byte p5, p0, Lcom/hz/main/ChatMsg;->vipLevel:B

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_text"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/hz/main/ChatMsg;->text:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public static addChatMsg(Lcom/hz/main/ChatMsg;)V
    .locals 1
    .param p0, "chatMsg"    # Lcom/hz/main/ChatMsg;

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    .line 199
    return-void
.end method

.method public static addChatMsg(Lcom/hz/main/ChatMsg;Z)V
    .locals 5
    .param p0, "chatMsg"    # Lcom/hz/main/ChatMsg;
    .param p1, "isAddWorldMessage"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xa

    .line 202
    if-nez p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-eqz p1, :cond_2

    .line 208
    invoke-static {p0}, Lcom/hz/main/WorldMessage;->addMsg(Lcom/hz/main/ChatMsg;)V

    .line 212
    :cond_2
    sget-object v1, Lcom/hz/main/ChatMsg;->allChatMsg:Ljava/util/Vector;

    const/16 v2, 0x28

    invoke-static {v1, v2, p0}, Lcom/hz/main/ChatMsg;->addChatMsgVector(Ljava/util/Vector;ILcom/hz/main/ChatMsg;)V

    .line 214
    iget-byte v1, p0, Lcom/hz/main/ChatMsg;->channel:B

    invoke-static {v4, v1}, Lcom/hz/main/ChatMsg;->setTabStatus(ZI)V

    .line 217
    const/16 v1, 0x40

    invoke-static {v1}, Lcom/hz/ui/UIHandler;->getUIByType(I)Lcom/hz/ui/UIHandler;

    move-result-object v0

    .line 218
    .local v0, "uiHandler":Lcom/hz/ui/UIHandler;
    if-eqz v0, :cond_3

    .line 219
    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lcom/hz/ui/UIHandler;->updateDataToChatMsgUI(Lcom/hz/ui/UIHandler;Lcom/hz/main/ChatMsg;I)V

    .line 223
    :cond_3
    iget-byte v1, p0, Lcom/hz/main/ChatMsg;->channel:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 224
    sget-object v1, Lcom/hz/main/ChatMsg;->countryChatMsg:Ljava/util/Vector;

    invoke-static {v1, v3, p0}, Lcom/hz/main/ChatMsg;->addChatMsgVector(Ljava/util/Vector;ILcom/hz/main/ChatMsg;)V

    goto :goto_0

    .line 226
    :cond_4
    iget-byte v1, p0, Lcom/hz/main/ChatMsg;->channel:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 227
    sget-object v1, Lcom/hz/main/ChatMsg;->privateChatMsg:Ljava/util/Vector;

    invoke-static {v1, v3, p0}, Lcom/hz/main/ChatMsg;->addChatMsgVector(Ljava/util/Vector;ILcom/hz/main/ChatMsg;)V

    goto :goto_0

    .line 229
    :cond_5
    iget-byte v1, p0, Lcom/hz/main/ChatMsg;->channel:B

    if-ne v1, v4, :cond_6

    .line 230
    sget-object v1, Lcom/hz/main/ChatMsg;->worldChatMsg:Ljava/util/Vector;

    const/16 v2, 0x14

    invoke-static {v1, v2, p0}, Lcom/hz/main/ChatMsg;->addChatMsgVector(Ljava/util/Vector;ILcom/hz/main/ChatMsg;)V

    goto :goto_0

    .line 232
    :cond_6
    iget-byte v1, p0, Lcom/hz/main/ChatMsg;->channel:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 233
    sget-object v1, Lcom/hz/main/ChatMsg;->unionChatMsg:Ljava/util/Vector;

    invoke-static {v1, v3, p0}, Lcom/hz/main/ChatMsg;->addChatMsgVector(Ljava/util/Vector;ILcom/hz/main/ChatMsg;)V

    goto :goto_0
.end method

.method private static addChatMsgVector(Ljava/util/Vector;ILcom/hz/main/ChatMsg;)V
    .locals 1
    .param p0, "chatMsgVector"    # Ljava/util/Vector;
    .param p1, "MAX_COUNT"    # I
    .param p2, "chatMsg"    # Lcom/hz/main/ChatMsg;

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    new-instance p0, Ljava/util/Vector;

    .end local p0    # "chatMsgVector":Ljava/util/Vector;
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 242
    .restart local p0    # "chatMsgVector":Ljava/util/Vector;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 246
    return-void

    .line 243
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public static addChatSystemMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hz/main/ChatMsg;->addChatSystemMsg(Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method public static addChatSystemMsg(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "isPrompt"    # Z

    .prologue
    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-static {p0}, Lcom/hz/main/WorldMessage;->addPromptMsg(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/hz/main/ChatMsg;

    const-string v3, ""

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    invoke-static {v0, v5}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/hz/main/ChatMsg;

    const-string v3, ""

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    invoke-static {v0}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;)V

    goto :goto_0
.end method

.method public static addTempTalkModel(Lcom/hz/actor/Model;)V
    .locals 5
    .param p0, "tempTalkModel"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v4, 0x0

    .line 256
    if-nez p0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 261
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sput-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    .line 264
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 273
    :goto_2
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sget v3, Lcom/hz/main/ChatMsg;->MAX_TEMP_TALK_NUM:I

    if-ge v2, v3, :cond_4

    .line 277
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v2, p0, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 265
    :cond_2
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 266
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 267
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 268
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v2, v1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 264
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v1    # "model":Lcom/hz/actor/Model;
    :cond_4
    sget-object v2, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    sget v3, Lcom/hz/main/ChatMsg;->MAX_TEMP_TALK_NUM:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2
.end method

.method public static chatPrivateList(Lcom/hz/actor/Model;)Ljava/util/Vector;
    .locals 6
    .param p0, "chatPrivateModel"    # Lcom/hz/actor/Model;

    .prologue
    .line 282
    if-nez p0, :cond_1

    .line 283
    const/4 v0, 0x0

    .line 310
    :cond_0
    return-object v0

    .line 286
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 288
    .local v0, "chatPrivateList":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 289
    .local v2, "isFind":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_5

    .line 300
    :cond_2
    if-nez v2, :cond_3

    .line 301
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 304
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/actor/Model;

    .line 305
    .local v3, "model":Lcom/hz/actor/Model;
    if-eqz v3, :cond_4

    .line 306
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    .end local v3    # "model":Lcom/hz/actor/Model;
    :cond_5
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/actor/Model;

    .line 291
    .restart local v3    # "model":Lcom/hz/actor/Model;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 293
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 294
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4, p0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 296
    const/4 v2, 0x1

    .line 289
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static chatPrivateModel(Lcom/hz/actor/Model;Ljava/lang/String;)Lcom/hz/actor/Model;
    .locals 6
    .param p0, "chatPrivateModel"    # Lcom/hz/actor/Model;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "strname":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    .end local p0    # "chatPrivateModel":Lcom/hz/actor/Model;
    :goto_0
    return-object p0

    .line 341
    .restart local p0    # "chatPrivateModel":Lcom/hz/actor/Model;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 359
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 342
    :cond_3
    sget-object v4, Lcom/hz/main/ChatMsg;->tempTalkMsgList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 346
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_5

    .line 347
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "strmodelname":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object p0, v1

    .line 355
    goto :goto_0

    .line 341
    .end local v2    # "strmodelname":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static chatPrivateSelect(Lcom/hz/actor/Model;Ljava/util/Vector;)I
    .locals 5
    .param p0, "chatPrivateModel"    # Lcom/hz/actor/Model;
    .param p1, "chatPrivateList"    # Ljava/util/Vector;

    .prologue
    .line 315
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 316
    :cond_0
    const/4 v2, 0x0

    .line 326
    :cond_1
    :goto_0
    return v2

    .line 318
    :cond_2
    const/4 v2, 0x0

    .line 319
    .local v2, "selectIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 320
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/actor/Model;

    .line 321
    .local v1, "model":Lcom/hz/actor/Model;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hz/actor/Model;->getId()I

    move-result v3

    invoke-virtual {p0}, Lcom/hz/actor/Model;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 322
    move v2, v0

    .line 323
    goto :goto_0

    .line 319
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static doPetSee(Lcom/hz/core/Item;I)V
    .locals 8
    .param p0, "viewItem"    # Lcom/hz/core/Item;
    .param p1, "playerID"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 740
    if-nez p0, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/hz/core/Item;->isPetType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    new-instance v0, Lcom/hz/actor/MyPet;

    invoke-direct {v0, v7}, Lcom/hz/actor/MyPet;-><init>(Lcom/hz/actor/Player;)V

    .line 747
    .local v0, "pet":Lcom/hz/actor/MyPet;
    iput-object p0, v0, Lcom/hz/actor/MyPet;->petItem:Lcom/hz/core/Item;

    .line 748
    const/4 v1, 0x5

    .line 749
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Short;

    iget-short v5, p0, Lcom/hz/core/Item;->slotPos:S

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    .line 748
    invoke-static {v0, v1, v2}, Lcom/hz/actor/MyPet;->doPetInfoMsg(Lcom/hz/actor/MyPet;I[Ljava/lang/Object;)Z

    move-result v1

    .line 749
    if-eqz v1, :cond_0

    .line 751
    invoke-static {v0, v7, v6}, Lcom/hz/ui/UIHandler;->createPetInfoUI(Lcom/hz/actor/MyPet;Lcom/hz/ui/UIHandler;B)V

    goto :goto_0
.end method

.method public static getChannalTagText(I)Ljava/lang/String;
    .locals 1
    .param p0, "channel"    # I

    .prologue
    .line 560
    packed-switch p0, :pswitch_data_0

    .line 571
    :pswitch_0
    const-string v0, "\u3010Th\u1ebf\u3011"

    :goto_0
    return-object v0

    .line 561
    :pswitch_1
    const-string v0, "\u3010Th\u1ebf\u3011"

    goto :goto_0

    .line 562
    :pswitch_2
    const-string v0, "\u3010Qu\u1ed1c\u3011"

    goto :goto_0

    .line 563
    :pswitch_3
    const-string v0, "\u3010\u0110\u1ed9i\u3011"

    goto :goto_0

    .line 564
    :pswitch_4
    const-string v0, "\u3010Khu\u3011"

    goto :goto_0

    .line 565
    :pswitch_5
    const-string v0, "\u3010LSV\u3011"

    goto :goto_0

    .line 566
    :pswitch_6
    const-string v0, "\u3010Ri\u00eang\u3011"

    goto :goto_0

    .line 567
    :pswitch_7
    const-string v0, "\u3010System\u3011"

    goto :goto_0

    .line 568
    :pswitch_8
    const-string v0, "\u3010Minh\u3011"

    goto :goto_0

    .line 569
    :pswitch_9
    const-string v0, ""

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private static final getChannelColor(I)I
    .locals 1
    .param p0, "channel"    # I

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "color":I
    packed-switch p0, :pswitch_data_0

    .line 625
    :goto_0
    return v0

    .line 601
    :pswitch_0
    const v0, 0xff9900

    .line 602
    goto :goto_0

    .line 604
    :pswitch_1
    const v0, 0xffde26

    .line 605
    goto :goto_0

    .line 607
    :pswitch_2
    const v0, 0xff99ff

    .line 608
    goto :goto_0

    .line 610
    :pswitch_3
    const v0, 0xff00

    .line 611
    goto :goto_0

    .line 613
    :pswitch_4
    const v0, 0xf6f6f6

    .line 614
    goto :goto_0

    .line 616
    :pswitch_5
    const v0, 0x800080

    .line 617
    goto :goto_0

    .line 619
    :pswitch_6
    const/high16 v0, 0xff0000

    .line 620
    goto :goto_0

    .line 622
    :pswitch_7
    const v0, 0xfa0690

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static getChatMsgVector(I)Ljava/util/Vector;
    .locals 1
    .param p0, "channel"    # I

    .prologue
    .line 133
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 134
    sget-object v0, Lcom/hz/main/ChatMsg;->countryChatMsg:Ljava/util/Vector;

    .line 146
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 137
    sget-object v0, Lcom/hz/main/ChatMsg;->privateChatMsg:Ljava/util/Vector;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 140
    sget-object v0, Lcom/hz/main/ChatMsg;->worldChatMsg:Ljava/util/Vector;

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    .line 143
    sget-object v0, Lcom/hz/main/ChatMsg;->unionChatMsg:Ljava/util/Vector;

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/hz/main/ChatMsg;->allChatMsg:Ljava/util/Vector;

    goto :goto_0
.end method

.method public static getChatStr(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 7
    .param p0, "chatStr"    # Ljava/util/Vector;
    .param p1, "chatEvent"    # Ljava/util/Vector;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 86
    const-string v0, "Chung"

    const/16 v1, 0xa

    invoke-static {p0, v0, p1, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 87
    const-string v0, "Li\u00ean SV"

    const/16 v1, 0x8

    invoke-static {p0, v0, p1, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 88
    const-string v0, "T.Gi\u1edbi"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 89
    invoke-static {v2}, Lcom/hz/main/ChatMsg;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "K.V\u1ef1c"

    invoke-static {p0, v0, p1, v2}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 92
    :cond_0
    invoke-static {v3}, Lcom/hz/main/ChatMsg;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "Qu\u1ed1c gia"

    invoke-static {p0, v0, p1, v3}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 95
    :cond_1
    invoke-static {v4}, Lcom/hz/main/ChatMsg;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "\u0110\u1ed9i"

    invoke-static {p0, v0, p1, v4}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 98
    :cond_2
    invoke-static {v5}, Lcom/hz/main/ChatMsg;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "PM"

    invoke-static {p0, v0, p1, v5}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 101
    :cond_3
    invoke-static {v6}, Lcom/hz/main/ChatMsg;->isTabStatus(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    const-string v0, "Li\u00ean minh"

    invoke-static {p0, v0, p1, v6}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 104
    :cond_4
    const-string v0, "System"

    const/4 v1, 0x6

    invoke-static {p0, v0, p1, v1}, Lcom/hz/common/Tool;->addChoiceMenu(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;I)V

    .line 105
    return-void
.end method

.method public static final getSexColor(I)I
    .locals 1
    .param p0, "sex"    # I

    .prologue
    .line 579
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 580
    const v0, 0xfe5f5f

    .line 582
    :goto_0
    return v0

    :cond_0
    const v0, 0xe0fb

    goto :goto_0
.end method

.method public static isTabStatus(I)Z
    .locals 3
    .param p0, "channel"    # I

    .prologue
    const/4 v0, 0x1

    .line 78
    sget v1, Lcom/hz/main/ChatMsg;->intValue1:I

    shl-int v2, v0, p0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTabStatus(ZI)V
    .locals 2
    .param p0, "flag"    # Z
    .param p1, "channel"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    if-eqz p0, :cond_0

    .line 71
    sget v0, Lcom/hz/main/ChatMsg;->intValue1:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    sput v0, Lcom/hz/main/ChatMsg;->intValue1:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    sget v0, Lcom/hz/main/ChatMsg;->intValue1:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/hz/main/ChatMsg;->intValue1:I

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    .line 552
    return-void
.end method

.method public doGetLuckMoney()V
    .locals 8

    .prologue
    .line 757
    new-instance v3, Lcom/hz/net/Message;

    const/16 v6, 0x34f6

    invoke-direct {v3, v6}, Lcom/hz/net/Message;-><init>(I)V

    .line 759
    .local v3, "msg":Lcom/hz/net/Message;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/hz/net/Message;->putByte(B)V

    .line 760
    iget-wide v6, p0, Lcom/hz/main/ChatMsg;->luckMoneyID:J

    invoke-virtual {v3, v6, v7}, Lcom/hz/net/Message;->putLong(J)V

    .line 762
    invoke-static {v3}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v4

    .line 767
    .local v4, "receiveMsg":Lcom/hz/net/Message;
    if-eqz v4, :cond_0

    .line 771
    invoke-virtual {v4}, Lcom/hz/net/Message;->getByte()B

    move-result v5

    .line 773
    .local v5, "result":B
    if-gez v5, :cond_2

    .line 774
    invoke-virtual {v4}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "error":Ljava/lang/String;
    invoke-static {v0}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 779
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v1

    .line 780
    .local v1, "getMoney":I
    invoke-virtual {v4}, Lcom/hz/net/Message;->getInt()I

    move-result v2

    .line 781
    .local v2, "money1":I
    sget-object v6, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    iput v2, v6, Lcom/hz/actor/Player;->money1:I

    .line 783
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ch\u00fac m\u1eebng nh\u1eadn L\u00ec X\u00ec V\u00e0ng: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_0
.end method

.method public doViewChatItem(Lcom/hz/actor/Model;)V
    .locals 13
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v5, 0x0

    .line 634
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 635
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/hz/main/ChatMsg;->itemIDList:[S

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createChatSeeItem(I[S)Lcom/hz/net/Message;

    move-result-object v9

    .line 636
    .local v9, "msg":Lcom/hz/net/Message;
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    .end local v9    # "msg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 640
    .restart local v9    # "msg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v9

    .line 641
    if-eqz v9, :cond_0

    .line 644
    invoke-virtual {v9}, Lcom/hz/net/Message;->reset()V

    .line 646
    invoke-virtual {v9}, Lcom/hz/net/Message;->getByte()B

    move-result v10

    .line 647
    .local v10, "num":B
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    .line 648
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v10, :cond_4

    .line 651
    invoke-static {v9}, Lcom/hz/main/MsgHandler;->processGetSuitInfoMsg(Lcom/hz/net/Message;)V

    .line 655
    .end local v7    # "i":I
    .end local v9    # "msg":Lcom/hz/net/Message;
    .end local v10    # "num":B
    :cond_2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 656
    .local v6, "choiceNameVector":Ljava/util/Vector;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v7, v2, :cond_5

    .line 665
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 667
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "choices":[Ljava/lang/String;
    const-string v0, ""

    .line 670
    .local v0, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 671
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hz/core/Item;

    .line 672
    .local v12, "viewItem":Lcom/hz/core/Item;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/hz/core/Item;->getNameInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12, v5}, Lcom/hz/core/Item;->getDesc(Lcom/hz/actor/Player;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-virtual {v12}, Lcom/hz/core/Item;->isPetType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(Nh\u1ea5n l\u1ef1a ch\u1ecdn xem chi ti\u1ebft)"

    .line 676
    const v4, 0xffff00

    .line 675
    invoke-static {v3, v4}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .end local v12    # "viewItem":Lcom/hz/core/Item;
    :cond_3
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    .line 680
    const/16 v4, 0xd

    .line 679
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    move-result-object v11

    .line 681
    .local v11, "uiHandler":Lcom/hz/ui/UIHandler;
    invoke-static {v11}, Lcom/hz/ui/UIObject;->getUIObj(Lcom/hz/ui/UIHandler;)Lcom/hz/ui/UIObject;

    move-result-object v2

    iget v3, p0, Lcom/hz/main/ChatMsg;->senderID:I

    iput v3, v2, Lcom/hz/ui/UIObject;->intValue1:I

    goto/16 :goto_0

    .line 649
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "choices":[Ljava/lang/String;
    .end local v6    # "choiceNameVector":Ljava/util/Vector;
    .end local v11    # "uiHandler":Lcom/hz/ui/UIHandler;
    .restart local v9    # "msg":Lcom/hz/net/Message;
    .restart local v10    # "num":B
    :cond_4
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    invoke-static {v9}, Lcom/hz/core/Item;->fromBytes(Lcom/hz/net/Message;)Lcom/hz/core/Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 657
    .end local v9    # "msg":Lcom/hz/net/Message;
    .end local v10    # "num":B
    .restart local v6    # "choiceNameVector":Ljava/util/Vector;
    :cond_5
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->itemList:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/core/Item;

    .line 658
    .local v8, "item":Lcom/hz/core/Item;
    if-nez v8, :cond_6

    .line 656
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 662
    :cond_6
    iget-object v2, v8, Lcom/hz/core/Item;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public doViewChatMission(Lcom/hz/actor/Model;)V
    .locals 12
    .param p1, "model"    # Lcom/hz/actor/Model;

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 689
    invoke-virtual {p1}, Lcom/hz/actor/Model;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/hz/main/ChatMsg;->missionIDList:[S

    invoke-static {v2, v3}, Lcom/hz/main/MsgHandler;->createChatSeeMission(I[S)Lcom/hz/net/Message;

    move-result-object v10

    .line 690
    .local v10, "msg":Lcom/hz/net/Message;
    invoke-static {v10}, Lcom/hz/main/MsgHandler;->waitForRequest(Lcom/hz/net/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    .end local v10    # "msg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return-void

    .line 694
    .restart local v10    # "msg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/MsgHandler;->getReceiveMsg()Lcom/hz/net/Message;

    move-result-object v10

    .line 695
    if-eqz v10, :cond_0

    .line 698
    invoke-virtual {v10}, Lcom/hz/net/Message;->reset()V

    .line 700
    invoke-virtual {v10}, Lcom/hz/net/Message;->getByte()B

    move-result v11

    .line 701
    .local v11, "num":B
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    .line 702
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v11, :cond_4

    .line 711
    .end local v7    # "i":I
    .end local v10    # "msg":Lcom/hz/net/Message;
    .end local v11    # "num":B
    :cond_2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 712
    .local v6, "choiceNameVector":Ljava/util/Vector;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v7, v2, :cond_7

    .line 721
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/hz/main/GameText;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 723
    invoke-static {v6}, Lcom/hz/common/Tool;->getStringArrayByVector(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "choices":[Ljava/lang/String;
    const-string v0, ""

    .line 726
    .local v0, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 727
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/core/Mission;

    invoke-virtual {v2, v4}, Lcom/hz/core/Mission;->getDetails(Z)Ljava/lang/String;

    move-result-object v0

    .line 729
    :cond_3
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    invoke-static {}, Lcom/hz/ui/UIAction;->getUIActionInstance()Lcom/hz/ui/UIAction;

    move-result-object v3

    .line 730
    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 729
    invoke-static/range {v0 .. v5}, Lcom/hz/ui/UIHandler;->createAreaMessageWin(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Lcom/hz/ui/UIListener;BLcom/hz/ui/UIHandler;)Lcom/hz/ui/UIHandler;

    goto :goto_0

    .line 703
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "choices":[Ljava/lang/String;
    .end local v6    # "choiceNameVector":Ljava/util/Vector;
    .restart local v10    # "msg":Lcom/hz/net/Message;
    .restart local v11    # "num":B
    :cond_4
    invoke-virtual {v10}, Lcom/hz/net/Message;->getBytes()[B

    move-result-object v9

    .line 704
    .local v9, "missionData":[B
    if-eqz v9, :cond_5

    array-length v2, v9

    if-gtz v2, :cond_6

    .line 702
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 707
    :cond_6
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    invoke-static {v9}, Lcom/hz/core/Mission;->fromBytes([B)Lcom/hz/core/Mission;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 713
    .end local v9    # "missionData":[B
    .end local v10    # "msg":Lcom/hz/net/Message;
    .end local v11    # "num":B
    .restart local v6    # "choiceNameVector":Ljava/util/Vector;
    :cond_7
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->missionList:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/core/Mission;

    .line 714
    .local v8, "m":Lcom/hz/core/Mission;
    if-nez v8, :cond_8

    .line 712
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 718
    :cond_8
    iget-object v2, v8, Lcom/hz/core/Mission;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public getChatMsgUIText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/hz/main/ChatMsg;->getFullText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullText()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x1a

    const/4 v7, 0x1

    const/16 v8, 0x8

    .line 420
    iget-byte v5, p0, Lcom/hz/main/ChatMsg;->channel:B

    invoke-static {v5}, Lcom/hz/main/ChatMsg;->getChannalTagText(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "getText":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/main/ChatMsg;->channel:B

    invoke-static {v5}, Lcom/hz/main/ChatMsg;->getChannelColor(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-byte v5, p0, Lcom/hz/main/ChatMsg;->channel:B

    if-ne v5, v8, :cond_0

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u3010"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hz/main/ChatMsg;->serverName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u3011"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    const/16 v5, 0x800

    iget-short v6, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v7}, Lcom/hz/string/PowerString;->makeIconString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :cond_1
    :goto_0
    iget-short v5, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v7, v5}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    invoke-static {v8, v6}, Lcom/hz/string/PowerString;->makeIconString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :cond_2
    const/4 v1, 0x0

    .line 463
    .local v1, "sex":I
    const/16 v5, 0x10

    iget-short v6, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 464
    const/4 v1, 0x1

    .line 467
    :cond_3
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->name:Ljava/lang/String;

    .line 470
    .local v2, "showName":Ljava/lang/String;
    iget-object v5, p0, Lcom/hz/main/ChatMsg;->remark:Ljava/lang/String;

    invoke-static {v5}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 471
    iget-object v2, p0, Lcom/hz/main/ChatMsg;->remark:Ljava/lang/String;

    .line 474
    :cond_4
    const/4 v5, 0x2

    iget-short v6, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0xffff00

    invoke-static {v2, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " n\u00f3i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    :cond_5
    invoke-static {v2}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/hz/main/ChatMsg;->getSexColor(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_6
    iget-object v3, p0, Lcom/hz/main/ChatMsg;->text:Ljava/lang/String;

    .line 484
    .local v3, "showText":Ljava/lang/String;
    iget-byte v5, p0, Lcom/hz/main/ChatMsg;->VIPLevel2:B

    if-le v5, v8, :cond_a

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0xff3366

    invoke-static {v3, v6}, Lcom/hz/string/PowerString;->makeColorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_1
    return-object v0

    .line 433
    .end local v1    # "sex":I
    .end local v2    # "showName":Ljava/lang/String;
    .end local v3    # "showText":Ljava/lang/String;
    :cond_7
    const/16 v5, 0x400

    iget-short v6, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v9, v6}, Lcom/hz/string/PowerString;->makeIconString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    goto/16 :goto_0

    .line 437
    :cond_8
    const/16 v5, 0x100

    iget-short v6, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/16 v5, 0x1000

    iget-short v6, p0, Lcom/hz/main/ChatMsg;->flag:S

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    :cond_9
    iget-byte v5, p0, Lcom/hz/main/ChatMsg;->VIPLevel2:B

    if-lez v5, :cond_1

    .line 449
    iget-byte v5, p0, Lcom/hz/main/ChatMsg;->VIPLevel2:B

    add-int/lit8 v4, v5, -0x1

    .line 450
    .local v4, "temlevel":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1f

    invoke-static {v6, v4}, Lcom/hz/string/PowerString;->makeIconString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 490
    .end local v4    # "temlevel":I
    .restart local v1    # "sex":I
    .restart local v2    # "showName":Ljava/lang/String;
    .restart local v3    # "showText":Ljava/lang/String;
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/hz/main/ChatMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/hz/main/ChatMsg;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/hz/main/ChatMsg;->senderID:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/hz/main/ChatMsg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTotalHeight()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/hz/main/ChatMsg;->parseTextTotalHeight:I

    return v0
.end method

.method public getVipLevel()B
    .locals 1

    .prologue
    .line 402
    iget-byte v0, p0, Lcom/hz/main/ChatMsg;->vipLevel:B

    return v0
.end method

.method public isCountry()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/hz/main/ChatMsg;->countryID:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveItem()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hz/main/ChatMsg;->itemIDList:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/main/ChatMsg;->itemIDList:[S

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveMission()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hz/main/ChatMsg;->missionIDList:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hz/main/ChatMsg;->missionIDList:[S

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLuckMoney()Z
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/hz/main/ChatMsg;->luckMoneyID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(II)[Lcom/hz/string/PowerString;
    .locals 6
    .param p1, "width"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 515
    iget-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    if-nez v4, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/hz/main/ChatMsg;->getFullText()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "getText":Ljava/lang/String;
    sget-object v4, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v4, p1}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v4

    iput-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    .line 520
    const/4 v4, 0x0

    iput v4, p0, Lcom/hz/main/ChatMsg;->parseTextTotalHeight:I

    .line 521
    iget-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    if-eqz v4, :cond_0

    .line 523
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 547
    .end local v0    # "getText":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    return-object v4

    .line 525
    .restart local v0    # "getText":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    aget-object v3, v4, v2

    .line 526
    .local v3, "ps":Lcom/hz/string/PowerString;
    if-nez v3, :cond_2

    .line 523
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {v3}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v1

    .line 534
    .local v1, "height":I
    if-lez v2, :cond_3

    .line 535
    iget v4, p0, Lcom/hz/main/ChatMsg;->parseTextTotalHeight:I

    add-int/2addr v4, v1

    if-le v4, p2, :cond_3

    .line 536
    iget-object v4, p0, Lcom/hz/main/ChatMsg;->parseTextMsg:[Lcom/hz/string/PowerString;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    goto :goto_1

    .line 542
    :cond_3
    iget v4, p0, Lcom/hz/main/ChatMsg;->parseTextTotalHeight:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/hz/main/ChatMsg;->parseTextTotalHeight:I

    goto :goto_1
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/hz/main/ChatMsg;->remark:Ljava/lang/String;

    .line 411
    return-void
.end method
