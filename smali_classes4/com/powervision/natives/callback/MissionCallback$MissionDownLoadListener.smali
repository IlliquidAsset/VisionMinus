.class public interface abstract Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MissionDownLoadListener"
.end annotation


# virtual methods
.method public abstract onMissionFailed()V
.end method

.method public abstract onMissionSuccessAndDownLoadWayPoints(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/model/WayPoint;",
            ">;)V"
        }
    .end annotation
.end method
