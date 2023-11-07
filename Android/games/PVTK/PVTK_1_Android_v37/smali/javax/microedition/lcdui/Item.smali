.class public abstract Ljavax/microedition/lcdui/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field public static final BUTTON:I = 0x1

.field public static final HYPERLINK:I = 0x2

.field public static final LAYOUT_2:I = 0x1

.field public static final LAYOUT_BOTTOM:I = 0x2

.field public static final LAYOUT_CENTER:I = 0x4

.field public static final LAYOUT_DEFAULT:I = 0x8

.field public static final LAYOUT_EXPAND:I = 0x10

.field public static final LAYOUT_LEFT:I = 0x20

.field public static final LAYOUT_NEWLINE_AFTER:I = 0x40

.field public static final LAYOUT_NEWLINE_BEFORE:I = 0x80

.field public static final LAYOUT_RIGHT:I = 0x100

.field public static final LAYOUT_SHRINK:I = 0x200

.field public static final LAYOUT_TOP:I = 0x400

.field public static final LAYOUT_VCENTER:I = 0x800

.field public static final LAYOUT_VEXPAND:I = 0x1000

.field public static final LAYOUT_VSHRINK:I = 0x2000

.field public static final PLAIN:I


# instance fields
.field private label:Ljava/lang/String;

.field private layout:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ljavax/microedition/lcdui/Item;->label:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljavax/microedition/lcdui/Item;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Ljavax/microedition/lcdui/Item;->layout:I

    return v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Ljavax/microedition/lcdui/Item;->label:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLayout(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 42
    iput p1, p0, Ljavax/microedition/lcdui/Item;->layout:I

    .line 43
    return-void
.end method
