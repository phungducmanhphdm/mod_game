.class public Lcom/hz/zoom/AndroidZoom;
.super Lcom/hz/zoom/Zoom;
.source "AndroidZoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/hz/zoom/Zoom;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/hz/zoom/Zoom;->init()V

    .line 14
    iget v0, p0, Lcom/hz/zoom/AndroidZoom;->gameWidth:I

    iget v1, p0, Lcom/hz/zoom/AndroidZoom;->gameHeight:I

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/zoom/AndroidZoom;->buffer:Ljavax/microedition/lcdui/Image;

    .line 15
    iget-object v0, p0, Lcom/hz/zoom/AndroidZoom;->buffer:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/hz/zoom/AndroidZoom;->bufferGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 16
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hz/zoom/AndroidZoom;->buffer:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/hz/zoom/AndroidZoom;->zoomWidth:I

    iget v2, p0, Lcom/hz/zoom/AndroidZoom;->zoomHeight:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/lori/common/Tool;->drawZoomImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZ)V

    .line 27
    return-void
.end method
