.class public interface abstract Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MissionRunListener"
.end annotation


# static fields
.field public static final PVSDK_MISSIONRUN_INFO_CURRENT:I = 0x0

.field public static final PVSDK_MISSIONRUN_INFO_REACHED:I = 0x1


# virtual methods
.method public abstract onMissionRunCurrent(I)V
.end method

.method public abstract onMissionRunReached(I)V
.end method
