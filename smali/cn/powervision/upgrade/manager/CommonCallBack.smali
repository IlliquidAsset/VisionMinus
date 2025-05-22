.class public interface abstract Lcn/powervision/upgrade/manager/CommonCallBack;
.super Ljava/lang/Object;
.source "CommonCallBack.java"


# static fields
.field public static final failed:I = -0x1

.field public static final success:I = -0x2

.field public static final timeOut:I = -0x3


# virtual methods
.method public abstract failed()V
.end method

.method public varargs abstract success([Ljava/lang/Object;)V
.end method

.method public abstract timeout()V
.end method
