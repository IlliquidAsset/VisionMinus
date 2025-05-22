.class public interface abstract Lcom/powervision/powersdk/callback/PositionCallback$TakeoffLandListener;
.super Ljava/lang/Object;
.source "PositionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/PositionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TakeoffLandListener"
.end annotation


# static fields
.field public static final PVSDK_TAKEOFFLAND_RECEIVE_SUCCESS:I = 0x1

.field public static final PVSDK_TAKEOFFLAND_SEND_FAILED:I = 0x3

.field public static final PVSDK_TAKEOFFLAND_SEND_TIMEOUT:I = 0x2

.field public static final PVSDK_TAKEOFFLAND_SET_SUCCESS:I


# virtual methods
.method public abstract onTakeoffLandRecieveSuccess()V
.end method

.method public abstract onTakeoffLandSendFailed()V
.end method

.method public abstract onTakeoffLandSendTimeout()V
.end method

.method public abstract onTakeoffLandSetSuccess()V
.end method
