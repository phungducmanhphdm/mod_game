.class public Lcom/hz/gui/GContainer;
.super Lcom/hz/gui/GWidget;
.source "GContainer.java"


# static fields
.field public static final GW_BORDER_LAYOUT_CENTER:I = 0x4

.field public static final GW_BORDER_LAYOUT_EAST:I = 0x3

.field public static final GW_BORDER_LAYOUT_NORTH:I = 0x0

.field public static final GW_BORDER_LAYOUT_SOUTH:I = 0x1

.field public static final GW_BORDER_LAYOUT_WEST:I = 0x2

.field public static final GW_LAYOUT_ALIGN_FILL:I = 0x100

.field public static final GW_LAYOUT_ALIGN_HCENTER:I = 0x200

.field public static final GW_LAYOUT_ALIGN_NONE:I = 0x0

.field public static final GW_LAYOUT_ALIGN_VCENTER:I = 0x400

.field public static final GW_LAYOUT_TYPE_BORDER:I = 0x11

.field public static final GW_LAYOUT_TYPE_GRID:I = 0x4

.field public static final GW_LAYOUT_TYPE_GRID2:I = 0x8

.field public static final GW_LAYOUT_TYPE_GRID3:I = 0x10

.field public static final GW_LAYOUT_TYPE_H:I = 0x1

.field public static final GW_LAYOUT_TYPE_NONE:I = 0x0

.field public static final GW_LAYOUT_TYPE_V:I = 0x2

.field private static final LAYOUT_DATA_SIZE:I = 0x6

.field public static final L_ALIGN:I = 0x3

.field public static final L_COLS:I = 0x5

.field public static final L_DOWN_GAP:I = 0x2

.field public static final L_GRID_H:I = 0x5

.field public static final L_GRID_W:I = 0x4

.field public static final L_HGAP:I = 0x1

.field public static final L_LEFT_GAP:I = 0x3

.field public static final L_MODE:I = 0x0

.field public static final L_RIGHT_GAP:I = 0x4

.field public static final L_ROWS:I = 0x4

.field public static final L_UP_GAP:I = 0x1

.field public static final L_VGAP:I = 0x2

.field private static final MAX_VIEW_INDEX:I = 0xffff

.field static lock:Ljava/lang/Object;


# instance fields
.field protected canCatchKey:Z

.field public children:Ljava/util/Vector;

.field public firstInViewIndex:I

.field gsb:Lcom/hz/gui/GScrollBar;

.field protected isCatchHotKey:Z

.field public isIntersectView:Z

.field public lastInViewIndex:I

.field public layoutData:[I

.field public needScrollBar:Z

.field public topDrawVector:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hz/gui/GContainer;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "_data"    # [I

    .prologue
    const/4 v1, -0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/hz/gui/GWidget;-><init>([I)V

    .line 108
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    .line 109
    iput v1, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 110
    iput v1, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hz/gui/GContainer;->setScale(Z)V

    .line 113
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/hz/gui/GContainer;->setType(I)V

    .line 114
    return-void
.end method

.method private borderLayout()V
    .locals 25

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget v20, v22, v23

    .line 667
    .local v20, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x9

    aget v21, v22, v23

    .line 668
    .local v21, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x8

    aget v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v23, v0

    const/16 v24, 0xa

    aget v23, v23, v24

    sub-int v19, v22, v23

    .line 669
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x9

    aget v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v23, v0

    const/16 v24, 0xb

    aget v23, v23, v24

    sub-int v9, v22, v23

    .line 671
    .local v9, "height":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hz/gui/GContainer;->getBorderLayoutGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v12

    .line 672
    .local v12, "northGwidget":Lcom/hz/gui/GWidget;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hz/gui/GContainer;->getBorderLayoutGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v14

    .line 673
    .local v14, "southGwidget":Lcom/hz/gui/GWidget;
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hz/gui/GContainer;->getBorderLayoutGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v17

    .line 674
    .local v17, "westGwidget":Lcom/hz/gui/GWidget;
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hz/gui/GContainer;->getBorderLayoutGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v6

    .line 675
    .local v6, "eastGwidget":Lcom/hz/gui/GWidget;
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hz/gui/GContainer;->getBorderLayoutGWidget(I)Lcom/hz/gui/GWidget;

    move-result-object v4

    .line 677
    .local v4, "centerGwidget":Lcom/hz/gui/GWidget;
    if-eqz v12, :cond_1

    .line 679
    iget-object v0, v12, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aput v19, v22, v23

    .line 680
    instance-of v0, v12, Lcom/hz/gui/GContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual {v12}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v22, v12

    .line 681
    check-cast v22, Lcom/hz/gui/GContainer;

    invoke-direct/range {v22 .. v22}, Lcom/hz/gui/GContainer;->layout2()V

    .line 683
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v1, v9}, Lcom/hz/gui/GContainer;->getPerfectHeight(Lcom/hz/gui/GWidget;II)I

    move-result v13

    .line 685
    .local v13, "northHeight":I
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2, v13}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 686
    iget-object v0, v12, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    add-int v22, v22, v23

    add-int v21, v21, v22

    .line 687
    iget-object v0, v12, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    sub-int v9, v22, v23

    .line 689
    .end local v13    # "northHeight":I
    :cond_1
    if-eqz v14, :cond_3

    .line 691
    iget-object v0, v14, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aput v19, v22, v23

    .line 692
    instance-of v0, v14, Lcom/hz/gui/GContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    invoke-virtual {v14}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v22, v14

    .line 693
    check-cast v22, Lcom/hz/gui/GContainer;

    invoke-direct/range {v22 .. v22}, Lcom/hz/gui/GContainer;->layout2()V

    .line 695
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1, v9}, Lcom/hz/gui/GContainer;->getPerfectHeight(Lcom/hz/gui/GWidget;II)I

    move-result v15

    .line 697
    .local v15, "southHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    sub-int v22, v22, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v23, v0

    const/16 v24, 0xb

    aget v23, v23, v24

    sub-int v16, v22, v23

    .line 698
    .local v16, "southY":I
    move/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2, v15}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 699
    iget-object v0, v14, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    sub-int v9, v22, v23

    .line 701
    .end local v15    # "southHeight":I
    .end local v16    # "southY":I
    :cond_3
    if-eqz v17, :cond_6

    .line 703
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/hz/gui/GContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v22

    if-nez v22, :cond_4

    move-object/from16 v22, v17

    .line 704
    check-cast v22, Lcom/hz/gui/GContainer;

    invoke-direct/range {v22 .. v22}, Lcom/hz/gui/GContainer;->layout2()V

    .line 706
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/hz/gui/GContainer;->getPerfectWidth(Lcom/hz/gui/GWidget;I)I

    move-result v18

    .line 707
    .local v18, "westWidth":I
    if-nez v9, :cond_5

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/hz/gui/GContainer;->getPerfectHeight(Lcom/hz/gui/GWidget;II)I

    move-result v9

    .line 711
    :cond_5
    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 712
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget v23, v23, v24

    add-int v22, v22, v23

    add-int v20, v20, v22

    .line 713
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    sub-int v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget v23, v23, v24

    sub-int v19, v22, v23

    .line 715
    .end local v18    # "westWidth":I
    :cond_6
    if-eqz v6, :cond_9

    .line 717
    instance-of v0, v6, Lcom/hz/gui/GContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual {v6}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v22, v6

    .line 718
    check-cast v22, Lcom/hz/gui/GContainer;

    invoke-direct/range {v22 .. v22}, Lcom/hz/gui/GContainer;->layout2()V

    .line 720
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/hz/gui/GContainer;->getPerfectWidth(Lcom/hz/gui/GWidget;I)I

    move-result v7

    .line 721
    .local v7, "eastWidth":I
    if-nez v9, :cond_8

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Lcom/hz/gui/GContainer;->getPerfectHeight(Lcom/hz/gui/GWidget;II)I

    move-result v9

    .line 725
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    sub-int v22, v22, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v23, v0

    const/16 v24, 0xa

    aget v23, v23, v24

    sub-int v8, v22, v23

    .line 726
    .local v8, "eastX":I
    move/from16 v0, v21

    invoke-virtual {v6, v8, v0, v7, v9}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 728
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    sub-int v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget v23, v23, v24

    sub-int v19, v22, v23

    .line 730
    .end local v7    # "eastWidth":I
    .end local v8    # "eastX":I
    :cond_9
    if-eqz v4, :cond_b

    .line 732
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v9}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 733
    instance-of v0, v4, Lcom/hz/gui/GContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    invoke-virtual {v4}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v22, v4

    .line 734
    check-cast v22, Lcom/hz/gui/GContainer;

    invoke-direct/range {v22 .. v22}, Lcom/hz/gui/GContainer;->layout2()V

    .line 736
    :cond_a
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v9}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 738
    :cond_b
    if-nez v19, :cond_12

    .line 740
    const/4 v11, 0x0

    .line 741
    .local v11, "layoutMinWidth":I
    if-eqz v12, :cond_c

    .line 742
    iget-object v0, v12, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v11, v22, v23

    .line 744
    :cond_c
    if-eqz v14, :cond_d

    .line 746
    iget-object v0, v14, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    move/from16 v0, v22

    if-ge v11, v0, :cond_d

    .line 747
    iget-object v0, v14, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v11, v22, v23

    .line 749
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget v23, v23, v24

    add-int v5, v22, v23

    .line 750
    .local v5, "centerWidth":I
    if-eqz v17, :cond_e

    .line 752
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    add-int v5, v5, v22

    .line 754
    :cond_e
    if-eqz v6, :cond_f

    .line 756
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    add-int v5, v5, v22

    .line 758
    :cond_f
    if-eqz v4, :cond_10

    .line 760
    iget-object v0, v4, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    aget v22, v22, v23

    add-int v5, v5, v22

    .line 762
    :cond_10
    if-ge v11, v5, :cond_11

    .line 763
    move v11, v5

    .line 765
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/hz/gui/GContainer;->setMinWidth(I)V

    .line 767
    .end local v5    # "centerWidth":I
    .end local v11    # "layoutMinWidth":I
    :cond_12
    if-nez v9, :cond_18

    .line 769
    const/4 v10, 0x0

    .line 770
    .local v10, "layoutMinHeight":I
    if-eqz v17, :cond_13

    .line 771
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v10, v22, v23

    .line 773
    :cond_13
    if-eqz v6, :cond_14

    .line 775
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    move/from16 v0, v22

    if-ge v10, v0, :cond_14

    .line 776
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v10, v22, v23

    .line 778
    :cond_14
    if-eqz v4, :cond_15

    .line 780
    iget-object v0, v4, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    move/from16 v0, v22

    if-ge v10, v0, :cond_15

    .line 781
    iget-object v0, v4, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v10, v22, v23

    .line 783
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    add-int v22, v22, v23

    add-int v10, v10, v22

    .line 784
    if-eqz v12, :cond_16

    .line 786
    iget-object v0, v12, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    add-int v10, v10, v22

    .line 788
    :cond_16
    if-eqz v14, :cond_17

    .line 790
    iget-object v0, v14, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    add-int v10, v10, v22

    .line 793
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/hz/gui/GContainer;->setMinHeight(I)V

    .line 795
    .end local v10    # "layoutMinHeight":I
    :cond_18
    return-void
