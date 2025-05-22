.class public interface abstract Lcom/powervision/natives/callback/MissionCallback$SuspendAndRecoveryMissionListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuspendAndRecoveryMissionListener"
.end annotation


# static fields
.field public static final PVSDK_SUSPEND_AND_RECOVERY_MISSION_RECOVERY_FAIL:I = 0x3

.field public static final PVSDK_SUSPEND_AND_RECOVERY_MISSION_RECOVERY_OK:I = 0x1

.field public static final PVSDK_SUSPEND_AND_RECOVERY_MISSION_SUSPEND_FAIL:I = 0x2

.field public static final PVSDK_SUSPEND_AND_RECOVERY_MISSION_SUSPEND_OK:I


# virtual methods
.method public abstract suspendAndRecoveryMission(I)V
.end method
