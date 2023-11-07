.class public Ljavax/microedition/io/file/FileSystemRegistry;
.super Ljava/lang/Object;
.source "FileSystemRegistry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static addFileSystemListener(Ljavax/microedition/io/file/FileSystemListener;)Z
    .locals 1
    .param p0, "filesystemlistener"    # Ljavax/microedition/io/file/FileSystemListener;

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public static listRoots()Ljava/util/Enumeration;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "afile":[Ljava/io/File;
    const/4 v3, 0x0

    .line 24
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 49
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 29
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 35
    .local v5, "vector":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 38
    .end local v3    # "obj":Ljava/lang/Object;
    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-lt v2, v6, :cond_1

    .line 49
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    goto :goto_0

    .line 40
    :cond_1
    aget-object v3, v0, v2

    .line 41
    .local v3, "obj":Ljava/io/File;
    check-cast v3, Ljava/io/File;

    .end local v3    # "obj":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "obj":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    .end local v3    # "obj":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_1
.end method

.method public static removeFileSystemListener(Ljavax/microedition/io/file/FileSystemListener;)Z
    .locals 1
    .param p0, "filesystemlistener"    # Ljavax/microedition/io/file/FileSystemListener;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
