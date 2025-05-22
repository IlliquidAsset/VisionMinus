.class public Lcom/powervision/opensource/JniPCMDenoiseNative;
.super Ljava/lang/Object;
.source "JniPCMDenoiseNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pcm-native-lib"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deinitDeNoise()V
.end method

.method public static native initDeNoise()V
.end method

.method public static native mPCMDeNoise([B)[B
.end method
