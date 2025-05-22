.class public Lcom/umeng/umzid/Spy;
.super Ljava/lang/Object;
.source "Spy.java"


# static fields
.field private static initSuccess:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "umeng-spy"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/umeng/umzid/Spy;->initSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .line 21
    sget-boolean v0, Lcom/umeng/umzid/Spy;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/umeng/umzid/Spy;->getNativeID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static native getNativeID()Ljava/lang/String;
.end method

.method public static native getNativeLibraryVersion()Ljava/lang/String;
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 31
    sget-boolean v0, Lcom/umeng/umzid/Spy;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/umeng/umzid/Spy;->getNativeLibraryVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
