.class public interface abstract Lcom/powervision/user/ui/view/IUserRealNameView;
.super Ljava/lang/Object;
.source "IUserRealNameView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract urnDeleteSuccess()V
.end method

.method public abstract urnDeviceSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract urnFail(Ljava/lang/String;)V
.end method

.method public abstract urnRegisterSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract urnSaveSuccess()V
.end method
