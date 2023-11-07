.class public Lcom/hz/main/WorldMessage;
.super Ljava/lang/Object;
.source "WorldMessage.java"


# static fields
.field private static final BG_COLOR_BATTLE:I = 0x4e4360

.field private static final BG_COLOR_WORLD:I = -0x54edcbaa

.field private static CHAT_LOCATION_H:S = 0x0s

.field private static CHAT_LOCATION_W:S = 0x0s

.field private static CHAT_LOCATION_X:S = 0x0s

.field private static CHAT_LOCATION_Y:S = 0x0s

.field private static final DEFAULT_CHAT_H:S

.field private static final DEFAULT_CHAT_W:S

.field private static final DEFAULT_CHAT_X:S = 0x0s

.field private static final DEFAULT_CHAT_Y:S

.field private static final LAST_TIME:J = 0xbb8L

.field private static final MAX_CHAT_SHOW_NUM:B = 0x3t

.field private static POINT_LOCATION_X:S = 0x0s

.field private static POINT_LOCATION_Y:S = 0x0s

.field private static PROMPT_LOCATION_X:S = 0x0s

.field private static PROMPT_LOCATION_Y:S = 0x0s

.field private static final TEXT_COLOR:I = 0xfef8b6

.field private static final WORLD_MESSAGE_MAX_NUM:I = 0xa

.field private static instance:Lcom/hz/main/WorldMessage;


# instance fields
.field chatMessages:Ljava/util/Vector;

.field messageTime:Ljava/util/Vector;

.field noticeMsssage:Ljava/util/Vector;

.field pointMsssage:Ljava/util/Vector;

.field promptMsssage:Ljava/util/Vector;

.field startDrawBottomY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    .line 334
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    int-to-short v0, v0

    sput-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_W:S

    .line 335
    sget v0, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    sput-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_H:S

    .line 337
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget-short v1, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_H:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_Y:S

    .line 338
    sget-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_W:S

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    .line 339
    sget-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_H:S

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    .line 340
    sput-short v2, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    .line 341
    sget-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_Y:S

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    .line 368
    sput-short v2, Lcom/hz/main/WorldMessage;->POINT_LOCATION_X:S

    .line 369
    sput-short v2, Lcom/hz/main/WorldMessage;->POINT_LOCATION_Y:S

    .line 375
    sput-short v2, Lcom/hz/main/WorldMessage;->PROMPT_LOCATION_X:S

    .line 376
    sput-short v2, Lcom/hz/main/WorldMessage;->PROMPT_LOCATION_Y:S

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "_startDrawBottomY"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    .line 86
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    .line 132
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    .line 134
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    .line 138
    iput p1, p0, Lcom/hz/main/WorldMessage;->startDrawBottomY:I

    .line 139
    return-void
.end method

.method public static addMsg(Lcom/hz/main/ChatMsg;)V
    .locals 4
    .param p0, "cm"    # Lcom/hz/main/ChatMsg;

    .prologue
    .line 150
    if-nez p0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/hz/main/GameCanvas;->skyarena:Lcom/hz/core/SkyArena;

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/hz/main/GameCanvas;->arena:Lcom/hz/core/Arena;

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/hz/actor/Player;->isSettingBit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :cond_2
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    .line 171
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 172
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 175
    :cond_3
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addNoticeMsg(Ljava/lang/String;)V
    .locals 6
    .param p0, "msgString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    invoke-static {p0}, Lcom/hz/core/PowerMsg;->createPowerMsgNotice(Ljava/lang/String;)Lcom/hz/core/PowerMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    new-instance v0, Lcom/hz/main/ChatMsg;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const-string v3, ""

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    invoke-static {v0, v5}, Lcom/hz/main/ChatMsg;->addChatMsg(Lcom/hz/main/ChatMsg;Z)V

    goto :goto_0
.end method

