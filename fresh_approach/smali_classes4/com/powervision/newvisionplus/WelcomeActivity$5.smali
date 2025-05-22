.class Lcom/powervision/newvisionplus/WelcomeActivity$5;
.super Lcom/powervision/gcs/http/SimpleObserver;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/WelcomeActivity;->getSplashImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/http/SimpleObserver<",
        "Lcom/powervision/gcs/model/net/SplashImageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/newvisionplus/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-direct {p0}, Lcom/powervision/gcs/http/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0

    .line 513
    invoke-super {p0, p1, p2}, Lcom/powervision/gcs/http/SimpleObserver;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method protected onSucceed(Lcom/powervision/gcs/model/net/SplashImageModel;)V
    .locals 5

    .line 465
    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget-object v1, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->mdCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$302(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getScreenAdvImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==11111111=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->resolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "welcomeTest"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget v3, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->duration:I

    invoke-static {v1, v3}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$1402(Lcom/powervision/newvisionplus/WelcomeActivity;I)I

    .line 473
    iget-object v1, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->openImage:Ljava/lang/String;

    const-string v3, "http://gcsbucket.oss-accelerate.aliyuncs.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    iget-object p1, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->openImage:Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/powervision/gcs/model/net/SplashImageModel;->openImage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==222222222=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/powervision/base/utils/SPHelperUtils;->saveScreenAdvImgUrl(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSucceed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, ".mp4"

    .line 490
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    new-instance v3, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity$5$1;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/powervision/newvisionplus/WelcomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, " glide \u52a0\u8f7d\u56fe\u72472 "

    .line 501
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 503
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 505
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 506
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$5;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    .line 507
    invoke-static {v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$500(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onSucceed(Ljava/lang/Object;)V
    .locals 0

    .line 462
    check-cast p1, Lcom/powervision/gcs/model/net/SplashImageModel;

    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity$5;->onSucceed(Lcom/powervision/gcs/model/net/SplashImageModel;)V

    return-void
.end method
