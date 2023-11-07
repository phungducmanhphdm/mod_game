.class Lcom/lori/android/io/file/AndroidFileConnection$1;
.super Ljava/lang/Object;
.source "AndroidFileConnection.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lori/android/io/file/AndroidFileConnection;->list(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lori/android/io/file/AndroidFileConnection;

.field private final synthetic val$filterPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/lori/android/io/file/AndroidFileConnection;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lori/android/io/file/AndroidFileConnection$1;->this$0:Lcom/lori/android/io/file/AndroidFileConnection;

    iput-object p2, p0, Lcom/lori/android/io/file/AndroidFileConnection$1;->val$filterPattern:Ljava/util/regex/Pattern;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lori/android/io/file/AndroidFileConnection$1;->val$filterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