.method public static addPointMsg(Ljava/lang/String;I)V
    .locals 3
    .param p0, "msgString"    # Ljava/lang/String;
    .param p1, "typePow"    # I

    .prologue
    .line 108
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-short v0, Lcom/hz/main/WorldMessage;->POINT_LOCATION_X:S

    if-ltz v0, :cond_1

    sget-short v0, Lcom/hz/main/WorldMessage;->POINT_LOCATION_X:S

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-gt v0, v1, :cond_1

    .line 111
    sget-short v0, Lcom/hz/main/WorldMessage;->POINT_LOCATION_Y:S

    if-ltz v0, :cond_1

    sget-short v0, Lcom/hz/main/WorldMessage;->POINT_LOCATION_Y:S

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    if-le v0, v1, :cond_2

    .line 112
    :cond_1
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-static {p0, p1}, Lcom/hz/core/PowerMsg;->createPowerMsgPoint(Ljava/lang/String;I)Lcom/hz/core/PowerMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    sget-short v1, Lcom/hz/main/WorldMessage;->POINT_LOCATION_X:S

    sget-short v2, Lcom/hz/main/WorldMessage;->POINT_LOCATION_Y:S

    invoke-static {p0, v1, v2}, Lcom/hz/core/PowerMsg;->createPowerMsgPoint(Ljava/lang/String;II)Lcom/hz/core/PowerMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addPointMsg(Ljava/lang/String;II)V
    .locals 2
    .param p0, "msgString"    # Ljava/lang/String;
    .param p1, "drawX"    # I
    .param p2, "drawY"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-static {p0, p1, p2}, Lcom/hz/core/PowerMsg;->createPowerMsgPoint(Ljava/lang/String;II)Lcom/hz/core/PowerMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addPromptMsg(Ljava/lang/String;)V
    .locals 3
    .param p0, "msgString"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/hz/common/Tool;->isNullText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-short v1, Lcom/hz/main/WorldMessage;->PROMPT_LOCATION_X:S

    sget-short v2, Lcom/hz/main/WorldMessage;->PROMPT_LOCATION_Y:S

    invoke-static {p0, v1, v2}, Lcom/hz/core/PowerMsg;->createPowerMsgPrompt2(Ljava/lang/String;II)Lcom/hz/core/PowerMsg;

    move-result-object v0

    .line 73
    .local v0, "powerMsg":Lcom/hz/core/PowerMsg;
    sget-object v1, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v1, v1, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addSystemChat(ILjava/lang/String;)V
    .locals 6
    .param p0, "channel"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Lcom/hz/main/ChatMsg;

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v5, 0x0

    move v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/hz/main/ChatMsg;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    .line 295
    .local v0, "cm":Lcom/hz/main/ChatMsg;
    invoke-static {v0}, Lcom/hz/main/WorldMessage;->addMsg(Lcom/hz/main/ChatMsg;)V

    .line 296
    return-void
.end method

.method public static addSystemChat(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/hz/main/WorldMessage;->addSystemChat(ILjava/lang/String;)V

    .line 292
    return-void
.end method

.method public static delPromptMsg()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 81
    return-void
.end method

.method private final draw(Ljavax/microedition/lcdui/Graphics;Z)V
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "isInBattle"    # Z

    .prologue
    .line 182
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v7

    .line 183
    .local v7, "num":I
    const/4 v4, 0x0

    .line 185
    .local v4, "index":I
    const-wide/16 v5, 0xbb8

    .line 186
    .local v5, "lastTime":J
    const/4 v0, 0x1

    .line 193
    .local v0, "chatShowNum":I
    const/4 v3, 0x0

    .line 194
    .local v3, "getOffsetY":I
    const/4 v2, 0x1

    .line 195
    .local v2, "delete":Z
    :cond_0
    :goto_0
    if-lt v4, v7, :cond_1

    .line 232
    :goto_1
    return-void

    .line 196
    :cond_1
    if-eqz v2, :cond_5

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v8, p0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v8, v9, v11

    cmp-long v8, v8, v5

    if-ltz v8, :cond_4

    .line 200
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/main/ChatMsg;

    .line 201
    .local v1, "cm":Lcom/hz/main/ChatMsg;
    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v1}, Lcom/hz/main/ChatMsg;->clean()V

    .line 205
    :cond_2
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 206
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 209
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 211
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 212
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 213
    iget-object v8, p0, Lcom/hz/main/WorldMessage;->messageTime:Ljava/util/Vector;

    new-instance v9, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 216
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 217
    goto :goto_0

    .line 220
    .end local v1    # "cm":Lcom/hz/main/ChatMsg;
    :cond_4
    const/4 v2, 0x0

    .line 224
    :cond_5
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/hz/main/WorldMessage;->drawMsg(Ljavax/microedition/lcdui/Graphics;IIZ)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v3, v8

    .line 226
    add-int/lit8 v4, v4, 0x1

    .line 228
    if-lt v4, v0, :cond_0

    goto :goto_1
