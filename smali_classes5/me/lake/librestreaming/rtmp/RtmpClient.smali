.class public Lme/lake/librestreaming/rtmp/RtmpClient;
.super Ljava/lang/Object;
.source "RtmpClient.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "resrtmp"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close(J)I
.end method

.method public static native getIpAddr(J)Ljava/lang/String;
.end method

.method public static native open(Ljava/lang/String;Z)J
.end method

.method public static native read(J[BII)I
.end method

.method public static native write(J[BIII)I
.end method
