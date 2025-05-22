.class public interface abstract Lcom/powervision/powersdk/callback/MissionCallback$MissionActionListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MissionActionListener"
.end annotation


# static fields
.field public static final PVSDK_MISSION_ACTION_ARM:I = 0x0

.field public static final PVSDK_MISSION_ACTION_DISARM:I = 0x1

.field public static final PVSDK_MISSION_ACTION_TIMEOUT:I = -0x1

.field public static final PVSDK_MISSION_ACTION_UNKNOWN:I = -0x2


# virtual methods
.method public abstract onMissionActionArm()V
.end method

.method public abstract onMissionActionDisarm()V
.end method

.method public abstract onMissionActionTimeout()V
.end method

.method public abstract onMissionActionUnknown()V
.end method