.end method

.method private final drawMsg(Ljavax/microedition/lcdui/Graphics;IIZ)I
    .locals 12
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "index"    # I
    .param p3, "offsetY"    # I
    .param p4, "isInBattle"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcom/hz/main/WorldMessage;->chatMessages:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/main/ChatMsg;

    .line 237
    .local v6, "cm":Lcom/hz/main/ChatMsg;
    if-nez v6, :cond_0

    .line 238
    const/4 v5, 0x0

    .line 279
    :goto_0
    return v5

    .line 240
    :cond_0
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    invoke-virtual {v6, v0, v1}, Lcom/hz/main/ChatMsg;->parse(II)[Lcom/hz/string/PowerString;

    move-result-object v10

    .line 243
    .local v10, "stringList":[Lcom/hz/string/PowerString;
    if-nez v10, :cond_1

    .line 244
    const/4 v5, 0x0

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v6}, Lcom/hz/main/ChatMsg;->getTextTotalHeight()I

    move-result v5

    .line 249
    .local v5, "messageHeight":I
    sget-short v2, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    .line 250
    .local v2, "drawX":I
    sget-short v3, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    .line 252
    .local v3, "drawY":I
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    if-le v3, v0, :cond_2

    .line 253
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    add-int/2addr v0, v1

    sub-int/2addr v0, p3

    sub-int v3, v0, v5

    .line 255
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    if-ge v3, v0, :cond_2

    .line 256
    sget-short v3, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    .line 261
    :cond_2
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    invoke-virtual {p1, v2, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 262
    const v1, -0x54edcbaa

    sget-short v4, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 264
    const v0, 0xfef8b6

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 266
    array-length v8, v10

    .line 267
    .local v8, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v8, :cond_3

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v11, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v0, v1, v4, v11}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    .line 269
    :cond_3
    aget-object v9, v10, v7

    .line 270
    .local v9, "ps":Lcom/hz/string/PowerString;
    if-nez v9, :cond_4

    .line 267
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 273
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v9, p1, v2, v3, v0}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 274
    invoke-virtual {v9}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_2
.end method

.method public static getInstance()Lcom/hz/main/WorldMessage;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/hz/main/WorldMessage;

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    add-int/lit8 v1, v1, -0xa

    invoke-direct {v0, v1}, Lcom/hz/main/WorldMessage;-><init>(I)V

    sput-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    .line 145
    :cond_0
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    return-object v0
.end method

.method public static initWorldShowLocation(Lcom/hz/ui/UIHandler;Z)V
    .locals 10
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "isInit"    # Z

    .prologue
    const/4 v9, 0x0

    .line 389
    const/4 v2, 0x0

    .line 391
    .local v2, "isFindChat":Z
    if-eqz p0, :cond_3

    .line 392
    const/4 v0, 0x0

    .line 395
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz p1, :cond_2

    .line 396
    const/16 v6, 0x3b6

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, v9}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 399
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v4

    .line 400
    .local v4, "x":I
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v5

    .line 401
    .local v5, "y":I
    invoke-static {v4, v5}, Lcom/hz/main/WorldMessage;->setPointLocationParam(II)V

    .line 408
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    const/16 v6, 0x3b7

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0, v9}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 411
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v4

    .line 412
    .restart local v4    # "x":I
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v5

    .line 413
    .restart local v5    # "y":I
    invoke-static {v4, v5}, Lcom/hz/main/WorldMessage;->setPromptLocationParam(II)V

    .line 443
    .end local v0    # "gwidget":Lcom/hz/gui/GWidget;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    :goto_0
    return-void

    .line 423
    .restart local v0    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_2
    const/16 v6, 0x3b4

    invoke-virtual {p0, v6}, Lcom/hz/ui/UIHandler;->getGWidgetByEventType(I)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {v0, v9}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 426
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getXX()I

    move-result v4

    .line 427
    .restart local v4    # "x":I
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getYY()I

    move-result v5

    .line 428
    .restart local v5    # "y":I
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getW()I

    move-result v3

    .line 429
    .local v3, "w":I
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getH()I

    move-result v1

    .line 430
    .local v1, "h":I
    invoke-static {v4, v5, v3, v1}, Lcom/hz/main/WorldMessage;->setChatLocationParam(IIII)V

    .line 431
    const/4 v2, 0x1

    .line 440
    .end local v0    # "gwidget":Lcom/hz/gui/GWidget;
    .end local v1    # "h":I
    .end local v3    # "w":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_3
    if-nez v2, :cond_1

    .line 441
    sget-short v6, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_Y:S

    sget-short v7, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_W:S

    sget-short v8, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_H:S

    invoke-static {v9, v6, v7, v8}, Lcom/hz/main/WorldMessage;->setChatLocationParam(IIII)V

    goto :goto_0
