.class public interface abstract Lcom/powervision/user/ui/view/IPersonalInfoView;
.super Ljava/lang/Object;
.source "IPersonalInfoView.java"

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

.method public abstract updateNetAvatarPath(Ljava/lang/String;)V
.end method
