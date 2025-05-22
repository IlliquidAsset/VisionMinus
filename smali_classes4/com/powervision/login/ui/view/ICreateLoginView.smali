.class public interface abstract Lcom/powervision/login/ui/view/ICreateLoginView;
.super Ljava/lang/Object;
.source "ICreateLoginView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract getCountryListFailed(ILjava/lang/String;)V
.end method

.method public abstract getCountryListResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/net/CountryListModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCountryCodeResult(Ljava/lang/String;)V
.end method

.method public abstract onVerifyCodeFailed(ILjava/lang/String;)V
.end method

.method public abstract onVerifyCodeSuccess()V
.end method
