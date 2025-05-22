.class public interface abstract Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;
.super Ljava/lang/Object;
.source "OssService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/oss/service/OssService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUploadDownLoadListener"
.end annotation


# virtual methods
.method public abstract onDownloadComplete(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUploadComplete(Z)V
.end method
