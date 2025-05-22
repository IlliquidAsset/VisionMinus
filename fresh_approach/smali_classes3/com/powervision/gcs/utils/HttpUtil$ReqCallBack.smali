.class public interface abstract Lcom/powervision/gcs/utils/HttpUtil$ReqCallBack;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReqCallBack"
.end annotation


# virtual methods
.method public abstract onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onResponseFailure(Lokhttp3/Call;I[B)V
.end method

.method public abstract onResponseSuccess(Lokhttp3/Call;I[B)V
.end method
