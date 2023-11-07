.class public abstract Ljavax/microedition/lcdui/Canvas;
.super Ljavax/microedition/lcdui/Displayable;
.source "Canvas.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Canvas$CanvasView;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x6

.field public static final FIRE:I = 0x8

.field public static final GAME_A:I = 0x9

.field public static final GAME_B:I = 0xa

.field public static final GAME_C:I = 0xb

.field public static final GAME_D:I = 0xc

.field public static final KEY_NUM0:I = 0x30

.field public static final KEY_NUM1:I = 0x31

.field public static final KEY_NUM2:I = 0x32

.field public static final KEY_NUM3:I = 0x33

.field public static final KEY_NUM4:I = 0x34

.field public static final KEY_NUM5:I = 0x35

.field public static final KEY_NUM6:I = 0x36

.field public static final KEY_NUM7:I = 0x37

.field public static final KEY_NUM8:I = 0x38

.field public static final KEY_NUM9:I = 0x39

.field public static final KEY_POUND:I = 0x23

.field public static final KEY_STAR:I = 0x2a

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x5

.field public static final RightSoftKey:I = 0xf9

.field public static final UP:I = 0x1

.field private static codes:Ljava/util/Map;

.field private static gameActionFromKeyCode:Ljava/util/Map;

.field private static isSurfaceDestroy:Z

.field private static keyCodeFromGameAction:Ljava/util/Map;


# instance fields
.field private canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

.field private graphics:Ljavax/microedition/lcdui/Graphics;

.field private holder:Landroid/view/SurfaceHolder;

