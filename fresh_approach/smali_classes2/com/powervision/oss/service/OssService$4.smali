.class Lcom/powervision/oss/service/OssService$4;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/oss/service/OssService;


# direct methods
.method constructor <init>(Lcom/powervision/oss/service/OssService;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/powervision/oss/service/OssService$4;->this$0:Lcom/powervision/oss/service/OssService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;JJ)V
    .locals 3

    const-wide/16 v0, 0x64

    mul-long v0, v0, p2

    .line 199
    div-long/2addr v0, p4

    long-to-int p1, v0

    .line 200
    iget-object v0, p0, Lcom/powervision/oss/service/OssService$4;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadFile   onProgress   currentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " totalSize: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "  progress="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 0

    .line 196
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/powervision/oss/service/OssService$4;->onProgress(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;JJ)V

    return-void
.end method
