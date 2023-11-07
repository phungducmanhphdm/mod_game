.class public Ljavax/microedition/lcdui/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static final ALERT:I = 0x1

.field public static final CHOICE_GROUP_ELEMENT:I = 0x2

.field public static final COLOR_BACKGROUND:I = 0x0

.field public static final COLOR_BORDER:I = 0x2

.field public static final COLOR_FOREGROUND:I = 0x1

.field public static final COLOR_HIGHLIGHTED_BACKGROUND:I = 0x3

.field public static final COLOR_HIGHLIGHTED_BORDER:I = 0x5

.field public static final COLOR_HIGHLIGHTED_FOREGROUND:I = 0x4

.field private static final DISPLAYS:Ljava/util/Hashtable;

.field public static final LIST_ELEMENT:I


# instance fields
.field private current:Ljavax/microedition/lcdui/Displayable;

.field private midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljavax/microedition/lcdui/Display;->DISPLAYS:Ljava/util/Hashtable;

    .line 166
    return-void
.end method

.method private constructor <init>(Ljavax/microedition/midlet/MIDlet;)V
    .locals 0
    .param p1, "midlet1"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 17
    return-void
.end method

.method static synthetic access$0(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method static synthetic access$1(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public static getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;
    .locals 2
    .param p0, "midlet1"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 21
    sget-object v1, Ljavax/microedition/lcdui/Display;->DISPLAYS:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Display;

    .line 22
    .local v0, "display":Ljavax/microedition/lcdui/Display;
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljavax/microedition/lcdui/Display;

    .end local v0    # "display":Ljavax/microedition/lcdui/Display;
    invoke-direct {v0, p0}, Ljavax/microedition/lcdui/Display;-><init>(Ljavax/microedition/midlet/MIDlet;)V

    .line 25
    .restart local v0    # "display":Ljavax/microedition/lcdui/Display;
    sget-object v1, Ljavax/microedition/lcdui/Display;->DISPLAYS:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBestImageHeight(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 32
    const/16 v0, 0x30

    return v0
.end method

.method public getBestImageWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 37
    const/16 v0, 0x30

    return v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 56
    const/high16 v0, 0xff0000

    :goto_0
    :pswitch_0
    return v0

    .line 46
    :pswitch_1
    const v0, 0xffffff

    goto :goto_0

    .line 48
    :pswitch_2
    const v0, 0x888888

    goto :goto_0

    .line 50
    :pswitch_3
    const v0, 0xff8600

    goto :goto_0

    .line 54
    :pswitch_4
    const v0, 0xaaaaaa

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getCurrent()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public getMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Displayable;)V
    .locals 2
    .param p1, "alert"    # Ljavax/microedition/lcdui/Alert;
    .param p2, "displayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 73
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    check-cast v0, Lcom/lori/app/PipActivity;

    .line 75
    .local v0, "pipactivity":Lcom/lori/app/PipActivity;
    new-instance v1, Ljavax/microedition/lcdui/Display$1;

    invoke-direct {v1, p0, p1}, Ljavax/microedition/lcdui/Display$1;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Alert;)V

    .line 87
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcom/lori/app/PipActivity;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 9
    .param p1, "current"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 155
    .end local p1    # "current":Ljavax/microedition/lcdui/Displayable;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local p1    # "current":Ljavax/microedition/lcdui/Displayable;
    :cond_1
    instance-of v7, p1, Ljavax/microedition/lcdui/Alert;

    if-eqz v7, :cond_2

    move-object v0, p1

    .line 98
    check-cast v0, Ljavax/microedition/lcdui/Alert;

    .line 99
    .local v0, "alert":Ljavax/microedition/lcdui/Alert;
    iget-object v1, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    .line 100
    .local v1, "displayable":Ljavax/microedition/lcdui/Displayable;
    check-cast p1, Ljavax/microedition/lcdui/Alert;

    .end local p1    # "current":Ljavax/microedition/lcdui/Displayable;
    invoke-virtual {p0, p1, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 103
    .end local v0    # "alert":Ljavax/microedition/lcdui/Alert;
    .end local v1    # "displayable":Ljavax/microedition/lcdui/Displayable;
    .restart local p1    # "current":Ljavax/microedition/lcdui/Displayable;
    :cond_2
    iget-object v7, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-eq p1, v7, :cond_0

    .line 105
    iget-object v5, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    .line 106
    .local v5, "old":Ljavax/microedition/lcdui/Displayable;
    iput-object v5, p1, Ljavax/microedition/lcdui/Displayable;->preDisplayable:Ljavax/microedition/lcdui/Displayable;

    .line 109
    instance-of v7, p1, Ljavax/microedition/lcdui/Canvas;

    if-eqz v7, :cond_3

    instance-of v7, v5, Ljavax/microedition/lcdui/Form;

    if-eqz v7, :cond_3

    .line 111
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "back form Form -> Canvas (hide input method)!!!!!!!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v7, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    .local v3, "inputmethodmanager":Landroid/view/inputmethod/InputMethodManager;
    sget-object v7, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 114
    .local v2, "ibinder":Landroid/os/IBinder;
    const/4 v7, 0x2

    invoke-virtual {v3, v2, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 117
    .end local v2    # "ibinder":Landroid/os/IBinder;
    .end local v3    # "inputmethodmanager":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iput-object p1, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    .line 118
    iget-object v4, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 120
    .local v4, "midlet1":Ljavax/microedition/midlet/MIDlet;
    new-instance v6, Ljavax/microedition/lcdui/Display$2;

    invoke-direct {v6, p0, v5}, Ljavax/microedition/lcdui/Display$2;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;)V

    .line 153
    .local v6, "r":Ljava/lang/Runnable;
    invoke-virtual {v4, v6}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