.end method

.method public static isPromptEmtry()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PowerMsg;

    invoke-virtual {v0}, Lcom/hz/core/PowerMsg;->destroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 42
    :cond_0
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 43
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PowerMsg;

    invoke-virtual {v0}, Lcom/hz/core/PowerMsg;->destroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 48
    :cond_1
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 49
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PowerMsg;

    invoke-virtual {v0}, Lcom/hz/core/PowerMsg;->destroy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 53
    :cond_2
    return-void
.end method

.method public static paintBottomUIMsg(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 305
    sget-object v0, Lcom/hz/main/GameCanvas;->advertisementgame:Lcom/hz/core/Advertisement;

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hz/main/WorldMessage;->draw(Ljavax/microedition/lcdui/Graphics;Z)V

    goto :goto_0
.end method

.method public static paintUpUIMsg(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 319
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->pointMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PowerMsg;

    invoke-virtual {v0, p0}, Lcom/hz/core/PowerMsg;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 324
    :cond_0
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->promptMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PowerMsg;

    invoke-virtual {v0, p0}, Lcom/hz/core/PowerMsg;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 329
    :cond_1
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 330
    sget-object v0, Lcom/hz/main/WorldMessage;->instance:Lcom/hz/main/WorldMessage;

    iget-object v0, v0, Lcom/hz/main/WorldMessage;->noticeMsssage:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/core/PowerMsg;

    invoke-virtual {v0, p0}, Lcom/hz/core/PowerMsg;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 332
    :cond_2
    return-void
.end method

.method private static setChatLocationParam(IIII)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 343
    int-to-short v0, p0

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    .line 344
    int-to-short v0, p1

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    .line 345
    int-to-short v0, p2

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    .line 346
    int-to-short v0, p3

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    .line 347
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    if-gtz v0, :cond_0

    .line 348
    sget-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_H:S

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    .line 350
    :cond_0
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    if-gtz v0, :cond_1

    .line 351
    sget-short v0, Lcom/hz/main/WorldMessage;->DEFAULT_CHAT_W:S

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    .line 354
    :cond_1
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    if-gez v0, :cond_4

    .line 355
    sput-short v2, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    .line 360
    :cond_2
    :goto_0
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    if-gez v0, :cond_5

    .line 361
    sput-short v2, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    .line 366
    :cond_3
    :goto_1
    return-void

    .line 357
    :cond_4
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    add-int/2addr v0, v1

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    if-le v0, v1, :cond_2

    .line 358
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_H:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_Y:S

    goto :goto_0

    .line 363
    :cond_5
    sget-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    add-int/2addr v0, v1

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-le v0, v1, :cond_3

    .line 364
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget-short v1, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_W:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lcom/hz/main/WorldMessage;->CHAT_LOCATION_X:S

    goto :goto_1
.end method

.method private static setPointLocationParam(II)V
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 371
    int-to-short v0, p0

    sput-short v0, Lcom/hz/main/WorldMessage;->POINT_LOCATION_X:S

    .line 372
    int-to-short v0, p1

    sput-short v0, Lcom/hz/main/WorldMessage;->POINT_LOCATION_Y:S

    .line 373
    return-void
.end method

.method private static setPromptLocationParam(II)V
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 378
    int-to-short v0, p0

    sput-short v0, Lcom/hz/main/WorldMessage;->PROMPT_LOCATION_X:S

    .line 379
    int-to-short v0, p1

    sput-short v0, Lcom/hz/main/WorldMessage;->PROMPT_LOCATION_Y:S

    .line 380
    return-void
.end method
