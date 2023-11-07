.class public Lcom/hz/ui/XmlParse;
.super Ljava/lang/Object;
.source "XmlParse.java"


# static fields
.field public static final ATTR_NONE:B = -0x1t

.field public static final ATTR_SET_ADDLIB:B = 0x13t

.field public static final ATTR_SET_ADD_SCROLLBAR:B = 0x1dt

.field public static final ATTR_SET_BACK:B = 0xat

.field public static final ATTR_SET_BACKGROUND_GAMEICON:B = 0x15t

.field public static final ATTR_SET_BACKGROUND_LABEL:B = 0x10t

.field public static final ATTR_SET_BACK_LABEL:B = 0xdt

.field public static final ATTR_SET_BACK_TEXTAREA:B = 0xet

.field public static final ATTR_SET_BGCOLOR:B = 0x18t

.field public static final ATTR_SET_BORDER:B = 0x0t

.field public static final ATTR_SET_BORDERCOLOR:B = 0x17t

.field public static final ATTR_SET_BOUNDS:B = 0x1t

.field public static final ATTR_SET_COLORTABLE:B = 0x2at

.field public static final ATTR_SET_DATA_GAMEICON:B = 0x16t

.field public static final ATTR_SET_DATA_ICON:B = 0xft

.field public static final ATTR_SET_DATA_LABEL:B = 0xct

.field public static final ATTR_SET_DATA_LINEPANEL:B = 0xbt

.field public static final ATTR_SET_DATA_SPINNER:B = 0x2dt

.field public static final ATTR_SET_DATA_TEXTAREA:B = 0x1bt

.field public static final ATTR_SET_DRAW_VIEW_IMAGE:B = 0x30t

.field public static final ATTR_SET_FGCOLOR:B = 0x19t

.field public static final ATTR_SET_FOCUSCOLORTABLE:B = 0x3t

.field public static final ATTR_SET_FOCUSFRAGMENTTABLE:B = 0x2ct

.field public static final ATTR_SET_FOCUS_PIXEL_COLOR_TABLE:B = 0x27t

.field public static final ATTR_SET_FOCUS_SHADE_COLOR_TABLE:B = 0x25t

.field public static final ATTR_SET_FONT:B = 0x11t

.field public static final ATTR_SET_FRAGMENTTABLE:B = 0x2bt

.field public static final ATTR_SET_GAMEBAR_TYPE:B = 0x2et

.field public static final ATTR_SET_ICON_NUM_DATA:B = 0x1ft

.field public static final ATTR_SET_IMGNUMBER_DATA:B = 0x28t

.field public static final ATTR_SET_IMGNUMBER_STRING:B = 0x29t

.field public static final ATTR_SET_LABEL_STATUS:B = 0x2ft

.field public static final ATTR_SET_LAYOUTMODE:B = 0x2t

.field public static final ATTR_SET_LEFT_RIGHT_BG_COLOR_DISABLE:B = 0x21t

.field public static final ATTR_SET_LINECOLOR:B = 0x1ct

.field public static final ATTR_SET_LINECOLORTABLE:B = 0x12t

.field public static final ATTR_SET_LINE_SPACE:B = 0x22t

.field public static final ATTR_SET_MAXSIZE:B = 0x7t

.field public static final ATTR_SET_MINSIZE:B = 0x6t

.field public static final ATTR_SET_NONEEDLAYOUT:B = 0x4t

.field public static final ATTR_SET_OFFSETXY:B = 0x8t

.field public static final ATTR_SET_PIXEL_COLOR_TABLE:B = 0x26t

.field public static final ATTR_SET_POS:B = 0x5t

.field public static final ATTR_SET_SELECT_BORDERCOLOR:B = 0x23t

.field public static final ATTR_SET_SHADE_COLOR_TABLE:B = 0x24t

.field public static final ATTR_SET_SIZE:B = 0x9t

.field public static final ATTR_SET_UNDERLINECOLOR:B = 0x20t

.field public static final ATTR_SET_VALUE:B = 0x1at

.field public static final ATTR_SET_WINDOW_CHILD_FOUCS:B = 0x1et

.field public static final BOOLEAN:B = 0x5t

.field public static final BYTE:B = 0x1t

.field public static final INT:B = 0x3t

.field public static final INT_ARRAY:B = 0x4t

.field public static final NONE:B = 0x0t

.field public static final SHORT:B = 0x2t

.field public static final STRING:B = 0x6t

