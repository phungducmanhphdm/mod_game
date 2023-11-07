.class public abstract Ljavax/microedition/midlet/MIDlet;
.super Ljava/lang/Object;
.source "MIDlet.java"


# static fields
.field public static DEFAULT_ACTIVITY:Landroid/app/Activity; = null

.field public static DEFAULT_APPLICATION_PROPERTIES:Ljava/util/Properties; = null

.field public static DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet; = null

.field public static DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit; = null

.field public static final PROTOCOL_EMAIL:Ljava/lang/String; = "email:"

.field public static final PROTOCOL_HTTP:Ljava/lang/String; = "http://"

.field public static final PROTOCOL_HTTPS:Ljava/lang/String; = "https://"

.field public static final PROTOCOL_PHONE:Ljava/lang/String; = "tel:"

.field public static final PROTOCOL_SMS:Ljava/lang/String; = "sms:"


# instance fields
.field private activity:Landroid/app/Activity;

.field private applicationProperties:Ljava/util/Properties;

.field private menu:Landroid/view/Menu;

.field private toolkit:Lcom/lori/android/lcdui/Toolkit;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    .line 20
    .local v0, "activity1":Landroid/app/Activity;
    iput-object v0, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    .line 21
    sget-object v2, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lcom/lori/android/lcdui/Toolkit;

    .line 22
    .local v2, "toolkit1":Lcom/lori/android/lcdui/Toolkit;
    iput-object v2, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lcom/lori/android/lcdui/Toolkit;

    .line 23
    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_APPLICATION_PROPERTIES:Ljava/util/Properties;

    .line 24
    .local v1, "properties":Ljava/util/Properties;
    iput-object v1, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    .line 25
    sput-object p0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract destroyApp(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public final doDestroyApp(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Ljavax/microedition/midlet/MIDlet;->destroyApp(Z)V

    .line 35
    return-void
.end method

.method public final doPauseApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->pauseApp()V

    .line 41
    return-void
.end method

.method public final doStartApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->startApp()V

    .line 47
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lcom/lori/android/lcdui/Toolkit;

    invoke-interface {v0}, Lcom/lori/android/lcdui/Toolkit;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public getToolkit()Lcom/lori/android/lcdui/Toolkit;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lcom/lori/android/lcdui/Toolkit;

    return-object v0
.end method

.method public invokeAndWait(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 81
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lcom/lori/android/lcdui/Toolkit;

    invoke-interface {v0, p1}, Lcom/lori/android/lcdui/Toolkit;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public final notifyDestroyed()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 87
    return-void
.end method

.method public notifyExit()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected abstract pauseApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public platformRequest(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 102
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v1, "android.intent.action.DIAL"

    .line 108
    .local v1, "s1":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    const/4 v3, 0x0

    return v3

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "s1":Ljava/lang/String;
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    .restart local v1    # "s1":Ljava/lang/String;
    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity1"    # Landroid/app/Activity;

    .prologue
    .line 115
    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    .line 116
    return-void
.end method

.method public setApplicationProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 120
    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    .line 121
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu1"    # Landroid/view/Menu;

    .prologue
    .line 125
    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->menu:Landroid/view/Menu;

    .line 126
    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    .line 127
    .local v0, "display":Ljavax/microedition/lcdui/Display;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    .line 128
    .local v1, "displayable":Ljavax/microedition/lcdui/Displayable;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Displayable;->addCommandsToDisplay(Ljavax/microedition/lcdui/Display;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setToolkit(Lcom/lori/android/lcdui/Toolkit;)V
    .locals 0
    .param p1, "toolkit1"    # Lcom/lori/android/lcdui/Toolkit;

    .prologue
    .line 134
    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lcom/lori/android/lcdui/Toolkit;

    .line 135
    return-void
.end method

.method protected abstract startApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method
