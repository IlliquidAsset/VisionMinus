.class Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;
.super Ljava/lang/Object;
.source "AP03CameraAOAUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/AP03CameraAOAUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestTimeoutRunnable"
.end annotation


# instance fields
.field private mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;


# direct methods
.method public constructor <init>(Lcom/powervision/localhttp/AP03CameraAOAUtils;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/AP03CameraAOAUtils;

    iput-object p1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    if-eqz v0, :cond_1

    .line 159
    invoke-static {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$004(Lcom/powervision/localhttp/AP03CameraAOAUtils;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-static {v0, v2}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$002(Lcom/powervision/localhttp/AP03CameraAOAUtils;I)I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media--- request-times-1= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-static {v1}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$000(Lcom/powervision/localhttp/AP03CameraAOAUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$100(Lcom/powervision/localhttp/AP03CameraAOAUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/localhttp/CmdModel;->workNewMediaRequestFailure(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->removeRequestTimeout()V

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media--- request-times-2= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-static {v1}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$000(Lcom/powervision/localhttp/AP03CameraAOAUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$100(Lcom/powervision/localhttp/AP03CameraAOAUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/powervision/localhttp/AP03CameraAOAUtils$RequestTimeoutRunnable;->mAp03CameraAOAUtils:Lcom/powervision/localhttp/AP03CameraAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->access$100(Lcom/powervision/localhttp/AP03CameraAOAUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->postRequestHttp(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