.field public static final STRING_ARRAY:B = 0x7t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkInt(I)I
    .locals 9
    .param p0, "intValue"    # I

    .prologue
    .line 111
    move v2, p0

    .line 116
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit16 v1, v8, 0x3e8

    .line 118
    .local v1, "parseValue":I
    if-nez v1, :cond_0

    move v3, v2

    .line 147
    .end local v2    # "value":I
    .local v3, "value":I
    :goto_0
    return v3

    .line 122
    .end local v3    # "value":I
    .restart local v2    # "value":I
    :cond_0
    rem-int/lit16 v2, v2, 0x3e8

    .line 124
    div-int/lit16 v0, v1, 0x2710

    .line 125
    .local v0, "fontHeightNum":I
    rem-int/lit16 v1, v1, 0x2710

    .line 127
    div-int/lit16 v5, v1, 0x3e8

    .line 128
    .local v5, "xZae":I
    rem-int/lit16 v1, v1, 0x3e8

    .line 130
    div-int/lit8 v4, v1, 0x64

    .line 131
    .local v4, "xNen":I
    rem-int/lit8 v1, v1, 0x64

    .line 133
    div-int/lit8 v7, v1, 0xa

    .line 134
    .local v7, "yZae":I
    rem-int/lit8 v6, v1, 0xa

    .line 135
    .local v6, "yNen":I
    if-lez v0, :cond_1

    .line 136
    sget v8, Lcom/hz/common/Utilities;->FONT_HEIGHT:I

    mul-int/2addr v8, v0

    add-int/2addr v2, v8

    .line 139
    :cond_1
    if-lez v5, :cond_2

    if-lez v4, :cond_2

    .line 140
    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_WIDTH:I

    mul-int/2addr v8, v5

    div-int/2addr v8, v4

    add-int/2addr v2, v8

    .line 142
    :cond_2
    if-lez v7, :cond_3

    if-lez v6, :cond_3

    .line 143
    sget v8, Lcom/hz/main/GameCanvas;->SCREEN_HEIGHT:I

    mul-int/2addr v8, v7

    div-int/2addr v8, v6

    add-int/2addr v2, v8

    :cond_3
    move v3, v2

    .line 147
    .end local v2    # "value":I
    .restart local v3    # "value":I
    goto :goto_0
.end method

