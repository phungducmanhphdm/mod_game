.class public Lcom/hz/main/ZoomHandler;
.super Ljava/lang/Object;
.source "ZoomHandler.java"


# static fields
.field public static SOURCE_HEIGHT:I

.field public static SOURCE_WIDTH:I

.field private static zoomInstance:Lcom/hz/zoom/Zoom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/hz/main/ZoomHandler;->getInstance()Lcom/hz/zoom/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hz/zoom/Zoom;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    return-object v0
.end method

.method private static final getInstance()Lcom/hz/zoom/Zoom;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hz/main/ZoomHandler;->zoomInstance:Lcom/hz/zoom/Zoom;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/hz/zoom/AndroidZoom;

    invoke-direct {v0}, Lcom/hz/zoom/AndroidZoom;-><init>()V

    sput-object v0, Lcom/hz/main/ZoomHandler;->zoomInstance:Lcom/hz/zoom/Zoom;

    .line 32
    :cond_0
    sget-object v0, Lcom/hz/main/ZoomHandler;->zoomInstance:Lcom/hz/zoom/Zoom;

    return-object v0
.end method

.method public static getZoomPointX(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/hz/main/ZoomHandler;->getInstance()Lcom/hz/zoom/Zoom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hz/zoom/Zoom;->getZoomPointX(I)I

    move-result v0

    return v0
.end method

.method public static getZoomPointY(I)I
    .locals 1
    .param p0, "y"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/hz/main/ZoomHandler;->getInstance()Lcom/hz/zoom/Zoom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hz/zoom/Zoom;->getZoomPointY(I)I

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sput v0, Lcom/hz/main/ZoomHandler;->SOURCE_WIDTH:I

    .line 39
    sget v0, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    sput v0, Lcom/hz/main/ZoomHandler;->SOURCE_HEIGHT:I

    .line 41
    invoke-static {}, Lcom/hz/main/ZoomHandler;->getInstance()Lcom/hz/zoom/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hz/zoom/Zoom;->init()V

    .line 42
    return-void
.end method

.method public static paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 45
    invoke-static {}, Lcom/hz/main/ZoomHandler;->getInstance()Lcom/hz/zoom/Zoom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hz/zoom/Zoom;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 46
    return-void
.end method