.end method

.method private cycleChildren()V
    .locals 4

    .prologue
    .line 1094
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1095
    .local v0, "childNum":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 1116
    return-void

    .line 1097
    :cond_0
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/GWidget;

    .line 1099
    .local v1, "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1095
    .end local v1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1103
    .restart local v1    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_2
    invoke-virtual {v1}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1107
    instance-of v3, v1, Lcom/hz/gui/IGCycle;

    if-eqz v3, :cond_3

    move-object v3, v1

    .line 1108
    check-cast v3, Lcom/hz/gui/IGCycle;

    invoke-interface {v3}, Lcom/hz/gui/IGCycle;->cycle()V

    .line 1111
    :cond_3
    instance-of v3, v1, Lcom/hz/gui/GContainer;

    if-eqz v3, :cond_1

    .line 1112
    check-cast v1, Lcom/hz/gui/GContainer;

    .end local v1    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-direct {v1}, Lcom/hz/gui/GContainer;->cycleChildren()V

    goto :goto_1
.end method

.method private destroyChild()V
    .locals 4

    .prologue
    .line 191
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 192
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 201
    return-void

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 196
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_1

    .line 192
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    goto :goto_1
.end method

.method private getBorderLayoutGWidget(I)Lcom/hz/gui/GWidget;
    .locals 4
    .param p1, "borderType"    # I

    .prologue
    .line 210
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 211
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 221
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 214
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_2

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    iget v3, v0, Lcom/hz/gui/GWidget;->borderLayoutType:I

    if-ne v3, p1, :cond_1

    goto :goto_1
.end method

.method private getPerfectHeight(Lcom/hz/gui/GWidget;II)I
    .locals 3
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "width"    # I
    .param p3, "inputMaxHeight"    # I

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 234
    const/4 v0, 0x0

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getMinH()I

    move-result v0

    .line 239
    .local v0, "getHeight":I
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getType()I

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_2

    .line 241
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 242
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getH()I

    move-result v0

    .line 246
    :cond_2
    if-le v0, p3, :cond_0

    if-lez p3, :cond_0

    .line 247
    move v0, p3

    goto :goto_0
.end method

.method private getPerfectWidth(Lcom/hz/gui/GWidget;I)I
    .locals 3
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "inputMaxWidth"    # I

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    const/4 v0, 0x0

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getMinW()I

    move-result v0

    .line 259
    .local v0, "getWidth":I
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getType()I

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getW()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 262
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getW()I

    move-result v0

    .line 266
    :cond_2
    if-le v0, p2, :cond_0

    if-lez p2, :cond_0

    .line 267
    move v0, p2

    goto :goto_0
.end method

.method private initChild(Lcom/hz/gui/GWidget;)V
    .locals 0
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 273
    iput-object p0, p1, Lcom/hz/gui/GWidget;->parent:Lcom/hz/gui/GContainer;

    .line 275
    return-void
.end method

.method private layout2()V
    .locals 4

    .prologue
    .line 799
    iget-object v2, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 802
    :sswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 804
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_2

    .line 802
    .end local v0    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    .restart local v0    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_2
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    instance-of v2, v0, Lcom/hz/gui/GContainer;

    if-eqz v2, :cond_1

    .line 811
    check-cast v0, Lcom/hz/gui/GContainer;

    .end local v0    # "gwidget":Lcom/hz/gui/GWidget;
    invoke-direct {v0}, Lcom/hz/gui/GContainer;->layout2()V

    goto :goto_2

    .line 816
    .end local v1    # "i":I
    :sswitch_1
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->layoutH()V

    goto :goto_0

    .line 819
    :sswitch_2
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->layoutV()V

    goto :goto_0

    .line 822
    :sswitch_3
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->layoutG()V

    goto :goto_0

    .line 825
    :sswitch_4
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->layoutG2()V

    goto :goto_0

    .line 828
    :sswitch_5
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->borderLayout()V

    goto :goto_0

    .line 799
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x11 -> :sswitch_5
    .end sparse-switch
.end method

.method private layoutG()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x5

    const/4 v2, 0x4

    .line 286
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v7, v0, v2

    .line 287
    .local v7, "rows":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v8, v0, v11

    .line 288
    .local v8, "cols":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x1

    aget v9, v0, v1

    .line 289
    .local v9, "hGap":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x2

    aget v10, v0, v1

    .line 290
    .local v10, "vGap":I
    if-lez v7, :cond_0

    if-lez v8, :cond_0

    .line 292
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    sub-int v3, v0, v1

    .line 294
    .local v3, "getWidth":I
    add-int v0, v9, v3

    div-int/2addr v0, v8

    sub-int v5, v0, v9

    .line 296
    .local v5, "gridWidth":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v0, v0, v11

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    sub-int v4, v0, v1

    .line 297
    .local v4, "getHeight":I
    add-int v0, v10, v4

    div-int/2addr v0, v7

    sub-int v6, v0, v10

    .line 300
    .local v6, "gridHeight":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v0, v12

    .line 301
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v2, v0, v13

    move-object v0, p0

    .line 299
    invoke-direct/range {v0 .. v8}, Lcom/hz/gui/GContainer;->layoutGrid(IIIIIIII)V

    .line 305
    .end local v3    # "getWidth":I
    .end local v4    # "getHeight":I
    .end local v5    # "gridWidth":I
    .end local v6    # "gridHeight":I
    :cond_0
    return-void
.end method

.method private layoutG2()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x5

    const/4 v2, 0x4

    .line 321
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v5, v0, v2

    .line 322
    .local v5, "gridWidth":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v6, v0, v11

    .line 323
    .local v6, "gridHeight":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x1

    aget v9, v0, v1

    .line 324
    .local v9, "hGap":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x2

    aget v10, v0, v1

    .line 326
    .local v10, "vGap":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    sub-int v3, v0, v1

    .line 327
    .local v3, "getWidth":I
    add-int v0, v9, v3

    add-int v1, v5, v9

    div-int v8, v0, v1

    .line 329
    .local v8, "cols":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v0, v0, v11

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    sub-int v4, v0, v1

    .line 330
    .local v4, "getHeight":I
    add-int v0, v10, v4

    add-int v1, v6, v10

    div-int v7, v0, v1

    .line 333
    .local v7, "rows":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v0, v12

    .line 334
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v2, v0, v13

    move-object v0, p0

    .line 332
    invoke-direct/range {v0 .. v8}, Lcom/hz/gui/GContainer;->layoutGrid(IIIIIIII)V

    .line 337
    return-void
.end method

