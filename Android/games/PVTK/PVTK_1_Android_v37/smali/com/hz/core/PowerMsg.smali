.class public Lcom/hz/core/PowerMsg;
.super Ljava/lang/Object;
.source "PowerMsg.java"


# static fields
.field private static final NOTICE_BACKGROUND_COLOR:I = -0x60000000

.field private static final NOTICE_FONT_COLOR:I = 0xff00

.field private static final NOTICE_FRAME:I = 0x41

.field private static final NOTICE_SHOW_TIME:I = 0x2

.field private static final NOTICE_START_HEIGHT:I = 0xa

.field private static final POINT_BACKGROUND_COLOR:I = -0x60000000

.field private static final POINT_FONT_COLOR:I = 0xfada89

.field public static final POINT_POS_PLAYER_INFO_DOWN:I = 0x0

.field private static final POINT_SHOW_COUNT:I = 0x3

.field private static final POINT_SHOW_TIME:I = 0x3e8

.field public static final POINT_WIDTH:I

.field private static final PROMPT_BACKGROUND_COLOR:I = -0x60000000

.field private static final PROMPT_BACKGROUND_COLOR2:I = 0x1b1b18

.field private static final PROMPT_BORDER2:I = 0x3

.field private static final PROMPT_FONT_COLOR:I = 0xffff00

.field private static final PROMPT_FONT_COLOR2:I = 0xfada89

.field private static final PROMPT_FRAME_COLOR2:I = 0xffffff

.field private static final PROMPT_SHOW_COUNT:I = 0x2

.field private static final PROMPT_SHOW_TIME:I = 0xbb8

.field private static final PROMPT_SHOW_TIME2:I = 0x7d0

.field private static final PROMPT_START_HEIGHT:I

.field public static final STATUS_DISTORY:I = 0x2

.field public static final STATUS_START_INIT:I = 0x1

.field public static final TYPE_POWERMSG_CHAT:I = 0x0

.field public static final TYPE_POWERMSG_NOTICE:I = 0x2

.field public static final TYPE_POWERMSG_POINT:I = 0x3

.field public static final TYPE_POWERMSG_PROMPT:I = 0x1

.field public static final TYPE_POWERMSG_PROMPT2:I = 0x4


# instance fields
.field private drawX:I

.field private drawY:I

.field private endTime:J

.field private msgString:Ljava/lang/String;

