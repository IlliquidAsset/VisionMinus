.class public interface abstract Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;
.super Ljava/lang/Object;
.source "SmartClipsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/smart/SmartClipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartClipsInterface"
.end annotation


# virtual methods
.method public abstract cancelSubMode()V
.end method

.method public abstract getClipsStatus(Ljava/lang/String;)V
.end method

.method public abstract getCurrentHight(F)V
.end method

.method public abstract getCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getORIParamer(Ljava/lang/String;I)V
.end method

.method public abstract getSubModeFailed()V
.end method

.method public abstract outLimitCancelSubMode()V
.end method

.method public abstract setORIParamerFailed(Ljava/lang/String;)V
.end method

.method public abstract setTiltDistance(Ljava/lang/String;F)V
.end method

.method public abstract setTiltDistanceFailed(Ljava/lang/String;)V
.end method
