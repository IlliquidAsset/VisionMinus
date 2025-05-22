.class public interface abstract Lcom/powervision/user/modle/IMessageDetailModel$LoadComplete;
.super Ljava/lang/Object;
.source "IMessageDetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/modle/IMessageDetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadComplete"
.end annotation


# virtual methods
.method public abstract loadComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadError(Ljava/lang/String;)V
.end method

.method public abstract timeout()V
.end method
