.class Lcom/powervision/oss/service/OssService$5;
.super Ljava/lang/Object;
.source "OssService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


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
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/oss/service/OssService;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$flyLogs:Ljava/util/List;

.field final synthetic val$get_start:J

.field final synthetic val$undone:Z

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/oss/service/OssService;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;ZLjava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    iput-object p2, p0, Lcom/powervision/oss/service/OssService$5;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/oss/service/OssService$5;->val$fileName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/powervision/oss/service/OssService$5;->val$get_start:J

    iput-object p6, p0, Lcom/powervision/oss/service/OssService$5;->val$flyLogs:Ljava/util/List;

    iput-boolean p7, p0, Lcom/powervision/oss/service/OssService$5;->val$undone:Z

    iput-object p8, p0, Lcom/powervision/oss/service/OssService$5;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->printStackTrace()V

    .line 223
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  clientExcepion()...info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 226
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceException  ...onFailure...ErrorCode"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "RequestId ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HostId= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " RawMessage= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  =info"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-static {p1, p2}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->val$flyLogs:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    iget-object p2, p0, Lcom/powervision/oss/service/OssService$5;->val$flyLogs:Ljava/util/List;

    iget-object p3, p0, Lcom/powervision/oss/service/OssService$5;->val$filePath:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/powervision/oss/service/OssService$5;->val$undone:Z

    iget-object v1, p0, Lcom/powervision/oss/service/OssService$5;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 205
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/oss/service/OssService$5;->onFailure(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V
    .locals 4

    .line 209
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    iget-object v0, p0, Lcom/powervision/oss/service/OssService$5;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/oss/service/OssService$5;->val$fileName:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1}, Lcom/powervision/oss/service/OssService;->access$100(Lcom/powervision/oss/service/OssService;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 212
    iget-object v0, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadFile...onSuccess().... cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/oss/service/OssService$5;->val$get_start:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/oss/service/OssService;->access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    iget-object p1, p1, Lcom/powervision/oss/service/OssService;->mNewFileNameList:Ljava/util/List;

    iget-object p2, p0, Lcom/powervision/oss/service/OssService$5;->val$fileName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->val$flyLogs:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    iget-object p1, p0, Lcom/powervision/oss/service/OssService$5;->this$0:Lcom/powervision/oss/service/OssService;

    iget-object p2, p0, Lcom/powervision/oss/service/OssService$5;->val$flyLogs:Ljava/util/List;

    iget-object v0, p0, Lcom/powervision/oss/service/OssService$5;->val$filePath:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/powervision/oss/service/OssService$5;->val$undone:Z

    iget-object v2, p0, Lcom/powervision/oss/service/OssService$5;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 205
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/oss/service/OssService$5;->onSuccess(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V

    return-void
.end method
