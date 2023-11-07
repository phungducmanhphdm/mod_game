.class public abstract Lcom/lori/android/lcdui/GroupItem;
.super Ljavax/microedition/lcdui/Item;
.source "GroupItem.java"

# interfaces
.implements Ljavax/microedition/lcdui/Choice;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljavax/microedition/lcdui/Item;-><init>()V

    .line 12
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
