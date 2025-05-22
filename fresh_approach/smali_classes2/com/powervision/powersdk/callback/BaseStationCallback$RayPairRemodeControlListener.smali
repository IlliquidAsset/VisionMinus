.class public interface abstract Lcom/powervision/powersdk/callback/BaseStationCallback$RayPairRemodeControlListener;
.super Ljava/lang/Object;
.source "BaseStationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/BaseStationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RayPairRemodeControlListener"
.end annotation


# static fields
.field public static final PVSDK_PAIR_REMODE_CONTROL_STATE_CONNECT_BREAK:I = 0x5

.field public static final PVSDK_PAIR_REMODE_CONTROL_STATE_CONNECT_ERROR:I = 0x0

.field public static final PVSDK_PAIR_REMODE_CONTROL_STATE_CURRENT_OK:I = 0x1

.field public static final PVSDK_PAIR_REMODE_CONTROL_STATE_SAVE_OK:I = 0x3

.field public static final PVSDK_PAIR_REMODE_CONTROL_STATE_SET_FAIL:I = 0x4

.field public static final PVSDK_PAIR_REMODE_CONTROL_STATE_SET_OK:I = 0x2


# virtual methods
.method public abstract pairRemode(I)V
.end method