.field private view:Landroid/widget/AbsoluteLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Canvas;->codes:Ljava/util/Map;

    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Canvas;->gameActionFromKeyCode:Ljava/util/Map;

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Canvas;->keyCodeFromGameAction:Ljava/util/Map;

    .line 433
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/microedition/lcdui/Canvas;->isSurfaceDestroy:Z

    .line 438
    const/16 v0, 0x17

    invoke-static {v0, v2, v2}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 439
    const/16 v0, 0x13

    invoke-static {v0, v1, v1}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 440
    const/16 v0, 0x14

    invoke-static {v0, v5, v5}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 441
    const/16 v0, 0x15

    invoke-static {v0, v3, v3}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 442
    const/16 v0, 0x16

    invoke-static {v0, v4, v4}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 444
    const/4 v0, 0x7

    const/16 v1, 0x30

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 445
    const/16 v0, 0x31

    const/16 v1, 0x9

    invoke-static {v2, v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 446
    const/16 v0, 0x9

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 448
    const/16 v0, 0xa

    const/16 v1, 0x33

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 450
    const/16 v0, 0xb

    const/16 v1, 0x34

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 451
    const/16 v0, 0xc

    const/16 v1, 0x35

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 452
    const/16 v0, 0xd

    const/16 v1, 0x36

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 453
    const/16 v0, 0xe

    const/16 v1, 0x37

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 454
    const/16 v0, 0xf

    const/16 v1, 0x38

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 455
    const/16 v0, 0x10

    const/16 v1, 0x39

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Canvas;->code(III)V

    .line 456
    const/16 v0, 0x11

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 457
    const/16 v0, 0x12

    const/16 v1, 0x23

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 458
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 459
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 433
    sput-boolean p0, Ljavax/microedition/lcdui/Canvas;->isSurfaceDestroy:Z

    return-void
.end method

.method private static code(II)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 120
    sget-object v2, Ljavax/microedition/lcdui/Canvas;->codes:Ljava/util/Map;

    .line 121
    .local v2, "map":Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 122
    .local v0, "integer":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 123
    .local v1, "integer1":Ljava/lang/Integer;
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private static code(III)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "k"    # I

    .prologue
    .line 128
    invoke-static {p0, p1}, Ljavax/microedition/lcdui/Canvas;->code(II)V

    .line 130
    sget-object v4, Ljavax/microedition/lcdui/Canvas;->keyCodeFromGameAction:Ljava/util/Map;

    .line 131
    .local v4, "map":Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 132
    .local v0, "integer":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 133
    .local v1, "integer1":Ljava/lang/Integer;
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v5, Ljavax/microedition/lcdui/Canvas;->gameActionFromKeyCode:Ljava/util/Map;

    .line 136
    .local v5, "map1":Ljava/util/Map;
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 137
    .local v2, "integer2":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 138
    .local v3, "integer3":Ljava/lang/Integer;
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method


# virtual methods
.method public disposeDisplayable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 144
    iput-object v1, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    .line 145
    return-void
.end method

.method public getCanvasView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    return-object v0
.end method

.method public getGameAction(I)I
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 154
    sget-object v1, Ljavax/microedition/lcdui/Canvas;->keyCodeFromGameAction:Ljava/util/Map;

    .line 155
    .local v1, "map":Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 157
    .local v0, "integer":Ljava/lang/Integer;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 159
    const/4 v3, 0x0

    .line 161
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public getKeyCode(I)I
    .locals 4
    .param p1, "gameAction"    # I

    .prologue
    .line 166
    sget-object v1, Ljavax/microedition/lcdui/Canvas;->gameActionFromKeyCode:Ljava/util/Map;

    .line 167
    .local v1, "map":Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 169
    .local v0, "integer":Ljava/lang/Integer;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 171
    const/4 v3, 0x0

    .line 173
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public getKeyName(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    .local v1, "stringbuilder":Ljava/lang/StringBuilder;
    int-to-char v0, p1

    .line 180
    .local v0, "c":C
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->getView()Landroid/widget/AbsoluteLayout;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/AbsoluteLayout;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->view:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method public hasPointerEvents()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method protected hideNotify()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 14
    .param p1, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    const/4 v13, -0x1

    .line 205
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Canvas.initDisplayable!!!!!!!!!!!!!!"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    const/4 v5, 0x1

    .line 207
    .local v5, "flag":Z
    const/4 v6, 0x0

    .line 208
    .local v6, "i":I
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    if-nez v11, :cond_0

    .line 210
    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 211
    .local v2, "activity":Landroid/app/Activity;
    new-instance v3, Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-direct {v3, p0, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;-><init>(Ljavax/microedition/lcdui/Canvas;Landroid/content/Context;)V

    .line 212
    .local v3, "canvasview":Ljavax/microedition/lcdui/Canvas$CanvasView;
    iput-object v3, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    .line 213
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v11}, Ljavax/microedition/lcdui/Canvas$CanvasView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    .line 214
    .local v9, "surfaceholder":Landroid/view/SurfaceHolder;
    iput-object v9, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    .line 217
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    iget-object v12, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-interface {v11, v12}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 219
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    const/16 v12, 0x2710

    invoke-virtual {v11, v12}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setId(I)V

    .line 221
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "canvasview":Ljavax/microedition/lcdui/Canvas$CanvasView;
    .end local v9    # "surfaceholder":Landroid/view/SurfaceHolder;
    :cond_0
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v11, v5}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setFocusable(Z)V

    .line 222
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v11, v5}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setFocusableInTouchMode(Z)V

    .line 223
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v11}, Ljavax/microedition/lcdui/Canvas$CanvasView;->requestFocus()Z

    .line 224
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v11, p0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 225
    iget-object v11, p0, Ljavax/microedition/lcdui/Canvas;->view:Landroid/widget/AbsoluteLayout;

    if-nez v11, :cond_1

    .line 227
    sget-object v10, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 228
    .local v10, "toolkit":Lcom/lori/android/lcdui/Toolkit;
    sget-object v11, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    const-string v12, "layout.absolutelayout"

    invoke-interface {v11, v12}, Lcom/lori/android/lcdui/Toolkit;->getResourceId(Ljava/lang/String;)I

    move-result v7

    .line 229
    .local v7, "j":I
    invoke-interface {v10, v7}, Lcom/lori/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 230
    .local v0, "absolutelayout":Landroid/widget/AbsoluteLayout;
    iput-object v0, p0, Ljavax/microedition/lcdui/Canvas;->view:Landroid/widget/AbsoluteLayout;

    .line 232
    new-instance v8, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v8, v13, v13, v6, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 236
    .local v8, "layoutparams":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->view:Landroid/widget/AbsoluteLayout;

    .line 237
    .local v1, "absolutelayout1":Landroid/widget/AbsoluteLayout;
    iget-object v4, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    .line 238
    .local v4, "canvasview1":Ljavax/microedition/lcdui/Canvas$CanvasView;
    invoke-virtual {v1, v4, v8}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .end local v0    # "absolutelayout":Landroid/widget/AbsoluteLayout;
    .end local v1    # "absolutelayout1":Landroid/widget/AbsoluteLayout;
    .end local v4    # "canvasview1":Ljavax/microedition/lcdui/Canvas$CanvasView;
    .end local v7    # "j":I
    .end local v8    # "layoutparams":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v10    # "toolkit":Lcom/lori/android/lcdui/Toolkit;
    :cond_1
    return-void
