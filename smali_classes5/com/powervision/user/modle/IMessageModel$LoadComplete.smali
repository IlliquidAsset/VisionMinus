.class public interface abstract Lcom/powervision/user/modle/IMessageModel$LoadComplete;
.super Ljava/lang/Object;
.source "IMessageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/modle/IMessageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadComplete"
.end annotation


# virtual methods
.method public abstract loadComplete(Lcom/powervision/base/net/retrofit/message/response/MessageResponse;)V
.end method

.method public abstract loadError(Ljava/lang/String;)V
.end method

.method public abstract timeout()V
.end method
