.class public interface abstract Lcom/powervision/user/ui/view/IBindView;
.super Ljava/lang/Object;
.source "IBindView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract failure(Ljava/lang/String;)V
.end method

.method public abstract success(I)V
    .param p1    # I
        .annotation runtime Lcom/powervision/user/annotation/OperateCode;
        .end annotation
    .end param
.end method
