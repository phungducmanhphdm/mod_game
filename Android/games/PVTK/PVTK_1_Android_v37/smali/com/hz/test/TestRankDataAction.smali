.class public Lcom/hz/test/TestRankDataAction;
.super Ljava/lang/Object;
.source "TestRankDataAction.java"

# interfaces
.implements Lcom/hz/ui/UIListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processLayerAction(Lcom/hz/ui/UIHandler;I)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;
    .param p2, "actionType"    # I

    .prologue
    .line 10
    return-void
.end method

.method public processLayerClose(Lcom/hz/ui/UIHandler;)V
    .locals 0
    .param p1, "uiHandler"    # Lcom/hz/ui/UIHandler;

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/hz/ui/UIHandler;->close()V

    .line 14
    return-void
.end method