.method private layoutGrid(IIIIIIII)V
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "gridWidth"    # I
    .param p6, "gridHeight"    # I
    .param p7, "layoutRows"    # I
    .param p8, "layoutCols"    # I

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, p5

    mul-int v7, v17, p8

    .line 345
    .local v7, "gridTotalWidth":I
    sub-int v17, p3, v7

    div-int/lit8 v17, v17, 0x2

    add-int p1, p1, v17

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    add-int v17, v17, p6

    mul-int v5, v17, p7

    .line 348
    .local v5, "gridTotalHeight":I
    sub-int v17, p4, v5

    div-int/lit8 v17, v17, 0x2

    add-int p2, p2, v17

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v6

    .line 353
    .local v6, "gridTotalNum":I
    div-int v15, v6, p8

    .line 354
    .local v15, "realRow":I
    rem-int v17, v6, p8

    if-lez v17, :cond_0

    .line 355
    add-int/lit8 v15, v15, 0x1

    .line 357
    :cond_0
    const/16 v16, 0x0

    .line 360
    .local v16, "rowIndex":I
    :goto_0
    move/from16 v0, v16

    if-lt v0, v15, :cond_3

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v4

    .line 389
    .local v4, "childNum":I
    mul-int v2, p8, p7

    .line 390
    .local v2, "canShowGirdNum":I
    if-ge v2, v4, :cond_8

    .line 392
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hz/gui/GContainer;->needScrollBar:Z

    .line 393
    sub-int v17, v15, p7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    add-int v18, v18, p6

    mul-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/gui/GContainer;->outHeight:I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hz/gui/GContainer;->outHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    add-int v18, v18, p6

    mul-int v18, v18, p7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 399
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 400
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 402
    move v11, v2

    .local v11, "index":I
    :goto_1
    if-lt v11, v4, :cond_7

    .line 423
    :cond_2
    return-void

    .line 364
    .end local v2    # "canShowGirdNum":I
    .end local v4    # "childNum":I
    .end local v11    # "index":I
    :cond_3
    const/4 v12, 0x0

    .local v12, "j5":I
    :goto_2
    move/from16 v0, p8

    if-lt v12, v0, :cond_4

    .line 384
    add-int/lit8 v16, v16, 0x1

    .line 385
    goto :goto_0

    .line 366
    :cond_4
    mul-int v17, v16, p8

    add-int v3, v17, v12

    .line 368
    .local v3, "childIndex":I
    add-int/lit8 v17, v6, -0x1

    move/from16 v0, v17

    if-gt v3, v0, :cond_5

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, p5

    mul-int v17, v17, v12

    add-int v17, v17, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v14, v17, v18

    .line 371
    .local v14, "k7":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    add-int v17, v17, p6

    mul-int v17, v17, v16

    add-int v17, v17, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v13, v17, v18

    .line 372
    .local v13, "j8":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/gui/GWidget;

    .line 373
    .local v10, "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v10}, Lcom/hz/gui/GWidget;->isScale()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 375
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v10, v14, v13, v0, v1}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 364
    .end local v10    # "gwidget":Lcom/hz/gui/GWidget;
    .end local v13    # "j8":I
    .end local v14    # "k7":I
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 378
    .restart local v10    # "gwidget":Lcom/hz/gui/GWidget;
    .restart local v13    # "j8":I
    .restart local v14    # "k7":I
    :cond_6
    iget-object v0, v10, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget v17, v17, v18

    sub-int v17, p5, v17

    div-int/lit8 v17, v17, 0x2

    add-int v8, v17, v14

    .line 379
    .local v8, "gridX":I
    iget-object v0, v10, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    sub-int v17, p6, v17

    div-int/lit8 v17, v17, 0x2

    add-int v9, v17, v13

    .line 380
    .local v9, "gridY":I
    iget-object v0, v10, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget v17, v17, v18

    iget-object v0, v10, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v8, v9, v0, v1}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    goto :goto_3

    .line 404
    .end local v3    # "childIndex":I
    .end local v8    # "gridX":I
    .end local v9    # "gridY":I
    .end local v10    # "gwidget":Lcom/hz/gui/GWidget;
    .end local v12    # "j5":I
    .end local v13    # "j8":I
    .end local v14    # "k7":I
    .restart local v2    # "canShowGirdNum":I
    .restart local v4    # "childNum":I
    .restart local v11    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/gui/GWidget;

    .line 405
    .restart local v10    # "gwidget":Lcom/hz/gui/GWidget;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 402
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 410
    .end local v10    # "gwidget":Lcom/hz/gui/GWidget;
    .end local v11    # "index":I
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hz/gui/GContainer;->needScrollBar:Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 415
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 416
    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 417
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_4
    if-ge v11, v4, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hz/gui/GWidget;

    .line 420
    .restart local v10    # "gwidget":Lcom/hz/gui/GWidget;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 417
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method private layoutH()V
    .locals 12

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 439
    iget-object v7, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v4

    .line 440
    .local v4, "size":I
    iget-object v7, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v8, 0x8

    aget v6, v7, v8

    .line 441
    .local v6, "xOffset":I
    const/4 v3, 0x0

    .line 442
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .line 443
    .local v2, "index":I
    :goto_0
    if-lt v2, v4, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isScale()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 471
    iget-object v7, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v8, 0xa

    aget v7, v7, v8

    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v8, v8, v10

    sub-int v5, v7, v8

    .line 472
    .local v5, "width":I
    iget-object v7, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v7, v7, v11

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    add-int v1, v7, v8

    .line 474
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinW()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 475
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinW()I

    move-result v5

    .line 481
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 482
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v1

    .line 488
    :cond_1
    :goto_2
    invoke-virtual {p0, v5, v1}, Lcom/hz/gui/GContainer;->setSize(II)V

    .line 493
    invoke-virtual {p0, v5, v1}, Lcom/hz/gui/GContainer;->setMinSize(II)V

    .line 496
    .end local v1    # "height":I
    .end local v5    # "width":I
    :cond_2
    return-void

    .line 445
    :cond_3
    iget-object v7, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 447
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v7

    if-nez v7, :cond_5

    .line 450
    instance-of v7, v0, Lcom/hz/gui/GContainer;

    if-eqz v7, :cond_4

    move-object v7, v0

    .line 451
    check-cast v7, Lcom/hz/gui/GContainer;

    invoke-direct {v7}, Lcom/hz/gui/GContainer;->layout2()V

    .line 454
    :cond_4
    invoke-direct {p0, v0, v9}, Lcom/hz/gui/GContainer;->getPerfectWidth(Lcom/hz/gui/GWidget;I)I

    move-result v5

    .line 455
    .restart local v5    # "width":I
    invoke-direct {p0, v0, v5, v9}, Lcom/hz/gui/GContainer;->getPerfectHeight(Lcom/hz/gui/GWidget;II)I

    move-result v1

    .line 457
    .restart local v1    # "height":I
    iget-object v7, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v7, v7, v11

    invoke-virtual {v0, v6, v7, v5, v1}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 459
    iget-object v7, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v7, v7, v10

    add-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 460
    if-le v1, v3, :cond_5

    .line 461
    move v3, v1

    .line 465
    .end local v1    # "height":I
    .end local v5    # "width":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "gwidget":Lcom/hz/gui/GWidget;
    .restart local v1    # "height":I
    .restart local v5    # "width":I
    :cond_6
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxW()I

    move-result v7

    if-le v5, v7, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxW()I

    move-result v5

    goto :goto_1

    .line 484
    :cond_7
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v7

    if-le v1, v7, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v1

    goto :goto_2
.end method

.method private layoutV()V
    .locals 15

    .prologue
    .line 500
    iget-object v11, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v9

    .line 502
    .local v9, "size":I
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x9

    aget v4, v11, v12

    .line 505
    .local v4, "heightOffset":I
    const/4 v8, 0x0

    .line 507
    .local v8, "maxChildWidth":I
    const/4 v2, 0x0

    .line 509
    .local v2, "displayHeight":I
    iget-object v11, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v12, 0x2

    aget v10, v11, v12

    .line 511
    .local v10, "vDis":I
    const v11, 0xffff

    iput v11, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 512
    const v11, 0xffff

    iput v11, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 516
    const/4 v6, 0x0

    .line 518
    .local v6, "isObjectOutView":Z
    const/4 v5, 0x0

    .line 519
    .local v5, "index":I
    :goto_0
    if-lt v5, v9, :cond_3

    .line 598
    iget v11, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    const v12, 0xffff

    if-ne v11, v12, :cond_0

    .line 600
    const/4 v11, 0x0

    iput v11, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 602
    :cond_0
    iget v11, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    const v12, 0xffff

    if-ne v11, v12, :cond_1

    .line 604
    add-int/lit8 v11, v9, -0x1

    iput v11, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 607
    :cond_1
    sub-int v11, v4, v10

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    iput v11, p0, Lcom/hz/gui/GContainer;->realHeight:I

    .line 608
    if-lez v2, :cond_d

    .line 610
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    .line 611
    sub-int v11, v4, v2

    iput v11, p0, Lcom/hz/gui/GContainer;->outHeight:I

    .line 617
    iget-object v11, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v11, :cond_2

    .line 619
    iget-object v11, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v12, p0, Lcom/hz/gui/GContainer;->outHeight:I

    iput v12, v11, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    .line 620
    iget-object v11, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iput v2, v11, Lcom/hz/gui/GScrollBar;->showDis:I

    .line 622
    :cond_2
    move v4, v2

    .line 630
    :goto_1
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isScale()Z

    move-result v11

    if-nez v11, :cond_e

    .line 662
    :goto_2
    return-void

    .line 521
    :cond_3
    iget-object v11, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GWidget;

    .line 522
    .local v3, "gwidget":Lcom/hz/gui/GWidget;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 525
    invoke-virtual {v3}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 526
    add-int/lit8 v5, v5, 0x1

    .line 527
    goto :goto_0

    .line 531
    :cond_4
    instance-of v11, v3, Lcom/hz/gui/GContainer;

    if-eqz v11, :cond_5

    move-object v11, v3

    .line 532
    check-cast v11, Lcom/hz/gui/GContainer;

    invoke-direct {v11}, Lcom/hz/gui/GContainer;->layout2()V

    .line 535
    :cond_5
    const/4 v11, 0x0

    invoke-direct {p0, v3, v11}, Lcom/hz/gui/GContainer;->getPerfectWidth(Lcom/hz/gui/GWidget;I)I

    move-result v1

    .line 536
    .local v1, "childWidth":I
    const/4 v11, 0x0

    invoke-direct {p0, v3, v1, v11}, Lcom/hz/gui/GContainer;->getPerfectHeight(Lcom/hz/gui/GWidget;II)I

    move-result v0

    .line 537
    .local v0, "childHeight":I
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    invoke-virtual {v3, v11, v4, v1, v0}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 539
    if-nez v2, :cond_6

    .line 541
    iget-boolean v11, p0, Lcom/hz/gui/GContainer;->isIntersectView:Z

    if-eqz v11, :cond_c

    .line 544
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v11

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    sub-int/2addr v11, v12

    if-le v4, v11, :cond_6

    .line 545
    const/4 v6, 0x1

    .line 556
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 558
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 562
    :cond_7
    if-eqz v6, :cond_a

    if-nez v2, :cond_a

    .line 564
    iget v11, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    const v12, 0xffff

    if-ne v11, v12, :cond_8

    .line 566
    const/4 v11, 0x0

    iput v11, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 568
    :cond_8
    iget v11, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    const v12, 0xffff

    if-ne v11, v12, :cond_9

    .line 570
    add-int/lit8 v11, v5, -0x1

    iput v11, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 572
    :cond_9
    move v2, v4

    .line 579
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v11

    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v12

    if-ne v11, v12, :cond_a

    .line 581
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v11

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    sub-int/2addr v11, v12

    if-ge v4, v11, :cond_a

    .line 582
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 584
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v11

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    sub-int v2, v11, v12

    .line 589
    :cond_a
    add-int v11, v10, v0

    add-int/2addr v4, v11

    .line 590
    if-le v1, v8, :cond_b

    .line 591
    move v8, v1

    .line 593
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 550
    :cond_c
    add-int v11, v4, v0

    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v12

    iget-object v13, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_6

    .line 551
    const/4 v6, 0x1

    goto :goto_3

    .line 626
    .end local v0    # "childHeight":I
    .end local v1    # "childWidth":I
    .end local v3    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_d
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    goto/16 :goto_1

    .line 634
    :cond_e
    sub-int/2addr v4, v10

    .line 635
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0x8

    aget v11, v11, v12

    add-int/2addr v11, v8

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int v7, v11, v12

    .line 636
    .local v7, "layoutWidth":I
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinW()I

    move-result v11

    if-ge v7, v11, :cond_11

    .line 638
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinW()I

    move-result v7

    .line 646
    :cond_f
    :goto_4
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0xb

    aget v11, v11, v12

    add-int/2addr v11, v4

    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v12

    if-le v11, v12, :cond_12

    .line 648
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxH()I

    move-result v11

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    sub-int v4, v11, v12

    .line 654
    :cond_10
    :goto_5
    sget-object v12, Lcom/hz/gui/GContainer;->lock:Ljava/lang/Object;

    monitor-enter v12

    .line 656
    :try_start_0
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v11, v11, v13

    add-int/2addr v11, v4

    invoke-virtual {p0, v7, v11}, Lcom/hz/gui/GContainer;->setSize(II)V

    .line 654
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0xb

    aget v11, v11, v12

    add-int/2addr v11, v4

    .line 658
    invoke-virtual {p0, v7, v11}, Lcom/hz/gui/GContainer;->setMinSize(II)V

    goto/16 :goto_2

    .line 640
    :cond_11
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxW()I

    move-result v11

    if-le v7, v11, :cond_f

    .line 642
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMaxW()I

    move-result v7

    goto :goto_4

    .line 650
    :cond_12
    iget-object v11, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v12, 0xb

    aget v11, v11, v12

    add-int/2addr v11, v4

    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v12

    if-ge v11, v12, :cond_10

    .line 651
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getMinH()I

    move-result v11

    iget-object v12, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    sub-int v4, v11, v12

    goto :goto_5

    .line 654
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method private paintChildren()V
    .locals 5

    .prologue
    .line 1142
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1143
    .local v0, "childNum":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 1168
    iget-object v4, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    if-eqz v4, :cond_0

    .line 1170
    iget-object v4, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    instance-of v4, v4, Lcom/hz/gui/IGPaint;

    if-eqz v4, :cond_0

    .line 1171
    iget-object v4, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-interface {v4}, Lcom/hz/gui/IGPaint;->paint()V

    .line 1174
    :cond_0
    return-void

    .line 1145
    :cond_1
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 1147
    .local v2, "gwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1143
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1151
    :cond_3
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1155
    instance-of v4, v2, Lcom/hz/gui/IGPaint;

    if-eqz v4, :cond_4

    move-object v4, v2

    .line 1156
    check-cast v4, Lcom/hz/gui/IGPaint;

    invoke-interface {v4}, Lcom/hz/gui/IGPaint;->paint()V

    .line 1159
    :cond_4
    instance-of v4, v2, Lcom/hz/gui/GContainer;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 1161
    check-cast v1, Lcom/hz/gui/GContainer;

    .line 1162
    .local v1, "container":Lcom/hz/gui/GContainer;
    invoke-direct {v1}, Lcom/hz/gui/GContainer;->paintChildren()V

    .line 1163
    invoke-direct {v1}, Lcom/hz/gui/GContainer;->paintTopDrawVector()V

    goto :goto_1
