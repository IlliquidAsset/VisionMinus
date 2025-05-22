.class public interface abstract Lcom/powervision/user/ui/view/IMessageDetailView;
.super Ljava/lang/Object;
.source "IMessageDetailView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
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
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;)V"
        }
    .end annotation
.end method
