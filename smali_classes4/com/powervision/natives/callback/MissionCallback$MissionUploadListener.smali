.class public interface abstract Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;
.super Ljava/lang/Object;
.source "MissionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/MissionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MissionUploadListener"
.end annotation


# virtual methods
.method public abstract uploadFailed()V
.end method

.method public abstract uploadSuccess()V
.end method

.method public abstract uploadTimeOut()V
.end method