.end method

.method private paintTopDrawVector()V
    .locals 3

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 1129
    :cond_0
    return-void

    .line 1122
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hz/gui/IGTopDraw;

    .line 1124
    .local v1, "topDraw":Lcom/hz/gui/IGTopDraw;
    if-nez v1, :cond_2

    .line 1122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_2
    invoke-interface {v1}, Lcom/hz/gui/IGTopDraw;->draw()V

    goto :goto_1
.end method

.method private searchPressGWidget(III)Lcom/hz/gui/GWidget;
    .locals 11
    .param p1, "pointx"    # I
    .param p2, "pointY"    # I
    .param p3, "findType"    # I

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1521
    const/4 v10, 0x0

    .line 1596
    :goto_0
    return-object v10

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isOutView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1525
    const/4 v10, 0x0

    goto :goto_0

    .line 1529
    :cond_1
    invoke-virtual {p0, p3, p1, p2}, Lcom/hz/gui/GContainer;->isPointAtScrollBar(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1530
    iget-object v10, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    goto :goto_0

    .line 1533
    :cond_2
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1534
    .local v6, "childNum":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-lt v9, v6, :cond_3

    .line 1587
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isEnableFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p3}, Lcom/hz/gui/GContainer;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1588
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 1589
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 1590
    iget-object v2, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    .line 1591
    iget-object v3, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    move v4, p1

    move v5, p2

    .line 1587
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    .line 1591
    if-eqz v0, :cond_7

    move-object v10, p0

    .line 1592
    goto :goto_0

    .line 1536
    :cond_3
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/gui/GWidget;

    .line 1537
    .local v8, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v8, :cond_5

    .line 1534
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1541
    :cond_5
    instance-of v0, v8, Lcom/hz/gui/GContainer;

    if-eqz v0, :cond_6

    move-object v7, v8

    .line 1543
    check-cast v7, Lcom/hz/gui/GContainer;

    .line 1545
    .local v7, "gcontainer":Lcom/hz/gui/GContainer;
    invoke-direct {v7, p1, p2, p3}, Lcom/hz/gui/GContainer;->searchPressGWidget(III)Lcom/hz/gui/GWidget;

    move-result-object v10

    .line 1546
    .local v10, "touchGwidget":Lcom/hz/gui/GWidget;
    if-eqz v10, :cond_4

    goto :goto_0

    .line 1559
    .end local v7    # "gcontainer":Lcom/hz/gui/GContainer;
    .end local v10    # "touchGwidget":Lcom/hz/gui/GWidget;
    :cond_6
    invoke-virtual {v8}, Lcom/hz/gui/GWidget;->isEnableFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1563
    invoke-virtual {v8, p3}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1568
    invoke-virtual {v8}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1572
    invoke-virtual {v8}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1577
    iget-object v0, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 1578
    iget-object v1, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 1579
    iget-object v2, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    .line 1580
    iget-object v3, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    move v4, p1

    move v5, p2

    .line 1576
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    .line 1580
    if-eqz v0, :cond_4

    move-object v10, v8

    .line 1581
    goto/16 :goto_0

    .line 1596
    .end local v8    # "gwidget":Lcom/hz/gui/GWidget;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Lcom/hz/gui/GWidget;)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 1304
    if-nez p1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1308
    invoke-direct {p0, p1}, Lcom/hz/gui/GContainer;->initChild(Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method public add(Lcom/hz/gui/GWidget;I)V
    .locals 0
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "borderType"    # I

    .prologue
    .line 1318
    if-nez p1, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1322
    iput p2, p1, Lcom/hz/gui/GWidget;->borderLayoutType:I

    goto :goto_0
.end method

.method public addScrollBar(Lcom/hz/gui/GScrollBar;)V
    .locals 0
    .param p1, "gscrollbar"    # Lcom/hz/gui/GScrollBar;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    .line 1329
    if-eqz p1, :cond_0

    .line 1330
    iput-object p0, p1, Lcom/hz/gui/GScrollBar;->parent:Lcom/hz/gui/GContainer;

    .line 1332
    :cond_0
    return-void
.end method

.method public addTopDraw(Lcom/hz/gui/IGTopDraw;)V
    .locals 1
    .param p1, "draw"    # Lcom/hz/gui/IGTopDraw;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public align()V
    .locals 17

    .prologue
    .line 841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v1

    .line 842
    .local v1, "childNum":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    sparse-switch v12, :sswitch_data_0

    .line 946
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GContainer;->refreshScrollBar()V

    .line 947
    return-void

    .line 844
    :sswitch_0
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    if-ge v8, v1, :cond_0

    .line 845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 846
    .local v2, "gWidget":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_2

    .line 844
    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 849
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_2
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v12

    if-nez v12, :cond_1

    .line 852
    instance-of v12, v2, Lcom/hz/gui/GContainer;

    if-eqz v12, :cond_1

    .line 853
    check-cast v2, Lcom/hz/gui/GContainer;

    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->align()V

    goto :goto_1

    .line 858
    .end local v8    # "index":I
    :sswitch_1
    const/4 v5, 0x0

    .line 859
    .local v5, "gridWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 861
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    sub-int v4, v12, v13

    .line 862
    .local v4, "getWidth":I
    add-int/lit8 v12, v1, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-int v9, v12, v13

    .line 863
    .local v9, "j8":I
    sub-int v12, v4, v9

    div-int v5, v12, v1

    .line 866
    .end local v4    # "getWidth":I
    .end local v9    # "j8":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_2
    if-ge v8, v1, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 868
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_5

    .line 866
    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 871
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_5
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v12

    if-nez v12, :cond_4

    .line 875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 878
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    .line 879
    iget-object v13, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v16, 0x8

    aget v15, v15, v16

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v16, 0xa

    aget v15, v15, v16

    sub-int/2addr v14, v15

    .line 881
    iget-object v15, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/16 v16, 0x5

    aget v15, v15, v16

    .line 877
    invoke-virtual {v2, v12, v13, v14, v15}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 899
    :cond_6
    :goto_4
    instance-of v12, v2, Lcom/hz/gui/GContainer;

    if-eqz v12, :cond_4

    .line 900
    check-cast v2, Lcom/hz/gui/GContainer;

    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->align()V

    goto :goto_3

    .line 883
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 885
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v13, v5

    mul-int/2addr v13, v8

    add-int v7, v12, v13

    .line 886
    .local v7, "gwidgetX":I
    move v6, v5

    .line 887
    .local v6, "gwidgetWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/hz/gui/GContainer;->isScale()Z

    move-result v12

    if-nez v12, :cond_8

    .line 889
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x4

    aget v6, v12, v13

    .line 890
    sub-int v12, v5, v6

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v7, v12

    .line 894
    :cond_8
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    .line 896
    iget-object v13, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    .line 892
    invoke-virtual {v2, v7, v12, v6, v13}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    goto :goto_4

    .line 905
    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    .end local v5    # "gridWidth":I
    .end local v6    # "gwidgetWidth":I
    .end local v7    # "gwidgetX":I
    .end local v8    # "index":I
    :sswitch_2
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_5
    if-ge v8, v1, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 907
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_a

    .line 905
    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_9
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 910
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_a
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v12

    if-nez v12, :cond_9

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    sub-int v4, v12, v13

    .line 915
    .restart local v4    # "getWidth":I
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    iget-object v13, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    sub-int v13, v4, v13

    div-int/lit8 v13, v13, 0x2

    add-int v10, v12, v13

    .line 917
    .local v10, "posX":I
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-virtual {v2, v10, v12}, Lcom/hz/gui/GWidget;->setPos(II)V

    .line 918
    instance-of v12, v2, Lcom/hz/gui/GContainer;

    if-eqz v12, :cond_9

    .line 920
    check-cast v2, Lcom/hz/gui/GContainer;

    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->align()V

    goto :goto_6

    .line 925
    .end local v4    # "getWidth":I
    .end local v8    # "index":I
    .end local v10    # "posX":I
    :sswitch_3
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_7
    if-ge v8, v1, :cond_0

    .line 926
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 927
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_c

    .line 925
    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 930
    .restart local v2    # "gWidget":Lcom/hz/gui/GWidget;
    :cond_c
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getNoNeedLayout()Z

    move-result v12

    if-nez v12, :cond_b

    .line 933
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    sub-int v3, v12, v13

    .line 934
    .local v3, "getHeight":I
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    iget-object v13, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    sub-int v13, v3, v13

    div-int/lit8 v13, v13, 0x2

    add-int v11, v12, v13

    .line 935
    .local v11, "posY":I
    iget-object v12, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-virtual {v2, v12, v11}, Lcom/hz/gui/GWidget;->setPos(II)V

    .line 937
    instance-of v12, v2, Lcom/hz/gui/GContainer;

    if-eqz v12, :cond_b

    .line 939
    check-cast v2, Lcom/hz/gui/GContainer;

    .end local v2    # "gWidget":Lcom/hz/gui/GWidget;
    invoke-virtual {v2}, Lcom/hz/gui/GContainer;->align()V

    goto :goto_8

    .line 842
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method public batchAdd(Lcom/hz/gui/GWidget;I)Lcom/hz/gui/GWidget;
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "index"    # I

    .prologue
    .line 1341
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 1342
    .local v0, "cloneGwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {p0, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1344
    return-object v0
.end method

.method public batchAdd(Lcom/hz/ui/UIHandler;Lcom/hz/gui/GWidget;I[I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p3, "addNum"    # I
    .param p4, "posArray"    # [I
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "eventTypes"    # [I

    .prologue
    .line 1354
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 1398
    :cond_0
    return-void

    .line 1358
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1360
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v0

    .line 1363
    .local v0, "cloneGwidget":Lcom/hz/gui/GWidget;
    instance-of v4, v0, Lcom/hz/gui/GLabel;

    if-eqz v4, :cond_6

    move-object v2, v0

    .line 1365
    check-cast v2, Lcom/hz/gui/GLabel;

    .line 1366
    .local v2, "label":Lcom/hz/gui/GLabel;
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1367
    array-length v4, p5

    if-ge v1, v4, :cond_2

    .line 1368
    aget-object v4, p5, v1

    invoke-virtual {v2, v4}, Lcom/hz/gui/GLabel;->setText(Ljava/lang/String;)V

    .line 1379
    .end local v2    # "label":Lcom/hz/gui/GLabel;
    :cond_2
    :goto_1
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    array-length v5, p4

    if-ge v4, v5, :cond_3

    .line 1380
    mul-int/lit8 v4, v1, 0x2

    aget v4, p4, v4

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, p4, v5

    invoke-virtual {v0, v4, v5}, Lcom/hz/gui/GWidget;->setPos(II)V

    .line 1384
    :cond_3
    array-length v4, p6

    if-ge v1, v4, :cond_4

    .line 1385
    aget v4, p6, v1

    invoke-virtual {v0, v4}, Lcom/hz/gui/GWidget;->setEventType(I)V

    .line 1391
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1393
    if-eqz p1, :cond_5

    .line 1394
    invoke-virtual {p1, v0}, Lcom/hz/ui/UIHandler;->addEventGWidget(Lcom/hz/gui/GWidget;)V

    .line 1358
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1370
    :cond_6
    instance-of v4, v0, Lcom/hz/gui/GTextArea;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 1372
    check-cast v3, Lcom/hz/gui/GTextArea;

    .line 1373
    .local v3, "text":Lcom/hz/gui/GTextArea;
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/hz/gui/GTextArea;->setText(Ljava/lang/String;)V

    .line 1374
    array-length v4, p5

    if-ge v1, v4, :cond_2

    .line 1375
    aget-object v4, p5, v1

    invoke-virtual {v3, v4}, Lcom/hz/gui/GTextArea;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public canCatchKey()Z
    .locals 1

    .prologue
    .line 1981
    iget-boolean v0, p0, Lcom/hz/gui/GContainer;->canCatchKey:Z

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->destroyChild()V

    .line 121
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->resetGSB()V

    .line 122
    return-void
.end method

.method public cycleContainer()V
    .locals 1

    .prologue
    .line 1085
    instance-of v0, p0, Lcom/hz/gui/IGCycle;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1086
    check-cast v0, Lcom/hz/gui/IGCycle;

    invoke-interface {v0}, Lcom/hz/gui/IGCycle;->cycle()V

    .line 1089
    :cond_0
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->cycleChildren()V

    .line 1090
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 172
    .local v0, "gwindow":Lcom/hz/gui/GWindow;
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->destroyChild()V

    .line 174
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-ne v1, p0, :cond_0

    .line 175
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 183
    :cond_0
    return-void
.end method

.method public getCatchKeyContainer(ZI)Lcom/hz/gui/GContainer;
    .locals 5
    .param p1, "isHotKeyCheck"    # Z
    .param p2, "pressType"    # I

    .prologue
    .line 1990
    instance-of v4, p0, Lcom/hz/gui/GContainer;

    if-eqz v4, :cond_2

    .line 1992
    if-eqz p1, :cond_1

    .line 1993
    iget-boolean v4, p0, Lcom/hz/gui/GContainer;->isCatchHotKey:Z

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 2040
    :cond_0
    :goto_0
    return-object v1

    .line 1998
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->canCatchKey()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p2}, Lcom/hz/gui/GContainer;->isGWidgetSetting(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 1999
    goto :goto_0

    .line 2004
    :cond_2
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2005
    .local v0, "childNum":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-lt v3, v0, :cond_3

    .line 2040
    const/4 v1, 0x0

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 2008
    .local v2, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_5

    .line 2005
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2012
    :cond_5
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2016
    instance-of v4, v2, Lcom/hz/gui/GContainer;

    if-eqz v4, :cond_4

    move-object v1, v2

    .line 2018
    check-cast v1, Lcom/hz/gui/GContainer;

    .line 2021
    .local v1, "gContainer":Lcom/hz/gui/GContainer;
    if-eqz p1, :cond_7

    .line 2022
    iget-boolean v4, v1, Lcom/hz/gui/GContainer;->isCatchHotKey:Z

    if-nez v4, :cond_0

    .line 2033
    :cond_6
    invoke-virtual {v1, p1, p2}, Lcom/hz/gui/GContainer;->getCatchKeyContainer(ZI)Lcom/hz/gui/GContainer;

    move-result-object v1

    .line 2034
    if-eqz v1, :cond_4

    goto :goto_0

    .line 2027
    :cond_7
    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->canCatchKey()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, p2}, Lcom/hz/gui/GContainer;->isGWidgetSetting(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0
.end method

.method public getChildNum()I
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1234
    const/4 v0, 0x0

    .line 1236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getClone()Lcom/hz/gui/GWidget;
    .locals 2

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->getVMDataCopy()[I

    move-result-object v0

    .line 2045
    .local v0, "ai":[I
    new-instance v1, Lcom/hz/gui/GContainer;

    invoke-direct {v1, v0}, Lcom/hz/gui/GContainer;-><init>([I)V

    .line 2046
    .local v1, "gwidget":Lcom/hz/gui/GContainer;
    invoke-super {p0, v1}, Lcom/hz/gui/GWidget;->setCloneData(Lcom/hz/gui/GWidget;)V

    .line 2047
    invoke-virtual {p0, v1}, Lcom/hz/gui/GContainer;->setGContainerData(Lcom/hz/gui/GContainer;)V

    .line 2048
    return-object v1
.end method

.method public getIndex(Lcom/hz/gui/GWidget;)I
    .locals 3
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 1178
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1187
    const/4 v1, -0x1

    .end local v1    # "index":I
    :goto_1
    return v1

    .line 1179
    .restart local v1    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1180
    .local v0, "getWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_2

    .line 1178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    if-ne v0, p1, :cond_1

    goto :goto_1
.end method

.method public getJavaChild(I)Lcom/hz/gui/GWidget;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1192
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1193
    :cond_0
    const/4 v0, 0x0

    .line 1196
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    goto :goto_0
.end method

.method public getJavaChildByEvent(I)Lcom/hz/gui/GWidget;
    .locals 4
    .param p1, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1206
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move-object v0, v2

    .line 1221
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    move-object v0, v2

    .line 1221
    goto :goto_0

    .line 1211
    :cond_1
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1212
    .local v0, "gWidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_3

    .line 1210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1216
    :cond_3
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getEventType()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0
.end method

.method public getJavaChildren()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 1227
    .local v0, "aobj":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1228
    return-object v0
.end method

.method public getJavaTopDraw(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/hz/gui/GContainer;->topDrawVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutGColumn()I
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 308
    iget-object v1, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v3, :cond_0

    .line 309
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int v0, v1, v2

    .line 310
    .local v0, "getWidth":I
    iget-object v1, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v1, v1, v4

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    .line 312
    .end local v0    # "getWidth":I
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getScrollBar()Lcom/hz/gui/GScrollBar;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    return-object v0
.end method

.method public grid3Layout()V
    .locals 22

    .prologue
    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x8

    aget v17, v19, v20

    .line 1247
    .local v17, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x9

    aget v18, v19, v20

    .line 1248
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    sub-int v16, v19, v20

    .line 1249
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->vmData:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    sub-int v11, v19, v20

    .line 1251
    .local v11, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v19, v19, v20

    div-int v5, v16, v19

    .line 1252
    .local v5, "gridWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    div-int v3, v11, v19

    .line 1254
    .local v3, "gridHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->layoutData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v19, v19, v20

    mul-int v4, v5, v19

    .line 1256
    .local v4, "gridTotalWidth":I
    rem-int v19, v16, v5

    add-int/lit8 v13, v19, 0x1

    .line 1259
    .local v13, "leaveWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1261
    .local v2, "childNum":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    if-lt v12, v2, :cond_0

    .line 1291
    return-void

    .line 1263
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hz/gui/GWidget;

    .line 1265
    .local v6, "gwidget":Lcom/hz/gui/GWidget;
    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1261
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1268
    :cond_1
    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    mul-int v19, v19, v5

    add-int v19, v19, v17

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    add-int v9, v19, v20

    .line 1269
    .local v9, "gwidgetX":I
    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    mul-int v19, v19, v3

    add-int v19, v19, v18

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    add-int v10, v19, v20

    .line 1270
    .local v10, "gwidgetY":I
    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    mul-int v19, v19, v5

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    sub-int v19, v19, v20

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    sub-int v8, v19, v20

    .line 1271
    .local v8, "gwidgetWidth":I
    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    mul-int v19, v19, v3

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    sub-int v19, v19, v20

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    sub-int v7, v19, v20

    .line 1274
    .local v7, "gwidgetHeight":I
    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    iget-object v0, v6, Lcom/hz/gui/GWidget;->grid3Data:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v19, v19, v20

    mul-int v19, v19, v5

    move/from16 v0, v19

    if-ne v0, v4, :cond_2

    .line 1275
    add-int/2addr v8, v13

    .line 1279
    :cond_2
    invoke-virtual {v6}, Lcom/hz/gui/GWidget;->isScale()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1281
    invoke-virtual {v6, v9, v10, v8, v7}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    goto/16 :goto_1

    .line 1286
    :cond_3
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    sub-int v19, v8, v19

    div-int/lit8 v19, v19, 0x2

    add-int v14, v19, v9

    .line 1287
    .local v14, "offsetX":I
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v19, v19, v20

    sub-int v19, v7, v19

    div-int/lit8 v19, v19, 0x2

    add-int v15, v19, v10

    .line 1288
    .local v15, "offsetY":I
    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    iget-object v0, v6, Lcom/hz/gui/GWidget;->vmData:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v14, v15, v0, v1}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    goto/16 :goto_1
.end method

.method public hotKeyPress(I)V
    .locals 0
    .param p1, "keyPress"    # I

    .prologue
    .line 1070
    return-void
.end method

.method public insert(Lcom/hz/gui/GWidget;I)V
    .locals 1
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "index"    # I

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1299
    invoke-direct {p0, p1}, Lcom/hz/gui/GContainer;->initChild(Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method public isPointAtScrollBar(III)Z
    .locals 6
    .param p1, "pressType"    # I
    .param p2, "pointX"    # I
    .param p3, "pointY"    # I

    .prologue
    const/4 v0, 0x0

    .line 1409
    iget-boolean v1, p0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    if-nez v1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return v0

    .line 1412
    :cond_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v1, p1}, Lcom/hz/gui/GScrollBar;->isGWidgetSetting(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v0, v0, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v1, v1, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1421
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v1, v1, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 1422
    iget-object v2, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v2, v2, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    .line 1423
    iget-object v3, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v3, v3, Lcom/hz/gui/GScrollBar;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    move v4, p2

    move v5, p3

    .line 1420
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public keyPressDown()V
    .locals 0

    .prologue
    .line 1076
    return-void
.end method

.method public keyPressLeft()V
    .locals 0

    .prologue
    .line 1079
    return-void
.end method

.method public keyPressRight()V
    .locals 0

    .prologue
    .line 1082
    return-void
.end method

.method public keyPressUp()V
    .locals 0

    .prologue
    .line 1073
    return-void
.end method

.method public layout()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->layout2()V

    .line 836
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->align()V

    .line 837
    return-void
.end method

.method public move(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 992
    invoke-super {p0, p1, p2}, Lcom/hz/gui/GWidget;->move(II)V

    .line 993
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 994
    return-void
.end method

.method public moveDown()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1002
    iget v4, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    if-lez v4, :cond_1

    .line 1004
    iget v4, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    add-int/lit8 v2, v4, -0x1

    .line 1005
    .local v2, "nextIndex":I
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GWidget;

    .line 1007
    .local v3, "preGwidget":Lcom/hz/gui/GWidget;
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    iget v5, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1009
    .local v0, "curGwidget":Lcom/hz/gui/GWidget;
    iget-object v4, v0, Lcom/hz/gui/GWidget;->vmData:[I

    aget v4, v4, v6

    iget-object v5, v3, Lcom/hz/gui/GWidget;->vmData:[I

    aget v5, v5, v6

    sub-int v1, v4, v5

    .line 1011
    .local v1, "moveY":I
    if-nez v2, :cond_0

    .line 1012
    invoke-virtual {v0}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    add-int/2addr v1, v4

    .line 1014
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/hz/gui/GContainer;->setChildrenOffset(II)V

    .line 1016
    .end local v0    # "curGwidget":Lcom/hz/gui/GWidget;
    .end local v1    # "moveY":I
    .end local v2    # "nextIndex":I
    .end local v3    # "preGwidget":Lcom/hz/gui/GWidget;
    :cond_1
    return-void
.end method

.method public moveDownPage()V
    .locals 0

    .prologue
    .line 1020
    return-void
.end method

.method public moveUp()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1029
    iget v4, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 1031
    iget v4, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    add-int/lit8 v3, v4, 0x1

    .line 1032
    .local v3, "nextIndex":I
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1034
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    iget v5, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1035
    .local v0, "curGwidget":Lcom/hz/gui/GWidget;
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 1037
    .local v2, "nextGwidget":Lcom/hz/gui/GWidget;
    iget-object v4, v0, Lcom/hz/gui/GWidget;->vmData:[I

    aget v4, v4, v6

    iget-object v5, v2, Lcom/hz/gui/GWidget;->vmData:[I

    aget v5, v5, v6

    sub-int v1, v4, v5

    .line 1039
    .local v1, "moveY":I
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1040
    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getH()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1042
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/hz/gui/GContainer;->setChildrenOffset(II)V

    .line 1045
    .end local v0    # "curGwidget":Lcom/hz/gui/GWidget;
    .end local v1    # "moveY":I
    .end local v2    # "nextGwidget":Lcom/hz/gui/GWidget;
    .end local v3    # "nextIndex":I
    :cond_1
    return-void
.end method

.method public moveUpPage()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method public paintContainer()V
    .locals 1

    .prologue
    .line 1133
    instance-of v0, p0, Lcom/hz/gui/IGPaint;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1134
    check-cast v0, Lcom/hz/gui/IGPaint;

    invoke-interface {v0}, Lcom/hz/gui/IGPaint;->paint()V

    .line 1136
    :cond_0
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->paintChildren()V

    .line 1137
    invoke-direct {p0}, Lcom/hz/gui/GContainer;->paintTopDrawVector()V

    .line 1138
    return-void
.end method

.method public pointerDrag(II)V
    .locals 1
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    if-nez v0, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0, p1, p2}, Lcom/hz/gui/GContainer;->setChildrenOffset(II)V

    goto :goto_0
.end method

.method public refreshScrollBar()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    .line 1947
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-nez v1, :cond_0

    .line 1960
    :goto_0
    return-void

    .line 1950
    :cond_0
    const/4 v0, 0x0

    .line 1951
    .local v0, "gsbX":I
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->align:I

    packed-switch v1, :pswitch_data_0

    .line 1959
    :goto_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v3}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v3

    iget-object v4, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/hz/gui/GScrollBar;->setBounds(IIII)V

    goto :goto_0

    .line 1953
    :pswitch_0
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v2}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 1954
    goto :goto_1

    .line 1956
    :pswitch_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v2}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_1

    .line 1951
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public remove(Lcom/hz/gui/GWidget;Z)V
    .locals 2
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "isClearChild"    # Z

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 152
    if-eqz p2, :cond_2

    .line 153
    instance-of v1, p1, Lcom/hz/gui/GContainer;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 154
    check-cast v1, Lcom/hz/gui/GContainer;

    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->destroy()V

    .line 158
    :cond_2
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->getParentWindow()Lcom/hz/gui/GWindow;

    move-result-object v0

    .line 159
    .local v0, "gwindow":Lcom/hz/gui/GWindow;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    if-ne v1, p1, :cond_0

    .line 160
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    goto :goto_0
.end method

.method public resetGSB()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v0}, Lcom/hz/gui/GScrollBar;->reset()V

    .line 142
    :cond_0
    return-void
.end method

.method public searchDragGWidget(II)Lcom/hz/gui/GWidget;
    .locals 11
    .param p1, "pointx"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1431
    const/4 p0, 0x0

    .line 1499
    .end local p0    # "this":Lcom/hz/gui/GContainer;
    :cond_0
    :goto_0
    return-object p0

    .line 1434
    .restart local p0    # "this":Lcom/hz/gui/GContainer;
    :cond_1
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->isOutView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    const/4 p0, 0x0

    goto :goto_0

    .line 1439
    :cond_2
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1, p2}, Lcom/hz/gui/GContainer;->isPointAtScrollBar(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    iget-object p0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    goto :goto_0

    .line 1444
    :cond_3
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/hz/gui/GContainer;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1445
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 1446
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 1447
    iget-object v2, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    .line 1448
    iget-object v3, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    move v4, p1

    move v5, p2

    .line 1444
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    .line 1448
    if-nez v0, :cond_0

    .line 1452
    :cond_4
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1453
    .local v6, "childNum":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-lt v9, v6, :cond_5

    .line 1499
    const/4 p0, 0x0

    goto :goto_0

    .line 1455
    :cond_5
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hz/gui/GWidget;

    .line 1456
    .local v8, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v8, :cond_7

    .line 1453
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1460
    :cond_7
    instance-of v0, v8, Lcom/hz/gui/GContainer;

    if-eqz v0, :cond_8

    move-object v7, v8

    .line 1462
    check-cast v7, Lcom/hz/gui/GContainer;

    .line 1464
    .local v7, "gcontainer":Lcom/hz/gui/GContainer;
    invoke-virtual {v7, p1, p2}, Lcom/hz/gui/GContainer;->searchDragGWidget(II)Lcom/hz/gui/GWidget;

    move-result-object v10

    .line 1465
    .local v10, "touchGwidget":Lcom/hz/gui/GWidget;
    if-eqz v10, :cond_6

    move-object p0, v10

    .line 1466
    goto :goto_0

    .line 1478
    .end local v7    # "gcontainer":Lcom/hz/gui/GContainer;
    .end local v10    # "touchGwidget":Lcom/hz/gui/GWidget;
    :cond_8
    const/16 v0, 0x40

    invoke-virtual {v8, v0}, Lcom/hz/gui/GWidget;->isGWidgetSetting(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1483
    invoke-virtual {v8}, Lcom/hz/gui/GWidget;->isShow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1487
    invoke-virtual {v8}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1492
    iget-object v0, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 1493
    iget-object v1, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 1494
    iget-object v2, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    .line 1495
    iget-object v3, v8, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    move v4, p1

    move v5, p2

    .line 1491
    invoke-static/range {v0 .. v5}, Lcom/hz/common/Tool;->rectIn(IIIIII)Z

    move-result v0

    .line 1495
    if-eqz v0, :cond_6

    move-object p0, v8

    .line 1496
    goto/16 :goto_0
.end method

.method public searchPressGWidget(II)Lcom/hz/gui/GWidget;
    .locals 1
    .param p1, "pointx"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 1508
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lcom/hz/gui/GContainer;->searchPressGWidget(III)Lcom/hz/gui/GWidget;

    move-result-object v0

    return-object v0
.end method

.method public searchRepeatedGWidget(II)Lcom/hz/gui/GWidget;
    .locals 1
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 1504
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0}, Lcom/hz/gui/GContainer;->searchPressGWidget(III)Lcom/hz/gui/GWidget;

    move-result-object v0

    return-object v0
.end method

.method public setAbs()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    .line 1685
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1686
    .local v0, "childNum":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 1708
    return-void

    .line 1688
    :cond_0
    iget-object v4, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 1689
    .local v2, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v2, :cond_2

    .line 1686
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1693
    :cond_2
    iget-object v4, v2, Lcom/hz/gui/GWidget;->vmData:[I

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getAbsX()I

    move-result v5

    aput v5, v4, v6

    .line 1694
    iget-object v4, v2, Lcom/hz/gui/GWidget;->vmData:[I

    invoke-virtual {v2}, Lcom/hz/gui/GWidget;->getAbsY()I

    move-result v5

    aput v5, v4, v7

    .line 1696
    instance-of v4, v2, Lcom/hz/gui/GContainer;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 1699
    check-cast v1, Lcom/hz/gui/GContainer;

    .line 1700
    .local v1, "gcontainer":Lcom/hz/gui/GContainer;
    invoke-virtual {v1}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 1701
    iget-object v4, v1, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v4, :cond_1

    .line 1703
    iget-object v4, v1, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v4, v4, Lcom/hz/gui/GScrollBar;->vmData:[I

    iget-object v5, v1, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v5}, Lcom/hz/gui/GScrollBar;->getAbsX()I

    move-result v5

    aput v5, v4, v6

    .line 1704
    iget-object v4, v1, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v4, v4, Lcom/hz/gui/GScrollBar;->vmData:[I

    iget-object v5, v1, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v5}, Lcom/hz/gui/GScrollBar;->getAbsY()I

    move-result v5

    aput v5, v4, v7

    goto :goto_1
.end method

.method public setBorderLayout(IIII)V
    .locals 3
    .param p1, "up"    # I
    .param p2, "down"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    const/16 v2, 0x11

    aput v2, v0, v1

    .line 1713
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1714
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 1715
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 1716
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x4

    aput p4, v0, v1

    .line 1717
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1941
    invoke-super {p0, p1, p2, p3, p4}, Lcom/hz/gui/GWidget;->setBounds(IIII)V

    .line 1942
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 1943
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->refreshScrollBar()V

    .line 1944
    return-void
.end method

.method public setCatchHotKey(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1985
    iput-boolean p1, p0, Lcom/hz/gui/GContainer;->isCatchHotKey:Z

    .line 1986
    return-void
.end method

.method public setCatchKey(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1977
    iput-boolean p1, p0, Lcom/hz/gui/GContainer;->canCatchKey:Z

    .line 1978
    return-void
.end method

.method public setChildrenOffset(II)V
    .locals 14
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 1600
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 1601
    const/4 v0, -0x1

    iput v0, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 1603
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v0, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    sub-int v0, v0, p2

    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    if-gt v0, v1, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v12, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 1608
    .local v12, "oldScrollPos":I
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    sub-int v1, v1, p2

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 1609
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v0, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    if-gez v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    const/4 v1, 0x0

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 1612
    move/from16 p2, v12

    .line 1620
    .end local v12    # "oldScrollPos":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    .line 1622
    .local v8, "childNum":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    if-lt v10, v8, :cond_2

    .line 1675
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 1676
    return-void

    .line 1615
    .end local v8    # "childNum":I
    .end local v10    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v0, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    sub-int p2, v0, v1

    .line 1616
    iget-object v0, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    iput v1, v0, Lcom/hz/gui/GScrollBar;->scrollPos:I

    goto :goto_0

    .line 1624
    .restart local v8    # "childNum":I
    .restart local v10    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hz/gui/GWidget;

    .line 1625
    .local v9, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v9, :cond_4

    .line 1622
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1628
    :cond_4
    iget-object v0, v9, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/2addr v0, p1

    iget-object v1, v9, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int v1, v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/hz/gui/GWidget;->setPos(II)V

    .line 1630
    const/4 v11, 0x0

    .line 1634
    .local v11, "intersected":Z
    iget-object v0, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    .line 1635
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    .line 1636
    iget-object v2, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    sub-int/2addr v2, v3

    .line 1637
    iget-object v3, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 1638
    iget-object v4, v9, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 1639
    iget-object v5, v9, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    .line 1640
    iget-object v6, v9, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    .line 1641
    iget-object v7, v9, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v13, 0x5

    aget v7, v7, v13

    .line 1633
    invoke-static/range {v0 .. v7}, Lcom/hz/common/Tool;->rectIntersect(IIIIIIII)Z

    move-result v11

    .line 1652
    if-eqz v11, :cond_6

    .line 1654
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 1655
    iget v0, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1656
    iput v10, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 1660
    :cond_5
    add-int/lit8 v0, v8, -0x1

    if-ne v10, v0, :cond_3

    iget v0, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1662
    iput v10, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    goto :goto_2

    .line 1668
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/hz/gui/GWidget;->setOutView(Z)V

    .line 1669
    iget v0, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1671
    add-int/lit8 v0, v10, -0x1

    iput v0, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    goto/16 :goto_2
.end method

.method protected setGContainerData(Lcom/hz/gui/GContainer;)V
    .locals 4
    .param p1, "gwidget"    # Lcom/hz/gui/GContainer;

    .prologue
    .line 2052
    iget v3, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    iput v3, p1, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    .line 2053
    iget v3, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    iput v3, p1, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    .line 2054
    iget-object v3, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v3, :cond_0

    .line 2055
    iget-object v3, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v3}, Lcom/hz/gui/GScrollBar;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GScrollBar;

    iput-object v3, p1, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    .line 2057
    :cond_0
    iget-boolean v3, p0, Lcom/hz/gui/GContainer;->isIntersectView:Z

    iput-boolean v3, p1, Lcom/hz/gui/GContainer;->isIntersectView:Z

    .line 2058
    iget-object v3, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    invoke-static {v3}, Lcom/hz/common/Tool;->getCopyData([I)[I

    move-result-object v3

    iput-object v3, p1, Lcom/hz/gui/GContainer;->layoutData:[I

    .line 2059
    iget-boolean v3, p0, Lcom/hz/gui/GContainer;->needScrollBar:Z

    iput-boolean v3, p1, Lcom/hz/gui/GContainer;->needScrollBar:Z

    .line 2060
    iget-boolean v3, p0, Lcom/hz/gui/GContainer;->canCatchKey:Z

    iput-boolean v3, p1, Lcom/hz/gui/GContainer;->canCatchKey:Z

    .line 2062
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2063
    .local v0, "childNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 2067
    return-void

    .line 2064
    :cond_1
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hz/gui/GWidget;

    invoke-virtual {v3}, Lcom/hz/gui/GWidget;->getClone()Lcom/hz/gui/GWidget;

    move-result-object v1

    .line 2065
    .local v1, "gw":Lcom/hz/gui/GWidget;
    invoke-virtual {p1, v1}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 2063
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setGrid2Layout(IIII)V
    .locals 3
    .param p1, "hGap"    # I
    .param p2, "vGap"    # I
    .param p3, "gridWidth"    # I
    .param p4, "gridHeight"    # I

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 1722
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1723
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 1724
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x4

    aput p3, v0, v1

    .line 1725
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x5

    aput p4, v0, v1

    .line 1726
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x3

    const/16 v2, 0x100

    aput v2, v0, v1

    .line 1727
    return-void
.end method

.method public setGrid3Layout(II)V
    .locals 3
    .param p1, "rows"    # I
    .param p2, "cols"    # I

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 1732
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 1733
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 1734
    return-void
.end method

.method public setGridLayout(II)V
    .locals 3
    .param p1, "rows"    # I
    .param p2, "cols"    # I

    .prologue
    const/4 v2, 0x4

    .line 1739
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1740
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aput p1, v0, v2

    .line 1741
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 1742
    return-void
.end method

.method public setHLayout(II)V
    .locals 3
    .param p1, "hGap"    # I
    .param p2, "align"    # I

    .prologue
    const/4 v2, 0x1

    .line 1927
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1928
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aput p1, v0, v2

    .line 1929
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 1930
    return-void
.end method

.method public setIntersectView(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1763
    iput-boolean p1, p0, Lcom/hz/gui/GContainer;->isIntersectView:Z

    .line 1764
    return-void
.end method

.method public setLayoutMode(IIIIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "param3"    # I
    .param p5, "param4"    # I
    .param p6, "param5"    # I

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1747
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1748
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1749
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1750
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 1751
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 1752
    return-void
.end method

.method public setPos(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x4

    .line 1768
    invoke-super {p0, p1, p2}, Lcom/hz/gui/GWidget;->setPos(II)V

    .line 1769
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 1770
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-nez v1, :cond_0

    .line 1783
    :goto_0
    return-void

    .line 1773
    :cond_0
    const/4 v0, 0x0

    .line 1774
    .local v0, "gsbX":I
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->align:I

    packed-switch v1, :pswitch_data_0

    .line 1782
    :goto_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/hz/gui/GScrollBar;->setPos(II)V

    goto :goto_0

    .line 1776
    :pswitch_0
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v2}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 1777
    goto :goto_1

    .line 1779
    :pswitch_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->vmData:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    invoke-virtual {v2}, Lcom/hz/gui/GScrollBar;->getMinW()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_1

    .line 1774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScrollBar(Lcom/hz/gui/GWidget;)V
    .locals 3
    .param p1, "gwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    const/4 v2, 0x0

    .line 1787
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v1, v1, Lcom/hz/gui/GScrollBar;->maxScrollDis:I

    if-lez v1, :cond_0

    .line 1789
    iget-object v1, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iput v2, v1, Lcom/hz/gui/GScrollBar;->scrollPos:I

    .line 1791
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1796
    .local v0, "firstGwidget":Lcom/hz/gui/GWidget;
    invoke-virtual {p0, v0, p1}, Lcom/hz/gui/GContainer;->setSrollBar(Lcom/hz/gui/GWidget;Lcom/hz/gui/GWidget;)V

    goto :goto_0
.end method

.method public setSrollBar(Lcom/hz/gui/GWidget;Lcom/hz/gui/GWidget;)V
    .locals 11
    .param p1, "fromGwidget"    # Lcom/hz/gui/GWidget;
    .param p2, "toGwidget"    # Lcom/hz/gui/GWidget;

    .prologue
    .line 1809
    if-ne p1, p2, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1813
    :cond_1
    if-eqz p2, :cond_0

    .line 1817
    :try_start_0
    iget-object v7, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v8, 0x9

    aget v6, v7, v8

    .line 1818
    .local v6, "top":I
    iget-object v7, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/4 v8, 0x5

    aget v7, v7, v8

    iget-object v8, p0, Lcom/hz/gui/GContainer;->vmData:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    sub-int v0, v7, v8

    .line 1820
    .local v0, "bottom":I
    const/4 v3, 0x0

    .line 1824
    .local v3, "intersectViewScroll":Z
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    if-ge v7, v6, :cond_2

    .line 1826
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int/2addr v7, v8

    if-le v7, v6, :cond_2

    .line 1827
    const/4 v3, 0x1

    .line 1831
    :cond_2
    if-nez v3, :cond_3

    .line 1832
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    if-ge v7, v0, :cond_3

    .line 1833
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int/2addr v7, v8

    if-le v7, v0, :cond_3

    .line 1834
    const/4 v3, 0x1

    .line 1844
    :cond_3
    invoke-virtual {p2}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v3, :cond_0

    .line 1848
    :cond_4
    const/4 v5, 0x0

    .line 1850
    .local v5, "moveY":I
    iget-object v7, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    iget v8, p0, Lcom/hz/gui/GContainer;->firstInViewIndex:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hz/gui/GWidget;

    .line 1851
    .local v2, "firsetGwidget":Lcom/hz/gui/GWidget;
    iget-object v7, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    iget v8, p0, Lcom/hz/gui/GContainer;->lastInViewIndex:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hz/gui/GWidget;

    .line 1853
    .local v4, "lastGwidget":Lcom/hz/gui/GWidget;
    iget-object v7, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, p2, :cond_c

    .line 1856
    iget-object v7, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    iget-object v8, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    if-ne p2, v7, :cond_6

    .line 1858
    iget-object v7, v4, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, v4, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int v1, v7, v8

    .line 1859
    .local v1, "bottomDisPlayerY":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    iget-object v9, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    add-int/2addr v8, v9

    sub-int v5, v7, v8

    .line 1916
    .end local v1    # "bottomDisPlayerY":I
    :cond_5
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v5}, Lcom/hz/gui/GContainer;->setChildrenOffset(II)V

    goto/16 :goto_0

    .line 1917
    .end local v0    # "bottom":I
    .end local v2    # "firsetGwidget":Lcom/hz/gui/GWidget;
    .end local v3    # "intersectViewScroll":Z
    .end local v4    # "lastGwidget":Lcom/hz/gui/GWidget;
    .end local v5    # "moveY":I
    .end local v6    # "top":I
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 1863
    .restart local v0    # "bottom":I
    .restart local v2    # "firsetGwidget":Lcom/hz/gui/GWidget;
    .restart local v3    # "intersectViewScroll":Z
    .restart local v4    # "lastGwidget":Lcom/hz/gui/GWidget;
    .restart local v5    # "moveY":I
    .restart local v6    # "top":I
    :cond_6
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p1, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    if-ge v7, v8, :cond_9

    .line 1866
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1869
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p1, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    if-ge v7, v8, :cond_5

    .line 1871
    iget-object v7, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int/2addr v7, v8

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-int v5, v7, v8

    .line 1878
    goto :goto_1

    .line 1879
    :cond_7
    if-eqz v3, :cond_8

    .line 1881
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    sub-int v5, v6, v7

    .line 1882
    goto :goto_1

    .line 1884
    :cond_8
    iget-object v7, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-int v5, v7, v8

    .line 1886
    goto :goto_1

    .line 1889
    :cond_9
    invoke-virtual {p1}, Lcom/hz/gui/GWidget;->isOutView()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1892
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p1, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    if-le v7, v8, :cond_5

    .line 1894
    iget-object v7, p1, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    neg-int v7, v7

    iget-object v8, v2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    add-int v5, v7, v8

    .line 1901
    goto :goto_1

    .line 1902
    :cond_a
    if-eqz v3, :cond_b

    .line 1904
    iget-object v7, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int/2addr v7, v8

    sub-int v5, v0, v7

    .line 1905
    goto/16 :goto_1

    .line 1907
    :cond_b
    iget-object v7, v4, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, v4, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    add-int v1, v7, v8

    .line 1908
    .restart local v1    # "bottomDisPlayerY":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    iget-object v9, p2, Lcom/hz/gui/GWidget;->vmData:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    add-int/2addr v8, v9

    sub-int v5, v7, v8

    .line 1911
    goto/16 :goto_1

    .line 1912
    .end local v1    # "bottomDisPlayerY":I
    :cond_c
    iget-object v7, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    if-eqz v7, :cond_5

    .line 1913
    iget-object v7, p0, Lcom/hz/gui/GContainer;->gsb:Lcom/hz/gui/GScrollBar;

    iget v5, v7, Lcom/hz/gui/GScrollBar;->scrollPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public setVLayout(II)V
    .locals 3
    .param p1, "vGap"    # I
    .param p2, "align"    # I

    .prologue
    const/4 v2, 0x2

    .line 1934
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1935
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    aput p1, v0, v2

    .line 1936
    iget-object v0, p0, Lcom/hz/gui/GContainer;->layoutData:[I

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 1937
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->setAbs()V

    .line 1680
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->layout()V

    .line 1681
    return-void
.end method

.method public takeAway()V
    .locals 4

    .prologue
    .line 126
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 127
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/hz/gui/GContainer;->resetGSB()V

    .line 136
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 130
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    if-nez v0, :cond_1

    .line 127
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/hz/gui/GContainer;->remove(Lcom/hz/gui/GWidget;Z)V

    goto :goto_1
.end method

.method public toBottom(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1965
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1966
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hz/gui/GContainer;->insert(Lcom/hz/gui/GWidget;I)V

    .line 1967
    return-void
.end method

.method public toTop(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1971
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hz/gui/GWidget;

    .line 1972
    .local v0, "gwidget":Lcom/hz/gui/GWidget;
    iget-object v1, p0, Lcom/hz/gui/GContainer;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1973
    invoke-virtual {p0, v0}, Lcom/hz/gui/GContainer;->add(Lcom/hz/gui/GWidget;)V

    .line 1974
    return-void
.end method
