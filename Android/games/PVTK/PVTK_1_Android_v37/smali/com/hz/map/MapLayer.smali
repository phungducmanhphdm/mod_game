.class public abstract Lcom/hz/map/MapLayer;
.super Ljava/lang/Object;
.source "MapLayer.java"


# static fields
.field public static final LAYER_ANIM:B = 0x5t

.field public static final LAYER_BLOCK:B = 0x1t

.field public static final LAYER_PIXEL:B = 0x3t

.field public static final LAYER_PLAYER:B = 0x4t

.field public static final LAYER_TILE:B = 0x2t


# instance fields
.field public map:Lcom/hz/map/GameMap;

.field public type:I


# direct methods
.method public constructor <init>(ILcom/hz/map/GameMap;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "map"    # Lcom/hz/map/GameMap;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/map/MapLayer;->type:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hz/map/MapLayer;->map:Lcom/hz/map/GameMap;

    .line 23
    iput p1, p0, Lcom/hz/map/MapLayer;->type:I

    .line 24
    iput-object p2, p0, Lcom/hz/map/MapLayer;->map:Lcom/hz/map/GameMap;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract draw(Ljavax/microedition/lcdui/Graphics;IIIIZ)V
.end method

.method public abstract drawSmallMap(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract fromBytes(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
