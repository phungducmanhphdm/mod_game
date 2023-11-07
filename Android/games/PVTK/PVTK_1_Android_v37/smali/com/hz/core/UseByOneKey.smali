.class public Lcom/hz/core/UseByOneKey;
.super Ljava/lang/Object;
.source "UseByOneKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatInputNumUI()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 18
    sget-object v6, Lcom/hz/main/GameForm;->currentForm:Lcom/hz/main/GameForm;

    if-eqz v6, :cond_1

    move v3, v5

    .line 45
    .local v1, "form":Lcom/hz/main/GameForm;
    .local v2, "inputMsg":Lcom/hz/net/Message;
    :cond_0
    :goto_0
    return v3

    .line 22
    .end local v1    # "form":Lcom/hz/main/GameForm;
    .end local v2    # "inputMsg":Lcom/hz/net/Message;
    :cond_1
    invoke-static {}, Lcom/hz/main/GameForm;->createUseByOneKayForm()Lcom/hz/main/GameForm;

    move-result-object v1

    .line 23
    .restart local v1    # "form":Lcom/hz/main/GameForm;
    invoke-static {v1}, Lcom/hz/main/GameForm;->waitForGameForm(Lcom/hz/main/GameForm;)Lcom/hz/net/Message;

    move-result-object v2

    .line 24
    .restart local v2    # "inputMsg":Lcom/hz/net/Message;
    if-nez v2, :cond_2

    move v3, v5

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v2}, Lcom/hz/net/Message;->getString()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "pwd":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 30
    .local v3, "num":I
    const/16 v6, 0x63

    if-gt v3, v6, :cond_3

    if-gtz v3, :cond_0

    .line 36
    :cond_3
    const-string v6, "Nh\u1eadp s\u1ed1 1-99"

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "num":I
    :goto_1
    move v3, v5

    .line 45
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Nh\u1eadp s\u1ed1 1-99"

    invoke-static {v6}, Lcom/hz/ui/UIHandler;->alertMessage(Ljava/lang/String;)Lcom/hz/ui/UIHandler;

    goto :goto_1
.end method
