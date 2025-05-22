.class public interface abstract Lcom/powervision/user/modle/IMessageModel;
.super Ljava/lang/Object;
.source "IMessageModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;,
        Lcom/powervision/user/modle/IMessageModel$LoadComplete;
    }
.end annotation


# virtual methods
.method public abstract loadData(Lcom/powervision/user/modle/IMessageModel$LoadComplete;)V
.end method

.method public abstract updateMessage(Lcom/powervision/user/modle/IMessageModel$UpdateMessageStatus;)V
.end method
