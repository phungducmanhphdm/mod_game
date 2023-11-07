.class public Lcom/hz/zoom/Zoom;
.super Ljava/lang/Object;
.source "Zoom.java"


# static fields
.field private static final HEIGHT:S = 0x1e0s

.field private static final WIDTH:S = 0x140s


# instance fields
.field protected buffer:Ljavax/microedition/lcdui/Image;

.field protected bufferGraphics:Ljavax/microedition/lcdui/Graphics;

.field protected gameHeight:I

.field protected gameWidth:I

.field protected zoomHeight:I

.field protected zoomWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hz/zoom/Zoom;->bufferGraphics:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method public getZoomPointX(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 85
    iget v1, p0, Lcom/hz/zoom/Zoom;->zoomWidth:I

    if-gtz v1, :cond_0

    .line 89
    .end local p1    # "x":I
    :goto_0
    return p1

    .line 88
    .restart local p1    # "x":I
    :cond_0
    iget v1, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/hz/zoom/Zoom;->zoomWidth:I

    div-int v0, v1, v2

    .local v0, "result":I
    move p1, v0

    .line 89
    goto :goto_0
.end method

.method public getZoomPointY(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 93
    iget v1, p0, Lcom/hz/zoom/Zoom;->zoomHeight:I

    if-gtz v1, :cond_0

    .line 97
    .end local p1    # "y":I
    :goto_0
    return p1

    .line 96
    .restart local p1    # "y":I
    :cond_0
    iget v1, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/hz/zoom/Zoom;->zoomHeight:I

    div-int v0, v1, v2

    .local v0, "result":I
    move p1, v0

    .line 97
    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    const/16 v3, 0x140

    const/16 v2, 0x1e0

    .line 48
    sget v0, Lcom/hz/main/ZoomHandler;->SOURCE_WIDTH:I

    iput v0, p0, Lcom/hz/zoom/Zoom;->zoomWidth:I

    .line 49
    sget v0, Lcom/hz/main/ZoomHandler;->SOURCE_HEIGHT:I

    iput v0, p0, Lcom/hz/zoom/Zoom;->zoomHeight:I

    .line 52
    iget v0, p0, Lcom/hz/zoom/Zoom;->zoomWidth:I

    iget v1, p0, Lcom/hz/zoom/Zoom;->zoomHeight:I

    if-le v0, v1, :cond_1

    .line 53
    iput v3, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    .line 54
    iget v0, p0, Lcom/hz/zoom/Zoom;->zoomWidth:I

    iget v1, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/hz/zoom/Zoom;->zoomHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    .line 55
    iget v0, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    if-ge v0, v2, :cond_0

    .line 56
    iput v2, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    .line 68
    :cond_0
    :goto_0
    iget v0, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    sput v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    .line 69
    iget v0, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    sput v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    .line 74
    return-void

    .line 61
    :cond_1
    iput v3, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    .line 62
    iget v0, p0, Lcom/hz/zoom/Zoom;->zoomHeight:I

    iget v1, p0, Lcom/hz/zoom/Zoom;->gameWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/hz/zoom/Zoom;->zoomWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    .line 63
    iget v0, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    if-ge v0, v2, :cond_0

    .line 64
    iput v2, p0, Lcom/hz/zoom/Zoom;->gameHeight:I

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 82
    return-void
.end method
