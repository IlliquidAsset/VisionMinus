.class public interface abstract Lcom/powervision/user/ui/view/IMessageView;
.super Ljava/lang/Object;
.source "IMessageView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract clearUnReadSuccess(Ljava/lang/String;)V
.end method

.method public abstract dismissLoading()V
.end method

.method public abstract showLoadError(Ljava/lang/String;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateUnReadCount(I)V
.end method