.field private powerArray:[Lcom/hz/string/PowerString;

.field private powerString:Lcom/hz/string/PowerString;

.field private startTime:J

.field private status:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x6

    sget v1, Lcom/hz/common/Utilities;->FONT_HEIGHT_HALF:I

    add-int/2addr v0, v1

    sput v0, Lcom/hz/core/PowerMsg;->PROMPT_START_HEIGHT:I

    .line 68
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hz/core/PowerMsg;->POINT_WIDTH:I

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "msgString"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/hz/core/PowerMsg;->msgString:Ljava/lang/String;

    .line 100
    iput p2, p0, Lcom/hz/core/PowerMsg;->type:I

    .line 101
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "msgString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "drawX"    # I
    .param p4, "drawY"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/hz/core/PowerMsg;->drawX:I

    .line 106
    iput p4, p0, Lcom/hz/core/PowerMsg;->drawY:I

    .line 107
    return-void
.end method

.method public static createPowerMsgChat(Ljava/lang/String;)Lcom/hz/core/PowerMsg;
    .locals 2
    .param p0, "msgString"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Lcom/hz/core/PowerMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createPowerMsgNotice(Ljava/lang/String;)Lcom/hz/core/PowerMsg;
    .locals 2
    .param p0, "msgString"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Lcom/hz/core/PowerMsg;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createPowerMsgPoint(Ljava/lang/String;I)Lcom/hz/core/PowerMsg;
    .locals 4
    .param p0, "msgString"    # Ljava/lang/String;
    .param p1, "pointPos"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "drawX":I
    const/4 v1, 0x0

    .line 231
    .local v1, "drawY":I
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    new-instance v2, Lcom/hz/core/PowerMsg;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;III)V

    return-object v2

    .line 233
    :pswitch_0
    const/4 v0, 0x0

    .line 234
    sget-object v2, Lcom/hz/main/WorldPanel;->gameworldPanelUI:Lcom/hz/ui/UIHandler;

    invoke-static {v2}, Lcom/hz/ui/UIHandler;->getWorldPlayerInfoHeight(Lcom/hz/ui/UIHandler;)I

    move-result v2

    add-int/lit8 v1, v2, 0x4

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static createPowerMsgPoint(Ljava/lang/String;II)Lcom/hz/core/PowerMsg;
    .locals 2
    .param p0, "msgString"    # Ljava/lang/String;
    .param p1, "drawX"    # I
    .param p2, "drawY"    # I

    .prologue
    .line 226
    new-instance v0, Lcom/hz/core/PowerMsg;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public static createPowerMsgPrompt(Ljava/lang/String;)Lcom/hz/core/PowerMsg;
    .locals 2
    .param p0, "msgString"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Lcom/hz/core/PowerMsg;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createPowerMsgPrompt2(Ljava/lang/String;II)Lcom/hz/core/PowerMsg;
    .locals 2
    .param p0, "msgString"    # Ljava/lang/String;
    .param p1, "drawX"    # I
    .param p2, "drawY"    # I

    .prologue
    .line 205
    if-ltz p1, :cond_0

    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-gt p1, v0, :cond_0

    .line 206
    if-ltz p2, :cond_0

    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    if-le p2, v0, :cond_1

    .line 207
    :cond_0
    const/4 p1, 0x0

    .line 208
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sget v1, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    sub-int p2, v0, v1

    .line 210
    :cond_1
    new-instance v0, Lcom/hz/core/PowerMsg;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/hz/core/PowerMsg;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hz/core/PowerMsg;->startTime:J

    .line 116
    iget v0, p0, Lcom/hz/core/PowerMsg;->type:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->msgString:Ljava/lang/String;

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, -0x6

    invoke-static {v0, v1, v2}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    .line 123
    iget-wide v0, p0, Lcom/hz/core/PowerMsg;->startTime:J

    iget-object v2, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v2, v2

    mul-int/lit16 v2, v2, 0x7d0

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/PowerMsg;->endTime:J

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->msgString:Ljava/lang/String;

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1}, Lcom/hz/string/PowerString;->createPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;)Lcom/hz/string/PowerString;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/PowerMsg;->powerString:Lcom/hz/string/PowerString;

    .line 131
    iget-wide v0, p0, Lcom/hz/core/PowerMsg;->startTime:J

    iget-object v2, p0, Lcom/hz/core/PowerMsg;->powerString:Lcom/hz/string/PowerString;

    invoke-virtual {v2}, Lcom/hz/string/PowerString;->getWidth()I

    move-result v2

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_HALF_WIDTH:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x41

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/PowerMsg;->endTime:J

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->msgString:Ljava/lang/String;

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v2, v2, -0xa

    invoke-static {v0, v1, v2}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    .line 139
    iget-wide v0, p0, Lcom/hz/core/PowerMsg;->startTime:J

    iget-object v2, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v2, v2

    mul-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hz/core/PowerMsg;->endTime:J

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->msgString:Ljava/lang/String;

    sget-object v1, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    sget v2, Lcom/hz/core/PowerMsg;->POINT_WIDTH:I

    invoke-static {v0, v1, v2}, Lcom/hz/string/PowerString;->splitPowerString(Ljava/lang/String;Ljavax/microedition/lcdui/Font;I)[Lcom/hz/string/PowerString;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    .line 147
    iget-wide v1, p0, Lcom/hz/core/PowerMsg;->startTime:J

    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v0, v0

    div-int/lit8 v3, v0, 0x3

    .line 148
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long v0, v1, v3

    .line 147
    iput-wide v0, p0, Lcom/hz/core/PowerMsg;->endTime:J

    goto :goto_0

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private isStatus(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/hz/core/PowerMsg;->status:I

    invoke-static {p1, v0}, Lcom/hz/common/Tool;->isBit(II)Z

    move-result v0

    return v0
.end method

.method private paintChat(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 242
    return-void
.end method

.method private paintNotice(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerString:Lcom/hz/string/PowerString;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 314
    :cond_0
    const/16 v3, 0xa

    .line 315
    .local v3, "drawY":I
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 316
    .local v4, "drawW":I
    sget v5, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    .line 319
    .local v5, "drawH":I
    const/high16 v1, -0x60000000

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 321
    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 322
    const v0, 0xff00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/hz/core/PowerMsg;->startTime:J

    sub-long/2addr v0, v8

    long-to-int v6, v0

    .line 325
    .local v6, "aliveTime":I
    div-int/lit8 v0, v6, 0x41

    mul-int/lit8 v7, v0, 0x2

    .line 326
    .local v7, "offX":I
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerString:Lcom/hz/string/PowerString;

    div-int/lit8 v1, v4, 0x2

    sub-int/2addr v1, v7

    const/16 v8, 0x14

    invoke-virtual {v0, p1, v1, v3, v8}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 328
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0
.end method

.method private paintPoint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    if-nez v0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 337
    :cond_1
    iget v2, p0, Lcom/hz/core/PowerMsg;->drawX:I

    .line 338
    .local v2, "drawX":I
    iget v3, p0, Lcom/hz/core/PowerMsg;->drawY:I

    .line 340
    .local v3, "drawY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/hz/core/PowerMsg;->startTime:J

    sub-long v6, v0, v4

    .line 342
    .local v6, "aliveTime":J
    const-wide/16 v0, 0xbb8

    div-long v0, v6, v0

    long-to-int v8, v0

    .line 345
    .local v8, "countPage":I
    const/4 v10, 0x0

    .line 346
    .local v10, "index":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v9, v0, :cond_0

    .line 348
    mul-int/lit8 v0, v8, 0x3

    add-int v10, v0, v9

    .line 349
    if-ltz v10, :cond_2

    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v0, v0

    if-lt v10, v0, :cond_3

    .line 346
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    aget-object v11, v0, v10

    .line 355
    .local v11, "ps":Lcom/hz/string/PowerString;
    const/high16 v1, -0x60000000

    .line 356
    invoke-virtual {v11}, Lcom/hz/string/PowerString;->getWidth()I

    move-result v0

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v11}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v5

    move-object v0, p1

    .line 355
    invoke-static/range {v0 .. v5}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 358
    const v0, 0xfada89

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 359
    const/16 v0, 0x14

    invoke-virtual {v11, p1, v2, v3, v0}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 361
    invoke-virtual {v11}, Lcom/hz/string/PowerString;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    goto :goto_1
.end method

.method private paintPrompt(Ljavax/microedition/lcdui/Graphics;)V
    .locals 17
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 280
    :cond_0
    sget v4, Lcom/hz/core/PowerMsg;->PROMPT_START_HEIGHT:I

    .line 281
    .local v4, "drawY":I
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 282
    .local v5, "drawW":I
    sget v2, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v1, v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_2

    const/4 v1, 0x2

    :goto_1
    mul-int v6, v2, v1

    .line 285
    .local v6, "drawH":I
    const/high16 v2, -0x60000000

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/hz/main/GameView;->fillAlphaRect(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 287
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 288
    const v1, 0xffff00

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 290
    const/4 v10, 0x0

    .line 291
    .local v10, "offY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/hz/core/PowerMsg;->startTime:J

    sub-long v7, v1, v13

    .line 293
    .local v7, "aliveTime":J
    int-to-long v1, v10

    const-wide/16 v13, 0xbb8

    div-long v13, v7, v13

    sget v3, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    int-to-long v15, v3

    mul-long/2addr v13, v15

    add-long/2addr v1, v13

    long-to-int v10, v1

    .line 294
    const-wide/16 v1, 0xbb8

    const-wide/16 v13, 0xbb8

    rem-long v13, v7, v13

    sub-long/2addr v1, v13

    const-wide/16 v13, 0x64

    div-long v11, v1, v13

    .line 295
    .local v11, "time":J
    const-wide/16 v1, 0x6

    cmp-long v1, v11, v1

    if-gez v1, :cond_1

    .line 297
    int-to-long v1, v10

    sget v3, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    div-int/lit8 v3, v3, 0x6

    int-to-long v13, v3

    const-wide/16 v15, 0x6

    sub-long/2addr v15, v11

    mul-long/2addr v13, v15

    add-long/2addr v1, v13

    long-to-int v10, v1

    .line 300
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v1, v1

    if-lt v9, v1, :cond_3

    .line 305
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v13, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v13}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    .line 282
    .end local v6    # "drawH":I
    .end local v7    # "aliveTime":J
    .end local v9    # "i":I
    .end local v10    # "offY":I
    .end local v11    # "time":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v1, v1

    goto :goto_1

    .line 301
    .restart local v6    # "drawH":I
    .restart local v7    # "aliveTime":J
    .restart local v9    # "i":I
    .restart local v10    # "offY":I
    .restart local v11    # "time":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    aget-object v1, v1, v9

    div-int/lit8 v2, v5, 0x2

    sub-int v3, v4, v10

    const/16 v13, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3, v13}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    .line 302
    sget v1, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    add-int/2addr v4, v1

    .line 300
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private paintPrompt2(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 246
    iget-object v3, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    if-nez v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sget v3, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v1, v3, -0x6

    .line 253
    .local v1, "drawW":I
    sget v3, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    add-int/lit8 v0, v3, 0x2

    .line 254
    .local v0, "drawH":I
    const/4 v3, 0x3

    iput v3, p0, Lcom/hz/core/PowerMsg;->drawX:I

    .line 257
    const v3, 0xffffff

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 258
    iget v3, p0, Lcom/hz/core/PowerMsg;->drawX:I

    iget v4, p0, Lcom/hz/core/PowerMsg;->drawY:I

    invoke-static {p1, v3, v4, v1, v0}, Lcom/hz/main/GameView;->fillArcRect(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 261
    const v3, 0x1b1b18

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 262
    iget v3, p0, Lcom/hz/core/PowerMsg;->drawX:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/hz/core/PowerMsg;->drawY:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v1, -0x2

    add-int/lit8 v6, v0, -0x2

    invoke-static {p1, v3, v4, v5, v6}, Lcom/hz/main/GameView;->fillArcRect(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 265
    const v3, 0xfada89

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/hz/core/PowerMsg;->startTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 267
    .local v2, "index":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/hz/core/PowerMsg;->powerArray:[Lcom/hz/string/PowerString;

    aget-object v3, v3, v2

    div-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/hz/core/PowerMsg;->drawY:I

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    sget v6, Lcom/hz/common/Utilities;->FONT_HEIGHT_HALF:I

    sub-int/2addr v5, v6

    const/16 v6, 0x11

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/hz/string/PowerString;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    goto :goto_0
.end method

.method private setStatus(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "index"    # I

    .prologue
    .line 78
    iget v0, p0, Lcom/hz/core/PowerMsg;->status:I

    invoke-static {p1, p2, v0}, Lcom/hz/common/Tool;->setBit(ZII)I

    move-result v0

    iput v0, p0, Lcom/hz/core/PowerMsg;->status:I

    .line 79
    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-wide v2, p0, Lcom/hz/core/PowerMsg;->endTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/hz/core/PowerMsg;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v0, v1

    .line 163
    .local v0, "isDestroy":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 165
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/hz/core/PowerMsg;->setStatus(ZI)V

    .line 167
    :cond_0
    return v0

    .line 162
    .end local v0    # "isDestroy":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x1

    .line 174
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hz/core/PowerMsg;->isStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0, v1}, Lcom/hz/core/PowerMsg;->isStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-direct {p0, v1, v1}, Lcom/hz/core/PowerMsg;->setStatus(ZI)V

    .line 181
    invoke-direct {p0}, Lcom/hz/core/PowerMsg;->init()V

    .line 184
    :cond_1
    iget v0, p0, Lcom/hz/core/PowerMsg;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/hz/core/PowerMsg;->paintChat(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/hz/core/PowerMsg;->paintPrompt(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/hz/core/PowerMsg;->paintPrompt2(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/hz/core/PowerMsg;->paintNotice(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/hz/core/PowerMsg;->paintPoint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
