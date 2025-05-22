.class Lcom/powervision/oss/service/OssService$2;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/oss/service/OssService;


# direct methods
.method constructor <init>(Lcom/powervision/oss/service/OssService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/powervision/oss/service/OssService$2;->this$0:Lcom/powervision/oss/service/OssService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$2;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutObject , currentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long p2, p2, v0

    .line 129
    div-long/2addr p2, p4

    long-to-int p1, p2

    .line 130
    iget-object p2, p0, Lcom/powervision/oss/service/OssService$2;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "   putObjRequest  file  progress="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 0

    .line 125
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/powervision/oss/service/OssService$2;->onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
