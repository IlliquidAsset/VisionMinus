.class public Lcom/powervision/natives/JniSdkEngine;
.super Ljava/lang/Object;
.source "JniSdkEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCurrentSDKType()I
.end method

.method public static native initSdkWithAOA(I)I
.end method

.method public static native initSdkWithWIFI(I)I
.end method

.method public static native initSdofW4WithUSB1(I)I
.end method

.method public static native jtest()I
.end method

.method public static native uninitSDK()I
.end method
