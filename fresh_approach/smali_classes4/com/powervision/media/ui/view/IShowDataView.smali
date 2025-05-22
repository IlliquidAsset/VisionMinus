.class public interface abstract Lcom/powervision/media/ui/view/IShowDataView;
.super Ljava/lang/Object;
.source "IShowDataView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract showEmptyView()V
.end method

.method public abstract showInputView()V
.end method

.method public abstract showLoadingView(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation
.end method