.end method

.method protected keyPressed(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 244
    return-void
.end method

.method protected keyReleased(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 248
    return-void
.end method

.method protected keyRepeated(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyevent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    const/4 v2, 0x1

    .line 257
    .local v2, "j":I
    iget-object v8, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    if-eq p1, v8, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v6

    .line 261
    :cond_1
    sget-object v4, Ljavax/microedition/lcdui/Canvas;->codes:Ljava/util/Map;

    .line 262
    .local v4, "map":Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 263
    .local v0, "integer":Ljava/lang/Integer;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 264
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    move-object v1, v5

    .line 268
    check-cast v1, Ljava/lang/Integer;

    .line 271
    .local v1, "integer1":Ljava/lang/Integer;
    const/4 v8, 0x4

    if-eq p2, v8, :cond_0

    .line 274
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 275
    .local v3, "l":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    .line 278
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 279
    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    :goto_1
    move v6, v7

    .line 285
    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Canvas;->keyRepeated(I)V

    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 289
    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    :cond_4
    move v6, v7

    .line 291
    goto :goto_0
.end method

.method protected abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method protected pointerDragged(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 299
    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 303
    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 307
    return-void
.end method

.method public repaint()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 311
    sget-boolean v5, Lcom/lori/app/PipActivity;->isActive:Z

    if-nez v5, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    sget-boolean v5, Ljavax/microedition/lcdui/Canvas;->isSurfaceDestroy:Z

    if-nez v5, :cond_0

    .line 325
    iget-object v4, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    .line 326
    .local v4, "surfaceholder":Landroid/view/SurfaceHolder;
    if-nez v4, :cond_2

    .line 327
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "surfaceholder is null !!!!!!!!!!!!!!!!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v4, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    .line 331
    invoke-interface {v4, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 332
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    .line 339
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    if-nez v2, :cond_3

    .line 340
    new-instance v2, Ljavax/microedition/lcdui/Graphics;

    .end local v2    # "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v5, 0x0

    invoke-direct {v2, v0, v5}, Ljavax/microedition/lcdui/Graphics;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 341
    .restart local v2    # "g":Ljavax/microedition/lcdui/Graphics;
    iput-object v2, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    .line 346
    :goto_1
    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    .line 347
    .local v3, "g1":Ljavax/microedition/lcdui/Graphics;
    invoke-virtual {p0, v3}, Ljavax/microedition/lcdui/Canvas;->paint(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    iget-object v5, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 343
    .end local v3    # "g1":Ljavax/microedition/lcdui/Graphics;
    :cond_3
    :try_start_1
    iput-object v0, v2, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 352
    .end local v2    # "g":Ljavax/microedition/lcdui/Graphics;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    iget-object v5, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 355
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 356
    if-eqz v0, :cond_4

    .line 357
    iget-object v6, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 358
    :cond_4
    throw v5
.end method

.method public repaint(IIII)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .prologue
    .line 386
    return-void
.end method

.method public final serviceRepaints()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 394
    return-void
.end method

.method public sizeChanged()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
