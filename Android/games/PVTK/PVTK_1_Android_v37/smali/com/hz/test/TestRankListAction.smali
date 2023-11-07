.class public Lcom/hz/test/TestRankListAction;
.super Ljava/lang/Object;
.source "TestRankListAction.java"

# interfaces
.implements Lcom/hz/ui/UIListener;


# static fields
.field public static final PAGE_SIZE:I = 0xa


# instance fields
.field reqPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/hz/test/TestRankListAction;->reqPage:I

    .line 10
    return-void
.end method


# virtual methods
.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 6
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 18
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/hz/ui/UIHandler;->getGWindowByEventType(I)Lcom/hz/gui/GWindow;

    move-result-object v4

    .line 22
    .local v4, "window":Lcom/hz/gui/GWindow;
    if-eqz v4, :cond_0

    .line 26
    invoke-virtual {v4}, Lcom/hz/gui/GWindow;->getObj()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 28
    .local v3, "rankType":[I
    iget-object v1, v4, Lcom/hz/gui/GWindow;->focusWidget:Lcom/hz/gui/GWidget;

    .line 29
    .local v1, "gwidget":Lcom/hz/gui/GWidget;
    if-eqz v1, :cond_0

    .line 32
    instance-of v5, v1, Lcom/hz/gui/GLabel;

    if-eqz v5, :cond_0

    .line 37
    if-nez p2, :cond_0

    move-object v2, v1

    .line 39
    check-cast v2, Lcom/hz/gui/GLabel;

    .line 40
    .local v2, "label":Lcom/hz/gui/GLabel;
    invoke-virtual {v2}, Lcom/hz/gui/GLabel;->getObj()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v2}, Lcom/hz/gui/GLabel;->getObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "actionText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 47
    iget v5, v4, Lcom/hz/gui/GWindow;->focusIndex:I

    goto :goto_0
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 57
    return-void
.end method
