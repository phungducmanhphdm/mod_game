.class public Lcom/hz/gui/GWidget;
.super Ljava/lang/Object;
.source "GWidget.java"


# static fields
.field public static final DEFAULT_INT_ARRAY:[I

.field public static final GW_VM_BORDER_BOTTOM:I = 0xb

.field public static final GW_VM_BORDER_LEFT:I = 0x8

.field public static final GW_VM_BORDER_RIGHT:I = 0xa

.field public static final GW_VM_BORDER_TOP:I = 0x9

.field public static final GW_VM_DATA_SIZE:I = 0x15

.field public static final GW_VM_EVENT_SETTING:I = 0x14

.field public static final GW_VM_EVENT_TYPE:I = 0x13

.field public static final GW_VM_H:I = 0x5

.field public static final GW_VM_JAVA_GWIDGET:I = 0x10

.field public static final GW_VM_MAX_HEIGHT:I = 0xe

.field public static final GW_VM_MAX_WIDTH:I = 0xc

.field public static final GW_VM_MIN_HEIGHT:I = 0xf

.field public static final GW_VM_MIN_WIDTH:I = 0xd

.field public static final GW_VM_OFFSET_X:I = 0x11

.field public static final GW_VM_OFFSET_Y:I = 0x12

.field public static final GW_VM_SYS_TYPE:I = 0x0

.field public static final GW_VM_TYPE:I = 0x1

.field public static final GW_VM_W:I = 0x4

.field public static final GW_VM_X:I = 0x2

.field public static final GW_VM_XX:I = 0x6

.field public static final GW_VM_Y:I = 0x3

.field public static final GW_VM_YY:I = 0x7

.field private static final MAX_VALUE:I = 0x7fffffff

.field public static final NO:I = 0x0

.field public static final SETTING_CAN_FOCUS:I = 0x80

.field public static final SETTING_CAN_KEY_DOWN:I = 0x200

.field public static final SETTING_CAN_KEY_LEFT:I = 0x400

.field public static final SETTING_CAN_KEY_RIGHT:I = 0x800

.field public static final SETTING_CAN_KEY_UP:I = 0x100

.field public static final SETTING_CAN_MOUSE_CLICKED:I = 0x20

.field public static final SETTING_CAN_MOUSE_DRAGGED:I = 0x40

.field public static final SETTING_CAN_MOUSE_REPEATED:I = 0x1000

.field public static final SETTING_IS_FOCUS:I = 0x1

.field public static final SETTING_IS_OUTVIEW:I = 0x2

.field public static final SETTING_IS_SCALE:I = 0x4

.field public static final SETTING_IS_SHOW:I = 0x8

.field public static final SETTING_NO_NEED_LAYOUT:I = 0x10

.field public static final SHADE_DATA_SIZE:I = 0x6

.field public static final SYS_TYPE_DRAW_BACKGROUND:I = 0x2

.field public static final SYS_TYPE_NORMAL:I = 0x0

.field public static final SYS_TYPE_NO_PAINT_PARENT:I = 0x3

.field public static final SYS_TYPE_NO_PAINT_WORLD:I = 0x1

.field public static final TYPE_GCONTAINER:I = 0x32

.field public static final TYPE_GGAME_BAR:I = 0x7

.field public static final TYPE_GGAME_ICON:I = 0x2

.field public static final TYPE_GICON:I = 0x1

.field public static final TYPE_GIMAGE_NUMBER:I = 0x3

.field public static final TYPE_GLABEL:I = 0x4

.field public static final TYPE_GLINE_PANEL:I = 0x33

.field public static final TYPE_GPIXEL_LABEL:I = 0x5

.field public static final TYPE_GSCROLL_BAR:I = 0x6

.field public static final TYPE_GSPINNER:I = 0x8

.field public static final TYPE_GTEXT_AREA:I = 0x34

.field public static final TYPE_GWIDGET:I = 0x0

.field public static final TYPE_GWINDOW:I = 0x35

.field public static final TYPE_NONE:I = -0x1

.field public static final YES:I = 0x1

.field private static maxKey:I


# instance fields
.field borderLayoutType:I

.field colorTable:[I

.field focusFragmentTable:[I

.field focusShadeColorTable:[I

.field public font:Ljavax/microedition/lcdui/Font;

.field foucsColorTable:[I

.field fragmentTable:[I

.field grid3Data:[I

.field obj:Ljava/lang/Object;

.field outHeight:I

.field parent:Lcom/hz/gui/GContainer;

.field pressX:I

.field pressY:I

.field realHeight:I

.field shadeColorTable:[I

.field protected uiHandler:Lcom/hz/ui/UIHandler;

.field vmData:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    sput v2, Lcom/hz/gui/GWidget;->maxKey:I

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, -0x1

    aput v1, v0, v2

    sput-object v0, Lcom/hz/gui/GWidget;->DEFAULT_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "_data"    # [I

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/hz/gui/GWidget;->vmData:[I

    .line 188
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWidget;->setShow(Z)V

    .line 189
    sget-object v0, Lcom/hz/common/Utilities;->FONT:Ljavax/microedition/lcdui/Font;

    iput-object v0, p0, Lcom/hz/gui/GWidget;->font:Ljavax/microedition/lcdui/Font;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/gui/GWidget;->borderLayoutType:I

    .line 192
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWidget;->setScale(Z)V

    .line 194
    sget-object v0, Lcom/hz/gui/GWidget;->DEFAULT_INT_ARRAY:[I

    iput-object v0, p0, Lcom/hz/gui/GWidget;->colorTable:[I

    .line 195
    sget-object v0, Lcom/hz/gui/GWidget;->DEFAULT_INT_ARRAY:[I

    iput-object v0, p0, Lcom/hz/gui/GWidget;->foucsColorTable:[I

    .line 197
    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->getMaxW()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0, v2}, Lcom/hz/gui/GWidget;->setMaxWidth(I)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->getMaxH()I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Lcom/hz/gui/GWidget;->setMaxHeight(I)V

    .line 205
    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->nextKey()I

    move-result v1

    aput v1, p1, v0

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->setType(I)V

    .line 208
    return-void
.end method


# virtual methods
.method public SetNeedLayout(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 221
    const/16 v1, 0x10

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 222
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAbsX()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 229
    iget-object v3, p0, Lcom/hz/gui/GWidget;->vmData:[I

    aget v2, v3, v4

    .line 230
    .local v2, "xCoord":I
    iget-object v0, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    .local v0, "gcontainer":Lcom/hz/gui/GContainer;
    :goto_0
    if-nez v0, :cond_0

    .line 235
    return v2

    .line 232
    :cond_0
    iget-object v3, v0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v3, v4

    .line 233
    .local v1, "parentXCoord":I
    add-int/2addr v2, v1

    .line 230
    iget-object v0, v0, Lcom/hz/gui/GContainer;->parent:Lcom/hz/gui/GContainer;

    goto :goto_0
.end method

.method public getAbsY()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 244
    iget-object v3, p0, Lcom/hz/gui/GWidget;->vmData:[I

    aget v2, v3, v4

    .line 245
    .local v2, "yCoord":I
    iget-object v0, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    .local v0, "gcontainer":Lcom/hz/gui/GContainer;
    :goto_0
    if-nez v0, :cond_0

    .line 249
    return v2

    .line 246
    :cond_0
    iget-object v3, v0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v3, v4

    .line 247
    .local v1, "parentYCoord":I
    add-int/2addr v2, v1

    .line 245
    iget-object v0, v0, Lcom/hz/gui/GContainer;->parent:Lcom/hz/gui/GContainer;

    goto :goto_0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->getVMDataCopy()[I

    move-result-object v0

    .line 707
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GWidget;

    invoke-direct {v1, v0}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 708
    .local v1, "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 709
    return-object v1
.end method

.method public getColorTable()[I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/hz/gui/GWidget;->colorTable:[I

    return-object v0
.end method

.method public getEventType()I
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    return v0
.end method

.method public getFocusColorTable()[I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/hz/gui/GWidget;->foucsColorTable:[I

    return-object v0
.end method

.method public getFocusFragmentTable()[I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/hz/gui/GWidget;->focusFragmentTable:[I

    return-object v0
.end method

.method public getFocusShadeColorTable()[I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    return-object v0
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/hz/gui/GWidget;->font:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getFragmentTable()[I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/hz/gui/GWidget;->fragmentTable:[I

    return-object v0
.end method

.method public getH()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getIntersect()[I
    .locals 14

    .prologue
    .line 265
    const/4 v10, 0x4

    new-array v8, v10, [I

    .line 266
    .local v8, "ai":[I
    iget-object v10, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    invoke-virtual {v10}, Lcom/hz/gui/GContainer;->getType()I

    move-result v10

    const/16 v11, 0x34

    if-eq v10, v11, :cond_0

    .line 268
    iget-object v10, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v12, 0x11

    aget v11, v11, v12

    add-int v0, v10, v11

    .line 269
    .local v0, "i1":I
    iget-object v10, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v12, 0x12

    aget v11, v11, v12

    add-int v1, v10, v11

    .line 270
    .local v1, "l1":I
    iget-object v10, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v11, 0x4

    aget v2, v10, v11

    .line 271
    .local v2, "i2":I
    iget-object v10, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v11, 0x5

    aget v3, v10, v11

    .line 273
    .local v3, "j2":I
    iget-object v10, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    invoke-virtual {v10}, Lcom/hz/gui/GContainer;->getIntersect()[I

    move-result-object v9

    .line 274
    .local v9, "ai1":[I
    const/4 v10, 0x0

    aget v10, v9, v10

    iget-object v11, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iget-object v11, v11, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    add-int v4, v10, v11

    .line 275
    .local v4, "k2":I
    const/4 v10, 0x1

    aget v10, v9, v10

    iget-object v11, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iget-object v11, v11, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    add-int v5, v10, v11

    .line 276
    .local v5, "l2":I
    const/4 v10, 0x2

    aget v10, v9, v10

    iget-object v11, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iget-object v11, v11, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iget-object v11, v11, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    sub-int v6, v10, v11

    .line 277
    .local v6, "i3":I
    const/4 v10, 0x3

    aget v10, v9, v10

    iget-object v11, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iget-object v11, v11, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x9

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iget-object v11, v11, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0xb

    aget v11, v11, v12

    sub-int v7, v10, v11

    .line 278
    .local v7, "j3":I
    invoke-static/range {v0 .. v7}, Lcom/hz/common/Tool;->rectGetIntersection(IIIIIIII)[I

    move-result-object v8

    .line 286
    .end local v0    # "i1":I
    .end local v1    # "l1":I
    .end local v2    # "i2":I
    .end local v3    # "j2":I
    .end local v4    # "k2":I
    .end local v5    # "l2":I
    .end local v6    # "i3":I
    .end local v7    # "j3":I
    .end local v9    # "ai1":[I
    :goto_0
    return-object v8

    .line 281
    :cond_0
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v12, 0x6

    aget v11, v11, v12

    iget-object v12, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v13, 0x11

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v8, v10

    .line 282
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    iget-object v12, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v13, 0x12

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v8, v10

    .line 283
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    aput v11, v8, v10

    .line 284
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    aput v11, v8, v10

    goto :goto_0
.end method

.method public getJavaID()I
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    return v0
.end method

.method public getMaxH()I
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xe

    aget v0, v0, v1

    return v0
.end method

.method public getMaxW()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    return v0
.end method

.method public getMinH()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xf

    aget v0, v0, v1

    return v0
.end method

.method public getMinW()I
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    return v0
.end method

.method public getNoNeedLayout()Z
    .locals 1

    .prologue
    .line 364
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    return v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/hz/gui/GWidget;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lcom/hz/gui/GContainer;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    return-object v0
.end method

.method public getParentWindow()Lcom/hz/gui/GWindow;
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    instance-of v1, v1, Lcom/hz/gui/GWindow;

    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    check-cast v0, Lcom/hz/gui/GWindow;

    .line 339
    .local v0, "window":Lcom/hz/gui/GWindow;
    :goto_0
    return-object v0

    .line 332
    .end local v0    # "window":Lcom/hz/gui/GWindow;
    :cond_0
    iget-object v1, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 334
    .restart local v0    # "window":Lcom/hz/gui/GWindow;
    goto :goto_0

    .line 336
    .end local v0    # "window":Lcom/hz/gui/GWindow;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "window":Lcom/hz/gui/GWindow;
    goto :goto_0
.end method

.method public getPressX()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/hz/gui/GWidget;->pressX:I

    return v0
.end method

.method public getPressY()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/hz/gui/GWidget;->pressY:I

    return v0
.end method

.method public getShadeColorTable()[I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    return-object v0
.end method

.method public getSystemType()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method getVMDataCopy()[I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    invoke-static {v0}, Lcom/hz/common/Tool;->getCopyData([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getVmData()[I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    return-object v0
.end method

.method public getW()I
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getXX()I
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getYY()I
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public isEnableFocus()Z
    .locals 1

    .prologue
    .line 593
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    return v0
.end method

.method public isGWidgetSetting(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutView()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    return v0
.end method

.method public isScale()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 378
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    return v0
.end method

.method public move(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 502
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    .line 504
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 505
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    .line 506
    return-void
.end method

.method public nextKey()I
    .locals 3

    .prologue
    .line 174
    sget v0, Lcom/hz/gui/GWidget;->maxKey:I

    .line 176
    .local v0, "value":I
    sget v1, Lcom/hz/gui/GWidget;->maxKey:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/hz/gui/GWidget;->maxKey:I

    .line 177
    sget v1, Lcom/hz/gui/GWidget;->maxKey:I

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_0

    .line 178
    const/4 v1, 0x0

    sput v1, Lcom/hz/gui/GWidget;->maxKey:I

    .line 181
    :cond_0
    return v0
.end method

.method public parentNeedScroll()Z
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    .local v0, "gcontainer":Lcom/hz/gui/GContainer;
    :goto_0
    if-nez v0, :cond_0

    .line 520
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 516
    :cond_0
    iget-boolean v1, v0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    if-eqz v1, :cond_1

    .line 517
    const/4 v1, 0x1

    goto :goto_1

    .line 514
    :cond_1
    iget-object v0, v0, Lcom/hz/gui/GContainer;->parent:Lcom/hz/gui/GContainer;

    goto :goto_0
.end method

.method public setBorder(IIII)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 531
    if-ltz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 535
    :cond_0
    if-ltz p3, :cond_1

    .line 536
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x8

    aput p3, v0, v1

    .line 539
    :cond_1
    if-ltz p4, :cond_2

    .line 540
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xa

    aput p4, v0, v1

    .line 543
    :cond_2
    if-ltz p2, :cond_3

    .line 544
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xb

    aput p2, v0, v1

    .line 546
    :cond_3
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 563
    invoke-virtual {p0, p1, p2}, Lcom/hz/gui/GWidget;->setPos(II)V

    .line 569
    instance-of v1, p0, Lcom/hz/gui/GWindow;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 570
    check-cast v0, Lcom/hz/gui/GWindow;

    .line 574
    .local v0, "gwindow":Lcom/hz/gui/GWindow;
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/hz/gui/GWindow;->fullScreen:Z

    if-eqz v1, :cond_2

    .line 576
    add-int v1, p1, p3

    sget v2, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    if-le v1, v2, :cond_0

    .line 578
    sget v1, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    sub-int p3, v1, p1

    .line 587
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v2, 0x4

    aput p3, v1, v2

    .line 588
    iget-object v1, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v2, 0x5

    aput p4, v1, v2

    .line 589
    return-void

    .line 572
    .end local v0    # "gwindow":Lcom/hz/gui/GWindow;
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v0

    .restart local v0    # "gwindow":Lcom/hz/gui/GWindow;
    goto :goto_0

    .line 581
    :cond_2
    sget v1, Lcom/hz/main/GameView;->uiMaxWidth:I

    if-le p3, v1, :cond_0

    .line 582
    sget p3, Lcom/hz/main/GameView;->uiMaxWidth:I

    goto :goto_1
.end method

.method setCloneData(Lcom/hz/gui/GWidget;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/hz/gui/GWidget;->uiHandler:Lcom/hz/ui/UIHandler;

    iput-object v0, p1, Lcom/hz/gui/GWidget;->uiHandler:Lcom/hz/ui/UIHandler;

    .line 715
    iget v0, p0, Lcom/hz/gui/GWidget;->borderLayoutType:I

    iput v0, p1, Lcom/hz/gui/GWidget;->borderLayoutType:I

    .line 716
    iget-object v0, p0, Lcom/hz/gui/GWidget;->font:Ljavax/microedition/lcdui/Font;

    iput-object v0, p1, Lcom/hz/gui/GWidget;->font:Ljavax/microedition/lcdui/Font;

    .line 720
    iget-object v0, p0, Lcom/hz/gui/GWidget;->foucsColorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GWidget;->foucsColorTable:[I

    .line 721
    iget-object v0, p0, Lcom/hz/gui/GWidget;->colorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GWidget;->colorTable:[I

    .line 722
    iget-object v0, p0, Lcom/hz/gui/GWidget;->fragmentTable:[I

    iput-object v0, p1, Lcom/hz/gui/GWidget;->fragmentTable:[I

    .line 723
    iget-object v0, p0, Lcom/hz/gui/GWidget;->focusFragmentTable:[I

    iput-object v0, p1, Lcom/hz/gui/GWidget;->focusFragmentTable:[I

    .line 724
    iget-object v0, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    .line 725
    iget-object v0, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    iput-object v0, p1, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    .line 727
    iget-object v0, p0, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    iput-object v0, p1, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    .line 728
    iget v0, p0, Lcom/hz/gui/GWidget;->outHeight:I

    iput v0, p1, Lcom/hz/gui/GWidget;->outHeight:I

    .line 729
    iget v0, p0, Lcom/hz/gui/GWidget;->realHeight:I

    iput v0, p1, Lcom/hz/gui/GWidget;->realHeight:I

    .line 730
    return-void
.end method

.method public setColorTable([I)V
    .locals 0
    .param p1, "_colorTable"    # [I

    .prologue
    .line 457
    iput-object p1, p0, Lcom/hz/gui/GWidget;->colorTable:[I

    .line 458
    return-void
.end method

.method public setEnableFocus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 603
    const/16 v1, 0x80

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 604
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEventType(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x13

    aput p1, v0, v1

    .line 408
    return-void
.end method

.method public setFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 454
    return-void
.end method

.method public setFocusColorTable([I)V
    .locals 0
    .param p1, "_colorTable"    # [I

    .prologue
    .line 460
    iput-object p1, p0, Lcom/hz/gui/GWidget;->foucsColorTable:[I

    .line 461
    return-void
.end method

.method public setFocusFragmentTable([I)V
    .locals 0
    .param p1, "_colorTable"    # [I

    .prologue
    .line 491
    iput-object p1, p0, Lcom/hz/gui/GWidget;->focusFragmentTable:[I

    .line 492
    return-void
.end method

.method public setFocusShadeColorTable([I)V
    .locals 3
    .param p1, "_colorTable"    # [I

    .prologue
    .line 475
    iput-object p1, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    .line 476
    iget-object v1, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    if-eqz v1, :cond_0

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 485
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 480
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    iget-object v2, p0, Lcom/hz/gui/GWidget;->focusShadeColorTable:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 477
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "_font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/hz/gui/GWidget;->font:Ljavax/microedition/lcdui/Font;

    .line 609
    return-void
.end method

.method public setFragmentTable([I)V
    .locals 0
    .param p1, "_colorTable"    # [I

    .prologue
    .line 488
    iput-object p1, p0, Lcom/hz/gui/GWidget;->fragmentTable:[I

    .line 489
    return-void
.end method

.method public setGWidgetSetting(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "flag"    # Z

    .prologue
    const/16 v3, 0x14

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    aget v1, v0, v3

    or-int/2addr v1, p1

    aput v1, v0, v3

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    aget v1, v0, v3

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_0
.end method

.method public setGrid3Data(IIIIIIII)V
    .locals 2
    .param p1, "startCol"    # I
    .param p2, "useCols"    # I
    .param p3, "startRow"    # I
    .param p4, "useRows"    # I
    .param p5, "borderTop"    # I
    .param p6, "borderBottom"    # I
    .param p7, "borderLeft"    # I
    .param p8, "borderRight"    # I

    .prologue
    .line 617
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    const/4 v1, 0x6

    aput p7, v0, v1

    const/4 v1, 0x7

    aput p8, v0, v1

    iput-object v0, p0, Lcom/hz/gui/GWidget;->grid3Data:[I

    .line 618
    return-void
.end method

.method public setH(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 699
    if-ltz p1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x5

    aput p1, v0, v1

    .line 702
    :cond_0
    return-void
.end method

.method public setKeyValue(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 738
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 739
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 740
    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 741
    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 743
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2
    .param p1, "maxHeight"    # I

    .prologue
    .line 655
    if-ltz p1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 658
    :cond_0
    return-void
.end method

.method public setMaxSize(II)V
    .locals 0
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/hz/gui/GWidget;->setMaxWidth(I)V

    .line 629
    invoke-virtual {p0, p2}, Lcom/hz/gui/GWidget;->setMaxHeight(I)V

    .line 630
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 648
    if-ltz p1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 651
    :cond_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 2
    .param p1, "minHeight"    # I

    .prologue
    .line 641
    if-ltz p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xf

    aput p1, v0, v1

    .line 644
    :cond_0
    return-void
.end method

.method public setMinSize(II)V
    .locals 0
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lcom/hz/gui/GWidget;->setMinWidth(I)V

    .line 623
    invoke-virtual {p0, p2}, Lcom/hz/gui/GWidget;->setMinHeight(I)V

    .line 624
    return-void
.end method

.method public setMinWidth(I)V
    .locals 2
    .param p1, "minWidth"    # I

    .prologue
    .line 634
    if-ltz p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 637
    :cond_0
    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "_obj"    # Ljava/lang/Object;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/hz/gui/GWidget;->obj:Ljava/lang/Object;

    .line 383
    return-void
.end method

.method public setOffsetXY(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x11

    aput p1, v0, v1

    .line 673
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v1, 0x12

    aput p2, v0, v1

    .line 674
    return-void
.end method

.method public setOutView(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 662
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 663
    return-void
.end method

.method public setPos(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 556
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 557
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v2

    aput v2, v0, v1

    .line 558
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v2

    aput v2, v0, v1

    .line 559
    return-void
.end method

.method public setPressXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 667
    iput p1, p0, Lcom/hz/gui/GWidget;->pressX:I

    .line 668
    iput p2, p0, Lcom/hz/gui/GWidget;->pressY:I

    .line 669
    return-void
.end method

.method public setScale(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 678
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 679
    return-void
.end method

.method public setShadeColorTable([I)V
    .locals 3
    .param p1, "_colorTable"    # [I

    .prologue
    .line 463
    iput-object p1, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    .line 464
    iget-object v1, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    if-eqz v1, :cond_0

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 473
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 468
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    iget-object v2, p0, Lcom/hz/gui/GWidget;->shadeColorTable:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 465
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setShow(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 683
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 684
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lcom/hz/gui/GWidget;->setW(I)V

    .line 689
    invoke-virtual {p0, p2}, Lcom/hz/gui/GWidget;->setH(I)V

    .line 690
    return-void
.end method

.method public setSystemType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 294
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 450
    return-void
.end method

.method public setUnOperate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 216
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/hz/gui/GWidget;->setGWidgetSetting(IZ)V

    .line 217
    return-void
.end method

.method public setW(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 693
    if-ltz p1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 696
    :cond_0
    return-void
.end method