.method private static final fromGWidget(Lcom/hz/ui/UIHandler;I[ILjava/io/DataInputStream;)Lcom/hz/gui/GWidget;
    .locals 3
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "type"    # I
    .param p2, "vmData"    # [I
    .param p3, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, "widget":Lcom/hz/gui/GWidget;
    sparse-switch p1, :sswitch_data_0

    .line 600
    :goto_0
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 602
    .local v0, "attrNum":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_0

    .line 605
    return-object v2

    .line 558
    .end local v0    # "attrNum":B
    .end local v1    # "i":I
    :sswitch_0
    new-instance v2, Lcom/hz/gui/GIcon;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GIcon;-><init>([I)V

    .line 559
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 561
    :sswitch_1
    new-instance v2, Lcom/hz/gui/GGameIcon;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GGameIcon;-><init>([I)V

    .line 562
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 564
    :sswitch_2
    new-instance v2, Lcom/hz/gui/GImageNumer;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GImageNumer;-><init>([I)V

    .line 565
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 567
    :sswitch_3
    new-instance v2, Lcom/hz/gui/GLabel;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GLabel;-><init>([I)V

    .line 568
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 570
    :sswitch_4
    new-instance v2, Lcom/hz/gui/GPixelLabel;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GPixelLabel;-><init>([I)V

    .line 571
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 573
    :sswitch_5
    new-instance v2, Lcom/hz/gui/GScrollBar;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GScrollBar;-><init>([I)V

    .line 574
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 576
    :sswitch_6
    new-instance v2, Lcom/hz/gui/GGameBar;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GGameBar;-><init>([I)V

    .line 577
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 579
    :sswitch_7
    new-instance v2, Lcom/hz/gui/GSpinner;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GSpinner;-><init>([I)V

    .line 580
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 582
    :sswitch_8
    new-instance v2, Lcom/hz/gui/GLinePanel;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GLinePanel;-><init>([I)V

    .line 583
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 585
    :sswitch_9
    new-instance v2, Lcom/hz/gui/GContainer;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GContainer;-><init>([I)V

    .line 586
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 588
    :sswitch_a
    new-instance v2, Lcom/hz/gui/GTextArea;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GTextArea;-><init>([I)V

    .line 589
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 591
    :sswitch_b
    new-instance v2, Lcom/hz/gui/GWindow;

    .end local v2    # "widget":Lcom/hz/gui/GWidget;
    invoke-direct {v2, p2}, Lcom/hz/gui/GWindow;-><init>([I)V

    .line 592
    .restart local v2    # "widget":Lcom/hz/gui/GWidget;
    goto :goto_0

    .line 603
    .restart local v0    # "attrNum":B
    .restart local v1    # "i":I
    :cond_0
    invoke-static {p0, v2, p3}, Lcom/hz/ui/XmlParse;->parseMethod(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Ljava/io/DataInputStream;)V

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x32 -> :sswitch_9
        0x33 -> :sswitch_8
        0x34 -> :sswitch_a
        0x35 -> :sswitch_b
    .end sparse-switch
.end method

.method public static parseGWidgetLib(Lcom/hz/ui/UIHandler;Ljava/io/DataInputStream;)Ljava/util/Vector;
    .locals 4
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 612
    .local v2, "v":Ljava/util/Vector;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 613
    .local v1, "libSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 623
    return-object v2

    .line 615
    :cond_0
    invoke-static {p0, p1}, Lcom/hz/ui/XmlParse;->parseUI(Lcom/hz/ui/UIHandler;Ljava/io/DataInputStream;)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 616
    .local v3, "widget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final parseMethod(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;Ljava/io/DataInputStream;)V
    .locals 20
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "dis"    # Ljava/io/DataInputStream;

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 550
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    .line 188
    .local v13, "attrType":B
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 192
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 193
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 194
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 190
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GWidget;->setBorder(IIII)V

    goto :goto_0

    .line 544
    .end local v13    # "attrType":B
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 199
    .restart local v13    # "attrType":B
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v3

    .line 200
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v4

    .line 201
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v6

    .line 202
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v7

    .line 198
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    goto :goto_0

    .line 207
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v3

    .line 208
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v4

    .line 206
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GWidget;->setPos(II)V

    goto :goto_0

    .line 212
    :pswitch_4
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->setFocusColorTable([I)V

    goto :goto_0

    .line 215
    :pswitch_5
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->setColorTable([I)V

    goto :goto_0

    .line 219
    :pswitch_6
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;Z)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->setFocusFragmentTable([I)V

    goto :goto_0

    .line 223
    :pswitch_7
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;Z)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->setFragmentTable([I)V

    goto/16 :goto_0

    .line 227
    :pswitch_8
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->setShadeColorTable([I)V

    goto/16 :goto_0

    .line 231
    :pswitch_9
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->setFocusShadeColorTable([I)V

    goto/16 :goto_0

    .line 235
    :pswitch_a
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWidget;->SetNeedLayout(Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 240
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v3

    .line 241
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v4

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GWidget;->setMinSize(II)V

    goto/16 :goto_0

    .line 246
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v3

    .line 247
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v4

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GWidget;->setMaxSize(II)V

    goto/16 :goto_0

    .line 252
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 253
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GWidget;->setOffsetXY(II)V

    goto/16 :goto_0

    .line 258
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v3

    .line 259
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v4

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GWidget;->setSize(II)V

    goto/16 :goto_0

    .line 264
    :pswitch_f
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLinePanel;

    if-eqz v3, :cond_3

    .line 266
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v16

    .line 267
    .local v16, "intArray":[I
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 269
    .local v15, "imageSetId":I
    check-cast p1, Lcom/hz/gui/GLinePanel;

    .line 271
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 273
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 269
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/hz/gui/GLinePanel;->setData([ILcom/hz/image/ImageSet;II)V

    goto/16 :goto_0

    .line 277
    .end local v15    # "imageSetId":I
    .end local v16    # "intArray":[I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLabel;

    if-eqz v3, :cond_0

    .line 278
    check-cast p1, Lcom/hz/gui/GLabel;

    .line 279
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 281
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 282
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GLabel;->setData(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 288
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_10
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GTextArea;

    if-eqz v3, :cond_4

    .line 289
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v16

    .line 290
    .restart local v16    # "intArray":[I
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 291
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GTextArea;

    .line 293
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 294
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 291
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4}, Lcom/hz/gui/GTextArea;->setBack([ILcom/hz/image/ImageSet;I)V

    goto/16 :goto_0

    .line 298
    .end local v15    # "imageSetId":I
    .end local v16    # "intArray":[I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_4
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLabel;

    if-eqz v3, :cond_0

    .line 300
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v16

    .line 301
    .restart local v16    # "intArray":[I
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 302
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GLabel;

    .line 304
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 305
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 306
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 302
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/hz/gui/GLabel;->setBack([ILcom/hz/image/ImageSet;II)V

    goto/16 :goto_0

    .line 311
    .end local v15    # "imageSetId":I
    .end local v16    # "intArray":[I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 312
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GIcon;

    .line 313
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 314
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 315
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 316
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 312
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GIcon;->setIconData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_0

    .line 319
    .end local v15    # "imageSetId":I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 320
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GSpinner;

    .line 321
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 322
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 323
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 324
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 320
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GSpinner;->setSpinnerData(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_0

    .line 328
    .end local v15    # "imageSetId":I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 329
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GLabel;

    .line 330
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 331
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 332
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 333
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 329
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GLabel;->setBackground(Lcom/hz/image/ImageSet;III)V

    goto/16 :goto_0

    .line 337
    .end local v15    # "imageSetId":I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 338
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GGameIcon;

    .line 339
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 340
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 341
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/hz/gui/GGameIcon;->setBackground(Lcom/hz/image/ImageSet;II)V

    goto/16 :goto_0

    .line 345
    .end local v15    # "imageSetId":I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_15
    check-cast p1, Lcom/hz/gui/GPixelLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GPixelLabel;->setFont(I)V

    goto/16 :goto_0

    .line 348
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_16
    check-cast p1, Lcom/hz/gui/GPixelLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GPixelLabel;->setPixelColorTable([I)V

    goto/16 :goto_0

    .line 351
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_17
    check-cast p1, Lcom/hz/gui/GPixelLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GPixelLabel;->setFocusPixelColorTable([I)V

    goto/16 :goto_0

    .line 354
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 355
    .restart local v15    # "imageSetId":I
    check-cast p1, Lcom/hz/gui/GImageNumer;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v3

    .line 356
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 357
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 355
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/hz/gui/GImageNumer;->setData(Lcom/hz/image/ImageSet;II)V

    goto/16 :goto_0

    .line 360
    .end local v15    # "imageSetId":I
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_19
    check-cast p1, Lcom/hz/gui/GImageNumer;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GImageNumer;->setNumerString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_1a
    check-cast p1, Lcom/hz/gui/GLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v3

    .line 365
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GLabel;->setLineColorTable([IZ)V

    goto/16 :goto_0

    .line 369
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_1b
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GContainer;

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/hz/ui/UIHandler;->getLibGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v5

    .line 371
    .local v5, "getLibGwindget":Lcom/hz/gui/GWidget;
    move-object/from16 v0, p1

    check-cast v0, Lcom/hz/gui/GContainer;

    move-object v3, v0

    .line 373
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 374
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;Z)[I

    move-result-object v7

    .line 375
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readStringArray(Ljava/io/DataInputStream;)[Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;)[I

    move-result-object v9

    move-object/from16 v4, p0

    .line 371
    invoke-virtual/range {v3 .. v9}, Lcom/hz/gui/GContainer;->batchAdd(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;I[I[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 382
    .end local v5    # "getLibGwindget":Lcom/hz/gui/GWidget;
    :pswitch_1c
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GContainer;

    if-eqz v3, :cond_0

    .line 383
    move-object/from16 v0, p1

    check-cast v0, Lcom/hz/gui/GContainer;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 384
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 385
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 386
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 387
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 388
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 383
    invoke-virtual/range {v6 .. v12}, Lcom/hz/gui/GContainer;->setLayoutMode(IIIIII)V

    goto/16 :goto_0

    .line 394
    :pswitch_1d
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GGameIcon;

    if-eqz v3, :cond_0

    .line 395
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 396
    .local v14, "icon":I
    const/16 v19, 0x0

    .line 397
    .local v19, "sprite":Lcom/hz/sprite/GameSprite;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v17

    .line 398
    .local v17, "isAction":Z
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v18

    .line 400
    .local v18, "isRotate":Z
    move-object/from16 v0, p1

    check-cast v0, Lcom/hz/gui/GGameIcon;

    move-object v3, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/hz/gui/GGameIcon;->setRotate(Z)V

    .line 404
    if-nez v14, :cond_6

    .line 405
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    if-eqz v3, :cond_5

    .line 406
    sget-object v3, Lcom/hz/main/GameWorld;->myPlayer:Lcom/hz/actor/Player;

    invoke-virtual {v3}, Lcom/hz/actor/Player;->getPlayerSprite()Lcom/hz/sprite/GameSprite;

    move-result-object v3

    invoke-static {v3}, Lcom/hz/sprite/GameSprite;->cloneSprite(Lcom/hz/sprite/GameSprite;)Lcom/hz/sprite/GameSprite;

    move-result-object v19

    .line 413
    :cond_5
    :goto_2
    check-cast p1, Lcom/hz/gui/GGameIcon;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/hz/gui/GGameIcon;->setData(Lcom/hz/sprite/GameSprite;Z)V

    goto/16 :goto_0

    .line 408
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_6
    if-lez v14, :cond_5

    .line 409
    invoke-static {v14}, Lcom/hz/sprite/GameSprite;->createSprite(I)Lcom/hz/sprite/GameSprite;

    move-result-object v19

    goto :goto_2

    .line 418
    .end local v14    # "icon":I
    .end local v17    # "isAction":Z
    .end local v18    # "isRotate":Z
    .end local v19    # "sprite":Lcom/hz/sprite/GameSprite;
    :pswitch_1e
    check-cast p1, Lcom/hz/gui/GLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GLabel;->setBorderColor(I)V

    goto/16 :goto_0

    .line 421
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_1f
    check-cast p1, Lcom/hz/gui/GLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GLabel;->setSelectBorderColor(I)V

    goto/16 :goto_0

    .line 425
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_20
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GGameBar;

    if-eqz v3, :cond_0

    .line 426
    check-cast p1, Lcom/hz/gui/GGameBar;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 427
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 428
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 426
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/hz/gui/GGameBar;->setBgColor(III)V

    goto/16 :goto_0

    .line 434
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_21
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GGameBar;

    if-eqz v3, :cond_0

    .line 435
    check-cast p1, Lcom/hz/gui/GGameBar;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 436
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 437
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 435
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/hz/gui/GGameBar;->setFgColor(III)V

    goto/16 :goto_0

    .line 442
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_22
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GGameBar;

    if-eqz v3, :cond_0

    .line 443
    check-cast p1, Lcom/hz/gui/GGameBar;

    .line 444
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 445
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 443
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GGameBar;->setValue(II)V

    goto/16 :goto_0

    .line 450
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_23
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GGameBar;

    if-eqz v3, :cond_0

    .line 451
    check-cast p1, Lcom/hz/gui/GGameBar;

    .line 452
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 453
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 454
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 451
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/hz/gui/GGameBar;->setBarType(III)V

    goto/16 :goto_0

    .line 460
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_24
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLabel;

    if-eqz v3, :cond_0

    .line 461
    check-cast p1, Lcom/hz/gui/GLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/hz/gui/GLabel;->setSetting(IZ)V

    goto/16 :goto_0

    .line 467
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_25
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLinePanel;

    if-eqz v3, :cond_0

    .line 468
    check-cast p1, Lcom/hz/gui/GLinePanel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GLinePanel;->setIsDrawViewImage(Z)V

    goto/16 :goto_0

    .line 474
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_26
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GTextArea;

    if-eqz v3, :cond_0

    .line 475
    check-cast p1, Lcom/hz/gui/GTextArea;

    .line 476
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 478
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 479
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v7

    .line 475
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/hz/gui/GTextArea;->setData(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    .line 484
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_27
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GTextArea;

    if-eqz v3, :cond_0

    .line 485
    check-cast p1, Lcom/hz/gui/GTextArea;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GTextArea;->setLineColor(I)V

    goto/16 :goto_0

    .line 491
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_28
    check-cast p1, Lcom/hz/gui/GTextArea;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GTextArea;->setLineSpace(I)V

    goto/16 :goto_0

    .line 495
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_29
    check-cast p1, Lcom/hz/gui/GContainer;

    .line 496
    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 497
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 498
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 499
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 500
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 495
    invoke-static {v3, v4, v6, v7, v8}, Lcom/hz/gui/GScrollBar;->getScrollBar(BIIII)Lcom/hz/gui/GScrollBar;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GContainer;->addScrollBar(Lcom/hz/gui/GScrollBar;)V

    goto/16 :goto_0

    .line 504
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_2a
    check-cast p1, Lcom/hz/gui/GWindow;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GWindow;->setFocus(I)V

    goto/16 :goto_0

    .line 508
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_2b
    check-cast p1, Lcom/hz/gui/GLinePanel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GLinePanel;->setUnderLineColor(I)V

    goto/16 :goto_0

    .line 513
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_2c
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLabel;

    if-eqz v3, :cond_7

    .line 514
    check-cast p1, Lcom/hz/gui/GLabel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GLabel;->setLeftRightBgColorDisable(Z)V

    goto/16 :goto_0

    .line 517
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/hz/gui/GLinePanel;

    if-eqz v3, :cond_0

    .line 518
    check-cast p1, Lcom/hz/gui/GLinePanel;

    .end local p1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-static/range {p2 .. p2}, Lcom/hz/ui/XmlParse;->readBoolean(Ljava/io/DataInputStream;)Z

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/hz/gui/GLinePanel;->setLeftRightBgColorDisable(Z)V

    goto/16 :goto_0

    .line 524
    .restart local p1    # "gwidget":Lcom/hz/gui/GWidget;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 525
    .restart local v15    # "imageSetId":I
    move-object/from16 v0, p1

    check-cast v0, Lcom/hz/gui/GIcon;

    move-object v6, v0

    .line 526
    invoke-static {v15}, Lcom/hz/main/GameView;->getImageSet(I)Lcom/hz/image/ImageSet;

    move-result-object v7

    .line 527
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 528
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 529
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 530
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 525
    invoke-virtual/range {v6 .. v11}, Lcom/hz/gui/GIcon;->setNumberData(Lcom/hz/image/ImageSet;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1c
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_14
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_26
        :pswitch_27
        :pswitch_29
        :pswitch_2a
        :pswitch_2d
        :pswitch_2b
        :pswitch_2c
        :pswitch_28
        :pswitch_1f
        :pswitch_8
        :pswitch_9
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_12
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public static parseUI(Lcom/hz/ui/UIHandler;Ljava/io/DataInputStream;)Lcom/hz/gui/GWidget;
    .locals 11
    .param p0, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 629
    .local v6, "type":B
    const/16 v9, 0x15

    new-array v8, v9, [I

    .line 632
    .local v8, "vmData":[I
    const/16 v9, 0x13

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 634
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 635
    .local v2, "dataSetLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 653
    invoke-static {p0, v6, v8, p1}, Lcom/hz/ui/XmlParse;->fromGWidget(Lcom/hz/ui/UIHandler;I[ILjava/io/DataInputStream;)Lcom/hz/gui/GWidget;

    move-result-object v3

    .line 655
    .local v3, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz p0, :cond_0

    .line 656
    invoke-virtual {p0, v3}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 661
    .local v1, "childNum":B
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v1, :cond_4

    .line 676
    return-object v3

    .line 637
    .end local v1    # "childNum":B
    .end local v3    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 638
    .local v5, "index":B
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 640
    .local v7, "value":I
    if-ltz v5, :cond_2

    array-length v9, v8

    if-lt v5, v9, :cond_3

    .line 635
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 649
    :cond_3
    aput v7, v8, v5

    goto :goto_2

    .line 663
    .end local v5    # "index":B
    .end local v7    # "value":I
    .restart local v1    # "childNum":B
    .restart local v3    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_4
    invoke-static {p0, p1}, Lcom/hz/ui/XmlParse;->parseUI(Lcom/hz/ui/UIHandler;Ljava/io/DataInputStream;)Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 665
    .local v0, "childGWidget":Lcom/hz/gui/GWidget;
    instance-of v9, v3, Lcom/hz/gui/GContainer;

    if-nez v9, :cond_5

    .line 661
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v9, v3

    .line 673
    check-cast v9, Lcom/hz/gui/GContainer;

    invoke-virtual {v9, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    goto :goto_3
.end method

.method private static final readBoolean(Ljava/io/DataInputStream;)Z
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final readIntArray(Ljava/io/DataInputStream;)[I
    .locals 1
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hz/ui/XmlParse;->readIntArray(Ljava/io/DataInputStream;Z)[I

    move-result-object v0

    return-object v0
.end method

.method private static final readIntArray(Ljava/io/DataInputStream;Z)[I
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "isParse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v3, v4, 0xff

    .line 160
    .local v3, "len":I
    new-array v0, v3, [I

    .line 161
    .local v0, "array":[I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 170
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 162
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v0, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .restart local v1    # "i":I
    :cond_2
    aget v4, v0, v1

    invoke-static {v4}, Lcom/hz/ui/XmlParse;->checkInt(I)I

    move-result v4

    aput v4, v0, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static final readStringArray(Ljava/io/DataInputStream;)[Ljava/lang/String;
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 174
    .local v2, "len":I
    new-array v0, v2, [Ljava/lang/String;

    .line 175
    .local v0, "arrayStr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 178
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
