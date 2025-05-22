.class Lcom/powervision/oss/service/OssService$3;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


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
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/oss/service/OssService;

.field final synthetic val$mUploadDataList:Ljava/util/List;

.field final synthetic val$undone:Z

.field final synthetic val$upload_start:J

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/oss/service/OssService;JLjava/util/List;ZLjava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    iput-wide p2, p0, Lcom/powervision/oss/service/OssService$3;->val$upload_start:J

    iput-object p4, p0, Lcom/powervision/oss/service/OssService$3;->val$mUploadDataList:Ljava/util/List;

    iput-boolean p5, p0, Lcom/powervision/oss/service/OssService$3;->val$undone:Z

    iput-object p6, p0, Lcom/powervision/oss/service/OssService$3;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/oss/service/OssService$3;->onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure  ...request result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 152
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure  ...clientExcepionrequest info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 155
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceException.....ErrorCode"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  RequestId"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HostId"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "RawMessage"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  info="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p1, p2}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->val$mUploadDataList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    iget-object p2, p0, Lcom/powervision/oss/service/OssService$3;->val$mUploadDataList:Ljava/util/List;

    iget-boolean p3, p0, Lcom/powervision/oss/service/OssService$3;->val$undone:Z

    iget-object v0, p0, Lcom/powervision/oss/service/OssService$3;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/oss/service/OssService$3;->onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 4

    .line 138
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  RequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 140
    iget-object v0, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess  cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/oss/service/OssService$3;->val$upload_start:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->val$mUploadDataList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$3;->this$0:Lcom/powervision/oss/service/OssService;

    iget-object p2, p0, Lcom/powervision/oss/service/OssService$3;->val$mUploadDataList:Ljava/util/List;

    iget-boolean v0, p0, Lcom/powervision/oss/service/OssService$3;->val$undone:Z

    iget-object v1, p0, Lcom/powervision/oss/service/OssService$3;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method
