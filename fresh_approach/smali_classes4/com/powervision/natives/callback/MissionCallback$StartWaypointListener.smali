.class public interface abstract Lcom/powervision/natives/callback/MissionCallback$StartWaypointListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StartWaypointListener"
.end annotation


# static fields
.field public static final PVSDK_START_WAYPOINT_START:I = 0x0

.field public static final PVSDK_START_WAYPOINT_STOP:I = 0x1

.field public static final PVSDK_START_WAYPOINT_TIMEOUT:I = -0x1


# virtual methods
.method public abstract onWaypointStart()V
.end method

.method public abstract onWaypointStop()V
.end method

.method public abstract onWaypointTimeout()V
.end method
