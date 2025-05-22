.class public Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "PutObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private callbackParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callbackVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field private objectKey:Ljava/lang/String;

.field private progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ">;"
        }
    .end annotation
.end field

.field private retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

.field private uploadData:[B

.field private uploadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setUploadFilePath(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setUploadData([B)V

    .line 85
    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackParam:Ljava/util/Map;

    return-object v0
.end method

.method public getCallbackVars()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackVars:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-object v0
.end method

.method public getUploadData()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadData:[B

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackParam:Ljava/util/Map;

    return-void
.end method

.method public setCallbackVars(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackVars:Ljava/util/Map;

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRetryCallback(Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-void
.end method

.method public setUploadData([B)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadData:[B

    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadFilePath:Ljava/lang/String;

    return-void
.end method
