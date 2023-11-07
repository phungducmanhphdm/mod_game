.class public Lcom/hz/main/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# static fields
.field private static final FIRE_RAIN_POINT_COUNT:B = 0x2t

.field private static final FLASH_NONE:B = 0x0t

.field private static final FLASH_RAIN:B = 0x1t

.field private static final FLOWER_HEIGHT:B = 0x6t

.field private static final FLOWER_IMG_NUM:B = 0x3t

.field private static final FLOWER_NUM:I = 0xf

.field private static final MAX_RANGE:I = 0x10

.field private static final RAIN_POINT_COUNT:B = 0x4t

.field private static final RAIN_POINT_ROUND_X:[B

.field private static final RAIN_POINT_ROUND_Y:[B

.field private static final RAIN_SPEED_X:B = -0x2t

.field private static final RAIN_SPEED_Y:B = 0xat

.field private static final RAIN_X_OFFSET:B = 0x2t

.field private static final SAND_COLOR:I = 0x1

.field private static final SAND_SIZE:I = 0x2

.field private static final SAND_SPEED_Y:B = 0xct

.field private static final SAND_TOP_OFFSET_WIDTH:I = 0x1e

.field private static final SNOW_COLUMN:I = 0x4

.field private static final SNOW_NUM:I = 0x28

.field private static final SNOW_ROW:I = 0x4

.field private static final SNOW_SPEED_Y:B = 0x2t

.field private static final SNOW_TOP_OFFSET_HEIGHT:I = 0x1e

.field private static final WEATHER_BLACK_RAIN:B = 0x4t

.field private static final WEATHER_COLOUR_BAR:B = 0x7t

.field private static final WEATHER_FIRE_RAIN:B = 0x3t

.field private static final WEATHER_FLOWER:B = 0x6t

.field private static final WEATHER_INTERVAL:S = 0x5dcs

.field private static final WEATHER_INTERVAL_TITLE:S = 0xfa0s

.field private static final WEATHER_NONE:B = 0x0t

.field private static final WEATHER_RAIN:B = 0x2t

.field private static final WEATHER_SAND_RAIN:B = 0x5t

.field private static final WEATHER_SNOW:B = 0x1t

.field private static final WEATHER_START_INTERVAL:S = 0x12cs

.field private static WeatherType:B

.field private static addWeather:[Lcom/hz/main/Weather;

.field private static endTime:S

.field static flashInterval:S

.field static flashTime:B

.field private static flashType:B

.field static flowerImg:Ljavax/microedition/lcdui/Image;

.field static pieHeight:I

.field static pieWidth:I

.field private static snowCreateIndex:B

.field private static startTime:S

.field private static subWeatherType:B

.field static weatherHeight:I

.field private static weatherVector:Ljava/util/Vector;


# instance fields
.field distance:S

.field px:S

.field py:S

.field rainPointCount:B

.field speedX:B

.field speedY:B

.field targetPy:S

.field type:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 39
    sput-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    .line 40
    sput-byte v0, Lcom/hz/main/Weather;->subWeatherType:B

    .line 326
    sput-byte v0, Lcom/hz/main/Weather;->flashType:B

    .line 327
    sput-byte v0, Lcom/hz/main/Weather;->flashTime:B

    .line 332
    const/4 v0, -0x1

    sput-short v0, Lcom/hz/main/Weather;->flashInterval:S

    .line 376
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hz/main/Weather;->RAIN_POINT_ROUND_X:[B

    .line 379
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hz/main/Weather;->RAIN_POINT_ROUND_Y:[B

    .line 392
    const/4 v0, 0x0

    sput-object v0, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    .line 397
    return-void

    .line 376
    nop

    :array_0
    .array-data 1
        0x10t
        0xat
        0x6t
        0x2t
    .end array-data

    .line 379
    :array_1
    .array-data 1
        0x8t
        0x6t
        0x4t
        0x2t
    .end array-data
.end method

.method protected constructor <init>(BSSBBS)V
    .locals 1
    .param p1, "_type"    # B
    .param p2, "x"    # S
    .param p3, "y"    # S
    .param p4, "_speedX"    # B
    .param p5, "_speedY"    # B
    .param p6, "dis"    # S

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 55
    iput-byte p1, p0, Lcom/hz/main/Weather;->type:B

    .line 56
    iput-short p2, p0, Lcom/hz/main/Weather;->px:S

    .line 57
    iput-short p3, p0, Lcom/hz/main/Weather;->py:S

    .line 58
    iput-short p6, p0, Lcom/hz/main/Weather;->distance:S

    .line 59
    iget-short v0, p0, Lcom/hz/main/Weather;->distance:S

    if-gez v0, :cond_0

    .line 60
    iget-short v0, p0, Lcom/hz/main/Weather;->distance:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/main/Weather;->distance:S

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/hz/main/Weather;->updateTargetPy()V

    .line 63
    iput-byte p4, p0, Lcom/hz/main/Weather;->speedX:B

    .line 64
    iput-byte p5, p0, Lcom/hz/main/Weather;->speedY:B

    .line 65
    return-void
.end method

.method private static createFlower()Lcom/hz/main/Weather;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 521
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    invoke-static {v8, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-short v7, v1

    .line 522
    .local v7, "x":S
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    invoke-static {v8, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-short v6, v1

    .line 523
    .local v6, "y":S
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-byte v4, v1

    .line 524
    .local v4, "speedX":B
    const/4 v5, 0x2

    .line 526
    .local v5, "speedY":B
    new-instance v0, Lcom/hz/main/Weather;

    const/4 v1, 0x6

    sget v2, Lcom/hz/map/GameMap;->offsetX:I

    sub-int v2, v7, v2

    int-to-short v2, v2

    sget v3, Lcom/hz/map/GameMap;->offsetY:I

    sub-int v3, v6, v3

    int-to-short v3, v3

    invoke-direct/range {v0 .. v6}, Lcom/hz/main/Weather;-><init>(BSSBBS)V

    .line 529
    .local v0, "w":Lcom/hz/main/Weather;
    const/4 v1, 0x2

    invoke-static {v8, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 530
    return-object v0
.end method

.method private static createRain(II)Lcom/hz/main/Weather;
    .locals 11
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v10, 0x5

    .line 482
    sget v1, Lcom/hz/main/Weather;->pieWidth:I

    mul-int v7, v1, p1

    .line 483
    .local v7, "startX":I
    sget v1, Lcom/hz/main/Weather;->pieHeight:I

    mul-int/2addr v1, p0

    add-int/lit8 v8, v1, -0x1e

    .line 486
    .local v8, "startY":I
    sget-byte v1, Lcom/hz/main/Weather;->subWeatherType:B

    if-ne v1, v10, :cond_0

    .line 487
    add-int/lit8 v7, v7, 0x1e

    .line 488
    add-int/lit8 v8, v8, 0x1e

    .line 492
    :cond_0
    sget v1, Lcom/hz/main/Weather;->pieWidth:I

    add-int/2addr v1, v7

    invoke-static {v7, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-short v9, v1

    .line 493
    .local v9, "x":S
    sget v1, Lcom/hz/main/Weather;->pieHeight:I

    add-int/2addr v1, v8

    invoke-static {v8, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-short v6, v1

    .line 496
    .local v6, "y":S
    const/4 v4, 0x0

    .line 499
    .local v4, "speedX":B
    sget-byte v1, Lcom/hz/main/Weather;->subWeatherType:B

    if-ne v1, v10, :cond_2

    .line 501
    const/4 v4, 0x3

    .line 505
    :goto_0
    new-instance v0, Lcom/hz/main/Weather;

    const/4 v1, 0x2

    sget v2, Lcom/hz/map/GameMap;->offsetX:I

    sub-int v2, v9, v2

    int-to-short v2, v2

    sget v3, Lcom/hz/map/GameMap;->offsetY:I

    sub-int v3, v6, v3

    int-to-short v3, v3

    invoke-direct/range {v0 .. v6}, Lcom/hz/main/Weather;-><init>(BSSBBS)V

    .line 508
    .local v0, "w":Lcom/hz/main/Weather;
    sget-byte v1, Lcom/hz/main/Weather;->subWeatherType:B

    if-ne v1, v10, :cond_1

    .line 510
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 512
    sget-short v1, Lcom/hz/main/Weather;->endTime:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 513
    iget-byte v1, v0, Lcom/hz/main/Weather;->rainPointCount:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 516
    :cond_1
    return-object v0

    .line 503
    .end local v0    # "w":Lcom/hz/main/Weather;
    :cond_2
    const/16 v1, 0xf

    invoke-static {v5, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v1

    int-to-byte v4, v1

    goto :goto_0
.end method

.method private static createSnow(II)Lcom/hz/main/Weather;
    .locals 10
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    const/4 v1, 0x1

    .line 462
    sget v5, Lcom/hz/main/Weather;->pieWidth:I

    mul-int v7, v5, p1

    .line 463
    .local v7, "startX":I
    sget v5, Lcom/hz/main/Weather;->pieHeight:I

    mul-int/2addr v5, p0

    add-int/lit8 v8, v5, -0x1e

    .line 465
    .local v8, "startY":I
    sget v5, Lcom/hz/main/Weather;->pieWidth:I

    add-int/2addr v5, v7

    invoke-static {v7, v5}, Lcom/hz/common/Tool;->rand(II)I

    move-result v5

    int-to-short v9, v5

    .line 466
    .local v9, "x":S
    sget v5, Lcom/hz/main/Weather;->pieHeight:I

    add-int/2addr v5, v8

    invoke-static {v8, v5}, Lcom/hz/common/Tool;->rand(II)I

    move-result v5

    int-to-short v6, v5

    .line 468
    .local v6, "y":S
    const/4 v5, -0x1

    invoke-static {v5, v1}, Lcom/hz/common/Tool;->rand(II)I

    move-result v5

    int-to-byte v4, v5

    .line 470
    .local v4, "speedX":B
    sget v5, Lcom/hz/map/GameMap;->offsetX:I

    sub-int v5, v9, v5

    int-to-short v2, v5

    .line 471
    .local v2, "setUpX":S
    sget v5, Lcom/hz/map/GameMap;->offsetY:I

    sub-int v5, v6, v5

    int-to-short v3, v5

    .line 472
    .local v3, "setUpY":S
    new-instance v0, Lcom/hz/main/Weather;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/hz/main/Weather;-><init>(BSSBBS)V

    .line 475
    .local v0, "w":Lcom/hz/main/Weather;
    sget-byte v1, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    .line 476
    sget-byte v1, Lcom/hz/main/Weather;->snowCreateIndex:B

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 478
    :cond_0
    return-object v0
.end method

.method private static makeWeather()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 402
    sget-byte v5, Lcom/hz/main/Weather;->WeatherType:B

    packed-switch v5, :pswitch_data_0

    .line 459
    .local v1, "counter":I
    .local v2, "i":I
    .local v4, "weather":Lcom/hz/main/Weather;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 404
    .end local v1    # "counter":I
    .end local v2    # "i":I
    .end local v4    # "weather":Lcom/hz/main/Weather;
    :pswitch_1
    sget-short v5, Lcom/hz/main/Weather;->flashInterval:S

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    sput-short v5, Lcom/hz/main/Weather;->flashInterval:S

    .line 405
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_0

    .line 406
    sget-short v5, Lcom/hz/main/Weather;->flashInterval:S

    if-gez v5, :cond_0

    .line 407
    invoke-static {}, Lcom/hz/main/Weather;->createFlower()Lcom/hz/main/Weather;

    move-result-object v4

    .line 408
    .restart local v4    # "weather":Lcom/hz/main/Weather;
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 409
    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/hz/common/Tool;->rand(II)I

    move-result v5

    int-to-byte v5, v5

    sput-short v5, Lcom/hz/main/Weather;->flashInterval:S

    goto :goto_0

    .line 416
    .end local v4    # "weather":Lcom/hz/main/Weather;
    :pswitch_2
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/16 v6, 0x28

    if-ge v5, v6, :cond_0

    .line 417
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    rsub-int/lit8 v1, v5, 0x28

    .line 419
    .restart local v1    # "counter":I
    const/4 v4, 0x0

    .line 420
    .restart local v4    # "weather":Lcom/hz/main/Weather;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 422
    sget-byte v5, Lcom/hz/main/Weather;->snowCreateIndex:B

    div-int/lit8 v3, v5, 0x4

    .line 423
    .local v3, "row":I
    sget-byte v5, Lcom/hz/main/Weather;->snowCreateIndex:B

    rem-int/lit8 v0, v5, 0x4

    .line 426
    .local v0, "column":I
    sget-byte v5, Lcom/hz/main/Weather;->WeatherType:B

    if-ne v5, v8, :cond_3

    .line 427
    invoke-static {v3, v0}, Lcom/hz/main/Weather;->createRain(II)Lcom/hz/main/Weather;

    move-result-object v4

    .line 434
    :goto_2
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 435
    sget-byte v5, Lcom/hz/main/Weather;->snowCreateIndex:B

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/hz/main/Weather;->snowCreateIndex:B

    .line 436
    sget-byte v5, Lcom/hz/main/Weather;->snowCreateIndex:B

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 437
    sput-byte v7, Lcom/hz/main/Weather;->snowCreateIndex:B

    .line 441
    :cond_1
    if-ne v3, v8, :cond_2

    .line 443
    sget-byte v5, Lcom/hz/main/Weather;->WeatherType:B

    if-ne v5, v8, :cond_4

    .line 444
    invoke-static {v7, v0}, Lcom/hz/main/Weather;->createRain(II)Lcom/hz/main/Weather;

    move-result-object v4

    .line 451
    :goto_3
    sget-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    aget-object v5, v5, v0

    if-nez v5, :cond_2

    .line 452
    sget-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    aput-object v4, v5, v0

    .line 420
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 431
    :cond_3
    invoke-static {v3, v0}, Lcom/hz/main/Weather;->createSnow(II)Lcom/hz/main/Weather;

    move-result-object v4

    goto :goto_2

    .line 448
    :cond_4
    invoke-static {v7, v0}, Lcom/hz/main/Weather;->createSnow(II)Lcom/hz/main/Weather;

    move-result-object v4

    goto :goto_3

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static run(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 608
    sget-byte v5, Lcom/hz/main/Weather;->WeatherType:B

    if-eqz v5, :cond_0

    sget-byte v5, Lcom/hz/main/Weather;->WeatherType:B

    const/4 v6, 0x7

    if-le v5, v6, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    sget-short v5, Lcom/hz/main/Weather;->startTime:S

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    sput-short v5, Lcom/hz/main/Weather;->startTime:S

    .line 613
    sget-short v5, Lcom/hz/main/Weather;->startTime:S

    if-gtz v5, :cond_0

    .line 618
    sget-short v5, Lcom/hz/main/Weather;->endTime:S

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    sput-short v5, Lcom/hz/main/Weather;->endTime:S

    .line 619
    sget-short v5, Lcom/hz/main/Weather;->endTime:S

    if-gez v5, :cond_3

    .line 620
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    if-eqz v5, :cond_2

    .line 621
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 623
    :cond_2
    sput-object v8, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    .line 624
    sput-byte v7, Lcom/hz/main/Weather;->WeatherType:B

    goto :goto_0

    .line 642
    :cond_3
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    if-nez v5, :cond_4

    .line 643
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    sput-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    .line 645
    :cond_4
    sget-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    if-nez v5, :cond_5

    .line 646
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/hz/main/Weather;

    sput-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    .line 650
    :cond_5
    sget-byte v5, Lcom/hz/main/Weather;->flashType:B

    if-eqz v5, :cond_8

    .line 651
    const v0, 0xffffff

    .line 652
    .local v0, "color1":I
    const/4 v1, 0x0

    .line 654
    .local v1, "color2":I
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 655
    const v0, 0xfaf0ab

    .line 656
    const v1, 0xd33b02

    .line 664
    :cond_6
    sget-byte v5, Lcom/hz/main/Weather;->flashTime:B

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7

    .line 665
    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 669
    :goto_1
    sget v5, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sget v6, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    invoke-virtual {p0, v7, v7, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 671
    sget-byte v5, Lcom/hz/main/Weather;->flashTime:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    sput-byte v5, Lcom/hz/main/Weather;->flashTime:B

    .line 672
    sget-byte v5, Lcom/hz/main/Weather;->flashTime:B

    if-gtz v5, :cond_0

    .line 673
    sput-byte v7, Lcom/hz/main/Weather;->flashType:B

    goto :goto_0

    .line 667
    :cond_7
    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_1

    .line 679
    .end local v0    # "color1":I
    .end local v1    # "color2":I
    :cond_8
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_2
    if-gez v2, :cond_9

    .line 689
    const/4 v2, 0x0

    :goto_3
    sget-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    array-length v5, v5

    if-lt v2, v5, :cond_b

    .line 703
    invoke-static {}, Lcom/hz/main/Weather;->makeWeather()V

    goto/16 :goto_0

    .line 680
    :cond_9
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/main/Weather;

    .line 681
    .local v4, "w":Lcom/hz/main/Weather;
    invoke-virtual {v4}, Lcom/hz/main/Weather;->logic()Z

    move-result v3

    .line 683
    .local v3, "isDone":Z
    invoke-virtual {v4, p0}, Lcom/hz/main/Weather;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 684
    if-eqz v3, :cond_a

    .line 685
    sget-object v5, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 679
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 690
    .end local v3    # "isDone":Z
    .end local v4    # "w":Lcom/hz/main/Weather;
    :cond_b
    sget-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    aget-object v4, v5, v2

    .line 691
    .restart local v4    # "w":Lcom/hz/main/Weather;
    if-nez v4, :cond_d

    .line 689
    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 694
    :cond_d
    invoke-virtual {v4}, Lcom/hz/main/Weather;->logic()Z

    move-result v3

    .line 696
    .restart local v3    # "isDone":Z
    invoke-virtual {v4, p0}, Lcom/hz/main/Weather;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 697
    if-eqz v3, :cond_c

    .line 698
    sget-object v5, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    aput-object v8, v5, v2

    goto :goto_4
.end method

.method static setFlash(BI)V
    .locals 1
    .param p0, "_flashType"    # B
    .param p1, "time"    # I

    .prologue
    .line 329
    sput-byte p0, Lcom/hz/main/Weather;->flashType:B

    .line 330
    int-to-byte v0, p1

    sput-byte v0, Lcom/hz/main/Weather;->flashTime:B

    .line 331
    return-void
.end method

.method public static update(B)V
    .locals 6
    .param p0, "_weather"    # B

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 539
    sput-byte p0, Lcom/hz/main/Weather;->WeatherType:B

    .line 542
    sput-object v2, Lcom/hz/main/Weather;->weatherVector:Ljava/util/Vector;

    .line 543
    sput-object v2, Lcom/hz/main/Weather;->addWeather:[Lcom/hz/main/Weather;

    .line 544
    sput-byte v3, Lcom/hz/main/Weather;->subWeatherType:B

    .line 547
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 549
    :cond_0
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    sput-byte v0, Lcom/hz/main/Weather;->subWeatherType:B

    .line 550
    sput-byte v4, Lcom/hz/main/Weather;->WeatherType:B

    .line 558
    :cond_1
    :goto_0
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    if-nez v0, :cond_3

    .line 564
    sput-object v2, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    .line 600
    :goto_1
    return-void

    .line 552
    :cond_2
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    if-ne v0, v5, :cond_1

    .line 553
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    sput-byte v0, Lcom/hz/main/Weather;->subWeatherType:B

    .line 554
    const/4 v0, 0x1

    sput-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    goto :goto_0

    .line 572
    :cond_3
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 573
    sget-object v0, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_4

    .line 574
    const-string v0, "/common/flow.png"

    invoke-static {v0}, Lcom/hz/common/Utilities;->readPNGFile(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    .line 581
    :cond_4
    const/16 v0, 0x12c

    sput-short v0, Lcom/hz/main/Weather;->startTime:S

    .line 582
    const/16 v0, 0x5dc

    sput-short v0, Lcom/hz/main/Weather;->endTime:S

    .line 584
    sget-byte v0, Lcom/hz/main/Weather;->WeatherType:B

    if-ne v0, v4, :cond_5

    .line 585
    sget-short v0, Lcom/hz/main/Weather;->endTime:S

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    sput-short v0, Lcom/hz/main/Weather;->endTime:S

    .line 593
    :cond_5
    sget-byte v0, Lcom/hz/main/Weather;->subWeatherType:B

    if-ne v0, v5, :cond_6

    .line 594
    sput-short v3, Lcom/hz/main/Weather;->startTime:S

    .line 595
    const/16 v0, 0xfa0

    sput-short v0, Lcom/hz/main/Weather;->endTime:S

    .line 597
    :cond_6
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/hz/main/Weather;->weatherHeight:I

    .line 598
    sget v0, Lcom/hz/main/Weather;->weatherHeight:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hz/main/Weather;->pieHeight:I

    .line 599
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hz/main/Weather;->pieWidth:I

    goto :goto_1
.end method


# virtual methods
.method protected draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 27
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/hz/main/Weather;->px:S

    sget v10, Lcom/hz/map/GameMap;->offsetX:I

    add-int v12, v5, v10

    .line 168
    .local v12, "x":I
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/hz/main/Weather;->py:S

    sget v10, Lcom/hz/map/GameMap;->offsetY:I

    add-int v13, v5, v10

    .line 169
    .local v13, "y":I
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/main/Weather;->type:B

    packed-switch v5, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    sget-object v5, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    if-eqz v5, :cond_0

    .line 174
    sget-object v6, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/main/Weather;->rainPointCount:B

    mul-int/lit8 v8, v5, 0x6

    .line 175
    sget-object v5, Lcom/hz/main/Weather;->flowerImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v9

    const/4 v10, 0x6

    .line 177
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/hz/common/Utilities;->getTranslate(B)B

    move-result v11

    .line 178
    const/16 v14, 0x14

    move-object/from16 v5, p1

    .line 174
    invoke-static/range {v5 .. v14}, Lcom/hz/common/Utilities;->drawGameRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    .line 183
    :pswitch_2
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v10, 0x7

    if-ne v5, v10, :cond_1

    .line 184
    const v5, 0xfcffa6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 185
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/main/Weather;->rainPointCount:B

    packed-switch v5, :pswitch_data_1

    .line 196
    :goto_1
    const/4 v5, 0x4

    const/4 v10, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v5, v10}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    .line 187
    :pswitch_3
    const v5, 0x7b6dff

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_1

    .line 190
    :pswitch_4
    const v5, 0xffb2e1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_1

    .line 193
    :pswitch_5
    const v5, 0x8dff48

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_1

    .line 199
    :cond_1
    const v5, 0xfeffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 200
    add-int/lit8 v5, v12, -0x1

    add-int/lit8 v10, v13, -0x1

    const/4 v11, 0x4

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 201
    add-int/lit8 v5, v13, -0x2

    const/4 v10, 0x2

    const/4 v11, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5, v10, v11}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 202
    add-int/lit8 v5, v12, -0x2

    const/4 v10, 0x6

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13, v10, v11}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    .line 207
    :pswitch_6
    move-object/from16 v0, p0

    iget-byte v15, v0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 209
    .local v15, "count":I
    const v5, 0xffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 212
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v10, 0x5

    if-ne v5, v10, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/main/Weather;->rainPointCount:B

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 215
    const v5, 0xfffbac

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 219
    :goto_2
    const/4 v5, 0x2

    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v5, v10}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_0

    .line 217
    :cond_2
    const v5, 0xecb432

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_2

    .line 223
    :cond_3
    add-int/lit8 v16, v12, -0x2

    .line 224
    .local v16, "endX":I
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hz/main/Weather;->speedX:B

    add-int v17, v13, v5

    .line 227
    .local v17, "endY":I
    if-ltz v15, :cond_7

    .line 232
    const/16 v8, 0x12

    .line 233
    .local v8, "roundX":I
    const/16 v9, 0x12

    .line 234
    .local v9, "roundY":I
    sget-object v5, Lcom/hz/main/Weather;->RAIN_POINT_ROUND_X:[B

    array-length v5, v5

    if-ge v15, v5, :cond_4

    .line 235
    sget-object v5, Lcom/hz/main/Weather;->RAIN_POINT_ROUND_X:[B

    aget-byte v8, v5, v15

    .line 236
    sget-object v5, Lcom/hz/main/Weather;->RAIN_POINT_ROUND_Y:[B

    aget-byte v9, v5, v15

    .line 238
    :cond_4
    shr-int/lit8 v21, v8, 0x1

    .line 239
    .local v21, "roundHalfX":I
    shr-int/lit8 v22, v9, 0x1

    .line 241
    .local v22, "roundHalfY":I
    sub-int v6, v16, v21

    .line 242
    .local v6, "drawX":I
    sub-int v7, v17, v22

    .line 245
    .local v7, "drawY":I
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v10, 0x3

    if-ne v5, v10, :cond_5

    .line 246
    const v5, 0xcf5a1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 247
    add-int/lit8 v5, v16, -0x1

    add-int/lit8 v10, v17, -0x2

    const/4 v11, 0x3

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 248
    const v5, 0xf9e591

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 249
    add-int/lit8 v5, v16, 0x3

    add-int/lit8 v10, v17, -0x4

    const/4 v11, 0x3

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_0

    .line 253
    :cond_5
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v10, 0x4

    if-ne v5, v10, :cond_6

    .line 254
    const v5, 0xa2351

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 255
    add-int/lit8 v5, v16, -0x1

    add-int/lit8 v10, v17, -0x2

    const/4 v11, 0x3

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 256
    const v5, 0x497580

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 257
    add-int/lit8 v5, v16, 0x3

    add-int/lit8 v10, v17, -0x4

    const/4 v11, 0x3

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v14}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_0

    .line 260
    :cond_6
    const/4 v10, 0x0

    const/16 v11, 0x168

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawArc(IIIIII)V

    goto/16 :goto_0

    .line 267
    .end local v6    # "drawX":I
    .end local v7    # "drawY":I
    .end local v8    # "roundX":I
    .end local v9    # "roundY":I
    .end local v21    # "roundHalfX":I
    .end local v22    # "roundHalfY":I
    :cond_7
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v10, 0x3

    if-ne v5, v10, :cond_a

    .line 277
    const/16 v25, -0x1

    .line 278
    .local v25, "xdis":I
    sub-int v5, v17, v13

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v26, v5, 0x1

    .line 280
    .local v26, "ydis":I
    move/from16 v23, v12

    .line 281
    .local v23, "startX":I
    move/from16 v24, v13

    .line 282
    .local v24, "startY":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    const/4 v5, 0x3

    move/from16 v0, v20

    if-ge v0, v5, :cond_0

    .line 284
    add-int v18, v23, v25

    .line 285
    .local v18, "ex":I
    add-int v19, v24, v26

    .line 287
    .local v19, "ey":I
    if-nez v20, :cond_8

    .line 288
    const v5, 0xec660e

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 297
    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 298
    add-int/lit8 v5, v23, 0x1

    add-int/lit8 v10, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v10, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 300
    move/from16 v23, v18

    .line 301
    move/from16 v24, v19

    .line 282
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 290
    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_9

    .line 291
    const v5, 0xfaab14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_4

    .line 294
    :cond_9
    const v5, 0xf9e48f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_4

    .line 307
    .end local v18    # "ex":I
    .end local v19    # "ey":I
    .end local v20    # "i":I
    .end local v23    # "startX":I
    .end local v24    # "startY":I
    .end local v25    # "xdis":I
    .end local v26    # "ydis":I
    :cond_a
    sget-byte v5, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v10, 0x4

    if-ne v5, v10, :cond_b

    .line 308
    const v5, 0x16283f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v12, v13, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 311
    const v5, 0x2f61ad

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 312
    add-int/lit8 v5, v12, 0x1

    add-int/lit8 v10, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v5, v13, v10, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_0

    .line 316
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v12, v13, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected logic()Z
    .locals 7

    .prologue
    const/16 v6, -0xa

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "isDone":Z
    iget-byte v4, p0, Lcom/hz/main/Weather;->type:B

    packed-switch v4, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 75
    :pswitch_1
    iget-short v4, p0, Lcom/hz/main/Weather;->px:S

    iget-byte v5, p0, Lcom/hz/main/Weather;->speedX:B

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/hz/main/Weather;->px:S

    .line 76
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    iget-byte v5, p0, Lcom/hz/main/Weather;->speedY:B

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/hz/main/Weather;->py:S

    .line 77
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    iget-short v5, p0, Lcom/hz/main/Weather;->targetPy:S

    if-lt v4, v5, :cond_1

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-short v4, p0, Lcom/hz/main/Weather;->px:S

    sget v5, Lcom/hz/map/GameMap;->offsetX:I

    add-int v1, v4, v5

    .line 81
    .local v1, "ix":I
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    sget v5, Lcom/hz/map/GameMap;->offsetY:I

    add-int v2, v4, v5

    .line 82
    .local v2, "iy":I
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    if-lt v2, v4, :cond_2

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    if-ltz v1, :cond_3

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-lt v1, v4, :cond_0

    .line 86
    :cond_3
    const/4 v0, 0x1

    .line 89
    goto :goto_0

    .line 92
    .end local v1    # "ix":I
    .end local v2    # "iy":I
    :pswitch_2
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    sget v5, Lcom/hz/map/GameMap;->offsetY:I

    add-int v2, v4, v5

    .line 93
    .restart local v2    # "iy":I
    iget-short v4, p0, Lcom/hz/main/Weather;->px:S

    sget v5, Lcom/hz/map/GameMap;->offsetX:I

    add-int v1, v4, v5

    .line 94
    .restart local v1    # "ix":I
    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    if-lt v2, v4, :cond_4

    .line 95
    const/4 v0, 0x1

    .line 96
    goto :goto_0

    .line 100
    :cond_4
    sget-byte v4, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    .line 103
    if-lt v1, v6, :cond_5

    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    iget-short v5, p0, Lcom/hz/main/Weather;->targetPy:S

    if-lt v4, v5, :cond_6

    .line 104
    :cond_5
    const/4 v0, 0x1

    .line 105
    goto :goto_0

    .line 108
    :cond_6
    iget-short v4, p0, Lcom/hz/main/Weather;->px:S

    iget-byte v5, p0, Lcom/hz/main/Weather;->speedX:B

    sub-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/hz/main/Weather;->px:S

    .line 109
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    iget-byte v5, p0, Lcom/hz/main/Weather;->speedY:B

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/hz/main/Weather;->py:S

    .line 120
    iget-byte v4, p0, Lcom/hz/main/Weather;->speedX:B

    const/16 v5, 0x64

    if-ge v4, v5, :cond_7

    .line 121
    iget-byte v4, p0, Lcom/hz/main/Weather;->speedX:B

    add-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/hz/main/Weather;->speedX:B

    .line 126
    :cond_7
    iget-byte v4, p0, Lcom/hz/main/Weather;->speedY:B

    add-int/lit8 v4, v4, -0x2

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/hz/main/Weather;->speedY:B

    .line 127
    iget-byte v4, p0, Lcom/hz/main/Weather;->speedY:B

    if-gtz v4, :cond_0

    .line 128
    const/4 v4, 0x1

    iput-byte v4, p0, Lcom/hz/main/Weather;->speedY:B

    goto :goto_0

    .line 137
    :cond_8
    if-lt v1, v6, :cond_9

    sget v4, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    add-int/lit8 v4, v4, 0xa

    if-lt v1, v4, :cond_a

    .line 138
    :cond_9
    const/4 v0, 0x1

    .line 139
    goto/16 :goto_0

    .line 142
    :cond_a
    iget-byte v4, p0, Lcom/hz/main/Weather;->rainPointCount:B

    if-gez v4, :cond_b

    .line 143
    iget-short v4, p0, Lcom/hz/main/Weather;->px:S

    add-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    iput-short v4, p0, Lcom/hz/main/Weather;->px:S

    .line 144
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    iget-byte v5, p0, Lcom/hz/main/Weather;->speedY:B

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/hz/main/Weather;->py:S

    .line 147
    :cond_b
    iget-short v4, p0, Lcom/hz/main/Weather;->py:S

    iget-short v5, p0, Lcom/hz/main/Weather;->targetPy:S

    if-lt v4, v5, :cond_0

    .line 149
    const/4 v3, 0x4

    .line 150
    .local v3, "maxCount":I
    sget-byte v4, Lcom/hz/main/Weather;->subWeatherType:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    .line 151
    const/4 v3, 0x2

    .line 153
    :cond_c
    iget-byte v4, p0, Lcom/hz/main/Weather;->rainPointCount:B

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 154
    iget-byte v4, p0, Lcom/hz/main/Weather;->rainPointCount:B

    if-lt v4, v3, :cond_0

    .line 155
    const/4 v4, -0x1

    iput-byte v4, p0, Lcom/hz/main/Weather;->rainPointCount:B

    .line 156
    invoke-virtual {p0}, Lcom/hz/main/Weather;->updateTargetPy()V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateTargetPy()V
    .locals 2

    .prologue
    .line 67
    iget-short v0, p0, Lcom/hz/main/Weather;->py:S

    iget-short v1, p0, Lcom/hz/main/Weather;->distance:S

    add-int/2addr v0, v1

    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_HALF_HEIGHT:I

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hz/main/Weather;->targetPy:S

    .line 68
    return-void
.end method
